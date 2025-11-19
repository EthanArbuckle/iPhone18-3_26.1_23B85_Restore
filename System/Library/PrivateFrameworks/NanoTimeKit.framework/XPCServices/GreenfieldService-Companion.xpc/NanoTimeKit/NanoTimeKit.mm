int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Greenfield service launched", v8, 2u);
  }

  _set_user_dir_suffix();
  v5 = objc_opt_new();
  v6 = +[NSXPCListener serviceListener];
  [v6 setDelegate:v5];
  [v6 resume];

  objc_autoreleasePoolPop(v3);
  v7 = +[NSRunLoop mainRunLoop];
  [v7 run];

  exit(1);
}