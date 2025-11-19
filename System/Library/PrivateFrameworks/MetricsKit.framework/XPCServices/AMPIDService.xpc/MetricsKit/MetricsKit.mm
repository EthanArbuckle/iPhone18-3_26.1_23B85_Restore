void sub_10000123C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000127C(uint64_t a1)
{
  v2 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService XPC connection invalidated", buf, 2u);
  }

  v3 = dispatch_time(0, 30000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001358;
  block[3] = &unk_1000204A0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100001358(uint64_t a1)
{
  objc_initWeak(&location, *(*(*(a1 + 32) + 8) + 40));
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = objc_loadWeakRetained(&location);
  if (!v4)
  {
    v5 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService shared secret store released", v6, 2u);
    }
  }

  objc_destroyWeak(&location);
}

void sub_10000141C(id a1)
{
  v1 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "MetricsKit: AMPIDService XPC connection from client interrupted!", v2, 2u);
  }
}

void setupSandbox()
{
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundleIdentifier];

  [v1 UTF8String];
  if (_set_user_dir_suffix())
  {
    v2 = NSTemporaryDirectory();
  }

  else
  {
    v3 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to setup dir suffix for sandbox environment (error code: %d)", v5, 8u);
    }
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService XPC Service started", v7, 2u);
  }

  setupSandbox();
  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

void sub_100001E14(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v9 = 0;
  v3 = [v2 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v9];
  v4 = v9;
  v5 = [*(a1 + 32) metricsKitBundleIdentifier];
  v6 = [v3 URLByAppendingPathComponent:v5];

  v7 = [v6 path];
  v8 = qword_1000280D8;
  qword_1000280D8 = v7;
}

uint64_t sub_100002C1C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id MTMetricsKitOSLog()
{
  if (qword_1000280E8 != -1)
  {
    sub_100012C60();
  }

  v1 = qword_1000280E0;

  return v1;
}

void sub_100002DC4(id a1)
{
  qword_1000280E0 = os_log_create("com.apple.amp-ae-eng.MetricsKit", "general");

  _objc_release_x1();
}

id MTError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v9 = &a9;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_100002E60(a1, a2, v9);

  return v10;
}

id sub_100002E60(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = [[NSString alloc] initWithFormat:v5 arguments:a3];
  }

  else
  {
    v6 = @"MetricsKit error";
  }

  v7 = [NSError alloc];
  v11 = NSLocalizedDescriptionKey;
  v12 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v7 initWithDomain:@"MTError" code:a1 userInfo:v8];

  return v9;
}

id MTConfigurationError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v9 = sub_100002E60(a1, a2, &a9);
    v10 = v9;
    if (byte_1000280F0 == 1)
    {
      v11 = [v9 localizedDescription];
      [NSException raise:@"MTException" format:@"%@", v11, &a9];
LABEL_4:

      goto LABEL_9;
    }

    v12 = atomic_load(&dword_1000280F4);
    if (v12 <= 199)
    {
      atomic_fetch_add_explicit(&dword_1000280F4, 1u, memory_order_relaxed);
      v11 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [v10 code];
        v14 = [v10 localizedDescription];
        *buf = 134218242;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MetricsKit: Error occurred with code %ld: %@", buf, 0x16u);
      }

      goto LABEL_4;
    }
  }

  else
  {
    v10 = sub_100002E60(a1, 0, 0);
  }

LABEL_9:

  return v10;
}

id MTWrappedError(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [a3 mutableCopy];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 objectForKeyedSubscript:NSLocalizedDescriptionKey];

    if (!v8)
    {
      v9 = [v5 localizedDescription];
      [v7 setObject:v9 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    [v7 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v10 = [[NSError alloc] initWithDomain:@"MTError" code:a2 userInfo:v7];

  return v10;
}

void sub_1000036FC(uint64_t a1)
{
  v2 = +[MTPromise _globalPromiseStorage];
  [v2 addObject:*(a1 + 32)];
}

void sub_100004130(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000414C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [MTPromise promiseWithResult:v8];
  }
  v7 = ;
  [objc_opt_class() _finishPromise:*(a1 + 32) withPromise:v7];
}

void sub_100004314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100004330(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [MTPromise promiseWithError:v5];
  }
  v7 = ;
  [objc_opt_class() _finishPromise:*(a1 + 32) withPromise:v7];
}

void sub_1000047B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[MTPromise _globalPromiseStorage];
  [v1 removeObject:WeakRetained];
}

void sub_1000048DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000048F8(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    v7 = [NSNumber numberWithBool:1];
    [v6 finishWithResult:v7 error:v8];
  }

  else
  {
    [WeakRetained finishWithResult:0 error:v8];
  }
}

void sub_100004A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004A74(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithResult:v6 error:v5];
}

void sub_100004BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004BCC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained finishWithError:v5];
  }

  else
  {
    [WeakRetained finishWithResult:&__kCFBooleanTrue];
  }
}

void sub_100004D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004D28(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v9 | v5)
  {
    if (v9)
    {
      [WeakRetained finishWithResult:?];
    }

    else
    {
      [WeakRetained finishWithError:v5];
    }
  }

  else
  {
    v8 = +[NSNull null];
    [v7 finishWithResult:v8];
  }
}

void sub_10000507C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10000509C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) addObject:v3];

  v4 = *(a1 + 64);
  if (v4 == [*(a1 + 40) count] - 1)
  {
    [*(a1 + 48) finishWithResult:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _configureAllPromise:*(a1 + 48) withResults:*(a1 + 32) promises:*(a1 + 40) currentPromiseIndex:*(a1 + 64) + 1];
  }
}

void sub_100005140(uint64_t a1, void *a2)
{
  v5 = a2;
  for (i = *(a1 + 48) + 1; i < [*(a1 + 32) count]; ++i)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
    [v4 cancel];
  }

  [*(a1 + 40) finishWithError:v5];
}

void sub_100005360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100005384(uint64_t a1, void *a2)
{
  v5 = a2;
  for (i = *(a1 + 48) + 1; i < [*(a1 + 32) count]; ++i)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
    [v4 cancel];
  }

  [*(a1 + 40) finishWithResult:v5];
}

void sub_100005418(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 56);
  if (v4 == [*(a1 + 32) count] - 1)
  {
    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    [WeakRetained _configureAnyPromise:*(a1 + 40) withPromises:*(a1 + 32) currentPromiseIndex:*(a1 + 56) + 1];
  }
}

void sub_100005680(id a1)
{
  qword_1000280F8 = objc_alloc_init(NSMutableSet);

  _objc_release_x1();
}

void sub_100005700(id a1)
{
  qword_100028108 = dispatch_queue_create("com.apple.MetricsKit.globalPromiseStorageAccessQueue", 0);

  _objc_release_x1();
}

void sub_100005D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak((v11 - 24));
  _Unwind_Resume(a1);
}

void sub_100005D50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleUserRecordID:v5];

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 container];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100005EC8;
    v14[3] = &unk_100020878;
    objc_copyWeak(&v15, (a1 + 32));
    [v13 accountInfoWithCompletionHandler:v14];

    objc_destroyWeak(&v15);
    goto LABEL_8;
  }

  v8 = [v6 domain];
  if (![v8 isEqual:CKErrorDomain])
  {
    goto LABEL_5;
  }

  v9 = [v7 code];

  if (v9 == 9)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 handleUserRecordID:0];
LABEL_5:
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 handleEngineStartedWithError:v7];

LABEL_8:
}

void sub_100005EC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_8:
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleEngineStartedWithError:v8];

    goto LABEL_9;
  }

  if ([v5 accountStatus] == 1)
  {
    if (([v5 supportsDeviceToDeviceEncryption] & 1) == 0)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 container];
      v11 = [v10 containerIdentifier];
      v8 = MTError(702, @"iCloud account for container %@ doesn't support device to device encryption", v12, v13, v14, v15, v16, v17, v11);

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v23 = [v5 accountStatus];
    v8 = MTError(701, @"iCloud account is not available. Account status: %ld", v24, v25, v26, v27, v28, v29, v23);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v18 = objc_loadWeakRetained((a1 + 32));
  v19 = [v18 zoneID];

  v20 = objc_loadWeakRetained((a1 + 32));
  v21 = [v20 container];
  v22 = [v21 privateCloudDatabase];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000060CC;
  v31[3] = &unk_100020850;
  v8 = v19;
  v32 = v8;
  objc_copyWeak(&v33, (a1 + 32));
  [v22 fetchRecordZoneWithID:v8 completionHandler:v31];

  objc_destroyWeak(&v33);
LABEL_9:
}

void sub_1000060CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if (![v7 isEqual:CKErrorDomain])
  {

    goto LABEL_7;
  }

  v8 = [v6 code];

  if (v8 != 26)
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained handleEngineStartedWithError:v6];

    goto LABEL_8;
  }

  v9 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: Creating new zone with ID %@", buf, 0xCu);
  }

  v11 = [[CKRecordZone alloc] initWithZoneID:*(a1 + 32)];
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 container];
  v14 = [v13 privateCloudDatabase];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000062D0;
  v16[3] = &unk_100020828;
  objc_copyWeak(&v17, (a1 + 40));
  [v14 saveRecordZone:v11 completionHandler:v16];

  objc_destroyWeak(&v17);
LABEL_8:
}

void sub_1000062D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEngineStartedWithError:v4];
}

void sub_1000064B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v6)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to fetch records with ID. error %@", &v9, 0xCu);
    }

    v7 = 0;
  }

  [*(a1 + 32) finishWithResult:v7 error:v6];
}

void sub_1000067E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000681C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v7)
  {
    v12 = v7;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [v9 handleFetchedRecords:v10 error:v6];
  }

  else
  {
    [WeakRetained handleFetchedRecords:0 error:v6];
  }

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 removePendingRecordID:*(a1 + 32)];
}

void sub_100006CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006D08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = v3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];

  [WeakRetained handleFetchedRecords:v5 error:0];
}

void sub_100006DB4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeletedRecordID:v3 error:0];
}

void sub_100006E14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pendingRecordIDs];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _endTransaction];
  }
}

void sub_10000750C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v22);
  _Unwind_Resume(a1);
}

void sub_100007578(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSavedRecord:v6 error:v5];
}

void sub_1000075F0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v9 = [v7 recordID];
        [WeakRetained removePendingRecordID:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000079F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007A14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007A2C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100007B34(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountDidChangeWithUserRecordID:*(a1 + 40)];
}

void sub_100007C7C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncEngineDidStartWithError:*(a1 + 40)];
}

void sub_100007F54(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 48) recordID];
      v4 = [v3 recordName];
      v5 = *(a1 + 32);
      *buf = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save record with ID %@ error %@", buf, 0x16u);
    }

    v6 = [*(a1 + 40) delegate];
    [v6 recordWasFailedToSave:*(a1 + 48)];
  }

  else
  {
    v7 = [*(a1 + 40) delegate];
    [v7 recordWasSaved:*(a1 + 48)];
  }
}

void sub_1000081F0(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) delegate];
        [v8 recordWasFetched:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100008468(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 recordWasDeleted:*(a1 + 40)];
}

void sub_1000089D4(id a1)
{
  qword_100028128 = objc_alloc_init(NSObject);

  _objc_release_x1();
}

uint64_t sub_10000965C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_10000970C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_10000985C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_10000991C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100009C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009C98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained startDate];
    [v3 timeIntervalSinceNow];
    v5 = v4 + -0.01;
    v6 = -*(a1 + 48);

    WeakRetained = v7;
    if (v5 < v6)
    {
      (*(*(a1 + 32) + 16))();
      WeakRetained = v7;
    }
  }
}

void sub_100009FFC(id a1)
{
  v3[0] = @"date";
  v3[1] = @"syncWaitTime";
  v3[2] = @"idType";
  v3[3] = @"cachePolicy";
  v3[4] = @"reset";
  v3[5] = @"dsId";
  v3[6] = @"iTunesUserRequired";
  v3[7] = @"appBundleID";
  v3[8] = @"existingOnly";
  v1 = [NSArray arrayWithObjects:v3 count:9];
  v2 = qword_100028130;
  qword_100028130 = v1;
}

void sub_10000BE90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _generateFutureRecordsForScheme:*(a1 + 32) referenceRecord:*(a1 + 40)];
}

BOOL sub_10000C224(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  v6 = [MTIDCloudKitStore spanRecordKeyWithReferenceRecord:v3 serialNumber:v4];
  v7 = [MTIDCloudKitStore updateRecord:v5 isSpanRecord:1 scheme:a1[5] expectedKey:v6 expiration:0 reset:0];

  return v7;
}

void sub_10000C5FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v16 = 0;
  v6 = [v2 recordWithID:v3 qualityOfService:v4 updateRecordMaybe:v5 error:&v16];
  v7 = v16;
  if (v7)
  {
    [*(a1 + 48) finishWithError:v7];
  }

  else if ([v6 mt_isSynchronized] & 1) != 0 || !objc_msgSend(*(a1 + 32), "canSyncBetweenDevices") || *(a1 + 72) <= 0.0 || (*(a1 + 80))
  {
    [*(a1 + 48) finishWithResult:v6];
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:@"secretKey"];
    v9 = [*(a1 + 32) promiseManager];
    v10 = [v9 waitForRecordToSync:v6 timeout:*(a1 + 72)];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C78C;
    v12[3] = &unk_100020BB8;
    v13 = v8;
    v14 = *(a1 + 48);
    v15 = v6;
    v11 = v8;
    [v10 addFinishBlock:v12];
  }
}

void sub_10000C78C(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = a1[4];
  v7 = [v9 objectForKeyedSubscript:@"secretKey"];
  LODWORD(v6) = [v6 isEqualToString:v7];

  v8 = a1[5];
  if (v6)
  {
    [v8 finishWithResult:v9 error:v5];
  }

  else
  {
    [v8 finishWithResult:a1[6]];
  }
}

BOOL sub_10000CFE0(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [MTIDCloudKitStore keyOfReferenceDate:v4];
  v7 = [MTIDCloudKitStore updateRecord:v5 isSpanRecord:0 scheme:*(a1 + 40) expectedKey:v6 expiration:0 reset:*(a1 + 49)];

  return v7;
}

BOOL sub_10000D1F0(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = +[MTIDCloudKitStore spanRecordKeyWithReferenceRecord:serialNumber:](MTIDCloudKitStore, "spanRecordKeyWithReferenceRecord:serialNumber:", v4, [v5 serialNumber]);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) endDate];
  v10 = [MTIDCloudKitStore updateRecord:v6 isSpanRecord:1 scheme:v8 expectedKey:v7 expiration:v9 reset:0];

  return v10;
}

id sub_10000D580(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v7 = v5;
    v8 = *v30;
    *&v6 = 138412546;
    v27 = v6;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v4 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * i), v27}];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 recordType];
          v13 = [v12 isEqualToString:@"MT_IDSecret"];

          if (v13)
          {
            v14 = [v11 recordID];
            v15 = [v14 recordName];
            v16 = [v15 hasPrefix:@"MT_ID"];

            if (v16)
            {
              [v11 mt_setSynchronized:1];
              v17 = [*(a1 + 32) localDB];
              v28 = 0;
              v18 = [v17 writeRecord:v11 error:&v28];
              v19 = v28;

              if ((v18 & 1) == 0)
              {
                v20 = MTMetricsKitOSLog();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v21 = [v11 recordID];
                  [v21 recordName];
                  v23 = v22 = a1;
                  *buf = v27;
                  v35 = v23;
                  v36 = 2112;
                  v37 = v19;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);

                  a1 = v22;
                  goto LABEL_14;
                }

                goto LABEL_15;
              }
            }

            else
            {
              v19 = [*(a1 + 32) syncEngine];
              v20 = [v11 recordID];
              v33 = v20;
              v21 = [NSArray arrayWithObjects:&v33 count:1];
              [v19 deleteRecordsWithIDs:v21];
LABEL_14:

LABEL_15:
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (!v7)
      {
LABEL_19:
        v24 = &__kCFBooleanTrue;
        goto LABEL_21;
      }
    }
  }

  v24 = &__kCFBooleanFalse;
LABEL_21:
  v25 = [MTPromise promiseWithResult:v24];

  return v25;
}

void sub_10000E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E75C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000E774(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) idNamespace];
    v6 = [v3 recordID];
    v7 = [v3 mt_isSynchronized];
    v8 = @"unsynchronized";
    *buf = 138412802;
    v34 = v5;
    v35 = 2112;
    if (v7)
    {
      v8 = @"synchronized";
    }

    v36 = v6;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MetricsKit: Loaded reference record for scheme %@ with id %@, synchronized: %@", buf, 0x20u);
  }

  if ([*(a1 + 32) lifespan] < 1)
  {
    v10 = [v3 mt_secretValue];
    v14 = -[MTIDSecret initWithValue:effectiveDate:expirationDate:isSynchronize:]([MTIDSecret alloc], "initWithValue:effectiveDate:expirationDate:isSynchronize:", v10, 0, 0, [v3 mt_isSynchronized]);
    if ([*(a1 + 48) canSyncBetweenDevices])
    {
      v16 = [*(a1 + 48) localDB];
      v17 = [v16 syncStatusCode];
      [(MTIDSecret *)v14 setSyncStatusCode:v17];
    }

    v18 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [*(a1 + 32) idNamespace];
      *buf = 138412290;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "MetricsKit: Returning secret for scheme %@", buf, 0xCu);
    }

    v15 = [MTPromise promiseWithResult:v14];
    goto LABEL_14;
  }

  v9 = [MTIDCloudKitStore referenceDateOfRecord:v3];
  if (v9 || (v9 = *(a1 + 40)) != 0)
  {
    v10 = v9;
    v11 = [MTIDSpan spanForScheme:*(a1 + 32) date:*(a1 + 40) referenceDate:v9];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(a1 + 48) generateFutureRecordsForScheme:*(a1 + 32) referenceRecord:v3];
    v14 = [*(a1 + 48) spanRecordForScheme:*(a1 + 32) span:*(*(*(a1 + 56) + 8) + 40) timeout:*(a1 + 72) existingOnly:25 qualityOfService:v3 referenceRecord:*(a1 + 64)];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000EB6C;
    v29[3] = &unk_100020C80;
    v30 = *(a1 + 32);
    v31 = v3;
    v32 = *(a1 + 48);
    v15 = [(MTIDSecret *)v14 thenWithBlock:v29];

LABEL_14:
    goto LABEL_15;
  }

  v21 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [*(a1 + 32) idNamespace];
    *buf = 138412290;
    v34 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "MetricsKit: Reference date is null, returning error. Scheme: %@", buf, 0xCu);
  }

  v10 = MTError(703, @"Namespace date is null, are you sending multiple reset requests too quickly?", v23, v24, v25, v26, v27, v28, v29[0]);
  v15 = [MTPromise promiseWithError:v10];
LABEL_15:

  return v15;
}

id sub_10000EB6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) idNamespace];
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MetricsKit: Span record obtained for scheme %@", buf, 0xCu);
  }

  v6 = [*(a1 + 40) mt_secretValue];
  v7 = [v3 mt_secretValue];
  v8 = [NSString stringWithFormat:@"%@%@", v6, v7];

  v9 = [MTIDSecret alloc];
  v10 = [*(*(*(a1 + 56) + 8) + 40) startDate];
  v11 = [*(*(*(a1 + 56) + 8) + 40) endDate];
  if ([*(a1 + 40) mt_isSynchronized])
  {
    v12 = [v3 mt_isSynchronized];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(MTIDSecret *)v9 initWithValue:v8 effectiveDate:v10 expirationDate:v11 isSynchronize:v12];

  if ([*(a1 + 48) canSyncBetweenDevices])
  {
    v14 = [*(a1 + 48) localDB];
    v15 = [v14 syncStatusCode];
    [(MTIDSecret *)v13 setSyncStatusCode:v15];
  }

  v16 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [*(a1 + 32) idNamespace];
    *buf = 138412290;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "MetricsKit: Returning secret for scheme %@", buf, 0xCu);
  }

  v18 = [MTPromise promiseWithResult:v13];

  return v18;
}

void sub_10000F210(id *a1)
{
  v2 = [a1[4] generatedDates];
  [v2 removeAllObjects];

  v3 = +[NSMutableArray array];
  v15 = [a1[5] objectForKeyedSubscript:@"dsId"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a1[6];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [a1[4] referenceRecordForScheme:v8 dsId:v15 date:0 reset:0 timeout:0 existingOnly:-1 qualityOfService:0.0];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10000F4E4;
        v18[3] = &unk_100020D10;
        v18[4] = a1[4];
        v18[5] = v8;
        [v9 addSuccessBlock:v18];
        [v3 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v10 = [a1[4] syncEngine];
  v11 = [a1[4] localDB];
  v12 = [v11 pendingRecordIDs];
  [v10 saveRecordsWithIDs:v12 qualityOfService:-1];

  if ([v3 count])
  {
    v13 = [MTPromise promiseWithAll:v3];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000F578;
    v16[3] = &unk_100020D38;
    v17 = a1[7];
    [v13 addFinishBlock:v16];
  }

  else
  {
    [a1[7] finishWithResult:&__kCFBooleanTrue];
  }
}

void sub_10000F4E4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 mt_isSynchronized])
  {
    v3 = [*(a1 + 32) syncEngine];
    v4 = [v5 recordID];
    [v3 fetchRecordWithID:v4];
  }

  [*(a1 + 32) generateFutureRecordsForScheme:*(a1 + 40) referenceRecord:v5];
}

id sub_10000F578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = &__kCFBooleanTrue;
  }

  return [v4 finishWithResult:v5 error:a3];
}

id sub_10000F6E0(id a1, CKRecord *a2)
{
  v2 = a2;
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(CKRecord *)v2 objectForKeyedSubscript:@"secretKey"];
  [v3 setObject:v4 forKeyedSubscript:@"key"];

  v5 = [(CKRecord *)v2 mt_secretValue];
  [v3 setObject:v5 forKeyedSubscript:@"value"];

  v6 = [(CKRecord *)v2 mt_isSynchronized];
  v7 = [NSNumber numberWithBool:v6];
  [v3 setObject:v7 forKeyedSubscript:@"isSynchronized"];

  v8 = [v3 copy];

  return v8;
}

void sub_10000FB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000FBC8(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 finishWithResult:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = [v5 dict];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];

    [v7 removeObject:v8];
    objc_sync_exit(v5);
  }
}

void sub_10000FE00(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) finishWithResult:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000129A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = [v6 debugInfo];
    [v4 addObject:v5];
  }
}