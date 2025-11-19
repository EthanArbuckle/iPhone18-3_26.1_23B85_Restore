uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"isHH2Enabled", @"com.apple.homed", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    if (AppBooleanValue)
    {
      goto LABEL_3;
    }
  }

  else if (_os_feature_enabled_impl() && HMFIsInternalBuild() && !CFPreferencesGetAppBooleanValue(@"enableRetailDemoSetup", @"com.apple.homed", 0))
  {
LABEL_3:
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v2 = qword_100008020;
    v16 = qword_100008020;
    if (!qword_100008020)
    {
      *keyExistsAndHasValidFormat = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_100000D84;
      v11 = &unk_1000040E8;
      v12 = &v13;
      sub_100000D84(keyExistsAndHasValidFormat);
LABEL_10:
      v2 = v14[3];
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v2 = qword_100008030;
  v16 = qword_100008030;
  if (!qword_100008030)
  {
    *keyExistsAndHasValidFormat = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100000ED8;
    v11 = &unk_1000040E8;
    v12 = &v13;
    sub_100000ED8(keyExistsAndHasValidFormat);
    goto LABEL_10;
  }

LABEL_11:
  v3 = v2;
  _Block_object_dispose(&v13, 8);
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000102C;
  v7[3] = &unk_1000040C0;
  v7[4] = v2;
  dispatch_async(v4, v7);

  objc_autoreleasePoolPop(v0);
  v5 = +[NSRunLoop currentRunLoop];
  [v5 run];

  return 0;
}

Class sub_100000D84(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100008028)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000010E4;
    v4[4] = &unk_100004120;
    v4[5] = v4;
    v5 = off_100004108;
    v6 = 0;
    qword_100008028 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100008028)
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
  result = objc_getClass("HMDMainDriver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_100008020 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100000ED8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100008038)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001070;
    v4[4] = &unk_100004120;
    v4[5] = v4;
    v5 = off_100004140;
    v6 = 0;
    qword_100008038 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100008038)
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
  result = objc_getClass("HMDMainDriver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_100008030 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000102C(uint64_t a1)
{
  v1 = [*(a1 + 32) driver];
  [v1 start];
}

uint64_t sub_100001070(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008038 = result;
  return result;
}

uint64_t sub_1000010E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008028 = result;
  return result;
}