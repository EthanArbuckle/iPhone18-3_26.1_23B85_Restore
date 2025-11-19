uint64_t acc_manager_disableLockoutForAllTransportTypes()
{
  _tryWRLock("acc_manager_disableLockoutForAllTransportTypes", 960);
  qword_100245FB0 = 0;
  xmmword_100245F90 = 0u;
  unk_100245FA0 = 0u;
  xmmword_100245F70 = 0u;
  unk_100245F80 = 0u;
  xmmword_100245F50 = 0u;
  unk_100245F60 = 0u;
  xmmword_100245F30 = 0u;
  unk_100245F40 = 0u;
  if (gLogObjects && gNumLogObjects >= 13)
  {
    v0 = *(gLogObjects + 96);
  }

  else
  {
    v0 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Disabled lockout for all transport types!", v2, 2u);
  }

  return pthread_rwlock_unlock(&_gAccManagerLock);
}

uint64_t acc_manager_findAdapterForConnection(const void *a1)
{
  if (a1)
  {
    acc_manager_findAdapterForConnection_cold_1(a1, &v13, v6);
    v2 = *v6;
  }

  else
  {
    v2 = 0;
  }

  if (gLogObjects)
  {
    v3 = gNumLogObjects < 14;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v4 = *(gLogObjects + 104);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 136315906;
    *&v6[4] = "acc_manager_findAdapterForConnection";
    v7 = 1024;
    v8 = 1480;
    v9 = 2112;
    v10 = a1;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d connectionUUID %@, resultAdapterConnectionUUID %@", v6, 0x26u);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return v2;
}

uint64_t acc_manager_findConnectionsThroughAdapter(const void *a1)
{
  if (a1)
  {
    acc_manager_findConnectionsThroughAdapter_cold_1(a1, &v13, v6);
    v2 = *v6;
  }

  else
  {
    v2 = 0;
  }

  if (gLogObjects)
  {
    v3 = gNumLogObjects < 14;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v4 = *(gLogObjects + 104);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 136315906;
    *&v6[4] = "acc_manager_findConnectionsThroughAdapter";
    v7 = 1024;
    v8 = 1512;
    v9 = 2112;
    v10 = a1;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d adapterConnectionUUID %@, resultConnectionUUIDs %@", v6, 0x26u);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return v2;
}

void ___initSharedManager_block_invoke(id a1)
{
  if (!qword_100245F10)
  {
    qword_100245F10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  }

  if (!qword_100245F18)
  {
    qword_100245F18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  }

  if (!qword_100245F20)
  {
    qword_100245F20 = CFCreateUUIDString();
    qword_100245F28 = systemInfo_getCurrentUnixTime();
    if (gLogObjects && gNumLogObjects >= 13)
    {
      v1 = *(gLogObjects + 96);
    }

    else
    {
      v1 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 138412290;
      v3 = qword_100245F20;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Initialized device UUID: %@", &v2, 0xCu);
    }
  }
}

void OUTLINED_FUNCTION_10_8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void OUTLINED_FUNCTION_28_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void OUTLINED_FUNCTION_39_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, void *a3)
{

  CFSetApplyFunction(v3, CFSetApplierFunction_removeValueFromMutableDictionary, a3);
}

void *OUTLINED_FUNCTION_56_0(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset(&a9 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), 170, a3);
}

BOOL OUTLINED_FUNCTION_65()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_73_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0xCu);
}

BOOL OUTLINED_FUNCTION_75_1()
{

  return acc_connection_isAuthenticated(v0, 6u);
}

void OUTLINED_FUNCTION_77_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

void OUTLINED_FUNCTION_97(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, (v5 - 144), 0x24u);
}

void OUTLINED_FUNCTION_98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, (v5 - 144), 0x18u);
}

void OUTLINED_FUNCTION_100(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x12u);
}

CFStringRef iAP2MsgCopyDataAsCFString(unsigned __int16 *a1, _DWORD *a2)
{
  DataAsString = iAP2MsgGetDataAsString(a1, a2);
  if (!DataAsString || *a2)
  {
    return 0;
  }

  return CFStringCreateWithCString(kCFAllocatorDefault, DataAsString, 0x8000100u);
}

_BYTE *iAP2MsgAddCFU64Param(uint64_t a1, uint64_t a2, __int16 a3, const __CFNumber *a4)
{
  if (!a4)
  {
    return 0;
  }

  FreeParam = iAP2MsgGetFreeParam(a1);
  if (FreeParam)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    if (CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr))
    {
      iAP2MsgInitParam(a1, FreeParam, a3, 0, 0xCu, a2);
      v9 = HIBYTE(valuePtr);
      *iAP2MsgGetParamValueData(FreeParam) = v9;
      v10 = BYTE6(valuePtr);
      *(iAP2MsgGetParamValueData(FreeParam) + 1) = v10;
      v11 = valuePtr >> 40;
      *(iAP2MsgGetParamValueData(FreeParam) + 2) = v11;
      LOBYTE(v11) = BYTE4(valuePtr);
      *(iAP2MsgGetParamValueData(FreeParam) + 3) = v11;
      v12 = valuePtr >> 24;
      *(iAP2MsgGetParamValueData(FreeParam) + 4) = v12;
      v13 = valuePtr >> 16;
      *(iAP2MsgGetParamValueData(FreeParam) + 5) = v13;
      v14 = valuePtr >> 8;
      *(iAP2MsgGetParamValueData(FreeParam) + 6) = v14;
      LOBYTE(v14) = valuePtr;
      *(iAP2MsgGetParamValueData(FreeParam) + 7) = v14;
      return FreeParam;
    }

    return 0;
  }

  return FreeParam;
}

uint64_t iAP2MsgAddCFU32Param(uint64_t a1, uint64_t a2, __int16 a3, CFNumberRef number)
{
  if (!number)
  {
    return 0;
  }

  valuePtr = -1431655766;
  if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    return iAP2MsgAddU32Param(a1, a2, a3, valuePtr);
  }

  else
  {
    return 0;
  }
}

uint64_t iAP2MsgAddCFU16Param(uint64_t a1, uint64_t a2, __int16 a3, CFNumberRef number)
{
  if (!number)
  {
    return 0;
  }

  valuePtr = -21846;
  if (CFNumberGetValue(number, kCFNumberSInt16Type, &valuePtr))
  {
    return iAP2MsgAddU16Param(a1, a2, a3, valuePtr);
  }

  else
  {
    return 0;
  }
}

_BYTE *iAP2MsgAddCFU8Param(uint64_t a1, uint64_t a2, __int16 a3, CFNumberRef number)
{
  if (!number)
  {
    return 0;
  }

  valuePtr = -86;
  if (CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr))
  {
    return iAP2MsgAddU8Param(a1, a2, a3, valuePtr);
  }

  else
  {
    return 0;
  }
}

_BYTE *iAP2MsgAddCFBooleanParam(uint64_t a1, uint64_t a2, __int16 a3, CFBooleanRef BOOLean)
{
  if (!BOOLean)
  {
    return 0;
  }

  v7 = CFBooleanGetValue(BOOLean) != 0;

  return iAP2MsgAddU8Param(a1, a2, a3, v7);
}

unint64_t _compareBufferIDAndFeatureType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = v3 - v4;
  if (v3 == v4)
  {
    return *(a1 + 1) - *(a2 + 1);
  }

  return result;
}

void iap2_sessionFileTransfer_deleteFileTransfer(void *a1)
{
  v2 = gLogObjects;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 24;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      iap2_sessionFileTransfer_deleteFileTransfer_cold_1(v2);
    }
  }

  else
  {
    v4 = *(gLogObjects + 184);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    iap2_sessionFileTransfer_deleteFileTransfer_cold_2();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  free(a1);
}

id logObjectForModule_9()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v1)
    {
      logObjectForModule_cold_1_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 48);
  }

  return v10;
}

void platform_iapd_bridge_accessory_connected(uint64_t a1, int a2)
{
  if (a2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 7;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v5 = &_os_log_default;
      v4 = &_os_log_default;
    }

    else
    {
      v5 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      platform_iapd_bridge_accessory_connected_cold_2();
    }
  }

  v6 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
  [v6 iapdAccessoryArrived:a1];
}

void platform_iapd_bridge_accessory_disconnected(uint64_t a1)
{
  v2 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
  [v2 iapdAccessoryLeft:a1];
}

__darwin_time_t iAP2TimeGetCurTimeMsInt64()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v1.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 1000;
}

uint64_t iAP2TimeCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a5)
  {
    iAP2TimeCreate_cold_4();
  }

  if (!a2)
  {
    iAP2TimeCreate_cold_3();
  }

  if (a4 == 255)
  {
    iAP2TimeCreate_cold_2();
  }

  if (!a4)
  {
    iAP2TimeCreate_cold_1();
  }

  *(a5 + 16) = a1;
  *(a5 + 24) = 0;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 61) = a4;
  *(a5 + 56) = -1;
  *(a5 + 60) = 0;
  *(a5 + 48) = a5 + 64;
  v6 = a5 + 64 + iAP2ListArrayGetBuffSize(a4, 8);
  iAP2ListArrayInit(*(a5 + 48), *(a5 + 61), 8u);
  *a5 = a5;
  *(a5 + 8) = v6;
  return a5;
}

void iAP2TimeDelete(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 56) = -1;
    _iAP2TimeCancelCallback(a1);
    iAP2ListArrayCleanup(*(a1 + 48), 0);

    _iAP2TimeCleanupCallback(a1);
  }
}

void sub_100032FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v2 = &off_1001C3000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + v3);
      if (!v7)
      {
        v7 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v12) = v4;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v6 = *(a1 + 32);
          v7 = "<Undefined>";
        }
      }

      v8 = *(v6 + v3 + 8);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v15, v4, &v16);
          v8 = "<Undefined>";
        }
      }

      v9 = os_log_create(v7, v8);
      *(*(a1 + 40) + 8 * v4) = v9;
      if (v9)
      {
        ++v5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = v7;
          v13 = 2080;
          v14 = v8;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = &off_1001C3000;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 82);
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v10;
}

void *logObjectForModule_10()
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    return *(gLogObjects + 456);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

void _audioProductCerts_endpoint_dispatchQueueFinalizer(void *a1)
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v2 = *(gLogObjects + 456);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "audioProductCerts dispatchQueueFinalizer: cleanupSession", buf, 2u);
  }

  _audioProductCerts_endpoint_cleanupSession(a1);
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v3 = *(gLogObjects + 456);
  }

  else
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "audioProductCerts dispatchQueueFinalizer: free pProtocolEndpoint", v4, 2u);
  }

  if (a1)
  {
    free(a1);
  }
}

uint64_t _audioProductCerts_endpoint_initSession(uint64_t a1)
{
  *(a1 + 56) = CFAbsoluteTimeGetCurrent();
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v2 = *(gLogObjects + 456);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*a1 + 24);
    v4 = *(a1 + 56);
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "audioProductCerts initSession: %{coreacc:ACCEndpoint_TransportType_t}d, attachTimestamp %f", v7, 0x12u);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(a1 + 24) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(a1 + 32) = platform_auth_createCertificateCache(@"com.apple.accessoryd");
  *(a1 + 40) = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = Mutable;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 112) = 0;
  *(a1 + 80) = 5;
  return 1;
}

uint64_t audioProductCerts_endpoint_publish(uint64_t *a1, __int128 *a2)
{
  if (!a1)
  {
    goto LABEL_55;
  }

  v3 = *a1;
  if (!*a1 || !*v3)
  {
    goto LABEL_55;
  }

  Protocol = acc_endpoint_getProtocol(v3);
  v6 = acc_policies_allowAudioProductCertsOnTransport(*(*a1 + 24));
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v7 = *(gLogObjects + 456);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*a1 + 24);
    v30 = 67109376;
    v31 = v8;
    v32 = 1024;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "audioProductCerts publish: transportType %{coreacc:ACCEndpoint_TransportType_t}d, allowed %d ", &v30, 0xEu);
  }

  if (Protocol == 13)
  {
    isPublished = acc_endpoint_isPublished(*a1);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    v11 = Mutable;
    if (*a1)
    {
      v12 = *(*a1 + 16);
    }

    else
    {
      v12 = 0;
    }

    CFArrayAppendValue(Mutable, v12);
    v13 = acc_accInfo_copyAccessoryInfoDictionary(a2);
    if (v13)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v15 = MutableCopy;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v16 = *(gLogObjects + 456);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 67109634;
      v31 = v6;
      v32 = 1024;
      v33 = isPublished;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "audioProductCerts publish: transportAllowed %d, wasPublished = %d, accInfoDict = %@ ", &v30, 0x18u);
    }

    if (v6)
    {
      if (audioProductCerts_endpoint_publish_onceToken != -1)
      {
        audioProductCerts_endpoint_publish_cold_3();
      }

      v17 = acc_endpoint_copyProperties(*a1);
      if (v17)
      {
        v18 = v17;
        Count = CFDictionaryGetCount(v17);
        v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, Count + 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v21 = *(gLogObjects + 456);
        }

        else
        {
          v21 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          audioProductCerts_endpoint_publish_cold_5();
        }

        if (v20)
        {
          CFDictionaryAddValue(v20, CFACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID, *(*a1 + 8));
          CFDictionaryAddValue(v20, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID, *(*a1 + 16));
          CFDictionaryAddValue(v20, CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew, v18);
          if (gLogObjects && gNumLogObjects >= 58)
          {
            v22 = *(gLogObjects + 456);
          }

          else
          {
            v22 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            audioProductCerts_endpoint_publish_cold_7();
          }

          LocalCenter = CFNotificationCenterGetLocalCenter();
          _audioProductCerts_endpoint_handlePropertiesDidChange(LocalCenter, v24, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification, v25, v20);
          CFRelease(v20);
        }

        CFRelease(v18);
      }
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    return 1;
  }

  else
  {
LABEL_55:
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v27 = *(gLogObjects + 456);
    }

    else
    {
      v27 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v28)
    {
      if (a1 && *a1)
      {
        v29 = *(*a1 + 24);
      }

      else
      {
        v29 = 18;
      }

      v30 = 67109120;
      v31 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "audioProductCerts publish: transportType %{coreacc:ACCEndpoint_TransportType_t}d, Failed to publish!!! ", &v30, 8u);
      return 0;
    }
  }

  return result;
}

void __audioProductCerts_endpoint_publish_block_invoke(id a1)
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v1 = *(gLogObjects + 456);
  }

  else
  {
    v1 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "audioProductCerts publish: CFNotificationCenterAddObserver", v3, 2u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _audioProductCerts_endpoint_handlePropertiesDidChange, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void _audioProductCerts_endpoint_handlePropertiesDidChange(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v7 = *(gLogObjects + 456);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    _audioProductCerts_endpoint_handlePropertiesDidChange_cold_2();
  }

  if (CFEqual(a3, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification))
  {
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v8 = *(gLogObjects + 456);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = a3;
      v22 = 2112;
      v23 = a5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notification received %@, userInfo: %@", buf, 0x16u);
    }

    Value = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID);
    v10 = CFDictionaryGetValue(a5, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID);
    if (Value)
    {
      v11 = v10;
      v12 = CFGetTypeID(Value);
      if (v12 == CFStringGetTypeID())
      {
        if (v11)
        {
          v13 = CFGetTypeID(v11);
          if (v13 == CFStringGetTypeID())
          {
            EndpointWithUUID = acc_manager_getEndpointWithUUID(v11);
            if (EndpointWithUUID)
            {
              if (*(EndpointWithUUID + 7) == 13)
              {
                v15 = EndpointWithUUID[7];
                if (v15)
                {
                  CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld);
                  v16 = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew);
                  v17 = logObjectForModule_10();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                  {
                    _audioProductCerts_endpoint_handlePropertiesDidChange_cold_4();
                    if (!v16)
                    {
                      return;
                    }
                  }

                  else if (!v16)
                  {
                    return;
                  }

                  CFRetain(v16);
                  v18 = *(v15 + 48);
                  v19[0] = _NSConcreteStackBlock;
                  v19[1] = 0x40000000;
                  v19[2] = ___audioProductCerts_endpoint_handlePropertiesDidChange_block_invoke;
                  v19[3] = &__block_descriptor_tmp_26;
                  v19[4] = v15;
                  v19[5] = v16;
                  dispatch_async(v18, v19);
                }
              }
            }
          }
        }
      }
    }
  }
}

void __audioProductCerts_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  _audioProductCerts_endpoint_processIncomingData(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t _audioProductCerts_endpoint_handleMissingCertList(uint64_t *a1, CFTypeRef cf, const void *a3)
{
  if (!a1)
  {
    _audioProductCerts_endpoint_handleMissingCertList_cold_16();
    return buf[0];
  }

  if (!*a1)
  {
    _audioProductCerts_endpoint_handleMissingCertList_cold_15();
    return buf[0];
  }

  if (!**a1)
  {
    _audioProductCerts_endpoint_handleMissingCertList_cold_14();
    return buf[0];
  }

  if (!cf)
  {
    _audioProductCerts_endpoint_handleMissingCertList_cold_13();
    return buf[0];
  }

  if (!a3)
  {
    _audioProductCerts_endpoint_handleMissingCertList_cold_12();
    return buf[0];
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    _audioProductCerts_endpoint_handleMissingCertList_cold_1();
    return buf[0];
  }

  v7 = CFGetTypeID(a3);
  if (v7 != CFArrayGetTypeID())
  {
    _audioProductCerts_endpoint_handleMissingCertList_cold_2();
    return buf[0];
  }

  if (gLogObjects && gNumLogObjects >= 58)
  {
    v8 = *(gLogObjects + 456);
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*a1 + 16);
    v10 = *(a1 + 10);
    *buf = 136316162;
    v50 = "_audioProductCerts_endpoint_handleMissingCertList";
    v51 = 2112;
    v52 = v9;
    v53 = 1024;
    *v54 = v10;
    *&v54[4] = 2112;
    *&v54[6] = cf;
    *&v54[14] = 2112;
    *&v54[16] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: ENTER %@, state %d, %@ : %@", buf, 0x30u);
  }

  v11 = *a1;
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v12 = *(gLogObjects + 456);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    v39 = v11[2];
    *buf = 136315906;
    v50 = "_audioProductCerts_endpoint_handleMissingCertList";
    v51 = 2112;
    v52 = v39;
    v53 = 2112;
    *v54 = cf;
    *&v54[8] = 2112;
    *&v54[10] = a3;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s: %@, %@ : %@", buf, 0x2Au);
  }

  PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(v13, 1, cf, a3);
  acc_platform_packetLogging_logParsedData(*a1, cf, @"AudioProductCerts", PropertyDescription, 1);
  if (PropertyDescription)
  {
    CFRelease(PropertyDescription);
  }

  if (gLogObjects && gNumLogObjects >= 58)
  {
    v15 = *(gLogObjects + 456);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v11[2];
    v17 = *(a1 + 10);
    *buf = 136316162;
    v50 = "_audioProductCerts_endpoint_handleMissingCertList";
    v51 = 2112;
    v52 = v16;
    v53 = 2112;
    *v54 = cf;
    *&v54[8] = 1024;
    *&v54[10] = v17;
    *&v54[14] = 1024;
    *&v54[16] = 3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: %@, %@, state %d -> %d", buf, 0x2Cu);
  }

  *(a1 + 10) = 3;
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 10);
  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
LABEL_38:
    if (v18)
    {
      CFRelease(v18);
    }

    v55.length = CFArrayGetCount(a3);
    v55.location = 0;
    CFArrayApplyFunction(a3, v55, _CFArrayApplierFunction_handleCertList, a1);
    *(a1 + 20) = 5;
    if (CFArrayGetCount(a1[3]))
    {
      v28 = acc_userDefaults_BOOLForKey(@"DisableAMSHookUp");
      if (gLogObjects)
      {
        v29 = gNumLogObjects <= 57;
      }

      else
      {
        v29 = 1;
      }

      v30 = !v29;
      if ((v28 & 1) == 0)
      {
        if (v30)
        {
          v32 = *(gLogObjects + 456);
        }

        else
        {
          v32 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v36 = v11[2];
          *buf = 136315650;
          v50 = "_audioProductCerts_endpoint_handleMissingCertList";
          v51 = 2112;
          v52 = v36;
          v53 = 2112;
          *v54 = cf;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s: %@, %@, get accInfo from endpoint", buf, 0x20u);
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(v11);
        if (!AccessoryInfo)
        {
          if (gLogObjects && gNumLogObjects >= 58)
          {
            v38 = *(gLogObjects + 456);
          }

          else
          {
            v38 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v40 = v11[2];
            *buf = 136315650;
            v50 = "_audioProductCerts_endpoint_handleMissingCertList";
            v51 = 2112;
            v52 = v40;
            v53 = 2112;
            *v54 = cf;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s: %@, %@, get accInfo from connection", buf, 0x20u);
          }

          AccessoryInfo = acc_connection_getAccessoryInfo(*v11);
        }

        v41 = acc_accInfo_copyAccessoryInfoDescription(AccessoryInfo);
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v42 = *(gLogObjects + 456);
        }

        else
        {
          v42 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = v11[2];
          *buf = 136315906;
          v50 = "_audioProductCerts_endpoint_handleMissingCertList";
          v51 = 2112;
          v52 = v43;
          v53 = 2112;
          *v54 = cf;
          *&v54[8] = 2112;
          *&v54[10] = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s: %@, %@, accInfo %@", buf, 0x2Au);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (AccessoryInfo)
        {
          data = AccessoryInfo->data;
        }

        else
        {
          data = 0;
        }

        acc_platform_audioProductCerts_processAudioProductCerts(v11[1], v11[2], data, a1[3], *(a1 + 9));
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v45 = *(gLogObjects + 456);
        }

        else
        {
          v45 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = v11[2];
          v47 = *(a1 + 10);
          *buf = 136316162;
          v50 = "_audioProductCerts_endpoint_handleMissingCertList";
          v51 = 2112;
          v52 = v46;
          v53 = 2112;
          *v54 = cf;
          *&v54[8] = 1024;
          *&v54[10] = v47;
          *&v54[14] = 1024;
          *&v54[16] = 6;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s: %@, %@, state %d -> %d", buf, 0x2Cu);
        }

        *(a1 + 10) = 6;
        return 1;
      }

      if (v30)
      {
        v31 = *(gLogObjects + 456);
      }

      else
      {
        v31 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v35 = *(*a1 + 16);
      *buf = 136315394;
      v50 = "_audioProductCerts_endpoint_handleMissingCertList";
      v51 = 2112;
      v52 = v35;
      v34 = "%s: %@, skip notifying of audioProductCert";
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v31 = *(gLogObjects + 456);
      }

      else
      {
        v31 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v33 = *(*a1 + 16);
      *buf = 136315394;
      v50 = "_audioProductCerts_endpoint_handleMissingCertList";
      v51 = 2112;
      v52 = v33;
      v34 = "%s: %@, No Valid Certs! skip notifying of audioProductCert";
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v34, buf, 0x16u);
    return 1;
  }

  v20 = Count;
  v21 = 0;
  v22 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Type;
  v23 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Data;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v21);
    if (!ValueAtIndex)
    {
      break;
    }

    v25 = ValueAtIndex;
    Value = CFDictionaryGetValue(ValueAtIndex, v22);
    if (!Value)
    {
      break;
    }

    if (CFNumberCompare(v18, Value, 0) == kCFCompareEqualTo)
    {
      v27 = CFDictionaryGetValue(v25, v23);
      if (CFDataGetLength(v27) <= 0)
      {
        break;
      }
    }

    if (v20 == ++v21)
    {
      goto LABEL_38;
    }
  }

  *(a1 + 10) = 5;
  if (v18)
  {
    CFRelease(v18);
  }

  return 0;
}

uint64_t _audioProductCerts_endpoint_handleAuthResponseWithMissingCert(CFDictionaryRef *a1, CFTypeRef cf, const void *a3)
{
  if (!a1)
  {
    _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_13();
    return buf[0];
  }

  if (!*a1)
  {
    _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_12();
    return buf[0];
  }

  if (!**a1)
  {
    _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_11();
    return buf[0];
  }

  if (!cf)
  {
    _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_10();
    return buf[0];
  }

  if (!a3)
  {
    _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_9();
    return buf[0];
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_1();
    return buf[0];
  }

  v7 = CFGetTypeID(a3);
  if (v7 != CFArrayGetTypeID())
  {
    _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_2();
    return buf[0];
  }

  if (gLogObjects && gNumLogObjects >= 58)
  {
    v8 = *(gLogObjects + 456);
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*a1 + 2);
    v10 = *(a1 + 10);
    *buf = 136316162;
    v35 = "_audioProductCerts_endpoint_handleAuthResponseWithMissingCert";
    v36 = 2112;
    v37 = v9;
    v38 = 1024;
    *v39 = v10;
    *&v39[4] = 2112;
    *&v39[6] = cf;
    *&v39[14] = 2112;
    *&v39[16] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: ENTER %@, state %d, %@ : %@", buf, 0x30u);
  }

  v33 = *a1;
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v11 = *(gLogObjects + 456);
  }

  else
  {
    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(v33 + 2);
    *buf = 136315906;
    v35 = "_audioProductCerts_endpoint_handleAuthResponseWithMissingCert";
    v36 = 2112;
    v37 = v26;
    v38 = 2112;
    *v39 = cf;
    *&v39[8] = 2112;
    *&v39[10] = a3;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: %@, %@ : %@", buf, 0x2Au);
  }

  if (acc_userDefaults_BOOLForKey(@"DisableAACPAuth"))
  {
    v29 = logObjectForModule_10();
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v30 = *(v33 + 2);
      *buf = 136315906;
      v35 = "_audioProductCerts_endpoint_handleAuthResponseWithMissingCert";
      v36 = 2112;
      v37 = v30;
      v38 = 2112;
      *v39 = cf;
      *&v39[8] = 2112;
      *&v39[10] = a3;
      v31 = "%s: %@, Auth not supported! %@ : %@";
LABEL_66:
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v31, buf, 0x2Au);
      return 0;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(*(*a1 + 10), kCFACCProperties_Endpoint_AudioProduct_AuthResponse);
    if (CFArrayGetCount(Value) <= 0)
    {
      _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_8();
      return buf[0];
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    AuthChallenge = _audioProductCerts_endpoint_generateAuthChallenge(a1);
    if (AuthChallenge)
    {
      PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(AuthChallenge, 1, cf, a3);
      acc_platform_packetLogging_logParsedData(*a1, cf, @"AudioProductCerts", PropertyDescription, 1);
      if (PropertyDescription)
      {
        CFRelease(PropertyDescription);
      }

      if (gLogObjects && gNumLogObjects >= 58)
      {
        v16 = *(gLogObjects + 456);
      }

      else
      {
        v16 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(v33 + 2);
        v18 = *(a1 + 10);
        *buf = 136316162;
        v35 = "_audioProductCerts_endpoint_handleAuthResponseWithMissingCert";
        v36 = 2112;
        v37 = v17;
        v38 = 2112;
        *v39 = cf;
        *&v39[8] = 1024;
        *&v39[10] = v18;
        *&v39[14] = 1024;
        *&v39[16] = 6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: %@, %@, state %d -> %d", buf, 0x2Cu);
      }

      if (acc_userDefaults_BOOLForKey(@"DisableAACPAuth"))
      {
        goto LABEL_44;
      }

      v19 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Type;
      v20 = CFDictionaryGetValue(a1[12], kCFACCProperties_Endpoint_AACP_CertificateInfo_Type);
      v21 = CFDictionaryGetValue(ValueAtIndex, v19);
      if (CFNumberCompare(v20, v21, 0))
      {
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v22 = *(gLogObjects + 456);
        }

        else
        {
          v22 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(v33 + 2);
          v24 = CFDictionaryGetValue(a1[12], kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
          *buf = 136316162;
          v35 = "_audioProductCerts_endpoint_handleAuthResponseWithMissingCert";
          v36 = 2112;
          v37 = v23;
          v38 = 2112;
          *v39 = cf;
          *&v39[8] = 2112;
          *&v39[10] = a3;
          *&v39[18] = 2112;
          *&v39[20] = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: %@, %@ : %@, cert %@", buf, 0x34u);
        }

        goto LABEL_43;
      }

      if (_audioProductCerts_endpoint_validateChallenge(a1, ValueAtIndex))
      {
LABEL_43:
        if ((acc_userDefaults_BOOLForKey(@"KeepAACPAuthData") & 1) == 0)
        {
          v27 = a1[12];
          if (v27)
          {
            CFRelease(v27);
            a1[12] = 0;
          }

          v28 = a1[13];
          if (v28)
          {
            CFRelease(v28);
            a1[13] = 0;
          }

          audioProductCerts_endpoint_removeProperty(a1);
          audioProductCerts_endpoint_removeProperty(a1);
        }

LABEL_44:
        *(a1 + 10) = 6;
        return 1;
      }

      _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_7();
      return buf[0];
    }

    v29 = logObjectForModule_10();
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v32 = *(v33 + 2);
      *buf = 136315906;
      v35 = "_audioProductCerts_endpoint_handleAuthResponseWithMissingCert";
      v36 = 2112;
      v37 = v32;
      v38 = 2112;
      *v39 = cf;
      *&v39[8] = 2112;
      *&v39[10] = a3;
      v31 = "%s: %@, Unable to generate auth challenge! %@ : %@";
      goto LABEL_66;
    }
  }

  return result;
}

__CFString *_audioProductCerts_endpoint_createPropertyDescription(uint64_t a1, int a2, uint64_t a3, const __CFArray *a4)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v8 = Mutable;
  v9 = "DELETE";
  if (a2)
  {
    v9 = "ADD";
  }

  CFStringAppendFormat(Mutable, 0, @"(%s) { %@ : \n", v9, a3);
  if (a4 && (v10 = CFGetTypeID(a4), v10 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(a4))
    {
      v12.length = CFArrayGetCount(a4);
      v12.location = 0;
      CFArrayApplyFunction(a4, v12, _CFArrayApplierFunction_parseEntries, v8);
    }

    else
    {
      CFStringAppendFormat(v8, 0, @"no entries ");
    }
  }

  else
  {
    CFStringAppendFormat(v8, 0, @"(no valid entries) ");
  }

  CFStringAppendFormat(v8, 0, @"}");
  return v8;
}

void __audioProductCerts_endpoint_setProperty_block_invoke(uint64_t a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 40));
  if (EndpointWithUUID)
  {
    *(*(*(a1 + 32) + 8) + 24) = acc_endpoint_setProperty(EndpointWithUUID, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v3 = *(gLogObjects + 456);
    }

    else
    {
      v3 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 136315394;
      v8 = "audioProductCerts_endpoint_setProperty_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: unable to find endpoint for %@", &v7, 0x16u);
    }
  }

  CFRelease(*(a1 + 40));
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

void _audioProductCerts_endpoint_cleanupSession(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v2 = *(gLogObjects + 456);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "audioProductCerts cleanupSession: attachTimestamp %f", &v11, 0xCu);
  }

  v4 = *(a1 + 32);
  platform_auth_deallocCertificateCache();
  *(a1 + 8) = 0;
  *(a1 + 112) = 0;
  *(a1 + 80) = 5;
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 24) = 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 104) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }
}

void _CFArrayApplierFunction_handleSerialList(CFTypeRef cf, uint64_t *a2)
{
  if (!cf)
  {
    goto LABEL_42;
  }

  if (!a2)
  {
    goto LABEL_42;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    goto LABEL_42;
  }

  v5 = *a2;
  if (!*a2 || !*(v5 + 16))
  {
    goto LABEL_42;
  }

  Value = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type);
  v7 = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial);
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v8 = *(gLogObjects + 456);
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v35 = Value;
    *&v35[8] = 2112;
    *v36 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleSerialList: type %@, serial %@", buf, 0x16u);
  }

  if (Value)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    if (*(a2 + 9) == 1)
    {
      v15 = a2[4];
      if ((platform_auth_removeCertDataEntryFromCache() & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v16 = *(gLogObjects + 456);
        }

        else
        {
          v16 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: failed to remove certificate from cache!", buf, 2u);
        }
      }
    }

    CertDataFromSerialNumber = platform_auth_createCertDataFromSerialNumber(a2[4], v7);
    if (CertDataFromSerialNumber)
    {
      v20 = CertDataFromSerialNumber;
      v30 = acc_userDefaults_BOOLForKey(@"DisableCertVerification");
      v31 = v20;
      v32 = platform_auth_verifyPublicCertificate();
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v21 = *(gLogObjects + 456);
      }

      else
      {
        v21 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v35 = v32;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleSerialList: initial verify, valid %d", buf, 8u);
      }

      if (v32)
      {
        v33 = 1;
      }

      else
      {
        v33 = platform_auth_verifyCertificateChain(v31, 0, 4u);
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v22 = *(gLogObjects + 456);
        }

        else
        {
          v22 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v35 = v33;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleSerialList: second verify, valid %d", buf, 8u);
        }
      }

      if (gLogObjects && gNumLogObjects >= 58)
      {
        v23 = *(gLogObjects + 456);
      }

      else
      {
        v23 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v35 = v30;
        *&v35[4] = 1024;
        *&v35[6] = v33;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleSerialList: cached certData, skip %d, valid %d", buf, 0xEu);
      }

      if ((v30 | v33))
      {
        v24 = Value;
        v25 = v31;
        _audioProductCerts_endpoint_addCertEntryToList(a2, v24, v7, v31);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v26 = *(gLogObjects + 456);
        }

        else
        {
          v26 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v35 = v7;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "_CFArrayApplierFunction_handleSerialList: invalid cached certData, remove cert from cache! %@", buf, 0xCu);
        }

        v27 = a2[4];
        if ((platform_auth_removeCertDataEntryFromCache() & 1) == 0)
        {
          if (gLogObjects && gNumLogObjects >= 58)
          {
            v28 = *(gLogObjects + 456);
          }

          else
          {
            v28 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleSerialList: failed to remove certificate from cache!", buf, 2u);
          }
        }

        if (gLogObjects && gNumLogObjects >= 58)
        {
          v29 = *(gLogObjects + 456);
        }

        else
        {
          v29 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v35 = Value;
          *&v35[8] = 2112;
          *v36 = v7;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "_CFArrayApplierFunction_handleSerialList: call _addCertEntryToList, typeObj %@, serialObj %@", buf, 0x16u);
        }

        _audioProductCerts_endpoint_addCertEntryToList(a2, Value, v7, 0);
        v25 = v31;
      }

      CFRelease(v25);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v19 = *(gLogObjects + 456);
      }

      else
      {
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v35 = Value;
        *&v35[8] = 2112;
        *v36 = v7;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "_CFArrayApplierFunction_handleSerialList: missing cached certData, call _addCertEntryToList, typeObj %@, serialObj %@", buf, 0x16u);
      }

      _audioProductCerts_endpoint_addCertEntryToList(a2, Value, v7, 0);
    }
  }

  if (gLogObjects && gNumLogObjects >= 58)
  {
    v11 = *(gLogObjects + 456);
  }

  else
  {
    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(v5 + 16);
    v13 = *(a2 + 10);
    *buf = 138412802;
    *v35 = v12;
    *&v35[8] = 1024;
    *v36 = v13;
    *&v36[4] = 1024;
    *&v36[6] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "_CFArrayApplierFunction_handleSerialList: %@, state %d, success %d", buf, 0x18u);
  }

  if (gLogObjects && gNumLogObjects >= 58)
  {
    v14 = *(gLogObjects + 456);
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (v10)
    {
      return;
    }

LABEL_42:
    _CFArrayApplierFunction_handleSerialList_cold_12();
    return;
  }

  v17 = *(v5 + 16);
  *buf = 138412546;
  *v35 = v17;
  *&v35[8] = 2112;
  *v36 = cf;
  _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "_CFArrayApplierFunction_handleSerialList: %@, value %@", buf, 0x16u);
  if ((v10 & 1) == 0)
  {
    goto LABEL_42;
  }
}

void _CFArrayApplierFunction_handleCertList(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    goto LABEL_59;
  }

  if (!a2)
  {
    goto LABEL_59;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    goto LABEL_59;
  }

  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_59;
  }

  key = kCFACCProperties_Endpoint_AACP_CertificateInfo_Type;
  Value = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type);
  v54 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial;
  v7 = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial);
  v53 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Data;
  v8 = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v10 = *(gLogObjects + 456);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v59 = Value;
    *&v59[8] = 2112;
    *&v59[10] = v7;
    *&v59[18] = 2112;
    v60 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: type %@, serial %@, data %@", buf, 0x20u);
  }

  v11 = 0;
  if (Value && v7 && v8)
  {
    if (CFDataGetLength(v8) >= 1 && (Length = CFDataGetLength(v8)) != 0)
    {
      v51 = Length;
      if (acc_userDefaults_BOOLForKey(@"DisableCertVerification"))
      {
        v13 = 0;
        v14 = 1;
        v52 = 1;
      }

      else
      {
        v26 = platform_auth_verifyPublicCertificate();
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v27 = *(gLogObjects + 456);
        }

        else
        {
          v27 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v59 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: initial verify, valid %d", buf, 8u);
        }

        v9 = &audioProductCerts_endpoint_publish_onceToken;
        if (v26)
        {
          v14 = 0;
          v52 = 1;
          v13 = 1;
        }

        else
        {
          v13 = platform_auth_verifyCertificateChain(v8, 0, 4u);
          if (gLogObjects && gNumLogObjects >= 58)
          {
            v29 = *(gLogObjects + 456);
          }

          else
          {
            v29 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v59 = v13;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: second verify, valid %d", buf, 8u);
          }

          v14 = 0;
          v52 = 1;
          v9 = &audioProductCerts_endpoint_publish_onceToken;
        }
      }
    }

    else
    {
      v51 = 0;
      v52 = 0;
      v13 = 0;
      v14 = 1;
    }

    v56 = v14;
    v15 = v9[491];
    if (v15 && gNumLogObjects >= 58)
    {
      v16 = *(v15 + 456);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v59 = v56;
      *&v59[4] = 1024;
      *&v59[6] = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: skip %d, valid %d", buf, 0xEu);
    }

    if (v13)
    {
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"CertificateVerify: serial %@, type %@, valid certData", v7, Value);
    }

    else
    {
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"CertificateVerify: serial %@, type %@, NOT valid certData", v7, Value);
    }

    v18 = v17;
    acc_platform_packetLogging_logData(v5, v17, @"AudioProductCerts", v8, -1);
    v9 = &audioProductCerts_endpoint_publish_onceToken;
    if (v18)
    {
      CFRelease(v18);
    }

    if (((v56 | v13) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v19 = *(gLogObjects + 456);
      }

      else
      {
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v11 = 0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: certificate failed verify!", buf, 2u);
        v11 = 0;
      }

      goto LABEL_40;
    }

    if (v52)
    {
      v30 = *(a2 + 32);
      if ((platform_auth_addCertDataEntryToCacheForSerialNumber() & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v31 = *(gLogObjects + 456);
        }

        else
        {
          v31 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        v9 = &audioProductCerts_endpoint_publish_onceToken;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: failed to save certificate to cache!", buf, 2u);
        }
      }

      if (gLogObjects)
      {
        v35 = gNumLogObjects <= 57;
      }

      else
      {
        v35 = 1;
      }

      v36 = !v35;
      if (v56)
      {
        if (v36)
        {
          v37 = *(gLogObjects + 456);
        }

        else
        {
          v37 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v59 = cf;
          v33 = "_CFArrayApplierFunction_handleCertList: got certificate for certificateList, entry %@";
LABEL_109:
          v34 = v37;
          goto LABEL_110;
        }
      }

      else
      {
        if (v36)
        {
          v37 = *(gLogObjects + 456);
        }

        else
        {
          v37 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v59 = cf;
          v33 = "_CFArrayApplierFunction_handleCertList: got valid certificate for certificateList, entry %@";
          goto LABEL_109;
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v32 = *(gLogObjects + 456);
      }

      else
      {
        v32 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v9 = &audioProductCerts_endpoint_publish_onceToken;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v59 = cf;
        v33 = "_CFArrayApplierFunction_handleCertList: got empty certificate data for certificateList, entry %@";
        v34 = v32;
LABEL_110:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, v33, buf, 0xCu);
      }
    }

    SerialEntryIndexInCertList = _audioProductCerts_endpoint_getSerialEntryIndexInCertList(*(a2 + 24), v7);
    if ((SerialEntryIndexInCertList & 0x8000000000000000) == 0)
    {
      v39 = SerialEntryIndexInCertList;
      v40 = v9[491];
      if (v40 && gNumLogObjects >= 58)
      {
        v41 = *(v40 + 456);
      }

      else
      {
        v41 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
          v41 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v59 = v7;
        *&v59[8] = 2048;
        *&v59[10] = v39;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "_CFArrayApplierFunction_handleCertList: certificate already in certificateList for %@ at index %ld", buf, 0x16u);
      }

      CFArrayRemoveValueAtIndex(*(a2 + 24), v39);
      v9 = &audioProductCerts_endpoint_publish_onceToken;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, key, Value);
    CFDictionaryAddValue(Mutable, v54, v7);
    if (v52)
    {
      CFDictionaryAddValue(Mutable, v53, v8);
    }

    v43 = v9[491];
    if (v43)
    {
      v44 = gNumLogObjects <= 57;
    }

    else
    {
      v44 = 1;
    }

    v45 = !v44;
    if (v56)
    {
      if (v45)
      {
        v46 = *(v43 + 456);
      }

      else
      {
        v46 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        goto LABEL_142;
      }

      *buf = 138412290;
      *v59 = cf;
      v47 = "_CFArrayApplierFunction_handleCertList: add certificate to certificateList, entry %@";
    }

    else
    {
      if (v45)
      {
        v46 = *(v43 + 456);
      }

      else
      {
        v46 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        goto LABEL_142;
      }

      *buf = 138412290;
      *v59 = cf;
      v47 = "_CFArrayApplierFunction_handleCertList: add valid certificate to certificateList, entry %@";
    }

    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, v47, buf, 0xCu);
LABEL_142:
    CFArrayAppendValue(*(a2 + 24), Mutable);
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v9 = &audioProductCerts_endpoint_publish_onceToken;
    if ((v52 & (acc_userDefaults_BOOLForKey(@"DisableAACPAuth") ^ 1)) == 1 && *(a2 + valuePtr + 72) == 1 || (v52 & (acc_userDefaults_BOOLForKey(@"DisableAACPAuth") ^ 1)) == 1 && *(a2 + 80) == valuePtr)
    {
      CFArrayAppendValue(*(a2 + 88), Mutable);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v48 = *(gLogObjects + 456);
      }

      else
      {
        v48 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v9 = &audioProductCerts_endpoint_publish_onceToken;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = acc_userDefaults_BOOLForKey(@"DisableAACPAuth");
        v50 = *(a2 + valuePtr + 72);
        *buf = 67109632;
        *v59 = v49 ^ 1;
        *&v59[4] = 2048;
        *&v59[6] = v51;
        *&v59[14] = 1024;
        *&v59[16] = v50;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "_CFArrayApplierFunction_handleCertList: skip adding to pendingList, enable %d, len %zu, supported %d", buf, 0x18u);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v11 = 1;
  }

LABEL_40:
  v20 = v9[491];
  if (v20 && gNumLogObjects >= 58)
  {
    v21 = *(v20 + 456);
  }

  else
  {
    v21 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = *(v5 + 16);
    v23 = *(a2 + 40);
    *buf = 138412802;
    *v59 = v22;
    *&v59[8] = 1024;
    *&v59[10] = v23;
    *&v59[14] = 1024;
    *&v59[16] = v11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "_CFArrayApplierFunction_handleCertList: %@, state %d, success %d", buf, 0x18u);
  }

  v24 = v9[491];
  if (v24 && gNumLogObjects >= 58)
  {
    v25 = *(v24 + 456);
  }

  else
  {
    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      return;
    }

LABEL_59:
    _CFArrayApplierFunction_handleCertList_cold_16();
    return;
  }

  v28 = *(v5 + 16);
  *buf = 138412546;
  *v59 = v28;
  *&v59[8] = 2112;
  *&v59[10] = cf;
  _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "_CFArrayApplierFunction_handleCertList: %@, value %@", buf, 0x16u);
  if ((v11 & 1) == 0)
  {
    goto LABEL_59;
  }
}

uint64_t _audioProductCerts_endpoint_handlePrimaryBudMismatch(uint64_t a1, CFDictionaryRef theDict)
{
  *(a1 + 96) = 0;
  v4 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Type;
  Value = CFDictionaryGetValue(theDict, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type);
  v6 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial;
  v7 = CFDictionaryGetValue(theDict, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial);
  if (CFArrayGetCount(*(a1 + 24)) < 1 || v7 != 0)
  {
    v9 = 0;
LABEL_13:
    CertDataFromSerialNumber = platform_auth_createCertDataFromSerialNumber(*(a1 + 32), v7);
    if (CertDataFromSerialNumber)
    {
      v14 = CertDataFromSerialNumber;
      CFDictionaryAddValue(v9, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data, CertDataFromSerialNumber);
      v15 = v14;
    }

    else
    {
      if (CFArrayGetCount(*(a1 + 16)))
      {
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v18 = *(gLogObjects + 456);
        }

        else
        {
          v18 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(*a1 + 16);
          v21 = *(a1 + 16);
          v28 = 136315650;
          v29 = "_audioProductCerts_endpoint_handlePrimaryBudMismatch";
          v30 = 2112;
          v31 = v20;
          v32 = 2112;
          v33 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@, setProperty kCFACCProperties_Endpoint_AudioProduct_CertificateRequired: %@", &v28, 0x20u);
        }

        v28 = -1431655766;
        if (CFNumberGetValue(Value, kCFNumberIntType, &v28))
        {
          *(a1 + v28 + 72) = 1;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
        CFArrayRemoveValueAtIndex(*(a1 + 16), 0);
        CFArrayAppendValue(*(a1 + 16), ValueAtIndex);
        Copy = CFArrayCreateCopy(kCFAllocatorDefault, *(a1 + 16));
        audioProductCerts_endpoint_setProperty(a1, kCFACCProperties_Endpoint_AACP_CertificateRequired, Copy);
        if (Copy)
        {
          CFRelease(Copy);
        }

        v24 = v28;
        if (v28 >= 5)
        {
          v24 = 5;
        }

        *(a1 + 80) = v24;
        *(a1 + 40) = 5;
        return 1;
      }

      v16 = *(a1 + 24);
      if (!v16 || !CFArrayGetCount(v16))
      {
        return 1;
      }

      if (gLogObjects && gNumLogObjects >= 58)
      {
        v19 = *(gLogObjects + 456);
      }

      else
      {
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*a1 + 16);
        v26 = *(a1 + 24);
        v28 = 136315650;
        v29 = "_audioProductCerts_endpoint_handlePrimaryBudMismatch";
        v30 = 2112;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: %@, setProperty kCFACCProperties_Endpoint_AudioProduct_CertificateList: %@", &v28, 0x20u);
      }

      *(a1 + 40) = 5;
      v27 = CFArrayCreateCopy(kCFAllocatorDefault, *(a1 + 24));
      audioProductCerts_endpoint_setProperty(a1, kCFACCProperties_Endpoint_AACP_CertificateList, v27);
      if (!v27)
      {
        return 1;
      }

      v15 = v27;
    }

    CFRelease(v15);
    return 1;
  }

  v10 = 1;
  while (1)
  {
    v11 = CFArrayGetValueAtIndex(*(a1 + 24), v10 - 1);
    if (!v11)
    {
      _audioProductCerts_endpoint_handlePrimaryBudMismatch_cold_2(a1);
      return v28;
    }

    v9 = v11;
    v12 = CFDictionaryGetValue(v11, v4);
    if (!v12)
    {
      break;
    }

    v7 = 0;
    if (CFNumberCompare(Value, v12, 0) == kCFCompareEqualTo)
    {
      v7 = CFDictionaryGetValue(v9, v6);
    }

    if (v10 < CFArrayGetCount(*(a1 + 24)))
    {
      ++v10;
      if (!v7)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  _audioProductCerts_endpoint_handlePrimaryBudMismatch_cold_1(a1);
  return v28;
}

void OUTLINED_FUNCTION_70_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x2Cu);
}

CFComparisonResult OUTLINED_FUNCTION_77_1(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

void OUTLINED_FUNCTION_82_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x2Au);
}

void OUTLINED_FUNCTION_2_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

uint64_t loggingProtocol_getCurrentTimeInNanoseconds()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return v1.tv_nsec + 1000000000 * v1.tv_sec;
}

unint64_t systemInfo_getCurrentUnixTime()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t systemInfo_getCurrentUnixTimeMS()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2 * 1000.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t systemInfo_systemSupportsWAPI()
{
  if (systemInfo_systemSupportsWAPI_onceToken != -1)
  {
    systemInfo_systemSupportsWAPI_cold_1();
  }

  return systemInfo_systemSupportsWAPI_supportsWAPI;
}

void platform_navigation_accessoryAttached(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "navigation accessoryAttached: %@, componentList=%@", &v7, 0x16u);
  }

  v6 = +[ACCNavigationServer sharedServer];
  [v6 accessoryNavigationAttached:a1 componentList:a2];
}

void platform_navigation_accessoryDetached(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v2 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "navigation accessoryDetached: %@", &v5, 0xCu);
  }

  v4 = +[ACCNavigationServer sharedServer];
  [v4 accessoryNavigationDetached:a1];
}

void platform_navigation_startRouteGuidance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v6 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = a1;
    v11 = 2112;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "navigation startRouteGuidance: %@, componentIdList=%@, options=%llxh", &v9, 0x20u);
  }

  v8 = +[ACCNavigationServer sharedServer];
  [v8 accessoryNavigationStartRouteGuidance:a1 componentIdList:a2 options:a3];
}

void platform_navigation_stopRouteGuidance(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "navigation stopRouteGuidance: %@, componentIdList=%@", &v7, 0x16u);
  }

  v6 = +[ACCNavigationServer sharedServer];
  [v6 accessoryNavigationStopRouteGuidance:a1 componentIdList:a2];
}

void platform_navigation_objectDetectionUpdateInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v6 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412802;
    v10 = a1;
    v11 = 2112;
    v12 = a2;
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "navigation objectDetectionUpdateInfo: %@, componentIdList=%@, updateInfo=%@", &v9, 0x20u);
  }

  v8 = +[ACCNavigationServer sharedServer];
  [v8 accessoryNavigationObjectDetectionUpdateInfo:a1 componentIdList:a2 updateInfo:a3];
}

void platform_navigation_routeGuidanceManeuverUpdateHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v8 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "navigation routeGuidanceManeuverUpdateHandler: %@, componentIdList=%@, updateInfo=%@", &v12, 0x20u);
  }

  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040CA828048uLL);
  *v10 = 1;
  if (v6)
  {
    v11 = v6;
  }

  v10[1] = v6;
  v10[2] = v7;
  if ((accFeatureHandlers_invokeHandler(v5, 44, v10) & 1) == 0)
  {
    platform_navigation_deleteParams(v10);
  }
}

void platform_navigation_laneGuidanceInfoUpdateHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v8 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "navigation laneGuidanceInfoUpdateHandler: %@, componentIdList=%@, updateInfo=%@", &v12, 0x20u);
  }

  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040CA828048uLL);
  *v10 = 2;
  if (v6)
  {
    v11 = v6;
  }

  v10[1] = v6;
  v10[2] = v7;
  if ((accFeatureHandlers_invokeHandler(v5, 45, v10) & 1) == 0)
  {
    platform_navigation_deleteParams(v10);
  }
}

void platform_navigation_startObjectDetectionHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v8 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "navigation startObjectDetectionHandler: %@, componentIdList=%@, objectTypeList=%@", &v13, 0x20u);
  }

  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040CA828048uLL);
  *v10 = 3;
  if (v6)
  {
    v11 = v6;
  }

  v10[1] = v6;
  if (v7)
  {
    v12 = v7;
  }

  v10[2] = v7;
  if ((accFeatureHandlers_invokeHandler(v5, 46, v10) & 1) == 0)
  {
    platform_navigation_deleteParams(v10);
  }
}

void platform_navigation_stopObjectDetectionHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v5 = *(gLogObjects + 368);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "navigation stopObjectDetectionHandler: %@, componentIdList=%@", &v9, 0x16u);
  }

  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040CA828048uLL);
  *v7 = 4;
  if (v4)
  {
    v8 = v4;
  }

  v7[1] = v4;
  if ((accFeatureHandlers_invokeHandler(v3, 47, v7) & 1) == 0)
  {
    platform_navigation_deleteParams(v7);
  }
}

__CFDictionary *platform_navigation_createDisplayComponentDict(uint64_t a1, __int16 a2, const void *a3)
{
  valuePtr = a2;
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(Mutable, ACCNav_DispComp_ComponentID, v5);
    CFDictionarySetValue(Mutable, ACCNav_DispComp_Name, a3);
    CFRelease(v5);
  }

  return Mutable;
}

void platform_navigation_displayComponentAddMaxCurrentRoadNameLength(__CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a1, ACCNav_DispComp_MaxCurRoadNameLength, v3);
    CFRelease(v3);
  }
}

void platform_navigation_displayComponentAddMaxDestinationNameLength(__CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a1, ACCNav_DispComp_MaxDestinationNameLength, v3);
    CFRelease(v3);
  }
}

void platform_navigation_displayComponentAddMaxAfterManeuverRoadNameLength(__CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a1, ACCNav_DispComp_MaxAfterManeuverRoadNameLength, v3);
    CFRelease(v3);
  }
}

void platform_navigation_displayComponentAddManeuverDescriptionLength(__CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a1, ACCNav_DispComp_MaxManeuverDescriptionLength, v3);
    CFRelease(v3);
  }
}

void platform_navigation_displayComponentAddGuidanceManeuverCapacity(__CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a1, ACCNav_DispComp_MaxMGuidanceManeuverCapacity, v3);
    CFRelease(v3);
  }
}

void platform_navigation_displayComponentAddLaneGuidanceDescriptionLength(__CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a1, ACCNav_DispComp_MaxLaneGuidanceDescriptionLength, v3);
    CFRelease(v3);
  }
}

void platform_navigation_displayComponentAddLaneGuidanceCapacity(__CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a1, ACCNav_DispComp_MaxLaneGuidanceStorageCapacity, v3);
    CFRelease(v3);
  }
}

const __CFDictionary *platform_navigation_objectDetectionComponentGetSupportedTypes(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, ACCNav_RODComp_SupportedTypes);
  }

  return result;
}

const void *platform_navigation_objectDetectionInfoGetItem(const __CFDictionary *a1, uint64_t a2)
{
  v3 = [ACCNavigationRoadObjectDetectionInfo keyForType:a2];
  if (!a1 || !v3)
  {
    return 0;
  }

  return CFDictionaryGetValue(a1, v3);
}

void platform_navigation_objectDetectionInfoAddComponentID(const __CFDictionary *a1, __int16 a2)
{
  if (a1)
  {
    valuePtr = a2;
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
    _addDictionaryArrayEntryValue(a1, ACCNav_RODUpdate_ID, v3);
    CFRelease(v3);
  }
}

void platform_navigation_objectDetectionInfoSetTimestamp(__CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    valuePtr = a2;
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    _replaceDictionaryNumberValue(a1, ACCNav_RODUpdate_Timestamp, v3);
    CFRelease(v3);
  }
}

void _replaceDictionaryNumberValue(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (key)
  {
    if (value)
    {
      CFDictionarySetValue(theDict, key, value);
    }

    else
    {
      CFDictionaryRemoveValue(theDict, key);
    }
  }
}

void platform_navigation_objectDetectionInfoSetEgoSpeed(__CFDictionary *a1, int a2)
{
  if (a1)
  {
    valuePtr = a2;
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    _replaceDictionaryNumberValue(a1, ACCNav_RODUpdate_EgoSpeed, v3);
    CFRelease(v3);
  }
}

void platform_navigation_objectDetectionInfoSetEgoYawRate(__CFDictionary *a1, float a2)
{
  if (a1)
  {
    valuePtr = a2;
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
    _replaceDictionaryNumberValue(a1, ACCNav_RODUpdate_EgoYawRate, v3);
    CFRelease(v3);
  }
}

void platform_navigation_objectDetectionInfoAddRoadSign(const __CFDictionary *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      _addDictionaryArrayEntryValue(a1, ACCNav_RODUpdate_RoadSign, a2);
    }
  }
}

void platform_navigation_objectDetectionInfoAddRoadLane(const __CFDictionary *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      _addDictionaryArrayEntryValue(a1, ACCNav_RODUpdate_RoadLane, a2);
    }
  }
}

void platform_navigation_objectDetectionInfoAddRoadObject(const __CFDictionary *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      _addDictionaryArrayEntryValue(a1, ACCNav_RODUpdate_RoadObject, a2);
    }
  }
}

CFMutableDictionaryRef platform_navigation_createObjectDetectionRoadSignDict(CFMutableDictionaryRef result)
{
  if (result)
  {
    return CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return result;
}

void platform_navigation_objectDetectionRoadSignSetInfo(__CFDictionary *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    v5 = [ACCNavigationRoadObjectRoadSignInfo keyForType:a2];
    if (a3)
    {

      CFDictionarySetValue(a1, v5, a3);
    }

    else
    {

      CFDictionaryRemoveValue(a1, v5);
    }
  }
}

void platform_navigation_objectDetectionRoadLaneSetInfo(__CFDictionary *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    v5 = [ACCNavigationRoadObjectRoadLaneInfo keyForType:a2];
    if (a3)
    {

      CFDictionarySetValue(a1, v5, a3);
    }

    else
    {

      CFDictionaryRemoveValue(a1, v5);
    }
  }
}

void platform_navigation_objectDetectionRoadObjectSetInfo(__CFDictionary *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    v5 = [ACCNavigationRoadObjectRoadObjectInfo keyForType:a2];
    if (a3)
    {

      CFDictionarySetValue(a1, v5, a3);
    }

    else
    {

      CFDictionaryRemoveValue(a1, v5);
    }
  }
}

void platform_navigation_incrementUserCount()
{
  v0 = +[ACCNavigationServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCNavigationServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233CA8];
  }
}

void platform_navigation_decrementUserCount()
{
  v0 = +[ACCNavigationServer sharedServer];
  [v0 decrementUserCount];
}

void _addDictionaryArrayEntryValue(const __CFDictionary *a1, const void *a2, const void *a3)
{
  if (a2 && a3)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value || (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), CFDictionarySetValue(a1, a2, Mutable), CFRelease(Mutable), (Value = CFDictionaryGetValue(a1, a2)) != 0))
    {

      CFArrayAppendValue(Value, a3);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 47)
      {
        v8 = *(gLogObjects + 368);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = a2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "navigation _addDictionaryArrayEntryValue: failed to add array entry! key %@", &v10, 0xCu);
      }
    }
  }
}

void _setInfoFromDictionary(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    [v7 setObject:v6 forKey:v5];
  }
}

uint64_t _createCarPlayCategoryMaskFromCategorySet(void *a1)
{
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 |= 1 << [*(*(&v8 + 1) + 8 * i) unsignedShortValue];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _supportedAppLinksEAProtocols(uint64_t a1)
{
  v1 = platform_externalAccessory_copyEAProtocolsForEndpointUUID(a1);
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 lowercaseString];
        v10 = [@"com.apple.mfi.gamecontroller" lowercaseString];
        v11 = [v9 isEqualToString:v10];

        if ((v11 & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v12 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[#App Links] availableEAProtocols for appLinks = %@", buf, 0xCu);
  }

  return v2;
}

id logObjectForModule_11(int a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 8 * a1);
  }

  return v3;
}

void sub_10003DDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003E618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003EFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a41);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

id platform_appLinks_addSubscriberForSubFeature(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v9 = +[ACCAppLinksManager sharedManager];
    v10 = [v9 addEAAppLinksSubscriber:a1 forCategories:a3 forIconSize:a4 andCertSerialNumber:a5];
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    v9 = +[ACCAppLinksManager sharedManager];
    v10 = [v9 addCarPlayAppLinksSubscriber:a1 forCategories:a3 forIconSize:a4 andCertSerialNumber:a5];
  }

  v11 = v10;

  return v11;
}

id platform_appLinks_removeSubscriberForSubFeature(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = +[ACCAppLinksManager sharedManager];
    v4 = [v3 removeEAAppLinksSubscriber:a1];
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    v3 = +[ACCAppLinksManager sharedManager];
    v4 = [v3 removeCarPlayAppLinksSubscriber:a1];
  }

  v5 = v4;

  return v5;
}

uint64_t platform_appLinks_requestAppIcons(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCAppLinksManager sharedManager];
  [v4 requestAppIcons:a2 forUUID:a1];

  return 1;
}

BOOL iAP2LinkProcessInOrderPacketCMD(uint64_t a1, uint64_t a2)
{
  v4 = **(a2 + 72);
  if ((_iAP2LogEnableMask & 2) != 0)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 20;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v6 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 213);
      v15 = 136316162;
      v16 = "iAP2LinkProcessInOrderPacketCMD";
      v17 = 1024;
      v18 = 95;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v4;
      v23 = 1024;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d linkVer=%d cmdID=%xh(%d)", &v15, 0x24u);
    }
  }

  v8 = (a1 + 213);
  if (*(a1 + 213) != 1)
  {
    *(a1 + 188) = *(*(a2 + 64) + 5);
    *(a1 + 212) |= 1u;
    if (v4 == 85)
    {
      v10 = *(a1 + 8);
      v11 = 10;
    }

    else
    {
      if (v4 != 84)
      {
        if ((_iAP2LogEnableMask & 4) != 0)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v14 = *(gLogObjects + 152);
          }

          else
          {
            v14 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          result = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            iAP2LinkProcessInOrderPacketCMD_cold_3(v4, v14);
            return 0;
          }

          return result;
        }

        return 0;
      }

      v10 = *(a1 + 8);
      v11 = 9;
    }

    iAP2FSMHandleEvent(v10, v11);
    return 1;
  }

  if ((_iAP2LogEnableMask & 4) == 0)
  {
    return 0;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 20;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v13 = *(gLogObjects + 152);
  }

  result = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    iAP2LinkProcessInOrderPacketCMD_cold_5(v8, v4, v13);
    return 0;
  }

  return result;
}

BOOL iAP2LinkCommandIsFeatureSetValid(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = (a1 + 25);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if (v5 == 85)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0x80000000;
      }

      if (v4 == 84)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      v2 |= v7;
      --v1;
    }

    while (v1);
    if (v2 < 0)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  v9 = v2 & 3;
  return v9 == 3 || v9 == 0;
}

uint64_t iAP2LinkCommandValidateFeatureSets(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a2 + 24))
  {
    v3 = 0;
    v4 = (a2 + 25);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 85)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0x80000000;
      }

      if (v5 == 84)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v3 |= v8;
      --v2;
    }

    while (v2);
    if ((v3 & 3) != 0)
    {
      *(a2 + 25) = 21844;
      v3 |= 3u;
      LOBYTE(v2) = 2;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 24) = v2;
  *(result + 272) = v3;
  return result;
}

void sub_10003FD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void platform_blePairing_accessoryAttached(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v8 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    v12 = a1;
    v13 = 2112;
    v14 = a2;
    v15 = 2112;
    v16 = a3;
    v17 = 2112;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "blePairing accessoryAttached: %@, blePairingUUID %@ accInfoDict=%@ supportedPairTypes=%@", &v11, 0x2Au);
  }

  v10 = +[ACCBLEPairingServer sharedServer];
  [v10 accessoryBLEPairingAttached:a1 blePairingUUID:a2 accInfoDict:a3 supportedPairTypes:a4];
}

void platform_blePairing_accessoryDetached(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v4 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "blePairing accessoryDetached: %@", &v7, 0xCu);
  }

  v6 = +[ACCBLEPairingServer sharedServer];
  [v6 accessoryBLEPairingDetached:a1 blePairingUUID:a2];
}

void platform_blePairing_accessoryStateUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v12 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413570;
    v16 = a1;
    v17 = 2112;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    v23 = 1024;
    v24 = a5;
    v25 = 1024;
    v26 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "blePairing accessoryStateUpdate: %@, blePairingUUID %@, validMask=%xh btRadioOn=%d pairingState=%d pairingModeOn=%d", &v15, 0x2Eu);
  }

  v14 = +[ACCBLEPairingServer sharedServer];
  [v14 accessoryBLEPairingStateUpdate:a1 blePairingUUID:a2 validMask:a3 btRadioOn:a4 pairingState:a5 pairingModeOn:a6];
}

void platform_blePairing_accessoryPairingInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v8 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    v12 = a1;
    v13 = 2112;
    v14 = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 2112;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "blePairing accessoryPairingInfo: %@, blePairingUUID %@, pairType=%d pairInfoList=%@", &v11, 0x26u);
  }

  v10 = +[ACCBLEPairingServer sharedServer];
  [v10 accessoryBLEPairingInfoUpdate:a1 blePairingUUID:a2 pairType:a3 pairInfoList:a4];
}

void platform_blePairing_accessoryPairingData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v8 = [NSData dataWithBytes:a4 length:a5];
  platform_blePairing_accessoryPairingCFData(a1, a2, a3, v8);
}

void platform_blePairing_accessoryPairingCFData(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v8 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    v12 = a1;
    v13 = 2112;
    v14 = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 2112;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "blePairing accessoryPairingInfo: %@, blePairingUUID %@, pairType=%d pairData=%@", &v11, 0x26u);
  }

  v10 = +[ACCBLEPairingServer sharedServer];
  [v10 accessoryBLEPairingDataUpdate:a1 blePairingUUID:a2 pairType:a3 pairData:a4];
}

void platform_blePairing_finishedNegotiation(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v4 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "blePairing finishedNegotiation: %@, blePairingUUID %@", &v7, 0x16u);
  }

  v6 = +[ACCBLEPairingServer sharedServer];
  [v6 accessoryBLEPairingFinished:a1 blePairingUUID:a2];
}

void platform_blePairing_startBLEUpdatesHandler(void *a1, void *a2, int a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v11 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413314;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    v22 = 1024;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "blePairing startBLEUpdates: %@, blePairingUUID=%@, pairType=%d bRadioUpdatesOn=%d bPairInfoUpdatesOn=%d", &v14, 0x28u);
  }

  v13 = malloc_type_malloc(0x20uLL, 0x1062040A60DE276uLL);
  *v13 = 0;
  v13[1] = v10;
  *(v13 + 4) = a3;
  *(v13 + 20) = a4;
  *(v13 + 21) = a5;
  if ((accFeatureHandlers_invokeHandler(v9, 30, v13) & 1) == 0)
  {
    platform_blePairing_deleteParams(v13);
  }
}

void platform_blePairing_deleteParams(void *a1)
{
  if (a1)
  {
    if (*a1 == 3 || *a1 == 2)
    {
      v2 = a1[3];
      if (v2)
      {
        CFRelease(v2);
      }
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void platform_blePairing_deviceStateUpdateHandler(void *a1, void *a2, int a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v11 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413314;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    v22 = 1024;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "blePairing deviceStateUpdate: %@, blePairingUUID=%@, bRadioOn=%d pairState=%d bPairModeOn=%d", &v14, 0x28u);
  }

  v13 = malloc_type_malloc(0x20uLL, 0x1062040A60DE276uLL);
  *v13 = 1;
  v13[1] = v10;
  *(v13 + 16) = a3;
  *(v13 + 5) = a4;
  *(v13 + 24) = a5;
  if ((accFeatureHandlers_invokeHandler(v9, 31, v13) & 1) == 0)
  {
    platform_blePairing_deleteParams(v13);
  }
}

void platform_blePairing_devicePairingDataHandler(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v10 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 1024;
    v18 = a3;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "blePairing devicePairingData: %@, blePairingUUID=%@, pairType=%d pairData=%@", &v13, 0x26u);
  }

  v12 = malloc_type_malloc(0x20uLL, 0x1062040A60DE276uLL);
  *v12 = 2;
  v12[1] = v8;
  *(v12 + 4) = a3;
  v12[3] = v9;
  if ((accFeatureHandlers_invokeHandler(v7, 32, v12) & 1) == 0)
  {
    platform_blePairing_deleteParams(v12);
  }
}

void platform_blePairing_deviceUpdatePairingInfoHandler(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v10 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 1024;
    v18 = a3;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "blePairing deviceUpdatePairingInfo: %@, blePairingUUID=%@, pairType=%d pairInfo=%@", &v13, 0x26u);
  }

  v12 = malloc_type_malloc(0x20uLL, 0x1062040A60DE276uLL);
  *v12 = 3;
  v12[1] = v8;
  *(v12 + 4) = a3;
  v12[3] = v9;
  if ((accFeatureHandlers_invokeHandler(v7, 33, v12) & 1) == 0)
  {
    platform_blePairing_deleteParams(v12);
  }
}

void platform_blePairing_stopBLEUpdatesHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (gLogObjects && gNumLogObjects >= 42)
  {
    v5 = *(gLogObjects + 328);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "blePairing stopBLEUpdates: %@ blePairingUUID=%@", &v8, 0x16u);
  }

  v7 = malloc_type_malloc(0x20uLL, 0x1062040A60DE276uLL);
  *v7 = 4;
  v7[1] = v4;
  if ((accFeatureHandlers_invokeHandler(v3, 34, v7) & 1) == 0)
  {
    platform_blePairing_deleteParams(v7);
  }
}

__CFDictionary *platform_blePairing_createAccInfoMutableDict(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  v13 = Mutable;
  if (a2 && a1 && Mutable)
  {
    CFDictionaryAddValue(Mutable, @"IAPAppBTPairingAccManufacturer", a2);
    CFDictionaryAddValue(v13, @"IAPAppBTPairingAccModel", a1);
    CFDictionaryAddValue(v13, @"IAPAppBTPairingAccName", a3);
    CFDictionaryAddValue(v13, @"IAPAppBTPairingAccSerialNum", a4);
    CFDictionaryAddValue(v13, @"IAPAppBTPairingAccFwVer", a5);
    CFDictionaryAddValue(v13, @"IAPAppBTPairingAccHwVer", a6);
  }

  return v13;
}

void platform_blePairing_incrementUserCount()
{
  v0 = +[ACCBLEPairingServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCBLEPairingServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233CC0];
  }
}

void platform_blePairing_decrementUserCount()
{
  v0 = +[ACCBLEPairingServer sharedServer];
  [v0 decrementUserCount];
}

uint64_t _convertUserVendorNVMRead(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      _convertUserVendorNVMRead_cold_1();
    }

    else if (*(a1 + 144) == 3 && (a2 - 1) <= 4)
    {
      return word_1001C37F2[(a2 - 1)];
    }
  }

  else
  {
    _convertUserVendorNVMRead_cold_2();
  }

  return v2;
}

uint64_t mfi4Auth_protocol_handle_NVMEraseResponse(uint64_t a1, uint64_t a2)
{
  v50 = 1;
  if (!a1)
  {
    mfi4Auth_protocol_handle_NVMEraseResponse_cold_13();
    return v50;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_NVMEraseResponse_cold_12();
    return v50;
  }

  if (!a2)
  {
    mfi4Auth_protocol_handle_NVMEraseResponse_cold_11();
    return v50;
  }

  v49 = 0;
  __dst[0] = 0xAAAAAAAAAAAAAAAALL;
  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v5 = 0;
  while (1)
  {
    if (!FirstParam)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v18 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v18 = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v53) = v5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: paramMask:0x%x", buf, 8u);
      }

      if ((v5 >> _convertNVMEraseResponse(a1, 1, 0)))
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v20 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v20 = &_os_log_default;
          v22 = &_os_log_default;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: KeyErased", buf, 2u);
        }

        if (*(*(a1 + 712) + 80))
        {
          v23 = [NSString stringWithFormat:@"com.apple.accessoryd.mfi4.userPublicKey.%@", *(*(a1 + 712) + 80)];
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v24 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v24 = &_os_log_default;
            v25 = &_os_log_default;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: featureTag: %@", buf, 0xCu);
          }

          MFi4AuthFeatureGroup();
          DeleteSynchronizableKeyForAuthFeature();
          DeleteKeyForAuthFeature();
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v23 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v23 = &_os_log_default;
            v26 = &_os_log_default;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: !serialNumberString", buf, 2u);
          }
        }

        Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
        v28 = Copy;
        if (Copy)
        {
          EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
          if (EndpointWithUUID)
          {
            acc_connection_setPairingStatus(*EndpointWithUUID, 1);
          }
        }

        v30 = *(a1 + 32);
        if (v30 == 5)
        {
          v31 = *(a1 + 64);
          if (!v31)
          {
            goto LABEL_87;
          }

          v32 = objc_retainBlock(v31);
          v32[2](v32, 0);
          *(a1 + 64) = 0;
          *(a1 + 32) = 0;

          v30 = *(a1 + 32);
        }

        if (v30 != 11)
        {
LABEL_84:
          if (v30 == 13)
          {
            v35 = *(a1 + 64);
            if (v35)
            {
              v36 = objc_retainBlock(v35);
              v36[2](v36, 0);
              *(a1 + 64) = 0;
              *(a1 + 32) = 0;
            }
          }

          goto LABEL_87;
        }

        v33 = *(a1 + 64);
        if (v33)
        {
          v34 = objc_retainBlock(v33);
          v34[2](v34, 0);
          *(a1 + 64) = 0;
          *(a1 + 32) = 0;

          v30 = *(a1 + 32);
          goto LABEL_84;
        }

LABEL_87:
        if (v28)
        {
          CFRelease(v28);
        }

        return 0;
      }

      if (1 << _convertNVMEraseResponse(a1, 2, 0) == v5)
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v21 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v21 = &_os_log_default;
          v38 = &_os_log_default;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: KeyNotErased", buf, 2u);
        }

        v39 = *(a1 + 32);
        if (v39 == 5)
        {
          v40 = *(a1 + 64);
          if (!v40)
          {
            return 0;
          }

          v41 = objc_retainBlock(v40);
          v42 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
          v41[2](v41, v42);
          *(a1 + 64) = 0;
          *(a1 + 32) = 0;

          v39 = *(a1 + 32);
        }

        if (v39 != 11)
        {
LABEL_102:
          if (v39 == 13)
          {
            v46 = *(a1 + 64);
            if (v46)
            {
              v47 = objc_retainBlock(v46);
              v48 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
              v47[2](v47, v48);
              *(a1 + 64) = 0;
              *(a1 + 32) = 0;
            }
          }

          return 0;
        }

        v43 = *(a1 + 64);
        if (v43)
        {
          v44 = objc_retainBlock(v43);
          v45 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
          v44[2](v44, v45);
          *(a1 + 64) = 0;
          *(a1 + 32) = 0;

          v39 = *(a1 + 32);
          goto LABEL_102;
        }
      }

      return 0;
    }

    ParamID = iAP2MsgGetParamID(FirstParam);
    v7 = gLogObjects;
    v8 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v9 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v53 = v7;
        v54 = 1024;
        v55 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v10 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v53) = ParamID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: paramID: %d", buf, 8u);
    }

    if (*(a1 + 144) == 3)
    {
      v11 = ParamID;
      if (!ParamID)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = _convertNVMEraseResponse(a1, ParamID, 1);
      if (!v11)
      {
LABEL_22:
        iAP2MsgGetDataAsU16(FirstParam, &v50);
        if (v50)
        {
          mfi4Auth_protocol_handle_NVMEraseResponse_cold_2();
          return v50;
        }

LABEL_33:
        v5 |= 1 << ParamID;
        goto LABEL_34;
      }
    }

    if (v11 == 1)
    {
      iAP2MsgGetDataAsU16(FirstParam, &v50);
      if (v50)
      {
        mfi4Auth_protocol_handle_NVMEraseResponse_cold_1();
        return v50;
      }

      goto LABEL_33;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_34:
    FirstParam = iAP2MsgGetNextParamWithError(a2, 0, FirstParam, &v49);
    if (v49 == 1)
    {
      mfi4Auth_protocol_handle_NVMEraseResponse_cold_5();
      return v50;
    }
  }

  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v14 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v53 = v12;
      v54 = 1024;
      v55 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v15 = &_os_log_default;
    v14 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
    *buf = 67109120;
    LODWORD(v53) = ParamValueLen;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: AuthNonce length: %d", buf, 8u);
  }

  v50 = 0;
  DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &v50, __dst, 16);
  if (!v50)
  {
    if (DataAsArrayU8 != 16)
    {
      mfi4Auth_protocol_handle_NVMEraseResponse_cold_4();
      return v50;
    }

    goto LABEL_33;
  }

  mfi4Auth_protocol_handle_NVMEraseResponse_cold_3();
  return v50;
}

id logObjectForModule_12()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v0 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  return v0;
}

uint64_t _convertNVMEraseResponse(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    _convertNVMEraseResponse_cold_2();
LABEL_25:
    v7 = a2;
    goto LABEL_11;
  }

  if (*(a1 + 30) == 1)
  {
    _convertNVMEraseResponse_cold_1();
    goto LABEL_25;
  }

  v6 = *(a1 + 144) != 3 && a3 == 0;
  v7 = a2;
  if (!v6)
  {
    if (a2 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2;
      if (a2 == 1)
      {
        v7 = 0;
      }
    }
  }

LABEL_11:
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v8 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      v11 = *(a1 + 144);
    }

    else
    {
      v11 = -1;
    }

    v12 = 136316418;
    v13 = "_convertNVMEraseResponse";
    v14 = 1024;
    v15 = 3107;
    v16 = 1024;
    v17 = v11;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s:%d negotiatedVersion %d, force %d, commandID 0x%04x -> 0x%04x", &v12, 0x2Au);
  }

  return v7;
}

uint64_t mfi4Auth_protocol_handle_NVMReadResponse(uint64_t a1, uint64_t a2, void *a3)
{
  inited = 1;
  v131 = 0;
  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v133[6] = v3;
  v133[7] = v3;
  v133[4] = v3;
  v133[5] = v3;
  v133[2] = v3;
  v133[3] = v3;
  v133[0] = v3;
  v133[1] = v3;
  if (!a1)
  {
    mfi4Auth_protocol_handle_NVMReadResponse_cold_20();
LABEL_289:
    v111 = 0;
    goto LABEL_262;
  }

  v4 = a1;
  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_NVMReadResponse_cold_19();
    goto LABEL_289;
  }

  v5 = a2;
  if (!a2)
  {
    mfi4Auth_protocol_handle_NVMReadResponse_cold_18();
    goto LABEL_289;
  }

  v118 = *(a1 + 712);
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v119 = 0;
  v124 = 0;
  v125 = 0;
  v120 = 0;
  v127 = 0;
  v128 = 0;
  v126 = 0;
  v7 = 0;
  v8 = 0;
  v121 = v4;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v9 = gLogObjects;
    v10 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 1024;
        *&buf[14] = v10;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = ParamID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMReadResponse: paramID: %d", buf, 8u);
    }

    v13 = ParamID;
    if (*(v4 + 144) != 3)
    {
      v13 = _convertNVMReadResponse(v4, ParamID, 1);
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        v122 = v8;
        v123 = v7;
        valuePtr = -21846;
        NextParamWithError = iAP2MsgGetFirstParam(v5, FirstParam);
        v21 = 0;
        ParamValueLen = 0;
        v23 = 0;
        while (NextParamWithError)
        {
          v24 = v5;
          v25 = iAP2MsgGetParamID(NextParamWithError);
          v26 = gLogObjects;
          v27 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v28 = *(gLogObjects + 440);
          }

          else
          {
            v28 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v26;
              *&buf[12] = 1024;
              *&buf[14] = v27;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v29 = &_os_log_default;
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = ParamID;
            *&buf[8] = 1024;
            *&buf[10] = v25;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMReadResponse: paramID: %d, subparam: %d", buf, 0xEu);
          }

          if (v25 == 1)
          {
            if (v23)
            {
              goto LABEL_267;
            }

            ParamValueLen = iAP2MsgGetParamValueLen(NextParamWithError);
            v23 = malloc_type_calloc(1uLL, ParamValueLen, 0xD251C38AuLL);
            DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(NextParamWithError, &inited, v23, ParamValueLen);
            if (inited)
            {
LABEL_189:
              if (v23)
              {
                free(v23);
              }

              goto LABEL_261;
            }

            if (DataAsArrayU8 != ParamValueLen)
            {
              if (!v23)
              {
                goto LABEL_268;
              }

LABEL_267:
              free(v23);
              goto LABEL_268;
            }

            v5 = v24;
            v21 |= 2u;
          }

          else if (v25)
          {
            v5 = v24;
          }

          else
          {
            valuePtr = iAP2MsgGetDataAsU16(NextParamWithError, &inited);
            if (inited)
            {
              goto LABEL_261;
            }

            v5 = v24;
            v30 = gLogObjects;
            v31 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v32 = *(gLogObjects + 440);
            }

            else
            {
              v32 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = v30;
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v34 = &_os_log_default;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = valuePtr;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "handleNVMReadResponse: key: 0x%x", buf, 8u);
            }

            if (valuePtr == 21248)
            {
              v126 |= 1 << ParamID;
            }

            else if (valuePtr - 21249 >= 0x4F)
            {
              if (valuePtr - 21328 >= 0xB0)
              {
                v125 |= valuePtr - 20736 < 0x50;
              }

              else
              {
                v120 = 1;
              }
            }

            else
            {
              v124 = 1;
            }

            v127 |= valuePtr - 20994 < 9;
            v128 |= valuePtr - 21250 < 9;
            v21 |= 1u;
          }

          NextParamWithError = iAP2MsgGetNextParamWithError(v5, FirstParam, NextParamWithError, &v131);
          if (v131 == 1)
          {
            goto LABEL_189;
          }
        }

        if (v21 == 3)
        {
          v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
          v36 = CFDataCreate(kCFAllocatorDefault, v23, ParamValueLen);
          v37 = _dumpSimpleHex(v36);

          v38 = gLogObjects;
          v39 = gNumLogObjects;
          v8 = v122;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v40 = *(gLogObjects + 440);
          }

          else
          {
            v40 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v38;
              *&buf[12] = 1024;
              *&buf[14] = v39;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v53 = &_os_log_default;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "handleNVMReadResponse: keyValue:%@", buf, 0xCu);
          }

          CFDictionaryAddValue(*(*(v121 + 712) + 48), v35, v36);
          v54 = gLogObjects;
          v55 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v56 = *(gLogObjects + 440);
          }

          else
          {
            v56 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v54;
              *&buf[12] = 1024;
              *&buf[14] = v55;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v57 = &_os_log_default;
          }

          v4 = v121;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "handleNVMReadResponse: CFDictionaryAddValue", buf, 2u);
          }

          if (v36)
          {
            CFRelease(v36);
          }

          v119 = v37;
        }

        else
        {
          v4 = v121;
          v8 = v122;
        }

        v7 = v123;
        if (v23)
        {
          free(v23);
        }

        v44 = 1 << ParamID;
        goto LABEL_118;
      }

      if (v13 == 1)
      {
        if (v7 >= 0x40)
        {
          v17 = gLogObjects;
          v18 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v19 = *(gLogObjects + 440);
          }

          else
          {
            v19 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v17;
              *&buf[12] = 1024;
              *&buf[14] = v18;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v50 = &_os_log_default;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = 64;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "handleNVMReadResponse: reached limit of %d keyNotRead parameters", buf, 8u);
          }

          goto LABEL_119;
        }

        v45 = v8;
        DataAsU16 = iAP2MsgGetDataAsU16(FirstParam, &inited);
        *(v133 + v7) = DataAsU16;
        v47 = gLogObjects;
        v48 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v49 = *(gLogObjects + 440);
        }

        else
        {
          v49 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v47;
            *&buf[12] = 1024;
            *&buf[14] = v48;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v51 = &_os_log_default;
        }

        v8 = v45;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = DataAsU16;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "handleNVMReadResponse: KeyNotRead:0x%x", buf, 8u);
        }

        if (inited)
        {
          mfi4Auth_protocol_handle_NVMReadResponse_cold_1(&inited);
          goto LABEL_261;
        }

        v44 = 1 << ParamID;
        if (DataAsU16 == 21248)
        {
          v52 = 1 << ParamID;
        }

        else
        {
          v52 = 0;
        }

        v126 |= v52;
        ++v7;
        goto LABEL_118;
      }
    }

    else
    {
      if (v13 == 2 || v13 == 3)
      {
        iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          goto LABEL_261;
        }

        goto LABEL_78;
      }

      if (v13 == 7)
      {
        v14 = gLogObjects;
        v15 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v16 = *(gLogObjects + 440);
        }

        else
        {
          v16 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v14;
            *&buf[12] = 1024;
            *&buf[14] = v15;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v41 = &_os_log_default;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v42 = iAP2MsgGetParamValueLen(FirstParam);
          *buf = 67109120;
          *&buf[4] = v42;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "handleNVMReadResponse: AuthNonce length: %d", buf, 8u);
        }

        inited = 0;
        v43 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, &__dst, 16);
        if (inited)
        {
          mfi4Auth_protocol_handle_NVMReadResponse_cold_2();
          goto LABEL_261;
        }

        if (v43 != 16)
        {
          mfi4Auth_protocol_handle_NVMReadResponse_cold_3();
          goto LABEL_261;
        }

LABEL_78:
        v44 = 1 << ParamID;
LABEL_118:
        v8 |= v44;
      }
    }

LABEL_119:
    FirstParam = iAP2MsgGetNextParamWithError(v5, 0, FirstParam, &v131);
    if (v131 == 1)
    {
      mfi4Auth_protocol_handle_NVMReadResponse_cold_4();
      goto LABEL_261;
    }
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v58 = *(gLogObjects + 440);
    v59 = v125;
    v60 = v126;
    v62 = v127;
    v61 = v128;
  }

  else
  {
    v59 = v125;
    v60 = v126;
    v62 = v127;
    v61 = v128;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v58 = &_os_log_default;
    v63 = &_os_log_default;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMReadResponse: paramMask:0x%x", buf, 8u);
  }

  if (v62)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v64 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v64 = &_os_log_default;
      v65 = &_os_log_default;
    }

    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "_handleNvmReadAccessoryInfo: Vendor", buf, 2u);
    }

    _handleNvmReadAccessoryInfo(v4, 1);
  }

  if (v61)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v66 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v66 = &_os_log_default;
      v67 = &_os_log_default;
    }

    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "_handleNvmReadAccessoryInfo: User", buf, 2u);
    }

    _handleNvmReadAccessoryInfo(v4, 0);
  }

  if (v60 && *(v4 + 144) == 2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v105 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v105 = &_os_log_default;
      v115 = &_os_log_default;
    }

    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "_handleNvmReadUserPublicKey", buf, 2u);
    }

    _handleNvmReadUserPublicKey(v4, v8 & 1u | v60);
    if (v59)
    {
LABEL_152:
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v68 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v68 = &_os_log_default;
        v69 = &_os_log_default;
      }

      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "_handleNvmReadManufacturerPublicKey", buf, 2u);
      }
    }
  }

  else if (v59)
  {
    goto LABEL_152;
  }

  if ((v8 >> _convertNVMReadResponse(v4, 1, 0)))
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v70 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v70 = &_os_log_default;
      v72 = &_os_log_default;
    }

    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMReadResponse: KeyRead", buf, 2u);
    }

    Copy = CFStringCreateCopy(kCFAllocatorDefault, *v4);
    v74 = Copy;
    if (Copy)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
      if (EndpointWithUUID)
      {
        v76 = EndpointWithUUID;
        v77 = *EndpointWithUUID;
        if (v77)
        {
          PairingStatus = acc_connection_getPairingStatus(v77);
          v79 = acc_endpoint_copyProperty(v76);
          if (v79)
          {
            v80 = v79;
            if (CFDataGetLength(v79))
            {
              v81 = *CFDataGetBytePtr(v80);
              CFRelease(v80);
              if (!PairingStatus && (v81 - 89) >= 0xFFFFFFFE)
              {
                v82 = malloc_type_malloc(1uLL, 0x7EF72481uLL);
                if (v82)
                {
                  if (!mfi4Auth_protocol_handle_NVMReadResponse_cold_11(v82, v4, a3))
                  {
                    goto LABEL_261;
                  }

LABEL_259:
                  CFRelease(v74);
LABEL_260:
                  inited = 0;
                  goto LABEL_261;
                }

LABEL_268:
                inited = -1;
                goto LABEL_261;
              }
            }

            else
            {
              CFRelease(v80);
            }
          }
        }
      }
    }

    if ((v124 & 1) != 0 && *(v4 + 32) == 7 && *(v4 + 64))
    {
      _replyGetNVMKey(v4);
      *(v4 + 64) = 0;
      *(v4 + 32) = 0;
    }

    if ((v120 & 1) != 0 && *(v4 + 32) == 7 && *(v4 + 64))
    {
      _replyGetNVMKey(v4);
      *(v4 + 64) = 0;
      *(v4 + 32) = 0;
    }

    if (*(v118 + 88))
    {
      if (*(v4 + 32) == 9)
      {
        v106 = *(v4 + 64);
        if (v106)
        {
          v107 = objc_retainBlock(v106);
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v108 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v108 = &_os_log_default;
            v109 = &_os_log_default;
          }

          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            v110 = *(v118 + 88);
            *buf = 138412290;
            *&buf[4] = v110;
            _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "NVMReadResponse: %@", buf, 0xCu);
          }

          CFRetain(*(v118 + 88));
          (*(v107 + 2))(v107, *(v118 + 88), 0);
          *(v4 + 64) = 0;
          *(v4 + 32) = 0;
        }
      }
    }

    if (*(v4 + 32) == 5)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v114 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v114 = &_os_log_default;
        v116 = &_os_log_default;
      }

      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "NVMReadResponse: RequestNVMAuthStart", buf, 2u);
      }

      inited = mfi4Auth_protocol_initMessage_RequestNVMAuthStart(v4);
      if (v74)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    }

LABEL_258:
    if (v74)
    {
      goto LABEL_259;
    }

    goto LABEL_260;
  }

  if (*(v4 + 144) != 2 || v8 != 5)
  {
    if (1 << _convertNVMReadResponse(v4, 2, 0) != v8)
    {
      goto LABEL_260;
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v83 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v83 = &_os_log_default;
      v89 = &_os_log_default;
    }

    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMReadResponse: KeyNotRead", buf, 2u);
    }

    if (*(v4 + 32) == 7 && *(v4 + 64))
    {
      _replyGetNVMKey(v4);
      *(v4 + 64) = 0;
      *(v4 + 32) = 0;
    }

    if (v7)
    {
      v90 = v7;
      v91 = v133;
      do
      {
        v92 = *v91++;
        if (v92 == 21248)
        {
          v93 = gLogObjects;
          v94 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v95 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v93;
              *&buf[12] = 1024;
              *&buf[14] = v94;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v96 = &_os_log_default;
            v95 = &_os_log_default;
          }

          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMReadResponse: UserPublicKey_NotProgrammed", buf, 2u);
          }

          *(v118 + 8) = 1;
        }

        --v90;
      }

      while (v90);
    }

    v97 = CFStringCreateCopy(kCFAllocatorDefault, *v121);
    v74 = v97;
    if (!v97 || (v98 = acc_manager_getEndpointWithUUID(v97)) == 0 || (v99 = *v98) == 0 || !acc_connection_getPairingStatus(v99))
    {
      v100 = malloc_type_malloc(1uLL, 0x6C8E2976uLL);
      if (!v100)
      {
        goto LABEL_268;
      }

      if (!mfi4Auth_protocol_handle_NVMReadResponse_cold_11(v100, v121, a3))
      {
        goto LABEL_261;
      }
    }

    if (*(v121 + 32) == 9)
    {
      v101 = *(v121 + 64);
      if (v101)
      {
        v102 = objc_retainBlock(v101);
        v103 = logObjectForModule_12();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "NVMReadResponse: !userNameString", buf, 2u);
        }

        v104 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
        v102[2](v102, 0, v104);
        *(v121 + 64) = 0;
        *(v121 + 32) = 0;

        if (v74)
        {
          goto LABEL_259;
        }

        goto LABEL_260;
      }
    }

    goto LABEL_258;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v71 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v71 = &_os_log_default;
    v84 = &_os_log_default;
  }

  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMReadResponse: Nonce", buf, 2u);
  }

  memset(buf, 170, 16);
  arc4random_buf(buf, 0x10uLL);
  v85 = *(v118 + 80);
  if (v85)
  {
    UserPublicKeyForSerialNumber = _copyOrCreateUserPublicKeyForSerialNumber(v85);
    if (UserPublicKeyForSerialNumber)
    {
      v87 = _generateUserSignature(UserPublicKeyForSerialNumber, &__dst, buf);
      if (v87)
      {
        BytePtr = CFDataGetBytePtr(v87);
        mfi4Auth_protocol_initMessage_RequestUserNVMRead(v4, a3, v133, v7, BytePtr, buf);
        goto LABEL_260;
      }
    }

    goto LABEL_268;
  }

  mfi4Auth_protocol_handle_NVMReadResponse_cold_17(&inited);
LABEL_261:
  v111 = v119;
LABEL_262:
  v112 = inited;

  return v112;
}

uint64_t _convertNVMReadResponse(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    _convertNVMReadResponse_cold_4();
    goto LABEL_18;
  }

  if (*(a1 + 30) == 1)
  {
    _convertNVMReadResponse_cold_3();
    goto LABEL_18;
  }

  v6 = *(a1 + 144) != 3 && a3 == 0;
  v7 = a2;
  if (!v6)
  {
    if (a2 < 8)
    {
      v7 = *&asc_1001C37A0[2 * a2];
      goto LABEL_19;
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v8 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _convertNVMReadResponse_cold_2();
    }

LABEL_18:
    v7 = a2;
  }

LABEL_19:
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v10 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      v13 = *(a1 + 144);
    }

    else
    {
      v13 = -1;
    }

    v14 = 136316418;
    v15 = "_convertNVMReadResponse";
    v16 = 1024;
    v17 = 3051;
    v18 = 1024;
    v19 = v13;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s:%d negotiatedVersion %d, force %d, commandID 0x%04x -> 0x%04x", &v14, 0x2Au);
  }

  return v7;
}

void _handleNvmReadAccessoryInfo(uint64_t a1, int a2)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_handleNvmReadAccessoryInfo", buf, 2u);
  }

  v144 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v142 = v6;
  v143 = v6;
  *buf = v6;
  v141 = v6;
  if (!a1)
  {
    _handleNvmReadAccessoryInfo_cold_16();
LABEL_255:
    v25 = 0;
    v26 = 0;
    v130 = 0;
    v131 = 0;
    v27 = 0;
    v28 = 0;
    v132 = 0;
    cf = 0;
    goto LABEL_246;
  }

  if (*(a1 + 30) == 1)
  {
    _handleNvmReadAccessoryInfo_cold_15();
    goto LABEL_255;
  }

  MutableCopy = 0;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v152 = 0u;
  v125 = a2;
  v8 = *(a1 + 712);
  if (a2)
  {
    v9 = 20994;
  }

  else
  {
    v9 = 21250;
  }

  v10 = 9;
  do
  {
    LOWORD(valuePtr[0]) = v9;
    v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr);
    Value = CFDictionaryGetValue(*(v8 + 48), v11);
    if (!Value)
    {
      break;
    }

    v13 = Value;
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v13);
      CFDataAppendBytes(MutableCopy, BytePtr, Length);
    }

    else
    {
      MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 2160, Value);
    }

    ++v9;
    --v10;
  }

  while (v10);
  if (!MutableCopy)
  {
    goto LABEL_26;
  }

  iAP2MsgInitWithSom(buf, 0, 0, 0, 0, 0, 0);
  v16 = iAP2MsgParserInit(0xFFFF, *(a1 + 8), 0, 0);
  v17 = CFDataGetBytePtr(MutableCopy);
  v18 = CFDataGetLength(MutableCopy);
  if (!v18)
  {
LABEL_25:
    CFRelease(MutableCopy);
LABEL_26:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v130 = 0;
    v131 = 0;
    v27 = 0;
    v28 = 0;
    v132 = 0;
    cf = 0;
    goto LABEL_27;
  }

  v19 = v18;
  v20 = 0;
  v21 = 1;
  while (1)
  {
    v22 = iAP2MsgParserConsumeByte(v16, v17[v20], buf);
    if (v22)
    {
      break;
    }

    v20 = v21;
    if (v19 <= v21++)
    {
      goto LABEL_25;
    }
  }

  v35 = v22;
  CFRelease(MutableCopy);
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v36 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v36 = &_os_log_default;
    v48 = &_os_log_default;
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(valuePtr[0]) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "_handleNvmReadAccessoryInfo: pMessage", valuePtr, 2u);
  }

  v139 = 1;
  v138 = 0;
  FirstParam = iAP2MsgGetFirstParam(v35, 0);
  v127 = 0;
  v128 = 0;
  v124 = 0;
  v130 = 0;
  v131 = 0;
  v122 = 0;
  v28 = 0;
  v132 = 0;
  cf = 0;
  *&v50 = 134218240;
  v120 = v50;
  v121 = a1;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v52 = gLogObjects;
    v53 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v54 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        LODWORD(valuePtr[0]) = v120;
        *(valuePtr + 4) = v52;
        WORD2(valuePtr[1]) = 1024;
        *(&valuePtr[1] + 6) = v53;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", valuePtr, 0x12u);
      }

      v55 = &_os_log_default;
      v54 = &_os_log_default;
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 67109120;
      HIDWORD(valuePtr[0]) = ParamID;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "_handleNvmReadAccessoryInfo: paramID: %d", valuePtr, 8u);
    }

    if (ParamID > 0x25)
    {
      goto LABEL_147;
    }

    if (((1 << ParamID) & 0x80000000FLL) == 0)
    {
      if (((1 << ParamID) & 0x3000000000) != 0)
      {
        memset(valuePtr, 0, sizeof(valuePtr));
        v151 = 1.0;
        v62 = iAP2MsgGetFirstParam(v35, FirstParam);
        if (v62)
        {
          NextParam = v62;
          v123 = v28;
          v64 = 0;
          do
          {
            v65 = iAP2MsgGetParamID(NextParam);
            if (v65 <= 3)
            {
              v66 = v65;
              DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v139);
              if (v139)
              {
                goto LABEL_160;
              }

              v68 = DataAsU16;
              if (DataAsU16 > 0x3E8)
              {
                goto LABEL_160;
              }

              v69 = gLogObjects;
              v70 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v71 = *(gLogObjects + 440);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *v163 = v120;
                  *v164 = v69;
                  *&v164[8] = 1024;
                  v165 = v70;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v163, 0x12u);
                }

                v72 = &_os_log_default;
                v71 = &_os_log_default;
              }

              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *v163 = 67109376;
                *v164 = v66;
                *&v164[4] = 1024;
                *&v164[6] = v68;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "_handleNvmReadAccessoryInfo: subParamID:%d, 0x%x", v163, 0xEu);
              }

              if (v66 > 1)
              {
                if (v66 == 2)
                {
                  valuePtr[2] = v68 / 1000.0;
                }

                else
                {
                  v151 = v68 / 1000.0;
                }
              }

              else if (v66)
              {
                valuePtr[1] = v68 / 1000.0;
              }

              else
              {
                valuePtr[0] = v68 / 1000.0;
              }

              v64 |= (1 << v66);
            }

            NextParam = iAP2MsgGetNextParam(v35, FirstParam, NextParam);
          }

          while (NextParam);
          if ((~v64 & 3) == 0)
          {
            v76 = [NSData dataWithBytes:valuePtr length:32];
            v77 = v128;
            v78 = v124;
            if (ParamID == 36)
            {
              v79 = v124;
            }

            else
            {
              v79 = v128;
            }

            if (ParamID != 36)
            {
              v77 = v76;
            }

            v128 = v77;
            if (ParamID == 36)
            {
              v78 = v76;
            }

            v124 = v78;
          }

LABEL_160:
          a1 = v121;
          v28 = v123;
        }

        goto LABEL_165;
      }

LABEL_147:
      if (ParamID == 242)
      {
        DataAsU64 = iAP2MsgGetDataAsU64(FirstParam, &v139);
        v75 = v127;
        if (!v139)
        {
          v75 = DataAsU64;
        }

        v127 = v75;
      }

      goto LABEL_165;
    }

    ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
    v57 = malloc_type_calloc(1uLL, (ParamValueLen + 1), 0xC0B1AFCBuLL);
    if (v57)
    {
      v58 = v57;
      DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &v139, v57, ParamValueLen);
      if (!v139 && ParamValueLen == DataAsArrayU8)
      {
        if (ParamID <= 1)
        {
          v73 = [NSString stringWithUTF8String:v58];
          if (ParamID)
          {

            v132 = v73;
          }

          else
          {

            cf = v73;
          }
        }

        else
        {
          switch(ParamID)
          {
            case 2:
              v80 = [NSString stringWithUTF8String:v58];

              v28 = v80;
              break;
            case 3:
              v81 = [NSString stringWithUTF8String:v58];

              v122 = v81;
              break;
            case 35:
              v60 = [NSString stringWithUTF8String:v58];

              v61 = v131;
              if (!v131)
              {
                v61 = [NSMutableArray arrayWithCapacity:1];
              }

              v131 = v61;
              [v61 addObject:{v60, v120}];
              v130 = v60;
              break;
          }
        }
      }

      free(v58);
    }

LABEL_165:
    FirstParam = iAP2MsgGetNextParamWithError(v35, 0, FirstParam, &v138);
    if (v138)
    {
      v25 = v128;
      v26 = v124;
      v27 = v122;
      goto LABEL_246;
    }
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v82 = *(gLogObjects + 440);
    v24 = v127;
    v25 = v128;
    v26 = v124;
    v27 = v122;
  }

  else
  {
    v24 = v127;
    v25 = v128;
    v26 = v124;
    v27 = v122;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v82 = &_os_log_default;
    v119 = &_os_log_default;
  }

  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(valuePtr[0]) = 0;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "_handleNvmReadAccessoryInfo: finish", valuePtr, 2u);
  }

LABEL_27:
  v126 = v24;
  if (!v125)
  {
    v31 = v27;
    v32 = v26;
    if (cf)
    {
      v33 = *(a1 + 712);
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v34 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v34 = &_os_log_default;
        v39 = &_os_log_default;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(valuePtr[0]) = 138412290;
        *(valuePtr + 4) = cf;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "user nameString %@", valuePtr, 0xCu);
      }

      *(v33 + 88) = cf;
    }

    goto LABEL_237;
  }

  v29 = *(a1 + 712);
  if (cf)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v30 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v30 = &_os_log_default;
      v37 = &_os_log_default;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 138412290;
      *(valuePtr + 4) = cf;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "vendor nameString %@", valuePtr, 0xCu);
    }

    v29[7] = cf;
    CFRetain(cf);
    *&v152 = v29[7];
  }

  if (v132)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v38 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v38 = &_os_log_default;
      v40 = &_os_log_default;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 138412290;
      *(valuePtr + 4) = v132;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "modelIdentifierString %@", valuePtr, 0xCu);
    }

    v29[8] = v132;
    CFRetain(v132);
    *&v153 = v29[8];
  }

  if (v28)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v41 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v41 = &_os_log_default;
      v42 = &_os_log_default;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 138412290;
      *(valuePtr + 4) = v28;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "manufacturerString %@", valuePtr, 0xCu);
    }

    v29[9] = v28;
    CFRetain(v28);
    *(&v152 + 1) = v29[9];
  }

  if (v27)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v43 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v43 = &_os_log_default;
      v44 = &_os_log_default;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 138412290;
      *(valuePtr + 4) = v27;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "serialNumberString %@", valuePtr, 0xCu);
    }

    v29[10] = v27;
    CFRetain(v27);
    *(&v153 + 1) = v29[10];
  }

  if (v26)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v45 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v45 = &_os_log_default;
      v46 = &_os_log_default;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 138412290;
      *(valuePtr + 4) = v26;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "primaryColorData %@", valuePtr, 0xCu);
    }

    v29[13] = v26;
    CFRetain(v26);
    if (v25)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v47 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v47 = &_os_log_default;
        v83 = &_os_log_default;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(valuePtr[0]) = 138412290;
        *(valuePtr + 4) = v25;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "secondaryColorData %@", valuePtr, 0xCu);
      }

      v29[14] = v25;
      CFRetain(v25);
    }
  }

  if (!v27 && !v28 && !v132 && !cf && !v130 || !*a1)
  {
LABEL_185:
    v129 = v25;
    if (v26 && *a1)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
      if (!Copy)
      {
        goto LABEL_246;
      }

      v88 = Copy;
      EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
      if (!EndpointWithUUID)
      {
        CFRelease(v88);
        goto LABEL_246;
      }

      v90 = EndpointWithUUID;
      v91 = v27;
      v92 = acc_endpoint_copyProperty(EndpointWithUUID);
      v93 = v92;
      if (!v92 || CFEqual(v92, kCFNull))
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v94 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v94 = &_os_log_default;
          v95 = &_os_log_default;
        }

        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(valuePtr[0]) = 67109120;
          HIDWORD(valuePtr[0]) = v129 != 0;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "acc_endpoint_setProperties: primaryColorData:1, secondaryColorData:%d", valuePtr, 8u);
        }

        if (v129)
        {
          v148[0] = kACCProperties_Endpoint_NFC_DisplayP3Rgb;
          v148[1] = kACCProperties_Endpoint_NFC_DisplayP3RgbSecondary;
          v149[0] = v26;
          v149[1] = v129;
          v96 = v149;
          v97 = v148;
          v98 = 2;
        }

        else
        {
          v146 = kACCProperties_Endpoint_NFC_DisplayP3Rgb;
          v147 = v26;
          v96 = &v147;
          v97 = &v146;
          v98 = 1;
        }

        v99 = [NSDictionary dictionaryWithObjects:v96 forKeys:v97 count:v98, v120];
        acc_endpoint_setProperties(v90, v99);

        if (v93)
        {
          CFRelease(v93);
        }
      }

      CFRelease(v88);
      v25 = v129;
      v27 = v91;
    }

    v31 = v27;
    v32 = v26;
    if (!v131)
    {
      goto LABEL_237;
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v100 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v100 = &_os_log_default;
      v101 = &_os_log_default;
    }

    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 138412290;
      *(valuePtr + 4) = v131;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "deviceCompatibilityArray %@", valuePtr, 0xCu);
    }

    v29[12] = v131;
    CFRetain(v131);
    *&v157 = v29[12];
    v102 = systemInfo_copyProductType();
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v103 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v103 = &_os_log_default;
      v104 = &_os_log_default;
    }

    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(valuePtr[0]) = 138412290;
      *(valuePtr + 4) = v102;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "productType %@", valuePtr, 0xCu);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v105 = v131;
    v106 = [v105 countByEnumeratingWithState:&v134 objects:v145 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = 0;
      v109 = *v135;
      do
      {
        for (i = 0; i != v107; i = i + 1)
        {
          if (*v135 != v109)
          {
            objc_enumerationMutation(v105);
          }

          v108 = v108 || CFStringCompare(v102, *(*(&v134 + 1) + 8 * i), 0) == kCFCompareEqualTo;
        }

        v107 = [v105 countByEnumeratingWithState:&v134 objects:v145 count:16];
      }

      while (v107);

      v111 = *a1 != 0 && v108;
      v25 = v129;
      if (v111 != 1)
      {
        goto LABEL_237;
      }

      v112 = CFStringCreateCopy(kCFAllocatorDefault, *a1);
      if (v112)
      {
        v113 = v112;
        v114 = acc_manager_getEndpointWithUUID(v112);
        if (v114)
        {
          acc_endpoint_setProperty(v114, kCFACCProperties_Endpoint_NFC_DisplayUI, kCFBooleanTrue);
          CFRelease(v113);
          goto LABEL_237;
        }

        CFRelease(v113);
      }

      v131 = v105;
      v26 = v32;
      v27 = v31;
      goto LABEL_246;
    }

    v25 = v129;
LABEL_237:
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v115 = *(gLogObjects + 440);
      v26 = v32;
      v27 = v31;
      v116 = v126;
    }

    else
    {
      v116 = v126;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v115 = &_os_log_default;
      v117 = &_os_log_default;
      v26 = v32;
      v27 = v31;
    }

    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v118 = *(a1 + 72);
      LODWORD(valuePtr[0]) = 134218240;
      *(valuePtr + 4) = v118;
      WORD2(valuePtr[1]) = 2048;
      *(&valuePtr[1] + 6) = v116;
      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "supportedSecureTunnelCapabilitiesMask: 0x%llx -> 0x%llx", valuePtr, 0x16u);
    }

    *(a1 + 72) = v116;
    *(a1 + 32) = 0;
    goto LABEL_246;
  }

  v84 = CFStringCreateCopy(kCFAllocatorDefault, *a1);
  if (v84)
  {
    v85 = v84;
    v86 = acc_manager_getEndpointWithUUID(v84);
    if (v86)
    {
      acc_endpoint_setAccessoryInfo(v86);
      CFRelease(v85);
      goto LABEL_185;
    }

    CFRelease(v85);
  }

LABEL_246:
}

void _replyGetNVMKey(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 64));
  if (*(a1 + 30) == 1)
  {
    v21 = -1431655766;
    v20 = logObjectForModule_12();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _replyGetNVMKey_cold_2();
    }

    goto LABEL_40;
  }

  v3 = *(a1 + 36);
  if (!v3)
  {
    v20 = logObjectForModule_12();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "_replyGetNVMKey: !actionKeyCount";
LABEL_55:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    }

LABEL_56:
    v21 = -1;
    goto LABEL_40;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v20 = logObjectForModule_12();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "_replyGetNVMKey: !userPublicNVMKeyValues";
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v5 = Mutable;
  v27 = v2;
  if (*(a1 + 36) < 1)
  {
LABEL_21:
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v18 = *(gLogObjects + 440);
      v2 = v27;
    }

    else
    {
      v2 = v27;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_replyGetNVMKey: dictionary", buf, 2u);
    }

    v2[2](v2, v5, 0);
    goto LABEL_30;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 712);
  while (1)
  {
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, (*(a1 + 40) + v6));
    if (!v9)
    {
      break;
    }

    v10 = v9;
    if (CFDictionaryContainsKey(*(v8 + 48), v9))
    {
      Value = CFDictionaryGetValue(*(v8 + 48), v10);
      if (!Value)
      {
        v20 = logObjectForModule_12();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v22 = "_replyGetNVMKey: !valueData";
          goto LABEL_38;
        }

LABEL_39:
        v21 = -1;
        v2 = v27;
        goto LABEL_40;
      }

      v12 = Value;
      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", *(*(a1 + 40) + v6));
      if (!v13)
      {
        v20 = logObjectForModule_12();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v22 = "_replyGetNVMKey: !keyStringRef";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
        }

        goto LABEL_39;
      }

      CFDictionaryAddValue(v5, v13, v12);
    }

    else
    {
      v14 = gLogObjects;
      v15 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v16 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v29 = v14;
          v30 = 1024;
          v31 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v17 = &_os_log_default;
        v16 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_replyGetNVMKey: !contains", buf, 2u);
      }
    }

    ++v7;
    v6 += 2;
    if (v7 >= *(a1 + 36))
    {
      goto LABEL_21;
    }
  }

  v20 = logObjectForModule_12();
  v2 = v27;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_replyGetNVMKey: !keyRef", buf, 2u);
  }

  v21 = -1;
LABEL_40:

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v23 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v23 = &_os_log_default;
    v24 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_replyGetNVMKey: error", buf, 2u);
  }

  v25 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, v21, 0);
  (v2)[2](v2, 0, v25);
LABEL_30:
}

uint64_t _copyOrCreateUserPublicKeyForSerialNumber(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"com.apple.accessoryd.mfi4.userPublicKey.%@", a1];
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_copyOrCreateUserPublicKeyForSerialNumber: featureTag: %@", buf, 0xCu);
  }

  MFi4AuthFeatureGroup();
  v4 = CopySynchronizableKeyForAuthFeature();
  if (v4)
  {
    SynchronizableKeyForAuthFeature = v4;
  }

  else
  {
    MFi4AuthFeatureGroup();
    SynchronizableKeyForAuthFeature = CreateSynchronizableKeyForAuthFeature();
    if (!SynchronizableKeyForAuthFeature)
    {
      _copyOrCreateUserPublicKeyForSerialNumber_cold_2();
    }
  }

  return SynchronizableKeyForAuthFeature;
}

uint64_t mfi4Auth_protocol_handle_NVMWriteResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HIDWORD(v83) = 1;
  if (!a1)
  {
    mfi4Auth_protocol_handle_NVMWriteResponse_cold_7();
LABEL_159:
    v15 = HIDWORD(v83);
LABEL_160:
    if (v15)
    {
      goto LABEL_161;
    }

    return 0;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_NVMWriteResponse_cold_6();
    goto LABEL_159;
  }

  if (!a3)
  {
    mfi4Auth_protocol_handle_NVMWriteResponse_cold_5();
    goto LABEL_159;
  }

  BYTE3(v83) = 0;
  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  FirstParam = iAP2MsgGetFirstParam(a3, 0);
  v79 = 0;
  v80 = 0;
  v7 = 0;
  *&v8 = 67109120;
  v81 = v8;
  *&v8 = 134218240;
  v78 = v8;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v10 = gLogObjects;
    v11 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v12 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = v78;
        *&buf[4] = v10;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v13 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v81;
      *&buf[4] = ParamID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMWriteResponse: paramID: %d", buf, 8u);
    }

    if (*(a1 + 144) == 2)
    {
      switch(ParamID)
      {
        case 2:
          if (HIDWORD(v80) >= 0x40)
          {
            v23 = gLogObjects;
            v24 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v18 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v78;
                *&buf[4] = v23;
                *&buf[12] = 1024;
                *&buf[14] = v24;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v49 = &_os_log_default;
              v18 = &_os_log_default;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_93;
            }

LABEL_95:

            break;
          }

          DataAsU16 = iAP2MsgGetDataAsU16(FirstParam, &v83 + 1);
          v38 = gLogObjects;
          v39 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v40 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v78;
              *&buf[4] = v38;
              *&buf[12] = 1024;
              *&buf[14] = v39;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v50 = &_os_log_default;
            v40 = &_os_log_default;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v81;
            *&buf[4] = DataAsU16;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "NVMWriteResponse: keyNotWritten: 0x%x", buf, 8u);
          }

          if (HIDWORD(v83))
          {
            goto LABEL_161;
          }

          ++HIDWORD(v80);
          v7 |= 4u;
          break;
        case 1:
          if (v80 >= 0x40)
          {
            v21 = gLogObjects;
            v22 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v18 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v78;
                *&buf[4] = v21;
                *&buf[12] = 1024;
                *&buf[14] = v22;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v47 = &_os_log_default;
              v18 = &_os_log_default;
            }

            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_95;
            }

LABEL_55:
            *buf = v81;
            *&buf[4] = 64;
            v42 = v18;
            v43 = "NVMWriteResponse: reached limit of %d keyWritten parameters";
LABEL_94:
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 8u);
            goto LABEL_95;
          }

          v33 = iAP2MsgGetDataAsU16(FirstParam, &v83 + 1);
          v34 = gLogObjects;
          v35 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v36 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v78;
              *&buf[4] = v34;
              *&buf[12] = 1024;
              *&buf[14] = v35;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v48 = &_os_log_default;
            v36 = &_os_log_default;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v81;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NVMWriteResponse: keyWritten: 0x%x", buf, 8u);
          }

          if (HIDWORD(v83))
          {
            goto LABEL_161;
          }

          LODWORD(v79) = v79 | (v33 == 21248);
          HIDWORD(v79) |= (v33 - 21249) < 0xFF;
          LODWORD(v80) = v80 + 1;
LABEL_88:
          v7 |= 2u;
          break;
        case 0:
          DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &v83 + 1, &__dst, 16);
          v15 = HIDWORD(v83);
          if (HIDWORD(v83) || DataAsArrayU8 != 16)
          {
            goto LABEL_160;
          }

LABEL_63:
          v7 |= 1u;
          break;
      }
    }

    else
    {
      if (ParamID == 1)
      {
        if (HIDWORD(v80) >= 0x40)
        {
          v19 = gLogObjects;
          v20 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v18 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v78;
              *&buf[4] = v19;
              *&buf[12] = 1024;
              *&buf[14] = v20;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v45 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_95;
          }

LABEL_93:
          *buf = v81;
          *&buf[4] = 64;
          v42 = v18;
          v43 = "NVMWriteResponse: reached limit of %d keyNotWritten parameters";
          goto LABEL_94;
        }

        v29 = iAP2MsgGetDataAsU16(FirstParam, &v83 + 1);
        v30 = gLogObjects;
        v31 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v32 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v78;
            *&buf[4] = v30;
            *&buf[12] = 1024;
            *&buf[14] = v31;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v46 = &_os_log_default;
          v32 = &_os_log_default;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v81;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "NVMWriteResponse: keyNotWritten: 0x%x", buf, 8u);
        }

        if (HIDWORD(v83))
        {
          goto LABEL_161;
        }

        ++HIDWORD(v80);
        goto LABEL_88;
      }

      if (!ParamID)
      {
        if (v80 >= 0x40)
        {
          v16 = gLogObjects;
          v17 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v18 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v78;
              *&buf[4] = v16;
              *&buf[12] = 1024;
              *&buf[14] = v17;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v41 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_95;
          }

          goto LABEL_55;
        }

        v25 = iAP2MsgGetDataAsU16(FirstParam, &v83 + 1);
        v26 = gLogObjects;
        v27 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v28 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v78;
            *&buf[4] = v26;
            *&buf[12] = 1024;
            *&buf[14] = v27;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v44 = &_os_log_default;
          v28 = &_os_log_default;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v81;
          *&buf[4] = v25;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NVMWriteResponse: keyWritten: 0x%x", buf, 8u);
        }

        if (HIDWORD(v83))
        {
          goto LABEL_161;
        }

        LODWORD(v79) = v79 | (v25 == 21248);
        HIDWORD(v79) |= (v25 - 21249) < 0xFF;
        LODWORD(v80) = v80 + 1;
        goto LABEL_63;
      }
    }

    FirstParam = iAP2MsgGetNextParamWithError(a3, 0, FirstParam, &v83 + 3);
    if ((v83 & 0x1000000) != 0)
    {
      goto LABEL_159;
    }
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v51 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v51 = &_os_log_default;
    v52 = &_os_log_default;
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = v81;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMWriteResponse: paramMask: 0x%x", buf, 8u);
  }

  if (1 << _convertNVMWriteResponse(a1, 1, 0) == v7)
  {
    if (v79)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
      if (Copy)
      {
        v54 = Copy;
        EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
        if (EndpointWithUUID)
        {
          acc_connection_setPairingStatus(*EndpointWithUUID, 2);
        }

        CFRelease(v54);
      }

      if (*(a1 + 32) == 4)
      {
        v56 = objc_retainBlock(*(a1 + 64));
        if (v56)
        {
          v57 = logObjectForModule_12();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMWriteResponse: reply", buf, 2u);
          }

          v56[2](v56, 0);
        }

        *(a1 + 64) = 0;
        *(a1 + 32) = 0;
      }
    }

    if ((v79 & 0x100000000) != 0)
    {
      v58 = *(a1 + 32);
      if (v58 == 6)
      {
        v59 = objc_retainBlock(*(a1 + 64));
        v59[2](v59, 0);
        *(a1 + 64) = 0;
        *(a1 + 32) = 0;

        v58 = *(a1 + 32);
      }

      if (v58 == 8)
      {
        v60 = objc_retainBlock(*(a1 + 64));
        v60[2](v60, 0);
        *(a1 + 64) = 0;
        *(a1 + 32) = 0;
      }
    }

    return 0;
  }

  if (*(a1 + 144) != 2 || v7 != 5)
  {
    if (1 << _convertNVMWriteResponse(a1, 2, 0) == v7)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v62 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v62 = &_os_log_default;
        v75 = &_os_log_default;
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMWriteResponse: unknown combination of params", buf, 2u);
      }
    }

    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v61 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v61 = &_os_log_default;
    v63 = &_os_log_default;
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_NVMWriteResponse: received Nonce", buf, 2u);
  }

  memset(buf, 170, 16);
  arc4random_buf(buf, 0x10uLL);
  v64 = *(*(a1 + 712) + 80);
  if (!v64)
  {
    mfi4Auth_protocol_handle_NVMWriteResponse_cold_4(&v83 + 1);
    goto LABEL_159;
  }

  UserPublicKeyForSerialNumber = _copyOrCreateUserPublicKeyForSerialNumber(v64);
  if (!UserPublicKeyForSerialNumber)
  {
    HIDWORD(v83) = -1;
    goto LABEL_159;
  }

  v66 = UserPublicKeyForSerialNumber;
  v67 = _generateUserSignature(UserPublicKeyForSerialNumber, &__dst, buf);
  if (v67)
  {
    v68 = v67;
    if (_extractPublicKey(v66))
    {
      v69 = *(a1 + 200);
      v70 = *(a1 + 40);
      v71 = *(a1 + 48);
      v72 = *(a1 + 56);
      v73 = *(a1 + 36);
      BytePtr = CFDataGetBytePtr(v68);
      mfi4Auth_protocol_initMessage_RequestUserNVMWrite(a1, v69, a4, v70, v71, v72, v73, BytePtr, buf, a4, v78, *(&v78 + 1), v79, v80, v81, *(&v81 + 1), v82, v83, __dst, *(&__dst + 1), *buf, *&buf[8], *&buf[16]);
      return 0;
    }
  }

  HIDWORD(v83) = -1;
LABEL_161:
  mfi4Auth_protocol_handle_NVMWriteResponse_cold_8(&v83 + 1, buf);
  return *buf;
}

uint64_t _convertNVMWriteResponse(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    _convertNVMWriteResponse_cold_2();
LABEL_25:
    v7 = a2;
    goto LABEL_11;
  }

  if (*(a1 + 30) == 1)
  {
    _convertNVMWriteResponse_cold_1();
    goto LABEL_25;
  }

  v6 = *(a1 + 144) != 3 && a3 == 0;
  v7 = a2;
  if (!v6)
  {
    if (a2 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2;
      if (a2 == 1)
      {
        v7 = 0;
      }
    }
  }

LABEL_11:
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v8 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      v11 = *(a1 + 144);
    }

    else
    {
      v11 = -1;
    }

    v12 = 136316418;
    v13 = "_convertNVMWriteResponse";
    v14 = 1024;
    v15 = 3079;
    v16 = 1024;
    v17 = v11;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s:%d negotiatedVersion %d, force %d, commandID 0x%04x -> 0x%04x", &v12, 0x2Au);
  }

  return v7;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  inited = 1;
  if (!a1)
  {
    mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_21();
    goto LABEL_143;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_20();
    goto LABEL_143;
  }

  if (!a3)
  {
    mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_19();
    goto LABEL_143;
  }

  if (!a5)
  {
    mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_18();
    goto LABEL_143;
  }

  v61 = 0;
  bytes = 0uLL;
  v57 = *(a1 + 712);
  FirstParam = iAP2MsgGetFirstParam(a3, 0);
  DataAsU16 = 0;
  LOBYTE(v7) = 0;
  v8 = 0;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v10 = gLogObjects;
    v11 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v12 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v10;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v13 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = ParamID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handle_NVMPublicKeyChallenge: paramID: %d", buf, 8u);
    }

    switch(ParamID)
    {
      case 2:
        DataAsBool = iAP2MsgGetDataAsBool(FirstParam, &inited);
        if (inited)
        {
          goto LABEL_145;
        }

        v7 = DataAsBool;
        v17 = gLogObjects;
        v18 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v19 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v17;
            *&buf[12] = 1024;
            *&buf[14] = v18;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v20 = &_os_log_default;
          v19 = &_os_log_default;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "handle_NVMPublicKeyChallenge: isProgrammed: %d", buf, 8u);
        }

        if (v7 && *(a1 + 32) == 4)
        {
          v21 = *(a1 + 64);
          if (v21)
          {
            v22 = objc_retainBlock(v21);
            v23 = gLogObjects;
            v24 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v25 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = v23;
                *&buf[12] = 1024;
                *&buf[14] = v24;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v26 = &_os_log_default;
              v25 = &_os_log_default;
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "handle_NVMPublicKeyChallenge: reply", buf, 2u);
            }

            v27 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
            v22[2](v22, v27);
            *(a1 + 32) = 0;
            *(a1 + 64) = 0;
          }
        }

        v8 |= 4u;
        break;
      case 1:
        DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, &bytes, 16);
        v15 = inited;
        if (inited || DataAsArrayU8 != 16)
        {
          goto LABEL_144;
        }

        v8 |= 2u;
        break;
      case 0:
        DataAsU16 = iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          goto LABEL_145;
        }

        v8 |= 1u;
        break;
    }

    FirstParam = iAP2MsgGetNextParamWithError(a3, 0, FirstParam, &v61);
    if (v61)
    {
      goto LABEL_143;
    }
  }

  if (v8 != 7)
  {
    goto LABEL_143;
  }

  v28 = *(a1 + 32);
  if (v28 > 9)
  {
    if (v28 == 10)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v32 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v32 = &_os_log_default;
        v53 = &_os_log_default;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "handle_NVMPublicKeyChallenge: kMfi4Auth_Action_BeginVendorKeyErase", buf, 2u);
      }

      v54 = *(a1 + 64);
      if (!v54)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_10();
        goto LABEL_143;
      }

      v55 = objc_retainBlock(v54);
      v45 = v55;
      if (DataAsU16 != 20992)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_7(v55);
        goto LABEL_136;
      }

      if (!v7)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_8(v55);
        goto LABEL_136;
      }

      v46 = CFDataCreate(kCFAllocatorDefault, &bytes, 16);
      if (!v46)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_9(v45);
        goto LABEL_136;
      }
    }

    else
    {
      if (v28 != 12)
      {
        return;
      }

      if (gLogObjects && gNumLogObjects >= 56)
      {
        v30 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v30 = &_os_log_default;
        v42 = &_os_log_default;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "handle_NVMPublicKeyChallenge: kMfi4Auth_Action_BeginUserKeyErase", buf, 2u);
      }

      v43 = *(a1 + 64);
      if (!v43)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_5();
        goto LABEL_143;
      }

      v44 = objc_retainBlock(v43);
      v45 = v44;
      if (DataAsU16 != 21248)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_2(v44);
        goto LABEL_136;
      }

      if (!v7)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_3(v44);
        goto LABEL_136;
      }

      v46 = CFDataCreate(kCFAllocatorDefault, &bytes, 16);
      if (!v46)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_4(v45);
LABEL_136:

        goto LABEL_143;
      }
    }

    *a5 = 1;
    (v45)[2](v45, v46, 0);
    *(a1 + 64) = 0;
    *(a1 + 32) = 0;

    return;
  }

  if (v28 == 4)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v31 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v31 = &_os_log_default;
      v47 = &_os_log_default;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "handle_NVMPublicKeyChallenge: kMfi4Auth_Action_WriteUserKey", buf, 2u);
    }

    if (DataAsU16 == 21248)
    {
      if (v7)
      {
        mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_17();
      }

      else
      {
        memset(buf, 170, 16);
        arc4random_buf(buf, 0x10uLL);
        v48 = *(v57 + 80);
        if (v48)
        {
          UserPublicKeyForSerialNumber = _copyOrCreateUserPublicKeyForSerialNumber(v48);
          if (UserPublicKeyForSerialNumber && (v50 = UserPublicKeyForSerialNumber, (v51 = _generateUserSignature(UserPublicKeyForSerialNumber, &bytes, buf)) != 0))
          {
            v52 = v51;
            if (_extractPublicKey(v50))
            {
              CFDataGetBytePtr(v52);
              inited = mfi4Auth_protocol_initMessage_RequestNVMWritePublicKey(a1);
              if (!inited)
              {
                return;
              }

              mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_14();
            }

            else
            {
              mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_15(&inited);
            }
          }

          else
          {
            inited = -1;
          }
        }

        else
        {
          mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_16(&inited);
        }
      }
    }

    else
    {
      mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_13();
    }

    goto LABEL_143;
  }

  if (v28 != 5)
  {
    return;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v29 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v29 = &_os_log_default;
    v33 = &_os_log_default;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "handle_NVMPublicKeyChallenge: kMfi4Auth_Action_EraseUserKey", buf, 2u);
  }

  memset(buf, 170, 16);
  arc4random_buf(buf, 0x10uLL);
  if (DataAsU16 != 21248)
  {
    v40 = logObjectForModule_12();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    *v60 = 0;
    v41 = "handle_NVMPublicKeyChallenge: !kMFi4_Area51_NVM_User_PublicKey";
LABEL_141:
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, v60, 2u);
    goto LABEL_142;
  }

  if (!v7)
  {
    v40 = logObjectForModule_12();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    *v60 = 0;
    v41 = "handle_NVMPublicKeyChallenge: !isProgrammed";
    goto LABEL_141;
  }

  v34 = *(v57 + 80);
  if (!v34)
  {
    inited = -1;
    v40 = logObjectForModule_12();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    *v60 = 0;
    v41 = "handle_NVMPublicKeyChallenge: EraseUserKey: !serialNumberString";
    goto LABEL_141;
  }

  v35 = _copyOrCreateUserPublicKeyForSerialNumber(v34);
  if (!v35)
  {
    inited = -1;
    v40 = logObjectForModule_12();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    *v60 = 0;
    v41 = "handle_NVMPublicKeyChallenge: EraseUserKey: _copyOrCreateUserPublicKeyForSerialNumber failed";
    goto LABEL_141;
  }

  v36 = v35;
  v37 = _generateUserSignature(v35, &bytes, buf);
  if (!v37)
  {
    inited = -1;
    v40 = logObjectForModule_12();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    *v60 = 0;
    v41 = "handle_NVMPublicKeyChallenge: EraseUserKey: _generateUserSignature failed";
    goto LABEL_141;
  }

  v38 = v37;
  if (_extractPublicKey(v36))
  {
    CFDataGetBytePtr(v38);
    mfi4Auth_protocol_initMessage_RequestNVMErasePublicKey();
    inited = v39;
    if (!v39)
    {
      return;
    }

    v40 = logObjectForModule_12();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    *v60 = 0;
    v41 = "handle_NVMPublicKeyChallenge: EraseUserKey: initMessage_RequestNVMErasePublicKey error";
    goto LABEL_141;
  }

  inited = -1;
  v40 = logObjectForModule_12();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *v60 = 0;
    v41 = "handle_NVMPublicKeyChallenge: EraseUserKey: !userPublicKey";
    goto LABEL_141;
  }

LABEL_142:

LABEL_143:
  v15 = inited;
LABEL_144:
  if (v15)
  {
LABEL_145:
    mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_22(&inited, buf);
  }
}

uint64_t mfi4Auth_protocol_initSigmaContextNvm(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 30) != 1)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v2 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v2 = &_os_log_default;
        v3 = &_os_log_default;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_initSigmaContextNvm", v10, 2u);
      }

      v4 = *(a1 + 712);
      v5 = malloc_type_malloc(0x2F0uLL, 0x10E0040123A03EAuLL);
      *v4 = v5;
      if (v5)
      {
        if (*(a1 + 104))
        {
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v6 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v6 = &_os_log_default;
            v7 = &_os_log_default;
          }

          v8 = 2863311530;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_initSigmaContextNvm_cold_3();
          }

          goto LABEL_21;
        }

        v6 = logObjectForModule_12();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_initSigmaContextNvm_cold_4();
        }
      }

      else
      {
        v6 = logObjectForModule_12();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_initSigmaContextNvm_cold_5();
        }
      }

      v8 = 0xFFFFFFFFLL;
      goto LABEL_21;
    }

    v8 = 2863311530;
    v6 = logObjectForModule_12();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initSigmaContextNvm_cold_6();
    }
  }

  else
  {
    v8 = 2863311530;
    v6 = logObjectForModule_12();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initSigmaContextNvm_cold_7();
    }
  }

LABEL_21:

  return v8;
}

void printSessionKeys(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 0;
  if (a2)
  {
    v4 = 10;
  }

  else
  {
    v4 = 14;
  }

  v5 = &unk_100226FB0;
  if (a2)
  {
    v5 = &unk_100226F10;
  }

  v22 = a1 + 544;
  v6 = (v5 + 8);
  do
  {
    v7 = gLogObjects;
    v8 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v9 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v24 = v7;
        v25 = 1024;
        v26 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v10 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v6;
      *buf = 136315138;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mfi4 %s = ", buf, 0xCu);
    }

    v12 = *(v6 - 1);
    v13 = _dumpSimpleHex([NSData dataWithBytes:v22 + v3 length:v12]);

    v14 = gLogObjects;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v16 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v24 = v14;
        v25 = 1024;
        v26 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v17 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mfi4 %@", buf, 0xCu);
    }

    v18 = gLogObjects;
    v19 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v20 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v24 = v18;
        v25 = 1024;
        v26 = v19;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v21 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "\n", buf, 2u);
    }

    v3 += v12;

    v6 += 2;
    v2 = v13;
    --v4;
  }

  while (v4);
}

uint64_t mfi4Auth_protocol_parse(uint64_t a1, uint64_t a2, CFDataRef theData, __int16 a4)
{
  if (!a1)
  {
    v15 = logObjectForModule_12();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_parse_cold_4();
    }

    goto LABEL_19;
  }

  if (*(a1 + 30) == 1)
  {
    v15 = logObjectForModule_12();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_parse_cold_3();
    }

    goto LABEL_19;
  }

  if (!a2)
  {
    v15 = logObjectForModule_12();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_parse_cold_2();
    }

    goto LABEL_19;
  }

  if (!theData)
  {
    v15 = logObjectForModule_12();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_parse_cold_1();
    }

LABEL_19:

    return 0;
  }

  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  iAP2MsgInitWithSom(a2, a4, 0, 0, 0, 0, 0);
  v10 = iAP2MsgParserInit(0xFFFF, *(a1 + 8), 0, a4);
  v11 = Length;
  if (!Length)
  {
    return 0;
  }

  v12 = v10;
  while (1)
  {
    v13 = *BytePtr++;
    result = iAP2MsgParserConsumeByte(v12, v13, a2);
    if (result)
    {
      break;
    }

    if (!--v11)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _convertUserNVMWrite(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      _convertUserNVMWrite_cold_1();
    }

    else if (*(a1 + 144) == 3 && a2 == 2)
    {
      return 0;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    _convertUserNVMWrite_cold_2();
  }

  return v2;
}

uint64_t mfi4Auth_protocol_nvm_copyUserPublicKeyForSerialNumber(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"com.apple.accessoryd.mfi4.userPublicKey.%@", a1];
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "copyUserPublicKeyForSerialNumber: featureTag: %@", buf, 0xCu);
  }

  MFi4AuthFeatureGroup();
  v4 = CopySynchronizableKeyForAuthFeature();
  if (!v4)
  {
    mfi4Auth_protocol_nvm_copyUserPublicKeyForSerialNumber_cold_2();
  }

  return v4;
}

void *_getCachedUserPublicKey(void *a1)
{
  valuePtr = 21248;
  v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      _getCachedUserPublicKey_cold_1();
      return 0;
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1[89] + 48), v2);
      a1 = malloc_type_calloc(1uLL, 0x40uLL, 0x1592A6A1uLL);
      BytePtr = CFDataGetBytePtr(Value);
      v5 = *(BytePtr + 3);
      v7 = *BytePtr;
      v6 = *(BytePtr + 1);
      *(a1 + 2) = *(BytePtr + 2);
      *(a1 + 3) = v5;
      *a1 = v7;
      *(a1 + 1) = v6;
    }
  }

  else
  {
    _getCachedUserPublicKey_cold_2();
  }

  return a1;
}

uint64_t mfi4Auth_protocol_convertUserAccessoryInfoToAction(uint64_t a1, CFStringRef theString)
{
  v33 = 0;
  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v6 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0xC86632EEuLL);
  v36.location = 0;
  v36.length = Length;
  CFStringGetBytes(theString, v36, 0x8000100u, 0, 0, v6, MaximumSizeForEncoding, &usedBufLen);
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v7 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "convert: accessoryUserName: %s", buf, 0xCu);
  }

  if (!a1)
  {
    v31 = logObjectForModule_12();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_convertUserAccessoryInfoToAction_cold_4();
    }

    goto LABEL_47;
  }

  if (*(a1 + 30) == 1)
  {
    v31 = logObjectForModule_12();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_convertUserAccessoryInfoToAction_cold_3();
    }

LABEL_47:

    v10 = 0;
    goto LABEL_48;
  }

  _generateUserAccessoryInfoPayload(a1);
  v9 = [NSData dataWithBytes:*(a1 + 16) length:iAP2MsgGetMsgLen(v33)];
  v10 = _dumpSimpleHex(v9);
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v11 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "payload: %@", buf, 0xCu);
  }

  MsgLen = iAP2MsgGetMsgLen(v33);
  if (MsgLen)
  {
    v14 = MsgLen;
    v15 = (MsgLen - 1) / 0xF0uLL;
    *(a1 + 36) = v15 + 1;
    *(a1 + 40) = malloc_type_malloc(2 * (v15 + 1), 0x1000040BDFB0063uLL);
    *(a1 + 48) = malloc_type_malloc(8 * (v15 + 1), 0x10040436913F5uLL);
    v16 = malloc_type_malloc(4 * (v15 + 1), 0x100004052888210uLL);
    v17 = 0;
    *(a1 + 56) = v16;
    v18 = vdupq_n_s64(v15);
    v19 = xmmword_1001C3400;
    v20 = xmmword_1001C3410;
    v21 = xmmword_1001C3420;
    v22 = xmmword_1001C33D0;
    v23 = (*(a1 + 40) + 8);
    v24 = vdupq_n_s64(8uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v18, v22));
      if (vuzp1_s8(vuzp1_s16(v25, *v18.i8), *v18.i8).u8[0])
      {
        *(v23 - 4) = v17 + 21250;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v18), *&v18).i8[1])
      {
        *(v23 - 3) = v17 + 21251;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v21))), *&v18).i8[2])
      {
        *(v23 - 2) = v17 + 21252;
        *(v23 - 1) = v17 + 21253;
      }

      v26 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i32[1])
      {
        *v23 = v17 + 21254;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i8[5])
      {
        v23[1] = v17 + 21255;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19)))).i8[6])
      {
        v23[2] = v17 + 21256;
        v23[3] = v17 + 21257;
      }

      v17 += 8;
      v20 = vaddq_s64(v20, v24);
      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v19 = vaddq_s64(v19, v24);
      v23 += 8;
    }

    while (((v15 + 8) & 0x3FFFFF8) != v17);
    v27 = 0;
    if (v14 >= 0xF0)
    {
      v28 = 240;
    }

    else
    {
      v28 = v14;
    }

    do
    {
      **(a1 + 56) = v28;
      **(a1 + 48) = malloc_type_calloc(1uLL, v28, 0x16AD4768uLL);
      memcpy(**(a1 + 48), (*(a1 + 16) + v27), v28);
      v27 += v28;
    }

    while (v14 != v27);
    v29 = 0;
    if (v6)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_48:
  v29 = 0xFFFFFFFFLL;
  if (v6)
  {
LABEL_39:
    free(v6);
  }

LABEL_40:
  if (v33)
  {
    free(v33);
    v33 = 0;
  }

  return v29;
}

__n128 OUTLINED_FUNCTION_1_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *(v13 - 128) = a13.n128_u32[0];
  *(v13 - 116) = 1024;
  return result;
}

__n128 OUTLINED_FUNCTION_3_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  result = a19;
  *(v23 - 128) = a19.n128_u32[0];
  *(v23 - 124) = a23;
  return result;
}

void OUTLINED_FUNCTION_15_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  v4 = *v1;
  v5 = *v0;

  return iAP2MsgAddU16Param(v4, 0, v2, v5);
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4, int a5)
{

  return iAP2MsgInitWithSom(a1, a2, a3, a4, a5, 0, 0);
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  result = 0;
  *(v0 + 28) = v1;
  return result;
}

void *OUTLINED_FUNCTION_41_1(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(a22 + 24);

  return memcpy(a1, v24, v22);
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return mfi4Auth_protocol_initMessage_RequestNVMOperation(v0);
}

void acc_platform_audioProductCerts_accessoryAttach(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v4 = *(gLogObjects + 456);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processAudioProductCerts accessoryAttach %@-%@", &v7, 0x16u);
  }

  v6 = +[ACCFeatureAudioProduct sharedManager];
  [v6 accessoryAttached:a2 connection:a1];
}

void acc_platform_audioProductCerts_accessoryDetach(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v4 = *(gLogObjects + 456);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processAudioProductCerts accessoryDetach %@-%@", &v7, 0x16u);
  }

  v6 = +[ACCFeatureAudioProduct sharedManager];
  [v6 accessoryDetached:a2 connection:a1];
}

void acc_platform_audioProductCerts_processAudioProductCerts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v10 = *(gLogObjects + 456);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413314;
    v14 = a1;
    v15 = 2112;
    v16 = a2;
    v17 = 2112;
    v18 = a3;
    v19 = 2112;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "processAudioProductCerts: connection %@, endpoint %@, model %@, certs %@, firstConnectionAfterPair %d", &v13, 0x30u);
  }

  v12 = +[ACCFeatureAudioProduct sharedManager];
  [v12 processAudioProductCerts:a4 forModel:a3 firstConnectionAfterPair:a5 connection:a1 endpoint:a2];
}

uint64_t _checkIdentificationInfo_1(uint64_t a1)
{
  v10 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo__kMsgDigitalAudioList, 3u, &v10);
  v3 = v2;
  if (v10 == 1 && v2 == 0)
  {
    v5 = *(*a1 + 24);
    v6 = v5 > 8;
    v7 = (1 << v5) & 0x141;
    if (v6 || v7 == 0)
    {
      v3 = 13;
    }

    else
    {
      if (_checkRequiredSampleRates(a1))
      {
        iap2_features_createFeature(a1, 9u);
        iap2_identification_setIdentifiedForFeature(a1);
        return 0;
      }

      v3 = 2;
    }

    iap2_identification_rejectAllMsgIDsForList(a1, &_checkIdentificationInfo__kMsgDigitalAudioList, 3u, v3);
  }

  return v3;
}

const __CFDictionary *_getEndpointSampleRates(uint64_t a1)
{
  v1 = iap2_identification_transportComponents(a1);
  v2 = v1;
  if (v1)
  {
    Count = CFDictionaryGetCount(v1);
    if (Count)
    {
      v4 = Count;
      __chkstk_darwin(Count);
      v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      memset(v6, 170, v5);
      CFDictionaryGetKeysAndValues(v2, 0, v6);
      if (v4 < 1)
      {
        return 0;
      }

      else
      {
        v2 = 0;
        *&v7 = 134218240;
        v13 = v7;
        do
        {
          v8 = *v6;
          if (*v6)
          {
            if (*(v8 + 20) == 1)
            {
              v2 = *(v8 + 48);
            }
          }

          else
          {
            v9 = gLogObjects;
            v10 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 38)
            {
              v11 = *(gLogObjects + 296);
            }

            else
            {
              v11 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v13;
                v17 = v9;
                v18 = 1024;
                v19 = v10;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v11 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              _getEndpointSampleRates_cold_1(&v14, v15, v11);
            }
          }

          ++v6;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}