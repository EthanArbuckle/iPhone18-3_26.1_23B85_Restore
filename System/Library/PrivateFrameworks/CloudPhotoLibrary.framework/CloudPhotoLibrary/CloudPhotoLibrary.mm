uint64_t BatteryStateChanged(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536723200)
  {
    return [CPLBatteryMonitor _updateBatteryWithBatteryEntry:a2];
  }

  return result;
}

id __CPLSchedulerOSLogDomain()
{
  if (__CPLSchedulerOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLSchedulerOSLogDomain_onceToken, &__block_literal_global_1185);
  }

  v1 = __CPLSchedulerOSLogDomain_result;

  return v1;
}

id CPLCopyDefaultSerialQueueAttributes()
{
  if (CPLCopyDefaultSerialQueueAttributes_onceToken != -1)
  {
    dispatch_once(&CPLCopyDefaultSerialQueueAttributes_onceToken, &__block_literal_global_24578);
  }

  v1 = CPLCopyDefaultSerialQueueAttributes_attr;

  return v1;
}

id __CPLSyncOSLogDomain()
{
  if (__CPLSyncOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLSyncOSLogDomain_onceToken, &__block_literal_global_677);
  }

  v1 = __CPLSyncOSLogDomain_result;

  return v1;
}

void sub_1DC05D4B0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 5);
  objc_exception_rethrow();
}

void sub_1DC05D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC05D6C4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC05D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CPLAppBundleIdentifierForLibraryIdentifier(void *a1)
{
  v1 = CPLContainerIdentifierForLibraryIdentifier(a1);
  v2 = [&unk_1F57EF950 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;

    v1 = v4;
  }

  return v1;
}

__CFString *CPLContainerIdentifierForLibraryIdentifier(void *a1)
{
  v1 = a1;
  if (![v1 hasPrefix:CPLAppLibraryIdentifierPrefix] || (v2 = objc_msgSend(CPLAppLibraryIdentifierPrefix, "length"), v3 = objc_msgSend(v1, "length"), v4 = objc_msgSend(v1, "rangeOfString:options:range:", @"]", 0, v2, v3 - objc_msgSend(CPLAppLibraryIdentifierPrefix, "length")), v4 == 0x7FFFFFFFFFFFFFFFLL) || (v5 = v4, v4 <= objc_msgSend(CPLAppLibraryIdentifierPrefix, "length")))
  {
    v7 = @"com.apple.mobileslideshow";
  }

  else
  {
    v6 = [CPLAppLibraryIdentifierPrefix length];
    v7 = [v1 substringWithRange:{v6, v5 - objc_msgSend(CPLAppLibraryIdentifierPrefix, "length")}];
  }

  return v7;
}

void sub_1DC05E6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1DC05EB68(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC05EB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC05ECC0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC05ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC05EE8C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC05EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC05EF90(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC05EFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CPLShouldLogQOS()
{
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  return __CPLShouldLogQOS_debugQOS;
}

id __CPLManagerOSLogDomain()
{
  if (__CPLManagerOSLogDomain_onceToken != -1)
  {
    __CPLManagerOSLogDomain_cold_1();
  }

  v1 = __CPLManagerOSLogDomain_result;

  return v1;
}

void sub_1DC060DB0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC060DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC061018(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC0612D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DC061698(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void _unregisterConnectedLibraryManager(void *a1)
{
  v1 = a1;
  v2 = _connectedLibraryManagerRegisterQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___unregisterConnectedLibraryManager_block_invoke;
  block[3] = &unk_1E861A940;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void __cpl_dispatch_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id _connectedLibraryManagerRegisterQueue()
{
  if (_connectedLibraryManagerRegisterQueue_onceToken != -1)
  {
    _connectedLibraryManagerRegisterQueue_cold_1();
  }

  v1 = _connectedLibraryManagerRegisterQueue_queue;

  return v1;
}

uint64_t ___connectedLibraryManagerRegisterQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.cpl.connectedlibrarymanagers", 0);
  v1 = _connectedLibraryManagerRegisterQueue_queue;
  _connectedLibraryManagerRegisterQueue_queue = v0;

  _connectedLibraryManagers_unprotected = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ___connectedLibraryManagers_block_invoke(uint64_t a1)
{
  v2 = [_connectedLibraryManagers_unprotected copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t OUTLINED_FUNCTION_15()
{
  result = *(v0 + 32);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_23()
{
  result = *(v0 + 32);
  v2 = *(result + 16);
  return result;
}

void OUTLINED_FUNCTION_27(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_28(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEBUG, a4, &buf, 0x20u);
}

void OUTLINED_FUNCTION_32(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEBUG, a4, &buf, 0x20u);
}

void OUTLINED_FUNCTION_47(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEBUG, a4, &buf, 0x20u);
}

uint64_t OUTLINED_FUNCTION_53(uint64_t result, float a2)
{
  *(v4 - 128) = a2;
  *(v3 + 4) = result;
  *(v4 - 116) = 2114;
  *(v3 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_62@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2 - 1;
  result = *(v3 + 32);
  v5 = *(result + v1);
  return result;
}

uint64_t OUTLINED_FUNCTION_66(uint64_t result, float a2)
{
  *(v3 - 128) = a2;
  *(v2 + 4) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_67(uint64_t result, float a2)
{
  *(v5 - 128) = a2;
  *(v4 + 4) = v2;
  *(v5 - 116) = 2048;
  *(v4 + 14) = result;
  *(v5 - 106) = 2112;
  *(v5 - 104) = v3;
  return result;
}

BOOL OUTLINED_FUNCTION_71(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_72(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_73(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_74(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_75(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t OUTLINED_FUNCTION_80()
{
  v3 = *(v1 + 4056);
  v4 = *(v0 + 3784);

  return objc_opt_class();
}

BOOL OUTLINED_FUNCTION_81(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_82(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_83(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_87(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

id OUTLINED_FUNCTION_88()
{
  v2 = *(v0 + 32);

  return v2;
}

void OUTLINED_FUNCTION_91(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

uint64_t OUTLINED_FUNCTION_92()
{
  v3 = *(v1 + 4056);
  v4 = *(v0 + 3784);

  return objc_opt_class();
}

BOOL OUTLINED_FUNCTION_93(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(a10 + 8 * v12);

  return [v11 setObject:v10 forKeyedSubscript:v14];
}

void OUTLINED_FUNCTION_103(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEBUG, a4, &buf, 0x20u);
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1)
{
  v5 = *(v1 + 48);
  v6 = *(*(v1 + 40) + v2);

  return [v6 setObject:a1 forKey:v5];
}

uint64_t OUTLINED_FUNCTION_105(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 setClasses:a3 forSelector:a4 argumentIndex:1 ofReply:1];
}

BOOL OUTLINED_FUNCTION_106(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id __CPLProxyPullSessionOSLogDomain()
{
  if (__CPLProxyPullSessionOSLogDomain_onceToken != -1)
  {
    __CPLProxyPullSessionOSLogDomain_cold_1();
  }

  v1 = __CPLProxyPullSessionOSLogDomain_result;

  return v1;
}

void __cpl_dispatch_async_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLProxyPushSessionOSLogDomain()
{
  if (__CPLProxyPushSessionOSLogDomain_onceToken != -1)
  {
    __CPLProxyPushSessionOSLogDomain_cold_1();
  }

  v1 = __CPLProxyPushSessionOSLogDomain_result;

  return v1;
}

void __cpl_dispatch_async_block_invoke_1(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

id __CPLSessionOSLogDomain()
{
  if (__CPLSessionOSLogDomain_onceToken != -1)
  {
    __CPLSessionOSLogDomain_cold_1();
  }

  v1 = __CPLSessionOSLogDomain_result;

  return v1;
}

void __cpl_dispatch_async_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id __CPLStorageOSLogDomain()
{
  if (__CPLStorageOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken, &__block_literal_global_225);
  }

  v1 = __CPLStorageOSLogDomain_result;

  return v1;
}

void __cpl_dispatch_async_block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC07E96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

id __CPLStorageOSLogDomain_202()
{
  if (__CPLStorageOSLogDomain_onceToken_204 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_204, &__block_literal_global_205);
  }

  v1 = __CPLStorageOSLogDomain_result_206;

  return v1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC07ED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1DC07EF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC07FB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC0814F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void ___initializePredictionTypes_block_invoke()
{
  v15 = objc_alloc_init(CPLTransferSpeedFormatter);
  v0 = [(CPLTransferSpeedFormatter *)v15 byteCountFormatter];
  v1 = objc_alloc_init(CPLPredictionDateFormatter);
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [[_CPLSyncSessionPredictionType alloc] initWithType:v0 formatter:?];
  [v2 setObject:v4 forKeyedSubscript:@"uploadSize"];
  [v3 addObject:v4];

  v5 = [[_CPLSyncSessionPredictionType alloc] initWithType:v0 formatter:?];
  [v2 setObject:v5 forKeyedSubscript:@"largestResource"];
  [v3 addObject:v5];

  v6 = [[_CPLSyncSessionPredictionType alloc] initWithType:v15 formatter:?];
  [v2 setObject:v6 forKeyedSubscript:@"derivativesSpeed"];
  [v3 addObject:v6];

  v7 = [[_CPLSyncSessionPredictionType alloc] initWithType:v15 formatter:?];
  [v2 setObject:v7 forKeyedSubscript:@"largeDerivativesSpeed"];
  [v3 addObject:v7];

  v8 = [[_CPLSyncSessionPredictionType alloc] initWithType:v15 formatter:?];
  [v2 setObject:v8 forKeyedSubscript:@"uploadSpeed"];
  [v3 addObject:v8];

  v9 = [[_CPLSyncSessionPredictionType alloc] initWithType:v0 formatter:?];
  [v2 setObject:v9 forKeyedSubscript:@"downloadSize"];
  [v3 addObject:v9];

  v10 = [[_CPLSyncSessionPredictionType alloc] initWithType:v1 formatter:?];
  [v2 setObject:v10 forKeyedSubscript:@"lastEvent"];
  [v3 addObject:v10];

  v11 = [v2 copy];
  v12 = _predictionTypes;
  _predictionTypes = v11;

  v13 = [v3 copy];
  v14 = _orderedPredictionTypes;
  _orderedPredictionTypes = v13;
}

void sub_1DC082628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__344(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC082C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

id __CPLPredictorOSLogDomain()
{
  if (__CPLPredictorOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLPredictorOSLogDomain_onceToken, &__block_literal_global_374);
  }

  v1 = __CPLPredictorOSLogDomain_result;

  return v1;
}

void sub_1DC083144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DC0833BC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC0834AC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC0835F4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC083608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CPLRampingResponseResourceReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_46;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_46:
        *(a1 + 8) = v29;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v33 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_42;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __CPLTaskOSLogDomain()
{
  if (__CPLTaskOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken, &__block_literal_global_451);
  }

  v1 = __CPLTaskOSLogDomain_result;

  return v1;
}

id __CPLStorageOSLogDomain_505()
{
  if (__CPLStorageOSLogDomain_onceToken_507 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_507, &__block_literal_global_508);
  }

  v1 = __CPLStorageOSLogDomain_result_509;

  return v1;
}

id __CPLTaskOSLogDomain_619()
{
  if (__CPLTaskOSLogDomain_onceToken_622 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_622, &__block_literal_global_623);
  }

  v1 = __CPLTaskOSLogDomain_result_624;

  return v1;
}

void sub_1DC088384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

id __CPLStoreOSLogDomain_3044()
{
  if (__CPLStoreOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLStoreOSLogDomain_onceToken, &__block_literal_global_1039);
  }

  v1 = __CPLStoreOSLogDomain_result;

  return v1;
}

void sub_1DC088FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__677(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cpl_dispatch_async_block_invoke_682(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC08E2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC08E578(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 42) = 0;
  objc_exception_rethrow();
}

void sub_1DC08FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLTransactionOSLogDomain()
{
  if (__CPLTransactionOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLTransactionOSLogDomain_onceToken, &__block_literal_global_1042);
  }

  v1 = __CPLTransactionOSLogDomain_result;

  return v1;
}

void sub_1DC092E3C(void *a1, int a2)
{
  v4 = 1;
  if (a2 != 1)
  {
    JUMPOUT(0x1DC093024);
  }

  v5 = objc_begin_catch(a1);
  if ([*(v13 + 32) _handleException:v5])
  {
LABEL_14:

    objc_end_catch();
    if (v4)
    {
      JUMPOUT(0x1DC091D94);
    }

    JUMPOUT(0x1DC091A50);
  }

  if (v3)
  {
    if (_CPLSilentLogging)
    {
      v9 = @"failed to re-inject batch";
      goto LABEL_13;
    }

    v6 = __CPLStoreOSLogDomain_3044();
    v7 = objc_claimAutoreleasedReturnValue(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_claimAutoreleasedReturnValue([v3 batch]);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Re-injecting %@ raised an exception: %@", &v14, 0x16u);
    }

    v9 = @"failed to re-inject batch";
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v9 = @"failed to decode extracted batch at launch";
      goto LABEL_13;
    }

    v10 = __CPLStoreOSLogDomain_3044();
    v7 = objc_claimAutoreleasedReturnValue(v10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Failed to decode extracted batch at launch: %@", &v14, 0xCu);
    }

    v9 = @"failed to decode extracted batch at launch";
  }

LABEL_13:
  v11 = objc_claimAutoreleasedReturnValue(+[CPLResetTracker currentTracker]);
  v12 = objc_claimAutoreleasedReturnValue([v11 likelyResetReasonWithImmediateReason:v9]);
  v4 = [*(v13 + 32) resetLocalSyncStateWithCause:v12 error:v2];
  [CPLResetTracker discardTracker:v11];

  goto LABEL_14;
}

uint64_t CPLIsInTestReadonlyMode()
{
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    CPLIsInTestReadonlyMode__readOnlyMode = [v0 BOOLForKey:@"CPLTestReadOnlyMode"];
  }

  return CPLIsInTestReadonlyMode__readOnlyMode;
}

void _CPLStoreFailure(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"CPLAssertStoreException" reason:v1 userInfo:0];
  objc_exception_throw(v2);
}

void _CPLBaseRecordViewFailure(void *a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  +[CPLEngineStoreTransaction currentTransaction];
  v5 = [objc_claimAutoreleasedReturnValue() store];
  v6 = [v4 scopedIdentifier];
  v7 = [v6 scopeIdentifier];
  v8 = [v5 scopes];
  v9 = [v5 cloudCache];
  v10 = [v8 scopeWithIdentifier:v7];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = &propertiesForChangeType__facesProperties;
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v3 baseStorageView];
        *buf = 138412546;
        v50 = v14;
        v51 = 2112;
        v52 = v4;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "No base record in %@ to apply %@ on - missing scope", buf, 0x16u);
      }
    }

    v15 = @"missing scope";
    goto LABEL_7;
  }

  v48 = v3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v48 baseStorageView];
      *buf = 138412802;
      v50 = v17;
      v51 = 2112;
      v52 = v4;
      v53 = 2112;
      v54 = v10;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "No base record in %@ to apply %@ on - scope: %@", buf, 0x20u);
    }
  }

  v18 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v10 scopeType]);
  [v11 addObject:v18];

  v19 = [v8 flagsForScope:v10];
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [v19 arrayDescription];
  v22 = [v21 componentsJoinedByString:@"|"];
  v23 = [v20 initWithFormat:@"flags: %@", v22];
  [v11 addObject:v23];

  v24 = [v10 localIndex];
  if (v24 != [v6 scopeIndex] && objc_msgSend(v6, "scopeIndex"))
  {
    v37 = [v10 cloudIndex];
    if (v37 != [v6 scopeIndex])
    {
      v38 = [v10 cloudIndex];
      v39 = @"invalid index from reset sync";
      v3 = v48;
      if (v38 <= [v6 scopeIndex])
      {
        v40 = [v10 localIndex];
        if (v40 <= [v6 scopeIndex])
        {
          v39 = @"invalid index";
        }
      }

      [v11 addObject:v39];

      v12 = &propertiesForChangeType__facesProperties;
      goto LABEL_39;
    }

    v28 = [v6 copy];
    v26 = 0;
    v3 = v48;
    v12 = &propertiesForChangeType__facesProperties;
  }

  else
  {
    v25 = [v5 idMapping];
    v26 = [v6 copy];
    buf[0] = 0;
    v27 = [v25 cloudScopedIdentifierForLocalScopedIdentifier:v26 isFinal:buf];
    if (v27)
    {
      v28 = v27;
      v30 = @"in ID mapping";
    }

    else
    {
      v28 = [v6 copy];
      v29 = [v25 localScopedIdentifierForCloudScopedIdentifier:v28 isFinal:buf];

      if (v29)
      {
        v30 = @"conflicting ID mapping";
      }

      else
      {
        v30 = @"no ID mapping";
      }

      v26 = v29;
    }

    v12 = &propertiesForChangeType__facesProperties;
    [v11 addObject:v30];

    v3 = v48;
  }

  if (v28)
  {
    v31 = [v9 recordWithScopedIdentifier:v28 isFinal:0];
    v32 = [v9 recordWithScopedIdentifier:v28 isFinal:1];
    v33 = v32;
    v34 = @"in cloud cache";
    if (!v32)
    {
      v34 = @"delete staged in cloud cache";
    }

    v35 = @"not in cloud cache";
    if (v32)
    {
      v35 = @"staged in cloud cache";
    }

    if (v31)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    [v11 addObject:v36];

    v12 = &propertiesForChangeType__facesProperties;
  }

  if (v26 && [v9 hasRecordAcknowledgedByClientWithScopedIdentifier:v26])
  {
    v15 = @"acknowledged by client";
LABEL_7:
    [v11 addObject:v15];
  }

LABEL_39:
  if (![v11 count])
  {
    [v11 addObject:@"no context"];
  }

  if ((v12[51] & 1) == 0)
  {
    v41 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [v11 componentsJoinedByString:@"/"];
      *buf = 138412290;
      v50 = v42;
      _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_ERROR, "Context: %@", buf, 0xCu);
    }
  }

  v43 = objc_alloc(MEMORY[0x1E696AEC0]);
  v44 = objc_opt_class();
  v45 = [v3 redactedDescription];
  v46 = [v11 componentsJoinedByString:@"/"];
  v47 = [v43 initWithFormat:@"missing base %@ in %@ (%@)", v44, v45, v46];

  _CPLStoreFailure(v47);
}

uint64_t __Block_byref_object_copy__883(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLStorageOSLogDomain_909()
{
  if (__CPLStorageOSLogDomain_onceToken_915 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_915, &__block_literal_global_916);
  }

  v1 = __CPLStorageOSLogDomain_result_917;

  return v1;
}

void sub_1DC0992B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1013(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC099640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC099B3C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC099B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1181(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC099D4C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC099D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC099F94(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC099FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09A128(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09A13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09A2A8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09A2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09A52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09A71C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09A914(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC09AF58(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09AF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09B0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09B45C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09B470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09B588(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09B690(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09B7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09B940(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09B954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC09BB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v17 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC09C1D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC09C378(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC09C520(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC09C7E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC09C8F0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC09D118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1DC09D3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v21 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC09DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLTaskOSLogDomain_1342()
{
  if (__CPLTaskOSLogDomain_onceToken_1357 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_1357, &__block_literal_global_128);
  }

  v1 = __CPLTaskOSLogDomain_result_1358;

  return v1;
}

uint64_t __Block_byref_object_copy__1344(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC09E2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke_1362(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC09F75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

id __CPLBatchOSLogDomain()
{
  if (__CPLBatchOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLBatchOSLogDomain_onceToken, &__block_literal_global_1481);
  }

  v1 = __CPLBatchOSLogDomain_result;

  return v1;
}

uint64_t CPLRampingRequestReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(CPLRampingRequestResource);
        [a1 addRequest:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CPLRampingRequestResourceReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __CPLObserverOSLogDomain()
{
  if (__CPLObserverOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLObserverOSLogDomain_onceToken, &__block_literal_global_1731);
  }

  v1 = __CPLObserverOSLogDomain_result;

  return v1;
}

void sub_1DC0A52CC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void sub_1DC0A52E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cpl_dispatch_async_block_invoke_1813(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLNetworkOSLogDomain()
{
  if (__CPLNetworkOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLNetworkOSLogDomain_onceToken, &__block_literal_global_1864);
  }

  v1 = __CPLNetworkOSLogDomain_result;

  return v1;
}

uint64_t CPLRequestClient()
{
  result = _requestBlock;
  if (_requestBlock)
  {
    return (*(_requestBlock + 16))();
  }

  return result;
}

uint64_t CPLRequestClientSetRequestBlock(void *a1)
{
  v1 = [a1 copy];
  v2 = _requestBlock;
  _requestBlock = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void cpllogGreenTea(void *a1, int a2, void *a3)
{
  v8 = a1;
  v5 = a3;
  v6 = v8;
  [v8 UTF8String];
  if (a2)
  {
    ct_green_tea_logger_create();
  }

  else
  {
    ct_green_tea_logger_create_static();
  }

  v7 = getCTGreenTeaOsLogHandle();
  if (v7)
  {
    [v5 UTF8String];
    os_log_with_args();
  }

  if (a2)
  {
    ct_green_tea_logger_destroy();
  }
}

void cpllogGreenTeaReadingPhotosOrVideos()
{
  v0 = callerBundleIdentifier;
  if (callerBundleIdentifier)
  {
    v2 = [MEMORY[0x1E695DF00] now];
    v1 = @"%@ [Photos] : Reading photos or videos";
  }

  else
  {
    if (_prepareLog_onceToken != -1)
    {
      dispatch_once(&_prepareLog_onceToken, &__block_literal_global_1899);
    }

    v0 = bundleIdentifier;
    v2 = [MEMORY[0x1E695DF00] now];
    v1 = @"%@ <%@>[Photos][%@] : Reading photos or videos";
  }

  cpllogGreenTeaWithFormat(v0, 0, v1);
}

void ___prepareLog_block_invoke()
{
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v7 bundleIdentifier];
  v1 = bundleIdentifier;
  bundleIdentifier = v0;

  v2 = [v7 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v3 = applicationName;
  applicationName = v2;

  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 processName];
  v6 = processName;
  processName = v5;
}

void cpllogGreenTeaTransmittingPhotosOrVideos()
{
  v0 = callerBundleIdentifier;
  if (callerBundleIdentifier)
  {
    v2 = [MEMORY[0x1E695DF00] now];
    v1 = @"%@ [Photos] : Transmitting photos or videos";
  }

  else
  {
    if (_prepareLog_onceToken != -1)
    {
      dispatch_once(&_prepareLog_onceToken, &__block_literal_global_1899);
    }

    v0 = bundleIdentifier;
    v2 = [MEMORY[0x1E695DF00] now];
    v1 = @"%@ <%@>[Photos][%@] : Transmitting photos or videos";
  }

  cpllogGreenTeaWithFormat(v0, 0, v1);
}

id __CPLStorageOSLogDomain_2026()
{
  if (__CPLStorageOSLogDomain_onceToken_2028 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_2028, &__block_literal_global_2029);
  }

  v1 = __CPLStorageOSLogDomain_result_2030;

  return v1;
}

void sub_1DC0A84AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2046(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC0A9280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC0A9564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLItemOSLogDomain()
{
  if (__CPLItemOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLItemOSLogDomain_onceToken, &__block_literal_global_243);
  }

  v1 = __CPLItemOSLogDomain_result;

  return v1;
}

uint64_t __Block_byref_object_copy__2535(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLTaskOSLogDomain_2598()
{
  if (__CPLTaskOSLogDomain_onceToken_2600 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_2600, &__block_literal_global_2601);
  }

  v1 = __CPLTaskOSLogDomain_result_2602;

  return v1;
}

void sub_1DC0AE8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2613(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC0B0044(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC0B063C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC0B0824(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC0B0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CPLGetAppBoundaryKey(void *a1)
{
  v1 = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CPLGetAppBoundaryKey_block_invoke;
  v9[3] = &unk_1E861BF70;
  v10 = v1;
  v2 = v9;
  v3 = v1;
  v4 = CPLCopyDefaultSerialQueueAttributes();
  v5 = dispatch_queue_create("com.apple.cpl.get-apple-account", v4);

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___CPLGetAccountDSID_block_invoke;
  v11[3] = &unk_1E861B4E0;
  v12 = v2;
  v6 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_2942;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v5;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

void __CPLGetAppBoundaryKey_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = v5;
    v9 = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___CPLGetAppBoundaryKey_block_invoke;
    v11[3] = &unk_1E861BFC0;
    v12 = v8;
    v13 = v9;
    v10 = v9;
    [CPLCallObserver observeAsyncCallWithFunction:@"PCSGetAppBoundaryKey" block:v11];
  }

  else
  {
    v7[2](v7, 0, a3);
  }
}

void sub_1DC0B129C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke_2942(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLBoundaryKeyOSLogDomain()
{
  if (__CPLBoundaryKeyOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLBoundaryKeyOSLogDomain_onceToken, &__block_literal_global_2955);
  }

  v1 = __CPLBoundaryKeyOSLogDomain_result;

  return v1;
}

void sub_1DC0B1874(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC0B1888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC0B1980(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC0B1BB0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DC0B1BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC0B1FB0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&_sharedContextLock);
  objc_exception_rethrow();
}

void sub_1DC0B20FC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&_sharedContextLock);
  objc_exception_rethrow();
}

void sub_1DC0B2114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLEngineOSLogDomain()
{
  if (__CPLEngineOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLEngineOSLogDomain_onceToken, &__block_literal_global_3023);
  }

  v1 = __CPLEngineOSLogDomain_result;

  return v1;
}

const char *_CPLOSLogSubsystem()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  return "com.apple.photos.cpl";
}

id __CPLStoreOSLogDomain()
{
  if (__CPLStoreOSLogDomain_onceToken_3045 != -1)
  {
    dispatch_once(&__CPLStoreOSLogDomain_onceToken_3045, &__block_literal_global_3);
  }

  v1 = __CPLStoreOSLogDomain_result_3046;

  return v1;
}

id __CPLQOSOSLogDomain()
{
  if (__CPLQOSOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLQOSOSLogDomain_onceToken, &__block_literal_global_6);
  }

  v1 = __CPLQOSOSLogDomain_result;

  return v1;
}

id __CPLBuildVersion()
{
  v0 = MGCopyAnswer();

  return v0;
}

id __CPLEnvironmentDictionary()
{
  v17[6] = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  v1 = MGCopyAnswer();
  v2 = MGCopyAnswer();
  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  v6 = v5;
  v7 = @"Unknown";
  if (v1)
  {
    v8 = v1;
  }

  else
  {
    v8 = @"Unknown";
  }

  v16[0] = @"ProductName";
  v16[1] = @"ProductVersion";
  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = @"Unknown";
  }

  v17[0] = v8;
  v17[1] = v9;
  if (v0)
  {
    v10 = v0;
  }

  else
  {
    v10 = @"Unknown";
  }

  v16[2] = @"BuildVersion";
  v16[3] = @"DeviceType";
  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = @"Unknown";
  }

  v17[2] = v10;
  v17[3] = v11;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = @"Unknown";
  }

  v16[4] = @"DeviceName";
  v16[5] = @"DeviceUDID";
  if (v5)
  {
    v7 = v5;
  }

  v17[4] = v12;
  v17[5] = v7;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __CPLGenericOSLogDomain()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v1 = _CPLGenericLog;

  return v1;
}

__CFString *CPLCurrentQOS()
{
  v0 = qos_class_self();
  if (v0 > 20)
  {
    if (v0 == QOS_CLASS_DEFAULT)
    {
      return @"Default";
    }

    if (v0 != QOS_CLASS_USER_INITIATED)
    {
      if (v0 == QOS_CLASS_USER_INTERACTIVE)
      {
        return @"UserInteractive";
      }

      return @"Unknown";
    }

    return @"UserInitiated";
  }

  else
  {
    if (v0 == QOS_CLASS_UNSPECIFIED)
    {
      return @"Unspecified";
    }

    if (v0 != QOS_CLASS_BACKGROUND)
    {
      if (v0 == QOS_CLASS_UTILITY)
      {
        return @"Utility";
      }

      return @"Unknown";
    }

    return @"Background";
  }
}

uint64_t CPLFaceAnalysisReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(CPLFaceInstance);
          [a1 addPetFaceInstances:v14];
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_24;
          }

          v14 = objc_alloc_init(CPLFaceInstance);
          [a1 addTorsoFaceInstances:v14];
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          a1[36] |= 1u;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_40;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_40:
          a1[32] = v21;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
LABEL_24:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_41;
        }

        v14 = objc_alloc_init(CPLFaceInstance);
        [a1 addFaceInstances:v14];
      }

      v24[0] = 0;
      v24[1] = 0;
      if (!PBReaderPlaceMark() || !CPLFaceInstanceReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_41:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DC0B4710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3256(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLPushSessionOSLogDomain()
{
  if (__CPLPushSessionOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLPushSessionOSLogDomain_onceToken, &__block_literal_global_194);
  }

  v1 = __CPLPushSessionOSLogDomain_result;

  return v1;
}

uint64_t CPLMomentSharePreviewDataReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 8;
LABEL_30:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [a1 addCuratedAssetIdentifiers:v16];
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = PBReaderReadData();
          if (v16)
          {
            [a1 addPreviewImageData:v16];
          }

          goto LABEL_31;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DC0B7FB8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

id __CPLStrategyOSLogDomain()
{
  if (__CPLStrategyOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLStrategyOSLogDomain_onceToken, &__block_literal_global_222);
  }

  v1 = __CPLStrategyOSLogDomain_result;

  return v1;
}

id CPLIgnoredDateForRecord(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 recordModificationDate];
  v8 = [v6 recordModificationDate];

  if (v7)
  {
    if (v8)
    {
      v9 = [v7 laterDate:v8];
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v9 = v10;
  }

  v11 = v9;
  v12 = [v5 earlierDate:v9];

  return v12;
}

uint64_t CPLMemoryAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v15 = PBReaderReadData();
          v16 = 24;
LABEL_30:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(CPLMemoryAssetFlag);
          objc_storeStrong((a1 + 8), v14);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !CPLMemoryAssetFlagReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL CPLMarkDownloadedResourceWithDynamicVersion(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    value = a2;
    v7 = setxattr([v5 fileSystemRepresentation], "com.apple.cpl.dynamicVersion", &value, 8uLL, 0, 0);
    v8 = v7 == 0;
    if (a3 && v7)
    {
      *a3 = [CPLErrors posixErrorForURL:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t CPLGetDynamicVersionForDownloadResource(void *a1, void *a2, void *a3)
{
  v5 = a1;
  value = 0;
  v6 = getxattr([v5 fileSystemRepresentation], "com.apple.cpl.dynamicVersion", &value, 8uLL, 0, 0);
  if (v6 == 8)
  {
    *a2 = value;
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) == 0 || *__error() == 93)
  {
    *a2 = 0;
    goto LABEL_6;
  }

  if (a3)
  {
    [CPLErrors posixErrorForURL:v5];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

uint64_t CPLSocialGroupPersonReadFrom(uint64_t a1, void *a2)
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

void sub_1DC0CA404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

id __CPLTaskOSLogDomain_5477()
{
  if (__CPLTaskOSLogDomain_onceToken_5484 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_5484, &__block_literal_global_5485);
  }

  v1 = __CPLTaskOSLogDomain_result_5486;

  return v1;
}

void sub_1DC0CB918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_displayableKey(void *a1)
{
  v1 = _displayableKey_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_displayableKey_onceToken, &__block_literal_global_356);
  }

  v3 = [_displayableKey_displayableKeys objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

void ___displayableKey_block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"initial sync";
  v3[1] = @"initial client download";
  v4[0] = @"synced";
  v4[1] = @"fast pass";
  v3[2] = @"initial mingle";
  v3[3] = @"initial shared metadata download";
  v4[2] = @"mingle";
  v4[3] = @"shared metadata";
  v3[4] = @"initial metadata queries";
  v3[5] = @"initial metadata download";
  v4[4] = @"queries";
  v4[5] = @"metadata";
  v3[6] = @"activation";
  v4[6] = @"activation";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = _displayableKey_displayableKeys;
  _displayableKey_displayableKeys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void _CPLArchiverFailure(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];
  v13 = [v10 archiverContext];
  v14 = v13;
  v15 = @"(no context)";
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = MEMORY[0x1E695DF30];
  v18 = CPLArchiverFailureExceptionName;
  v22 = @"CPLArchiverFailureContext";
  v23[0] = v16;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v20 = [v17 exceptionWithName:v18 reason:v12 userInfo:v19];
  v21 = v20;

  objc_exception_throw(v20);
}

void sub_1DC0D14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5793(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLStorageOSLogDomain_6249()
{
  if (__CPLStorageOSLogDomain_onceToken_6251 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_6251, &__block_literal_global_6252);
  }

  v1 = __CPLStorageOSLogDomain_result_6253;

  return v1;
}

void sub_1DC0DA090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6496(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6659(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __valueForDictionaryOfCounts_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v5 integerValue])
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __cpl_dispatch_async_block_invoke_6711(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC0DE068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLStatusOSLogDomain()
{
  if (__CPLStatusOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLStatusOSLogDomain_onceToken, &__block_literal_global_6768);
  }

  v1 = __CPLStatusOSLogDomain_result;

  return v1;
}

uint64_t CPLServerFeedbackKeyAndValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = (v12 >> 3);
      if (v13 == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = &OBJC_IVAR___CPLServerFeedbackKeyAndValue__value;
LABEL_21:
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = &OBJC_IVAR___CPLServerFeedbackKeyAndValue__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void __cpl_dispatch_async_block_invoke_7243(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLTaskOSLogDomain_7245()
{
  if (__CPLTaskOSLogDomain_onceToken_7260 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_7260, &__block_literal_global_7261);
  }

  v1 = __CPLTaskOSLogDomain_result_7262;

  return v1;
}

uint64_t _CPLCutoffDate()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 doubleForKey:@"CPLIgnoredRecordsExpirationInterval"];
  v2 = v1;

  v3 = MEMORY[0x1E695DF00];
  v4 = -v2;
  if (v2 == 0.0)
  {
    v4 = -3600.0;
  }

  return [v3 dateWithTimeIntervalSinceNow:v4];
}

void sub_1DC0E6E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC0E6FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7326(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cpl_dispatch_async_block_invoke_7513(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLSchedulerOSLogDomain_7603()
{
  if (__CPLSchedulerOSLogDomain_onceToken_7604 != -1)
  {
    dispatch_once(&__CPLSchedulerOSLogDomain_onceToken_7604, &__block_literal_global_588);
  }

  v1 = __CPLSchedulerOSLogDomain_result_7605;

  return v1;
}

uint64_t __Block_byref_object_copy__7661(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC0F0558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DC0F0A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___decentNextSessionDate_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 doubleForKey:@"CPLSecondSessionCoalescingInterval"];
  _decentNextSessionDate_secondSessionCoalescingInterval = v1;

  if (*&_decentNextSessionDate_secondSessionCoalescingInterval < 0.100000001)
  {
    _decentNextSessionDate_secondSessionCoalescingInterval = 0x4034000000000000;
  }
}

id __CPLStorageOSLogDomain_7908()
{
  if (__CPLStorageOSLogDomain_onceToken_7910 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_7910, &__block_literal_global_349);
  }

  v1 = __CPLStorageOSLogDomain_result_7911;

  return v1;
}

void __cpl_dispatch_async_block_invoke_7920(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC0F97F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&a68, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7957(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CPLAccountFlagsReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_56;
          }
        }

        v34 = [a2 hasError] ? 0 : v30;
LABEL_56:
        *(a1 + 8) = v34;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        v27 = [a2 hasError] ? 0 : v23;
LABEL_52:
        *(a1 + 16) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_58;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_58:
        *(a1 + 20) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DC0FFF44(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void sub_1DC0FFF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8387(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC10020C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void sub_1DC1003BC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void sub_1DC1003D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC100520(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void sub_1DC10070C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

id __CPLStorageOSLogDomain_8656()
{
  if (__CPLStorageOSLogDomain_onceToken_8664 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_8664, &__block_literal_global_546);
  }

  v1 = __CPLStorageOSLogDomain_result_8665;

  return v1;
}

id _ClassesForInitialQueries(uint64_t a1)
{
  if (_ClassesForInitialQueries_onceToken != -1)
  {
    dispatch_once(&_ClassesForInitialQueries_onceToken, &__block_literal_global_549);
  }

  v2 = a1 - 1;
  if (a1 - 1) <= 7 && ((0xC7u >> v2))
  {
    v3 = *off_1E861CB10[v2];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

void sub_1DC108510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1DC10C304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLSessionOSLogDomain_0()
{
  if (__CPLSessionOSLogDomain_onceToken_0 != -1)
  {
    dispatch_once(&__CPLSessionOSLogDomain_onceToken_0, &__block_literal_global_8989);
  }

  v1 = __CPLSessionOSLogDomain_result_0;

  return v1;
}

id __CPLStorageOSLogDomain_9089()
{
  if (__CPLStorageOSLogDomain_onceToken_9095 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_9095, &__block_literal_global_9096);
  }

  v1 = __CPLStorageOSLogDomain_result_9097;

  return v1;
}

id __CPLStorageOSLogDomain_9255()
{
  if (__CPLStorageOSLogDomain_onceToken_9257 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_9257, &__block_literal_global_113);
  }

  v1 = __CPLStorageOSLogDomain_result_9258;

  return v1;
}

id __CPLStorageOSLogDomain_9448()
{
  if (__CPLStorageOSLogDomain_onceToken_9450 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_9450, &__block_literal_global_172);
  }

  v1 = __CPLStorageOSLogDomain_result_9451;

  return v1;
}

id __CPLProgressOSLogDomain()
{
  if (__CPLProgressOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLProgressOSLogDomain_onceToken, &__block_literal_global_9672);
  }

  v1 = __CPLProgressOSLogDomain_result;

  return v1;
}

void __cpl_dispatch_async_block_invoke_9785(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLDerivativesOSLogDomain()
{
  if (__CPLDerivativesOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLDerivativesOSLogDomain_onceToken, &__block_literal_global_292);
  }

  v1 = __CPLDerivativesOSLogDomain_result;

  return v1;
}

void sub_1DC1168EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9801(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _shortDescriptionForArrayOfCPLResourceTypes(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___shortDescriptionForArrayOfCPLResourceTypes_block_invoke;
  v7[3] = &unk_1E861D0D8;
  v8 = v3;
  v4 = v3;
  [v2 enumerateObjectsUsingBlock:v7];

  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

void ___shortDescriptionForArrayOfCPLResourceTypes_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [a2 unsignedIntegerValue]);
  [v2 addObject:v3];
}

void sub_1DC11A580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC11AB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC11ADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CPLDefaultConfigurationDictionaryUniquifier_block_invoke(uint64_t a1, void *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10050;
  v15 = __Block_byref_object_dispose__10051;
  v16 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = CPLDefaultConfigurationDictionaryUniquifier_block_invoke_2;
  v8 = &unk_1E861F818;
  v2 = v16;
  v9 = v2;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&_mostRecentConfigurationDictionaryLock);
  v7(v3);
  os_unfair_lock_unlock(&_mostRecentConfigurationDictionaryLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void sub_1DC11B6F0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&_mostRecentConfigurationDictionaryLock);
  objc_exception_rethrow();
}

void sub_1DC11B708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10050(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CPLDefaultConfigurationDictionaryUniquifier_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&_mostRecentConfigurationDictionary);
  if (WeakRetained != *(a1 + 32))
  {
    obj = WeakRetained;
    if (WeakRetained)
    {
      v3 = [WeakRetained compare:?];
      if (!v3)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
        goto LABEL_10;
      }

      v4 = v3 == -1;
      WeakRetained = obj;
      if (!v4)
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 32);
    }

    else
    {
      v5 = *(a1 + 32);
    }

    objc_storeWeak(&_mostRecentConfigurationDictionary, v5);
LABEL_10:
    WeakRetained = obj;
  }

LABEL_11:
}

void __cpl_dispatch_async_block_invoke_10131(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLConfigurationOSLogDomain()
{
  if (__CPLConfigurationOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLConfigurationOSLogDomain_onceToken, &__block_literal_global_200);
  }

  v1 = __CPLConfigurationOSLogDomain_result;

  return v1;
}

id _CPLConfigurationDefaultURL()
{
  if (_CPLConfigurationDefaultURL_onceToken != -1)
  {
    dispatch_once(&_CPLConfigurationDefaultURL_onceToken, &__block_literal_global_10155);
  }

  v1 = _CPLConfigurationDefaultURL_url;

  return v1;
}

uint64_t CPLRampingRequestResourceReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id CPLPrimaryScopeIdentifierForCurrentUniverse()
{
  if (CPLPrimaryScopeIdentifierForCurrentUniverse_onceToken != -1)
  {
    dispatch_once(&CPLPrimaryScopeIdentifierForCurrentUniverse_onceToken, &__block_literal_global_37_10794);
  }

  v1 = CPLPrimaryScopeIdentifierForCurrentUniverse_result;

  return v1;
}

void __CPLPrimaryScopeIdentifierForCurrentUniverse_block_invoke()
{
  v2 = CPLCurrentUniverseName();
  v0 = CPLPrimaryScopeIdentifierForUniverseName(v2);
  v1 = CPLPrimaryScopeIdentifierForCurrentUniverse_result;
  CPLPrimaryScopeIdentifierForCurrentUniverse_result = v0;
}

id CPLCurrentUniverseName()
{
  if (CPLCurrentUniverseName_onceToken != -1)
  {
    dispatch_once(&CPLCurrentUniverseName_onceToken, &__block_literal_global_31);
  }

  v1 = CPLCurrentUniverseName_result;

  return v1;
}

__CFString *CPLPrimaryScopeIdentifierForUniverseName(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = a1;
    v3 = [[v1 alloc] initWithFormat:@"%@%@", @"TestSync-", v2];
  }

  else
  {
    v3 = @"PrimarySync";
  }

  return v3;
}

void __CPLCurrentUniverseName_block_invoke()
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v2 stringForKey:@"CPLUniverseName"];
  v1 = CPLCurrentUniverseName_result;
  CPLCurrentUniverseName_result = v0;
}

id CPLMainScopeIdentifierForApp(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithFormat:@"%@%@-%@", @"AppLibrarySync-", v5, v4];

  return v6;
}

id CPLAllLibraryScopeIdentifierPrefixes()
{
  if (CPLAllLibraryScopeIdentifierPrefixes_onceToken != -1)
  {
    dispatch_once(&CPLAllLibraryScopeIdentifierPrefixes_onceToken, &__block_literal_global_10874);
  }

  v1 = CPLAllLibraryScopeIdentifierPrefixes_result;

  return v1;
}

void __CPLAllLibraryScopeIdentifierPrefixes_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"PrimarySync";
  v3[1] = @"TestSync-";
  v3[2] = @"AppLibrarySync-";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = CPLAllLibraryScopeIdentifierPrefixes_result;
  CPLAllLibraryScopeIdentifierPrefixes_result = v0;

  v2 = *MEMORY[0x1E69E9840];
}

__CFString *CPLSharingScopePrefixForScopeWithIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PrimarySync"])
  {
    v2 = @"SharedSync-";
  }

  else if ([v1 hasPrefix:@"TestSync-"] && (CPLUniverseNameFromMainScopeIdentifier(v1), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@-", @"TestSharedSync-", v3];
  }

  else
  {
    v2 = @"BogusSharedSync-";
  }

  return v2;
}

id CPLUniverseNameFromMainScopeIdentifier(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:@"PrimarySync"] & 1) != 0 || objc_msgSend(v1, "rangeOfString:", @"TestSync-") || (v3 = v2, v2 >= objc_msgSend(v1, "length")))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 substringWithRange:{v3, objc_msgSend(v1, "length") - v3}];
  }

  return v4;
}

__CFString *CPLCollectionSharePrefixForScopeWithIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PrimarySync"])
  {
    v2 = @"SharedCollection-";
  }

  else
  {
    if (![v1 hasPrefix:@"TestSync-"] || (CPLUniverseNameFromMainScopeIdentifier(v1), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull CPLCollectionSharePrefixForScopeWithIdentifier(NSString *__strong _Nonnull)"];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopedIdentifier.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:90 description:{@"Unexpected main scope prefix for main scope: %@", v1}];

      abort();
    }

    v4 = v3;
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@-", @"TestSharedCollection-", v3];
  }

  return v2;
}

id __CPLStorageOSLogDomain_11255()
{
  if (__CPLStorageOSLogDomain_onceToken_11266 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_11266, &__block_literal_global_11267);
  }

  v1 = __CPLStorageOSLogDomain_result_11268;

  return v1;
}

void sub_1DC125B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11287(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLStorageOSLogDomain_11340()
{
  if (__CPLStorageOSLogDomain_onceToken_11343 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_11343, &__block_literal_global_11344);
  }

  v1 = __CPLStorageOSLogDomain_result_11345;

  return v1;
}

void sub_1DC127204(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke_11524(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLTaskOSLogDomain_11528()
{
  if (__CPLTaskOSLogDomain_onceToken_11563 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_11563, &__block_literal_global_11564);
  }

  v1 = __CPLTaskOSLogDomain_result_11565;

  return v1;
}

void sub_1DC128544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11582(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC1294A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DC12A4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DC12B004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC12B1CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);
  _Block_object_dispose((v1 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1DC12C0AC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC12C2F8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC12C30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC12C56C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC12C580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CPLSocialGroupPersonListReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(CPLSocialGroupPerson);
        [a1 addPerson:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !CPLSocialGroupPersonReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __cpl_dispatch_async_block_invoke_12172(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLManagerOSLogDomain_0()
{
  if (__CPLManagerOSLogDomain_onceToken_0 != -1)
  {
    dispatch_once(&__CPLManagerOSLogDomain_onceToken_0, &__block_literal_global_869);
  }

  v1 = __CPLManagerOSLogDomain_result_0;

  return v1;
}

uint64_t __Block_byref_object_copy__12357(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _statusDidChange_12375(uint64_t a1, void *a2)
{
  v2 = [a2 weakLibraryManager];
  [v2 _statusDidChange];
}

void _configurationDidChange(uint64_t a1, void *a2)
{
  v2 = [a2 weakLibraryManager];
  [v2 _configurationDidChange];
}

void sub_1DC13D950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC13FB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CPLLibraryIdentifierForApp(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [v6 initWithFormat:@"%@%@]-%@", CPLAppLibraryIdentifierPrefix, v5, v4];

  return v7;
}

void sub_1DC1431BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLCodingOSLogDomain()
{
  if (__CPLCodingOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLCodingOSLogDomain_onceToken, &__block_literal_global_259);
  }

  v1 = __CPLCodingOSLogDomain_result;

  return v1;
}

void sub_1DC144EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1453BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13182(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _CPLAllowCrossPlatformBoolDecoding()
{
  if ((_hasSetupCrossPlatformBoolDecoding & 1) == 0)
  {
    _hasSetupCrossPlatformBoolDecoding = 1;
    if ([MEMORY[0x1E696ACD0] instancesRespondToSelector:sel___setError_])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v0 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v0, OS_LOG_TYPE_DEFAULT, "Enabling cross platform BOOL decoding", buf, 2u);
        }
      }

      v1 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v1, sel__cplDecodeBoolForKey_);
      Implementation = method_getImplementation(InstanceMethod);
      TypeEncoding = method_getTypeEncoding(InstanceMethod);
      class_addMethod(v1, sel_cplDecodeBoolForKey_, Implementation, TypeEncoding);
      v5 = objc_opt_class();
      v6 = class_getInstanceMethod(v5, sel__cplDecodeCharForKey_);
      v7 = method_getImplementation(v6);
      v8 = method_getTypeEncoding(v6);
      class_addMethod(v5, sel_cplDecodeCharForKey_, v7, v8);
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Can't enable cross platform BOOL decoding", v10, 2u);
      }
    }
  }
}

uint64_t CPLSuggestionMemoryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v27;
          }

LABEL_52:
          v31 = 16;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        if (v13 != 4)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v31 = 32;
          goto LABEL_53;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      v24 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DC14C9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13768(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC14D2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

id CPLStepAllChanges(void *a1)
{
  v1 = a1;
  v2 = [v1 storage];
  v3 = [v1 scopeIdentifier];

  v4 = [v2 allChangesWithScopeIdentifier:v3];

  return v4;
}

id CPLStepNew(void *a1)
{
  v1 = a1;
  v2 = [v1 storage];
  v3 = [v1 extractionClass];
  v4 = [v1 scopeIdentifier];

  v5 = [v2 allChangesWithClass:v3 scopeIdentifier:v4 changeType:0];

  return v5;
}

id CPLStepDeleted(void *a1)
{
  v1 = a1;
  v2 = [v1 storage];
  v3 = [v1 extractionClass];
  v4 = [v1 scopeIdentifier];

  v5 = [v2 allChangesWithClass:v3 scopeIdentifier:v4 changeType:1024];

  return v5;
}

id CPLStepNotDeleted(void *a1)
{
  v1 = a1;
  v2 = [v1 storage];
  v3 = [v1 extractionClass];
  v4 = [v1 scopeIdentifier];

  v5 = [v2 allNonDeletedChangesWithClass:v3 scopeIdentifier:v4];

  return v5;
}

uint64_t CPLFaceInstanceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        break;
      }

      if (v13 > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 96) |= 0x40u;
          v62 = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 56;
LABEL_113:
          *(a1 + v54) = v53;
          goto LABEL_114;
        }

        if (v13 == 5)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 96) |= 0x100u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v62 & 0x7F) << v42;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_97;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v44;
          }

LABEL_97:
          v51 = 68;
LABEL_98:
          *(a1 + v51) = v29;
          goto LABEL_114;
        }

        if (v13 != 6)
        {
          goto LABEL_84;
        }

        v18 = PBReaderReadString();
        if (v18)
        {
          [a1 addRejectedPersonIdentifiers:v18];
        }
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            *(a1 + 96) |= 0x10u;
            v62 = 0;
            v34 = [a2 position] + 8;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v53 = v62;
            v54 = 40;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_84;
            }

            *(a1 + 96) |= 0x20u;
            v62 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v53 = v62;
            v54 = 48;
          }

          goto LABEL_113;
        }

        v21 = PBReaderReadString();
        v22 = *(a1 + 80);
        *(a1 + 80) = v21;
      }

LABEL_114:
      v61 = [a2 position];
      if (v61 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 9)
    {
      switch(v13)
      {
        case 0xA:
          *(a1 + 96) |= 2u;
          v62 = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 16;
          break;
        case 0xB:
          *(a1 + 96) |= 8u;
          v62 = 0;
          v48 = [a2 position] + 8;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 32;
          break;
        case 0xC:
          *(a1 + 96) |= 4u;
          v62 = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 24;
          break;
        default:
LABEL_84:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_114;
      }

      goto LABEL_113;
    }

    switch(v13)
    {
      case 7:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 96) |= 0x200u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v62 & 0x7F) << v23;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_89:
        v51 = 72;
        break;
      case 8:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 96) |= 0x80u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v62 & 0x7F) << v36;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_93;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v38;
        }

LABEL_93:
        v51 = 64;
        break;
      case 9:
        *(a1 + 96) |= 1u;
        v62 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v55 = [a2 data];
          [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v53 = v62;
        v54 = 8;
        goto LABEL_113;
      default:
        goto LABEL_84;
    }

    goto LABEL_98;
  }

  return [a2 hasError] ^ 1;
}

id __CPLTaskOSLogDomain_14068()
{
  if (__CPLTaskOSLogDomain_onceToken_14070 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_14070, &__block_literal_global_14071);
  }

  v1 = __CPLTaskOSLogDomain_result_14072;

  return v1;
}

void __cpl_dispatch_async_block_invoke_14080(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC1518B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14099(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC152A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC153740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 256), 8);
  _Block_object_dispose((v55 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1DC156760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14285(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC156D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke_14457(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __cpl_dispatch_async_block_invoke_14534(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLTaskOSLogDomain_14541()
{
  if (__CPLTaskOSLogDomain_onceToken_14543 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_14543, &__block_literal_global_101_14544);
  }

  v1 = __CPLTaskOSLogDomain_result_14545;

  return v1;
}

void sub_1DC158F74(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC158F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC15909C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC1590B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC159288(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((v2 + v3));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC15DCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15115(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC160410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __CPLSupportedFeatureVersion()
{
  if (+[CPLFingerprintScheme supportsEPP])
  {
    return 22;
  }

  else
  {
    return 21;
  }
}

id __CPLArchiverOSLogDomain()
{
  if (__CPLArchiverOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLArchiverOSLogDomain_onceToken, &__block_literal_global_15333);
  }

  v1 = __CPLArchiverOSLogDomain_result;

  return v1;
}

id __CPLFileWatcherOSLogDomain()
{
  if (__CPLFileWatcherOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLFileWatcherOSLogDomain_onceToken, &__block_literal_global_15418);
  }

  v1 = __CPLFileWatcherOSLogDomain_result;

  return v1;
}

uint64_t CPLSuggestionAssetFlagReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___CPLSuggestionAssetFlag__isRepresentative;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___CPLSuggestionAssetFlag__isRepresentative;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___CPLSuggestionAssetFlag__isKeyAsset;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___CPLSuggestionAssetFlag__isKeyAsset;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id __CPLTaskOSLogDomain_15620()
{
  if (__CPLTaskOSLogDomain_onceToken_15632 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_15632, &__block_literal_global_260);
  }

  v1 = __CPLTaskOSLogDomain_result_15633;

  return v1;
}

void sub_1DC1652A0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 7);
  objc_exception_rethrow();
}

void sub_1DC16543C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 7);
  objc_exception_rethrow();
}

void __cpl_dispatch_async_block_invoke_15717(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC166C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15731(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CPLSuggestionAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v15 = PBReaderReadData();
          v16 = 8;
LABEL_30:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 24;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(CPLSuggestionAssetFlag);
          objc_storeStrong((a1 + 16), v14);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !CPLSuggestionAssetFlagReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t CPLMemoryAssetFlagReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 16) |= 0x20u;
            while (1)
            {
              v62 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                LOBYTE(v21) = 0;
                v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isRepresentative;
                goto LABEL_99;
              }
            }

            v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isRepresentative;
            goto LABEL_98;
          case 2:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 16) |= 1u;
            while (1)
            {
              v61 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v61 & 0x7F) << v48;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                LOBYTE(v21) = 0;
                v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isCurated;
                goto LABEL_99;
              }
            }

            v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isCurated;
LABEL_98:
            v21 = (v16 != 0) & ~[a2 hasError];
LABEL_99:
            *(a1 + *v22) = v21;
            goto LABEL_100;
          case 3:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 16) |= 0x10u;
            while (1)
            {
              v60 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v60 & 0x7F) << v23;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                LOBYTE(v21) = 0;
                v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isMovieCurated;
                goto LABEL_99;
              }
            }

            v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isMovieCurated;
            goto LABEL_98;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v43 = 0;
          v44 = 0;
          v16 = 0;
          *(a1 + 16) |= 0x40u;
          while (1)
          {
            v57 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v57 & 0x7F) << v43;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v20 = v44++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isUserCurated;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isUserCurated;
          goto LABEL_98;
        }

        if (v13 == 7)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 16) |= 2u;
          while (1)
          {
            v56 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v56 & 0x7F) << v28;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isCustomUserAsset;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isCustomUserAsset;
          goto LABEL_98;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 16) |= 8u;
          while (1)
          {
            v59 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59 & 0x7F) << v38;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isKeyAsset;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isKeyAsset;
          goto LABEL_98;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 16) |= 4u;
          while (1)
          {
            v58 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v58 & 0x7F) << v14;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isExtendedCurated;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CPLMemoryAssetFlag__isExtendedCurated;
          goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_100:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __CPLSessionOSLogDomain_16325()
{
  if (__CPLSessionOSLogDomain_onceToken_16327 != -1)
  {
    dispatch_once(&__CPLSessionOSLogDomain_onceToken_16327, &__block_literal_global_219);
  }

  v1 = __CPLSessionOSLogDomain_result_16328;

  return v1;
}

void sub_1DC170D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16455(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cpl_dispatch_async_block_invoke_16734(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLLibraryOSLogDomain()
{
  if (__CPLLibraryOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLLibraryOSLogDomain_onceToken, &__block_literal_global_744);
  }

  v1 = __CPLLibraryOSLogDomain_result;

  return v1;
}

void sub_1DC172BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 160), 8);
  _Block_object_dispose((v12 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DC173F30(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

id __CPLInitialDownloadOSLogDomain()
{
  if (__CPLInitialDownloadOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLInitialDownloadOSLogDomain_onceToken, &__block_literal_global_753);
  }

  v1 = __CPLInitialDownloadOSLogDomain_result;

  return v1;
}

uint64_t __Block_byref_object_copy__16777(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC175E1C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

id __CPLBackupOSLogDomain()
{
  if (__CPLBackupOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLBackupOSLogDomain_onceToken, &__block_literal_global_750);
  }

  v1 = __CPLBackupOSLogDomain_result;

  return v1;
}

void sub_1DC176FE0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1DC178B8C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1DC17A3C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

id __CPLDataRecoveryOSLogDomain()
{
  if (__CPLDataRecoveryOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLDataRecoveryOSLogDomain_onceToken, &__block_literal_global_747);
  }

  v1 = __CPLDataRecoveryOSLogDomain_result;

  return v1;
}

void sub_1DC17D6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_1DC17F1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1DC181A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC183584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC185180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1860FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC187278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLTaskOSLogDomain_17161()
{
  if (__CPLTaskOSLogDomain_onceToken_17168 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_17168, &__block_literal_global_157);
  }

  v1 = __CPLTaskOSLogDomain_result_17169;

  return v1;
}

void __cpl_dispatch_async_block_invoke_17228(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC18C1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17251(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cpl_dispatch_async_block_invoke_17572(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLFeedbackOSLogDomain()
{
  if (__CPLFeedbackOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLFeedbackOSLogDomain_onceToken, &__block_literal_global_17621);
  }

  v1 = __CPLFeedbackOSLogDomain_result;

  return v1;
}

id __CPLStorageOSLogDomain_17824()
{
  if (__CPLStorageOSLogDomain_onceToken_17826 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_17826, &__block_literal_global_17827);
  }

  v1 = __CPLStorageOSLogDomain_result_17828;

  return v1;
}

void sub_1DC1946C0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17856(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC195ABC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&anchorLock);
  objc_exception_rethrow();
}

void sub_1DC195AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC195E18(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&anchorLock);
  objc_exception_rethrow();
}

void sub_1DC195E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke_18069(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLSessionOSLogDomain_18244()
{
  if (__CPLSessionOSLogDomain_onceToken_18249 != -1)
  {
    dispatch_once(&__CPLSessionOSLogDomain_onceToken_18249, &__block_literal_global_171);
  }

  v1 = __CPLSessionOSLogDomain_result_18250;

  return v1;
}

id __CPLFeaturesOSLogDomain()
{
  if (__CPLFeaturesOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLFeaturesOSLogDomain_onceToken, &__block_literal_global_20);
  }

  v1 = __CPLFeaturesOSLogDomain_result;

  return v1;
}

void __cpl_dispatch_async_block_invoke_18567(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLForceSyncOSLogDomain()
{
  if (__CPLForceSyncOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLForceSyncOSLogDomain_onceToken, &__block_literal_global_18571);
  }

  v1 = __CPLForceSyncOSLogDomain_result;

  return v1;
}

uint64_t __Block_byref_object_copy__18683(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL _CPLFacesDataAreAlmostIdentical(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 | v4) == 0;
  if (v3 && v4)
  {
    v7 = [[CPLFaceAnalysisReference alloc] initWithData:v3];
    v8 = [[CPLFaceAnalysisReference alloc] initWithData:v5];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    v6 = !v12 && ([v9 isEqual:v10] & 1) != 0 || (v9 | v11) == 0;
  }

  return v6;
}

uint64_t CPLServerFeedbackResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t CPLRampingResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(CPLRampingResponseResource);
        [a1 addResponse:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CPLRampingResponseResourceReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __cpl_dispatch_async_block_invoke_19503(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLConfigurationOSLogDomain_19517()
{
  if (__CPLConfigurationOSLogDomain_onceToken_19523 != -1)
  {
    dispatch_once(&__CPLConfigurationOSLogDomain_onceToken_19523, &__block_literal_global_19524);
  }

  v1 = __CPLConfigurationOSLogDomain_result_19525;

  return v1;
}

id __CPLCheckOSLogDomain()
{
  if (__CPLCheckOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLCheckOSLogDomain_onceToken, &__block_literal_global_19908);
  }

  v1 = __CPLCheckOSLogDomain_result;

  return v1;
}

void sub_1DC1A4098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t CPLUploadCheckRuleAvoidAccidentalUnshareFunction(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [a1 dropSharingChangeWithReason:@"avoid accidental unsharing during initial upload"];
  }

  return 1;
}

uint64_t CPLUploadCheckRuleAvoidGeneratingDerivativesFunction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = v6;
  if (!a3)
  {
    v9 = [v6 change];
    if ([v9 isAssetChange])
    {
      v10 = [v9 adjustments];
      if (v10)
      {
      }

      else if (!+[CPLBeforeUploadCheckItem allowsAssetsWithResourcesButNoAdjustments])
      {
        v8 = [v7 rejectChangeWithReason:@"unadjusted asset with adjusted resources" error:a4];
        goto LABEL_8;
      }
    }

    v8 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v8 = [v6 dropGeneratingDerivativesIfPossibleWithRecordOnServer:a3 error:a4];
LABEL_9:

  return v8;
}

uint64_t CPLUploadCheckRuleForwardCompatibilityFunction(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 hasChangeType:32])
    {
      v7 = [v6 realIdentifier];

      if (!v7)
      {
        v8 = [v4 change];
        v9 = [objc_opt_class() copyPropertyBlockForDirection:1];
        if (v9)
        {
          v10 = [v8 propertiesForChangeType:32];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __CPLUploadCheckRuleForwardCompatibilityFunction_block_invoke;
          v12[3] = &unk_1E861F670;
          v14 = v9;
          v13 = v6;
          [v8 cplCopyProperties:v10 fromObject:v8 withCopyBlock:v12];
        }
      }
    }
  }

  return 1;
}

uint64_t CPLUploadCheckRuleCopyDerivativesFromSourceFunction(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [a1 change];
    [v6 copyDerivativesFromRecordIfPossible:v5];

    v7 = 1;
  }

  else
  {
    v7 = [a1 rejectChangeWithReason:@"source record for copy does not exist on server" error:a3];
  }

  return v7;
}

uint64_t CPLUploadCheckRuleOnlyUploadAddedResourcesFunction(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a3;
  if (v7)
  {
    v8 = [v6 change];
    v9 = [v8 onlyAddedResources];
    if ([v9 count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLCheckOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = v7;
          v16 = 2112;
          v17 = v9;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Will append resources to %@:\n%@", &v14, 0x16u);
        }
      }

      [v8 markToOnlyUploadNewResources];
    }

    else
    {
      [v6 dropResourceChangeWithReason:@"sparse resources"];
    }

    v11 = 1;
  }

  else
  {
    v11 = [v6 rejectChangeWithReason:@"sparse resources with no record on server" error:a4];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t CPLUploadCheckRuleDropSparseResourcesFunction(void *a1, int a2)
{
  if (a2)
  {
    [a1 dropResourceChangeWithReason:@"sparse resources"];
    return 1;
  }

  else
  {

    return [a1 rejectChangeWithReason:@"sparse resources with no record on server" error:?];
  }
}

uint64_t CPLUploadCheckRuleFullRecordAlreadyOnServerFunction(void *a1, int a2, void *a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  if (!a2)
  {
    goto LABEL_11;
  }

  v9 = [v7 change];
  if (![v9 isAssetChange] || !objc_msgSend(v9, "hasChangeType:", 2))
  {
    goto LABEL_10;
  }

  v10 = [v8 relatedIdentifier];
  if (!v10 || ([v8 inExpunged] & 1) != 0)
  {
    goto LABEL_9;
  }

  v11 = [v8 relatedIdentifier];

  if (!v11)
  {
LABEL_10:
    v14 = [v7 change];
    [v14 markAsSparseFullChange];

LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

  v10 = [v7 fingerprintContext];
  v12 = [v9 fingerprintSchemeWithContext:v10];
  v13 = [v8 fingerprintSchemeWithContext:v10];
  if ([v12 isCompatibleWithFingerprintScheme:v13])
  {

LABEL_9:
    goto LABEL_10;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v18 = __CPLCheckOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v13 fingerprintSchemeDescription];
      v20 = [v12 fingerprintSchemeDescription];
      *buf = 138412802;
      v26 = v9;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Rejecting %@ as it changes from %@ to %@", buf, 0x20u);
    }
  }

  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22 = [v13 fingerprintSchemeDescription];
  v23 = [v12 fingerprintSchemeDescription];
  v24 = [v21 initWithFormat:@"changing asset from %@ to %@", v22, v23];

  v15 = [v7 rejectChangeWithReason:v24 error:a4];
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1DC1A71AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1A7304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1A7464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC1A7E10(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

id __CPLStorageOSLogDomain_20273()
{
  if (__CPLStorageOSLogDomain_onceToken_20275 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_20275, &__block_literal_global_20276);
  }

  v1 = __CPLStorageOSLogDomain_result_20277;

  return v1;
}

void sub_1DC1A817C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1DC1A8B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20293(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC1A8ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1DC1A94B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1A9B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1A9E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke_20774(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t __Block_byref_object_copy__20784(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLLastSyncErrorOSLogDomain()
{
  if (__CPLLastSyncErrorOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLLastSyncErrorOSLogDomain_onceToken, &__block_literal_global_680);
  }

  v1 = __CPLLastSyncErrorOSLogDomain_result;

  return v1;
}

void sub_1DC1B1EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __CPLForcedOSLogDomain()
{
  if (__CPLForcedOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLForcedOSLogDomain_onceToken, &__block_literal_global_683);
  }

  v1 = __CPLForcedOSLogDomain_result;

  return v1;
}

void sub_1DC1B369C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 5);
  objc_exception_rethrow();
}

void sub_1DC1B36B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1B3930(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 5);
  objc_exception_rethrow();
}

void sub_1DC1B3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1B6580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke_21316(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLTaskOSLogDomain_21318()
{
  if (__CPLTaskOSLogDomain_onceToken_21360 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_21360, &__block_literal_global_136);
  }

  v1 = __CPLTaskOSLogDomain_result_21361;

  return v1;
}

void sub_1DC1B9A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21371(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLStorageOSLogDomain_21522()
{
  if (__CPLStorageOSLogDomain_onceToken_21526 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_21526, &__block_literal_global_21527);
  }

  v1 = __CPLStorageOSLogDomain_result_21528;

  return v1;
}

id __CPLSystemMonitorOSLogDomain()
{
  if (__CPLSystemMonitorOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLSystemMonitorOSLogDomain_onceToken, &__block_literal_global_483);
  }

  v1 = __CPLSystemMonitorOSLogDomain_result;

  return v1;
}

void __cpl_dispatch_async_block_invoke_21709(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

double _CPLSystemMonitorReadOverrideTimeIntervalFromSharedDefaults(void *a1)
{
  v1 = a1;
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v1, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);

  result = AppIntegerValue;
  if (!keyExistsAndHasValidFormat)
  {
    return 0.0;
  }

  return result;
}

id _CPLSystemMonitorReadOverrideTimeIntervalExpiryDateFromSharedDefaults(void *a1)
{
  v1 = a1;
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v2 = CFPreferencesCopyAppValue(v1, @"com.apple.mobileslideshow");

  return v2;
}

void sub_1DC1C0908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21856(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC1C1FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLStorageOSLogDomain_22181()
{
  if (__CPLStorageOSLogDomain_onceToken_22186 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_22186, &__block_literal_global_22187);
  }

  v1 = __CPLStorageOSLogDomain_result_22188;

  return v1;
}

void sub_1DC1C3310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 176), 8);
  _Block_object_dispose((v11 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __CPLStorageOSLogDomain_22429()
{
  if (__CPLStorageOSLogDomain_onceToken_22437 != -1)
  {
    dispatch_once(&__CPLStorageOSLogDomain_onceToken_22437, &__block_literal_global_22438);
  }

  v1 = __CPLStorageOSLogDomain_result_22439;

  return v1;
}

uint64_t CPLMemoryAssetListReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(CPLMemoryAsset);
        [a1 addAsset:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !CPLMemoryAssetReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __CPLSessionOSLogDomain_22797()
{
  if (__CPLSessionOSLogDomain_onceToken_22799 != -1)
  {
    dispatch_once(&__CPLSessionOSLogDomain_onceToken_22799, &__block_literal_global_22800);
  }

  v1 = __CPLSessionOSLogDomain_result_22801;

  return v1;
}

void __cpl_dispatch_async_block_invoke_22953(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __CPLTaskOSLogDomain_23138()
{
  if (__CPLTaskOSLogDomain_onceToken_23149 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_23149, &__block_literal_global_270);
  }

  v1 = __CPLTaskOSLogDomain_result_23150;

  return v1;
}

void __cpl_dispatch_async_block_invoke_23155(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC1CB1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23211(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC1CBC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DC1CC61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1D09C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CPLServerFeedbackMessageReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((*&v12 & 0x7FFF8) == 8)
      {
        v13 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
        [a1 addKeysAndValues:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CPLServerFeedbackKeyAndValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DC1D5FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23514(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CPLSuggestionRecordListReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v21 = objc_alloc_init(CPLSuggestionPerson);
          [a1 addPerson:v21];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !CPLSuggestionPersonReadFrom(v21, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(CPLSuggestionMemory);
          [a1 addMemory:v21];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !CPLSuggestionMemoryReadFrom(v21, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(CPLSuggestionAsset);
          [a1 addAsset:v21];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !CPLSuggestionAssetReadFrom(v21, a2))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v24 & 0x7F) << v14;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_45:
          *(a1 + 32) = v20;
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DC1D90B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __CPLPlatformOSLogDomain()
{
  if (__CPLPlatformOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLPlatformOSLogDomain_onceToken, &__block_literal_global_23823);
  }

  v1 = __CPLPlatformOSLogDomain_result;

  return v1;
}

uint64_t CPLServerFeedbackRequestReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((*&v12 & 0x7FFF8) == 8)
      {
        v13 = objc_alloc_init(CPLServerFeedbackMessage);
        [a1 addMessages:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CPLServerFeedbackMessageReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __CPLTaskOSLogDomain_24274()
{
  if (__CPLTaskOSLogDomain_onceToken_24282 != -1)
  {
    dispatch_once(&__CPLTaskOSLogDomain_onceToken_24282, &__block_literal_global_459);
  }

  v1 = __CPLTaskOSLogDomain_result_24283;

  return v1;
}

void sub_1DC1DC6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24318(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cpl_dispatch_async_block_invoke_24326(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1DC1DEA48(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

void sub_1DC1E13F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC1E1F34(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1DC1E3570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DC1E5478(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Unwind_Resume(a1);
}

uint64_t __CPLCopyDefaultSerialQueueAttributes_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = CPLCopyDefaultSerialQueueAttributes_attr;
  CPLCopyDefaultSerialQueueAttributes_attr = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t CPLForceSharedLibraryFeatureEnabled(uint64_t result)
{
  isSharedLibraryFeatureEnabled = result;
  overridesSharedLibraryFeatureFlag = 1;
  return result;
}

uint64_t CPLIsCollectionShareFeatureEnabled()
{
  if (overridesCollectionShareFeatureFlag == 1)
  {
    return isCollectionShareFeatureEnabled;
  }

  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 objectForKey:@"CPLEnableCollectionShares"];

  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 BOOLValue];

    return v3;
  }

  else
  {

    return _os_feature_enabled_impl();
  }
}

uint64_t CPLForceCollectionShareFeatureEnabled(uint64_t result)
{
  isCollectionShareFeatureEnabled = result;
  overridesCollectionShareFeatureFlag = 1;
  return result;
}

uint64_t CPLAllowsInactiveSharedLibraryScope()
{
  if (CPLAllowsInactiveSharedLibraryScope_onceToken != -1)
  {
    dispatch_once(&CPLAllowsInactiveSharedLibraryScope_onceToken, &__block_literal_global_5_24591);
  }

  return CPLAllowsInactiveSharedLibraryScope_allowsInactiveSharedLibraryScope;
}

void __CPLAllowsInactiveSharedLibraryScope_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  CPLAllowsInactiveSharedLibraryScope_allowsInactiveSharedLibraryScope = [v0 BOOLForKey:@"CPLAllowInactiveSharedLibrary"];
}

uint64_t CPLDontWarnAboutUnsupportedScopes()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CPLDontWarnAboutUnsupportedScopes"];

  return v1 & 1 | ((_warnAboutUnsupportedScopes & 1) == 0);
}

uint64_t _CPLShouldValidateStableHash()
{
  if (_CPLShouldValidateStableHash_onceToken != -1)
  {
    dispatch_once(&_CPLShouldValidateStableHash_onceToken, &__block_literal_global_13);
  }

  return _CPLShouldValidateStableHash_result;
}

id _CPLArrayFromColonSeparatedList(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [v1 componentsSeparatedByString:@":"];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) stringByTrimmingCharactersInSet:{v5, v14}];
        if ([v11 length])
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t CPLEnableWorkaroundFor101242629()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"CPLDisableWorkaroundFor101242629"];

  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 BOOLValue] ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

__CFString *_CPLShortDescriptionForFaceCropType(unint64_t a1)
{
  if (a1 < 9 && ((0x117u >> a1) & 1) != 0)
  {
    v1 = off_1E8620B08[a1];
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld??", a1];
  }

  return v1;
}

uint64_t CPLSuggestionPersonReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v27;
          }

LABEL_52:
          v31 = 16;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        if (v13 != 4)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v31 = 32;
          goto LABEL_53;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      v24 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}