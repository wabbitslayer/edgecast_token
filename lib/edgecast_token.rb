require "edgecast_token/version"
require "edgecast_token/edgecast_token"

module EdgecastToken
  def self.generate(key, input)
    input = "ec_secure=%03d&%s" % [input.length + 14, input]
    encrypt(key, input)
  end
end
