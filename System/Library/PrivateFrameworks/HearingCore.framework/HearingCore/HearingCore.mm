uint64_t start()
{
  v0 = getpwnam("mobile");
  pw_uid = v0->pw_uid;
  pw_gid = v0->pw_gid;
  if (!_set_user_dir_suffix() || (NSTemporaryDirectory(), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, !v4))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000010E4();
    }

    exit(1);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100000E8C, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (!pw_uid || !pw_gid || (getgid() == pw_gid || !setgid(pw_gid)) && (getuid() == pw_uid || !setuid(pw_uid)))
  {
    signal(15, sub_100000EEC);
    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = +[HCUtilities currentProcessIsHeard];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Verifying this is heard: %d", buf, 8u);
    }

    if ((+[HCUtilities currentProcessIsHeard]& 1) == 0)
    {
      sub_1000010B8();
    }

    if (geteuid())
    {
      v7 = objc_autoreleasePoolPush();
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v8 = qword_100008038;
      v18 = qword_100008038;
      if (!qword_100008038)
      {
        *buf = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_100000F00;
        v22 = &unk_100004158;
        v23 = &v15;
        sub_100000F00(buf);
        v8 = v16[3];
      }

      v9 = v8;
      _Block_object_dispose(&v15, 8);
      v10 = [v8 sharedServer];
      [v10 startServer];

      objc_autoreleasePoolPop(v7);
      do
      {
        v11 = +[NSRunLoop currentRunLoop];
        v12 = +[NSDate distantFuture];
        v13 = [v11 runMode:NSDefaultRunLoopMode beforeDate:v12];
      }

      while ((v13 & 1) != 0);
    }
  }

  return 0;
}

void sub_100000E8C()
{
  v0 = AXLogRTT();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Received AppleLanguagePreferencesChangedNotification, restarting heard", v1, 2u);
  }

  exit(0);
}

Class sub_100000F00(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100008040)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001044;
    v4[4] = &unk_100004190;
    v4[5] = v4;
    v5 = off_100004178;
    v6 = 0;
    qword_100008040 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100008040)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXHeardController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000116C();
  }

  qword_100008038 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001044(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008040 = result;
  return result;
}

void sub_1000010E4()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v1, 8u);
}