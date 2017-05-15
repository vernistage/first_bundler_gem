require "thor"
require "foodie"

module Foodie
  class CLI < Thor

    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def portray(name)
      puts Foodie::Food.portray(name)
    end

    desc "pluralize", "Pluralizes a word"
    method_options :word => :string, :uppercase => :boolean
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end

  end
end
