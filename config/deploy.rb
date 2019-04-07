# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "rails-sample_app"
set :repo_url, "git@github.com:ryu-sato/rails-sample_app.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
# set :branch, ENV['BRANCH'] || 'master'
set :branch, 'support/install-passenger'

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
set :deploy_to, '/var/www/rails/rails-sample_app'

# Default value for :format is :airbrussh.
# set :format, :airbrussh
set :format, :pretty

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# Rails
set :rails_env, 'production'

# rbenv
set :rbenv_type, :system
set :rbenv_ruby, File.read('.ruby-version').strip
set :rbenv_custom_path, '/home/vagrant/.rbenv/'

# passenger
set :passenger_in_gemfile, true
