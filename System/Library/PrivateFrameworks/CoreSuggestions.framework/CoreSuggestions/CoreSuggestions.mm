void sub_1000016A0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = objc_autoreleasePoolPush();
    v6 = [NSString stringWithUTF8String:v4];
    objc_autoreleasePoolPop(v5);
    v7 = ii_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "launch event: notifyd: %@", &v9, 0xCu);
    }

    if (v6)
    {
      [PPEventStreamHandler prepareToHandleNotificationWithName:v6];
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 postNotificationName:v6 object:0 userInfo:0];
    }
  }
}

uint64_t SGM2PerfSuggestdLaunchedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100001D5C(uint64_t a1)
{
  v2 = NSStringFromSelector([*(a1 + 32) selector]);
  v3 = [v2 componentsSeparatedByString:@":"];
  [v3 objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();

  mach_absolute_time();
  [*(a1 + 32) invokeWithTarget:*(*(a1 + 40) + 8)];
  SGRecordMeasurementState();
  return SGRecordMeasurementState();
}

void sub_100001E0C(_Unwind_Exception *a1)
{
  objc_end_catch();
  SGRecordMeasurementState();
  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = ii_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Starting suggestd", buf, 2u);
  }

  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  dispatch_source_set_event_handler(v5, &stru_10000C480);
  dispatch_resume(v5);
  v25.rlim_cur = 0;
  v25.rlim_max = 0;
  if (getrlimit(8, &v25))
  {
    v6 = ii_default_log_handle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_12;
    }

    v7 = *__error();
    v8 = __error();
    v9 = strerror(*v8);
    *buf = 67109378;
    v28 = v7;
    v29 = 2080;
    v30 = v9;
    v10 = "Unable to getrlimit: [%i] %s";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 0x12u);
    goto LABEL_7;
  }

  if (v25.rlim_cur <= 0x4FF)
  {
    v25.rlim_cur = 1280;
    if (setrlimit(8, &v25))
    {
      v6 = ii_default_log_handle();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 67109378;
      v28 = v11;
      v29 = 2080;
      v30 = v13;
      v10 = "Unable to setrlimit: [%i] %s";
      goto LABEL_6;
    }
  }

LABEL_12:
  zone = malloc_create_zone(0, 0);
  malloc_set_zone_name(zone, "ICU");
  v26 = 0;
  u_setMemoryFunctions();
  if (v26)
  {
    v15 = ii_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v28 = v26;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not set up ICU malloc zone; err = %i", buf, 8u);
    }
  }

  v16 = objc_opt_new();
  [_PASCrashHelper optInCurrentProcessForLogFaultProbabalisticCrashesWithConfig:v16];

  +[CLLocationManager sg_swizzle];
  +[SGSuggestionsSystem start];
  SGDServerRun();
  v17 = objc_opt_new();
  v18 = +[PETEventTracker2 sharedInstance];
  [v18 trackScalarForMessage:v17];

  v19 = [NSString alloc];
  v20 = [v17 key];
  v21 = [v19 initWithFormat:@"%@.%@", @"com.apple.Proactive.suggestd", v20];

  v22 = [v17 dictionaryRepresentation];
  AnalyticsSendEvent();

  objc_autoreleasePoolPop(v3);
  v23 = +[NSRunLoop currentRunLoop];
  [v23 run];

  return 0;
}

void sub_100002534(id a1)
{
  v1 = ii_default_log_handle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Received SIGTERM; exiting", v2, 2u);
  }

  IIExit();
}

void sub_100002CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002CEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ii_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    Name = protocol_getName(*(a1 + 32));
    v6 = 136315394;
    v7 = Name;
    v8 = 1024;
    v9 = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "XPC Connection %s from %d invalidated", &v6, 0x12u);
  }

  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    objc_sync_enter(v5);
    [*(*(a1 + 40) + 16) removeObject:WeakRetained];
    objc_sync_exit(v5);
  }
}

id sub_100003440(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:v1 error:&v11];
  v3 = v11;
  if (v2)
  {
    v4 = [v2 bundleIdentifier];
    if (v4)
    {
      v10 = v3;
      v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v10];
      v6 = v10;

      v7 = [v5 applicationState];
      v8 = 0;
      if ([v7 isValid])
      {
        v8 = [v7 isInstalled];
      }

      v3 = v6;
    }

    else
    {
      v5 = ii_default_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SGDServer: no bundle identifier found for application %@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v4 = ii_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SGDServer: no such application found: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

void sub_100003668(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = qword_100011C80;
  qword_100011C80 = v2;

  objc_autoreleasePoolPop(v1);
}

void SGDServerRun()
{
  +[IIStartupManager start];
  if (qword_100011C78 != -1)
  {

    dispatch_once(&qword_100011C78, &stru_10000C4C0);
  }
}

void sub_100003714(id a1)
{
  v1 = ii_default_log_handle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    LOWORD(v29[0]) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Starting suggestd...", v29, 2u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10000C500);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_10000C520);

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v2 = qword_100011C90;
  v33 = qword_100011C90;
  if (!qword_100011C90)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100003C6C;
    v29[3] = &unk_10000C590;
    v29[4] = &v30;
    sub_100003C6C(v29);
    v2 = v31[3];
  }

  v3 = v2;
  _Block_object_dispose(&v30, 8);
  [v2 start];
  v4 = +[SGDServer sharedServer];
  v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.mail"];
  [v4 setupWithConnectionListener:v5 protocol:&OBJC_PROTOCOL___SGDSuggestManagerMailProtocol entitlement:@"com.apple.private.suggestions.mail"];

  v6 = +[SGDServer sharedServer];
  v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.messages"];
  [v6 setupWithConnectionListener:v7 protocol:&OBJC_PROTOCOL___SGDSuggestManagerMessagesProtocol entitlement:@"com.apple.private.suggestions.messages"];

  v8 = +[SGDServer sharedServer];
  v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.contacts"];
  [v8 setupWithConnectionListener:v9 protocol:&OBJC_PROTOCOL___SGDSuggestManagerContactsProtocol entitlement:@"com.apple.private.suggestions.contacts"];

  v10 = +[SGDServer sharedServer];
  v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.urls"];
  [v10 setupWithConnectionListener:v11 protocol:&OBJC_PROTOCOL___SGDSuggestManagerURLsProtocol entitlement:@"com.apple.private.suggestions.urls"];

  v12 = +[SGDServer sharedServer];
  v13 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.events"];
  [v12 setupWithConnectionListener:v13 protocol:&OBJC_PROTOCOL___SGDSuggestManagerEventsProtocol entitlement:@"com.apple.private.suggestions.events"];

  v14 = +[SGDServer sharedServer];
  v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.internal"];
  [v14 setupWithConnectionListener:v15 protocol:&OBJC_PROTOCOL___SGDSuggestManagerInternalProtocol entitlement:@"com.apple.private.suggestions.internal"];

  v16 = +[SGDServer sharedServer];
  v17 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.ipsos"];
  [v16 setupWithConnectionListener:v17 protocol:&OBJC_PROTOCOL___SGDSuggestManagerIpsosProtocol entitlement:@"com.apple.private.suggestions.ipsos"];

  v18 = +[SGDServer sharedServer];
  v19 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.reminders"];
  [v18 setupWithConnectionListener:v19 protocol:&OBJC_PROTOCOL___SGDSuggestManagerRemindersProtocol entitlement:@"com.apple.private.suggestions.reminders"];

  v20 = +[SGDServer sharedServer];
  v21 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.deliveries"];
  [v20 setupWithConnectionListener:v21 protocol:&OBJC_PROTOCOL___SGDSuggestManagerDeliveriesProtocol entitlement:@"com.apple.private.suggestions.deliveries"];

  v22 = +[SGDServer sharedServer];
  v23 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.spotlightknowledged"];
  [v22 setupWithConnectionListener:v23 protocol:&OBJC_PROTOCOL___SGDSuggestManagerSpotlightKnowledgeProtocol entitlement:@"com.apple.private.suggestions.spotlightknowledged"];

  v24 = +[SGDServer sharedServer];
  v25 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.suggestd.fides"];
  [v24 setupWithConnectionListener:v25 protocol:&OBJC_PROTOCOL___SGDSuggestManagerFidesProtocol entitlement:@"com.apple.private.des-service"];

  +[PPXPCServer registerXPCListeners];
  +[PREXPCServer registerPREXPCListeners];
  +[PSGXPCServer registerXPCListeners];
  v26 = +[SGAsset asset];
  [HVProactiveHarvestingSystem startWithConfigurationAsset:v26];

  v27 = +[NSFileManager defaultManager];
  v28 = [SGPaths suggestionsSubdirectory:@"pending"];
  [v27 removeItemAtPath:v28 error:0];

  +[PSGProactiveInputPredictionsSystem start];
  +[PPPortraitSystem start];
}

void sub_100003C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100003C6C(uint64_t a1)
{
  if (!qword_100011C98)
  {
    qword_100011C98 = _sl_dlopen();
  }

  result = objc_getClass("PSUSummarizationXPCServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100011C90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011C98 = result;
  return result;
}

void sub_100003DE0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = objc_autoreleasePoolPush();
    v6 = [NSString stringWithUTF8String:v4];
    objc_autoreleasePoolPop(v5);
    v7 = ii_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "launch event: distnoted: %@", &v11, 0xCu);
    }

    if (v6)
    {
      [PPEventStreamHandler prepareToHandleNotificationWithName:v6];
      v8 = xpc_dictionary_get_value(v2, "UserInfo");
      v9 = _CFXPCCreateCFObjectFromXPCObject();
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 postNotificationName:v6 object:0 userInfo:v9];
    }
  }
}