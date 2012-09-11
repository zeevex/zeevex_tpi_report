# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zeevex_tpi_report/version'

Gem::Specification.new do |gem|
  gem.name          = "zeevex_tpi_report"
  gem.version       = ZeevexTpiReport::VERSION
  gem.authors       = ["Robert Sanders"]
  gem.email         = ["robert@zeevex.com"]
  gem.description   = %q{Gem for delivering results of async batch jobs via a web interface.}
  gem.summary       = %q{Rather than just emailing files, this allows a user to receive batch jobs via the web interface of a site. Files are stored in MongoDB, jobs executed via DelayedJob.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
