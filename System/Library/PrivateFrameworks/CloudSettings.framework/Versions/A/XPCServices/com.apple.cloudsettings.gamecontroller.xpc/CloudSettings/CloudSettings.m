uint64_t start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN XPCSERVICE - MAIN", v3, 2u);
  }

  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

id sub_100000E00()
{
  if (qword_10000C6F0 != -1)
  {
    sub_10000350C();
  }

  v1 = qword_10000C6E8;

  return v1;
}

void sub_100000E44(id a1)
{
  qword_10000C6E8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];

  _objc_release_x1();
}