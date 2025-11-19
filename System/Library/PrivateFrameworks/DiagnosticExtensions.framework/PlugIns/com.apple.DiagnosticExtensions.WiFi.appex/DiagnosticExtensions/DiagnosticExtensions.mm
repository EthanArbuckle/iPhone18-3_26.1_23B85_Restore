void sub_100000F24(id a1)
{
  qword_10000C2A8 = os_log_create("com.apple.wifi.WiFiDiagnosticExtension", "WiFiDE");

  _objc_release_x1();
}

id sub_10000121C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10000C280;
  v7 = qword_10000C280;
  if (!qword_10000C280)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002E10;
    v3[3] = &unk_100008270;
    v3[4] = &v4;
    sub_100002E10(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100001310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100001328()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10000C290;
  v7 = qword_10000C290;
  if (!qword_10000C290)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000309C;
    v3[3] = &unk_100008270;
    v3[4] = &v4;
    sub_10000309C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002B24(id *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"WiFiDiagnosticsExtension" forKeyedSubscript:@"class"];
  v3 = MGCopyAnswer();
  v5 = v3;
  if (v3)
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID())
    {
      [v2 setObject:v5 forKeyedSubscript:@"releaseType"];
    }
  }

  v7 = *&qword_10000C2A0;
  if (*&qword_10000C2A0 != 0.0)
  {
    v4 = *&qword_10000C298;
    if (*&qword_10000C298 != 0.0)
    {
      v8 = [NSNumber numberWithDouble:*&qword_10000C2A0 - *&qword_10000C298];
      [v2 setObject:v8 forKeyedSubscript:@"attachmentCollectionDuration"];
    }
  }

  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a1[4] attachmentSizes:{a1[5], v7, v4}]);
  [v2 setObject:v9 forKeyedSubscript:@"attachmentSize"];

  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[5] count]);
  [v2 setObject:v10 forKeyedSubscript:@"attachmentCount"];

  v11 = a1[6];
  if (v11)
  {
    if ([v11 count])
    {
      v12 = [a1[6] objectForKey:@"DEExtensionHostAppKey"];

      if (v12)
      {
        v13 = [a1[6] objectForKey:@"DEExtensionHostAppKey"];
        v14 = @"com.apple.symptomsd";
        if (([(__CFString *)v13 isEqualToString:@"com.apple.symptomsd"]& 1) != 0 || (v14 = @"airplay", ([(__CFString *)v13 isEqualToString:@"airplay"]& 1) != 0) || (v14 = @"Feedback Assistant", ([(__CFString *)v13 isEqualToString:@"Feedback Assistant"]& 1) != 0) || (v14 = @"com.apple.taptoradar", ([(__CFString *)v13 isEqualToString:@"com.apple.taptoradar"]& 1) != 0) || (v14 = v13) != 0)
        {
          [v2 setObject:v14 forKeyedSubscript:@"DEExtensionHostAppKey"];
        }
      }
    }
  }

  v15 = [a1[4] WiFiDELog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446722;
    v18 = "[WiFiDiagnosticsExtension sendTelemetryAndClearTimers:withAttachments:]_block_invoke";
    v19 = 1024;
    v20 = 439;
    v21 = 2112;
    v22 = v2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: sent telemetry metricDict: %@", &v17, 0x1Cu);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void sub_100002E10(uint64_t a1)
{
  sub_100002ED8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5Client");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000C280 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getW5ClientClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WiFiDiagnosticsExtension.m" lineNumber:30 description:{@"Unable to find class %s", "W5Client"}];

    __break(1u);
  }
}

void sub_100002ED8()
{
  v3[0] = 0;
  if (!qword_10000C288)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003028;
    v3[4] = &unk_1000082A8;
    v3[5] = v3;
    v4 = off_100008290;
    v5 = 0;
    qword_10000C288 = _sl_dlopen();
  }

  if (!qword_10000C288)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *WiFiVelocityLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WiFiDiagnosticsExtension.m" lineNumber:29 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100003028(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C288 = result;
  return result;
}

Class sub_10000309C(uint64_t a1)
{
  sub_100002ED8();
  result = objc_getClass("W5LogItemRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000C290 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"Class getW5LogItemRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v4 file:@"WiFiDiagnosticsExtension.m" lineNumber:32 description:{@"Unable to find class %s", "W5LogItemRequest"}];

    __break(1u);
    return AnalyticsSendEventLazy();
  }

  return result;
}