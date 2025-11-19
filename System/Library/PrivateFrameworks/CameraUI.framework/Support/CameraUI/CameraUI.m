void sub_10000101C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent Running in background", buf, 2u);
  }

  [v3 setExpirationHandler:&stru_100008238];
  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = sub_10000120C;
  v20 = sub_10000121C;
  v21 = 0;
  v5 = [CAMDailySettingsUseCaseEvent alloc];
  v6 = *(a1 + 32);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100001224;
  v13 = &unk_100008260;
  v15 = buf;
  v7 = v3;
  v14 = v7;
  v8 = [(CAMDailySettingsUseCaseEvent *)v5 initWithQueue:v6 andMetricsSubmittedBlock:&v10];
  v9 = *(v17 + 5);
  *(v17 + 5) = v8;

  [*(v17 + 5) submitMetrics];
  _Block_object_dispose(buf, 8);
}

void sub_1000011A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000011BC(id a1)
{
  v1 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100002638();
  }
}

uint64_t sub_10000120C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001224(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent completed", v6, 2u);
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return [*(a1 + 32) setTaskCompleted];
}

void sub_100001560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000157C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _metricQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001670;
    block[3] = &unk_1000082B0;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(v4, block);

    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000266C();
    }
  }
}

void sub_100001670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.camera", "Nebula");
  v3 = v2;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000266C();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent submitMetrics completionSync called", buf, 2u);
  }

  if ([WeakRetained isMetricSubmissionsCompleted])
  {
    v4 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent submitMetrics completionSync completed", v5, 2u);
    }

    v3 = [WeakRetained _completion];
    (*(v3 + 16))();
LABEL_10:
  }
}

void sub_100001964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(a1);
}

void sub_100001994(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v6 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000026D4();
    }

    goto LABEL_7;
  }

  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24) == 1)
  {
    v6 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000026A0();
    }

LABEL_7:

    goto LABEL_13;
  }

  *(v5 + 24) = 1;
  v7 = &stru_100008458;
  if (v3)
  {
    v7 = v3;
  }

  v8 = v7;
  v9 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent submitCameraCapturePreferencesWithCompletion dispatched with info %{public}@", buf, 0xCu);
  }

  v10 = [WeakRetained _metricQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001BB4;
  block[3] = &unk_1000082D8;
  objc_copyWeak(&v15, (a1 + 48));
  v13 = v8;
  v14 = *(a1 + 32);
  v11 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v15);
LABEL_13:
}

void sub_100001BB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = os_log_create("com.apple.camera", "Nebula");
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent submitCameraCapturePreferencesWithCompletion completed %{public}@", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = @"Config";
    v8 = v6;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    +[CAMDailySettingsUseCaseEvent getCameraCaptureStreamID];
    PPSSendTelemetry();
    [WeakRetained set_numberOfMetricsSubmitted:{objc_msgSend(WeakRetained, "_numberOfMetricsSubmitted") + 1}];
    (*(*(a1 + 40) + 16))();
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100002708();
  }
}

void sub_100001D44(id a1)
{
  v2 = [@"Button" copy];
  v1 = [@"CaptureButtonConfig" copy];
  qword_10000C4B8 = PPSCreateTelemetryIdentifier();
}

void sub_100001E64(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100001ED0(id a1)
{
  qword_10000C4D0 = objc_alloc_init(CAMFirstUnlockProtection);

  _objc_release_x1();
}

void sub_1000022AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000022C8(uint64_t a1)
{
  result = MKBDeviceUnlockedSinceBoot();
  if (result == 1)
  {
    notify_cancel(*(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v3 = *(a1 + 32);

    return [v3 _performPendingBlocksAfterFirstUnlock];
  }

  return result;
}

uint64_t sub_100002330(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

intptr_t sub_10000248C(uint64_t a1)
{
  [*(a1 + 32) _performPendingBlocksAfterFirstUnlock];
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8) ^ 1;
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CAMNebulaDaemon);
  v2 = os_transaction_create();
  v3 = +[CAMFirstUnlockProtection sharedInstance];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10000262C;
  v12 = &unk_1000083B8;
  v4 = v1;
  v13 = v4;
  v14 = v2;
  v5 = v2;
  [v3 performAfterFirstUnlock:&v9];

  v6 = [v4 _queue];
  [CAMDailySettingsUseCaseEvent registerForBackgroundTaskWithQueue:v6];

  objc_autoreleasePoolPop(v0);
  v7 = +[NSRunLoop currentRunLoop];
  [v7 run];

  return 0;
}