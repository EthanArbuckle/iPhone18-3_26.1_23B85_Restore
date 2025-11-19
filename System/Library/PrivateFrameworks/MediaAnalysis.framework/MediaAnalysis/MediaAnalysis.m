const void **sub_100002CBC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100002FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_100003048(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000030A0(void *a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(a1[4] + 8);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[QueuingScheduler] Cancelling all tasks for client %@", &v8, 0xCu);
    }
  }

  v4 = [*(a1[4] + 24) allValues];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(a1[6] + 8) + 24) += [*(a1[4] + 16) count];
  return [*(a1[4] + 16) removeAllObjects];
}

void sub_1000033CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, char a30)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

const void **sub_100003424(const void **a1, const void **a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void *sub_100003610@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100003638()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id start(uint64_t a1, uint64_t a2)
{
  xpc_transactions_enable();
  signal(15, 1);
  v4 = dispatch_get_global_queue(21, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);
  dispatch_source_set_event_handler(v5, &stru_100282830);
  dispatch_activate(v5);
  _set_user_dir_suffix();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(VCPMediaAnalysisDaemon);
  v8 = [(VCPMediaAnalysisDaemon *)v7 run:a1 argv:a2];

  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t sub_1000038F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = [a3 code];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_100003B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100003B44(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v4[0] = 67109120;
      v4[1] = [v1 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[Scene] Evaluating %d recently captured assets", v4, 8u);
    }
  }

  return v1;
}

PHFetchResult *__cdecl sub_100003F74(id a1, PHFetchOptions *a2)
{
  v2 = a2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [(PHFetchOptions *)v2 setSortDescriptors:v4];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v6 = [PHAsset fetchAssetsFromCameraSinceDate:v5 options:v2];

  return v6;
}

void sub_100004620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100002CBC(va);

  _Unwind_Resume(a1);
}

void sub_1000050D8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) firstObject];
  [v4 assetWithPhotosAsset:v3 analysis:*(a1 + 40)];
}

void sub_100005F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VCPMADSceneFetchProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

VIService *__cdecl sub_1000061EC(id a1)
{
  v1 = objc_alloc_init(VIService);

  return v1;
}

void sub_10000633C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8090;
  qword_1002B8090 = v0;
}

void sub_1000067EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006840(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(*(a1[6] + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = a1[4];
      if (v4)
      {
        v7 = @"Interrupted";
      }

      else
      {
        v7 = @"Finished";
      }

      [*(*(a1[6] + 8) + 40) elapsedTimeSeconds];
      v13 = 138413058;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = [v4 code];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ %@ after %0.6fs (%ld)", &v13, 0x2Au);
    }
  }

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v11 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      v12 = a1[4];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Finished background processing", &v13, 0xCu);
    }
  }

  (*(a1[5] + 16))(a1[5], [v4 code]);
}

void sub_100006A18(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100006B10()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B80A0;
  qword_1002B80A0 = v0;
}

void sub_100006CFC(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@ task chain broke, rescheduling", &v1, 0xCu);
}

void sub_100007298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  sub_100002CBC(&a12);
  sub_100002CBC(&a13);
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007334(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADServicePublic] XPC connection interrupted", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
  }
}

void sub_1000073E0(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADServicePublic] XPC connection invalidated", v7, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
    v5 = v4[1];
    v4[1] = 0;

    v6 = +[VCPClientManager sharedManager];
    [v6 removeClientHandler:v4];
  }
}

void sub_100007BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26)
{
  sub_100002CBC((v30 - 128));

  _Unwind_Resume(a1);
}

void sub_100007CC8(void *a1, void *a2)
{
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = v4;
  v6 = a1[7];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v9 = 138412290;
    v10 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "VCPMADServicePublicClientHandler_IOSurface", "%@", &v9, 0xCu);
  }

  if (a1[8])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v8 = a1[6];
  if (v3)
  {
    (*(v8 + 16))(v8, 0, v3);
  }

  else
  {
    (*(v8 + 16))(v8, a1[5], 0);
  }
}

void sub_100008388(void *a1, void *a2)
{
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = v4;
  v6 = a1[7];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v9 = 138412290;
    v10 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "VCPMADServicePublicClientHandler_URL", "%@", &v9, 0xCu);
  }

  if (a1[8])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v8 = a1[6];
  if (v3)
  {
    (*(v8 + 16))(v8, 0, v3);
  }

  else
  {
    (*(v8 + 16))(v8, a1[5], 0);
  }

  sandbox_extension_release();
}

void sub_1000084D4(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  sandbox_extension_release();
}

void sub_100008A9C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = a1[4];
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VCPMADServicePublicClientHandler_VideoE2E", "%@", &v11, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
  sandbox_extension_release();
}

void sub_100008C00(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  sandbox_extension_release();
}

void sub_100009608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v26 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000096BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 containsObject:MOSettingsGroupNameUserSafety])
  {
    v5 = objc_alloc_init(MOEffectiveSettingsStore);
    v6 = [v5 userSafety];
    v7 = [v6 scanningPolicy];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MADServicePublic] Updated user safety scanning policy (%@)", buf, 0xCu);
      }
    }

    [WeakRetained secTask];
    v9 = [MADUserSafetySettings policyTypeForTask:*buf scanningPolicy:v7];
    sub_100002CBC(buf);
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADServicePublic] Starting reportMADUserSafetyPolicy, type: %u", buf, 8u);
      }
    }

    v11 = [[MADUserSafetyPolicy alloc] initWithPolicyType:v9];
    v12 = [WeakRetained userSafetyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000099F8;
    v15[3] = &unk_100282BC8;
    v15[4] = WeakRetained;
    v13 = v11;
    v16 = v13;
    dispatch_async(v12, v15);

    if (MediaAnalysisLogLevel() >= 5)
    {
      v14 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MADServicePublic] Completed reportMADUserSafetyPolicy", buf, 2u);
      }
    }
  }
}

void sub_1000099F8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  [v2 reportMADUserSafetyPolicy:*(a1 + 40) error:0];
}

void sub_100009A64(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  [v2 reportMADUserSafetyPolicy:*(a1 + 40) error:0];
}

void sub_10000AA2C(void *a1, void *a2)
{
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v8 = 138412290;
    v9 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "VCPMADServicePublicClientHandler_TextPrewarmingE2E", "%@", &v8, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void sub_10000AF08(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = a1[4];
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VCPMADServicePublicClientHandler_TextProcessingE2E", "%@", &v11, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void sub_10000B3A0(void *a1, void *a2)
{
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v8 = 138412290;
    v9 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "VCPMADServicePublicClientHandler_MultiModalPrewarmingE2E", "%@", &v8, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void sub_10000B828(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = a1[4];
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VCPMADServicePublicClientHandler_MultiModalProcessingE2E", "%@", &v11, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void sub_10000D55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  _Block_object_dispose(&STACK[0x5E0], 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000D9DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000D9F4(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Scene Processing progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000DB14(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Scene Processing completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000DBEC(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Face Processing progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000DD0C(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Face Processing completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000DDE4(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Person Processing progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000DF04(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Person Processing completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000DFDC(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Full Cluster Processing progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000E0FC(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Full Cluster Processing completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000E1D4(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "OCR Processing progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000E2F4(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "OCR Processing completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000E3CC(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "VisualSearch Processing progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000E4EC(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "VisualSearch Processing completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000E5C4(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Full Analysis progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000E6E4(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Full Analysis completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000E7BC(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Unified Analysis progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000E8DC(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Unified Analysis completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000E9B4(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "PEC Processing progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000EAD4(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "PEC Processing completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000EBAC(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Maintenance progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000ECCC(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Maintenance completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000EDA4(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Backup progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000EEC4(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Backup completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000EF9C(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Telemetry progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000F0BC(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Telemetry completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000F194(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Pre-heat progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000F2B4(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Pre-heat completed in %0.6fs", &v4, 0xCu);
    }
  }
}

uint64_t sub_10000F38C(uint64_t a1, double a2)
{
  if (([*(*(*(a1 + 40) + 8) + 40) started] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) start];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Database migration progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))(((*(a1 + 56) * *(a1 + 48)) * 100.0) + a2 * *(a1 + 56));
}

void sub_10000F4AC(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      [*(*(*(a1 + 32) + 8) + 40) elapsedTimeSeconds];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Database migration completed in %0.6fs", &v4, 0xCu);
    }
  }
}

id VCPTransactionWithName(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"com.apple.mediaanalysisd.%@", a1];
  [v1 UTF8String];
  v2 = os_transaction_create();

  return v2;
}

id MADTaskIdentifierForBackgroundTask(uint64_t a1)
{
  if (a1 > 18)
  {
    if (a1 > 256)
    {
      switch(a1)
      {
        case 257:
          v2 = MADPhotosBackupBackgroundSystemTask;
          goto LABEL_28;
        case 258:
          v2 = MADPhotosTelemetryBackgroundSystemTask;
          goto LABEL_28;
        case 259:
          v2 = MADPhotosDatabaseMigrationBackgroundSystemTask;
          goto LABEL_28;
      }
    }

    else
    {
      switch(a1)
      {
        case 19:
          v2 = MADPhotosMaintenanceBackgroundSystemTask;
          goto LABEL_28;
        case 21:
          v2 = MADPhotosPersonBackgroundSystemTask;
          goto LABEL_28;
        case 22:
          v2 = MADPhotosFullClusterBackgroundSystemTask;
          goto LABEL_28;
      }
    }
  }

  else if (a1 > 9)
  {
    switch(a1)
    {
      case 10:
        v2 = MADPhotosOCRBackgroundSystemTask;
        goto LABEL_28;
      case 12:
        v2 = MADPhotosVisualSearchBackgroundSystemTask;
        goto LABEL_28;
      case 16:
        v2 = MADPhotosPECBackgroundSystemTask;
        goto LABEL_28;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v2 = MADPhotosFullBackgroundSystemTask;
        goto LABEL_28;
      case 2:
        v2 = MADPhotosSceneBackgroundSystemTask;
        goto LABEL_28;
      case 3:
        v2 = MADPhotosFaceBackgroundSystemTask;
LABEL_28:
        v3 = [(__objc2_class *)v2 identifier];
        goto LABEL_29;
    }
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v5 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = 134217984;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "MADTaskIdentifierForBackgroundTask: Unsupported analysis type %lu", &v6, 0xCu);
    }
  }

  v3 = 0;
LABEL_29:

  return v3;
}

BOOL MADIsPECUnsupportedDomainError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"VisualIntelligence.FlowError"])
  {
    v3 = [v1 code] == 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MADAnyEncryptedSearchDomains(void *a1)
{
  v1 = a1;
  v2 = [NSSet setWithObjects:kVIDomainLandmark, kVIDomainStorefront, kVIDomainNature, kVIDomainAnimals, kVIDomainCats, kVIDomainDogs, kVIDomainBirds, kVIDomainInsects, kVIDomainReptiles, kVIDomainMammals, 0];
  v3 = [v1 intersectsSet:v2];

  return v3;
}

id StripMovieCurationResultsForEligibleAsset(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v37 = a3;
  v7 = v6;
  v35 = v5;
  v36 = v7;
  v8 = [v7 vcp_types];
  v9 = v7;
  if ([v5 isVideo])
  {
    v10 = [v5 mediaAnalysisProperties];
    v11 = [v10 mediaAnalysisVersion];
    v12 = MediaAnalysisLatestThumbnailUpdateVersion;

    v9 = v7;
    if (v11 < v12)
    {
      v13 = [v7 vcp_results];
      v14 = [v13 objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

      if ([v14 count])
      {
        memset(&v43, 0, sizeof(v43));
        v34 = v14;
        v15 = [v14 objectAtIndexedSubscript:0];
        v16 = [v15 objectForKeyedSubscript:MediaAnalysisResultStartKey];
        CMTimeMakeFromDictionary(&v43, v16);

        v17 = v7;
        if ((v8 & 0x40000) != 0)
        {
          *time1 = v43;
          time2 = kCMTimeZero;
          if (CMTimeCompare(time1, &time2) >= 1)
          {
            if (MediaAnalysisLogLevel() >= 5)
            {
              v18 = VCPLogToOSLogType[5];
              if (os_log_type_enabled(&_os_log_default, v18))
              {
                v19 = [v35 mediaAnalysisProperties];
                v20 = [v19 mediaAnalysisVersion];
                v21 = MediaAnalysisTypeShortDescription();
                *time1 = 138412802;
                *&time1[4] = v37;
                *&time1[12] = 1024;
                *&time1[14] = v20;
                *&time1[18] = 2112;
                *&time1[20] = v21;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Movie asset has non-zero keyframe time in existing outdated analysis (existing version %d, existing types %@), request movie curation reprocessing", time1, 0x1Cu);

                v17 = v36;
              }
            }

            v33 = [v17 mutableCopy];
            v22 = [NSNumber numberWithUnsignedLongLong:v8 & 0xFFFFFFFFFFFBFFFFLL];
            [v33 setObject:v22 forKeyedSubscript:MediaAnalysisAnalysisTypesKey];

            v23 = [v33 vcp_results];
            v24 = [v23 mutableCopy];

            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v25 = MediaAnalysisResultsKeysForAnalysisTypes();
            v26 = [v25 countByEnumeratingWithState:&v38 objects:v45 count:16];
            if (v26)
            {
              v27 = *v39;
              v28 = VCPLogToOSLogType[7];
              do
              {
                for (i = 0; i != v26; i = i + 1)
                {
                  if (*v39 != v27)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v38 + 1) + 8 * i);
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v28))
                  {
                    v31 = [v24 objectForKeyedSubscript:v30];
                    *time1 = 138412802;
                    *&time1[4] = v37;
                    *&time1[12] = 2112;
                    *&time1[14] = v30;
                    *&time1[22] = 2112;
                    *&time1[24] = v31;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Clearing result %@: %@", time1, 0x20u);
                  }

                  [v24 setObject:0 forKeyedSubscript:v30];
                }

                v26 = [v25 countByEnumeratingWithState:&v38 objects:v45 count:16];
              }

              while (v26);
            }

            [v33 setObject:v24 forKeyedSubscript:MediaAnalysisResultsKey];
            v7 = v33;
            v14 = v34;
          }
        }
      }

      v9 = v7;
    }
  }

  return v9;
}

id StripVideoThumbnailResultsForEligibleAsset(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v34 = a3;
  v7 = v6;
  v32 = v5;
  v33 = v7;
  v8 = [v7 vcp_types];
  v9 = v7;
  if ([v5 isVideo])
  {
    v10 = [v5 mediaAnalysisProperties];
    v11 = [v10 mediaAnalysisVersion];
    v12 = MediaAnalysisLatestContextualThumbnailUpdateVersion;

    v9 = v7;
    if (v11 < v12)
    {
      v13 = [v7 vcp_results];
      v14 = [v13 objectForKeyedSubscript:MediaAnalysisVideoThumbnailResultsKey];

      v9 = v7;
      if ([v14 count])
      {
        v9 = v7;
        if ((v8 & 0x8000000000000) != 0)
        {
          if (MediaAnalysisLogLevel() >= 5)
          {
            v15 = VCPLogToOSLogType[5];
            if (os_log_type_enabled(&_os_log_default, v15))
            {
              v16 = [v5 mediaAnalysisProperties];
              v17 = [v16 mediaAnalysisVersion];
              v18 = MediaAnalysisTypeShortDescription();
              *buf = 138412802;
              v40 = v34;
              v41 = 1024;
              *v42 = v17;
              *&v42[4] = 2112;
              *&v42[6] = v18;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Movie asset has video thumbnails in existing outdated analysis (existing version %d, existing types %@), request video thumbnail reprocessing", buf, 0x1Cu);

              v7 = v33;
            }
          }

          v31 = [v7 mutableCopy];
          v19 = [NSNumber numberWithUnsignedLongLong:v8 & 0xFFF7FFFFFFFFFFFFLL];
          [v31 setObject:v19 forKeyedSubscript:MediaAnalysisAnalysisTypesKey];

          v20 = [v31 vcp_results];
          v21 = [v20 mutableCopy];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v22 = MediaAnalysisResultsKeysForAnalysisTypes();
          v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v23)
          {
            v24 = *v36;
            v25 = VCPLogToOSLogType[7];
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v36 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v35 + 1) + 8 * i);
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v25))
                {
                  v28 = [v21 objectForKeyedSubscript:v27];
                  *buf = 138412802;
                  v40 = v34;
                  v41 = 2112;
                  *v42 = v27;
                  *&v42[8] = 2112;
                  *&v42[10] = v28;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Clearing result %@: %@", buf, 0x20u);
                }

                [v21 setObject:0 forKeyedSubscript:v27];
              }

              v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v23);
          }

          [v31 setObject:v21 forKeyedSubscript:MediaAnalysisResultsKey];
          v14 = v30;
          v9 = v31;
        }
      }
    }
  }

  return v9;
}

id MergeKeyFrameResourceResultsIntoExistingAnalysis(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3)
  {
    v6 = [v4 mutableCopy];
    v7 = [v5 vcp_results];
    v8 = [v7 mutableCopy];

    [v8 setObject:v3 forKeyedSubscript:MediaAnalysisKeyFrameResourceResultsKey];
    [v6 setObject:v8 forKeyedSubscript:MediaAnalysisResultsKey];
  }

  return v6;
}

void sub_100010408(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id MergeVideoThumbnailResourcesResultsIntoExistingAnalysis(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3)
  {
    v6 = [v4 mutableCopy];
    v7 = [v5 vcp_results];
    v8 = [v7 mutableCopy];

    [v8 setObject:v3 forKeyedSubscript:MediaAnalysisVideoThumbnailResourcesResultsKey];
    [v6 setObject:v8 forKeyedSubscript:MediaAnalysisResultsKey];
  }

  return v6;
}

void sub_100010510(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void MediaAnalysisDaemonReleaseSharedDataStores(void *a1)
{
  v2 = a1;
  [MADVectorDatabaseManager releaseSharedDatabaseWithPhotoLibrary:?];
  [MADVUWGalleryManager releaseSharedGalleryForPhotoLibrary:v2];
  [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:v2];
  v1 = +[MADPhotosDataStoreClient sharedClient];
  [v1 releaseSharedDataStoreForPhotoLibrary:v2];
}

void sub_100010644(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_1002B80B8;
  qword_1002B80B8 = v1;

  v3 = qword_1002B80B8;

  [v3 setMaxConcurrentOperationCount:1];
}

void sub_10001092C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B80C0;
  qword_1002B80C0 = v0;
}

VIService *__cdecl sub_100011A80(id a1)
{
  v1 = objc_alloc_init(VIService);

  return v1;
}

id sub_100011CBC()
{
  result = [objc_opt_class() enabledByDefault];
  byte_1002B80D0 = result;
  return result;
}

void sub_100012C70(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Updating scheduling history session log ...", &v5, 0xCu);
    }
  }

  v4 = [objc_opt_class() taskID];
  VCPCoreAnalyticsSessionLogDatabaseUpdate(v4, *(a1 + 48), 0, -1.0);
}

uint64_t sub_100012D48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012D60(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ %.2f%% complete", &v6, 0x16u);
    }
  }
}

uint64_t sub_100012E44(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) timeIntervalSinceNow];
  v5 = v4;
  v6 = -v4;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPPersistentLogInstance();
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(v7, v8))
    {
      v9 = @"Interrupted";
      v10 = *(a1 + 40);
      *buf = 138413058;
      if (!a2)
      {
        v9 = @"Finished";
      }

      v24 = v10;
      v25 = 2112;
      v26 = v9;
      v27 = 2048;
      v28 = v6;
      v29 = 1024;
      v30 = a2;
      _os_log_impl(&_mh_execute_header, v7, v8, "%@ %@ after %0.6fs (%d)", buf, 0x26u);
    }
  }

  [*(a1 + 48) finish];
  if ((VCPIsRemoteIOSTask() & 1) == 0)
  {
    [*(a1 + 56) destroy];
    v11 = [objc_opt_class() taskID];
    VCPCoreAnalyticsSessionLogDatabaseUpdate(v11, *(a1 + 32), a2, v6);
    v12 = [objc_opt_class() taskID];
    VCPCoreAnalyticsReportEventDasScheduling(v12, a2, v6);
    v13 = [objc_opt_class() taskID];
    VCPCoreAnalyticsSendAllAnalysisSession(v13);
  }

  v14 = *(*(a1 + 88) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v16 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = *(a1 + 40);
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Finished background processing", buf, 0xCu);
    }
  }

  if (v5 >= -300.0)
  {
    if (v5 < -60.0 && [objc_opt_class() taskID] == 16)
    {
      [MADProgressManager requestProgressUpdateForTasks:&off_100295FD8];
    }
  }

  else
  {
    v18 = [*(a1 + 64) reportingTaskIDs];
    if (v18)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100013130;
      v21[3] = &unk_100282A08;
      v22 = *(a1 + 72);
      v19 = objc_retainBlock(v21);
      [objc_opt_class() reportProgressForTasks:v18 cancelOrExtendTimeoutBlock:v19];
    }
  }

  return (*(*(a1 + 80) + 16))();
}

uint64_t sub_100013130(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && ((*(v1 + 16))() & 1) != 0)
  {
    return 1;
  }

  v3 = +[VCPWatchdog sharedWatchdog];
  [v3 pet];

  return 0;
}

uint64_t sub_10001318C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 code];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

uint64_t sub_1000132E0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 1024;
  *(a2 + 14) = result;
  return result;
}

void sub_10001330C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000132E0(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Error: Uncommitted CoreData DB transaction detected before launching the task %u!", v5, 0x12u);
}

void sub_100013364(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000132E0(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Error: Outstanding MAD database transcations detected before launching the task %u!", v5, 0x12u);
}

void sub_100013968(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != -23808)
  {
    if (*(*(a1 + 32) + 40))
    {
      return;
    }

    v5 = MediaAnalysisLogLevel();
    if (v2 == -128)
    {
      if (v5 < 5)
      {
        goto LABEL_15;
      }

      v6 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v6))
      {
        goto LABEL_15;
      }

      v7 = *(*(a1 + 32) + 24);
      v14 = 138412290;
      v15 = v7;
      v8 = "%@ Processing canceled; stopping";
      v9 = v6;
      v10 = 12;
    }

    else
    {
      if (v5 < 3)
      {
        goto LABEL_15;
      }

      v11 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v11))
      {
        goto LABEL_15;
      }

      v12 = *(*(a1 + 32) + 24);
      v13 = *(a1 + 40);
      v14 = 138412546;
      v15 = v12;
      v16 = 1024;
      v17 = v13;
      v8 = "%@ Processing failed (%d); stopping";
      v9 = v11;
      v10 = 18;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v9, v8, &v14, v10);
LABEL_15:
    *(*(a1 + 32) + 40) = *(a1 + 40);
    return;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v3 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = *(*(a1 + 32) + 24);
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Processing failed due to download throttling; stopping downloads", &v14, 0xCu);
    }
  }

  *(*(a1 + 32) + 44) = -23808;
}

void sub_1000145A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v5 taskID:{objc_msgSend(*(a1 + 40), "processingStatusTaskID")}];
}

void sub_10001461C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 processingStatusTaskID];
  v6 = [*(a1 + 32) mediaTypePredicatesString];
  [v4 hardFailAllRunningProcessingStatusForTaskID:v5 additionalPredicates:v6];
}

void sub_1000158C0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) localIdentifier];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:v3];
}

void sub_100015930(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v5 taskID:{objc_msgSend(*(a1 + 40), "processingStatusTaskID")}];
}

void sub_1000159AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localIdentifier];
  [v3 removeProcessingStatusForLocalIdentifier:v4 taskID:255];
}

void sub_100015A14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v5 taskID:{objc_msgSend(*(a1 + 40), "processingStatusTaskID")}];
}

void sub_100015A90(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = [*(a1 + 40) localIdentifier];
  [v1 addObject:v2];
}

void sub_100015BD8(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100016A70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v5 taskID:{objc_msgSend(*(a1 + 40), "processingStatusTaskID")}];
}

void sub_100016AEC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localIdentifier];
  [v3 removeProcessingStatusForLocalIdentifier:v4 taskID:255];
}

void sub_100017390(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allObjects];
  [v4 removeProcessingStatusForLocalIdentifiers:v5 taskID:{objc_msgSend(*(a1 + 40), "processingStatusTaskID")}];
}

id sub_10001756C(uint64_t a1, uint64_t a2)
{
  v4 = [NSMutableArray arrayWithArray:&off_100295FF0];
  if ([*(*(a1 + 32) + 8) vcp_requiresDownloadForTask:{objc_msgSend(*(a1 + 32), "taskID")}])
  {
    [v4 addObjectsFromArray:&off_100296008];
  }

  v5 = +[MADManagedProcessingStatus isMACDReadEnabled];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [*(v6 + 8) mad_fetchRequest];
    v15 = 0;
    v8 = [*(a1 + 32) processingStatusTaskID];
    v9 = [*(a1 + 32) mediaTypePredicatesString];
    [v7 fetchLocalIdentifiersEligibleForRetry:&v15 taskID:v8 excludingStatuses:v4 fetchLimit:a2 additionalPredicates:v9];
    v10 = v15;
  }

  else
  {
    v11 = *(v6 + 16);
    v14 = 0;
    v12 = [v6 processingStatusTaskID];
    v7 = [*(a1 + 32) mediaTypePredicatesString];
    [v11 fetchLocalIdentifiersEligibleForRetry:&v14 taskID:v12 excludingStatuses:v4 fetchLimit:a2 additionalPredicates:v7];
    v10 = v14;
  }

  return v10;
}

id sub_100017828(uint64_t a1, uint64_t a2)
{
  v4 = +[MADManagedProcessingStatus isMACDReadEnabled];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(v5 + 8) mad_fetchRequest];
    v14 = 0;
    v7 = [*(a1 + 32) processingStatusTaskID];
    v8 = [*(a1 + 32) mediaTypePredicatesString];
    [v6 fetchEligibleToRetryLocalIdentifiers:&v14 processingStatus:4 taskID:v7 fetchLimit:a2 additionalPredicates:v8];
    v9 = v14;
  }

  else
  {
    v10 = *(v5 + 16);
    v13 = 0;
    v11 = [v5 processingStatusTaskID];
    v6 = [*(a1 + 32) mediaTypePredicatesString];
    [v10 fetchEligibleToRetryLocalIdentifiers:&v13 processingStatus:4 taskID:v11 fetchLimit:a2 additionalPredicates:v6];
    v9 = v13;
  }

  return v9;
}

id sub_100017CE4(uint64_t a1, uint64_t a2)
{
  v4 = +[MADManagedProcessingStatus isMACDReadEnabled];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(v5 + 8) mad_fetchRequest];
    v14 = 0;
    v7 = [*(a1 + 32) processingStatusTaskID];
    v8 = [*(a1 + 32) mediaTypePredicatesString];
    [v6 fetchLocalIdentifiers:&v14 processingStatus:2 taskID:v7 attempts:1 fetchLimit:a2 additionalPredicates:v8];
    v9 = v14;
  }

  else
  {
    v10 = *(v5 + 16);
    v13 = 0;
    v11 = [v5 processingStatusTaskID];
    v6 = [*(a1 + 32) mediaTypePredicatesString];
    [v10 fetchLocalIdentifiers:&v13 processingStatus:2 taskID:v11 attempts:1 fetchLimit:a2 additionalPredicates:v6];
    v9 = v13;
  }

  return v9;
}

id sub_100017F98(uint64_t a1, uint64_t a2)
{
  v4 = +[MADManagedProcessingStatus isMACDReadEnabled];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(v5 + 8) mad_fetchRequest];
    v14 = 0;
    v7 = [*(a1 + 32) processingStatusTaskID];
    v8 = [*(a1 + 32) mediaTypePredicatesString];
    [v6 fetchLocalIdentifiersEligibleForRetry:&v14 taskID:v7 includingStatuses:&off_100296020 fetchLimit:a2 additionalPredicates:v8];
    v9 = v14;
  }

  else
  {
    v10 = *(v5 + 16);
    v13 = 0;
    v11 = [v5 processingStatusTaskID];
    v6 = [*(a1 + 32) mediaTypePredicatesString];
    [v10 fetchLocalIdentifiersEligibleForRetry:&v13 taskID:v11 includingStatuses:&off_100296020 fetchLimit:a2 additionalPredicates:v6];
    v9 = v13;
  }

  return v9;
}

void sub_100018404(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = [*(a1 + 40) assetLocalIdentifiers];
  [v1 minusSet:v2];
}

void sub_100018464(uint64_t a1)
{
  v2 = 0;
  if ([*(*(a1 + 32) + 64) count])
  {
    do
    {
      v3 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:v2];
      v4 = [v3 taskUUID];
      v5 = [*(a1 + 40) uuid];
      v6 = [v4 isEqual:v5];

      if (v6)
      {
        break;
      }

      ++v2;
    }

    while (v2 < [*(*(a1 + 32) + 64) count]);
  }

  if (v2 >= [*(*(a1 + 32) + 64) count])
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v10 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = *(*(a1 + 32) + 24);
        v12 = [*(a1 + 40) uuid];
        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ unknown task retired (%@)", &v13, 0x16u);
      }
    }
  }

  else
  {
    if (v2 && MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = *(*(a1 + 32) + 24);
        v9 = [*(a1 + 40) uuid];
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ task retired in unexpected order (%@)", &v13, 0x16u);
      }
    }

    [*(*(a1 + 32) + 64) removeObjectAtIndex:v2];
  }
}

void sub_100018958(id a1)
{
  v1 = objc_alloc_init(VCPClientManager);
  v2 = qword_1002B80E8;
  qword_1002B80E8 = v1;
}

id sub_100018A3C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v3 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(a1 + 40);
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Adding client handler %@", &v5, 0xCu);
      }
    }

    return [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  }

  return result;
}

void sub_100018BBC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v2 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v2))
      {
        v3 = *(a1 + 40);
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Removing client handler %@", &v6, 0xCu);
      }
    }

    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 32) + 16) count])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v4 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v4))
        {
          LOWORD(v6) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "No active clients; purging cached resources", &v6, 2u);
        }
      }

      v5 = +[VCPMADResourceManager sharedManager];
      [v5 purgeAllResources];
    }
  }
}

void sub_100019794(id *a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = a1[4];
      *buf = 138412290;
      v44 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Entering BGST task launch handler.", buf, 0xCu);
    }
  }

  atomic_store(0, a1[5] + 8);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100019E90;
  v41[3] = &unk_100282BC8;
  v32 = *(a1 + 2);
  v6 = v32.i64[0];
  v42 = vextq_s8(v32, v32, 8uLL);
  [v3 setExpirationHandler:v41];
  atomic_store(mach_continuous_time(), a1[5] + 2);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100019F5C;
  v40[3] = &unk_100283000;
  v40[4] = a1[5];
  v7 = objc_retainBlock(v40);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10001A050;
  v34[3] = &unk_100283028;
  v35 = a1[6];
  v8 = v7;
  v39 = v8;
  v36 = a1[4];
  v9 = v3;
  v10 = a1[5];
  v37 = v9;
  v38 = v10;
  v11 = objc_retainBlock(v34);
  if (+[VCPDeviceInformation isHomePod])
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v12 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = a1[4];
        *buf = 138412290;
        v44 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@[HomePod] Set xpc transaction exit clean", buf, 0xCu);
      }
    }

    xpc_transaction_exit_clean();
  }

  if (os_variant_is_darwinos())
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_22;
    }

    v14 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v14))
    {
      goto LABEL_22;
    }

    v15 = a1[4];
    *buf = 138412290;
    v44 = v15;
    v16 = "%@ Platform not supported; quitting background processing";
LABEL_21:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v14, v16, buf, 0xCu);
LABEL_22:
    (v11[2])(v11, 4294967278);
    goto LABEL_23;
  }

  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_22;
    }

    v14 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v14))
    {
      goto LABEL_22;
    }

    v20 = a1[4];
    *buf = 138412290;
    v44 = v20;
    v16 = "%@ Attempt to run prior to first unlock; quitting";
    goto LABEL_21;
  }

  multiuser_mode = 0;
  v17 = mach_host_self();
  if (host_check_multiuser_mode(v17, &multiuser_mode))
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = a1[4];
        *buf = 138412290;
        v44 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Failed to query multi-user mode", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  if (!multiuser_mode)
  {
LABEL_29:
    if (MediaAnalysisLogLevel() >= 5)
    {
      v23 = VCPPersistentLogInstance();
      v24 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(v23, v24))
      {
        v25 = a1[4];
        *buf = 138412290;
        v44 = v25;
        _os_log_impl(&_mh_execute_header, v23, v24, "%@ Running background processing", buf, 0xCu);
      }
    }

    v26 = +[MADStateHandler sharedStateHandler];
    [v26 addBreadcrumb:{@"Running BGST %@", a1[6]}];

    v27 = objc_autoreleasePoolPush();
    [a1[5] executeWithSystemTask:v9 cancelBlock:v8 completionHandler:v11];
    objc_autoreleasePoolPop(v27);
    if (MediaAnalysisLogLevel() >= 5)
    {
      v28 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        v29 = a1[4];
        *buf = 138412290;
        v44 = v29;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Submitted background processing", buf, 0xCu);
      }
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v30 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v30))
      {
        v31 = a1[4];
        *buf = 138412290;
        v44 = v31;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "%@ Exiting BGST task launch handler", buf, 0xCu);
      }
    }

    goto LABEL_23;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v21 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = a1[4];
      *buf = 138412290;
      v44 = v22;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Device configured for multi-user mode; quitting", buf, 0xCu);
    }
  }

  (v11[2])(v11, 4294967278);
LABEL_23:
}

void sub_100019E90(uint64_t a1)
{
  atomic_store(1u, (*(a1 + 32) + 8));
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(a1 + 40);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Cancelling by expirationHandler", &v4, 0xCu);
    }
  }
}

uint64_t sub_100019F5C(uint64_t a1)
{
  v2 = mach_continuous_time();
  v3 = atomic_exchange((*(a1 + 32) + 16), v2);
  if (v2 > v3 && v2 - v3 > [objc_opt_class() getBGSTTimeoutInTicks])
  {
    v4 = VCPCancelBGSTLogInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = qword_1002B7440;
      v6 = [objc_opt_class() identifier];
      sub_10001A694(v6, v9, v5, v4);
    }
  }

  v7 = atomic_load((*(a1 + 32) + 8));
  return v7 & 1;
}

void sub_10001A050(uint64_t a1, int a2)
{
  v4 = +[MADStateHandler sharedStateHandler];
  [v4 addBreadcrumb:{@"Finished BGST %@", *(a1 + 32)}];

  if ((*(*(a1 + 64) + 16))())
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v5 = VCPPersistentLogInstance();
      v6 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(a1 + 40);
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v5, v6, "%@ Task is cancelled by DAS", buf, 0xCu);
      }
    }

    v8 = *(a1 + 48);
    v30 = 0;
    v9 = [v8 setTaskExpiredWithRetryAfter:&v30 error:0.0];
    v10 = v30;
    if (v9)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v11 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          v12 = *(a1 + 40);
          *buf = 138412290;
          v32 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Set task retry after 0 seconds", buf, 0xCu);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v25 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          v26 = *(a1 + 40);
          *buf = 138412546;
          v32 = v26;
          v33 = 2112;
          v34 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to expire task - %@", buf, 0x16u);
        }
      }

      [*(a1 + 48) setTaskCompleted];
    }
  }

  else
  {
    v13 = MediaAnalysisLogLevel();
    if (a2 == -128)
    {
      if (v13 >= 5)
      {
        v14 = VCPPersistentLogInstance();
        v15 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(v14, v15))
        {
          v16 = *(a1 + 40);
          *buf = 138412290;
          v32 = v16;
          _os_log_impl(&_mh_execute_header, v14, v15, "%@ Task is cancelled", buf, 0xCu);
        }
      }

      v17 = *(a1 + 48);
      v29 = 0;
      v18 = [v17 setTaskExpiredWithRetryAfter:&v29 error:300.0];
      v19 = v29;
      if (v18)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v20 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v20))
          {
            v21 = *(a1 + 40);
            *buf = 138412546;
            v32 = v21;
            v33 = 1024;
            LODWORD(v34) = 300;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Request retry after %d seconds", buf, 0x12u);
          }
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v27 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v27))
          {
            v28 = *(a1 + 40);
            *buf = 138412546;
            v32 = v28;
            v33 = 2112;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to expire task - %@", buf, 0x16u);
          }
        }

        [*(a1 + 48) setTaskCompleted];
      }
    }

    else
    {
      if (v13 >= 5)
      {
        v22 = VCPPersistentLogInstance();
        v23 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(v22, v23))
        {
          v24 = *(a1 + 40);
          *buf = 138412546;
          v32 = v24;
          v33 = 1024;
          LODWORD(v34) = a2;
          _os_log_impl(&_mh_execute_header, v22, v23, "%@ Task is completed (%d)", buf, 0x12u);
        }
      }

      [*(a1 + 48) setTaskCompleted];
      [objc_opt_class() updateTask];
    }
  }
}

void sub_10001A50C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 persistentDomainForName:MediaAnalysisDomain];

  v3 = [v2 objectForKey:@"BGSTTimeoutInSeconds"];
  v4 = v3;
  if (v3)
  {
    qword_1002B7440 = [v3 longLongValue];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v5 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = 134217984;
        v7 = qword_1002B7440;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "BGST Timeout from defaults write initialized to %lld", &v6, 0xCu);
      }
    }
  }

  mach_timebase_info(&dword_1002B8100);
  qword_1002B8108 = 1000000000 * qword_1002B7440 * *algn_1002B8104 / dword_1002B8100;
}

void sub_10001A694(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Over %lld seconds passed since last cancelBGST check in %@", buf, 0x16u);
}

void sub_10001A7D8(id a1)
{
  v1 = objc_alloc_init(VCPCPUMonitor);
  v2 = qword_1002B8110;
  qword_1002B8110 = v1;
}

void sub_10001A8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPCPUMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001ABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_10001B020(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10001B558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCPMADTaskScheduler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001B5CC(id a1)
{
  v1 = objc_alloc_init(VCPMADTaskScheduler);
  v2 = qword_1002B8120;
  qword_1002B8120 = v1;
}

void sub_10001C8D0(uint64_t a1)
{
  v2 = [*(a1 + 32) task];
  v3 = [v2 run];

  v4 = [*(a1 + 32) completionHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) completionHandler];
    (v5)[2](v5, [*(a1 + 32) taskID], v3);
  }

  v6 = [*(a1 + 32) taskGroup];
  dispatch_group_leave(v6);

  v7 = *(*(a1 + 40) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CA04;
  v10[3] = &unk_100282BC8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  dispatch_sync(v7, v10);
}

id sub_10001CA04(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPPersistentLogInstance();
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(v2, v3))
    {
      v4 = [*(a1 + 32) task];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [*(a1 + 32) taskID];
      v8 = [*(a1 + 32) qos];
      v15 = 138412802;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "[Scheduler] Completed %@ (%lu) [QoS: %d]", &v15, 0x1Cu);
    }
  }

  [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  if (([*(a1 + 32) background] & 1) == 0)
  {
    v9 = [*(a1 + 32) task];
    [v9 resourceRequirement];
    *(*(a1 + 40) + 48) = v10 + *(*(a1 + 40) + 48);
  }

  if (![*(*(a1 + 40) + 24) count])
  {
    v11 = +[VCPCPUMonitor sharedCPUMonitor];
    [v11 cancelRequest:*(*(a1 + 40) + 52)];

    v12 = *(a1 + 40);
    v13 = *(v12 + 56);
    *(v12 + 56) = 0;
  }

  return [*(a1 + 40) _schedule];
}

id sub_10001D6D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(*(*(a1 + 56) + 8) + 24);
      v8 = *(a1 + 64);
      [*(a1 + 40) resourceRequirement];
      v15 = 138413058;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Scheduler] Add %@ (%lu) [QoS: %d Cost: %0.3f]", &v15, 0x26u);
    }
  }

  v10 = *(*(a1 + 32) + 32);
  v11 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [VCPMADTaskEntry entryWithTaskID:*(*(*(a1 + 56) + 8) + 24) qos:*(a1 + 64) background:0 task:*(a1 + 40) completionHandler:*(a1 + 48)];
  [v12 addObject:v13];

  [*(a1 + 32) _checkBackgroundTasksForTask:*(a1 + 40)];
  return [*(a1 + 32) _schedule];
}

void sub_10001D9F0(uint64_t a1)
{
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(*(a1 + 32) + 24);
  v2 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v2)
  {
    v3 = *v65;
    v4 = VCPLogToOSLogType[5];
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v65 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * i);
        if ([v6 background])
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v9 = [v6 task];
          LODWORD(v7) = [v7 taskIsAuxiliaryCompatible:v8 runningTask:v9];

          if (!v7)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              sub_10001F214(v41, buf);
            }

            goto LABEL_45;
          }

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v4))
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            *buf = 138412290;
            v71 = v11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Scheduler] Attempting to scheduling a second compatible BGST %@", buf, 0xCu);
          }
        }

        else
        {
          v12 = [v6 task];
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

LABEL_33:
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              v44 = [v6 task];
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              *buf = 138412546;
              v71 = v43;
              v72 = 2112;
              v73 = v46;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[Scheduler] DAS activity (%@) scheduled concurrently with foreground work (%@); quitting", buf, 0x16u);
            }

            v27 = VCPSignPostPersistentLog();
            v28 = VCPSignPostPersistentLog();
            v29 = os_signpost_id_generate(v28);

            if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
            {
              v30 = mach_continuous_time();
              v31 = [v6 task];
              v32 = objc_opt_class();
              v33 = NSStringFromClass(v32);
              v34 = v33;
              v35 = [v33 UTF8String];
              v36 = objc_opt_class();
              v37 = NSStringFromClass(v36);
              v38 = v37;
              v39 = [v37 UTF8String];
              *buf = 134349570;
              v71 = v30;
              v72 = 2082;
              v73 = v35;
              v74 = 2082;
              v75 = v39;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, v29, "BlockSchedulingBGST", "%{public, signpost.description:begin_time}llu Foreground=%{public, signpost.telemetry:string1}s Background=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x20u);
            }

            goto LABEL_45;
          }

          v13 = [v6 task];
          v14 = [v13 interruptBackgroundTasks];

          if (v14)
          {
            goto LABEL_33;
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [*(*(a1 + 32) + 32) allKeys];
  v52 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v52)
  {
    v53 = *v61;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v60 + 1) + 8 * j);
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v16 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{v15, v52}];
        v17 = [v16 countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v17)
        {
          v18 = *v57;
          while (2)
          {
            for (k = 0; k != v17; k = k + 1)
            {
              if (*v57 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v56 + 1) + 8 * k);
              v21 = [v20 task];
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {

LABEL_42:
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
                {
                  v47 = objc_opt_class();
                  v48 = NSStringFromClass(v47);
                  v49 = [v20 task];
                  v50 = objc_opt_class();
                  v51 = NSStringFromClass(v50);
                  *buf = 138412546;
                  v71 = v48;
                  v72 = 2112;
                  v73 = v51;
                  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[Scheduler] DAS activity (%@) scheduled concurrently with foreground work (%@); quitting", buf, 0x16u);
                }

                goto LABEL_45;
              }

              v22 = [v20 task];
              v23 = [v22 interruptBackgroundTasks];

              if (v23)
              {
                goto LABEL_42;
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v56 objects:v68 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }
      }

      v52 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v52);
  }

  v24 = *(a1 + 32);
  v25 = *(v24 + 40);
  *(v24 + 40) = v25 + 1;
  *(*(*(a1 + 48) + 8) + 24) = v25;
  v26 = *(a1 + 32);
  obj = [VCPMADTaskEntry entryWithTaskID:*(*(*(a1 + 48) + 8) + 24) qos:*(a1 + 56) background:1 task:*(a1 + 40) completionHandler:0];
  [v26 _runTask:obj];
LABEL_45:
}

void sub_10001E3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E408(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E420(void *a1)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v3)
  {
    v4 = *v36;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v36 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        if ([v6 taskID] == a1[7])
        {
          if (MediaAnalysisLogLevel() >= 5)
          {
            v19 = VCPLogToOSLogType[5];
            if (os_log_type_enabled(&_os_log_default, v19))
            {
              v20 = a1[7];
              *buf = 134217984;
              v42 = v20;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[Scheduler] Cancelling running task (VCPMADTaskID %lu)", buf, 0xCu);
            }
          }

          v21 = [v6 task];
          [v21 cancel];

          objc_storeStrong((*(a1[5] + 8) + 40), v6);
          return;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [objc_opt_class() qosArray];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v31 + 1) + 8 * j);
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = v11;
        v12 = [*(a1[4] + 32) objectForKeyedSubscript:?];
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v13)
        {
          v14 = *v28;
          while (2)
          {
            for (k = 0; k != v13; k = k + 1)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v27 + 1) + 8 * k);
              if ([v16 taskID] == a1[7])
              {
                if (MediaAnalysisLogLevel() >= 5)
                {
                  v22 = VCPLogToOSLogType[5];
                  if (os_log_type_enabled(&_os_log_default, v22))
                  {
                    v23 = a1[7];
                    *buf = 134217984;
                    v42 = v23;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[Scheduler] Cancelling pending task (VCPMADTaskID %lu)", buf, 0xCu);
                  }
                }

                v24 = [v16 task];
                [v24 cancel];

                objc_storeStrong((*(a1[6] + 8) + 40), v16);
                v25 = [*(a1[4] + 32) objectForKeyedSubscript:v26];
                [v25 removeObject:v16];

                return;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v8);
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v17 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      v18 = a1[7];
      *buf = 134217984;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[Scheduler] Failed to find task %lu to cancel", buf, 0xCu);
    }
  }
}

void sub_10001EB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_10001EB68(uint64_t a1)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v4 = *v29;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v28 + 1) + 8 * i) task];
        [v6 cancel];
      }

      v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v3);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [objc_opt_class() qosArray];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v8)
  {
    v18 = *v25;
    do
    {
      v19 = v8;
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v24 + 1) + 8 * j);
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{v10, v18}];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v12)
        {
          v13 = *v21;
          do
          {
            for (k = 0; k != v12; k = k + 1)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v20 + 1) + 8 * k);
              v16 = [v15 task];
              [v16 cancel];

              [*(*(*(a1 + 40) + 8) + 40) addObject:v15];
            }

            v12 = [v11 countByEnumeratingWithState:&v20 objects:v32 count:16];
          }

          while (v12);
        }

        v17 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v10];
        [v17 removeAllObjects];
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v8);
  }
}

void sub_10001EF08(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) += [*(*(a1 + 32) + 24) count];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [objc_opt_class() qosArray];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(*(&v7 + 1) + 8 * v5)];
        *(*(*(a1 + 40) + 8) + 24) += [v6 count];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_10001F110()
{
  sub_10001F0E8();
  v2 = v0;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[Scheduler] Invalid task QoS (%d); fallback to %d", v1, 0xEu);
}

void sub_10001F190()
{
  sub_10001F0E8();
  v1 = 9;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[Scheduler] Invalid task QoS (%d); fallback to %d", v0, 0xEu);
}

void sub_10001F214(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[Scheduler] Multiple incompatible BGSTs scheduled concurrently; rejecting %@", buf, 0xCu);
}

void sub_10001F534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10001F578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _reportProgressWithBlock:*(a1 + 32)];
  }
}

void sub_10001F6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCPProgressReporter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001F9E0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v0 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Daemon appears to be hung; self-terminating", v0, 2u);
  }

  exit(1);
}

void sub_10001FA7C(id a1)
{
  v1 = objc_alloc_init(VCPWatchdog);
  v2 = qword_1002B8140;
  qword_1002B8140 = v1;
}

void sub_10001FBF4(uint64_t a1)
{
  objc_storeStrong(&qword_1002B8130, *(a1 + 32));
  v1 = qword_1002B8138;
  qword_1002B8138 = 0;
}

void sub_10001FC6C(id a1)
{
  v1 = qword_1002B8138;
  qword_1002B8138 = 0;
}

void sub_10001FD30(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  v2 = qword_1002B8138;
  qword_1002B8138 = v1;
}

void sub_10001FE00(id a1)
{
  v1 = qword_1002B8138;
  qword_1002B8138 = 0;
}

uint64_t sub_1000200C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000200E0(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibraryURL];
  v3 = [v2 path];
  v4 = [0 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [MADVectorDatabaseChangeManager managerForPhotoLibrary:*(a1 + 32)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 40) + 8) + 40);
    if (v11)
    {
      v12 = [*(a1 + 32) photoLibraryURL];
      v13 = [v12 path];
      [0 setObject:v11 forKeyedSubscript:v13];
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = *(a1 + 32);
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[VSKDBChangeManager] Failed to initialize for %@", &v16, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_1000202FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MADVectorDatabaseChangeManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10002044C(uint64_t a1)
{
  v2 = [*(a1 + 32) imageEmbeddingAsset];

  if (v2)
  {
    v3 = *(*(a1 + 40) + 32);
    v7 = [*(a1 + 32) imageEmbeddingAsset];
    [v3 addObject:?];
  }

  v4 = [*(a1 + 32) videoEmbeddingAsset];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 32);
    v8 = [v5 videoEmbeddingAsset];
    [v6 addObject:?];
  }
}

void *sub_100020860(void *result)
{
  v1 = result;
  if (result[4])
  {
    result = [*(result[5] + 32) addObject:?];
  }

  if (v1[6])
  {
    v2 = *(v1[5] + 32);

    return [v2 addObject:?];
  }

  return result;
}

void sub_100020AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_100020AF8(void *a1)
{
  result = [*(a1[4] + 32) count];
  if (result)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v3 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = a1[5];
        *buf = 138412290;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[VSKDBChangeManager] Publishing %@", buf, 0xCu);
      }
    }

    v5 = +[MADStateHandler sharedStateHandler];
    [v5 addBreadcrumb:{@"[VSKDBChangeManager] Publishing %@", a1[5]}];

    v6 = mach_absolute_time();
    v7 = VCPSignPostLog();
    v8 = os_signpost_id_generate(v7);

    v9 = VCPSignPostLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = a1[5];
      *buf = 138412290;
      v23 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MADVectorDatabaseChangeManager_Publish", "%@", buf, 0xCu);
    }

    v12 = a1[4];
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    v15 = *(a1[7] + 8);
    obj = *(v15 + 40);
    v16 = [v13 insertOrReplaceAssetsEmbeddings:v14 error:&obj];
    objc_storeStrong((v15 + 40), obj);
    *(*(a1[6] + 8) + 24) = v16;
    v17 = VCPSignPostLog();
    v18 = v17;
    if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v17))
    {
      v19 = a1[5];
      *buf = 138412290;
      v23 = v19;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v8, "MADVectorDatabaseChangeManager_Publish", "%@", buf, 0xCu);
    }

    if (v6)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    v20 = +[MADStateHandler sharedStateHandler];
    [v20 addBreadcrumb:{@"[VSKDBChangeManager] Finished publishing %@ (%d)", a1[5], *(*(a1[6] + 8) + 24)}];

    return [*(a1[4] + 32) removeAllObjects];
  }

  return result;
}

void sub_100020E08()
{
  if (__cxa_guard_acquire(&qword_1002B8158))
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    qword_1002B8150 = dispatch_queue_create("com.apple.mediaanalysis.sharedinstance.vskchangemanager", v0);

    __cxa_guard_release(&qword_1002B8158);
  }
}

void sub_100021504(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [*(a1 + 32) assetLocalIdentifier];
      v6 = [v3 path];
      v7 = [*(a1 + 40) path];
      *buf = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Resource][%@] Copying %@ to %@", buf, 0x20u);
    }
  }

  v8 = +[NSFileManager defaultManager];
  v9 = *(a1 + 40);
  v17 = 0;
  v10 = [v8 copyItemAtURL:v3 toURL:v9 error:&v17];
  v11 = v17;

  if ((v10 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
  {
    v12 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = [*(a1 + 32) assetLocalIdentifier];
      v14 = [v3 path];
      v15 = [*(a1 + 40) path];
      v16 = [v11 description];
      *buf = 138413058;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[Resource][%@] Failed to copy %@ to %@ (%@)", buf, 0x2Au);
    }
  }
}

void sub_100021744(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [*(a1 + 32) assetLocalIdentifier];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Resource][%@] Request completed (error: %@)", &v7, 0x16u);
    }
  }

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 40);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v6, v3);
}

void sub_100021854(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [*(a1 + 32) assetLocalIdentifier];
      v6 = 138412546;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Resource][%@] Download progress: %0.3f", &v6, 0x16u);
    }
  }
}

void sub_10002212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  _Block_object_dispose((v25 - 128), 8);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000221E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 cancelAllRequests];
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "HomeKit analysis server XPC connection interrupted", v5, 2u);
    }
  }
}

void sub_10002229C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 cancelAllRequests];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "HomeKit analysis server XPC connection invalidated", v7, 2u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;
}

uint64_t sub_100022AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100022AE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100022BD4;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_100022BD4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v5 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = *(a1 + 72);
        v7 = *(a1 + 40);
        v8 = [v7 description];
        v9 = v8;
        v10 = "failed";
        LODWORD(v15) = 67109634;
        HIDWORD(v15) = v6;
        if (!v7)
        {
          v10 = "completed";
        }

        v16 = 2080;
        v17 = v10;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Request %d %s, %@", &v15, 0x1Cu);
      }
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [NSNumber numberWithInt:*(a1 + 72), v15];
    [v11 removeObjectForKey:v12];

    (*(*(a1 + 56) + 16))();
  }

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

void sub_100022DB0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"requestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPHomeKitAnalysisServiceTask taskForFragmentData:*(a1 + 40) withProperties:*(a1 + 48) andProgressHandler:*(a1 + 64) andCompletionHandler:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for request %d", *(a1 + 80)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10002337C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002346C;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_10002346C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v5 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = *(a1 + 72);
        v7 = *(a1 + 40);
        v8 = [v7 description];
        v9 = v8;
        v10 = "failed";
        LODWORD(v15) = 67109634;
        HIDWORD(v15) = v6;
        if (!v7)
        {
          v10 = "completed";
        }

        v16 = 2080;
        v17 = v10;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Request %d %s, %@", &v15, 0x1Cu);
      }
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [NSNumber numberWithInt:*(a1 + 72), v15];
    [v11 removeObjectForKey:v12];

    (*(*(a1 + 56) + 16))();
  }

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

void sub_100023648(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"requestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPHomeKitAnalysisServiceTask taskForFragmentSurface:*(a1 + 40) withProperties:*(a1 + 48) andProgressHandler:*(a1 + 64) andCompletionHandler:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for request %d", *(a1 + 80)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100023B58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100023C48;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_100023C48(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = [NSNumber numberWithInt:*(a1 + 72)];
    [v5 removeObjectForKey:v6];
  }

  [*(a1 + 32) logStatusForRequest:*(a1 + 72) withError:*(a1 + 40)];
  (*(*(a1 + 56) + 16))();
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100023D40(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 56)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 48);
    v20 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithFormat:@"requestID %d already exists", *(a1 + 56)];
    v21 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v7];
    (*(v5 + 16))(v5, 0, v8);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [VCPHomeResidentMaintenanceTask taskWithOptions:*(a1 + 40) extendTimeoutBlock:&stru_1002833D8 completionHandler:*(a1 + 48)];
    v11 = +[VCPMADTaskScheduler sharedInstance];
    v12 = [v11 addForegroundTask:v10 withQoS:25];

    if (v12)
    {
      v13 = [NSNumber numberWithUnsignedInteger:v12];
      v14 = *(*(a1 + 32) + 32);
      v15 = [NSNumber numberWithInt:*(a1 + 56)];
      [v14 setObject:v13 forKeyedSubscript:v15];
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        v17 = *(a1 + 56);
        *buf = 67109120;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Failed to schedule request %d; canceling", buf, 8u);
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

void sub_100024014(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100024258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024284(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v4 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:?];
  *(*(*(a1 + 40) + 8) + 24) = [v3 unsignedIntegerValue];
}

void sub_100024578(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1000245B8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10002468C(uint64_t a1)
{
  sub_1000246E4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HMIAnalysisService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002B8160 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000248AC();
    sub_1000246E4();
  }
}

void sub_1000246E4()
{
  v1[0] = 0;
  if (!qword_1002B8168)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000247E0;
    v1[4] = &unk_100282998;
    v1[5] = v1;
    v2 = off_100283470;
    v3 = 0;
    qword_1002B8168 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002B8168)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1000247E0()
{
  result = _sl_dlopen();
  qword_1002B8168 = result;
  return result;
}

Class sub_100024854(uint64_t a1)
{
  sub_1000246E4();
  result = objc_getClass("HMITaskService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002B8170 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000248D4();
    return sub_1000248AC();
  }

  return result;
}

id sub_100024A98()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002B8178;
  v7 = qword_1002B8178;
  if (!qword_1002B8178)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100025A58;
    v3[3] = &unk_100283450;
    v3[4] = &v4;
    sub_100025A58(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100024B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024F04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v3 = [objc_opt_class() isPerFrameAnalysisEnabled];
    v4 = *(a1 + 32);
    if ((v3 & 1) == 0 && *(v4 + 40) != -1)
    {
      [*(v4 + 48) cancelRequest:?];
      v4 = *(a1 + 32);
    }

    if ((*(v4 + 9) & 1) == 0)
    {
      v5 = *(v4 + 72);
      v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:0];
      (*(v5 + 16))(v5, 0, v6);

      *(*(a1 + 32) + 9) = 1;
    }
  }
}

uint64_t sub_1000250C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t (**sub_1000250D8(uint64_t a1))(double)
{
  v2 = *(a1 + 32);
  result = *(v2 + 64);
  if (result)
  {
    result = result[2](0.0);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 8))
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return dispatch_semaphore_signal(v4);
  }

  else
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = *(v2 + 48);
      v7 = *(v2 + 32);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000252B0;
      v13[3] = &unk_100283550;
      v8 = *(a1 + 40);
      v13[4] = v2;
      v13[5] = v8;
      result = [v6 requestAnalysisForAssetData:v5 withProperties:v7 andCompletionHandler:v13];
      *(*(a1 + 32) + 40) = result;
    }

    else if (*(v2 + 24))
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v9 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "IOSurface received, no analysis is implemented for now.", v12, 2u);
        }
      }

      v10 = *(*(a1 + 32) + 72);
      v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 userInfo:0];
      (*(v10 + 16))(v10, 0, v11);

      result = dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
    }

    *(*(a1 + 32) + 9) = 1;
  }

  return result;
}

void sub_1000252B0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  if (v7)
  {
    (*(v7 + 16))(100.0);
    v6 = *(a1 + 32);
  }

  (*(*(v6 + 72) + 16))();
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_100025798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void sub_100025860(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Per-frame analysis fails with error: %@", &v8, 0xCu);
      }
    }
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

Class sub_100025A58(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002B8180)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100025B9C;
    v4[4] = &unk_100282998;
    v4[5] = v4;
    v5 = off_100283598;
    v6 = 0;
    qword_1002B8180 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002B8180)
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
  result = objc_getClass("HMIAnalysisService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000248AC();
  }

  qword_1002B8178 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100025B9C()
{
  result = _sl_dlopen();
  qword_1002B8180 = result;
  return result;
}

void sub_100025FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id sub_100026058()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002B8188;
  v7 = qword_1002B8188;
  if (!qword_1002B8188)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100027F68;
    v3[3] = &unk_100283450;
    v3[4] = &v4;
    sub_100027F68(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100026120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026138(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[HomeKit] Session XPC connection interrupted", v8, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    WeakRetained[1] = 0;

    v6 = v4[6];
    v4[6] = 0;

    [v4 cancelAllRequests];
    v7 = +[VCPClientManager sharedManager];
    [v7 removeClientHandler:v4];
  }
}

void sub_100026240(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[HomeKit] Session XPC connection invalidated", v8, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    WeakRetained[1] = 0;

    v6 = v4[6];
    v4[6] = 0;

    [v4 cancelAllRequests];
    v7 = +[VCPClientManager sharedManager];
    [v7 removeClientHandler:v4];
  }
}

void sub_1000265B4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1000266F0(uint64_t a1)
{
  dispatch_group_enter(*(*(a1 + 32) + 80));
  dispatch_group_wait(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100026948;
    v10[3] = &unk_1002835B8;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v11 = v4;
    [v2 handleMessageWithOptions:v3 completionHandler:v10];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v5 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "HMIVideoAnalyzer not initialized", buf, 2u);
      }
    }

    v6 = *(a1 + 48);
    v13 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithFormat:@"HMIVideoAnalyzer not initialized"];
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);

    dispatch_group_leave(*(*(a1 + 32) + 80));
  }
}

void sub_100026948(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 80);

  dispatch_group_leave(v2);
}

void sub_100026C44(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026D2C;
  block[3] = &unk_100283648;
  v9 = a1[5];
  v16 = a1[6];
  block[4] = v7;
  v13 = v6;
  v14 = v5;
  v15 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

void sub_100026D2C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = MediaAnalysisLogLevel();
  if (v4)
  {
    if (v5 >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = *(a1 + 64);
        v8 = *(a1 + 40);
        v9 = [v8 description];
        v10 = v9;
        v11 = "failed";
        *buf = 134218498;
        v27 = v7;
        if (!v8)
        {
          v11 = "completed";
        }

        v28 = 2080;
        v29 = v11;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Request %lu %s, %@", buf, 0x20u);
      }
    }

    v12 = *(*(a1 + 32) + 64);
    v13 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    [v12 removeObjectForKey:v13];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (v5 >= 4)
    {
      v14 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = *(a1 + 64);
        *buf = 134217984;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Request %lu no longer exists", buf, 0xCu);
      }
    }

    v16 = *(a1 + 56);
    v17 = [NSString stringWithFormat:@"Request ID not valid", NSLocalizedDescriptionKey];
    v25 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v18];
    (*(v16 + 16))(v16, 0, v19);
  }

  if ([*(a1 + 40) code] == -23804)
  {
    v20 = [*(a1 + 40) domain];
    v21 = [v20 isEqualToString:NSOSStatusErrorDomain];

    if (v21)
    {
      [*(*(a1 + 32) + 24) cancel];
      v22 = *(*(a1 + 32) + 24);
      *(*(a1 + 32) + 24) = 0;

      if (MediaAnalysisLogLevel() >= 4)
      {
        v23 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "Handling asset time-out; re-initialize HMIVideoAnalyzer", buf, 2u);
        }
      }

      [*(a1 + 32) startSessionWithProperties:0 andReply:&stru_100283620];
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 72));
}

void sub_100027118(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v3 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = 138412290;
        v5 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Error with re-initializing HMIVideoAnalyzer: %@", &v4, 0xCu);
      }
    }
  }
}

void sub_1000271F4(void *a1)
{
  v2 = *(a1[4] + 64);
  v3 = [NSNumber numberWithUnsignedInteger:a1[7]];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = a1[7];
        *buf = 134217984;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "taskID %lu already exists", buf, 0xCu);
      }
    }

    v7 = a1[5];
    v13 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"taskID already exists"];
    v14 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v9];
    (*(v7 + 16))(v7, 0, v10);

    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v11 = *(a1[4] + 64);
    v12 = [NSNumber numberWithUnsignedInteger:a1[7]];
    [v11 setObject:&off_100294338 forKeyedSubscript:v12];
  }
}

void sub_100027480(void *a1)
{
  dispatch_group_enter(*(a1[4] + 72));
  dispatch_group_wait(*(a1[4] + 80), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1[4] + 24))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [VCPHomeKitFragmentProcessingTask taskForAssetData:a1[5] withAnalyzer:*(a1[4] + 24) withOptions:a1[6] andCompletionHandler:a1[8]];
    v4 = +[VCPMADTaskScheduler sharedInstance];
    v5 = [v4 addForegroundTask:v3 withQoS:25];

    v6 = a1[4];
    v7 = *(v6 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100027824;
    block[3] = &unk_1002836E8;
    block[4] = v6;
    block[5] = v5;
    block[6] = a1[9];
    dispatch_sync(v7, block);

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v8 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "HMIVideoAnalyzer not initialized", buf, 2u);
      }
    }

    v9 = a1[4];
    v10 = *(v9 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000277A8;
    v17[3] = &unk_1002836C0;
    v11 = a1[9];
    v17[4] = v9;
    v17[5] = v11;
    dispatch_sync(v10, v17);
    v12 = a1[7];
    v19 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"HMIVideoAnalyzer not initialized"];
    v20 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v14];
    (*(v12 + 16))(v12, 0, v15);

    dispatch_group_leave(*(a1[4] + 72));
  }
}

void sub_1000277A8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v1 removeObjectForKey:?];
}

void sub_100027824(void *a1)
{
  if (a1[5])
  {
    v8 = [NSNumber numberWithUnsignedInteger:?];
    v2 = *(a1[4] + 64);
    v3 = [NSNumber numberWithUnsignedInteger:a1[6]];
    [v2 setObject:v8 forKeyedSubscript:v3];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v4 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = a1[5];
        *buf = 134217984;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to create task for MAD request %lu", buf, 0xCu);
      }
    }

    v6 = *(a1[4] + 64);
    v7 = [NSNumber numberWithUnsignedInteger:a1[6]];
    [v6 removeObjectForKey:v7];
  }
}

void sub_100027A04(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v3 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = [(NSError *)v2 description];
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Failed to publish results (%@)", &v5, 0xCu);
      }
    }
  }
}

void sub_100027DC4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100027E04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100027E1C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

Class sub_100027F68(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002B8190)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000280AC;
    v4[4] = &unk_100282998;
    v4[5] = v4;
    v5 = off_100283750;
    v6 = 0;
    qword_1002B8190 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002B8190)
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
  result = objc_getClass("HMIVideoAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100028120();
  }

  qword_1002B8188 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000280AC()
{
  result = _sl_dlopen();
  qword_1002B8190 = result;
  return result;
}

void sub_100028474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPHomeKitFragmentProcessingTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000288D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100028984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002899C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100029540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPAnalyzedAssets;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100029B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VCPMADSceneAssetProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10002B080(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 128);
  v4 = [*(a1 + 40) localIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = +[NSDate now];
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = v5;
}

void sub_10002B200(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 144);
  v2 = *(*(a1 + 32) + 128);
  v3 = [*(a1 + 40) localIdentifier];
  [v2 removeObjectForKey:v3];

  v4 = +[NSDate now];
  v5 = *(a1 + 32);
  v6 = *(v5 + 136);
  *(v5 + 136) = v4;

  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [*(*(a1 + 32) + 128) count];
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Scene][Download] %d downloads pending", v9, 8u);
    }
  }
}

void sub_10002B3E8(uint64_t a1)
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:*(*(a1 + 32) + 136)];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_10002B4F0(uint64_t a1)
{
  *(*(a1 + 32) + 144) = *(a1 + 40);
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [*(*(a1 + 32) + 128) count];
      v4 = *(a1 + 40);
      *buf = 67109376;
      v17 = v3;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[Scene][Download] Canceling %d download requests (%d)", buf, 0xEu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 128) allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = +[PHAssetResourceManager defaultManager];
        [v10 cancelDataRequest:{objc_msgSend(v9, "intValue")}];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_10002BAB8(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Progress: %.2f", &v6, 0x16u);
    }
  }
}

void sub_10002BB8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Received resource at %@", &v6, 0x16u);
    }
  }
}

void sub_10002BC80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[VCPWatchdog sharedWatchdog];
  [v4 pet];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) asset];
  v7 = [v5 _removeDownloadRequestIDForAsset:v6];

  if (v3)
  {
    if (!v7)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          v9 = *(a1 + 48);
          v12 = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = v3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Failed - %@", &v12, 0x16u);
        }
      }

      v7 = 4294943494;
    }

    [*(a1 + 40) setStatus:v7];
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = *(a1 + 48);
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Completed", &v12, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 112));
}

void sub_10002C884(uint64_t a1, void *a2)
{
  v17 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(*(a1 + 32) + 8);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v2)
  {
    v15 = *v21;
    type = VCPLogToOSLogType[7];
    do
    {
      v18 = v2;
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v5 = [v4 asset];
          v6 = [v5 localIdentifier];
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Scene][%@][MACD] Setting processing status to running", buf, 0xCu);
        }

        v7 = [v4 previousAttempts];
        v8 = [v4 asset];
        v9 = *(a1 + 40);
        v10 = [v4 asset];
        v11 = [v10 mediaType];
        v12 = [v4 asset];
        [v17 setAttempts:v7 + 1 asset:v8 taskID:2 status:1 lastAttemptDate:v9 mediaType:v11 mediaSubtypes:objc_msgSend(v12 errorCode:"mediaSubtypes") errorLine:{objc_msgSend(v4, "previousErrorCode"), objc_msgSend(v4, "previousErrorLine")}];

        objc_autoreleasePoolPop(context);
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v2);
  }
}

void sub_10002CB40(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestDownloadThumbnailResource:*(a1 + 40) entry:*(a1 + 48)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = [*(a1 + 48) asset];
    [v4 _addDownloadRequestID:v3 asset:?];
  }
}

void sub_10002D360(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_10002DD8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
  v5 = [v3 labels];
  v6 = [v5 firstObject];
  v7 = [v6 identifier];
  v8 = [v4 nodeForName:v7];

  if (v8)
  {
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 extendedSceneClassId]);
    v10 = [v9 stringValue];

    v11 = [*(a1 + 32) objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = +[NSMutableArray array];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
    }

    v13 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v26[0] = VCPConfidenceKey;
    [v3 confidence];
    v14 = [NSNumber numberWithFloat:?];
    v27[0] = v14;
    v26[1] = VCPBoundingBoxKey;
    [v3 boundingBox];
    v15 = NSStringFromRect(v28);
    v27[1] = v15;
    v26[2] = @"size";
    [v3 boundingBox];
    v17 = v16;
    [v3 boundingBox];
    v19 = [NSNumber numberWithDouble:v17 * v18];
    v27[2] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v13 addObject:v20];
  }

  else
  {
    v21 = [v3 labels];
    v22 = [v21 firstObject];
    v10 = [v22 identifier];

    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = 138412290;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[DO] Unsupported observation label in PFSceneTaxonomyNode %@", &v24, 0xCu);
      }
    }
  }
}

void sub_10002E154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _processBoundingBoxFromDetectedObjects:a3 forSceneClassID:a2];
  [*(a1 + 32) _insertBoundingBox:? toSortedBoundingBoxes:?];
}

void sub_10002EA00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 extendedSceneClassId]);
  v6 = [v5 stringValue];
  [v4 addObject:v6];
}

void sub_10002F024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_10002F1D8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"classID"];
  v8 = VCPBoundingBoxKey;
  v9 = [v6 objectForKeyedSubscript:VCPBoundingBoxKey];
  if ([*(a1 + 32) containsObject:v7])
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v7];

    if (v10)
    {
      v11 = [*(a1 + 40) objectForKeyedSubscript:v7];
      v12 = [v11 mutableCopy];

      [v12 setObject:v9 forKeyedSubscript:v8];
      [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
    }

    else
    {
      v14[0] = VCPConfidenceKey;
      v14[1] = v8;
      v15[0] = &off_1002966F8;
      v15[1] = v9;
      v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
      [*(a1 + 40) setObject:v13 forKeyedSubscript:v7];
    }

    if (++*(*(*(a1 + 48) + 8) + 24) >= 5uLL)
    {
      *a4 = 1;
    }
  }
}

void sub_10002F3DC(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:VCPConfidenceKey];
  [v6 doubleValue];
  v8 = v7;

  v9 = VCPBoundingBoxKey;
  v10 = [v5 objectForKeyedSubscript:VCPBoundingBoxKey];

  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:v9];
    v20 = NSRectFromString(v11);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;

    v16 = [[PHSceneClassification alloc] initWithExtendedSceneIdentifier:objc_msgSend(v18 confidence:"longLongValue") boundingBox:0 startTime:v8 duration:x classificationType:{y, width, height, 0.0, 0.0}];
  }

  else
  {
    v16 = +[PHSceneClassification vcp_instanceWithExtendedSceneIdentifier:confidence:](PHSceneClassification, "vcp_instanceWithExtendedSceneIdentifier:confidence:", [v18 longLongValue], v8);
  }

  v17 = v16;
  [*(a1 + 32) addObject:v16];
}

id sub_100031648()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002B81B8;
  v7 = qword_1002B81B8;
  if (!qword_1002B81B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003AF1C;
    v3[3] = &unk_100283450;
    v3[4] = &v4;
    sub_10003AF1C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100031710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100032C60(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      v4 = *(a1 + 56);
      v5 = *(a1 + 48);
      v6 = 138412802;
      v7 = v3;
      v8 = 1024;
      v9 = v5;
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Unknown ideal dimension for VNRequests (%@), using image dimension %dx%d", &v6, 0x18u);
    }
  }
}

void sub_100032D58(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v4 = objc_opt_class();
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138412802;
      v9 = v4;
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Only one VNRequest (%@) for dimension %dx%d; consider coalescing to common resolution", &v8, 0x18u);
    }
  }
}

void sub_100033600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10003385C(&a24);
  sub_10003385C(&a27);
  sub_100002CBC((v30 - 152));

  _Unwind_Resume(a1);
}

uint64_t sub_1000337A8(void *a1)
{
  if (*a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003B1C0();
    }

    return *a1;
  }

  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    result = CVPixelBufferUnlockBaseAddress(v3, a1[2]);
    *a1 = result;
    if (result)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003B204();
      }

      return *a1;
    }

    *v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003B290();
    }

    return 4294967278;
  }

  return result;
}

uint64_t sub_10003385C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 && !*a1 && CVPixelBufferUnlockBaseAddress(v2, *(a1 + 16)) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003B148();
  }

  return a1;
}

void sub_100034230(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);

  sub_10003385C(va);
  sub_10003385C(va1);
  sub_100002CBC(va2);

  _Unwind_Resume(a1);
}

void sub_100034C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, void *a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, const void *a22)
{
  sub_10003385C(&a16);
  sub_10003385C(&a19);
  sub_100002CBC(&a22);

  _Unwind_Resume(a1);
}

void sub_1000356BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, const void *a36, const void *a37)
{
  sub_100002CBC(&a36);
  sub_100002CBC(&a37);

  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100035834(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003584C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) needsSceneProcessing])
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v3 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(a1 + 40);
        *buf = 138412290;
        v25 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Performing SceneNet analysis", buf, 0xCu);
      }
    }

    v5 = +[VCPWatchdog sharedWatchdog];
    [v5 pet];

    v6 = VCPSignPostLog();
    v7 = os_signpost_id_generate(v6);

    v8 = VCPSignPostLog();
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPMADSceneAssetEntryProcess_SceneNetAnalysis", "", buf, 2u);
    }

    v10 = [*(a1 + 48) _performSceneNetAnalysisForAssetEntry:*(a1 + 32) withImage:*(a1 + 56) andRequests:*(*(*(a1 + 72) + 8) + 40)];
    v11 = VCPSignPostLog();
    v12 = v11;
    if (v7 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v7, "VCPMADSceneAssetEntryProcess_SceneNetAnalysis", "", buf, 2u);
    }

    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v13 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          v14 = *(a1 + 40);
          *buf = 138412290;
          v25 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Failed to perform SceneNet analysis", buf, 0xCu);
        }
      }

      [*(a1 + 32) setSceneStatus:v10];
      [*(a1 + 32) setErrorCode:102];
      [*(a1 + 32) setErrorLine:1613];
    }
  }

  v15 = *(a1 + 48);
  v17 = *(v15 + 80);
  v16 = *(v15 + 88);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100035B94;
  v20[3] = &unk_1002839F0;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v21 = v18;
  v22 = v19;
  v23 = *(a1 + 64);
  (*(v16 + 16))(v16, @"AssetProcessCompletion", v17, v20);

  objc_autoreleasePoolPop(v2);
}

id sub_100035B94(uint64_t a1)
{
  [*(a1 + 32) setScenenetCompleted:1];
  result = [*(a1 + 32) blurExposureRotationCompleted];
  if (result)
  {
    dispatch_semaphore_signal(*(*(a1 + 40) + 40));
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void sub_100035C00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v60 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Performing non-SceneNet analysis", buf, 0xCu);
    }
  }

  v5 = +[VCPWatchdog sharedWatchdog];
  [v5 pet];

  if ([*(a1 + 40) needsSceneProcessing])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = VCPSignPostLog();
    v8 = os_signpost_id_generate(v7);

    v9 = VCPSignPostLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADSceneAssetEntryProcess_BlurAnalysis", "", buf, 2u);
    }

    v11 = [*(a1 + 48) _performBlurAnalysisForAssetEntry:*(a1 + 40) withLumaPixelBuffer:*(a1 + 64)];
    v12 = VCPSignPostLog();
    v13 = v12;
    if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADSceneAssetEntryProcess_BlurAnalysis", "", buf, 2u);
    }

    if (v11)
    {
      [*(a1 + 40) setSceneStatus:v11];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v14 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v60 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Failed to perform Blur analysis", buf, 0xCu);
        }
      }

      v16 = 1647;
      v17 = 101;
      goto LABEL_52;
    }

    v18 = VCPSignPostLog();
    v19 = os_signpost_id_generate(v18);

    v20 = VCPSignPostLog();
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPMADSceneAssetEntryProcess_ExposureAnalysis", "", buf, 2u);
    }

    v22 = [*(a1 + 48) _performExposureAnalysisForAssetEntry:*(a1 + 40) withLumaPixelBuffer:*(a1 + 64)];
    v23 = VCPSignPostLog();
    v24 = v23;
    if (v19 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v19, "VCPMADSceneAssetEntryProcess_ExposureAnalysis", "", buf, 2u);
    }

    if (v22)
    {
      [*(a1 + 40) setSceneStatus:v22];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v25 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          v26 = *(a1 + 32);
          *buf = 138412290;
          v60 = v26;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to perform Exposure analysis", buf, 0xCu);
        }
      }

      v16 = 1659;
      v17 = 103;
      goto LABEL_52;
    }

    v27 = VCPSignPostLog();
    v28 = os_signpost_id_generate(v27);

    v29 = VCPSignPostLog();
    v30 = v29;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "VCPMADSceneAssetEntryProcess_RotationAnalysis", "", buf, 2u);
    }

    v31 = [*(a1 + 48) _performRotationAnalysisForAssetEntry:*(a1 + 40) withColorPixelBuffer:*(a1 + 72)];
    v32 = VCPSignPostLog();
    v33 = v32;
    if (v28 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v28, "VCPMADSceneAssetEntryProcess_RotationAnalysis", "", buf, 2u);
    }

    if (v31)
    {
      [*(a1 + 40) setSceneStatus:v31];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v34 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          v35 = *(a1 + 32);
          *buf = 138412290;
          v60 = v35;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "%@ Failed to perform Rotation analysis", buf, 0xCu);
        }
      }

      v16 = 1671;
      v17 = 104;
      goto LABEL_52;
    }

    objc_autoreleasePoolPop(v6);
  }

  if ([*(a1 + 40) needsEmbeddingProcessing])
  {
    v36 = [*(a1 + 40) results];
    v37 = [v36 imageEmbeddingVersion] == 75;

    if (!v37)
    {
      v6 = objc_autoreleasePoolPush();
      v38 = VCPSignPostLog();
      v39 = os_signpost_id_generate(v38);

      v40 = VCPSignPostLog();
      v41 = v40;
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "VCPMADSceneAssetEntryProcess_EmbeddingAnalysis", "", buf, 2u);
      }

      v42 = [*(a1 + 48) _performEmbeddingAnalysisForAssetEntry:*(a1 + 40) withColorPixelBuffer:*(a1 + 72)];
      v43 = VCPSignPostLog();
      v44 = v43;
      if (v39 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, v39, "VCPMADSceneAssetEntryProcess_EmbeddingAnalysis", "", buf, 2u);
      }

      if (!v42)
      {
        goto LABEL_53;
      }

      [*(a1 + 40) setImageEmbeddingStatus:v42];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v45 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v45))
        {
          v46 = *(a1 + 32);
          *buf = 138412290;
          v60 = v46;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Failed to perform Embedding analysis", buf, 0xCu);
        }
      }

      v16 = 1687;
      v17 = 105;
LABEL_52:
      [*(a1 + 40) setErrorCode:v17];
      [*(a1 + 40) setErrorLine:v16];
LABEL_53:
      objc_autoreleasePoolPop(v6);
    }
  }

  v47 = *(a1 + 64);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(a1 + 72);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(a1 + 48);
  v51 = *(v49 + 80);
  v50 = *(v49 + 88);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000363DC;
  v55[3] = &unk_1002839F0;
  v52 = *(a1 + 40);
  v53 = *(a1 + 48);
  v54 = *(a1 + 56);
  v56 = v52;
  v57 = v53;
  v58 = v54;
  (*(v50 + 16))(v50, @"AssetProcessCompletion", v51, v55);

  objc_autoreleasePoolPop(v2);
}

id sub_1000363DC(uint64_t a1)
{
  [*(a1 + 32) setBlurExposureRotationCompleted:1];
  result = [*(a1 + 32) scenenetCompleted];
  if (result)
  {
    dispatch_semaphore_signal(*(*(a1 + 40) + 40));
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void sub_100037648(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "VCPMADSceneAssetEntry_ProcessAsset", "", v5, 2u);
  }

  if (*(a1 + 40))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }
}

void sub_1000376F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_wait(WeakRetained[7], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_group_wait(v3[9], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_group_wait(v3[10], 0xFFFFFFFFFFFFFFFFLL);
    [*(a1 + 32) timeIntervalSinceNow];
    *(v3 + 4) = -v4;
    v5 = VCPSignPostLog();
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v8[0] = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "VCPMADSceneAssetBatch_Process", "", v8, 2u);
    }

    if (*(a1 + 56))
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }
  }
}

void sub_100038164(uint64_t a1)
{
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = *(*(a1 + 32) + 8);
  v1 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v1)
  {
    v83 = *v86;
    type = VCPLogToOSLogType[7];
    v79 = VCPLogToOSLogType[4];
    do
    {
      v2 = 0;
      v84 = v1;
      do
      {
        if (*v86 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v85 + 1) + 8 * v2);
        v4 = objc_autoreleasePoolPush();
        v5 = [v3 asset];
        v6 = [v5 localIdentifier];
        v7 = [NSString stringWithFormat:@"[Scene][%@]", v6];

        if ([v3 status] != -128 && ((objc_msgSend(v3, "needsSceneProcessing") & 1) != 0 || (objc_msgSend(v3, "needsEmbeddingProcessing") & 1) != 0))
        {
          [*(a1 + 32) _reportCoreAnalyticsWithEntry:v3];
          v8 = [v3 asset];
          v9 = [PHAssetChangeRequest changeRequestForAsset:v8];

          if ([v3 needsSceneProcessing])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v90 = v7;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Persisting dedupping signals ... ", buf, 0xCu);
            }

            v10 = [v3 results];
            v11 = [v10 duplicateMatchingFeature];
            if (v11)
            {
              v12 = [v3 results];
              v13 = [v12 duplicateMatchingAlternateFeature];
              v14 = v13 != 0;
            }

            else
            {
              v14 = 0;
            }

            v15 = [v3 results];
            v16 = [v15 duplicateMatchingFeature];
            v17 = [v3 results];
            v18 = [v17 duplicateMatchingAlternateFeature];
            [v9 setDuplicateMatchingData:v16 duplicateMatchingAlternateData:v18 processingSucceeded:v14];

            if (![v3 status] && !objc_msgSend(v3, "sceneStatus"))
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412290;
                v90 = v7;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Persisting scene analysis results ... ", buf, 0xCu);
              }

              v19 = [v3 results];
              v20 = [v19 sceneClassifications];
              v21 = VCPPhotosSceneProcessingVersionInternal();
              v22 = [v3 asset];
              v23 = [v22 adjustmentVersion];
              [v9 setSceneClassifications:v20 ofType:0 version:v21 timestamp:v23];

              v24 = [v3 results];
              LOBYTE(v23) = [v24 compactSCSensitivityAnalysisIVS] == 0;

              if ((v23 & 1) == 0)
              {
                v25 = [v3 results];
                [v9 setCompactImageSCSensitivityAnalysis:{objc_msgSend(v25, "compactSCSensitivityAnalysisIVS")}];
              }

              v26 = [v3 results];
              [v26 overallAestheticScore];
              [v9 setOverallAestheticScore:?];

              v27 = [v3 results];
              [v27 wellFramedSubjectScore];
              [v9 setWellFramedSubjectScore:?];

              v28 = [v3 results];
              [v28 wellChosenSubjectScore];
              [v9 setWellChosenSubjectScore:?];

              v29 = [v3 results];
              [v29 tastefullyBlurredScore];
              [v9 setTastefullyBlurredScore:?];

              v30 = [v3 results];
              [v30 sharplyFocusedSubjectScore];
              [v9 setSharplyFocusedSubjectScore:?];

              v31 = [v3 results];
              [v31 wellTimedShotScore];
              [v9 setWellTimedShotScore:?];

              v32 = [v3 results];
              [v32 pleasantLightingScore];
              [v9 setPleasantLightingScore:?];

              v33 = [v3 results];
              [v33 pleasantReflectionsScore];
              [v9 setPleasantReflectionsScore:?];

              v34 = [v3 results];
              [v34 harmoniousColorScore];
              [v9 setHarmoniousColorScore:?];

              v35 = [v3 results];
              [v35 livelyColorScore];
              [v9 setLivelyColorScore:?];

              v36 = [v3 results];
              [v36 pleasantSymmetryScore];
              [v9 setPleasantSymmetryScore:?];

              v37 = [v3 results];
              [v37 pleasantPatternScore];
              [v9 setPleasantPatternScore:?];

              v38 = [v3 results];
              [v38 immersivenessScore];
              [v9 setImmersivenessScore:?];

              v39 = [v3 results];
              [v39 pleasantPerspectiveScore];
              [v9 setPleasantPerspectiveScore:?];

              v40 = [v3 results];
              [v40 pleasantPostProcessingScore];
              [v9 setPleasantPostProcessingScore:?];

              v41 = [v3 results];
              [v41 noiseScore];
              [v9 setNoiseScore:?];

              v42 = [v3 results];
              [v42 failureScore];
              [v9 setFailureScore:?];

              v43 = [v3 results];
              [v43 pleasantCompositionScore];
              [v9 setPleasantCompositionScore:?];

              v44 = [v3 results];
              [v44 interestingSubjectScore];
              [v9 setInterestingSubjectScore:?];

              v45 = [v3 results];
              [v45 intrusiveObjectPresenceScore];
              [v9 setIntrusiveObjectPresenceScore:?];

              v46 = [v3 results];
              [v46 pleasantCameraTiltScore];
              [v9 setPleasantCameraTiltScore:?];

              v47 = [v3 results];
              [v47 lowLight];
              [v9 setLowLight:?];

              v48 = [v3 results];
              [v48 preferredCropRect];
              [v9 setPreferredCropRectWithNormalizedRect:?];

              v49 = [v3 results];
              [v49 acceptableCropRect];
              [v9 setAcceptableCropRectWithNormalizedRect:?];

              v50 = [v3 results];
              v51 = [v50 objectSaliencyRects];
              [v9 setObjectSaliencyRects:v51];

              v52 = [v3 results];
              v53 = [v52 sceneprintData];
              [v9 setSceneprintData:v53];

              v54 = [v3 results];
              [v54 wallpaperScore];
              [v9 setWallpaperScore:?];

              v55 = [v3 results];
              v56 = [v55 colorNormalizationData];
              [v9 setColorNormalizationData:v56];

              v57 = [v3 results];
              [v57 iconicScore];
              [v9 setIconicScore:v58];

              v59 = [v3 results];
              [v59 blurrinessScore];
              [v9 setBlurrinessScore:?];

              v60 = [v3 results];
              [v60 exposureScore];
              [v9 setExposureScore:?];

              v61 = [v3 results];
              [v9 setProbableRotationDirection:{objc_msgSend(v61, "probableRotationDirection")}];

              v62 = [v3 results];
              [v62 probableRotationDirectionConfidence];
              [v9 setProbableRotationDirectionConfidence:?];

              v63 = [v3 asset];
              v64 = [v63 photoLibrary];
              v65 = [v64 vcp_isSyndicationLibrary];

              if (v65)
              {
                [v9 setCurationScore:0.0];
              }
            }
          }

          if ([v3 needsEmbeddingProcessing] && !objc_msgSend(v3, "status") && !objc_msgSend(v3, "imageEmbeddingStatus"))
          {
            v66 = [v3 results];
            [v9 setImageEmbeddingVersion:{objc_msgSend(v66, "imageEmbeddingVersion")}];
          }

          v67 = [v3 asset];
          if ([v67 mad_isEligibleForComputeSync])
          {
            v68 = [v3 status] == 0;

            if (v68)
            {
              v69 = [v3 asset];
              v70 = [v69 mad_analysisStageAfterCompletingAnalysis:2];

              [v9 setLocalAnalysisStage:v70];
              v71 = [v3 results];
              v72 = [v71 imageEmbeddingResults];
              v73 = [v3 results];
              v67 = +[MADVSKEmbeddingResults resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:](MADVSKEmbeddingResults, "resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:", v72, [v73 imageEmbeddingVersion], 0, 0);

              v74 = [v3 asset];
              v75 = [MADComputeSyncPayloadResults payloadDataForAsset:v74 targetStage:v70 embeddingResults:v67 fullAnalysisResults:0];

              if (v75)
              {
                [v9 setComputeSyncMediaAnalysisPayload:v75];
              }

              else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v79))
              {
                v76 = [v3 asset];
                v77 = [v76 mediaAnalysisProperties];
                v78 = [v77 localAnalysisStage];
                *buf = 138412802;
                v90 = v7;
                v91 = 1024;
                v92 = v70;
                v93 = 1024;
                v94 = v78;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v79, "%@ No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
              }

              goto LABEL_37;
            }
          }

          else
          {
LABEL_37:
          }

          [*(a1 + 32) _reportCoreAnalyticsWithEntry:v3];
        }

        objc_autoreleasePoolPop(v4);
        v2 = v2 + 1;
      }

      while (v84 != v2);
      v1 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
    }

    while (v1);
  }
}

void sub_100038F8C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100039968(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(*(a1 + 32) + 8);
  v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v24 = *v29;
    type = VCPLogToOSLogType[7];
    do
    {
      v5 = 0;
      v25 = v4;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = [v6 asset];
        v8 = [v7 localIdentifier];
        v27 = [NSString stringWithFormat:@"[Scene][%@]", v8];

        if (![v6 status])
        {
          if ([v6 sceneStatus])
          {
            v9 = [v6 sceneStatus];
          }

          else
          {
            v9 = [v6 imageEmbeddingStatus];
          }

          [v6 setStatus:v9];
        }

        if (![v6 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v33 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_21;
        }

        if ([v6 status] == -128)
        {
          if (![v6 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v33 = v27;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_21:
            v10 = [v6 asset];
            v11 = [v10 localIdentifier];
            [v3 removeProcessingStatusForLocalIdentifier:v11 taskID:2];
            goto LABEL_27;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v33 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v21 = [v6 previousAttempts];
          v10 = [v6 asset];
          v20 = [v6 previousStatus];
          v11 = [v6 lastAttemptDate];
          v12 = [v6 asset];
          v13 = [v12 mediaType];
          v14 = [v6 asset];
          [v3 setAttempts:v21 asset:v10 taskID:2 status:v20 lastAttemptDate:v11 mediaType:v13 mediaSubtypes:objc_msgSend(v14 errorCode:"mediaSubtypes") errorLine:{objc_msgSend(v6, "previousErrorCode"), objc_msgSend(v6, "previousErrorLine")}];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v33 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v6 status];
          v15 = MADProcessingStatusForOSStatus();
          v16 = [v6 asset];
          v17 = [v6 currentAttemptDate];
          v10 = [v16 mad_nextAttemptDateForStatus:v15 currentAttemptDate:v17 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

          v18 = [v6 errorCode];
          v19 = [v6 errorLine];
          v11 = [v6 asset];
          v12 = [v11 localIdentifier];
          [v3 updateProcessingStatus:v15 nextAttemptDate:v10 errorCode:v18 errorLine:v19 localIdentifier:v12 taskID:2];
        }

LABEL_27:
        objc_autoreleasePoolPop(context);
        v5 = v5 + 1;
      }

      while (v25 != v5);
      v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v4);
  }
}

void sub_10003AA24(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

Class sub_10003AF1C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002B81C0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10003B060;
    v4[4] = &unk_100282998;
    v4[5] = v4;
    v5 = off_100283B10;
    v6 = 0;
    qword_1002B81C0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002B81C0)
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
  result = objc_getClass("SCSensitivityAnalysis");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10003B2D4();
  }

  qword_1002B81B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10003B060()
{
  result = _sl_dlopen();
  qword_1002B81C0 = result;
  return result;
}

void sub_10003B148()
{
  sub_10003B0F8(__stack_chk_guard);
  sub_10003B0D4();
  sub_10003B0EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003B204()
{
  sub_10003B0F8(__stack_chk_guard);
  sub_10003B0EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003B5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCPDatabaseWriter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_10003C568(uint64_t a1, int a2)
{
  if (!a2)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VCPDatabaseWriter] Error SQLITE_BUSY encountered, attempting first retry", buf, 2u);
      }
    }

    v8 = +[NSDate now];
    [v8 timeIntervalSinceReferenceDate];
    qword_1002B81C8 = v9;

    return 1;
  }

  v2 = +[NSDate now];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  if (v4 - *&qword_1002B81C8 <= 0.01)
  {
    return 1;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v5 = VCPLogToOSLogType[4];
    result = os_log_type_enabled(&_os_log_default, v5);
    if (!result)
    {
      return result;
    }

    *v10 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[VCPDatabaseWriter] busy timeout has passed since first retry, stop retrying", v10, 2u);
  }

  return 0;
}

uint64_t sub_10003E748(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sqlite3_bind_text(a1, a2, [v5 UTF8String], -1, 0);
  }

  else
  {
    v7 = sqlite3_bind_null(a1, a2);
  }

  v8 = v7;

  return v8;
}

void sub_10003F160(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    if (*(a1 + 64) == 1 && (*(v2 + 32) & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = [v2 beginTransaction];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v3 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v3))
          {
            v4 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 67109120;
            LODWORD(v33) = v4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[VCPDatabaseWriter] Database already opened, failed to begin write transaction: %d", buf, 8u);
          }
        }
      }
    }

    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 40) + 16))();
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v22 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            v23 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 67109120;
            LODWORD(v33) = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[VCPDatabaseWriter] Database already opened, failed to execute block: %d", buf, 8u);
          }
        }
      }
    }
  }

  v5 = a1 + 56;
  v6 = *(*(a1 + 56) + 8);
  v8 = *(v6 + 24);
  v7 = v6 + 24;
  v9 = *(a1 + 32);
  if (v8)
  {
    if ([v9 shouldPropagateError:v7 finalAttempt:0])
    {
      return;
    }

    v9 = *(a1 + 32);
  }

  if (!v9[3] || *(*(*v5 + 8) + 24))
  {
    [v9 closeDatabase];
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) openDatabase];
    if (!*(*(*(a1 + 56) + 8) + 24) && *(a1 + 64) == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) beginTransaction];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v10 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v10))
          {
            v11 = *(*(*v5 + 8) + 24);
            *buf = 67109120;
            LODWORD(v33) = v11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[VCPDatabaseWriter] Failed to begin write transaction: %d", buf, 8u);
          }
        }
      }
    }

    if (!*(*(*v5 + 8) + 24))
    {
      *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 40) + 16))();
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v24 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v24))
          {
            v25 = *(*(*v5 + 8) + 24);
            *buf = 67109120;
            LODWORD(v33) = v25;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[VCPDatabaseWriter] Failed to execute block: %d", buf, 8u);
          }
        }
      }
    }

    v12 = *(*v5 + 8);
    v14 = *(v12 + 24);
    v13 = v12 + 24;
    if (v14 && ([*(a1 + 32) shouldPropagateError:v13 finalAttempt:1] & 1) == 0 && *(*(*v5 + 8) + 24))
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v15 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v16 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v33 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@", buf, 0xCu);
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100054B9C(a1, a1 + 56);
      }

      v17 = +[VCPMADCoreAnalyticsManager sharedManager];
      v18 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 5 * ([*(a1 + 32) _sizeBytes] / 0x500000));
      v31[0] = v18;
      v31[1] = &__kCFBooleanTrue;
      v30[1] = VCPAnalyticsFieldIsDatabaseRebuilt;
      v30[2] = VCPAnalyticsFieldPhotoLibraryScale;
      v31[2] = @"U";
      v30[3] = VCPAnalyticsFieldRebuiltErrorCode;
      v19 = [NSNumber numberWithInt:*(*(*v5 + 8) + 24)];
      v31[3] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];
      [v17 sendEvent:VCPAnalyticsEventDatabaseInformation withAnalytics:v20];

      [*(a1 + 32) closeDatabase];
      v21 = +[NSFileManager defaultManager];
      [v21 removeItemAtPath:*(*(a1 + 32) + 8) error:0];

      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) openDatabase];
      if (!*(*(*(a1 + 56) + 8) + 24) && *(a1 + 48))
      {
        if (*(a1 + 64) == 1)
        {
          *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) beginTransaction];
          if (*(*(*(a1 + 56) + 8) + 24))
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v26 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v26))
              {
                v27 = *(*(*v5 + 8) + 24);
                *buf = 67109120;
                LODWORD(v33) = v27;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[VCPDatabaseWriter] Failed to begin write transaction for fallback block: %d", buf, 8u);
              }
            }
          }
        }

        if (!*(*(*v5 + 8) + 24))
        {
          *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();
          if (*(*(*(a1 + 56) + 8) + 24))
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v28 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v28))
              {
                v29 = *(*(*v5 + 8) + 24);
                *buf = 67109120;
                LODWORD(v33) = v29;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[VCPDatabaseWriter] Failed to execute fallback block: %d", buf, 8u);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10003F918(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3[32] == 1)
  {
    [v3 commitTransaction];
  }

  return 0;
}

uint64_t sub_100040004(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "REPLACE INTO ChangeTokens (tokenID, tokenType, tokenData, date, version) VALUES ((?),(?),(?),(?),(?));", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
    if (!v2)
    {
      v2 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 64));
      if (!v2)
      {
        v3 = ppStmt;
        v4 = *(a1 + 40);
        v5 = v4;
        if (v4)
        {
          v6 = v4;
          v7 = sqlite3_bind_blob(v3, 3, [v5 bytes], objc_msgSend(v5, "length"), 0);
        }

        else
        {
          v7 = sqlite3_bind_null(v3, 3);
        }

        v2 = v7;

        if (!v2)
        {
          v2 = sub_100040220(ppStmt, 4, *(a1 + 48));
          if (!v2)
          {
            v8 = ppStmt;
            v9 = VCPVersionForTask();
            v2 = sqlite3_bind_int(v8, 5, v9);
            if (!v2)
            {
              v10 = sqlite3_expanded_sql(ppStmt);
              if (v10)
              {
                if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  v15 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
                  v16 = 1024;
                  v17 = 1052;
                  v18 = 2080;
                  v19 = v10;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
                }

                sqlite3_free(v10);
              }

              v11 = sqlite3_step(ppStmt);
              if (v11 == 101)
              {
                v2 = 0;
              }

              else
              {
                v2 = v11;
              }
            }
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100040220(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 timeIntervalSinceReferenceDate];
    v8 = sqlite3_bind_double(a1, a2, v7);
  }

  else
  {
    v8 = sqlite3_bind_null(a1, a2);
  }

  v9 = v8;

  return v9;
}

uint64_t sub_100040520(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE ChangeTokens SET tokenData=(?) WHERE tokenID=(?) AND tokenType=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = sqlite3_bind_blob(v3, 1, [v5 bytes], objc_msgSend(v5, "length"), 0);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v2 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 48));
      if (!v2)
      {
        v2 = sqlite3_bind_int64(ppStmt, 3, *(a1 + 56));
        if (!v2)
        {
          v8 = sqlite3_expanded_sql(ppStmt);
          if (v8)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v14 = 1024;
              v15 = 1083;
              v16 = 2080;
              v17 = v8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v8);
          }

          v9 = sqlite3_step(ppStmt);
          if (v9 == 101)
          {
            v2 = 0;
          }

          else
          {
            v2 = v9;
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_10004088C(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT date, version, tokenData FROM ChangeTokens WHERE tokenID=(?) AND tokenType=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 40));
    if (!v2)
    {
      v2 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 48));
      if (!v2)
      {
        v3 = sqlite3_expanded_sql(ppStmt);
        if (v3)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *v27 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            *&v27[8] = 1024;
            v28[0] = 1108;
            LOWORD(v28[1]) = 2080;
            *(&v28[1] + 2) = v3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v3);
        }

        v4 = sqlite3_step(ppStmt);
        if (v4 != 100)
        {
          goto LABEL_28;
        }

        v5 = ppStmt;
        if (sqlite3_column_type(ppStmt, 0) == 5)
        {
          v6 = 0;
        }

        else
        {
          v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(v5, 0)];
        }

        v7 = sqlite3_column_int(ppStmt, 1);
        v8 = +[NSDate date];
        [v8 timeIntervalSinceDate:v6];
        v10 = v9;
        [objc_opt_class() _ageOutIntervalForChangeTokenType:*(a1 + 48)];
        v12 = v10 > v11;

        if (v12)
        {
          if (MediaAnalysisLogLevel() < 5)
          {
            goto LABEL_27;
          }

          v13 = VCPLogToOSLogType[5];
          if (!os_log_type_enabled(&_os_log_default, v13))
          {
            goto LABEL_27;
          }

          *buf = 0;
          v14 = "Age-out interval reached; discarding change token data...";
        }

        else
        {
          if (v7 == VCPVersionForTask())
          {
            v15 = objc_opt_class();
            v16 = sub_100040D24(ppStmt, 2);
            v24 = 0;
            v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:v15 fromData:v16 error:&v24];
            v18 = v24;
            v19 = v17;
            **(a1 + 56) = v17;
            if (!**(a1 + 56) && MediaAnalysisLogLevel() >= 4)
            {
              v20 = VCPLogToOSLogType[4];
              if (os_log_type_enabled(&_os_log_default, v20))
              {
                v21 = *(a1 + 40);
                v22 = *(a1 + 48);
                *buf = 67109634;
                *v27 = v21;
                *&v27[4] = 1024;
                *&v27[6] = v22;
                LOWORD(v28[0]) = 2112;
                *(v28 + 2) = v18;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "TaskID:%d (%d) queryChangeToken error - %@", buf, 0x18u);
              }
            }

            goto LABEL_27;
          }

          if (MediaAnalysisLogLevel() < 5 || (v13 = VCPLogToOSLogType[5], !os_log_type_enabled(&_os_log_default, v13)))
          {
LABEL_27:
            v4 = sqlite3_step(ppStmt);

LABEL_28:
            if (v4 == 101)
            {
              v2 = 0;
            }

            else
            {
              v2 = v4;
            }

            goto LABEL_31;
          }

          *buf = 0;
          v14 = "Analysis version updated; discarding change token data...";
        }

        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v14, buf, 2u);
        goto LABEL_27;
      }
    }
  }

LABEL_31:
  sqlite3_finalize(ppStmt);
  return v2;
}

id sub_100040CB4(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(a1, a2)];
  }

  return v4;
}

id sub_100040D24(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = sqlite3_column_blob(a1, a2);
    v4 = [NSData dataWithBytesNoCopy:v5 length:sqlite3_column_bytes(a1 freeWhenDone:a2), 0];
  }

  return v4;
}

uint64_t sub_100040F28(void *a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(a1[4] + 24), "DELETE FROM ChangeTokens WHERE tokenID=(?) AND tokenType=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, a1[5]), v2) || (v2 = sqlite3_bind_int64(ppStmt, 2, a1[6]), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 1159;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    v7 = sqlite3_step(ppStmt);
    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

uint64_t sub_1000411E4(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM ChangeTokens WHERE tokenID=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 40)), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 1180;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    v7 = sqlite3_step(ppStmt);
    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

uint64_t sub_1000414E4(uint64_t a1)
{
  ppStmt = 0;
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 24);
  if (v2 == 1)
  {
    v4 = sqlite3_prepare_v2(v3, "UPDATE Assets SET flags=flags | (?), dateAnalyzed=(?) WHERE localIdentifier=(?)", -1, &ppStmt, 0);
  }

  else
  {
    v4 = sqlite3_prepare_v2(v3, "UPDATE Assets SET flags=flags & ~(?), dateAnalyzed=(?) WHERE localIdentifier=(?)", -1, &ppStmt, 0);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = sqlite3_bind_int(ppStmt, 1, 0x40000000);
    if (!v5)
    {
      v6 = ppStmt;
      v7 = +[NSDate date];
      v8 = v7;
      if (v7)
      {
        [v7 timeIntervalSinceReferenceDate];
        v10 = sqlite3_bind_double(v6, 2, v9);
      }

      else
      {
        v10 = sqlite3_bind_null(v6, 2);
      }

      v5 = v10;

      if (!v5)
      {
        v11 = ppStmt;
        v12 = *(a1 + 40);
        v13 = v12;
        if (v12)
        {
          v14 = v12;
          v15 = sqlite3_bind_text(v11, 3, [v13 UTF8String], -1, 0);
        }

        else
        {
          v15 = sqlite3_bind_null(v11, 3);
        }

        v5 = v15;

        if (!v5)
        {
          v16 = sqlite3_expanded_sql(ppStmt);
          if (v16)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v21 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v22 = 1024;
              v23 = 1217;
              v24 = 2080;
              v25 = v16;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v16);
          }

          v17 = sqlite3_step(ppStmt);
          if (v17 == 101)
          {
            v5 = 0;
          }

          else
          {
            v5 = v17;
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v5;
}

uint64_t sub_1000418EC(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE Assets SET masterFingerprint=(?), adjustedFingerprint=(?) WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = [*(a1 + 40) master];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v8 = ppStmt;
      v9 = [*(a1 + 40) adjusted];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        v12 = sqlite3_bind_text(v8, 2, [v10 UTF8String], -1, 0);
      }

      else
      {
        v12 = sqlite3_bind_null(v8, 2);
      }

      v2 = v12;

      if (!v2)
      {
        v13 = ppStmt;
        v14 = [*(a1 + 48) localIdentifier];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
          v17 = sqlite3_bind_text(v13, 3, [v15 UTF8String], -1, 0);
        }

        else
        {
          v17 = sqlite3_bind_null(v13, 3);
        }

        v2 = v17;

        if (!v2)
        {
          v18 = sqlite3_expanded_sql(ppStmt);
          if (v18)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v23 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v24 = 1024;
              v25 = 1236;
              v26 = 2080;
              v27 = v18;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v18);
          }

          v19 = sqlite3_step(ppStmt);
          if (v19 == 101)
          {
            v2 = 0;
          }

          else
          {
            v2 = v19;
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100041D50(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE Assets SET localIdentifier=(?), flags=flags & ~(?) WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  v3 = ppStmt;
  if (v2)
  {
    goto LABEL_12;
  }

  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 1);
  }

  v2 = v7;

  if (v2 || (v2 = sqlite3_bind_int(ppStmt, 2, 0x40000000), v2) || ((v8 = ppStmt, v9 = *(a1 + 48), (v10 = v9) == 0) ? (v12 = sqlite3_bind_null(v8, 3)) : (v11 = v9, v12 = sqlite3_bind_text(v8, 3, [v10 UTF8String], -1, 0)), v2 = v12, v10, v2))
  {
    v3 = ppStmt;
LABEL_12:
    sqlite3_finalize(v3);
LABEL_13:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = *(a1 + 48);
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Failed to update local identifier for asset %@", buf, 0xCu);
      }
    }

    return v2;
  }

  v16 = sqlite3_expanded_sql(ppStmt);
  if (v16)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v20 = 1024;
      v21 = 1260;
      v22 = 2080;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v16);
  }

  v2 = sqlite3_step(ppStmt);
  sqlite3_finalize(ppStmt);
  result = 0;
  if (v2 && v2 != 101)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100042198(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE Assets SET dateModified=(?) WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  v3 = ppStmt;
  if (v2)
  {
    goto LABEL_11;
  }

  v4 = [*(a1 + 40) vcp_modificationDate];
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 1, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 1);
  }

  v2 = v7;

  if (v2 || ((v8 = ppStmt, [*(a1 + 40) localIdentifier], v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) == 0) ? (v12 = sqlite3_bind_null(v8, 2)) : (v11 = v9, v12 = sqlite3_bind_text(v8, 2, objc_msgSend(v10, "UTF8String"), -1, 0)), v2 = v12, v10, v10, v2))
  {
    v3 = ppStmt;
LABEL_11:
    sqlite3_finalize(v3);
LABEL_12:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = [*(a1 + 40) localIdentifier];
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Failed to update dateModified for asset %@", buf, 0xCu);
      }
    }

    return v2;
  }

  v16 = sqlite3_expanded_sql(ppStmt);
  if (v16)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v20 = 1024;
      v21 = 1284;
      v22 = 2080;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v16);
  }

  v2 = sqlite3_step(ppStmt);
  sqlite3_finalize(ppStmt);
  result = 0;
  if (v2 && v2 != 101)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100042640(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT count(*) FROM Assets WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v8 = sqlite3_expanded_sql(ppStmt);
      if (v8)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v13 = 1024;
          v14 = 1307;
          v15 = 2080;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v8);
      }

      v2 = sqlite3_step(ppStmt);
      if (v2 == 100)
      {
        v2 = 0;
        **(a1 + 48) = sqlite3_column_int(ppStmt, 0) > 0;
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

void sub_100042A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100042A64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042A7C(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT version FROM Assets WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v8 = sqlite3_expanded_sql(ppStmt);
      if (v8)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v17 = 1024;
          v18 = 1336;
          v19 = 2080;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v8);
      }

      v9 = sqlite3_step(ppStmt);
      if (v9 == 100)
      {
        v10 = [NSNumber numberWithInt:sqlite3_column_int(ppStmt, 0)];
        v11 = *(*(a1 + 48) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v9 = sqlite3_step(ppStmt);
      }

      if (v9 == 101)
      {
        v2 = 0;
      }

      else
      {
        v2 = v9;
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100042DD4(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM Results WHERE resultsType=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int(ppStmt, 1, *(a1 + 40)), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 1371;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    v7 = sqlite3_step(ppStmt);
    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

uint64_t sub_100043B5C(sqlite3_stmt *a1, uint64_t a2)
{
  v11 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:a2 format:200 options:0 error:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = v3;
    v6 = v5;
    v7 = sqlite3_bind_blob(a1, 3, [v5 bytes], objc_msgSend(v5, "length"), 0);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = [v4 description];
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Failed to bind NSArray (%@)", buf, 0xCu);
      }
    }

    v7 = 4294967246;
  }

  return v7;
}

id sub_1000457D8(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  v2 = [*(a1 + 32) _queryPropertiesForAsset:*(a1 + 40) assetId:&v19 analysis:&v18];
  v3 = v18;
  v4 = v3;
  if (!v2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    if (!v3)
    {
      v13 = [*(a1 + 56) localIdentifier];
      v2 = [v7 _storeAnalysis:v8 forLocalIdentifier:v13];

      goto LABEL_17;
    }

    v9 = [*(a1 + 32) compareExistingAnalysis:v3 toNewAnalysis:*(a1 + 48) forAsset:*(a1 + 56)];
    if (v9)
    {
      if (v9 == 2)
      {
        v14 = [NSMutableDictionary dictionaryWithDictionary:v4];
        if (v14 && (v2 = [*(a1 + 32) _queryResultsForAssetId:v19 analysis:v14], v2) || (v2 = objc_msgSend(*(a1 + 32), "_deleteAsset:", *(a1 + 40)), v2))
        {

          goto LABEL_2;
        }

        v15 = *(a1 + 32);
        v16 = [*(a1 + 56) localIdentifier];
        v2 = [v15 _storeAnalysis:v14 forLocalIdentifier:v16];

        if (v2)
        {
          goto LABEL_2;
        }
      }

      else if (v9 == 1)
      {
        v2 = [*(a1 + 32) _deleteAsset:*(a1 + 40)];
        if (v2)
        {
          goto LABEL_2;
        }

        v10 = *(a1 + 32);
        v11 = *(a1 + 48);
        v12 = [*(a1 + 56) localIdentifier];
        v2 = [v10 _storeAnalysis:v11 forLocalIdentifier:v12];

LABEL_17:
        if (!v2)
        {
          goto LABEL_21;
        }

        goto LABEL_2;
      }

      v2 = 0;
      goto LABEL_21;
    }

    v2 = [*(a1 + 32) _updateAnalysis:v4 withAnalysis:*(a1 + 48) forAsset:*(a1 + 56) withAssetId:v19];
    goto LABEL_17;
  }

LABEL_2:
  if (MediaAnalysisLogLevel() >= 3)
  {
    v5 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Failed to store asset %@", buf, 0xCu);
    }
  }

LABEL_21:

  return v2;
}

id sub_100045A88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) localIdentifier];
  v5 = [v2 _storeAnalysis:v3 forLocalIdentifier:v4];

  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v6 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = *(a1 + 56);
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Failed to store asset %@", &v9, 0xCu);
      }
    }
  }

  return v5;
}

uint64_t sub_100045D44(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE Assets SET version=(?) WHERE  localIdentifier=(?);", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_22;
  }

  v2 = sqlite3_bind_int64(ppStmt, 1, MediaAnalysisVersion);
  if (v2)
  {
    goto LABEL_22;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 2);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_22;
  }

  v12 = sqlite3_expanded_sql(ppStmt);
  if (v12)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v17 = 1024;
      v18 = 1769;
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v12);
  }

  v13 = sqlite3_step(ppStmt);
  v2 = v13;
  v10 = 0;
  if (v13)
  {
    if (v13 != 101)
    {
LABEL_22:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          v9 = *(a1 + 40);
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Failed to bump version for asset %@", buf, 0xCu);
        }
      }

      v10 = v2;
    }
  }

  sqlite3_finalize(ppStmt);
  return v10;
}

id sub_10004690C(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5 || (v4 = sqlite3_column_blob(a1, a2), [NSData dataWithBytesNoCopy:v4 length:sqlite3_column_bytes(a1 freeWhenDone:a2), 0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v11];
    v7 = v11;
    if (!v6 && MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = [v7 description];
        *buf = 67109378;
        v13 = a2;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Failed to extract NSArray from column %d (%@)", buf, 0x12u);
      }
    }
  }

  return v6;
}

id sub_100046C94(uint64_t a1)
{
  v7 = 0;
  **(a1 + 48) = 0;
  v2 = [*(a1 + 32) _queryPropertiesForAsset:*(a1 + 40) assetId:&v7 analysis:*(a1 + 48)];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    if (!**(a1 + 48))
    {
      return 0;
    }

    v3 = [*(a1 + 32) _queryResultsForAssetId:v7 analysis:?];
    if (!v3)
    {
      return v3;
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v4 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to query asset %@", buf, 0xCu);
    }
  }

  **(a1 + 48) = 0;
  return v3;
}

id sub_100046F64(uint64_t a1)
{
  v2 = [*(a1 + 32) _deleteAsset:*(a1 + 40)];
  if (v2)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v3 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(a1 + 40);
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Failed to delete asset %@", &v6, 0xCu);
      }
    }
  }

  return v2;
}

uint64_t sub_100047224(uint64_t a1)
{
  ppStmt = 0;
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"DELETE FROM Assets WHERE localIdentifier IN (?");
  for (i = 1; i < [*(a1 + 32) count]; ++i)
  {
    [v3 appendString:{@", ?"}];
  }

  [v3 appendString:@";"]);
  v5 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 32) count];
      v8 = ppStmt;
      if (v6 >= v7)
      {
        break;
      }

      v9 = [*(a1 + 32) objectAtIndexedSubscript:v6];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        v12 = sqlite3_bind_text(v8, v6 + 1, [v10 UTF8String], -1, 0);
      }

      else
      {
        v12 = sqlite3_bind_null(v8, v6 + 1);
      }

      v5 = v12;

      ++v6;
      if (v5)
      {
        goto LABEL_20;
      }
    }

    v13 = sqlite3_expanded_sql(ppStmt);
    if (v13)
    {
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v19 = 1024;
        v20 = 1946;
        v21 = 2080;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v13);
    }

    v14 = sqlite3_step(ppStmt);
    if (v14 == 101)
    {
      v5 = 0;
    }

    else
    {
      v5 = v14;
    }
  }

LABEL_20:
  sqlite3_finalize(ppStmt);

  return v5;
}

uint64_t sub_1000476F4(uint64_t a1)
{
  ppStmt = 0;
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"SELECT Assets.localIdentifier, Results.resultsType, Results.results FROM Assets JOIN Results ON Assets.id = Results.assetId WHERE Assets.localIdentifier IN (?");
  for (i = 1; i < [*(a1 + 32) count]; ++i)
  {
    [v3 appendString:{@", ?"}];
  }

  [v3 appendString:@";"]);
  v5 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 32) count];
      v8 = ppStmt;
      if (v6 >= v7)
      {
        break;
      }

      v9 = [*(a1 + 32) objectAtIndexedSubscript:v6];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        v12 = sqlite3_bind_text(v8, v6 + 1, [v10 UTF8String], -1, 0);
      }

      else
      {
        v12 = sqlite3_bind_null(v8, v6 + 1);
      }

      v5 = v12;

      ++v6;
      if (v5)
      {
        goto LABEL_40;
      }
    }

    v13 = sqlite3_expanded_sql(ppStmt);
    if (v13)
    {
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v37 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v38 = 1024;
        LODWORD(v39[0]) = 1988;
        WORD2(v39[0]) = 2080;
        *(v39 + 6) = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v13);
    }

    v14 = sqlite3_step(ppStmt);
    v15 = MediaAnalysisResultsKey;
    while (v14 == 100)
    {
      v16 = ppStmt;
      if (sqlite3_column_type(ppStmt, 0) == 5)
      {
        v17 = 0;
      }

      else
      {
        v17 = [NSString stringWithUTF8String:sqlite3_column_text(v16, 0)];
      }

      v18 = sqlite3_column_int(ppStmt, 1);
      v19 = sub_10004690C(ppStmt, 2);
      v20 = MediaAnalysisResultsTypeToKey();
      if (!v20)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v31 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v31))
          {
            *buf = 138412546;
            v37 = v17;
            v38 = 1024;
            LODWORD(v39[0]) = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[%@] No results key for type %d", buf, 0x12u);
          }
        }

        goto LABEL_39;
      }

      if (!v19)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v32 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v32))
          {
            *buf = 138412546;
            v37 = v17;
            v38 = 2112;
            v39[0] = v20;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[%@] Cannot load result type: %@", buf, 0x16u);
          }
        }

        v19 = 0;
LABEL_39:

        v5 = 4294967278;
        goto LABEL_40;
      }

      v21 = [v2 objectForKeyedSubscript:v17];
      v22 = v21 == 0;

      if (v22)
      {
        v23 = +[NSMutableDictionary dictionary];
        [v2 setObject:v23 forKeyedSubscript:v17];
      }

      v24 = [v2 objectForKeyedSubscript:v17];
      v25 = [v24 objectForKeyedSubscript:v15];
      v26 = v25 == 0;

      if (v26)
      {
        v27 = +[NSMutableDictionary dictionary];
        v28 = [v2 objectForKeyedSubscript:v17];
        [v28 setObject:v27 forKeyedSubscript:v15];
      }

      v29 = [v2 objectForKeyedSubscript:v17];
      v30 = [v29 objectForKeyedSubscript:v15];
      [v30 setObject:v19 forKeyedSubscript:v20];

      v14 = sqlite3_step(ppStmt);
    }

    if (v14 == 101)
    {
      v5 = 0;
    }

    else
    {
      v5 = v14;
    }
  }

LABEL_40:
  sqlite3_finalize(ppStmt);
  v33 = v2;
  **(a1 + 48) = v2;

  return v5;
}

uint64_t sub_100048048(uint64_t a1)
{
  if (![*(a1 + 32) _getBlacklistExpiredCount:*(a1 + 40) count:*(a1 + 48)] && **(a1 + 48) < 1)
  {
    return 0;
  }

  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM Blacklist WHERE date<=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      [v4 timeIntervalSinceReferenceDate];
      v7 = sqlite3_bind_double(v3, 1, v6);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v8 = sqlite3_expanded_sql(ppStmt);
      if (v8)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v14 = 1024;
          v15 = 2062;
          v16 = 2080;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v8);
      }

      v9 = sqlite3_step(ppStmt);
      if (v9 == 101)
      {
        v2 = 0;
      }

      else
      {
        v2 = v9;
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100048590(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "REPLACE INTO Blacklist (localIdentifier, date, count) VALUES ((?), (?), COALESCE((SELECT count FROM Blacklist WHERE localIdentifier=(?)), 0) + 1);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v8 = ppStmt;
      v9 = +[NSDate date];
      v10 = v9;
      if (v9)
      {
        [v9 timeIntervalSinceReferenceDate];
        v12 = sqlite3_bind_double(v8, 2, v11);
      }

      else
      {
        v12 = sqlite3_bind_null(v8, 2);
      }

      v2 = v12;

      if (!v2)
      {
        v13 = ppStmt;
        v14 = *(a1 + 40);
        v15 = v14;
        if (v14)
        {
          v16 = v14;
          v17 = sqlite3_bind_text(v13, 3, [v15 UTF8String], -1, 0);
        }

        else
        {
          v17 = sqlite3_bind_null(v13, 3);
        }

        v2 = v17;

        if (!v2)
        {
          v18 = sqlite3_expanded_sql(ppStmt);
          if (v18)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v23 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v24 = 1024;
              v25 = 2107;
              v26 = 2080;
              v27 = v18;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v18);
          }

          v19 = sqlite3_step(ppStmt);
          if (v19 == 101)
          {
            v2 = 0;
          }

          else
          {
            v2 = v19;
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100048988(uint64_t a1)
{
  v19 = 0;
  if (![*(a1 + 32) _getBlacklistCountForLocalIdentifier:*(a1 + 40) count:&v19])
  {
    pStmt = 0;
    if (v19 < 2)
    {
      if (v19 != 1)
      {
        v4 = 0;
LABEL_16:
        sqlite3_finalize(pStmt);
        return v4;
      }

      v4 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM Blacklist WHERE localIdentifier=(?);", -1, &pStmt, 0);
      if (v4)
      {
        goto LABEL_16;
      }

      v10 = pStmt;
      v11 = *(a1 + 40);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        v14 = sqlite3_bind_text(v10, 1, [v12 UTF8String], -1, 0);
      }

      else
      {
        v14 = sqlite3_bind_null(v10, 1);
      }

      v4 = v14;

      if (v4)
      {
        goto LABEL_16;
      }

      v16 = sqlite3_expanded_sql(pStmt);
      if (!v16)
      {
LABEL_32:
        v17 = sqlite3_step(pStmt);
        if (v17 == 101)
        {
          v4 = 0;
        }

        else
        {
          v4 = v17;
        }

        goto LABEL_16;
      }

      if (!MediaAnalysisEnableDatabaseLog() || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
LABEL_31:
        sqlite3_free(v16);
        goto LABEL_32;
      }

      *buf = 136315650;
      v21 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v22 = 1024;
      v23 = 2149;
      v24 = 2080;
      v25 = v16;
    }

    else
    {
      v4 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE Blacklist SET count=(?) WHERE localIdentifier=(?);", -1, &pStmt, 0);
      if (v4)
      {
        goto LABEL_16;
      }

      v4 = sqlite3_bind_int(pStmt, 1, v19 - 1);
      if (v4)
      {
        goto LABEL_16;
      }

      v5 = pStmt;
      v6 = *(a1 + 40);
      v7 = v6;
      if (v6)
      {
        v8 = v6;
        v9 = sqlite3_bind_text(v5, 2, [v7 UTF8String], -1, 0);
      }

      else
      {
        v9 = sqlite3_bind_null(v5, 2);
      }

      v4 = v9;

      if (v4)
      {
        goto LABEL_16;
      }

      v16 = sqlite3_expanded_sql(pStmt);
      if (!v16)
      {
        goto LABEL_32;
      }

      if (!MediaAnalysisEnableDatabaseLog() || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      *buf = 136315650;
      v21 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v22 = 1024;
      v23 = 2142;
      v24 = 2080;
      v25 = v16;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    goto LABEL_31;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "  [%@] Failed to query blacklist count", buf, 0xCu);
    }
  }

  return 0;
}

uint64_t sub_100048E6C(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM Blacklist WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v8 = sqlite3_expanded_sql(ppStmt);
      if (v8)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v14 = 1024;
          v15 = 2166;
          v16 = 2080;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v8);
      }

      v9 = sqlite3_step(ppStmt);
      if (v9 == 101)
      {
        v2 = 0;
      }

      else
      {
        v2 = v9;
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

void sub_1000492BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000492D4(void *a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(a1[4] + 24), "SELECT count(*) FROM ProcessingStatus WHERE taskID=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, a1[6]), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 2216;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    v7 = sqlite3_step(ppStmt);
    if (v7 == 100)
    {
      *(*(a1[5] + 8) + 24) = sqlite3_column_int(ppStmt, 0);
      v7 = sqlite3_step(ppStmt);
    }

    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

void sub_1000495EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100049604(void *a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(a1[4] + 24), "SELECT count(*) FROM ProcessingStatus WHERE taskID=(?) AND attempts>=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, a1[6]), v2) || (v2 = sqlite3_bind_int64(ppStmt, 2, a1[7]), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 2247;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    v7 = sqlite3_step(ppStmt);
    if (v7 == 100)
    {
      *(*(a1[5] + 8) + 24) = sqlite3_column_int(ppStmt, 0);
      v7 = sqlite3_step(ppStmt);
    }

    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

void sub_10004993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100049954(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT count(*) FROM ProcessingStatus WHERE taskID=(?) AND status=(?) AND attempts=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48)), v2) || (v2 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 56)), v2) || (v2 = sqlite3_bind_int(ppStmt, 3, *(a1 + 64)), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 2279;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    v7 = sqlite3_step(ppStmt);
    if (v7 == 100)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(ppStmt, 0);
      v7 = sqlite3_step(ppStmt);
    }

    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

uint64_t sub_100049CD8(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), [@""SELECT status attempts], -1, &ppStmt, 0;
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = *(a1 + 40);
      v5 = v4;
      if (v4)
      {
        v6 = v4;
        v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v8 = sqlite3_expanded_sql(ppStmt);
        if (v8)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v15 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            v16 = 1024;
            v17 = 2315;
            v18 = 2080;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v8);
        }

        v9 = sqlite3_step(ppStmt);
        v10 = *(a1 + 56);
        if (v9 == 100)
        {
          if (v10)
          {
            **(a1 + 56) = sqlite3_column_int64(ppStmt, 0);
          }

          if (*(a1 + 64))
          {
            **(a1 + 64) = sqlite3_column_int(ppStmt, 1);
          }

          if (*(a1 + 72))
          {
            **(a1 + 72) = sub_100040CB4(ppStmt, 2);
          }

          if (*(a1 + 80))
          {
            **(a1 + 80) = sub_100040CB4(ppStmt, 3);
          }

          v9 = sqlite3_step(ppStmt);
        }

        else
        {
          if (v10)
          {
            *v10 = 0;
          }

          v11 = *(a1 + 64);
          if (v11)
          {
            *v11 = 0;
          }

          if (*(a1 + 72))
          {
            **(a1 + 72) = +[NSDate now];
          }

          if (*(a1 + 80))
          {
            **(a1 + 80) = +[NSDate now];
          }
        }

        if (v9 == 101)
        {
          v2 = 0;
        }

        else
        {
          v2 = v9;
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

void sub_10004A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A320(void *a1)
{
  ppStmt = 0;
  v2 = [NSString stringWithFormat:@"SELECT count(*) FROM ProcessingStatus WHERE taskID=(?) AND status=(?) AND nextAttemptDate<(?)"];;
  v3 = sqlite3_prepare_v2(*(a1[4] + 24), [v2 UTF8String], -1, &ppStmt, 0);
  if (!v3)
  {
    v3 = sqlite3_bind_int64(ppStmt, 1, a1[6]);
    if (!v3)
    {
      v3 = sqlite3_bind_int64(ppStmt, 2, a1[7]);
      if (!v3)
      {
        v4 = ppStmt;
        v5 = +[NSDate now];
        v6 = v5;
        if (v5)
        {
          [v5 timeIntervalSinceReferenceDate];
          v8 = sqlite3_bind_double(v4, 3, v7);
        }

        else
        {
          v8 = sqlite3_bind_null(v4, 3);
        }

        v3 = v8;

        if (!v3)
        {
          LODWORD(v3) = sqlite3_step(ppStmt);
          v9 = sqlite3_expanded_sql(ppStmt);
          if (v9)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v14 = 1024;
              v15 = 2373;
              v16 = 2080;
              v17 = v9;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v9);
          }

          if (v3 == 100)
          {
            *(*(a1[5] + 8) + 24) = sqlite3_column_int(ppStmt, 0);
            LODWORD(v3) = sqlite3_step(ppStmt);
          }

          if (v3 == 101)
          {
            v3 = 0;
          }

          else
          {
            v3 = v3;
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  if (v3)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  return v3;
}

uint64_t sub_10004A760(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  ppStmt = 0;
  v3 = [NSMutableString stringWithFormat:@"SELECT localIdentifier FROM ProcessingStatus "];
  v4 = [NSMutableString stringWithFormat:@"WHERE taskID=(?) AND status=(?) AND nextAttemptDate<(?) "];
  v5 = v4;
  if (*(a1 + 32))
  {
    [v4 appendString:?];
  }

  [v3 appendString:v5];
  [v3 appendFormat:@"ORDER BY id ASC LIMIT (?);"];
  v6 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    goto LABEL_11;
  }

  v6 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
  if (v6)
  {
    goto LABEL_11;
  }

  v6 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 56));
  if (v6)
  {
    goto LABEL_11;
  }

  v7 = ppStmt;
  v8 = +[NSDate now];
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(v7, 3, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(v7, 3);
  }

  v6 = v11;

  if (v6)
  {
    goto LABEL_11;
  }

  v6 = sqlite3_bind_int64(ppStmt, 4, *(a1 + 64));
  if (v6)
  {
    goto LABEL_11;
  }

  v14 = sqlite3_expanded_sql(ppStmt);
  if (v14)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v20 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v21 = 1024;
      v22 = 2417;
      v23 = 2080;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v14);
  }

  v6 = sqlite3_step(ppStmt);
  v15 = VCPLogToOSLogType[4];
  while (v6 == 100)
  {
    v16 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v16, 0)], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Detected bad localIdentifier in ProcessingStatus", buf, 2u);
      }

      v17 = 0;
    }

    else
    {
      [v2 addObject:v17];
    }

    v6 = sqlite3_step(ppStmt);
  }

  if (v6 && v6 != 101)
  {
LABEL_11:

    v2 = 0;
  }

  else
  {
    v6 = 0;
  }

  sqlite3_finalize(ppStmt);
  v12 = v2;
  **(a1 + 72) = v2;

  return v6;
}

uint64_t sub_10004AD70(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  ppStmt = 0;
  v3 = [NSString stringWithFormat:@"SELECT localIdentifier FROM ProcessingStatus WHERE taskID=(?) AND nextAttemptDate<(?) ORDER BY id ASC LIMIT (?)"];;
  v4 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 40));
  if (v4)
  {
    goto LABEL_8;
  }

  v5 = ppStmt;
  v6 = +[NSDate now];
  v7 = v6;
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = sqlite3_bind_double(v5, 2, v8);
  }

  else
  {
    v9 = sqlite3_bind_null(v5, 2);
  }

  v4 = v9;

  if (v4)
  {
    goto LABEL_8;
  }

  v4 = sqlite3_bind_int64(ppStmt, 3, *(a1 + 48));
  if (v4)
  {
    goto LABEL_8;
  }

  v12 = sqlite3_expanded_sql(ppStmt);
  if (v12)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v19 = 1024;
      v20 = 2475;
      v21 = 2080;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v12);
  }

  v4 = sqlite3_step(ppStmt);
  v13 = VCPLogToOSLogType[4];
  while (v4 == 100)
  {
    v14 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v14, 0)], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Detected bad localIdentifier in ProcessingStatus", buf, 2u);
      }

      v15 = 0;
    }

    else
    {
      [v2 addObject:v15];
    }

    v4 = sqlite3_step(ppStmt);
  }

  if (v4 && v4 != 101)
  {
LABEL_8:

    v2 = 0;
  }

  else
  {
    v4 = 0;
  }

  sqlite3_finalize(ppStmt);
  v10 = v2;
  **(a1 + 56) = v2;

  return v4;
}

uint64_t sub_10004B2D8(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [NSMutableString stringWithFormat:@"SELECT localIdentifier FROM ProcessingStatus "];
  v4 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"WHERE taskID=(?) AND status IN (?");
  for (i = 1; i < [*(a1 + 32) count]; ++i)
  {
    [v4 appendString:{@", ?"}];
  }

  [v4 appendFormat:@" AND nextAttemptDate<(?) "]);
  if (*(a1 + 40))
  {
    [v4 appendString:?];
  }

  [v3 appendString:v4];
  [v3 appendFormat:@"ORDER BY id ASC LIMIT (?);"];
  ppStmt = 0;
  v6 = sqlite3_prepare_v2(*(*(a1 + 48) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    goto LABEL_24;
  }

  v6 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
  if (v6)
  {
    goto LABEL_24;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v8)
  {
    v9 = *v24;
    v10 = 2;
    while (2)
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v6 = sqlite3_bind_int64(ppStmt, v10, [*(*(&v23 + 1) + 8 * j) intValue]);
        if (v6)
        {

          goto LABEL_24;
        }

        ++v10;
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 2;
  }

  v12 = ppStmt;
  v13 = +[NSDate now];
  v14 = v13;
  if (v13)
  {
    [v13 timeIntervalSinceReferenceDate];
    v16 = sqlite3_bind_double(v12, v10, v15);
  }

  else
  {
    v16 = sqlite3_bind_null(v12, v10);
  }

  v6 = v16;

  if (v6)
  {
    goto LABEL_24;
  }

  v6 = sqlite3_bind_int64(ppStmt, v10 + 1, *(a1 + 64));
  if (v6)
  {
    goto LABEL_24;
  }

  v19 = sqlite3_expanded_sql(ppStmt);
  if (v19)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v29 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v30 = 1024;
      v31 = 2530;
      v32 = 2080;
      v33 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v19);
  }

  v6 = sqlite3_step(ppStmt);
  v20 = VCPLogToOSLogType[4];
  while (v6 == 100)
  {
    v21 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v21, 0)], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "Detected bad localIdentifier in ProcessingStatus", buf, 2u);
      }

      v22 = 0;
    }

    else
    {
      [v2 addObject:v22];
    }

    v6 = sqlite3_step(ppStmt);
  }

  if (v6 && v6 != 101)
  {
LABEL_24:

    v2 = 0;
  }

  else
  {
    v6 = 0;
  }

  sqlite3_finalize(ppStmt);
  v17 = v2;
  **(a1 + 72) = v2;

  return v6;
}