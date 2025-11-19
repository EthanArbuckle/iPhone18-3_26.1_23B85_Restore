uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (!objc_opt_class() || (+[CALNModuleProvider modules](CALNModuleProvider, "modules"), v1 = objc_claimAutoreleasedReturnValue(), v2 = [v1 mutableCopy], v1, !v2))
  {
    v2 = objc_alloc_init(NSMutableArray);
  }

  v3 = objc_alloc_init(CISIntegrationServerModule);
  [v2 addObject:v3];
  v4 = [CADSpotlightServerModule alloc];
  v5 = objc_opt_new();
  v6 = [v4 initWithSpotlightEntityAnnotator:v5];

  [v2 addObject:v6];
  v7 = [CADAppEntityNotifierModule alloc];
  v8 = +[CalendarLinkAppEntityNotifier sharedNotifier];
  v9 = [v7 initWithAppEntityNotifier:v8];

  [v2 addObject:v9];
  v10 = objc_alloc_init(CADStateDumpModule);
  [v2 addObject:v10];
  v11 = [[CADServer alloc] initWithModules:v2];
  [v11 activate];
  v12 = sub_100000E10();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activated server: %@.", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v0);
  v13 = sub_100000E10();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting run loop.", &v18, 2u);
  }

  do
  {
    v14 = objc_autoreleasePoolPush();
    v15 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 86400.0, 1u);
    objc_autoreleasePoolPop(v14);
  }

  while ((v15 - 3) < 0xFFFFFFFE);
  v16 = sub_100000E10();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Server exiting unexpectedly.", &v18, 2u);
  }

  return 1;
}

id sub_100000E10()
{
  if (qword_100008048 != -1)
  {
    sub_100000E98();
  }

  v1 = qword_100008040;

  return v1;
}

void sub_100000E54(id a1)
{
  qword_100008040 = os_log_create("com.apple.calaccessd", "main");

  _objc_release_x1();
}