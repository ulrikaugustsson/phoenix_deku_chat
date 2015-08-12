defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [app: :chat,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Chat, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.16"},
     {:phoenix_html, "~> 2.1"},
     {:phoenix_live_reload, "~> 0.5"},
     {:phoenix_ecto, "~> 0.9"},
     {:postgrex, ">= 0.0.0"},
     {:cowboy, "~> 1.0"},
     {:amnesia, github: "meh/amnesia", branch: "master"}]
  end
end
