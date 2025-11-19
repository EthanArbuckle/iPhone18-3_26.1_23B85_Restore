BOOL enumerateHangIntervalsInTimeRange(void *a1, void *a2, float *a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = objc_opt_new();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100001498;
  v20[3] = &unk_1000246E0;
  v11 = v7;
  v21 = v11;
  [v10 setIntervalCompletionProcessingBlock:v20];
  v12 = objc_opt_new();
  [v12 addSubsystem:@"com.apple.hangtracer" category:@"always_on_hang"];
  [v10 setSubsystemCategoryFilter:v12];
  memset(&v18, 0, sizeof(v18));
  memset(&v19, 0, sizeof(v19));
  getrusage(0, &v19);
  v17 = 0;
  [v10 processLogArchiveWithPath:0 startDate:v9 endDate:v8 errorOut:&v17];

  v13 = v17;
  getrusage(0, &v18);
  if (a3)
  {
    v14 = ((v18.ru_stime.tv_usec / 1000000.0) + v18.ru_stime.tv_sec) - ((v19.ru_stime.tv_usec / 1000000.0) + v19.ru_stime.tv_sec) + ((v18.ru_utime.tv_usec / 1000000.0) + v18.ru_utime.tv_sec) - ((v19.ru_utime.tv_usec / 1000000.0) + v19.ru_utime.tv_sec);
    *a3 = v14;
  }

  if (v13)
  {
    v15 = shared_ht_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100012D68(v13, v15);
    }
  }

  return v13 == 0;
}

id getHangIntervalsInTimeRange(void *a1, void *a2, float *a3)
{
  v5 = a2;
  v6 = a1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000015B0;
  v10[3] = &unk_100024708;
  v7 = objc_opt_new();
  v11 = v7;
  LODWORD(a3) = enumerateHangIntervalsInTimeRange(v6, v5, a3, v10);

  if (a3)
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

void getBiomeForegroundDurations(void *a1, void *a2, void *a3, int a4)
{
  v26 = a1;
  v7 = a2;
  v8 = a3;
  puts("Querying Biome Database...");
  sub_100015410(v9);
  v11 = objc_alloc_init(*(v10 + 1448));
  [v26 timeIntervalSince1970];
  v13 = v12;
  v25 = v7;
  [v7 timeIntervalSince1970];
  v15 = [v11 executeQuery:{@"SELECT bundleID, sum(duration) FROM(    SELECT *, end_timestamp-start_timestamp AS duration FROM    (        SELECT bundleID, CASE WHEN starting=1 THEN eventTimestamp ELSE NULL END AS start_timestamp, CASE WHEN next_starting=0 THEN next_timestamp                  WHEN starting==0 AND previous_starting==0 THEN next_timestamp ELSE NULL END AS end_timestamp         FROM        (            SELECT bundleID, starting, eventTimestamp, lead(eventTimestamp) OVER win AS next_timestamp, lead(starting) OVER win AS next_starting, lag(starting) OVER win AS previous_starting FROM                 App.InFocus                 where eventTimestamp > %ld AND eventTimestamp < %ld                 WINDOW win AS (PARTITION BY bundleID ORDER BY eventTimestamp)        )    ) WHERE         start_timestamp IS NOT NULL OR end_timestamp IS NOT NULL     ORDER BY start_timestamp) GROUP BY bundleID ORDER BY sum(duration) DESC ", v13, v14}];
  if ([v15 next])
  {
    do
    {
      v16 = [v15 row];
      v17 = [v16 objectForKeyedSubscript:@"bundleID"];
      if (v17)
      {
        v18 = [v16 objectForKeyedSubscript:@"sum(duration)"];
        if (v18)
        {
          [v8 setObject:v18 forKeyedSubscript:v17];
          if (a4)
          {
            v19 = [v17 cStringUsingEncoding:1];
            [v18 floatValue];
            printf("Usage Time (%s): %f seconds\n", v19, v20);
          }
        }
      }
    }

    while (([v15 next] & 1) != 0);
  }

  v21 = [v15 error];

  if (v21)
  {
    v22 = shared_ht_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100012E14(v15, v22);
    }

    v23 = [v15 error];
    v24 = [v23 localizedDescription];
    printf("ERROR: Biome lookup failed — %s\n", [v24 cStringUsingEncoding:1]);

    exit(1);
  }
}

void getHTForegroundTrackingDurations(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  puts("Processing signposts...");
  v10 = objc_alloc_init(SignpostSupportObjectExtractor);
  v11 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  [v11 addSubsystem:@"com.apple.hangtracer" category:@"foreground_tracking"];
  v38 = v11;
  [v10 setSubsystemCategoryFilter:v11];
  v12 = objc_alloc_init(NSDateFormatter);
  [v12 setDateStyle:1];
  [v12 setTimeStyle:2];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100001CF4;
  v49[3] = &unk_100024750;
  v52 = &v59;
  v13 = v9;
  v50 = v13;
  v54 = a4;
  v42 = v12;
  v51 = v42;
  v53 = &v55;
  [v10 setIntervalCompletionProcessingBlock:v49];
  v48 = 0;
  v37 = v10;
  v40 = v8;
  v41 = v7;
  LOBYTE(v11) = [v10 processLogArchiveWithPath:0 startDate:v7 endDate:v8 errorOut:&v48];
  v39 = v48;
  if ((v11 & 1) == 0)
  {
    v33 = shared_ht_log_handle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [v39 localizedDescription];
      sub_100012EAC(v34, buf, v33);
    }

    v35 = [v39 localizedDescription];
    v36 = v35;
    printf("ERROR: Signpost extraction failed — %s", [v35 cStringUsingEncoding:1]);

    exit(1);
  }

  *buf = 0;
  v65 = buf;
  v66 = 0x2020000000;
  v67 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100001F64;
  v47[3] = &unk_100024778;
  v47[4] = buf;
  [v13 enumerateKeysAndObjectsUsingBlock:v47];
  if (a4)
  {
    puts("\nTotal Foreground Time\n———————————————");
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v63 count:16];
    if (v15)
    {
      v16 = *v44;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = *(v65 + 6);
          v20 = [v18 length];
          v21 = v18;
          v22 = [v18 cStringUsingEncoding:1];
          v23 = [v14 objectForKeyedSubscript:v18];
          [v23 floatValue];
          printf("%s: %*.2f s\n", v22, v19 - v20 + 10, v24);
        }

        v15 = [v14 countByEnumeratingWithState:&v43 objects:v63 count:16];
      }

      while (v15);
    }
  }

  v25 = v56[3];
  v26 = [v13 count];
  v27 = [v42 stringFromDate:v41];
  v28 = v27;
  v29 = [v27 UTF8String];
  v30 = [v42 stringFromDate:v40];
  v31 = v30;
  v32 = [v30 UTF8String];
  printf("Found %llu signpost intervals from %lu unique processes from %s to %s\nTotal Duration — %.2f hours\n\n", v25, v26, v29, v32, v60[3] / 3600.0);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
}

void sub_100001C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001CF4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 durationSeconds];
  v5 = v4;
  v6 = v4;
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v4;
  v7 = [v3 beginEvent];
  v8 = [v7 metadata];
  v9 = [v8 componentsSeparatedByString:@"="];
  v10 = [v9 objectAtIndexedSubscript:1];

  v11 = [*(a1 + 32) objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [NSNumber numberWithFloat:0.0];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
  }

  v13 = [*(a1 + 32) objectForKeyedSubscript:v10];
  [v13 floatValue];
  *&v15 = v5 + v14;
  v16 = [NSNumber numberWithFloat:v15];

  [*(a1 + 32) setObject:v16 forKeyedSubscript:v10];
  if (*(a1 + 64) == 1)
  {
    v27 = [v3 signpostId];
    v17 = *(a1 + 40);
    v28 = [v3 beginDate];
    v18 = [v17 stringFromDate:v28];
    v25 = [v18 UTF8String];
    v19 = *(a1 + 40);
    v26 = [v3 endDate];
    v20 = [v19 stringFromDate:v26];
    v21 = [v20 UTF8String];
    v22 = [v3 endEvent];
    v23 = [v22 processName];
    printf("SignpostID: %-15llu Begin: %-30s End: %-30s Duration(s): %-10.2f Emitting Process: %-30s BundleID: %s\n", v27, v25, v21, v6, [v23 UTF8String], objc_msgSend(v10, "cStringUsingEncoding:", 1));
  }

  ++*(*(*(a1 + 56) + 8) + 24);

  return 1;
}

id sub_100001F64(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 length];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void htAddAppForegroundDurations(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v20 = a1;
  v22 = a2;
  v21 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 unsignedIntValue];
        v18 = objc_alloc_init(NSMutableDictionary);
        [v10 setObject:v18 forKeyedSubscript:v16];
        if (v17 == 1)
        {
          getHTForegroundTrackingDurations(v22, v21, v18, a5);
        }

        else if (!v17)
        {
          getBiomeForegroundDurations(v22, v21, v18, a5);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000021C0;
  v23[3] = &unk_1000247A0;
  v24 = v10;
  v19 = v10;
  [v20 enumerateKeysAndObjectsUsingBlock:v23];
}

void sub_1000021C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [*(a1 + 32) objectForKeyedSubscript:{v12, v20}];
        v14 = [v13 objectForKeyedSubscript:v5];
        if (v14)
        {
          v15 = [v12 unsignedIntValue];
          if (v15 == 1)
          {
            [v14 floatValue];
            *&v19 = v18 / 3600.0;
            [v6 setSignpostForegroundDurationHours:v19];
          }

          else if (!v15)
          {
            [v14 floatValue];
            *&v17 = v16 / 3600.0;
            [v6 setBiomeForegroundDurationHours:v17];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

id htCompleteHangHistoryInfo(int a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = objc_alloc_init(NSMutableArray);
  v12 = objc_alloc_init(HangQueryInfo);
  getHangHistoryRecords(v10, v11, v12, a1, v8, v7);
  htAddAppForegroundDurations(v10, v8, v7, v9, a1);

  v13 = getHangHistoryDescriptionWithForegroundSources(v10, 1, v9);

  v14 = getHangIntervalsDescription(v11, a1);
  v15 = getHangQueryInfoDescription(v12);
  v16 = [NSString stringWithFormat:@"%@\n%@\n%@", v15, v14, v13];

  return v16;
}

const __CFString *getColPrefixForHTUsageDataSource(int a1)
{
  if (a1 == 1)
  {
    return @"HTFG";
  }

  else
  {
    return 0;
  }
}

uint64_t HTTelemetryHasRunThisBoot()
{
  v0 = sem_open("hangtelemetryd.onceatboot", 0);
  if (v0 == -1)
  {
    if (*__error() == 2)
    {
      return 0;
    }

    v2 = shared_ht_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100012F04(v2);
    }
  }

  else
  {
    sem_close(v0);
  }

  return 1;
}

void HTTelemetryCheckForUpdates(void *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025F4;
  block[3] = &unk_100024828;
  v4 = a1;
  v1 = qword_10002B018;
  v2 = v4;
  if (v1 != -1)
  {
    dispatch_once(&qword_10002B018, block);
  }
}

void sub_1000025F4(uint64_t a1)
{
  HasRunThisBoot = HTTelemetryHasRunThisBoot();
  v3 = shared_ht_log_handle();
  empty = v3;
  if (HasRunThisBoot)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001302C(empty);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, empty, OS_LOG_TYPE_INFO, "Updating telemetry", v9, 2u);
    }

    v5 = dispatch_get_global_queue(21, 0);
    mach_service = xpc_connection_create_mach_service("com.apple.hangtelemetryd", v5, 0);

    xpc_connection_set_event_handler(mach_service, &stru_1000247E0);
    xpc_connection_activate(mach_service);
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_uint64(empty, "command", 1uLL);
    v7 = xpc_connection_send_message_with_reply_sync(mach_service, empty);
    if (xpc_get_type(v7) == &_xpc_type_error)
    {
      v8 = shared_ht_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100012F94(v7, v8);
      }
    }

    dispatch_sync(*(a1 + 32), &stru_100024800);
  }
}

void sub_100002764(id a1)
{
  v1 = +[HTPrefs sharedPrefs];
  [v1 refreshHTPrefs];
}

void sub_100002B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002B44(uint64_t a1, void *a2, void *a3)
{
  xdict = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      objc_storeStrong(v6, a3);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "ping");
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002FE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = shared_ht_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100013070(v3);
  }

  v5 = [*(a1 + 32) _checkValidXPCDictResponse:v3];
  (*(*(a1 + 40) + 16))();
}

void sub_10000323C(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];

  if (v2)
  {
    connection = [*(a1 + 32) connection];
    v3 = [*(a1 + 40) requestXPCDictionary];
    v4 = [*(a1 + 32) replyQueue];
    xpc_connection_send_message_with_reply(connection, v3, v4, *(a1 + 56));
  }

  else
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Failed to establish xpc connection with hangtracerd";
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"HTHangClientError" code:0 userInfo:v5];

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }
}

void sub_1000034FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003514(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000352C(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];

  if (v2)
  {
    v3 = [*(a1 + 32) connection];
    v4 = [*(a1 + 40) requestXPCDictionary];
    v5 = xpc_connection_send_message_with_reply_sync(v3, v4);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000130F8(a1 + 48);
    }

    v9 = [*(a1 + 32) _checkValidXPCDictResponse:*(*(*(a1 + 48) + 8) + 40)];
    if (v9)
    {
      v10 = *(a1 + 56);
      if (v10)
      {
        objc_storeStrong(v10, v9);
      }

      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Failed to establish xpc connection with hangtracerd";
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [NSError errorWithDomain:@"HTHangClientError" code:0 userInfo:v13];

    v14 = *(a1 + 56);
    if (v14)
    {
      v9 = v9;
      v12 = *v14;
      *v14 = v9;
LABEL_10:
    }
  }
}

void sub_100003724(id a1)
{
  if (!_HTHangClientSingletonInstance)
  {
    v1 = objc_alloc_init(HTHangClient);
    v2 = _HTHangClientSingletonInstance;
    _HTHangClientSingletonInstance = v1;

    if (_HTHangClientSingletonInstance)
    {
      v3 = [_HTHangClientSingletonInstance establishHangTracerConnection];
      if (v3)
      {
        v4 = shared_ht_log_handle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000131A0(v3, v4);
        }

        v5 = _HTHangClientSingletonInstance;
        _HTHangClientSingletonInstance = 0;
      }
    }
  }
}

void sub_100003898(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_1000038B8(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  *(&v50 + 1) = a2;
  *&v50 = a3;
  v52 = a4;
  v49 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v9;
  v46 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v46)
  {
    v45 = a5 ^ 1u;
    v44 = *v68;
    v10 = NSURLIsDirectoryKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v11;
        v12 = [NSURL URLWithString:*(*(&v67 + 1) + 8 * v11)];
        v13 = +[NSFileManager defaultManager];
        v75[0] = v10;
        v75[1] = NSURLNameKey;
        v75[2] = NSURLCreationDateKey;
        v14 = [NSArray arrayWithObjects:v75 count:3];
        v47 = v12;
        v15 = [v13 enumeratorAtURL:v12 includingPropertiesForKeys:v14 options:v45 errorHandler:&stru_100024948];

        v66 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v53 = v15;
        v16 = [v53 countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v64;
          do
          {
            v19 = 0;
            v51 = v17;
            do
            {
              if (*v64 != v18)
              {
                objc_enumerationMutation(v53);
              }

              v20 = *(*(&v63 + 1) + 8 * v19);
              v21 = objc_autoreleasePoolPush();
              v62 = 0;
              [v20 getResourceValue:&v62 forKey:v10 error:0];
              v22 = v62;
              if (([v22 BOOLValue] & 1) == 0)
              {
                v55 = v21;
                v61 = 0;
                [v20 getResourceValue:&v61 forKey:NSURLNameKey error:0];
                v23 = v61;
                v24 = [v23 lastPathComponent];
                v25 = shared_ht_log_handle();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v73 = v23;
                  _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Found file: %@", buf, 0xCu);
                }

                v54 = v23;

                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                v26 = v52;
                v27 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = v18;
                  v30 = v10;
                  v31 = *v58;
                  while (2)
                  {
                    for (i = 0; i != v28; i = i + 1)
                    {
                      if (*v58 != v31)
                      {
                        objc_enumerationMutation(v26);
                      }

                      if ([v24 hasPrefix:*(*(&v57 + 1) + 8 * i)])
                      {
                        v33 = 0;
                        goto LABEL_24;
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
                    if (v28)
                    {
                      continue;
                    }

                    break;
                  }

                  v33 = 1;
LABEL_24:
                  v10 = v30;
                  v18 = v29;
                  v17 = v51;
                }

                else
                {
                  v33 = 1;
                }

                v34 = v50 != 0;
                if (v50 != 0)
                {
                  v56 = 0;
                  [v20 getResourceValue:&v56 forKey:NSURLCreationDateKey error:0];
                  v35 = v56;
                  v36 = v35;
                  if (*(&v50 + 1))
                  {
                    v37 = [v35 compare:?] != -1;
                  }

                  else
                  {
                    v37 = 1;
                  }

                  if (v50)
                  {
                    v38 = [v36 compare:?] != 1;
                  }

                  else
                  {
                    v38 = 1;
                  }

                  v39 = v37 && v38;

                  v34 = v39 ^ 1;
                }

                if (((v33 | v34) & 1) == 0)
                {
                  v40 = [v20 path];
                  [v49 addObject:v40];
                }

                v21 = v55;
              }

              objc_autoreleasePoolPop(v21);
              v19 = v19 + 1;
            }

            while (v19 != v17);
            v17 = [v53 countByEnumeratingWithState:&v63 objects:v74 count:16];
          }

          while (v17);
        }

        v11 = v48 + 1;
      }

      while ((v48 + 1) != v46);
      v46 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v46);
  }

  v41 = [v49 copy];

  return v41;
}

id getListOfHangArchiveFiles(void *a1)
{
  v7 = a1;
  v1 = a1;
  v2 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = @"ArchivedHangs";
  v3 = [NSArray arrayWithObjects:&v6 count:1];

  v4 = sub_1000038B8(v2, 0, 0, v3, 0);

  return v4;
}

BOOL sub_100003EE8(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = shared_ht_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100013218();
  }

  return 1;
}

double timebaseConversionFactor()
{
  if (qword_10002B030 != -1)
  {
    sub_10001329C();
  }

  return *&qword_10002B028;
}

void sub_100003FA0(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  *&qword_10002B028 = ((info.numer * 0.000001) / info.denom);
}

double MATU_TO_MS(unint64_t a1)
{
  if (qword_10002B030 != -1)
  {
    sub_10001329C();
  }

  return *&qword_10002B028 * a1;
}

double MATU_TO_SEC(unint64_t a1)
{
  if (qword_10002B030 != -1)
  {
    sub_10001329C();
  }

  return *&qword_10002B028 * a1 / 1000.0;
}

double SEC_TO_MATU(double a1)
{
  if (qword_10002B030 != -1)
  {
    sub_10001329C();
  }

  return (a1 * 1000.0) / *&qword_10002B028;
}

uint64_t checkForAssertionOverlap(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v32 = 0;
  v7 = 0;
  v30 = a2 - a1;
  *&v8 = a3 + 32;
  v9 = 10;
  do
  {
    if (*v4)
    {
      ++v7;
      v10 = *(v4 + 24);
      if (v10 >= *(v4 + 16))
      {
        v10 = *(v4 + 16);
      }

      v11 = *(v4 + 8) <= a1 ? a1 : *(v4 + 8);
      v12 = v10 >= a2 ? a2 : v10;
      if (v12 > v11)
      {
        v13 = shared_ht_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *v4;
          v15 = *(v4 + 8);
          v16 = *(v4 + 24);
          *buf = 134219266;
          v36 = v14;
          v37 = 2080;
          v38 = v8;
          v39 = 2048;
          v40 = v15;
          v41 = 2048;
          v42 = v16;
          v43 = 2048;
          v44 = a1;
          v45 = 2048;
          v46 = a2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "HTAssertion: checkOverlap: hang overlaps with assertion, assertionid=%llu assertionname=(%s) start=%llu end=%llu, hangstart=%llu, hangend=%llu)", buf, 0x3Eu);
        }

        if (*(v4 + 96) == 1)
        {
          if (*(v4 + 24) < a2)
          {
            v17 = shared_ht_log_handle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "HTAssertion: checkOverlap: not ignoring hang during screen turning on";
LABEL_21:
              v20 = 2;
LABEL_22:
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, buf, v20);
              goto LABEL_23;
            }

            goto LABEL_23;
          }

          if (*(v4 + 8) > a1)
          {
            v17 = shared_ht_log_handle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "HTAssertion: checkOverlap: not ignoring hang during screen turning off";
              goto LABEL_21;
            }

LABEL_23:

            goto LABEL_30;
          }

          v21 = MATU_TO_MS(v30);
          v22 = shared_ht_log_handle();
          v17 = v22;
          if (v21 >= 1000.0)
          {
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              goto LABEL_23;
            }

            v23 = MATU_TO_MS(v30);
            *buf = 134217984;
            v36 = v23;
            v18 = v17;
            v19 = "HTAssertion: checkOverlap: not ignoring hang during screen off with duration %.0fms";
            v20 = 12;
            goto LABEL_22;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_1000132B0(v33, v30, &v34, v17);
          }
        }

        v32 += v12 - v11;
        if (a4)
        {
          AnalyticsSendEventLazy();
        }
      }
    }

LABEL_30:
    v4 += 104;
    *&v8 += 104;
    --v9;
  }

  while (v9);
  if (!v7)
  {
    v28 = shared_ht_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100013360(v28);
    }

    goto LABEL_48;
  }

  v24 = MATU_TO_MS(v32);
  v25 = MATU_TO_MS(v30) - v24;
  if (v25 >= 250.0)
  {
    v29 = shared_ht_log_handle();
    v28 = v29;
    if (v32)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v36 = v25;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "HTAssertion: checkOverlap: hang partially overlaps assertions, since hangDurationWithoutOverlap=%fms does not qualify as assertion overlap", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_10001331C(v28);
    }

LABEL_48:

    return 0;
  }

  v26 = shared_ht_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v36 = v24;
    v37 = 2048;
    v38 = v32 * 100.0 / v30;
    v39 = 2048;
    v40 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "HTAssertion: checkOverlap: hang overlaps assertion for %f ms (%f %%), hangDurationWithoutOverlap=%fms -> qualifies as assertion overlap", buf, 0x20u);
  }

  if (a4)
  {
    AnalyticsSendEventLazy();
  }

  return 1;
}

id sub_1000045E0(void *a1)
{
  v6[0] = @"assertionOverlapMs";
  v2 = [NSNumber numberWithUnsignedLongLong:a1[4] - a1[5]];
  v6[1] = @"assertionOverlapName";
  v7[0] = v2;
  v3 = [NSString stringWithUTF8String:a1[6]];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_1000046C8(uint64_t a1)
{
  v6[0] = @"hangDurationOverlapMs";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v6[1] = @"hangDurationOverlapPercent";
  v7[0] = v2;
  v3 = [NSNumber numberWithDouble:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_1000047EC(id a1)
{
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_100025A90;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_10002B040;
  qword_10002B040 = v1;
}

void sub_100006544(id a1)
{
  qword_10002B048 = objc_alloc_init(HTPrefs);

  _objc_release_x1();
}

void sub_100008990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 208), 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 144), 8);
  objc_destroyWeak((v34 - 104));
  _Unwind_Resume(a1);
}

void sub_1000089F4(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: EPL State Changed";
      goto LABEL_16;
    }
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) != a2)
    {
      goto LABEL_18;
    }

    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
      goto LABEL_16;
    }
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v10 = @"ON";
      }

      else
      {
        v10 = @"OFF";
      }

      v11 = objc_loadWeakRetained((a1 + 80));
      if ([v11 hangtracerDaemonEnabled])
      {
        v12 = @"ON";
      }

      else
      {
        v12 = @"OFF";
      }

      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 80));
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 hangtracerDaemonEnabled]);
    v19 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = objc_loadWeakRetained((a1 + 80));
    [v16 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v17 userInfo:v15];
  }
}

void sub_100008D44(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "HTPrefs: Test Reset Log Limits", v5, 2u);
    }
  }
}

id stateInfoSortedArrayComparator()
{
  if (qword_10002B058 != -1)
  {
    sub_1000137E0();
  }

  v0 = objc_retainBlock(qword_10002B060);

  return v0;
}

void sub_10000989C(id a1)
{
  if (!qword_10002B060)
  {
    qword_10002B060 = &stru_100024A98;
  }
}

int64_t sub_1000098BC(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:@"timestamp"];
    v8 = [v6 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [v7 unsignedLongLongValue];
      v10 = [v8 unsignedLongLongValue];
      if (v9 < v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = v9 > v10;
      }
    }

    else
    {
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000138A0();
      }

      v11 = 0;
    }
  }

  else
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000137F4();
    }

    v11 = 0;
  }

  return v11;
}

uint64_t _isValidStateInfoSortedArray(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v1 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v2 = v1;
      v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = 0;
        v6 = *v20;
        v7 = &selRef_connectionQueue;
        v8 = &selRef_connectionQueue;
        while (2)
        {
          v9 = 0;
          v17 = v8[189];
          v18 = v7[98];
          v10 = v5;
          do
          {
            if (*v20 != v6)
            {
              objc_enumerationMutation(v2);
            }

            v11 = *(*(&v19 + 1) + 8 * v9);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v12 = shared_ht_log_handle();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                sub_10001394C();
              }

              goto LABEL_32;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_33;
            }

            v12 = v11;
            v13 = [v12 objectForKey:@"cpuRoleEnum"];

            if (!v13)
            {
              goto LABEL_32;
            }

            v5 = [v12 objectForKey:@"timestamp"];
            if (!v5)
            {
              goto LABEL_31;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_31;
            }

            v5 = v5;
            if (v10)
            {
              v14 = [v10 unsignedLongLongValue];
              if (v14 >= [v5 unsignedLongLongValue])
              {

LABEL_31:
LABEL_32:

LABEL_33:
                v15 = 0;
                goto LABEL_34;
              }
            }

            v9 = v9 + 1;
            v10 = v5;
          }

          while (v4 != v9);
          v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v7 = &selRef_connectionQueue;
          v8 = &selRef_connectionQueue;
          if (v4)
          {
            continue;
          }

          break;
        }

        v15 = 1;
        v10 = v5;
LABEL_34:
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v2 = shared_ht_log_handle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_1000139D8(v2);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t calculateDurationInCPURoleFromStateInfoDict(void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  [a1 objectForKeyedSubscript:@"cpuRoleBreakdown"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:{@"cpuRoleEnum", v14}];
        v10 = [v9 unsignedCharValue];

        if (v10 == a2)
        {
          v12 = [v8 objectForKeyedSubscript:@"timeInCPURole"];
          v11 = [v12 unsignedIntValue];

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

uint64_t calcluateDurationInCPURoleFromSortedArray(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  v5 = createStateInfoJSONBlobForHang(a1, a3, a4);
  v6 = calculateDurationInCPURoleFromStateInfoDict(v5, a2);

  return v6;
}

id createStateInfoJSONBlobForHang(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 >= a2 && _isValidStateInfoSortedArray(v5))
  {
    v88 = a3 - a2;
    v7 = [v6 mutableCopy];
    v110 = @"timestamp";
    v8 = [NSNumber numberWithUnsignedLongLong:a2];
    v111 = v8;
    v9 = &alm_app_measurement_ongoing_ptr;
    v10 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v11 = [(__CFString *)v7 count];
    stateInfoSortedArrayComparator();
    v12 = v91 = a2;
    v13 = [(__CFString *)v7 indexOfObject:v10 inSortedRange:0 options:v11 usingComparator:1024, v12];

    if (!v13)
    {
      v108[1] = @"timestamp";
      v109[0] = &off_100027AB0;
      v108[0] = @"cpuRoleEnum";
      v14 = [NSNumber numberWithUnsignedLongLong:v91];
      v109[1] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:2];

      [(__CFString *)v7 insertObject:v15 atIndex:0];
      v13 = 1;
    }

    v16 = [(__CFString *)v7 objectAtIndexedSubscript:v13 - 1];
    v17 = [v16 objectForKeyedSubscript:@"cpuRoleEnum"];
    v87 = [v17 unsignedCharValue];

    v90 = v16;
    v18 = [v16 objectForKeyedSubscript:@"timestamp"];
    v19 = [v18 unsignedLongLongValue];

    v20 = MATU_TO_SEC(v91 - v19);
    v89 = [NSNumber numberWithDouble:roundDoubleToDecimalPlace(3u, v20)];
    v106 = @"timestamp";
    v82 = a3;
    v21 = [NSNumber numberWithUnsignedLongLong:a3];
    v107 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v23 = [(__CFString *)v7 count];
    v24 = stateInfoSortedArrayComparator();
    v25 = [(__CFString *)v7 indexOfObject:v22 inSortedRange:0 options:v23 usingComparator:1024, v24];

    if (v25)
    {
      v86 = v6;
      v85 = [(__CFString *)v7 objectAtIndexedSubscript:v25 - 1];
      v26 = [v85 objectForKeyedSubscript:@"cpuRoleEnum"];
      v84 = [v26 unsignedCharValue];

      v27 = +[NSMutableDictionary dictionary];
      v28 = v27;
      v29 = &alm_app_measurement_ongoing_ptr;
      if (v13 - 1 <= (v25 - 1))
      {
        v39 = 0;
        v77 = &v25[-v13];
        v40 = &v25[-v13 + 1];
        v92 = v27;
        v81 = v13;
        do
        {
          v41 = [(__CFString *)v7 objectAtIndexedSubscript:&v39[v13 - 1]];
          if (v41 && (v42 = v9[207], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v43 = [v41 objectForKeyedSubscript:@"cpuRoleEnum"];
            if (v43 && (v44 = v29[170], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v45 = [v41 objectForKeyedSubscript:@"timestamp"];
              if (v45 && (v46 = v29[170], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if (v39)
                {
                  v47 = [(__CFString *)v7 objectAtIndexedSubscript:&v39[v13 - 2]];
                  v78 = [v47 objectForKeyedSubscript:@"cpuRoleEnum"];

                  v48 = [v78 stringValue];
                  v49 = [v92 objectForKey:v48];
                  v50 = [v49 objectForKey:@"intervalsInCPURole"];
                  v83 = [v50 lastObject];

                  v29 = &alm_app_measurement_ongoing_ptr;
                  v80 = v45;
                }

                else
                {
                  v83 = [v29[170] numberWithUnsignedInt:0];
                  v80 = [v29[170] numberWithUnsignedLong:v91];
                }

                if (v77 == v39)
                {
                  v58 = [v29[170] numberWithUnsignedLongLong:v82];
                }

                else
                {
                  v59 = [(__CFString *)v7 objectAtIndexedSubscript:&v39[v13]];
                  v58 = [v59 objectForKeyedSubscript:@"timestamp"];
                }

                v76 = v58;
                v79 = [v29[170] numberWithUnsignedInt:{MATU_TO_MS(objc_msgSend(v58, "unsignedLongLongValue") - -[NSObject unsignedLongLongValue](v80, "unsignedLongLongValue"))}];
                v60 = [v29[170] numberWithUnsignedInt:{-[NSObject unsignedIntValue](v83, "unsignedIntValue") + objc_msgSend(v79, "unsignedIntValue")}];
                v61 = [v43 stringValue];
                v62 = [v92 objectForKey:v61];

                v74 = v62;
                v75 = v60;
                if (v62)
                {
                  v63 = [v62 objectForKeyedSubscript:@"intervalsInCPURole"];
                  [v63 addObject:v83];
                  v73 = v63;
                  [v63 addObject:v60];
                  v64 = [v62 objectForKeyedSubscript:@"timeInCPURole"];
                  v65 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v79 unsignedIntValue] + objc_msgSend(v64, "unsignedIntValue"));
                  v66 = v62;
                  v67 = v64;
                  [v66 setObject:v65 forKeyedSubscript:@"timeInCPURole"];
                }

                else
                {
                  v68 = +[NSMutableArray array];
                  [v68 addObject:v83];
                  [v68 addObject:v60];
                  v98[0] = @"cpuRoleName";
                  [v43 unsignedCharValue];
                  v69 = NSStringFromRBSRole();
                  v99[0] = v69;
                  v99[1] = v43;
                  v98[1] = @"cpuRoleEnum";
                  v98[2] = @"intervalsInCPURole";
                  v73 = v68;
                  v99[2] = v68;
                  v99[3] = &off_100027AF8;
                  v98[3] = @"percentInCPURole";
                  v98[4] = @"timeInCPURole";
                  v99[4] = v79;
                  v70 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:5];
                  v67 = [NSMutableDictionary dictionaryWithDictionary:v70];

                  v65 = [v43 stringValue];
                  [v92 setValue:v67 forKey:v65];
                }

                v9 = &alm_app_measurement_ongoing_ptr;
                v29 = &alm_app_measurement_ongoing_ptr;
                v57 = v83;
              }

              else
              {
                v55 = v40;
                v56 = shared_ht_log_handle();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  v71 = objc_opt_class();
                  *buf = 138412802;
                  v101 = @"timestamp";
                  v102 = 2112;
                  v103 = v7;
                  v104 = 2112;
                  v105 = v71;
                  v72 = v71;
                  v57 = v56;
                  _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                  v29 = &alm_app_measurement_ongoing_ptr;
                }

                else
                {
                  v57 = v56;
                }

                v40 = v55;
                v13 = v81;
              }
            }

            else
            {
              v45 = shared_ht_log_handle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v53 = objc_opt_class();
                *buf = 138412802;
                v101 = @"cpuRoleEnum";
                v102 = 2112;
                v103 = v7;
                v104 = 2112;
                v105 = v53;
                v54 = v53;
                _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                v29 = &alm_app_measurement_ongoing_ptr;
              }
            }

            v28 = v92;
          }

          else
          {
            v43 = shared_ht_log_handle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v51 = objc_opt_class();
              *buf = 138412546;
              v101 = v7;
              v102 = 2112;
              v103 = v51;
              v52 = v51;
              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object from sorted array '%@', object is type of class '%@'", buf, 0x16u);

              v29 = &alm_app_measurement_ongoing_ptr;
            }
          }

          ++v39;
        }

        while (v40 != v39);
      }

      +[NSMutableArray array];
      v30 = v9;
      v93[0] = _NSConcreteStackBlock;
      v93[1] = 3221225472;
      v93[2] = sub_10000A9E4;
      v94 = v93[3] = &unk_100024AC0;
      v95 = MATU_TO_MS(v88);
      v31 = v94;
      [v28 enumerateKeysAndObjectsUsingBlock:v93];
      v96[0] = @"startCPURole";
      v32 = [v29[170] numberWithUnsignedChar:v87];
      v97[0] = v32;
      v96[1] = @"endCPURole";
      v33 = [v29[170] numberWithUnsignedChar:v84];
      v34 = v89;
      v97[1] = v33;
      v97[2] = v89;
      v96[2] = @"secondsSinceCPURoleTransitionBeforeHangStart";
      v96[3] = @"cpuRoleBreakdown";
      v97[3] = v31;
      v35 = [v30[207] dictionaryWithObjects:v97 forKeys:v96 count:4];

      v36 = v85;
      v6 = v86;
      v37 = v90;
    }

    else
    {
      v36 = shared_ht_log_handle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_100013A1C();
      }

      v35 = 0;
      v34 = v89;
      v37 = v90;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void sub_10000A9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"timeInCPURole"];
  [v4 floatValue];
  v6 = v5 / *(a1 + 40);

  v7 = [NSNumber numberWithDouble:roundDoubleToDecimalPlace(3u, v6)];
  [v8 setObject:v7 forKeyedSubscript:@"percentInCPURole"];

  [*(a1 + 32) addObject:v8];
}

id createStateInfoSortedArrayWithPtr(uint64_t a1)
{
  if (a1)
  {
    +[NSMutableArray array];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000ADD0;
    v2 = v20[3] = &unk_100024AE8;
    v21 = v2;
    v19 = objc_retainBlock(v20);
    v3 = (a1 + 8);
    v4 = 10;
    do
    {
      v5 = *(v3 - 1);
      if (v5)
      {
        v6 = [NSNumber numberWithUnsignedChar:*v3];
        v7 = v6;
        if (v6)
        {
          v22[1] = @"timestamp";
          v23[0] = v6;
          v22[0] = @"cpuRoleEnum";
          v8 = [NSNumber numberWithUnsignedLongLong:v5];
          v23[1] = v8;
          v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

          [v2 insertObject:v9 atIndex:[v2 indexOfObject:v9 inSortedRange:0 options:[v2 count] usingComparator:1024, v19]];
        }
      }

      v3 += 16;
      --v4;
    }

    while (v4);
    v10 = [v2 count];
    if (v10 >= 2)
    {
      v11 = v10 + 1;
      do
      {
        v12 = [v2 objectAtIndexedSubscript:v11 - 2];
        v13 = [v2 objectAtIndexedSubscript:v11 - 3];
        v14 = [v12 objectForKeyedSubscript:@"cpuRoleEnum"];
        v15 = [v13 objectForKeyedSubscript:@"cpuRoleEnum"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 isEqualToNumber:v15])
            {
              [v2 removeObjectAtIndex:v11 - 2];
            }
          }
        }

        --v11;
      }

      while (v11 > 2);
    }

    v16 = shared_ht_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100013AA0();
    }

    if ([v2 count])
    {
      v17 = [v2 copy];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v2 = shared_ht_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100013B14(v2);
    }

    v17 = 0;
  }

  return v17;
}

uint64_t sub_10000ADD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    v8 = [v5 objectForKeyedSubscript:@"timestamp"];
    v9 = [v7 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v8 unsignedLongLongValue];
      v11 = [v9 unsignedLongLongValue];
      if (v10 < v11)
      {
        v12 = -1;
      }

      else
      {
        v12 = v10 > v11;
      }
    }

    else
    {
      v13 = shared_ht_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = objc_opt_class();
        v18 = *(a1 + 32);
        v20 = 138412802;
        v21 = v15;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v19 = v17;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid timestamp(s) of class '%@' and '%@' found in dictionary '%@' during sorting.", &v20, 0x20u);
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000137F4();
    }

    v12 = 0;
  }

  return v12;
}

id sub_10000B014(id a1)
{

  return a1;
}

__CFString *createXPCObjectString(void *a1)
{
  if (a1)
  {
    v2 = sub_10000B084(a1, 0);
  }

  else
  {
    v2 = @"<null xpc_object_t>";
  }

  return v2;
}

__CFString *sub_10000B084(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v6 = @"<null internal xpc_object_t>";
    goto LABEL_40;
  }

  type = xpc_get_type(v3);
  v6 = +[NSMutableString string];
  v7 = [&stru_100025A90 stringByPaddingToLength:4 * a2 withString:@" " startingAtIndex:0];
  v8 = a2 + 1;
  v9 = [&stru_100025A90 stringByPaddingToLength:4 * (a2 + 1) withString:@" " startingAtIndex:0];
  v10 = v9;
  if (type == &_xpc_type_dictionary)
  {
    [(__CFString *)v6 appendString:@"{\n"];
    +[NSMutableArray array];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10000BC38;
    applier[3] = &unk_100024B30;
    v47 = v49 = a2;
    v48 = v10;
    v14 = v47;
    xpc_dictionary_apply(v4, applier);
    [v14 sortUsingSelector:"compare:"];
    v15 = [v14 componentsJoinedByString:{@", \n"}];
    [(__CFString *)v6 appendString:v15];

    [(__CFString *)v6 appendFormat:@"\n%@}", v7];
LABEL_25:

    goto LABEL_39;
  }

  if (type == &_xpc_type_array)
  {
    v45 = v7;
    [(__CFString *)v6 appendString:@"[\n"];
    v14 = +[NSMutableArray array];
    count = xpc_array_get_count(v4);
    if (count)
    {
      v17 = count;
      for (i = 0; i != v17; ++i)
      {
        v19 = xpc_array_get_value(v4, i);
        v20 = sub_10000B084(v19, v8);
        [NSString stringWithFormat:@"%@%@", v10, v20];
        v21 = v4;
        v23 = v22 = v10;
        [v14 addObject:v23];

        v10 = v22;
        v4 = v21;
      }
    }

    v24 = [v14 componentsJoinedByString:{@", \n"}];
    [(__CFString *)v6 appendString:v24];

    v7 = v45;
    [(__CFString *)v6 appendFormat:@"\n%@]", v45];
    goto LABEL_25;
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (!string_ptr)
    {
      v29 = @"<invalid string ptr>";
      goto LABEL_34;
    }

    [NSString stringWithUTF8String:string_ptr];
    v27 = v26 = v10;
    v28 = [v27 stringByReplacingOccurrencesOfString:@"" withString:@"\\""];

    v10 = v26;
    [(__CFString *)v6 appendFormat:@"%@", v28];
  }

  else
  {
    if (type == &_xpc_type_BOOL)
    {
      if (xpc_BOOL_get_value(v4))
      {
        v29 = @"true";
      }

      else
      {
        v29 = @"false";
      }

      goto LABEL_34;
    }

    if (type == &_xpc_type_int64)
    {
      [(__CFString *)v6 appendFormat:@"%lld", xpc_int64_get_value(v4)];
      goto LABEL_39;
    }

    if (type == &_xpc_type_uint64)
    {
      [(__CFString *)v6 appendFormat:@"%llu", xpc_uint64_get_value(v4)];
      goto LABEL_39;
    }

    if (type == &_xpc_type_double)
    {
      [(__CFString *)v6 appendFormat:@"%f", xpc_double_get_value(v4)];
      goto LABEL_39;
    }

    if (type != &_xpc_type_date)
    {
      if (type == &_xpc_type_data)
      {
        [(__CFString *)v6 appendFormat:@"<Data: %zu bytes>", xpc_data_get_length(v4)];
        goto LABEL_39;
      }

      if (type == &_xpc_type_uuid)
      {
        bytes = xpc_uuid_get_bytes(v4);
        if (bytes)
        {
          v35 = v10;
          v36 = [[NSUUID alloc] initWithUUIDBytes:bytes];
          v37 = [v36 UUIDString];
          [(__CFString *)v6 appendFormat:@"<UUID: %@>", v37];

          v10 = v35;
          goto LABEL_39;
        }

        v29 = @"<UUID: invalid bytes>";
        goto LABEL_34;
      }

      if (type == &_xpc_type_fd)
      {
        v38 = xpc_fd_dup(v4);
        if ((v38 & 0x80000000) == 0)
        {
          v39 = v38;
          [(__CFString *)v6 appendFormat:@"<FD: %d>", v38];
          close(v39);
          goto LABEL_39;
        }

        v29 = @"<FD: invalid>";
        goto LABEL_34;
      }

      if (type == &_xpc_type_null)
      {
        v29 = @"null";
      }

      else if (type == &_xpc_type_error)
      {
        v40 = xpc_copy_description(v4);
        if (v40)
        {
          v41 = v40;
          [(__CFString *)v6 appendFormat:@"<Error: %s>", v40];
LABEL_54:
          v43 = v41;
LABEL_58:
          free(v43);
          goto LABEL_39;
        }

        v29 = @"<Error: unknown>";
      }

      else
      {
        if (type != &_xpc_type_endpoint)
        {
          v11 = v9;
          v12 = xpc_copy_description(v4);
          v13 = v12;
          if (type == &_xpc_type_connection)
          {
            v10 = v11;
            if (v12)
            {
              [(__CFString *)v6 appendFormat:@"<Connection: %s>", v12];
              goto LABEL_57;
            }

            v29 = @"<Connection: unknown>";
          }

          else
          {
            v10 = v11;
            if (v12)
            {
              [(__CFString *)v6 appendFormat:@"<Unknown XPC Type: %s>", v12];
LABEL_57:
              v43 = v13;
              goto LABEL_58;
            }

            v29 = @"<Unknown XPC Type>";
          }

          goto LABEL_34;
        }

        v42 = xpc_copy_description(v4);
        if (v42)
        {
          v41 = v42;
          [(__CFString *)v6 appendFormat:@"<Endpoint: %s>", v42];
          goto LABEL_54;
        }

        v29 = @"<Endpoint: unknown>";
      }

LABEL_34:
      [(__CFString *)v6 appendString:v29];
      goto LABEL_39;
    }

    v30 = v9;
    value = xpc_date_get_value(v4);
    v28 = [NSDate dateWithTimeIntervalSince1970:value / 1000000000.0];
    v32 = [v28 description];
    v44 = value;
    v10 = v30;
    [(__CFString *)v6 appendFormat:@"<Date: %@ (%lld ns)>", v32, v44];
  }

LABEL_39:
LABEL_40:

  return v6;
}

id alwaysOnSignpost()
{
  if (qword_10002B070 != -1)
  {
    sub_100013B58();
  }

  v1 = qword_10002B068;

  return v1;
}

void sub_10000B774(id a1)
{
  qword_10002B068 = os_log_create("com.apple.hangtracer", "always_on_hang");

  _objc_release_x1();
}

void signpostHangInterval(void *a1, void *a2, os_signpost_id_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  *buf = 0;
  mach_get_times();
  if (os_signpost_enabled(v11))
  {
    v12 = v11;
    v13 = v12;
    if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = @"Unknown";
      *buf = 134349826;
      *&buf[4] = a3;
      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = @"Unknown";
      }

      v17 = 2050;
      v18 = a4;
      v19 = 2114;
      if (v9)
      {
        v14 = v9;
      }

      v20 = v15;
      v21 = 2114;
      v22 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, a3, "HangInterval", "%{public, signpost.description:begin_time}llu, %{public, signpost.description:end_time}llu, BundleIdOverride=%{public, signpost.description:attribute}@ type=%{public, signpost.telemetry:string2}@ enableTelemetry=YES ", buf, 0x2Au);
    }
  }
}

uint64_t isAppBeingDebugged(int a1)
{
  v16 = 0u;
  v17 = 0u;
  buffer = 0u;
  v15 = 0u;
  if (!proc_pidinfo(a1, 13, 1uLL, &buffer, 64))
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to check if app is being debugged", &v10, 2u);
    }

    goto LABEL_9;
  }

  if ((v16 & 2) != 0)
  {
    v4 = +[NSProcessInfo processInfo];
    v5 = [v4 environment];
    v6 = [v5 objectForKeyedSubscript:@"HT_DISABLE_DEBUGGER_CHECK"];
    v7 = [v6 BOOLValue];

    if (!v7)
    {
      v3 = [NSString stringWithUTF8String:&v15];
      if (([v3 isEqualToString:@"xctest"]& 1) != 0 || ([v3 isEqualToString:@"hangman"]& 1) != 0 || [v3 hasSuffix:@"-Runner"])
      {
        v8 = shared_ht_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543618;
          v11 = v3;
          v12 = 1024;
          v13 = a1;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%d] is a test process, isAppBeingDebugged returning NO", &v10, 0x12u);
        }

        v2 = 0;
      }

      else
      {
        v8 = shared_ht_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App is being debugged, do not track this hang", &v10, 2u);
        }

        v2 = 1;
      }

      goto LABEL_17;
    }

    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100013B6C();
    }

LABEL_9:
    v2 = 0;
LABEL_17:

    return v2;
  }

  return 0;
}

__CFString *getStringForSubtype(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    a1 = *off_100024B50[a1];
  }

  return a1;
}

unint64_t HTGetMachAbsoluteTimeFromNSDate(void *a1, unint64_t a2, double a3)
{
  [a1 timeIntervalSinceReferenceDate];
  v6 = v5 - a3;
  v7 = MATU_TO_SEC(a2);
  return SEC_TO_MATU(v7 + v6);
}

uint64_t sub_10000BC38(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000B084(a3, a1[6] + 1);
  v6 = [NSString stringWithUTF8String:a2];
  v7 = a1[4];
  v8 = [NSString stringWithFormat:@"%@%@: %@", a1[5], v6, v5];
  [v7 addObject:v8];

  return 1;
}

void sub_10000C30C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000C440(uint64_t a1)
{
  v2 = pidHangEventDict;
  v3 = [NSNumber numberWithInt:*(a1 + 32)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = shared_ht_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = pidHangEventDict;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "HangTracerMonitor:checkHangForPid pidHangEventDict  %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = *(v4[1] + 4);
    v7 = shared_ht_log_handle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = *(v4[1] + 4);
      *buf = 67109120;
      LODWORD(v25) = v9;
      v10 = "HangTracerMonitor:checkHangForPid number of hang Events =  %d";
      v11 = v7;
      v12 = 8;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      *buf = 0;
      v10 = "HangTracerMonitor:checkHangForPid number of hang Events is 0";
      v11 = v7;
      v12 = 2;
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
LABEL_13:

    v15 = mach_absolute_time();
    v16 = v4[1];
    if (*(v16 + 4))
    {
      v17 = v15;
      v18 = 0;
      v19 = 32;
      do
      {
        v20 = (v16 + v19);
        v21 = (v20 - 6);
        LODWORD(v20) = atomic_load(v20);
        if (v20)
        {
          v22 = shared_ht_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = *(a1 + 32);
            *buf = 67109120;
            LODWORD(v25) = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "HangTracerMonitor:checkHangForPid hang event suspend count is not 0 for pid=%u ", buf, 8u);
          }
        }

        else
        {
          HTCheckForHangForHTMonitor(v21, v4[1] + 4680, v17);
        }

        HTForegroundTrackingEnd(v21, v17, 3);
        ++v18;
        v16 = v4[1];
        v19 += 584;
      }

      while (v18 < *(v16 + 4));
    }

    goto LABEL_21;
  }

  v13 = shared_ht_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 67109120;
    LODWORD(v25) = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HangTracerMonitor:checkHangForPid(pid=%u) is not present in pidHangEventDict ", buf, 8u);
  }

LABEL_21:
}

void sub_10000C720(id a1, RBSProcessMonitorConfiguring *a2)
{
  v2 = qword_10002B080;
  v3 = a2;
  v4 = [RBSProcessPredicate predicateMatchingIdentifiers:v2];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(RBSProcessMonitorConfiguring *)v3 setPredicates:v5];
}

void sub_10000C9C8(id a1, RBSProcessMonitorConfiguring *a2)
{
  v2 = qword_10002B080;
  v3 = a2;
  v4 = [RBSProcessPredicate predicateMatchingIdentifiers:v2];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [(RBSProcessMonitorConfiguring *)v3 setPredicates:v5];

  v6 = +[RBSProcessStateDescriptor descriptor];
  [v6 setValues:64];
  [(RBSProcessMonitorConfiguring *)v3 setStateDescriptor:v6];
  [(RBSProcessMonitorConfiguring *)v3 setServiceClass:33];
  [(RBSProcessMonitorConfiguring *)v3 setUpdateHandler:&stru_100025070];
}

void sub_10000CACC(id a1, RBSProcessMonitor *a2, RBSProcessHandle *a3, RBSProcessStateUpdate *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = _htMonitorConnectionQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000CB8C;
  v10[3] = &unk_100025098;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_10000CB8C(uint64_t a1)
{
  v1 = a1;
  v2 = pidHangEventDict;
  v39 = (a1 + 32);
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) pid]);
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v6 = v4[1];
    if (*(v6 + 4))
    {
      v7 = 0;
      v8 = 379;
      *&v5 = 67110146;
      v38 = v5;
      v40 = v4;
      v42 = v1;
      do
      {
        v9 = [*(v1 + 40) previousState];
        [v9 cpuRole];

        v10 = [*(v1 + 40) state];
        v11 = [v10 cpuRole];

        v12 = [*(v1 + 32) bundle];
        v13 = [v12 identifier];

        if (v13)
        {
          v14 = [*v39 bundle];
          v15 = [v14 identifier];
        }

        else
        {
          v16 = shared_ht_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "RB Notification contained a nil bundle identifier, defaulting to event bundle id.", buf, 2u);
          }

          v17 = (v6 + v8);
          if (*(v6 + v8))
          {
            *v17 = 0;
            v31 = (v17 - 255);
            v30 = shared_ht_log_handle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              sub_100013E9C(v31, v30, v32, v33, v34, v35, v36, v37);
            }

            goto LABEL_18;
          }

          v15 = [NSString stringWithCString:v6 + v8 - 255 encoding:1];
        }

        v18 = shared_ht_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(v42 + 32) pid];
          NSStringFromRBSRole();
          v41 = v15;
          v21 = v20 = v11;
          v22 = NSStringFromRBSRole();
          v23 = [*(v42 + 40) state];
          v24 = [v23 lastStateChangeTimestamp];
          *buf = v38;
          v44 = v19;
          v45 = 2114;
          v46 = v41;
          v47 = 2114;
          v48 = v21;
          v49 = 2114;
          v50 = v22;
          v51 = 2112;
          v52 = v24;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received RB Notification for CPU Role change of process(%d) '%{public}@'. Changed from %{public}@ to %{public}@ at %@", buf, 0x30u);

          v11 = v20;
          v15 = v41;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v26 = mach_absolute_time();
        v1 = v42;
        v27 = [*(v42 + 40) state];
        v28 = [v27 lastStateChangeTimestamp];
        v29 = HTGetMachAbsoluteTimeFromNSDate(v28, v26, Current);

        addNewCPURoleToHangEvent(v6 + v8 - 371, v29, v11);
        ++v7;
        v4 = v40;
        v6 = v40[1];
        v8 += 584;
      }

      while (v7 < *(v6 + 4));
    }
  }

  else
  {
    v30 = shared_ht_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100013F08(v39, v30);
    }

LABEL_18:
  }
}

void sub_10000D04C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id HTConnectionQueue()
{
  if (qword_10002B090 != -1)
  {
    sub_100014034();
  }

  v1 = qword_10002B088;

  return v1;
}

void sub_10000D0AC(id a1)
{
  qword_10002B088 = dispatch_queue_create("com.apple.hangtracer.connectionqueue", 0);

  _objc_release_x1();
}

uint64_t GetSharedPage()
{
  if (qword_10002B0A0 != -1)
  {
    sub_100014048();
  }

  return qword_10002B098;
}

void sub_10000D124(id a1)
{
  v1 = mmap(0, 0x1680uLL, 3, 4097, -1, 0);
  qword_10002B098 = v1;
  if (v1 == -1)
  {
    qword_10002B098 = 0;
    v2 = shared_ht_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10001405C();
    }
  }

  else
  {
    *v1 = 7;
    v1[716] = 1;
    *(v1 + 1430) = 0;
    atomic_store(0, v1 + 717);
  }
}

id syncConnectionToHangTracer()
{
  v0 = HTConnectionQueue();
  dispatch_sync(v0, &stru_1000250F8);

  v1 = qword_10002B0A8;

  return v1;
}

void sub_10000D20C(id a1)
{
  if (!qword_10002B0A8)
  {
    v1 = HTConnectionQueue();
    mach_service = xpc_connection_create_mach_service("com.apple.hangtracerd", v1, 0);
    v3 = qword_10002B0A8;
    qword_10002B0A8 = mach_service;

    xpc_connection_set_event_handler(qword_10002B0A8, &stru_100025118);
    v4 = qword_10002B0A8;

    xpc_connection_resume(v4);
  }
}

void sub_10000D294(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_copy_description(v2);
  type = xpc_get_type(v2);

  if (type != &_xpc_type_error)
  {
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received unhandled event from daemon: %s", &v7, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (qword_10002B0A8)
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218242;
      v8 = qword_10002B0A8;
      v9 = 2080;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "XPC Error when we still had a connection (%p): %s", &v7, 0x16u);
    }

    v5 = qword_10002B0A8;
    qword_10002B0A8 = 0;
    goto LABEL_8;
  }

LABEL_9:
  free(v3);
}

id HTGetHomeDirectoryURL()
{
  v0 = NSHomeDirectoryForUser(@"mobile");
  if (v0)
  {
    v1 = [NSURL fileURLWithPath:v0 isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id HTCAQueue()
{
  if (qword_10002B0B8 != -1)
  {
    sub_1000140D8();
  }

  v1 = qword_10002B0B0;

  return v1;
}

void sub_10000D4A0(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("com.apple.hangtracer.coreanalytics", v1);
  v3 = qword_10002B0B0;
  qword_10002B0B0 = v2;
}

uint64_t addNewCPURoleToHangEvent(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {
    v3 = result + 16 * (atomic_fetch_add((result + 576), 1uLL) % 0xA);
    *(v3 + 416) = a2;
    *(v3 + 424) = a3;
  }

  return result;
}

id sub_10000D55C()
{
  if (qword_10002B0C8 != -1)
  {
    sub_1000140EC();
  }

  v1 = qword_10002B0C0;

  return v1;
}

void *hangEventCaptureUserActionCreateData(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 376);
  if (!v1)
  {
    return 0;
  }

  v2 = v1();
  v3 = shared_ht_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [v2 length];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User action data captured with size: %lu", &v5, 0xCu);
  }

  return v2;
}

void sub_10000D800()
{
  v0 = HTConnectionQueue();
  dispatch_async(v0, &stru_100025220);
}

void sub_10000D848(uint64_t a1)
{
  if (qword_10002B0A8)
  {
    *keys = *off_100025158;
    v6 = "startTime";
    values[0] = xpc_int64_create(6);
    values[1] = xpc_uint64_create(*(*(a1 + 32) + 8));
    values[2] = xpc_uint64_create(*(*(a1 + 32) + 16));
    v2 = xpc_dictionary_create(keys, values, 3uLL);
    xpc_connection_send_message(qword_10002B0A8, v2);

    for (i = 2; i != -1; --i)
    {
    }
  }
}

void sub_10000D940(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10000D9FC(uint64_t a1)
{
  if (qword_10002B0A8)
  {
    *keys = *off_100025198;
    v6 = *off_1000251A8;
    v4[0] = xpc_int64_create(7);
    v4[1] = xpc_uint64_create(*(*(a1 + 32) + 8));
    v4[2] = xpc_uint64_create(*(*(a1 + 32) + 16));
    v4[3] = xpc_uint64_create(*(a1 + 40));
    v2 = xpc_dictionary_create(keys, v4, 4uLL);
    xpc_connection_send_message(qword_10002B0A8, v2);

    for (i = 3; i != -1; --i)
    {
    }
  }
}

void sub_10000DB00(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10000DBBC(uint64_t a1)
{
  if (qword_10002B0A8)
  {
    *keys = *off_100025198;
    v6 = *off_1000251A8;
    v4[0] = xpc_int64_create(8);
    v4[1] = xpc_uint64_create(*(*(a1 + 32) + 8));
    v4[2] = xpc_uint64_create(*(*(a1 + 32) + 16));
    v4[3] = xpc_uint64_create(*(a1 + 40));
    v2 = xpc_dictionary_create(keys, v4, 4uLL);
    xpc_connection_send_message(qword_10002B0A8, v2);

    for (i = 3; i != -1; --i)
    {
    }
  }
}

void sub_10000DCC0(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

const __CFString *HTCollectHangLogsErrorCodeToLocalizedDescription(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"An unknown error occurred";
  }

  else
  {
    return *(&off_100025360 + a1 - 1);
  }
}

void *HTCollectHangLogsGenerateClientResponseHandler(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000DDBC;
    v5[3] = &unk_1000251C0;
    v6 = v1;
    v3 = objc_retainBlock(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10000DDBC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    if (xpc_dictionary_get_BOOL(v5, "success"))
    {
      string = xpc_dictionary_get_string(v6, "fileName");
      if (string)
      {
        v8 = [NSString stringWithCString:string encoding:4];
        v9 = 0;
LABEL_9:
        (*(*(a1 + 32) + 16))();

        goto LABEL_10;
      }

      v14 = NSLocalizedDescriptionKey;
      v15 = @"received an unexpected XPC response from hangtracerd";
      v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [NSError errorWithDomain:@"kHTCollectHangLogsError" code:8 userInfo:v13];
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(v6, "errorCode");
      v16 = NSLocalizedDescriptionKey;
      v11 = HTCollectHangLogsErrorCodeToLocalizedDescription(uint64);
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v9 = [NSError errorWithDomain:@"kHTCollectHangLogsError" code:uint64 userInfo:v12];
    }

    v8 = 0;
    goto LABEL_9;
  }

  (*(*(a1 + 32) + 16))();
LABEL_10:
}

void HTCollectHangLogsBundleWithStartEndTime(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v9)
  {
    if (v11 && v12 && [v11 compare:v12] == 1)
    {
      v14 = shared_ht_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100014190();
      }

      v15 = [NSString stringWithFormat:@"Invalid NSDate parameter ordering — '%@' < '%@'", v13, v11];
      v31 = NSLocalizedDescriptionKey;
      v32 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = [NSError errorWithDomain:@"kHTCollectHangLogsError" code:6 userInfo:v16];

      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v15 = +[HTHangClient getClient];
    if (v15)
    {
      v27[0] = @"command";
      v27[1] = @"archiveSaveDirectory";
      v28[0] = &off_100027AC8;
      v28[1] = v9;
      v27[2] = @"archiveCompressionBypass";
      v18 = [NSNumber numberWithBool:a3];
      v19 = v18;
      if (v11)
      {
        v20 = v11;
      }

      else
      {
        v20 = &off_100027AE0;
      }

      v28[2] = v18;
      v28[3] = v20;
      v27[3] = @"startTime";
      v27[4] = @"endTime";
      if (v13)
      {
        v21 = v13;
      }

      else
      {
        v21 = &off_100027AE0;
      }

      v28[4] = v21;
      v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];

      v26 = 0;
      v22 = [[HTHangRequest alloc] initRequestWithPath:v9 dictionary:v17 error:&v26];
      if (v26)
      {
        v10[2](v10, 0);
      }

      else
      {
        v25 = HTCollectHangLogsGenerateClientResponseHandler(v10);
        [v15 sendMessageToHangTracerWithReply:v22 responseHandler:v25];
      }

      goto LABEL_25;
    }

    if (v10)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Failed to establish xpc connection with hangtracerd";
      v24 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v17 = [NSError errorWithDomain:@"kHTCollectHangLogsError" code:1 userInfo:v24];

LABEL_22:
      (v10[2])(v10, 0, v17);
LABEL_25:
    }
  }

  else
  {
    v33 = NSLocalizedDescriptionKey;
    v34 = @"Passed nil archive save path";
    v23 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v15 = [NSError errorWithDomain:@"kHTCollectHangLogsError" code:5 userInfo:v23];

    if (v10)
    {
      (v10[2])(v10, 0, v15);
    }
  }
}

void HTCheckForHangForHTMonitor(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = shared_ht_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HTCheckForHangForHTMonitor: check hang for  pid=%u ", v8, 8u);
  }

  sub_10000E440(a1, 1, a2, a3);
}

void sub_10000E440(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v63 = COERCE_DOUBLE("checkForHangWithUserMovedAwayAndRecentAssertions");
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: nil event passed", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (*(a1 + 372))
  {
    return;
  }

  v6 = *a1;
  if (*a1 != -1 && v6 > a4)
  {
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10001447C();
    }

    goto LABEL_14;
  }

  v10 = MATU_TO_MS((a4 - v6));
  atomic_fetch_add((a1 + 384), v10);
  if (v10 > 100.0)
  {
    if (a2)
    {
      v11 = *(a1 + 40);
    }

    kdebug_trace();
  }

  if (*(a1 + 29))
  {
    v13 = v10 > *(a1 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = v10 >= 250.0 || v13;
  if (v14 != 1)
  {
    if (a2)
    {
      v16 = shared_ht_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 48);
        *buf = 67109120;
        LODWORD(v63) = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "checkForHang:Hang is not detected for pid @%u during user switched away from App", buf, 8u);
      }

      goto LABEL_32;
    }

    goto LABEL_95;
  }

  v15 = 1;
  if (a2)
  {
    *(a1 + 372) = 1;
    v15 = 10;
  }

  if (*(a1 + 371))
  {
    *(a1 + 371) = 0;
    v16 = shared_ht_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_10001420C();
    }

LABEL_32:

    return;
  }

  if (*(a1 + 115))
  {
    *(a1 + 115) = 0;
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10001427C();
    }

LABEL_14:

    return;
  }

  v18 = [NSString stringWithCString:a1 + 116 encoding:1];
  v51 = createStateInfoSortedArrayWithPtr(a1 + 416);
  if (isAppBeingDebugged(*(a1 + 48)))
  {
    v19 = shared_ht_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v63 = v10 / 1000.0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Hang detected: %.2fs (debugger attached, not reporting)", buf, 0xCu);
    }

    sub_10000F058(6, v18, v51, v6, a4, v10);
    v20 = alwaysOnSignpost();
    signpostHangInterval(@"Debugger Attached Runloop Hang", v18, v6, a4, v20);

    if (!*(a1 + 29))
    {
      goto LABEL_89;
    }

    v55 = _NSConcreteStackBlock;
    v56 = 3221225472;
    v57 = sub_10000F150;
    v58 = &unk_100025268;
    v60 = 6;
    v59 = v18;
    v61 = v10;
    AnalyticsSendEventLazy();
    v21 = v59;
LABEL_88:

LABEL_89:
    return;
  }

  if ((a2 & 1) == 0 && alm_app_measurement_ongoing())
  {
    v22 = shared_ht_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000142EC();
    }

    v15 = 7;
  }

  v50 = v18;
  if (a3 && checkForAssertionOverlap(v6, a4, a3, 1))
  {
    v23 = shared_ht_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100014370();
    }

    v15 = 9;
    sub_10000F058(9, v18, v51, v6, a4, v10);
  }

  else
  {
    v24 = shared_ht_log_handle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v63 = v10 / 1000.0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Hang detected: %.2fs (always-on hang reporting)", buf, 0xCu);
    }

    sub_10000F058(v15, v18, v51, v6, a4, v10);
    v25 = getStringForSubtype(v15);
    v26 = alwaysOnSignpost();
    v27 = v18;
    v28 = v26;
    signpostHangInterval(v25, v27, v6, a4, v26);

    if (v10 < 250.0)
    {
      v29 = shared_ht_log_handle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_1000143F4();
      }
    }

    v18 = v50;
  }

  if (*(a1 + 29))
  {
    v30 = v10 < 250.0 || v13;
    if (v30 || !*(a1 + 30))
    {
      v49 = 0;
    }

    else
    {
      v31 = arc4random_uniform(0xFFFFFFFF) * 100.0 / 4294967300.0;
      v32 = *(a1 + 16);
      v49 = v31 < v32;
      v33 = shared_ht_log_handle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = @"(diceRoll over threshold)";
        if (v31 < v32)
        {
          v34 = @"(diceRoll under threshold)";
        }

        v47 = *(a1 + 16);
        v35 = [NSNumber numberWithBool:v31 < v32, v34];
        *buf = 134218754;
        v63 = v31;
        v64 = 2048;
        v65 = v47;
        v66 = 2112;
        v67 = v35;
        v68 = 2112;
        v69 = v46;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Micro Hang Sampling: random sampling diceRoll=%.2f samplingPercent=%.2f%% -> shouldCapture=%@ %@", buf, 0x2Au);

        v18 = v50;
      }
    }

    if (v10 >= 250.0)
    {
      v36 = shared_ht_log_handle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = @"(not over capture threshold)";
        if (v13)
        {
          v37 = @"(over capture threshold)";
        }

        *buf = 134218498;
        v63 = v10 / 1000.0;
        v64 = 2112;
        v65 = v37;
        if (!v13 && v49)
        {
          v38 = @", (capture microhang)";
        }

        else
        {
          v38 = &stru_100025A90;
        }

        v66 = 2112;
        v67 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Hang detected: %.2fs %@ %@", buf, 0x20u);
      }

      if ((a2 & 1) == 0)
      {
        Data = hangEventCaptureUserActionCreateData(a1);
        v40 = Data;
        if (!Data || CFDataGetLength(Data) <= 0x20000)
        {
          goto LABEL_85;
        }

        v41 = shared_ht_log_handle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = COERCE_DOUBLE(CFDataGetLength(v40));
          *buf = 134217984;
          v63 = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "User action data size %ld exceeding limit", buf, 0xCu);
        }

        CFRelease(v40);
      }

      v40 = 0;
LABEL_85:
      if (*(a1 + 115))
      {
        *(a1 + 115) = 0;
        v21 = shared_ht_log_handle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_10001427C();
        }

        goto LABEL_88;
      }

      v43 = *(a1 + 40);
      v48 = *(a1 + 28);
      if (a2)
      {
        v44 = 13;
      }

      else
      {
        v44 = 3;
      }

      v45 = HTConnectionQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F264;
      block[3] = &unk_1000252D0;
      block[4] = v44;
      block[5] = a1 + 52;
      block[6] = v43;
      block[7] = v6;
      v53 = v48;
      block[8] = a4;
      block[9] = v15;
      v54 = v49;
      block[10] = a1;
      block[11] = v40;
      dispatch_async(v45, block);

      v18 = v50;
    }
  }

  if ((a2 & 1) == 0)
  {
LABEL_95:
    checkForRollingFGTelemetryEmission(a1, v14, a4);
  }
}

void sub_10000ED48(id a1)
{
  qword_10002B0C0 = dispatch_queue_create("com.apple.hangtracer.prefsqueue", 0);

  _objc_release_x1();
}

void sub_10000ED88(id a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EE20;
  block[3] = &unk_100024828;
  v3 = dispatch_queue_create("com.apple.hangtracer.fencePrefs", 0);
  v1 = v3;
  dispatch_async(v1, block);
}

void sub_10000EE20(uint64_t a1)
{
  v2 = +[HTPrefs sharedPrefs];
  [v2 setupPrefsWithQueue:*(a1 + 32)];
}

void sub_10000EE78(id a1)
{
  if (!qword_10002B0A8)
  {
    v1 = HTConnectionQueue();
    mach_service = xpc_connection_create_mach_service("com.apple.hangtracerd", v1, 0);
    v3 = qword_10002B0A8;
    qword_10002B0A8 = mach_service;

    xpc_connection_set_event_handler(qword_10002B0A8, &stru_100025240);
    v4 = qword_10002B0A8;

    xpc_connection_resume(v4);
  }
}

void sub_10000EF00(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_copy_description(v2);
  type = xpc_get_type(v2);

  if (type != &_xpc_type_error)
  {
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received unhandled event from daemon: %s", &v7, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (qword_10002B0A8)
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218242;
      v8 = qword_10002B0A8;
      v9 = 2080;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "XPC Error when we still had a connection (%p): %s", &v7, 0x16u);
    }

    v5 = qword_10002B0A8;
    qword_10002B0A8 = 0;
    goto LABEL_8;
  }

LABEL_9:
  free(v3);
}

void sub_10000F058(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = HTCAQueue();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000F4C4;
  v16[3] = &unk_100025320;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a1;
  v17 = v12;
  v18 = v11;
  v14 = v11;
  v15 = v12;
  dispatch_async(v13, v16);
}

id sub_10000F150(uint64_t a1)
{
  v8[0] = kHTCoreAnalyticsDaemonEnabled;
  v7[0] = kHTCoreAnalyticsMode;
  v7[1] = kHTCoreAnalyticsHangType;
  v2 = getStringForSubtype(*(a1 + 40));
  v3 = *(a1 + 32);
  v8[1] = v2;
  v8[2] = v3;
  v7[2] = kHTCoreAnalyticsHangBundleID;
  v7[3] = kHTCoreAnalyticsHangDuration;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_10000F264(uint64_t a1)
{
  if (qword_10002B0A8)
  {
    v15 = *off_1000252A8;
    v16 = *off_1000252B8;
    v17 = "saveMicroHang";
    *keys = *off_100025288;
    v14 = *off_100025298;
    values[0] = xpc_int64_create(*(a1 + 32));
    values[1] = xpc_string_create(*(a1 + 40));
    values[2] = xpc_int64_create(*(a1 + 48));
    values[3] = xpc_int64_create(*(a1 + 56));
    values[4] = xpc_int64_create(*(a1 + 64));
    values[5] = xpc_BOOL_create(*(a1 + 96) != 0);
    values[6] = xpc_int64_create(*(a1 + 72));
    values[7] = xpc_int64_create(*(*(a1 + 80) + 48));
    values[8] = xpc_BOOL_create(*(a1 + 97));
    v2 = xpc_dictionary_create(keys, values, 9uLL);
    v3 = *(a1 + 88);
    if (v3)
    {
      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(*(a1 + 88));
      v6 = xpc_data_create(BytePtr, Length);
      xpc_dictionary_set_value(v2, "userActionData", v6);
    }

    v7 = *(a1 + 80);
    if (*(v7 + 416))
    {
      v8 = xpc_data_create((v7 + 416), 0xA0uLL);
      xpc_dictionary_set_value(v2, "stateInfo", v8);
    }

    else
    {
      v8 = shared_ht_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No valid data in recentStateInfo for hang, not sending CPURole data.", v11, 2u);
      }
    }

    xpc_connection_send_message(qword_10002B0A8, v2);
    for (i = 8; i != -1; --i)
    {
    }
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_10000F4A0(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10000F4C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id sub_10000F588(uint64_t a1)
{
  v2 = sub_10000D55C();
  HTTelemetryCheckForUpdates(v2);

  if (qword_10002B0E0 != -1)
  {
    sub_1000144FC();
  }

  if (!qword_10002B0D8)
  {
    goto LABEL_8;
  }

  memset(&v32, 0, 512);
  if (statfs([qword_10002B0D8 fileSystemRepresentation], &v32))
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100014510();
    }

LABEL_8:
    v4 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v4 = v32.f_blocks * v32.f_bsize;
  v5 = v32.f_bavail * v32.f_bsize;
LABEL_10:
  v6 = +[HTPrefs sharedPrefs];
  v7 = [v6 numOSCryptexFileExtents];

  v8 = +[HTPrefs sharedPrefs];
  v31 = [v8 haveRootsInstalled];

  v9 = +[HTPrefs sharedPrefs];
  v10 = [v9 haveNonDefaultFeatureFlags];

  v11 = +[HTPrefs sharedPrefs];
  v12 = [v11 haveSerialLoggingEnabled];

  v13 = calcluateDurationInCPURoleFromSortedArray(*(a1 + 32), 8, *(a1 + 48), *(a1 + 56));
  v14 = calcluateDurationInCPURoleFromSortedArray(*(a1 + 32), 6, *(a1 + 48), *(a1 + 56));
  v29 = *(a1 + 64) - (v14 + v13);
  v15 = objc_alloc_init(NSMutableDictionary);
  [v15 setObject:kHTCoreAnalyticsAlwaysOn forKeyedSubscript:kHTCoreAnalyticsMode];
  v16 = getStringForSubtype(*(a1 + 72));
  [v15 setObject:v16 forKeyedSubscript:kHTCoreAnalyticsHangType];

  [v15 setObject:*(a1 + 40) forKeyedSubscript:kHTCoreAnalyticsHangBundleID];
  v17 = [NSNumber numberWithDouble:*(a1 + 64)];
  [v15 setObject:v17 forKeyedSubscript:kHTCoreAnalyticsHangDuration];

  if (v4)
  {
    v18 = [NSNumber numberWithDouble:v5 * 100.0 / v4];
    [v15 setObject:v18 forKeyedSubscript:kHTCoreAnalyticsDiskAvailablePercent];

    v19 = [NSNumber numberWithUnsignedLongLong:v5];
    [v15 setObject:v19 forKeyedSubscript:kHTCoreAnalyticsDiskAvailableBytes];
  }

  if (v7 >= 1)
  {
    v20 = [NSNumber numberWithInt:v7];
    [v15 setObject:v20 forKeyedSubscript:kHTCoreAnalyticsNumOSCryptexFileExtents];
  }

  v21 = [NSNumber numberWithBool:v10, v29];
  [v15 setObject:v21 forKeyedSubscript:kHTCoreAnalyticsHaveNonDefaultFeatureFlags];

  v22 = [NSNumber numberWithBool:v12];
  [v15 setObject:v22 forKeyedSubscript:kHTCoreAnalyticsHaveSerialLoggingEnabled];

  v23 = [NSNumber numberWithBool:v31];
  [v15 setObject:v23 forKeyedSubscript:kHTCoreAnalyticsHaveRootsInstalled];

  v24 = [NSNumber numberWithUnsignedLongLong:v13];
  [v15 setObject:v24 forKeyedSubscript:kHTCoreAnalyticsHangUIFocal];

  v25 = [NSNumber numberWithUnsignedLongLong:v14];
  [v15 setObject:v25 forKeyedSubscript:kHTCoreAnalyticsHangUINonFocal];

  v26 = [NSNumber numberWithUnsignedLongLong:v30];
  [v15 setObject:v26 forKeyedSubscript:kHTCoreAnalyticsHangOtherCPURole];

  v27 = shared_ht_log_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v32.f_bsize = 138412290;
    *&v32.f_iosize = v15;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Logging always-on telemetry: %@", &v32, 0xCu);
  }

  return v15;
}

void sub_10000FA58(id a1)
{
  v1 = HTGetHomeDirectoryURL();
  v2 = qword_10002B0D8;
  qword_10002B0D8 = v1;

  if (!qword_10002B0D8)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001458C();
    }
  }
}

void sub_10000FAC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10000FB14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id shared_ht_log_handle()
{
  if (qword_10002B0F0 != -1)
  {
    sub_1000145C8();
  }

  v1 = qword_10002B0E8;

  return v1;
}

void sub_10000FB78(id a1)
{
  qword_10002B0E8 = os_log_create("com.apple.hangtracer", "");

  _objc_release_x1();
}

id processNameForBundleId(void *a1)
{
  v1 = a1;
  v7 = 0;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v7];
  v3 = v2;
  if (!v2 || ([v2 localizedName], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [v1 componentsSeparatedByString:@"."];
    v4 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1}];
  }

  return v4;
}

__CFString *formattedFloat(float a1)
{
  if (fabsf(a1) == INFINITY || a1 == 0.0)
  {
    v2 = @"-";
  }

  else
  {
    if (a1 >= 100.0)
    {
      [NSString stringWithFormat:@"%d", a1];
    }

    else if (a1 >= 10.0)
    {
      [NSString stringWithFormat:@"%.01f", a1];
    }

    else if (a1 >= 1.0)
    {
      [NSString stringWithFormat:@"%.02f", a1];
    }

    else
    {
      [NSString stringWithFormat:@"%.03f", a1];
    }
    v2 = ;
  }

  return v2;
}

void getHangHistoryRecords(void *a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v56 = 0.0;
  v15 = getHangIntervalsInTimeRange(v13, v14, &v56);
  if (v12)
  {
    *&v16 = v56 * 1000.0;
    [v12 setQueryTime:v16];
    [v12 setStartDate:v13];
    [v12 setEndDate:v14];
    [v12 setIntervalCount:{objc_msgSend(v15, "count")}];
  }

  v42 = v14;
  v43 = v13;
  v44 = v12;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v15;
  v50 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v50)
  {
    v49 = *v53;
    v45 = v11;
    v46 = v10;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [v18 beginEvent];
        v21 = [v20 attributes];
        v22 = [v21 objectForKeyedSubscript:@"BundleIdOverride"];

        v23 = processNameForBundleId(v22);
        if (v11)
        {
          v24 = objc_alloc_init(HangIntervalRecord);
          [(HangIntervalRecord *)v24 setProcessName:v23];
          v25 = [v18 beginEvent];
          -[HangIntervalRecord setProcessId:](v24, "setProcessId:", [v25 processID]);

          v26 = [v18 beginWallTimeStringWithTimeZoneName:0];
          [(HangIntervalRecord *)v24 setBeginTimestampString:v26];

          [v18 durationSeconds];
          *&v28 = v27 * 1000.0;
          [(HangIntervalRecord *)v24 setIntervalDurationMilliseconds:v28];
          if (a4)
          {
            v29 = [v18 beginEvent];
            v30 = [v29 beginDate];
            v31 = [NSDate dateWithTimeInterval:v30 sinceDate:-5.0];

            v32 = [v18 endEvent];
            v33 = [v32 endDate];
            v34 = [NSDate dateWithTimeInterval:v33 sinceDate:5.0];

            v11 = v45;
            v51 = 0;
            v35 = getHangIntervalsInTimeRange(v31, v34, &v51);
            LODWORD(v36) = v51;
            [(HangIntervalRecord *)v24 setWindowLookupTime:v36];

            v10 = v46;
          }

          [v11 addObject:v24];
        }

        v37 = [v10 objectForKeyedSubscript:v22];
        if (!v37)
        {
          v37 = objc_alloc_init(HangHistoryRecord);
          [(HangHistoryRecord *)v37 setProcessName:v23];
          [v10 setObject:v37 forKeyedSubscript:v22];
        }

        [(HangHistoryRecord *)v37 setHangCount:[(HangHistoryRecord *)v37 hangCount]+ 1];
        [v18 durationSeconds];
        v39 = v38 * 1000.0;
        [(HangHistoryRecord *)v37 hangDuration];
        *&v41 = v40 + v39;
        [(HangHistoryRecord *)v37 setHangDuration:v41];

        objc_autoreleasePoolPop(v19);
      }

      v50 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v50);
  }
}

id getHangIntervalsDescription(void *a1, int a2)
{
  v4 = a1;
  v5 = [NSMutableString stringWithString:&stru_100025A90];
  v6 = @"hangWallTime hangDurationMS process[pid] ";
  [v5 appendString:@"hangWallTime hangDurationMS process[pid] "];
  v7 = a2;
  if (a2)
  {
    v8 = @"windowLookupTimeMS\n";
  }

  else
  {
    v8 = @"\n";
  }

  [v5 appendString:v8];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v23)
  {
    v22 = *v25;
    do
    {
      v9 = 0;
      v10 = v6;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v9);
        v12 = [v11 beginTimestampString];
        [v11 intervalDurationMilliseconds];
        v14 = formattedFloat(v13);
        v15 = [v11 processName];
        v16 = [v11 processId];
        v17 = &stru_100025A90;
        if (v7)
        {
          [v11 windowLookupTime];
          v21 = formattedFloat(v18);
          v2 = [NSString stringWithFormat:@"%@", v21];
          v17 = v2;
        }

        v6 = [NSString stringWithFormat:@"%@ %@ %@[%d] %@\n", v12, v14, v15, v16, v17];

        if (v7)
        {
        }

        [v5 appendString:v6];
        v9 = v9 + 1;
        v10 = v6;
      }

      while (v23 != v9);
      v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v23);
  }

  return v5;
}

id generateStringFormatForFGAppDurations(void *a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithFormat:@"\n%-20s %5s %15s %10s %10s %10s", "Process", "Count", "Duration(ms)", "Mean(ms)", "Usage(hr)", "Rate(s/hr)"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = getColPrefixForHTUsageDataSource([*(*(&v17 + 1) + 8 * i) unsignedIntValue]);
        if (v6)
        {
          v7 = [@"Usage(hr)" length];
          v8 = &v7[[v6 length]];
          v9 = [@"Rate(s/hr)" length];
          v10 = &v9[[v6 length]];
          v11 = [NSString stringWithFormat:@"%@ %@", v6, @"Usage(hr)"];
          v12 = [NSString stringWithFormat:@"%@ %@", v6, @"Rate(s/hr)"];
          v13 = [NSString stringWithFormat:@" %*@ %*@", v8, v11, v10, v12];
          [v2 appendString:v13];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  [v2 appendString:@"\n"];

  return v2;
}

id getHangHistoryDescriptionWithForegroundSources(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [NSMutableString stringWithString:&stru_100025A90];
  v89 = v5;
  v8 = [v5 keysSortedByValueUsingSelector:"compare:"];
  v9 = [v8 reverseObjectEnumerator];
  v10 = [v9 allObjects];

  v11 = &alm_app_measurement_ongoing_ptr;
  v87 = a2;
  if (a2)
  {
    generateStringFormatForFGAppDurations(v6);
  }

  else
  {
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n%-20s %5s %15s %10s\n", [@"Process" UTF8String], objc_msgSend(@"Count", "UTF8String"), objc_msgSend(@"Duration(ms)", "UTF8String"), objc_msgSend(@"Mean(ms)", "UTF8String"));
  }
  v12 = ;
  v88 = v6;
  [v7 appendString:v12];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v10;
  v90 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
  v86 = v7;
  if (v90)
  {
    LODWORD(v94) = 0;
    v85 = *v109;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v16 = 0;
      do
      {
        if (*v109 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v93 = v16;
        v17 = *(*(&v108 + 1) + 8 * v16);
        v18 = [v89 objectForKeyedSubscript:v17];
        v91 = [v18 hangCount];
        [v18 hangDuration];
        v20 = v19;
        v21 = processNameForBundleId(v17);
        [v18 hangDuration];
        v23 = v22 / [v18 hangCount];
        v24 = v11[172];
        v92 = v21;
        v25 = [v21 UTF8String];
        v26 = [v18 hangCount];
        [v18 hangDuration];
        v28 = formattedFloat(v27);
        v29 = [v28 UTF8String];
        v30 = formattedFloat(v23);
        v31 = [v24 stringWithFormat:@"%-20s %5d %15s %10s", v25, v26, v29, objc_msgSend(v30, "UTF8String")];

        if (v87)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v95 = v88;
          v98 = [v95 countByEnumeratingWithState:&v104 objects:v113 count:16];
          if (v98)
          {
            v96 = *v105;
            do
            {
              for (i = 0; i != v98; i = i + 1)
              {
                if (*v105 != v96)
                {
                  objc_enumerationMutation(v95);
                }

                v33 = [*(*(&v104 + 1) + 8 * i) unsignedIntValue];
                v34 = getColPrefixForHTUsageDataSource(v33);
                v35 = [@"Usage(hr)" length];
                if (v34)
                {
                  v35 = &v35[[v34 length]];
                  v36 = [@"Rate(s/hr)" length];
                  v37 = &v36[[v34 length]];
                }

                else
                {
                  v37 = [@"Rate(s/hr)" length];
                }

                if (v33 == 1)
                {
                  [v18 hangDuration];
                  v50 = v49;
                  [v18 SignpostForegroundDurationHours];
                  v52 = v11[172];
                  v53 = v50 / (v51 * 1000.0);
                  [v18 SignpostForegroundDurationHours];
                  v55 = formattedFloat(v54);
                  v56 = [v55 UTF8String];
                  v57 = formattedFloat(v53);
                  v83 = v56;
                  v11 = &alm_app_measurement_ongoing_ptr;
                  v58 = [v52 stringWithFormat:@"%@ %*s %*s", v31, v35, v83, v37, objc_msgSend(v57, "UTF8String")];

                  [v18 SignpostForegroundDurationHours];
                  v13 = v13 + v59;
                  v31 = v58;
                }

                else if (!v33)
                {
                  [v18 hangDuration];
                  v39 = v38;
                  [v18 BiomeForegroundDurationHours];
                  v41 = v11[172];
                  v42 = v39 / (v40 * 1000.0);
                  [v18 BiomeForegroundDurationHours];
                  v44 = formattedFloat(v43);
                  v45 = [v44 UTF8String];
                  v46 = formattedFloat(v42);
                  v47 = [v41 stringWithFormat:@"%@ %*s %*s", v31, v35, v45, v37, objc_msgSend(v46, "UTF8String")];

                  v11 = &alm_app_measurement_ongoing_ptr;
                  [v18 BiomeForegroundDurationHours];
                  v14 = v14 + v48;
                  v31 = v47;
                }
              }

              v98 = [v95 countByEnumeratingWithState:&v104 objects:v113 count:16];
            }

            while (v98);
          }

          v12 = [v11[172] stringWithFormat:@"%@\n", v31];
        }

        else
        {
          v12 = v31;
        }

        v94 = v91 + v94;
        v15 = v15 + v20;
        v7 = v86;
        [v86 appendString:v12];

        v16 = v93 + 1;
      }

      while ((v93 + 1) != v90);
      v90 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
    }

    while (v90);
  }

  else
  {
    v94 = 0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
  }

  v60 = v11[172];
  v61 = [@"Total" UTF8String];
  v62 = formattedFloat(v15);
  v63 = [v62 UTF8String];
  v64 = formattedFloat(v15 / v94);
  v65 = [v60 stringWithFormat:@"%-20s %5d %15s %10s", v61, v94, v63, objc_msgSend(v64, "UTF8String")];

  if (v87)
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v66 = v88;
    v97 = v88;
    v67 = [v97 countByEnumeratingWithState:&v100 objects:v112 count:16];
    if (!v67)
    {
      goto LABEL_45;
    }

    v68 = v67;
    v99 = *v101;
    while (1)
    {
      for (j = 0; j != v68; j = j + 1)
      {
        if (*v101 != v99)
        {
          objc_enumerationMutation(v97);
        }

        v70 = [*(*(&v100 + 1) + 8 * j) unsignedIntValue];
        v71 = getColPrefixForHTUsageDataSource(v70);
        v72 = [@"Usage(hr)" length];
        if (v71)
        {
          v72 = &v72[[v71 length]];
          v73 = [@"Rate(s/hr)" length];
          v74 = &v73[[v71 length]];
        }

        else
        {
          v74 = [@"Rate(s/hr)" length];
        }

        v75 = v14;
        if (v70)
        {
          if (v70 != 1)
          {
            goto LABEL_43;
          }

          v75 = v13;
        }

        v76 = v15 / (v75 * 1000.0);
        v77 = formattedFloat(v75);
        v78 = [v77 UTF8String];
        v79 = formattedFloat(v76);
        v80 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %*s %*s", v65, v72, v78, v74, [v79 UTF8String]);

        v65 = v80;
LABEL_43:

        v66 = v88;
        v11 = &alm_app_measurement_ongoing_ptr;
      }

      v68 = [v97 countByEnumeratingWithState:&v100 objects:v112 count:16];
      if (!v68)
      {
LABEL_45:

        v81 = [v11[172] stringWithFormat:@"%@\n", v65];

        v65 = v81;
        v7 = v86;
        goto LABEL_47;
      }
    }
  }

  v66 = v88;
LABEL_47:
  [v7 appendString:v65];

  return v7;
}

id getHangQueryInfoDescription(void *a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithString:&stru_100025A90];
  v3 = [v1 startDate];
  v4 = [NSDateFormatter localizedStringFromDate:v3 dateStyle:1 timeStyle:2];
  v5 = [NSString stringWithFormat:@"Progress: Reading back hang interval signposts starting from %@\n", v4];

  [v2 appendString:v5];
  v6 = [v1 intervalCount];
  v7 = [v1 startDate];
  v8 = [v1 endDate];
  [v1 queryTime];
  v10 = v9;

  v11 = [NSString stringWithFormat:@"%.02fms", v10];
  v12 = [NSString stringWithFormat:@"Found %zu hang intervals between %@ and %@ which took %@\n", v6, v7, v8, v11];

  [v2 appendString:v12];

  return v2;
}

BOOL isOverMinEmissionThreshold(double a1)
{
  v2 = +[HTPrefs sharedPrefs];
  [v2 minFGEmissionThresholdSec];
  if (v3 == 0.0)
  {
    v6 = 60.0;
  }

  else
  {
    v4 = +[HTPrefs sharedPrefs];
    [v4 minFGEmissionThresholdSec];
    v6 = v5;
  }

  return v6 < a1;
}

BOOL isOverPersistentEmissionThreshold(int a1, double a2)
{
  v4 = +[HTPrefs sharedPrefs];
  [v4 persistentFGEmissionThresholdSec];
  if (v5 == 0.0)
  {
    v8 = 900.0;
  }

  else
  {
    v6 = +[HTPrefs sharedPrefs];
    [v6 persistentFGEmissionThresholdSec];
    v8 = v7;
  }

  v9 = fmax(v8, 3600.0);
  if (!a1)
  {
    v9 = v8;
  }

  return v9 <= a2;
}

void checkForRollingFGTelemetryEmission(uint64_t a1, int a2, unint64_t a3)
{
  if (a1)
  {
    v5 = atomic_load((a1 + 392));
    if (v5 == -1)
    {
      v7 = shared_ht_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 408);
        v17 = 67109120;
        LODWORD(v18) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SpringBoard emitted telemetry: %d", &v17, 8u);
      }

      if (*(a1 + 408) == 1)
      {
        HTForegroundTrackingBegin(a1, a3);
      }

      else
      {
        v13 = shared_ht_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Encountered invalid event->rollingFGTimestamp, not going to double emit telemetry", &v17, 2u);
        }
      }
    }

    else if (a3 >= v5)
    {
      v10 = MATU_TO_SEC(a3 - v5);
      v11 = v10;
      if (a2)
      {
        v12 = 2;
      }

      else
      {
        if (!isOverPersistentEmissionThreshold(*(a1 + 409), v10))
        {
          return;
        }

        v12 = 1;
      }

      if (isOverMinEmissionThreshold(v11))
      {
        v14 = @"HTFGUpdatePersistentForegroundness";
        if (a2)
        {
          v14 = @"HTFGUpdateHangOcurred";
        }

        v15 = v14;
        v16 = shared_ht_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = v15;
          v19 = 2048;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Attempting to emit telemetry for rolling foreground case with HTForegroundUpdateType: %@ with data from the past %f seconds", &v17, 0x16u);
        }

        updateHTForegroundTrackingState(a1, v12, a3);
      }
    }

    else
    {
      v6 = shared_ht_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1000145DC();
      }
    }
  }
}

void HTForegroundTrackingBegin(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = -1;
    atomic_compare_exchange_strong((a1 + 392), &v4, a2);
    v5 = v4 == -1;
    v6 = shared_ht_log_handle();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = atomic_load((a1 + 392));
        v17 = 134217984;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating event->rollingFGTimestamp from INVALID_FOREGROUND_TIMESTAMP to %llu", &v17, 0xCu);
      }

      atomic_store(a2, (a1 + 400));
      *(a1 + 408) = 0;
      if (*(a1 + 371))
      {
        *(a1 + 371) = 0;
        v7 = shared_ht_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_100014694();
        }
      }

      else
      {
        v7 = [NSString stringWithCString:a1 + 116 encoding:1];
        v9 = sub_100011EC0();
        v10 = os_signpost_enabled(v9);

        if (v10)
        {
          v11 = *(a1 + 48);
          v12 = atomic_load((a1 + 400));
          v13 = v12 ^ v11;
          v14 = sub_100011EC0();
          v15 = v14;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
          {
            v16 = @"Unknown";
            if (v7)
            {
              v16 = v7;
            }

            v17 = 138543362;
            v18 = v16;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "HTForegroundTracking", "foregroundAppBundleID=%{public}@", &v17, 0xCu);
          }
        }

        else
        {
          v15 = shared_ht_log_handle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v17) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Signposts are not enabled for HTForegroundTrackingSignpost logger, will not emit signposts for foreground tracking.", &v17, 2u);
          }
        }
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100014650(v7);
    }
  }

  else
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Event nil, returning early.", &v17, 2u);
    }
  }
}

void updateHTForegroundTrackingState(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v6 = a2 - 3;
  if ((a2 - 3) < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = a3;
  }

  v8 = atomic_exchange((a1 + 392), v7);
  if (v8 != -1)
  {
    if (a3 < v8)
    {
      v9 = shared_ht_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1000145DC();
      }

      return;
    }

    v11 = MATU_TO_MS(a3 - v8);
    v12 = atomic_exchange((a1 + 384), 0);
    v13 = createStateInfoSortedArrayWithPtr(a1 + 416);
    v14 = calcluateDurationInCPURoleFromSortedArray(v13, 8, v8, a3);
    v15 = calcluateDurationInCPURoleFromSortedArray(v13, 6, v8, a3);
    if (a2 == 3)
    {
      SharedPage = [HTMonitorPidHangEvent getSharedPageFromPid:*(a1 + 48)];
      if (SharedPage)
      {
LABEL_15:
        v17 = atomic_exchange(&SharedPage->var6, 0);
        v18 = atomic_exchange(&SharedPage->var7, 0);
        v19 = atomic_exchange(&SharedPage->var8, 0);
        v20 = v17 - (v18 + v19);
LABEL_20:
        if (*(a1 + 371))
        {
          *(a1 + 371) = 0;
          v22 = shared_ht_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_100014694();
          }
        }

        else
        {
          v31 = _NSConcreteStackBlock;
          v32 = 3221225472;
          v33 = sub_100011B50;
          v34 = &unk_1000253D0;
          v35 = a2;
          v36 = v11;
          v37 = v12;
          v38 = v17;
          v39 = a1;
          v40 = v14;
          v41 = v15;
          v42 = v11 - (v14 + v15);
          v43 = v18;
          v44 = v19;
          v45 = v20;
          AnalyticsSendEventLazy();
          if (v6 <= 1)
          {
            if (a2 == 3)
            {
              *(a1 + 408) = 1;
            }

            v23 = sub_100011EC0();
            v24 = os_signpost_enabled(v23);

            if (v24)
            {
              v25 = *(a1 + 48);
              v26 = atomic_load((a1 + 400));
              v27 = v26 ^ v25;
              v28 = sub_100011EC0();
              v29 = v28;
              if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
              {
                v30 = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, v27, "HTForegroundTracking", &unk_10001BD3B, &v30, 2u);
              }
            }

            else
            {
              v29 = shared_ht_log_handle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Signposts are not enabled for HTForegroundTrackingSignpost logger, will not emit signposts for foreground tracking.", &v30, 2u);
              }
            }

            atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 400));
          }
        }

        return;
      }
    }

    else
    {
      SharedPage = GetSharedPage();
      if (SharedPage)
      {
        goto LABEL_15;
      }
    }

    v21 = shared_ht_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000146FC(v21);
    }

    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v10 = shared_ht_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100014740(v10);
  }

  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 392));
}

id sub_100011B50(void *a1)
{
  v15[0] = kHTCoreAnalyticsHTForegroundUpdateType;
  v14 = [NSNumber numberWithUnsignedInteger:a1[4]];
  v16[0] = v14;
  v15[1] = kHTCoreAnalyticsForegroundTime;
  v13 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[5] + 500) / 0x3E8uLL)];
  v16[1] = v13;
  v15[2] = kHTCoreAnalyticsRunloopTime;
  v12 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[6] + 500) / 0x3E8uLL)];
  v16[2] = v12;
  v15[3] = kHTCoreAnalyticsAssertionTime;
  v11 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[7] + 500) / 0x3E8uLL)];
  v16[3] = v11;
  v15[4] = kHTCoreAnalyticsHangBundleID;
  v2 = [NSString stringWithUTF8String:a1[8] + 116];
  v16[4] = v2;
  v15[5] = kHTCoreAnalyticsHTForegroundUIFocal;
  v3 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[9] + 500) / 0x3E8uLL)];
  v16[5] = v3;
  v15[6] = kHTCoreAnalyticsHTForegroundUINonFocal;
  v4 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[10] + 500) / 0x3E8uLL)];
  v16[6] = v4;
  v15[7] = kHTCoreAnalyticsHTForegroundOtherCPURole;
  v5 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[11] + 500) / 0x3E8uLL)];
  v16[7] = v5;
  v15[8] = kHTCoreAnalyticsAssertionUIFocal;
  v6 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[12] + 500) / 0x3E8uLL)];
  v16[8] = v6;
  v15[9] = kHTCoreAnalyticsAssertionUINonFocal;
  v7 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[13] + 500) / 0x3E8uLL)];
  v16[9] = v7;
  v15[10] = kHTCoreAnalyticsAssertionOtherCPURole;
  v8 = [NSNumber numberWithUnsignedLongLong:1000 * ((a1[14] + 500) / 0x3E8uLL)];
  v16[10] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:11];

  return v9;
}

id sub_100011EC0()
{
  if (qword_10002B100 != -1)
  {
    sub_100014784();
  }

  v1 = qword_10002B0F8;

  return v1;
}

void HTForegroundTrackingEnd(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = @"HTFGUpdateUserSwitchedAway";
LABEL_9:
      if (*(a1 + 371))
      {
        *(a1 + 371) = 0;
        v8 = shared_ht_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_100014694();
        }
      }

      else
      {
        v9 = shared_ht_log_handle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136446722;
          v11 = a1 + 116;
          v12 = 2048;
          v13 = a2;
          v14 = 2112;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App with bundleID:%{public}s is no longer foreground at time=%llu, attempting to emit telemetry with emission type: %@", &v10, 0x20u);
        }

        updateHTForegroundTrackingState(a1, a3, a2);
      }

      return;
    }

    if (a3 == 4)
    {
      v6 = @"HTFGUpdateAppBackgrounded";
      goto LABEL_9;
    }
  }

  v7 = shared_ht_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100014798();
  }
}

void sub_1000120B4(id a1)
{
  qword_10002B0F8 = os_log_create("com.apple.hangtracer", "foreground_tracking");

  _objc_release_x1();
}

void sub_1000120F8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_100012D48(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100012D68(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 136315394;
  v5 = "enumerateHangIntervalsInTimeRange";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s completed with error: %@\n", &v4, 0x16u);
}

void sub_100012E14(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "biome lookup failed: %@", &v4, 0xCu);
}

void sub_100012EAC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to extract signposts with error: %@", buf, 0xCu);
}

void sub_100012F04(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "sem_open() failed: %{errno}d", v3, 8u);
}

void sub_100012F94(void *a1, NSObject *a2)
{
  v3 = 136315138;
  string = xpc_dictionary_get_string(a1, _xpc_error_key_description);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received error updating telemetry: %s", &v3, 0xCu);
}

void sub_100013070(void *a1)
{
  v1 = createXPCObjectString(a1);
  sub_100003898(&_mh_execute_header, v2, v3, "Got response from HangTracer: %@", v4, v5, v6, v7, 2u);
}

void sub_1000130F8(uint64_t a1)
{
  v1 = createXPCObjectString(*(*(*a1 + 8) + 40));
  sub_100003898(&_mh_execute_header, v2, v3, "Got response from HangTracer: %@", v4, v5, v6, v7, 2u);
}

void sub_1000131A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to establish a connection to HangTracer with error: %@", &v2, 0xCu);
}

void sub_100013218()
{
  sub_100003F5C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error handling url %@: %@", v2, 0x16u);
}

void sub_1000132B0(uint8_t *a1, unint64_t a2, double *a3, NSObject *a4)
{
  v7 = MATU_TO_MS(a2);
  *a1 = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "HTAssertion: checkOverlap: ignoring hang during screen off with duration %.0fms", a1, 0xCu);
}

void sub_100013438(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_100009828();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000134CC()
{
  sub_100009838();
  sub_100009848();
  sub_100009828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100013570()
{
  sub_100009838();
  sub_100009848();
  sub_100009828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100013614()
{
  sub_100009838();
  sub_100009848();
  sub_100009828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000136B8()
{
  sub_100009838();
  sub_100009848();
  sub_100009828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000137F4()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = sub_10000B014(v1);
  sub_10000B004();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000138A0()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = sub_10000B014(v1);
  sub_10000B004();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10001394C()
{
  objc_opt_class();
  sub_100003F5C();
  v1 = v0;
  sub_10000B004();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100013A1C()
{
  sub_100003F5C();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "The provided stateInfoArray '%@' only has state objects AFTER then end of the hang (%llu matu).", v2, 0x16u);
}

void sub_100013C24(void *a1, NSObject *a2)
{
  v4 = [@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension" UTF8String];
  v5 = [a1 localizedDescription];
  v6 = 136315394;
  v7 = v4;
  v8 = 2080;
  v9 = [v5 UTF8String];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating destination directory %s %s\n", &v6, 0x16u);
}

void sub_100013CF0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to write hang history log into %@ with error: %@", &v3, 0x16u);
}

void sub_100013F08(id *a1, NSObject *a2)
{
  v4 = [*a1 pid];
  v5 = [*a1 bundle];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2114;
  v8 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "There is no HTMonitorPidHangEvent for process with pid %d and bundleInfo %{public}@", v6, 0x12u);
}

void sub_10001405C()
{
  v0 = *__error();
  sub_10000FAF0();
  sub_10000FB14(&_mh_execute_header, v1, v2, "Unable to create shared page: %{errno}d", v3, v4, v5, v6, v7);
}

void sub_100014190()
{
  sub_100003F5C();
  sub_10000FAFC();
  sub_10000FB08();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_10001420C()
{
  sub_100003F5C();
  sub_10000FAE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001427C()
{
  sub_100003F5C();
  sub_10000FAE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100014510()
{
  v0 = *__error();
  sub_10000FAF0();
  sub_10000FB14(&_mh_execute_header, v1, v2, "Unable to get volume space info: %{errno}d", v3, v4, v5, v6, v7);
}

void sub_10001458C()
{
  sub_10000FABC();
  sub_10000BCDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000145DC()
{
  sub_100003F5C();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_1000120F8(&_mh_execute_header, v0, v1, "event->rollingFGTimestamp is later than now, this should never happen. (start:%llu > end:%llu)", v2, v3);
}

void sub_10001480C(void *a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = [a1 objCType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Passed unsupported NSNumber primitive type: %s", &v3, 0xCu);
}

void sub_10001489C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  objc_opt_class();
  sub_100012D34();
  v8 = a2;
  v6 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Encountered non-NSSting key of class '%@' in request dictionary: %@", v7, 0x16u);
}

double sub_100015410(double result)
{
  if (!atomic_load(&unk_10002B010))
  {
    return sub_100015434(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100015434(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BiomeStreams.framework/BiomeStreams", 0);
  atomic_store(1u, &unk_10002B010);
  return a1;
}