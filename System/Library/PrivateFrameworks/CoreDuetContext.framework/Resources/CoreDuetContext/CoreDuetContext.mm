void sub_100001058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000011E0;
    v12[3] = &unk_1000083B8;
    objc_copyWeak(&v15, (a1 + 40));
    v13 = v6;
    v14 = v5;
    v8 = v12;
    v9 = v7;
    v10 = os_transaction_create();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000011D0;
    block[3] = &unk_1000084D0;
    v17 = v10;
    v18 = v8;
    v11 = v10;
    dispatch_async(v9, block);

    objc_destroyWeak(&v15);
  }
}

void sub_1000011E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = (a1 + 32);
    v7 = [v3 _extractInteractionsFromEvents:v4 onStream:v5];
    if ([*v6 count])
    {
      v8 = +[_CDLogging instrumentationChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_100002950(v6);
      }

      v9 = v3[5];
      v10 = *v6;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100001E48;
      v14[3] = &unk_100008368;
      v15 = v10;
      [v9 saveObjects:v15 tracker:&stru_100008340 responseQueue:0 withCompletion:v14];
    }

    if ([v7 count])
    {
      v11 = +[_CDLogging instrumentationChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100002A30(v7);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100001EAC;
      v12[3] = &unk_100008390;
      v13 = v7;
      [v3 _recordInteractions:v13 enforceDataLimits:1 enforcePrivacy:1 reply:v12];
    }
  }
}

void sub_1000013AC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = +[_CDContextServiceManager sharedInstance];
    v4 = [v3 monitorManager];
    v5 = [CDNotifydMonitor xpcDictionaryToFoundation:v2];
    [v4 deliverNotificationEvent:v5];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100002E5C();
  }
}

void sub_1000014A8(id a1)
{
  qword_10000C950 = objc_alloc_init(_CDContextServiceManager);

  _objc_release_x1();
}

void sub_1000019AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001DF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100001E48(uint64_t a1, uint64_t a2)
{
  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100002AB0(a2, a1);
  }
}

void sub_100001EAC(uint64_t a1, uint64_t a2)
{
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B38(a2, a1);
  }
}

void sub_100001F10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002088;
    v12[3] = &unk_1000083B8;
    objc_copyWeak(&v15, (a1 + 40));
    v13 = v5;
    v14 = v6;
    v8 = v12;
    v9 = v7;
    v10 = os_transaction_create();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000011D0;
    block[3] = &unk_1000084D0;
    v17 = v10;
    v18 = v8;
    v11 = v10;
    dispatch_async(v9, block);

    objc_destroyWeak(&v15);
  }
}

void sub_100002088(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100002BC0(a1);
    }

    v4 = WeakRetained[5];
    v5 = *(a1 + 40);
    v10 = 0;
    v6 = [v4 deleteAllEventsMatchingPredicate:v5 error:&v10];
    v7 = v10;
    v8 = +[_CDLogging instrumentationChannel];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100002C7C(a1);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100002CFC(v6);
    }
  }
}

void sub_100002184(id a1, _CDEventStream *a2, _DKMonitoring *a3)
{
  v3 = a3;
  if ([(_DKMonitoring *)v3 conformsToProtocol:&OBJC_PROTOCOL____DKInstantMonitor]&& [(_DKMonitoring *)v3 conformsToProtocol:&OBJC_PROTOCOL____DKHistoricalMonitor])
  {
    v4 = v3;
    v5 = +[_CDLogging contextChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Running general shutdown handler for monitor %@", buf, 0xCu);
    }

    v8 = [(_DKMonitoring *)v4 currentEvent];

    if (v8)
    {
      v9 = +[NSDate date];
      v10 = [(_DKMonitoring *)v4 currentEvent];
      [v10 setEndDate:v9];

      v11 = [(_DKMonitoring *)v4 historicalHandler];

      if (v11)
      {
        v12 = [(_DKMonitoring *)v4 historicalHandler];
        v13 = [(_DKMonitoring *)v4 currentEvent];
        v15 = v13;
        v14 = [NSArray arrayWithObjects:&v15 count:1];
        (v12)[2](v12, v14);
      }
    }
  }
}

Class sub_1000024B0(uint64_t a1)
{
  sub_100002500();
  result = objc_getClass("CUObjCEvidenceSystem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000C960 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100002500()
{
  if (!qword_10000C968)
  {
    qword_10000C968 = _sl_dlopen();
  }
}

uint64_t sub_1000025D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C968 = result;
  return result;
}

Class sub_100002644(uint64_t a1)
{
  sub_100002500();
  result = objc_getClass("CUObjCInferenceEngine");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000C970 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000026C4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t start()
{
  getpid();
  v0 = memorystatus_control();
  if (v0)
  {
    syslog(3, "Error setting jetsam priority: %d", v0);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = os_transaction_create();
  v3 = +[_CDContextServiceManager sharedInstance];
  v4 = qword_10000C978;
  qword_10000C978 = v3;

  objc_autoreleasePoolPop(v1);
  CFRunLoopRun();
  return 1;
}

void sub_100002950(id *a1)
{
  [*a1 count];
  v2 = [*a1 firstObject];
  v3 = [v2 stream];
  v9 = [v3 name];
  sub_100002694();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100002A30(void *a1)
{
  [a1 count];
  sub_1000026B8();
  sub_100002694();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100002AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_1000026A4();
  sub_1000026C4(&_mh_execute_header, v3, v4, "%s save events %@");
}

void sub_100002B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_1000026A4();
  sub_1000026C4(&_mh_execute_header, v3, v4, "%s save interactions %@");
}

void sub_100002BC0(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStreamProperties];
  v3 = [v2 name];
  v4 = *(a1 + 40);
  sub_1000026B8();
  sub_100002694();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100002C7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000026A4();
  v5 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error deleting historical events from the %@ monitor: %@", v4, 0x16u);
}

void sub_100002CFC(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  sub_1000026B8();
  sub_100002694();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100002D94(void *a1)
{
  [a1 count];
  sub_1000026B8();
  sub_100002694();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}