id MTMetricsKitOSLog()
{
  if (MTMetricsKitOSLog_onceToken != -1)
  {
    MTMetricsKitOSLog_cold_1();
  }

  v1 = MTDefaultOSLog;

  return v1;
}

void sub_258F4D89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F4DE54(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = [v2 name];
    v4 = [v3 isEqualToString:@"NSUnknownKeyException"];

    if (v4)
    {

      objc_end_catch();
      JUMPOUT(0x258F4DE00);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_258F4E7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258F50998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F51144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_258F51F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F544D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F58AD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void _handleDarwinNotification(uint64_t a1, void *a2, const __CFString *a3)
{
  v4 = a2;
  if (CFStringCompare(a3, @"MTIDServiceClearLocalDataNotification", 0))
  {
    if (CFStringCompare(a3, @"MTIDServiceResetIDsNotification", 0))
    {
      if (CFStringCompare(a3, @"MTIDServiceGetSecretsNotification", 0))
      {
        if (CFStringCompare(a3, @"MTIDServiceGetIDsNotification", 0))
        {
          if (CFStringCompare(a3, @"MTIDServiceGetConfigNotification", 0) == kCFCompareEqualTo)
          {
            [v4 _getConfig];
          }
        }

        else
        {
          [v4 _getIDs];
        }
      }

      else
      {
        [v4 _getSecrets];
      }
    }

    else
    {
      [v4 _resetIDs];
    }
  }

  else
  {
    [v4 _clearLocalData];
  }
}

void sub_258F5ED10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
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

  v10 = _MTError(a1, a2, v9);

  return v10;
}

id _MTError(uint64_t a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a2;
    v7 = [[v5 alloc] initWithFormat:v6 arguments:a3];
  }

  else
  {
    v7 = @"MetricsKit error";
  }

  v8 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v8 initWithDomain:@"MTError" code:a1 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id MTConfigurationError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = _MTError(a1, a2, &a9);
    v10 = v9;
    if (_exceptionsEnabled == 1)
    {
      v11 = MEMORY[0x277CBEAD8];
      v12 = [v9 localizedDescription];
      [v11 raise:@"MTException" format:{@"%@", v12, &a9}];
LABEL_4:

      goto LABEL_9;
    }

    v13 = atomic_load(MTConfigurationError_logCount);
    if (v13 <= 199)
    {
      atomic_fetch_add_explicit(MTConfigurationError_logCount, 1u, memory_order_relaxed);
      v12 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = [v10 code];
        v15 = [v10 localizedDescription];
        *buf = 134218242;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_258F4B000, v12, OS_LOG_TYPE_ERROR, "MetricsKit: Error occurred with code %ld: %@", buf, 0x16u);
      }

      goto LABEL_4;
    }
  }

  else
  {
    v10 = _MTError(a1, 0, 0);
  }

LABEL_9:
  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

id MTWrappedError(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [a3 mutableCopy];
  v7 = v6;
  if (v5)
  {
    v8 = *MEMORY[0x277CCA450];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    if (!v9)
    {
      v10 = [v5 localizedDescription];
      [v7 setObject:v10 forKeyedSubscript:v8];
    }

    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MTError" code:a2 userInfo:v7];

  return v11;
}

void sub_258F68650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258F6A06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F6D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _bucketItemComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"start"];
  v6 = [v4 objectForKeyedSubscript:@"start"];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_258F721B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_258F73BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__HealthKitFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HealthKit.framework/HealthKit", 1);
  HealthKitFramework_sHandle = result;
  return result;
}

uint64_t __MTMetricsKitOSLog_block_invoke()
{
  MTDefaultOSLog = os_log_create("com.apple.amp-ae-eng.MetricsKit", "general");

  return MEMORY[0x2821F96F8]();
}

void sub_258F75E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F8019C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258F82880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak((v11 - 24));
  _Unwind_Resume(a1);
}

void sub_258F83348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F83814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F84070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v22);
  _Unwind_Resume(a1);
}

void sub_258F8455C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258F89D0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_258F89EF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_258F8A4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F8A634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F8A78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F8A8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258F8AC58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_258F8AF3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_258F8B600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}