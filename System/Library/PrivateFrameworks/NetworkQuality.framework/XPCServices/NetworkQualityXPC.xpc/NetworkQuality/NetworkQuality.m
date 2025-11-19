void sub_100000D78()
{
  if (qword_100008728 != -1)
  {
    sub_1000018A0();
  }
}

void sub_100000DA4(id a1)
{
  qword_100008730 = os_log_create("com.apple.networkQuality", "netqual");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_10000103C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSProgress);
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = objc_alloc_init(NSOperationQueue);
  [v6 setUnderlyingQueue:*(*(a1 + 32) + 8)];
  [v6 setMaxConcurrentOperationCount:1];
  v7 = [[NetworkQualityAssessment alloc] initWithConfiguration:*(a1 + 40) delegate:*(a1 + 32) delegateQueue:v6];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001194;
  v8[3] = &unk_100004290;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 48);
  [v7 runWithCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v2);
}

void sub_100001178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001194(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  WeakRetained[16] = 1;
  (*(*(a1 + 32) + 16))();
}

void sub_1000012F8(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(NSMutableArray);
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 hostName];

  v4 = dispatch_semaphore_create(0);
  v5 = nw_parameters_create();
  nw_parameters_set_include_peer_to_peer(v5, 1);
  bonjour_service = nw_browse_descriptor_create_bonjour_service("_nq._tcp", 0);
  v6 = nw_browser_create(bonjour_service, v5);
  v7 = dispatch_get_global_queue(33, 0);
  nw_browser_set_queue(v6, v7);

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001580;
  handler[3] = &unk_1000042E0;
  v8 = v4;
  v23 = v8;
  v18 = v3;
  v24 = v18;
  v9 = v1;
  v25 = v9;
  nw_browser_set_browse_results_changed_handler(v6, handler);
  nw_browser_start(v6);
  v10 = objc_alloc_init(NetworkQualityServersResult);
  v11 = dispatch_time(0, 250000000);
  dispatch_semaphore_wait(v8, v11);
  [v9 count];
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v12;
    v15 = [v9 count];
    v12 = [v9 count];
    if (v15 <= v14)
    {
      ++v13;
    }

    else
    {
      v13 = 1;
    }

    v16 = dispatch_time(0, 250000000);
    dispatch_semaphore_wait(v8, v16);
  }

  while (v12 != [v9 count] || v13 < 5);
  nw_browser_cancel(v6);
  v17 = [v9 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  [v10 setServers:v17];

  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(context);
}

void sub_100001580(uint64_t a1, NSObject *a2, void *a3, int a4)
{
  v7 = a3;
  changes = nw_browse_result_get_changes(a2, v7);
  if (changes)
  {
    if (changes)
    {
      sub_100000D78();
      v14 = qword_100008730;
      if (os_log_type_enabled(qword_100008730, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315394;
        v17 = "[NetworkQualityXPC findLocalMeasurementEndpoints:]_block_invoke";
        v18 = 1024;
        v19 = 94;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%u - nw_browse_result_change_identical, returning", &v16, 0x12u);
      }
    }

    else
    {
      v9 = nw_browse_result_copy_endpoint(v7);
      sub_100000D78();
      v10 = qword_100008730;
      if (os_log_type_enabled(qword_100008730, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = "[NetworkQualityXPC findLocalMeasurementEndpoints:]_block_invoke";
        v18 = 1024;
        v19 = 99;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%u - Adding %@", &v16, 0x1Cu);
      }

      bonjour_service_name = nw_endpoint_get_bonjour_service_name(v9);
      if (bonjour_service_name)
      {
        v12 = [NSString stringWithUTF8String:bonjour_service_name];
        if (([v12 isEqualToString:*(a1 + 40)] & 1) == 0)
        {
          [*(a1 + 48) addObject:v12];
        }
      }

      else
      {
        sub_100000D78();
        v15 = qword_100008730;
        if (os_log_type_enabled(qword_100008730, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = "[NetworkQualityXPC findLocalMeasurementEndpoints:]_block_invoke";
          v18 = 1024;
          v19 = 103;
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - NULL service_name for %@", &v16, 0x1Cu);
        }
      }

      if (a4)
      {
        dispatch_semaphore_signal(*(a1 + 32));
      }
    }
  }

  else
  {
    sub_100000D78();
    v13 = qword_100008730;
    if (os_log_type_enabled(qword_100008730, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[NetworkQualityXPC findLocalMeasurementEndpoints:]_block_invoke_2";
      v18 = 1024;
      v19 = 89;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%u - nw_browse_result_change_invalid, returning", &v16, 0x12u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}