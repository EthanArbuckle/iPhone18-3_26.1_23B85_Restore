id LogCategory_Unspecified()
{
  if (LogCategory_Unspecified_onceToken != -1)
  {
    LogCategory_Unspecified_cold_1();
  }

  v1 = LogCategory_Unspecified_log;

  return v1;
}

void sub_24A2F00F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A2F1574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, id a36)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a36);
  _Unwind_Resume(a1);
}

void sub_24A2F2604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A2F4BC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_24A2F595C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_24A2F5CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_24A2F5ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2F6750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t bitCount(unint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    do
    {
      result += v1 & 1;
      v2 = v1 > 1;
      v1 >>= 1;
    }

    while (v2);
  }

  return result;
}

void sub_24A2F97E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void accountChanged()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_24A2EE000, v0, OS_LOG_TYPE_DEFAULT, "FMOwnerAccount: CFNotificationCenterRef Account changed", v2, 2u);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"accountChangedNotification" object:0];
}

void sub_24A2FC318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A2FCFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CKVOBlockHelper *KVOBlockHelperForObject(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_getAssociatedObject(v3, &KVO);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2 == 0;
  }

  if (!v5)
  {
    v4 = [[CKVOBlockHelper alloc] initWithObject:v3];
    objc_setAssociatedObject(v3, &KVO, v4, 0x301);
  }

  return v4;
}

void sub_24A2FE26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t nanosecondTimestamp()
{
  if (onceToken != -1)
  {
    nanosecondTimestamp_cold_1();
  }

  return mach_absolute_time() * s_timebase_info / *algn_27EF3DE94;
}

void sub_24A2FFED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A300268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_24A3005A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _fmAlertCFCallback(const void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  v5 = +[FMAlertManager sharedInstance];
  v6 = [v5 activeAlerts];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (a2 == 1)
  {
    v12 = LogCategory_Unspecified();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 alertId];
      v25 = 138412290;
      v26 = v13;
      _os_log_impl(&dword_24A2EE000, v12, OS_LOG_TYPE_INFO, "Alternate button activated for alert %@", &v25, 0xCu);
    }

    v14 = [v7 alternateButtonAction];

    if (v14)
    {
      v11 = [v7 alternateButtonAction];
      goto LABEL_11;
    }
  }

  else if (!a2)
  {
    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 alertId];
      v25 = 138412290;
      v26 = v9;
      _os_log_impl(&dword_24A2EE000, v8, OS_LOG_TYPE_INFO, "Default button activated for alert %@", &v25, 0xCu);
    }

    v10 = [v7 defaultButtonAction];

    if (v10)
    {
      v11 = [v7 defaultButtonAction];
LABEL_11:
      v15 = v11;
      (*(v11 + 16))();
    }
  }

  v16 = +[FMAlertManager sharedInstance];
  v17 = [v16 activeAlerts];
  [v17 removeObjectForKey:v4];

  if ([v7 category])
  {
    v18 = +[FMAlertManager sharedInstance];
    v19 = [v18 activeCFNotificationsByCategory];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "category")}];
    [v19 removeObjectForKey:v20];
  }

  v21 = +[FMXPCTransactionManager sharedInstance];
  v22 = +[FMAlertManager sharedInstance];
  v23 = [v22 _xpcTransactionNameFor:v7];
  [v21 endTransaction:v23];

  CFRelease(a1);
  v24 = *MEMORY[0x277D85DE8];
}

void FMReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = [v5 defaultCenter];
  [v7 postNotificationName:kFMReachabilityChangedNotification object:v6];

  objc_autoreleasePoolPop(v4);
}

id LogCategory_APS()
{
  if (LogCategory_APS_onceToken != -1)
  {
    LogCategory_APS_cold_1();
  }

  v1 = LogCategory_APS_log;

  return v1;
}

id LogCategory_FMRunLoopMonitor()
{
  if (LogCategory_FMRunLoopMonitor_onceToken != -1)
  {
    LogCategory_FMRunLoopMonitor_cold_1();
  }

  v1 = LogCategory_FMRunLoopMonitor_log;

  return v1;
}

id LogCategory_FMSynchronizer()
{
  if (LogCategory_FMSynchronizer_onceToken != -1)
  {
    LogCategory_FMSynchronizer_cold_1();
  }

  v1 = LogCategory_FMSynchronizer_log;

  return v1;
}

id LogCategory_FMXPCActivity()
{
  if (LogCategory_FMXPCActivity_onceToken != -1)
  {
    LogCategory_FMXPCActivity_cold_1();
  }

  v1 = LogCategory_FMXPCActivity_log;

  return v1;
}

id LogCategory_FMXPCBridge()
{
  if (LogCategory_FMXPCBridge_onceToken != -1)
  {
    LogCategory_FMXPCBridge_cold_1();
  }

  v1 = LogCategory_FMXPCBridge_log;

  return v1;
}

id LogCategory_Networking()
{
  if (LogCategory_Networking_onceToken != -1)
  {
    LogCategory_Networking_cold_1();
  }

  v1 = LogCategory_Networking_log;

  return v1;
}

id LogCategory_NetworkingVerbose()
{
  if (LogCategory_NetworkingVerbose_onceToken != -1)
  {
    LogCategory_NetworkingVerbose_cold_1();
  }

  v1 = LogCategory_NetworkingVerbose_log;

  return v1;
}

id LogCategory_ServerError()
{
  if (LogCategory_ServerError_onceToken != -1)
  {
    LogCategory_ServerError_cold_1();
  }

  v1 = LogCategory_ServerError_log;

  return v1;
}

id LogCategory_SharedFileContainer()
{
  if (LogCategory_SharedFileContainer_onceToken != -1)
  {
    LogCategory_SharedFileContainer_cold_1();
  }

  v1 = LogCategory_SharedFileContainer_log;

  return v1;
}