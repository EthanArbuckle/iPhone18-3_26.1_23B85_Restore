CFDictionaryRef acc_manager_copyAllEndpoints()
{
  pthread_rwlock_rdlock(&_gAccManagerLock);
  if (qword_100245F08 != -1)
  {
    acc_manager_copyAllEndpoints_cold_1();
  }

  if (qword_100245F18)
  {
    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, qword_100245F18);
  }

  else
  {
    Copy = 0;
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  return Copy;
}

uint64_t acc_manager_protectedEndpointCall(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v15 = 0xAAAAAAAAAAAAAA00;
    v13 = a3;
    v14 = objc_retainBlock(v8);
    v10 = acc_manager_callbackForEndpoint(v7, _handleEndpointCallback, &v13, a2);
    v11 = v14;
    v14 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_87_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  acc_platform_packetLogging_logParsedData(a1, a2, a3, v3, 1);
}

void OUTLINED_FUNCTION_87_3(float a1)
{
  *(v4 - 144) = a1;
  *(v3 + 180) = v2;
  *(v4 - 132) = 1024;
  *(v3 + 190) = v1;
}

BOOL OUTLINED_FUNCTION_93()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_76()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_76_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_76_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_76_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_INFO, a4, &buf, 2u);
}

BOOL OUTLINED_FUNCTION_17()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_24()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_27()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_39(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_24_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_24_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t OUTLINED_FUNCTION_24_4(_WORD *a1, uint64_t a2, void *a3)
{
  *a1 = 21248;

  return mfi4Auth_protocol_initMessage_RequestUserNVMRead(a2, a3, a1, 1, 0, 0);
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, __int16 a2, uint64_t a3)
{

  return iAP2MsgInit(a1, a2, a3, 0xFFFF, 0, 0);
}

uint64_t OUTLINED_FUNCTION_24_6(uint64_t result)
{
  *(v1 - 140) = result;
  v2 = *(v1 - 132);
  return result;
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 2u);
}

void OUTLINED_FUNCTION_86_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint8_t buf)
{

  _os_log_impl(a1, v29, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x20u);
}

uint64_t _handleEndpointCallback(uint64_t a1, void *a2)
{
  if (a2 && (v3 = a2[1]) != 0)
  {
    return (*(v3 + 16))(v3, a1, *a2);
  }

  else
  {
    return 0;
  }
}

BOOL OUTLINED_FUNCTION_79()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_59()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_89_1()
{
  v5 = *(v0 + 8);

  return genericMFi_util_SetOrRemoveProperty(v5, v2, v1, v3);
}

__n128 OUTLINED_FUNCTION_89_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, char a54, unsigned __int8 a55)
{
  result = a17;
  *(v55 - 256) = a17.n128_u32[0];
  *(v55 - 252) = a55;
  return result;
}

uint64_t acc_manager_protectedConnectionCall(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v15 = 0xAAAAAAAAAAAAAA00;
    v13 = a3;
    v14 = objc_retainBlock(v8);
    v10 = acc_manager_callbackForConnection(v7, _handleConnectionCallback, &v13, a2);
    v11 = v14;
    v14 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _handleConnectionCallback(uint64_t a1, void *a2)
{
  if (a2 && (v3 = a2[1]) != 0)
  {
    return (*(v3 + 16))(v3, a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t acc_connection_getType(uint64_t a1)
{
  result = 11;
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3 <= 9)
    {
      return v3;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

pthread_mutex_t *acc_endpoint_copyProperties(pthread_mutex_t *result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock(result + 2);
    v2 = acc_properties_copyProperties(*&v1[1].__opaque[8]);
    pthread_mutex_unlock(v1 + 2);
    return v2;
  }

  return result;
}

const __CFDictionary *acc_properties_copyProperties(const __CFDictionary *theDict)
{
  if (theDict)
  {
    return CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
  }

  return theDict;
}

void platform_navigation_routeGuidanceUpdateHandler(void *a1, void *a2, void *a3)
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
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "navigation routeGuidanceUpdateHandler: %@, componentIdList=%@, updateInfo=%@", &v12, 0x20u);
  }

  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040CA828048uLL);
  *v10 = 0;
  if (v6)
  {
    v11 = v6;
  }

  v10[1] = v6;
  v10[2] = v7;
  if ((accFeatureHandlers_invokeHandler(v5, 43, v10) & 1) == 0)
  {
    platform_navigation_deleteParams(v10);
  }
}

unint64_t accFeatureHandlers_invokeHandler(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v7 = -1431655766;
    v6 = a2;
    v8 = a3;
    v9 = 0xAAAAAAAAAAAAAA00;
    v3 = acc_manager_callbackForEndpoint(a1, _invokeFeatureHandlerIterator, &v5, 0);
  }

  else
  {
    v5 = 0;
    v7 = -1431655766;
    v6 = a2;
    v8 = a3;
    v9 = 0xAAAAAAAAAAAAAA00;
    v3 = acc_manager_iterateAllEndpoints(_invokeFeatureHandlerIterator, &v5, 0);
  }

  return (v3 & v9);
}

BOOL OUTLINED_FUNCTION_26()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t ___iAP2TimeCallbackAfter_block_invoke(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 20;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "iAP2 Link Timer event handler fired! pEndpoint %p", &v10, 0xCu);
  }

  v7 = a1[5];
  v6 = a1[6];
  CurTimeMs = iAP2TimeGetCurTimeMs();
  return v7(v6, CurTimeMs);
}

uint64_t iAP2TimeGetCurTimeMs()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v1.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v1, 0);
  return (v1.tv_usec / 1000 + 1000 * LODWORD(v1.tv_sec));
}

uint64_t _iAP2TimeHandleExpired(uint64_t a1, uint64_t a2)
{
  FirstItemIndex = iAP2ListArrayGetFirstItemIndex(*(a1 + 48));
  v5 = FirstItemIndex;
  v6 = iAP2ListArrayItemForIndex(*(a1 + 48), FirstItemIndex);
  for (*(a1 + 56) = -1; v6; v6 = iAP2ListArrayItemForIndex(*(a1 + 48), v10))
  {
    if (*v6 > a2)
    {
      break;
    }

    v7 = *(a1 + 32);
    v8 = *(v6 + 4);
    v9 = *(v6 + 5);
    iAP2ListArrayDeleteItem(*(a1 + 48), v5, 0);
    v7(a1, v8, v9, a2);
    v10 = iAP2ListArrayGetFirstItemIndex(*(a1 + 48));
    v5 = v10;
  }

  return _iAP2TimeCheckTimeouts(a1);
}

unsigned int *_iAP2TimeCheckTimeouts(uint64_t a1)
{
  FirstItemIndex = iAP2ListArrayGetFirstItemIndex(*(a1 + 48));
  result = iAP2ListArrayItemForIndex(*(a1 + 48), FirstItemIndex);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 56);
    if (*result < v5 || v5 == -1)
    {
      if (v5 != -1)
      {
        *(a1 + 56) = -1;
        _iAP2TimeCancelCallback(a1);
      }

      memset(v13, 170, 16);
      gettimeofday(v13, 0);
      v7 = *&v13[8] / 1000 + 1000 * *v13;
      v8 = *v4;
      *(a1 + 56) = *v4;
      if (v8 < v7 && (_iAP2LogEnableMask & 1) != 0)
      {
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v11 = *(gLogObjects + 152);
        }

        else
        {
          v11 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *v13 = 134218240;
            *&v13[4] = v9;
            *&v13[12] = 1024;
            *&v13[14] = v10;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13, 0x12u);
            v8 = *v4;
          }
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 67109632;
          *&v13[4] = v8;
          *&v13[8] = 1024;
          *&v13[10] = v7;
          *&v13[14] = 1024;
          *&v13[16] = v8 - v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ERROR: WARNING: timeout(%u) < curTime(%u) !!!, diff = %d, Correcting", v13, 0x14u);
          v8 = *v4;
        }
      }

      if (v8 >= v7)
      {
        v12 = v8 - v7;
      }

      else
      {
        v12 = 0;
      }

      return _iAP2TimeCallbackAfter(a1, v12, _iAP2TimeHandleExpired);
    }
  }

  return result;
}

uint64_t iAP2ListArrayGetFirstItemIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2);
  }

  else
  {
    return 255;
  }
}

unint64_t iAP2ListArrayItemForIndex(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2 != 255)
  {
    if (*(a1 + 1) <= a2)
    {
      return 0;
    }

    else
    {
      return a1 + (*(a1 + 5) + 2) * a2 + 10;
    }
  }

  return v2;
}

uint64_t ___invokeFeatureHandler_block_invoke(uint64_t a1)
{
  result = (*(a1 + 40))(*(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL _invokeFeatureHandlerIterator(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    if (a1 && ((v5 = *(a1 + 28), v5 != 15) ? (v6 = v5 == 4) : (v6 = 1), v6))
    {
      v16 = _invokeFeatureHandler(a1, *(a2 + 8), *(a2 + 16));
      if ((v16 & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v17 = *(gLogObjects + 112);
        }

        else
        {
          v17 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a2 + 8);
          v23 = *(a1 + 28);
          v24 = *(a1 + 16);
          v25 = 67109634;
          v26 = v22;
          v27 = 1024;
          v28 = v23;
          v29 = 2112;
          v30 = v24;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "invokeHandler returned false (handlerType: %d) for %{coreacc:ACCEndpoint_Protocol_t}d endpoint %@!", &v25, 0x18u);
        }
      }

      *(a2 + 24) &= v16;
    }

    else
    {
      if (gLogObjects)
      {
        v7 = gNumLogObjects < 15;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v13 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v13 = *(gLogObjects + 112);
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        _invokeFeatureHandlerIterator_cold_5(a2, a1, v13);
      }
    }

    return 1;
  }

  if (CFStringCompare(*a2, *(a1 + 16), 0))
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 15;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v8 = *(gLogObjects + 112);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a2 + 8);
      v10 = *(a1 + 28);
      v11 = *(a1 + 16);
      v12 = *a2;
      v25 = 67109890;
      v26 = v9;
      v27 = 1024;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Skipping invokeHandler (handlerType: %d) for %{coreacc:ACCEndpoint_Protocol_t}d endpoint %@ != %@ !!!", &v25, 0x22u);
    }

    return 1;
  }

  v15 = _invokeFeatureHandler(a1, *(a2 + 8), *(a2 + 16));
  *(a2 + 24) = v15;
  if (v15)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 15)
  {
    v18 = *(gLogObjects + 112);
  }

  else
  {
    v18 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v19 = *(a2 + 8);
    v20 = *(a1 + 28);
    v21 = *(a1 + 16);
    v25 = 67109634;
    v26 = v19;
    v27 = 1024;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "invokeHandler returned false (handlerType: %d) for %{coreacc:ACCEndpoint_Protocol_t}d endpoint %@!", &v25, 0x18u);
    return 0;
  }

  return result;
}

uint64_t _invokeFeatureHandler(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 28) - 4;
  if (v5 > 0xB)
  {
    goto LABEL_12;
  }

  if (((0x89Fu >> v5) & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(&off_100225F50 + v5);
  if (*v6 > a2)
  {
    goto LABEL_12;
  }

  v7 = **(&off_100225EF0 + v5) - 1;
  if (v6[8 * v7] < a2)
  {
    goto LABEL_12;
  }

  v8 = 0;
  while (1)
  {
    v9 = (v8 + v7) >> 1;
    v10 = v6[8 * v9];
    if (v10 <= a2)
    {
      break;
    }

    v7 = v9 - 1;
LABEL_11:
    if (v8 > v7)
    {
      goto LABEL_12;
    }
  }

  if (v10 < a2)
  {
    v8 = v9 + 1;
    goto LABEL_11;
  }

  v16 = *&v6[8 * v9 + 4];
  if (!v16)
  {
LABEL_12:
    v30 = 1;
    v11 = logObjectForModule_4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 28);
      v15 = *(a1 + 16);
      *buf = 67109634;
      v32 = a2;
      v33 = 1024;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "handlerType %d not found for %{coreacc:ACCEndpoint_Protocol_t}d! (endpoint %@)", buf, 0x18u);
    }

    goto LABEL_14;
  }

  switch(*(a1 + 28))
  {
    case 4:
      v22 = *(a1 + 56);
      if (v22)
      {
        v23 = *(v22 + 32);
        if (v23)
        {
          if ((*(v23 + 44) & 1) == 0)
          {
            v19 = *(v22 + 24);
            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            block[2] = ___invokeFeatureHandler_block_invoke;
            block[3] = &unk_100225E80;
            block[4] = &v27;
            block[5] = v16;
            block[6] = v22;
            block[7] = a3;
            v20 = block;
            goto LABEL_28;
          }
        }
      }

      break;
    case 5:
    case 6:
    case 7:
    case 8:
      v17 = v16(*(a1 + 56), a3);
      *(v28 + 24) = v17;
      break;
    case 0xB:
      v18 = *(a1 + 56);
      if (v18)
      {
        v19 = *(v18 + 8);
        if (v19)
        {
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 0x40000000;
          v25[2] = ___invokeFeatureHandler_block_invoke_2;
          v25[3] = &unk_100225EA8;
          v25[4] = &v27;
          v25[5] = v16;
          v25[6] = a1;
          v25[7] = a3;
          v20 = v25;
          goto LABEL_28;
        }
      }

      break;
    case 0xF:
      v21 = *(a1 + 56);
      if (v21)
      {
        v19 = *(v21 + 24);
        if (v19)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 0x40000000;
          v24[2] = ___invokeFeatureHandler_block_invoke_3;
          v24[3] = &unk_100225ED0;
          v24[4] = &v27;
          v24[5] = v16;
          v24[6] = a1;
          v24[7] = a3;
          v20 = v24;
LABEL_28:
          dispatch_sync(v19, v20);
        }
      }

      break;
    default:
      break;
  }

LABEL_14:
  v12 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  return v12;
}

BOOL iap2_navigation_routeGuidanceUpdateHandler(uint64_t *a1, uint64_t a2)
{
  v4 = &audioProductCerts_endpoint_publish_onceToken;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v6 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_14_10();
    *v286 = v5;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v242, v243, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_82())
  {
    if (a1)
    {
      v7 = a1[1];
    }

    OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  v13 = OUTLINED_FUNCTION_85_1();
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v15 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_14_10();
    *v286 = v14;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v244, v245, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_82())
  {
    v16 = "exists";
    v17 = a1[1];
    if (!v13)
    {
      v16 = "missing!!";
    }

    *buf = 138412546;
    v284 = v17;
    v285 = 2080;
    *v286 = v16;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
  }

  result = 0;
  if (a2 && v13)
  {
    if (*a2)
    {
      return 0;
    }

    v24 = gLogObjects;
    v25 = gNumLogObjects;
    if (gLogObjects)
    {
      v26 = gNumLogObjects <= 46;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if (*(a2 + 16))
    {
      if (v27)
      {
        v28 = *(gLogObjects + 368);
      }

      else
      {
        v28 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          *buf = 134218240;
          v284 = v24;
          OUTLINED_FUNCTION_49_2();
          *v286 = v25;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v248, v249, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = a1[1];
        v31 = *(a2 + 8);
        v32 = *(a2 + 16);
        OUTLINED_FUNCTION_78_3();
        v285 = 2112;
        *v286 = v33;
        *&v286[8] = 2112;
        *&v286[10] = v34;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "iAP2Navigation RouteGuidanceUpdate %@, create msg, componentIDs=%@ updateInfo=%@", buf, 0x20u);
      }

      v35 = OUTLINED_FUNCTION_49((a1 + 15), 20993, a1[24]);
      v36 = *(a2 + 8);
      if (v36 && (Count = CFArrayGetCount(v36), Count >= 1))
      {
        v38 = Count;
        v39 = 0;
        for (i = 0; i != v38; ++i)
        {
          CFArrayGetValueAtIndex(*(a2 + 8), i);
          v41 = OUTLINED_FUNCTION_6_13();
          v39 += __addU16NumberParameterToMsg(v41, v42, 0, v43);
        }
      }

      else
      {
        v39 = 0;
      }

      v44 = *(a2 + 16);
      v45 = platform_navigation_routeGuidanceInfoKeyForType(1);
      OUTLINED_FUNCTION_52_3(v45);
      v46 = OUTLINED_FUNCTION_21_1();
      LODWORD(v44) = __addEnumNumberParameterToMsg(v46, v47, 1, v48, v49);
      v50 = *(a2 + 16);
      v51 = platform_navigation_routeGuidanceInfoKeyForType(2);
      OUTLINED_FUNCTION_61(v51);
      v52 = OUTLINED_FUNCTION_21_1();
      v56 = v39 + v44 + __addEnumNumberParameterToMsg(v52, v53, 2, v54, v55);
      v57 = *(a2 + 16);
      v58 = platform_navigation_routeGuidanceInfoKeyForType(3);
      v62 = 0;
      if (OUTLINED_FUNCTION_52_3(v58))
      {
        v59 = OUTLINED_FUNCTION_6_13();
        if (iAP2MsgAddCFStringParam(v59, v60, 3, v61))
        {
          v62 = 1;
        }
      }

      v63 = v56 + v62;
      v64 = *(a2 + 16);
      v65 = platform_navigation_routeGuidanceInfoKeyForType(4);
      if (OUTLINED_FUNCTION_52_3(v65))
      {
        v66 = OUTLINED_FUNCTION_6_13();
        iAP2MsgAddCFStringParam(v66, v67, 4, v68);
      }

      v69 = *(a2 + 16);
      v70 = platform_navigation_routeGuidanceInfoKeyForType(5);
      v71 = OUTLINED_FUNCTION_52_3(v70);
      __addU64NumberParameterToMsg(v35, 5, v71);
      OUTLINED_FUNCTION_53_1();
      v72 = platform_navigation_routeGuidanceInfoKeyForType(6);
      v73 = OUTLINED_FUNCTION_52_3(v72);
      __addU64NumberParameterToMsg(v35, 6, v73);
      OUTLINED_FUNCTION_53_1();
      v74 = platform_navigation_routeGuidanceInfoKeyForType(7);
      OUTLINED_FUNCTION_52_3(v74);
      v75 = OUTLINED_FUNCTION_6_13();
      __addU32NumberParameterToMsg(v75, v76, 7, v77);
      OUTLINED_FUNCTION_67_3();
      v78 = platform_navigation_routeGuidanceInfoKeyForType(8);
      if (OUTLINED_FUNCTION_52_3(v78))
      {
        v79 = OUTLINED_FUNCTION_6_13();
        iAP2MsgAddCFStringParam(v79, v80, 8, v81);
      }

      v82 = *(a2 + 16);
      v83 = platform_navigation_routeGuidanceInfoKeyForType(9);
      OUTLINED_FUNCTION_52_3(v83);
      OUTLINED_FUNCTION_11_8();
      v84 = OUTLINED_FUNCTION_21_1();
      __addEnumNumberParameterToMsg(v84, v85, 9, v86, v87);
      OUTLINED_FUNCTION_53_1();
      v88 = platform_navigation_routeGuidanceInfoKeyForType(10);
      OUTLINED_FUNCTION_52_3(v88);
      v89 = OUTLINED_FUNCTION_6_13();
      __addU32NumberParameterToMsg(v89, v90, 10, v91);
      OUTLINED_FUNCTION_67_3();
      v92 = platform_navigation_routeGuidanceInfoKeyForType(11);
      if (OUTLINED_FUNCTION_52_3(v92))
      {
        v93 = OUTLINED_FUNCTION_6_13();
        iAP2MsgAddCFStringParam(v93, v94, 11, v95);
      }

      v96 = *(a2 + 16);
      v97 = platform_navigation_routeGuidanceInfoKeyForType(12);
      OUTLINED_FUNCTION_52_3(v97);
      OUTLINED_FUNCTION_11_8();
      v98 = OUTLINED_FUNCTION_21_1();
      __addEnumNumberParameterToMsg(v98, v99, 12, v100, v101);
      OUTLINED_FUNCTION_67_3();
      v102 = platform_navigation_routeGuidanceInfoKeyForType(13);
      v106 = 0;
      if (OUTLINED_FUNCTION_52_3(v102))
      {
        v103 = OUTLINED_FUNCTION_6_13();
        if (iAP2MsgAddCFU16ArrayParam(v103, v104, 13, v105))
        {
          v106 = 1;
        }
      }

      v107 = *(a2 + 16);
      v108 = platform_navigation_routeGuidanceInfoKeyForType(14);
      OUTLINED_FUNCTION_52_3(v108);
      v109 = OUTLINED_FUNCTION_6_13();
      __addU16NumberParameterToMsg(v109, v110, 14, v111);
      OUTLINED_FUNCTION_53_1();
      v112 = platform_navigation_routeGuidanceInfoKeyForType(15);
      OUTLINED_FUNCTION_52_3(v112);
      v113 = OUTLINED_FUNCTION_6_13();
      __addU8NumberParameterToMsg(v113, v114, 15, v115);
      OUTLINED_FUNCTION_53_1();
      v116 = platform_navigation_routeGuidanceInfoKeyForType(16);
      OUTLINED_FUNCTION_52_3(v116);
      v117 = OUTLINED_FUNCTION_6_13();
      __addU16NumberParameterToMsg(v117, v118, 16, v119);
      OUTLINED_FUNCTION_53_1();
      v120 = platform_navigation_routeGuidanceInfoKeyForType(17);
      OUTLINED_FUNCTION_52_3(v120);
      v121 = OUTLINED_FUNCTION_6_13();
      __addU16NumberParameterToMsg(v121, v122, 17, v123);
      OUTLINED_FUNCTION_53_1();
      v124 = platform_navigation_routeGuidanceInfoKeyForType(18);
      OUTLINED_FUNCTION_52_3(v124);
      v125 = OUTLINED_FUNCTION_6_13();
      v128 = v63 + v106 + __addU8NumberParameterToMsg(v125, v126, 18, v127);
      if (v13[16] == 1)
      {
        v129 = *(a2 + 16);
        v130 = platform_navigation_routeGuidanceInfoKeyForType(19);
        v134 = 0;
        if (OUTLINED_FUNCTION_52_3(v130))
        {
          v131 = OUTLINED_FUNCTION_6_13();
          if (iAP2MsgAddCFStringParam(v131, v132, 19, v133))
          {
            v134 = 1;
          }
        }

        v128 += v134;
      }

      if (v13[17] == 1)
      {
        v135 = *(a2 + 16);
        v136 = platform_navigation_routeGuidanceInfoKeyForType(20);
        OUTLINED_FUNCTION_52_3(v136);
        v137 = OUTLINED_FUNCTION_6_13();
        v128 += __addU8NumberParameterToMsg(v137, v138, 20, v139);
      }

      if (v13[20] == 1)
      {
        v140 = *(a2 + 16);
        v141 = platform_navigation_routeGuidanceInfoKeyForType(21);
        OUTLINED_FUNCTION_52_3(v141);
        v142 = OUTLINED_FUNCTION_6_13();
        v128 += __addU16NumberParameterToMsg(v142, v143, 21, v144);
      }

      if (v13[21] == 1)
      {
        v145 = *(a2 + 16);
        v146 = platform_navigation_routeGuidanceInfoKeyForType(22);
        OUTLINED_FUNCTION_52_3(v146);
        v147 = OUTLINED_FUNCTION_6_13();
        v150 = v128 + __addU8NumberParameterToMsg(v147, v148, 22, v149);
        v151 = *(a2 + 16);
        v152 = platform_navigation_routeGuidanceInfoKeyForType(23);
        v153 = OUTLINED_FUNCTION_52_3(v152);
        v271 = a1;
        v263 = a2;
        if (v153)
        {
          v154 = v153;
          if (CFArrayGetCount(v153) >= 1)
          {
            v277 = CFArrayGetCount(v154);
            if (v277 >= 1)
            {
              v156 = 0;
              *&v155 = 136316162;
              v266 = v155;
              *&v155 = 134218240;
              *v255 = v155;
              v274 = v154;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v154, v156);
                v158 = v4[491];
                v159 = gNumLogObjects;
                if (v158 && gNumLogObjects >= 47)
                {
                  v160 = *(v158 + 368);
                }

                else
                {
                  v160 = &_os_log_default;
                  if (OUTLINED_FUNCTION_13())
                  {
                    *buf = v255[0];
                    v284 = v158;
                    OUTLINED_FUNCTION_49_2();
                    *v286 = v159;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }
                }

                v161 = v4;
                v162 = os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT);
                if (v162)
                {
                  *buf = OUTLINED_FUNCTION_44_5(v162, v163, v164, v165, v166, v167, v168, v169, v255[0], v255[1], v260, v263, v266, v271).n128_u32[0];
                  v284 = "iap2_navigation_routeGuidanceUpdateHandler";
                  v285 = 1024;
                  *v286 = 800;
                  *&v286[4] = 2112;
                  *&v286[6] = v170;
                  *&v286[14] = 2048;
                  *&v286[16] = v156;
                  v287 = 2112;
                  v288 = ValueAtIndex;
                  _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "%s:%d %@, index %ld, dict = %@", buf, 0x30u);
                }

                v171 = iAP2MsgAddGroupParam(v35, 23);
                v179 = OUTLINED_FUNCTION_82_1(v171, v172, v173, v174, v175, v176, v177, v178, v255[0], v255[1], v260, v263, v266, *(&v266 + 1), v271, v274, v277, v280, 0);
                Value = CFDictionaryGetValue(ValueAtIndex, v179);
                if (v179)
                {
                  CFRelease(v179);
                }

                v181 = OUTLINED_FUNCTION_18_9();
                v184 = __addU8NumberParameterToMsg(v181, v182, v183, Value);
                v192 = OUTLINED_FUNCTION_82_1(v184, v185, v186, v187, v188, v189, v190, v191, v256, v258, v261, v264, v267, v269, v272, v275, v278, v281, 1);
                v193 = CFDictionaryGetValue(ValueAtIndex, v192);
                if (v192)
                {
                  CFRelease(v192);
                }

                v194 = OUTLINED_FUNCTION_18_9();
                v197 = __addU16NumberParameterToMsg(v194, v195, v196, v193);
                v205 = OUTLINED_FUNCTION_82_1(v197, v198, v199, v200, v201, v202, v203, v204, v257, v259, v262, v265, v268, v270, v273, v276, v279, v282, 2);
                v206 = CFDictionaryGetValue(ValueAtIndex, v205);
                if (v205)
                {
                  CFRelease(v205);
                }

                v207 = OUTLINED_FUNCTION_18_9();
                v150 += v184 + v197 + __addU32NumberParameterToMsg(v207, v208, v209, v206);
                ++v156;
                v154 = v274;
                v4 = v161;
              }

              while (v277 != v156);
            }
          }
        }

        a2 = v263;
        v210 = *(v263 + 16);
        v211 = platform_navigation_routeGuidanceInfoKeyForType(24);
        OUTLINED_FUNCTION_52_3(v211);
        v212 = OUTLINED_FUNCTION_6_13();
        LODWORD(v210) = __addU32NumberParameterToMsg(v212, v213, 24, v214);
        v215 = *(v263 + 16);
        v216 = platform_navigation_routeGuidanceInfoKeyForType(25);
        CFDictionaryGetValue(v215, v216);
        v217 = OUTLINED_FUNCTION_6_13();
        LODWORD(v215) = v210 + __addU32NumberParameterToMsg(v217, v218, 25, v219);
        v220 = *(v263 + 16);
        v221 = platform_navigation_routeGuidanceInfoKeyForType(26);
        OUTLINED_FUNCTION_52_3(v221);
        v222 = OUTLINED_FUNCTION_6_13();
        v128 = v150 + v215 + __addU32NumberParameterToMsg(v222, v223, 26, v224);
        a1 = v271;
      }

      v225 = v4[491];
      v226 = gNumLogObjects;
      if (v225 && gNumLogObjects >= 47)
      {
        v227 = *(v225 + 368);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_14_10();
        *v286 = v226;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v246, v247, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        v228 = a1[1];
        iAP2MsgGetMsgID(v35);
        OUTLINED_FUNCTION_14_10();
        *v286 = v229;
        *&v286[4] = v230;
        *&v286[6] = v128;
        OUTLINED_FUNCTION_40_5();
        _os_log_impl(v231, v232, v233, v234, v235, 0x18u);
      }

      if (v128)
      {
        iap2_sessionControl_sendOutgoingMessage(a1, v35);
        platform_navigation_deleteParams(a2);
        return 1;
      }

      return 0;
    }

    if (v27)
    {
      v29 = *(gLogObjects + 368);
    }

    else
    {
      v29 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v284 = v24;
        OUTLINED_FUNCTION_49_2();
        *v286 = v25;
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_10(v250, v251, v252, v253, v254);
      }
    }

    result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v236 = a1[1];
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_79_0(v237, v238, v239, v240, v241);
      return 0;
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_23()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_18()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_82()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_78_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_78_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x20u);
}

BOOL OUTLINED_FUNCTION_13()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

void OUTLINED_FUNCTION_33_7(unsigned __int16 a1@<W8>, float a2@<S0>)
{
  *(v2 - 128) = a2;
  *(v2 - 124) = a1;
  *(v2 - 120) = 1024;
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return iap2_feature_getFeature(v0, 0x11u);
}

uint64_t iap2_feature_getFeature(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return *(result + 8 * a2 + 200);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_95()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_49_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x14u);
}

uint64_t iAP2MsgInit(uint64_t result, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 24) = a3;
    *(result + 16) = a4;
    *(result + 40) = a5;
    *(result + 48) = a6;
    if (a3)
    {
      *a3 = 100679744;
      *(a3 + 4) = HIBYTE(a2);
      *(a3 + 5) = a2;
      v6 = a3 + 6;
    }

    else
    {
      v6 = 0;
    }

    *(result + 32) = v6;
  }

  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_6_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

BOOL OUTLINED_FUNCTION_21()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_21_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_17_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void *OUTLINED_FUNCTION_6_7()
{

  return malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
}

void OUTLINED_FUNCTION_6_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 128), 0x16u);
}

void OUTLINED_FUNCTION_6_18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x14u);
}

void OUTLINED_FUNCTION_6_23(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

uint64_t OUTLINED_FUNCTION_6_28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_6_32(float a1)
{
  *(v2 - 128) = a1;
  *(v2 - 124) = v1;
  *(v2 - 116) = 1024;
}

uint64_t OUTLINED_FUNCTION_6_33()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);

  return acc_auth_protocol_sizeofMessage(v3, v2, 0, 0);
}

BOOL __addU16NumberParameterToMsg(uint64_t a1, uint64_t a2, __int16 a3, CFNumberRef number)
{
  if (!number)
  {
    return 0;
  }

  valuePtr = -21846;
  return CFNumberGetValue(number, kCFNumberSInt16Type, &valuePtr) && iAP2MsgAddU16Param(a1, a2, a3, valuePtr);
}

BOOL __addEnumNumberParameterToMsg(uint64_t a1, uint64_t a2, __int16 a3, CFNumberRef number, uint64_t (*a5)(void))
{
  if (!number)
  {
    return 0;
  }

  valuePtr = -86;
  result = 0;
  if (CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr))
  {
    v9 = a5(valuePtr);
    if (iAP2MsgAddU8Param(a1, a2, a3, v9))
    {
      return 1;
    }
  }

  return result;
}

uint64_t iAP2MsgAddU16Param(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
{
  if (*(a1 + 32) - *(a1 + 24) + 6 <= *(a1 + 16))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    iAP2MsgInitParam(a1, v4, a3, 2, 6u, a2);
    *(v4 + 4) = __rev16(a4);
  }

  return v4;
}

uint64_t iAP2MsgInitParam(uint64_t result, _BYTE *a2, __int16 a3, int a4, unsigned int a5, uint64_t a6)
{
  BYTE1(v6) = BYTE1(a5);
  if (a6)
  {
    v7 = *(a6 + 1);
    v8 = _byteswap_ushort(*a6);
    if (a4 == 12)
    {
      v9 = 4;
    }

    else
    {
      v9 = a5;
    }

    *a6 = (v8 + v9) >> 8;
    *(a6 + 1) = v7 + v9;
  }

  *(result + 32) += a5;
  *a2 = BYTE1(a5);
  a2[1] = a5;
  a2[2] = HIBYTE(a3);
  a2[3] = a3;
  v10 = *(result + 24);
  if (v10)
  {
    v6 = a5 + (bswap32(*(v10 + 2)) >> 16);
  }

  v11 = 0;
  *(v10 + 2) = BYTE1(v6);
  v12 = *(result + 24);
  v13 = *(result + 16);
  if (v12 && v13 >= 6)
  {
    v11 = *(v12 + 3);
  }

  v14 = v11 + a5;
  v15 = v12 + 2;
  if (v13 <= 5)
  {
    v15 = 0;
  }

  *(v15 + 1) = v14;
  return result;
}

void OUTLINED_FUNCTION_52_0(int a1@<W8>)
{
  *(v5 - 130) = v3;
  *(v5 - 126) = v2;
  *(v5 - 124) = a1;
  *(v5 - 120) = v2;
  *(v5 - 118) = v1;
  *(v5 - 114) = v2;
  *(v5 - 112) = v4;
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return pthread_mutex_unlock((v0 + 208));
}

const void *OUTLINED_FUNCTION_52_3(void *key)
{

  return CFDictionaryGetValue(v1, key);
}

BOOL OUTLINED_FUNCTION_106()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_52_6(float a1)
{
  *(v3 - 112) = a1;
  *(v3 - 108) = v1;
  *(v3 - 100) = 1024;
  *(v3 - 98) = v2;
}

_BYTE *iAP2MsgAddU8Param(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  if (*(a1 + 32) - *(a1 + 24) + 5 <= *(a1 + 16))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    iAP2MsgInitParam(a1, v4, a3, 3, 5u, a2);
    v4[4] = a4;
  }

  return v4;
}

void OUTLINED_FUNCTION_21_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

CFNumberRef OUTLINED_FUNCTION_21_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char valuePtr)
{

  return CFNumberCreate(v11, kCFNumberSInt8Type, &valuePtr);
}

_BYTE *iAP2MsgAddCFU16ArrayParam(uint64_t a1, uint64_t a2, __int16 a3, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  valuePtr = -21846;
  Count = CFArrayGetCount(theArray);
  FreeParam = iAP2MsgGetFreeParam(a1);
  if (FreeParam)
  {
    iAP2MsgInitParam(a1, FreeParam, a3, 9, (2 * Count + 4) & 0xFFFE, a2);
    ParamValueData = iAP2MsgGetParamValueData(FreeParam);
    if (Count >= 1)
    {
      v11 = ParamValueData;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
        if (!CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &valuePtr))
        {
          break;
        }

        *v11++ = bswap32(valuePtr) >> 16;
        if (Count == ++v12)
        {
          return FreeParam;
        }
      }

      return 0;
    }
  }

  return FreeParam;
}

_BYTE *iAP2MsgAddCFStringParam(uint64_t a1, uint64_t a2, __int16 a3, CFStringRef theString)
{
  bufferSize = 0;
  if (!theString)
  {
    return 0;
  }

  v12.length = CFStringGetLength(theString);
  v12.location = 0;
  CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, 0, 0, &bufferSize);
  ++bufferSize;
  FreeParam = iAP2MsgGetFreeParam(a1);
  if (FreeParam && bufferSize <= *(a1 + 24) + *(a1 + 16) - *(a1 + 32) - 4)
  {
    iAP2MsgInitParam(a1, FreeParam, a3, 8, (bufferSize + 4), a2);
    ParamValueData = iAP2MsgGetParamValueData(FreeParam);
    CFStringGetCString(theString, ParamValueData, bufferSize, 0x8000100u);
  }

  return FreeParam;
}

uint64_t iAP2MsgGetFreeParam(uint64_t a1)
{
  if (*(a1 + 32) - *(a1 + 24) + 4 <= *(a1 + 16))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_53(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x18u);
}

BOOL OUTLINED_FUNCTION_11()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return iap2_sessionControl_sendOutgoingMessage(v0, (v0 + 15));
}

BOOL __addU8NumberParameterToMsg(uint64_t a1, uint64_t a2, __int16 a3, CFNumberRef number)
{
  if (!number)
  {
    return 0;
  }

  valuePtr = -86;
  return CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr) && iAP2MsgAddU8Param(a1, a2, a3, valuePtr);
}

uint64_t _convertRouteGuidanceStateTypeForFunc(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 7)
  {
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v2 = *(gLogObjects + 368);
    }

    else
    {
      v2 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _convertRouteGuidanceStateTypeForFunc_cold_2();
    }

    return -1;
  }

  return v1;
}

BOOL OUTLINED_FUNCTION_99()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

const void *OUTLINED_FUNCTION_61(void *key)
{

  return CFDictionaryGetValue(v1, key);
}

BOOL __addU64NumberParameterToMsg(uint64_t a1, __int16 a2, CFNumberRef number)
{
  if (!number)
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  return CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr) && iAP2MsgAddU64Param(a1, 0, a2, valuePtr);
}

uint64_t iAP2MsgAddU64Param(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4)
{
  if (*(a1 + 32) - *(a1 + 24) + 12 <= *(a1 + 16))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    iAP2MsgInitParam(a1, v4, a3, 0, 0xCu, a2);
    *(v4 + 4) = bswap64(a4);
  }

  return v4;
}

BOOL __addU32NumberParameterToMsg(uint64_t a1, uint64_t a2, __int16 a3, CFNumberRef number)
{
  if (!number)
  {
    return 0;
  }

  valuePtr = -1431655766;
  return CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr) && iAP2MsgAddU32Param(a1, a2, a3, valuePtr);
}

uint64_t iAP2MsgAddU32Param(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
{
  if (*(a1 + 32) - *(a1 + 24) + 8 <= *(a1 + 16))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    iAP2MsgInitParam(a1, v4, a3, 1, 8u, a2);
    *(v4 + 4) = bswap32(a4);
  }

  return v4;
}

BOOL OUTLINED_FUNCTION_67_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

__n128 OUTLINED_FUNCTION_67_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  result = a13;
  *(v40 - 256) = a13.n128_u32[0];
  *(v40 - 252) = a40;
  *(v40 - 244) = 2112;
  return result;
}

__n128 OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v14 - 144) = a11.n128_u32[0];
  *(v14 - 140) = v13;
  *(v14 - 132) = v11;
  *(v14 - 130) = v12;
  return result;
}

BOOL OUTLINED_FUNCTION_16(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_26_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_11_13(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

uint64_t OUTLINED_FUNCTION_11_14()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

void OUTLINED_FUNCTION_11_17(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

const char *OUTLINED_FUNCTION_11_18(unsigned int *a1, int a2)
{
  v3 = *a1;

  return t56_protocol_msgTypeString(a2);
}

uint64_t _convertDistaceUnitTypeForFunc(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 5)
  {
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v2 = *(gLogObjects + 368);
    }

    else
    {
      v2 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _convertDistaceUnitTypeForFunc_cold_2();
    }

    return -1;
  }

  return v1;
}

uint64_t iAP2MsgGetMsgID(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1 && *(result + 16) >= 6u)
    {
      return bswap32(*(v1 + 4)) >> 16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_26_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_14_8(void *a1, NSObject *a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, (v4 - 128), 0x12u);
}

void OUTLINED_FUNCTION_10_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 8u);
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t result)
{
  *(v1 - 140) = result;
  v2 = *(v1 - 132);
  return result;
}

void OUTLINED_FUNCTION_14_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  v4 = *(result + 48);
  return result;
}

uint64_t _sendOutgoingMessage(uint64_t *a1, uint64_t a2, int a3)
{
  if (a1 && a2 && *a1)
  {
    MsgID = iAP2MsgGetMsgID(a2);
    MsgLen = iAP2MsgGetMsgLen(a2);
    if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, MsgID))
    {
      v8 = a1[4];
      if (a3)
      {
        iAP2MsgSendControlAndCallbackOnAck(v8, a2);
      }

      else
      {
        iAP2MsgSendControl(v8, a2);
      }

      if (gLogObjects && gNumLogObjects >= 21)
      {
        v9 = *(gLogObjects + 160);
      }

      else
      {
        v9 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v10 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = a1[1];
        v18 = 67109634;
        v19 = MsgID;
        v20 = 1024;
        v21 = MsgLen;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Outgoing Message ID: 0x%04X (%d bytes) for endpoint %@", &v18, 0x18u);
      }

      return v10;
    }

    _sendOutgoingMessage_cold_1(MsgID, a1);
  }

  if (gLogObjects)
  {
    v13 = gNumLogObjects < 21;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v14 = *(gLogObjects + 160);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = iAP2MsgGetMsgID(a2);
    v16 = iAP2MsgGetMsgLen(a2);
    if (a1)
    {
      v17 = *a1;
      if (*a1)
      {
        v17 = a1[1];
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 67109634;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Failed to send, Outgoing Message ID: 0x%04X (%d bytes) for endpoint %@", &v18, 0x18u);
  }

  return 0;
}

uint64_t iap2_identification_isIdentifiedForOutgoingMessageID(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    result = 1;
    if ((a2 - 43520 > 5 || ((1 << a2) & 0x35) == 0) && (a2 > 5 || ((1 << a2) & 0x31) == 0) && (a2 - 7424 > 3 || a2 == 7425))
    {
      result = iap2_identification_getIdentificationInfo(v3);
      if (result)
      {
        v4 = result;
        if (iap2_accAuthentication_getState(v3) == 2 && iap2_identification_getState(v3) == 6)
        {
          result = *(v4 + 104);
          if (result)
          {
            result = CFSetContainsValue(result, a2);
            if (result)
            {
              kdebug_trace();
              return 1;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t iap2_identification_getIdentificationInfo(uint64_t a1)
{
  result = iap2_feature_getFeature(a1, 1u);
  if (result)
  {
    return *(iap2_feature_getFeature(a1, 1u) + 8);
  }

  return result;
}

uint64_t iAP2MsgGetMsgLen(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1 && *(result + 16) >= 6u)
    {
      return bswap32(*(v1 + 2)) >> 16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t iap2_identification_getState(uint64_t a1)
{
  result = iap2_feature_getFeature(a1, 1u);
  if (result)
  {
    return *iap2_feature_getFeature(a1, 1u);
  }

  return result;
}

unsigned int *iap2_accAuthentication_getState(unsigned int *result)
{
  if (result)
  {
    result = iap2_feature_getFeature(result, 0);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

void iAP2MsgSendControl(uint64_t a1, uint64_t a2)
{
  v4 = iAP2MsgCalcMessageLen(a2);
  v5 = *(a1 + 16);
  iAP2MsgPreSendCtlProcess();
  *(*(a2 + 24) + 2) = HIBYTE(v4);
  *(*(a2 + 24) + 3) = v4;
  if (v4)
  {
    *a2 = *(a2 + 24);
    *(a2 + 8) = v4;
    *(a2 + 12) = 0;
    *(a2 + 56) = 0;
    v6 = *(a1 + 24);

    __iAP2LinkDataSentCB(v6, a2);
  }
}

uint64_t iAP2MsgCalcMessageLen(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  NextParamWithError = (v2 + 6);
  v5 = v3 - (v2 + 6);
  if (v3 > v2 + 6)
  {
    v6 = (v2 + 6);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = v3 > NextParamWithError;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && v5 >= 4 && v5 >= __rev16(*v6))
  {
    LODWORD(v8) = 6;
    do
    {
      v8 = v8 + (bswap32(*NextParamWithError) >> 16);
      NextParamWithError = iAP2MsgGetNextParamWithError(a1, 0, NextParamWithError, 0);
    }

    while (NextParamWithError);
    v2 = *(a1 + 24);
    if (v2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v8 = 6;
  if (!v2)
  {
    return 0;
  }

LABEL_12:
  *(v2 + 2) = BYTE1(v8);
  *(*(a1 + 24) + 3) = v8;
  return v8;
}

unsigned __int16 *iAP2MsgGetNextParamWithError(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, _BYTE *a4)
{
  if (a2)
  {
    v4 = __rev16(*a2);
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = *(a1 + 24);
    if (v5 && *(a1 + 16) >= 6u)
    {
      v6 = bswap32(*(v5 + 2)) >> 16;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = MEMORY[0x18];
  }

  v7 = __rev16(*a3);
  if (!a4)
  {
    if (v7 < 4)
    {
      return 0;
    }

    goto LABEL_14;
  }

  *a4 = 0;
  if (v7 > 3)
  {
LABEL_14:
    v8 = (a3 + v7);
    v9 = *(a1 + 32);
    v13 = v9 >= a3 + v7;
    v10 = v9 - (a3 + v7);
    if (v13 && v10 >= 4 && ((v12 = __rev16(*v8), a2) ? (v13 = v8 >= (a2 + v4)) : (v13 = 0), v13 ? (v14 = 0) : (v14 = 1), v10 >= v12 && (v14 & 1) != 0))
    {
      if (v8 < v5 + v6)
      {
        return v8;
      }

      if ((_iAP2LogEnableMask & 4) != 0)
      {
        v15 = logObjectForModule_38();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          iAP2MsgGetNextParamWithError_cold_1(v6, v15);
        }
      }
    }

    else if ((_iAP2LogEnableMask & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v11 = *(gLogObjects + 152);
      }

      else
      {
        v11 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_bluetooth_copyNameForMacAddress_cold_1();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        iAP2MsgGetNextParamWithError_cold_3(v7, v4, v11);
      }
    }

    return 0;
  }

  v8 = 0;
  *a4 = 1;
  return v8;
}

BOOL iAP2MsgSendCtlDataWithSentCallback(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), int a8)
{
  SessionForService = iAP2LinkGetSessionForService(*(a1 + 24), 0);
  v17 = iAP2LinkRunLoopQueueSendDataWithSentCallback(a1, a2, a3, SessionForService, a4, a5, a6, a7, a8);
  if (!v17 && (_iAP2LogEnableMask & 1) != 0)
  {
    if (gLogObjects)
    {
      v18 = gNumLogObjects < 20;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v19 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v22 = a3;
      v23 = 1024;
      v24 = a8;
      v25 = 1024;
      v26 = SessionForService;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ERROR: Error sending message data !!!!!! dataLen=%u dataSentCBonACK=%d session=%u\n", buf, 0x14u);
    }
  }

  return v17;
}

uint64_t iAP2LinkGetSessionForService(uint64_t a1, int a2)
{
  if (a1 && (v2 = *(a1 + 420), *(a1 + 420)))
  {
    v3 = 0;
    v4 = (a1 + 441);
    v5 = (a1 + 441);
    do
    {
      v6 = *v5;
      v5 += 4;
      if (v6 == a2)
      {
        v3 = *(v4 - 1);
      }

      v4 = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t acc_endpoint_sendOutgoingData(uint64_t *a1, const __CFData *a2)
{
  if (!a1)
  {
    acc_endpoint_sendOutgoingData_cold_6(buf);
    return buf[0];
  }

  if (!*a1)
  {
    acc_endpoint_sendOutgoingData_cold_5(buf);
    return buf[0];
  }

  v40 = 0;
  if (acc_manager_isLockoutActiveForTransportType(*(a1 + 6), &v40))
  {
    v35 = logObjectForModule_4();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 6);
      v37 = v40;
      Length = CFDataGetLength(a2);
      v39 = a1[2];
      *buf = 67109890;
      *v42 = v36;
      *&v42[4] = 1024;
      *&v42[6] = v37;
      *v43 = 2048;
      *&v43[2] = Length;
      *v44 = 2112;
      *&v44[2] = v39;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Transport %{coreacc:ACCEndpoint_TransportType_t}d is locked out for %u more second(s), dropping %ld bytes of outgoing data for endpoint %@!", buf, 0x22u);
    }

    return 1;
  }

  else
  {
    v4 = CFHash(a1[2]);
    v5 = CFHash(a2);
    v6 = v5 ^ v4;
    v7 = &audioProductCerts_endpoint_publish_onceToken;
    if (acc_userDefaultsLogging_BOOLForKey(@"TransportSignpost"))
    {
      if (gLogSignpostObjects && gNumLogSignpostObjects >= 3)
      {
        v8 = *(gLogSignpostObjects + 16);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          acc_endpoint_sendOutgoingData_cold_1();
        }
      }

      if (v4 != v5 && v6 != -1 && os_signpost_enabled(v8))
      {
        v9 = a1[2];
        v10 = CFDataGetLength(a2);
        *buf = 138412546;
        *v42 = v9;
        *&v42[8] = 2048;
        *v43 = v10;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Endpoint SEND", "Send outgoing data! %@, %lu bytes", buf, 0x16u);
      }
    }

    if (acc_platform_packetLogging_isLogPacketDataAsMsg() || platform_systemInfo_isInternalBuild())
    {
      if (gLogObjects && gNumLogObjects >= 15)
      {
        v11 = *(gLogObjects + 112);
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
        v12 = CFDataGetLength(a2);
        v13 = v5;
        v14 = v4;
        v15 = v6;
        v16 = a1[2];
        v17 = *(a1 + 6);
        v18 = CFDataGetLength(a2);
        BytePtr = CFDataGetBytePtr(a2);
        *buf = 134219010;
        *v42 = v12;
        *&v42[8] = 2112;
        *v43 = v16;
        v6 = v15;
        v4 = v14;
        v5 = v13;
        v7 = &audioProductCerts_endpoint_publish_onceToken;
        *&v43[8] = 1024;
        *v44 = v17;
        *&v44[4] = 1040;
        *&v44[6] = v18;
        v45 = 2096;
        v46 = BytePtr;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sending %ld bytes of outgoing data for endpoint %@ (type:%{coreacc:ACCEndpoint_TransportType_t}d):\n%{coreacc:bytes}.*P", buf, 0x2Cu);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 15)
      {
        v20 = *(gLogObjects + 112);
      }

      else
      {
        v20 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v30 = CFDataGetLength(a2);
        v31 = a1[2];
        v32 = *(a1 + 6);
        v33 = CFDataGetLength(a2);
        v34 = CFDataGetBytePtr(a2);
        *buf = 134219010;
        *v42 = v30;
        *&v42[8] = 2112;
        *v43 = v31;
        *&v43[8] = 1024;
        *v44 = v32;
        v6 = v5 ^ v4;
        *&v44[4] = 1040;
        *&v44[6] = v33;
        v45 = 2096;
        v46 = v34;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Sending %ld bytes of outgoing data for endpoint %@ (type:%{coreacc:ACCEndpoint_TransportType_t}d):\n%{coreacc:bytes}.*P", buf, 0x2Cu);
      }
    }

    v21 = *a1;
    v22 = a1[2];
    acc_connection_sendDataOut();
    v24 = v23;
    if (acc_userDefaultsLogging_BOOLForKey(@"TransportSignpost"))
    {
      if (gLogSignpostObjects && *(v7 + 990) >= 3)
      {
        v25 = *(gLogSignpostObjects + 16);
      }

      else
      {
        v25 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          acc_endpoint_sendOutgoingData_cold_1();
        }
      }

      if (v4 != v5 && v6 != -1 && os_signpost_enabled(v25))
      {
        if (v24)
        {
          v26 = "SUCCESS";
        }

        else
        {
          v26 = "ERROR";
        }

        v27 = a1[2];
        v28 = CFDataGetLength(a2);
        *buf = 136315650;
        *v42 = v26;
        *&v42[8] = 2112;
        *v43 = v27;
        *&v43[8] = 2048;
        *v44 = v28;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v6, "Endpoint SEND", "%s handling send outgoing data! %@, %lu bytes", buf, 0x20u);
      }
    }
  }

  return v24;
}

BOOL acc_platform_packetLogging_isLogPacketDataAsMsg()
{
  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  return __PAIR64__(_logPacketToFile, _logPacketDataAsInfo) != 0;
}

uint64_t systemInfo_isInternalBuild()
{
  if (systemInfo_isInternalBuild_onceToken != -1)
  {
    systemInfo_isInternalBuild_cold_1();
  }

  return systemInfo_isInternalBuild_internalBuild;
}

void acc_connection_sendDataOut()
{
  OUTLINED_FUNCTION_57();
  if (v0)
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    pthread_rwlock_rdlock(&_gAccConnectionLock);
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 14;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_16_8();
        _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
      }
    }

    else
    {
      v12 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_79())
    {
      v15 = *v5;
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_14_3();
      _os_log_debug_impl(v16, v17, OS_LOG_TYPE_DEBUG, v18, v19, 0xCu);
    }

    v13 = v5[3];
    if (v13)
    {
      (*(v13 + 16))(v13, *v5, v4, v3);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v14 = *(gLogObjects + 104);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_16_8();
        _os_log_error_impl(v24, v25, v26, v27, v28, 0x12u);
      }

      if (OUTLINED_FUNCTION_79())
      {
        CFDataGetLength(v3);
        v29 = *v5;
        OUTLINED_FUNCTION_14_3();
        _os_log_debug_impl(v20, v21, OS_LOG_TYPE_DEBUG, v22, v23, 0x20u);
      }
    }

    pthread_rwlock_unlock(&_gAccConnectionLock);
  }

  OUTLINED_FUNCTION_56();
}

BOOL OUTLINED_FUNCTION_62_0()
{

  return acc_authInfo_isAuthenticated(v0 + 48, 6u);
}

void *OUTLINED_FUNCTION_54_0()
{

  return malloc_type_malloc(0x138uLL, 0x10B00402C7498C8uLL);
}

uint64_t iap2_endpoint_sendOutgoingData(uint64_t **a1, const UInt8 *a2, unsigned int a3)
{
  if (a1)
  {
    kdebug_trace();
    v6 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a2, a3, kCFAllocatorNull);
    v7 = acc_endpoint_sendOutgoingData(*a1, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    iap2_endpoint_sendOutgoingData_cold_1(&v9);
    return v9;
  }

  return v7;
}

uint64_t acc_manager_isLockoutActiveForTransportType(unsigned int a1, _DWORD *a2)
{
  pthread_rwlock_rdlock(&_gAccManagerLock);
  if (a1 > 0x10)
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 13;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v9 = *(gLogObjects + 96);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      acc_manager_isLockoutActiveForTransportType_cold_2(a1, v9);
    }
  }

  else
  {
    v4 = _MergedGlobals_0[a1 + 7];
    if (v4 && v4 > systemInfo_getCurrentUnixTime())
    {
      v5 = _MergedGlobals_0[a1 + 7];
      v6 = v5 - systemInfo_getCurrentUnixTime();
      v7 = 1;
      if (!a2)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_16:
    *a2 = v6;
  }

LABEL_17:
  pthread_rwlock_unlock(&_gAccManagerLock);
  return v7;
}

id acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

void __iAP2LinkDataSentCB(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (!v3)
    {
LABEL_18:
      iAP2MsgCleanup(a2);
      return;
    }

    if (*(a2 + 12) == v3)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v4 = *(gLogObjects + 152);
        }

        else
        {
          v4 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          MsgID = iAP2MsgGetMsgID(a2);
          v8 = *(a2 + 8);
          v9 = *(a2 + 12);
          v14 = 136316418;
          v15 = "__iAP2LinkDataSentCB";
          v16 = 1024;
          v17 = 159;
          v18 = 2080;
          *v19 = "";
          *&v19[8] = 1024;
          *&v19[10] = MsgID;
          v20 = 1024;
          v21 = v8;
          v22 = 1024;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d !!!!!! No bytes were sent! Skipping sending! !!!!!! msgID %s0x%04X ->toSend=%u ->lastToSend=%u\n", &v14, 0x2Eu);
        }
      }

      goto LABEL_18;
    }

    v5 = *(a1 + 176);
    *(a2 + 12) = v3;
    if (iAP2MsgSendCtlDataWithSentCallback(v5, *a2, v3, a2, __iAP2LinkDataSentOutCB, __iAP2LinkDataSentCB, __iAP2LinkDeleteContextCB, *(a2 + 56)))
    {
      *a2 += v3;
      *(a2 + 8) -= v3;
    }

    else
    {
      if ((_iAP2LogEnableMask & 2) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v6 = *(gLogObjects + 152);
        }

        else
        {
          v6 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v10 = *(a2 + 16);
          v14 = 136315906;
          v15 = "__iAP2LinkDataSentCB";
          v16 = 1024;
          v17 = 141;
          v18 = 1024;
          *v19 = v10;
          *&v19[4] = 2080;
          *&v19[6] = "Valid";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d iAP2MsgSendCtlDataWithSentCallback returned false - msgBufLen: %d msg: %s .", &v14, 0x22u);
        }
      }

      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v11 = *(gLogObjects + 152);
        }

        else
        {
          v11 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = iAP2MsgGetMsgID(a2);
          v13 = *(a2 + 8);
          v14 = 136316418;
          v15 = "__iAP2LinkDataSentCB";
          v16 = 1024;
          v17 = 147;
          v18 = 1024;
          *v19 = v3;
          *&v19[4] = 2080;
          *&v19[6] = "";
          v20 = 1024;
          v21 = v12;
          v22 = 1024;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Failed to queue up control session packet! reset tracking values, sendSize=%u msgID %s0x%04X ->toSend=%u\n", &v14, 0x2Eu);
        }
      }
    }
  }
}

uint64_t iAP2LinkCurPckChksumSize(uint64_t a1)
{
  if (*(a1 + 213) == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t iAP2LinkCurPckHdrSize(uint64_t a1)
{
  if (*(a1 + 213) == 2)
  {
    return 10;
  }

  else
  {
    return 9;
  }
}

uint64_t iAP2ListArrayAddItemAfter(unsigned __int8 *a1, unsigned int a2, void *__src)
{
  v3 = 255;
  if (a1 && __src)
  {
    if (*a1 >= a1[1])
    {
      return 255;
    }

    else
    {
      v3 = a1[4];
      if (v3 == 255)
      {
        iAP2ListArrayAddItemAfter_cold_1();
      }

      v6 = a1[2];
      v7 = a1[3];
      v8 = a1[5];
      v9 = a1 + 8;
      v10 = &a1[(v8 + 2) * a1[4] + 8];
      v11 = *v10;
      a1[4] = v11;
      if (v11 != 255)
      {
        v9[(v8 + 2) * v11 + 1] = -1;
      }

      *v10 = -1;
      memcpy(v10 + 2, __src, v8);
      if (a2 == 255)
      {
        if (v6 != 255)
        {
          v9[(a1[5] + 2) * v6 + 1] = v3;
          *v10 = v6;
        }

        a1[2] = v3;
      }

      else
      {
        v12 = a1[5] + 2;
        v13 = v12 * a2;
        v14 = v9[v13];
        if (v14 != 255)
        {
          v9[v12 * v9[v13] + 1] = v3;
        }

        *v10 = v14;
        v9[v13] = v3;
        v10[1] = a2;
      }

      if (v7 == a2)
      {
        a1[3] = v3;
      }

      ++*a1;
    }
  }

  return v3;
}

uint64_t iAP2LinkAddPacketAfter(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  iAP2PacketRetain(*a3);
  v6 = iAP2ListArrayAddItemAfter(a1, a2, a3);
  if (v6 == 255)
  {
    iAP2PacketRelease(*a3);
  }

  return v6;
}

uint64_t iAP2PacketRetain(uint64_t result)
{
  if (result)
  {
    ++*(result + 60);
  }

  return result;
}

uint64_t iAP2ListArrayGetLastItemIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 3);
  }

  else
  {
    return 255;
  }
}

uint64_t iAP2PacketGetPayloadLen(uint64_t a1)
{
  v2 = *a1;
  v3 = iAP2LinkCurPckHdrSize(*a1);
  v4 = iAP2LinkCurPckChksumSize(v2);
  v5 = *(a1 + 54);
  v6 = v5 >= v4 + v3;
  v7 = v5 - (v4 + v3);
  if (v7 == 0 || !v6)
  {
    LOWORD(v7) = 0;
  }

  return v7;
}

uint64_t *iAP2PacketRelease(uint64_t *a1)
{
  v1 = a1;
  if (a1)
  {
    if (!*(a1 + 60))
    {
      iAP2PacketRelease_cold_1();
    }

    v2 = *(a1 + 60) - 1;
    *(a1 + 60) = v2;
    if (!v2)
    {
      v3 = a1[1];
      v4 = a1[2];
      v5 = a1[4];
      v6 = *a1;
      v7 = (v4 != 0) & (*(a1 + 61) >> 11);
      if (v7 == 1)
      {
        a1[4] = 0;
        a1[1] = 0;
      }

      __iAP2PacketResetPacket(a1);
      if (*(v1 + 59) != 255)
      {
        MainTimer = iAP2LinkGetMainTimer(*v1);
        iAP2TimeCancelTimer(MainTimer, *(v1 + 59));
        *(v1 + 59) = -1;
      }

      v9 = 248;
      if ((*(v1 + 61) & 0x200) == 0)
      {
        v9 = 240;
      }

      iAP2BuffPoolReturnPacketBuffer(*(v6 + v9), v1);
      if (!v7)
      {
        return 0;
      }

      v4(v6, v3);
      v1 = 0;
      if (v5 && v3)
      {
        v5(v6, v3);
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *iAP2PacketCreateEmptySendPacket(uint64_t a1, unsigned int *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    MaxPayloadSize = iAP2LinkGetMaxPayloadSize(a1, 0);
    v6 = *a2;
    if (!*a2 || v6 >= MaxPayloadSize)
    {
      if (v6 > MaxPayloadSize)
      {
        *a2 = MaxPayloadSize;
      }

      v6 = MaxPayloadSize;
    }

    PacketBuffer = iAP2BuffPoolGetPacketBuffer(*(a1 + 248), v6);
    v2 = PacketBuffer;
    if (PacketBuffer)
    {
      v8 = *(PacketBuffer + 61);
      *(PacketBuffer + 59) = 511;
      PacketBuffer[63] = 0;
      *(PacketBuffer + 1) = 0;
      *(PacketBuffer + 2) = 0;
      *PacketBuffer = a1;
      *(PacketBuffer + 61) = v8 & 0xF5FF | 0x200;
      *(PacketBuffer + 4) = 0;
      __iAP2PacketResetPacket(PacketBuffer);
    }
  }

  return v2;
}

uint64_t iAP2LinkProcessSendBuff(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (iAP2ListArrayGetCount(*(result + 304)))
    {
LABEL_3:
      result = iAP2LinkSendWindowAvailable(v1);
      if (result)
      {
        iAP2FSMHandleEvent(*(v1 + 8), 0x12u);
        return 1;
      }
    }

    else
    {
      v2 = 0;
      while (v2 != 4)
      {
        if (iAP2ListArrayGetCount(*(v1 + 312 + 8 * v2++)))
        {
          if ((v2 - 1) <= 3)
          {
            goto LABEL_3;
          }

          return 0;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t iAP2LinkRunLoopGetResetEventMask(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = *(v1 + 92);
  *(v1 + 92) = 0;
  return result;
}

void iAP2FSMHandleEvent(uint64_t *a1, unsigned int a2)
{
  v2 = a2;
  v28 = a2;
  if (a1 && *(a1 + 9) > a2)
  {
    do
    {
      v4 = *a1;
      v5 = *a1 + 16 * *(a1 + 10);
      if (!*(v5 + 8))
      {
        goto LABEL_22;
      }

      v6 = *v5;
      while (*(v6 + 9) != v2)
      {
        v6 += 16;
        if (v6 >= *v5 + 16 * *(v5 + 8))
        {
          if (v4)
          {
LABEL_22:
            if (_iAP2LogEnableMask)
            {
              v13 = gLogObjects;
              v14 = gNumLogObjects;
              if (gLogObjects)
              {
                v15 = gNumLogObjects < 20;
              }

              else
              {
                v15 = 1;
              }

              if (v15)
              {
                v21 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v30 = v13;
                  v31 = 1024;
                  LODWORD(v32) = v14;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }
              }

              else
              {
                v21 = *(gLogObjects + 152);
              }

              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = "";
                if (a1[3])
                {
                  v23 = a1[3];
                }

                else
                {
                  v23 = "";
                }

                v24 = a1[5];
                if (v24)
                {
                  v22 = *(v24 + 8 * v28);
                }

                v25 = *(a1 + 10);
                v26 = a1[4];
                if (v26)
                {
                  v27 = *(v26 + 8 * *(a1 + 10));
                }

                else
                {
                  v27 = "";
                }

                *buf = 136316418;
                v30 = v23;
                v31 = 2048;
                v32 = a1;
                v33 = 1024;
                v34 = v28;
                v35 = 2080;
                v36 = v22;
                v37 = 1024;
                v38 = v25;
                v39 = 2080;
                v40 = v27;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ERROR: '%s'(%p): No handler for event(%d:%s) for state(%d:%s)", buf, 0x36u);
              }
            }

            LOBYTE(v9) = *(a1 + 9);
            goto LABEL_52;
          }

LABEL_54:
          iAP2FSMHandleEvent_cold_2();
        }
      }

      if (!v4)
      {
        goto LABEL_54;
      }

      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_22;
      }

      *(a1 + 11) = v2;
      v7(a1, &v28);
      v8 = *(v6 + 8);
      *(a1 + 10) = v8;
      if (v8 >= *(a1 + 8))
      {
        iAP2FSMHandleEvent_cold_1();
      }

      v2 = v28;
      v9 = *(a1 + 9);
    }

    while (v28 < v9);
LABEL_52:
    *(a1 + 11) = v9;
  }

  else if (_iAP2LogEnableMask)
  {
    v10 = gLogObjects;
    v11 = gNumLogObjects;
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 20;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        acc_nvmInfo_getPairingStatus_cold_1(v10, v11);
      }
    }

    else
    {
      v16 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "";
      if (a1)
      {
        if (a1[3])
        {
          v18 = a1[3];
        }

        else
        {
          v18 = "";
        }

        v19 = a1[5];
        if (v19)
        {
          v20 = *(v19 + 8 * v2);
        }

        else
        {
          v20 = "";
        }

        v17 = v18;
      }

      else
      {
        v20 = "";
      }

      *buf = 136315906;
      v30 = v17;
      v31 = 2048;
      v32 = a1;
      v33 = 1024;
      v34 = v2;
      v35 = 2080;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ERROR: '%s': NULL fsm(%p) pointer or invalid event(%d:%s)!", buf, 0x26u);
    }
  }
}

void iAP2LinkActionSendData(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkActionSendData_cold_2();
  }

  if (!a2)
  {
    iAP2LinkActionSendData_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);

  iAP2LinkProcessOutQueue(v2);
}

uint64_t iAP2ListArrayGetAvailSpace(_BYTE *a1)
{
  if (a1)
  {
    return (a1[1] - *a1);
  }

  else
  {
    return 0;
  }
}

unsigned int *iAP2TimeCancelTimer(unsigned int *result, char a2)
{
  if (result)
  {
    v2 = result;
    v3 = 0xAAAAAAAAAAAAAAAALL;
    BYTE4(v3) = a2;
    result = iAP2ListArrayFindItem(*(result + 6), &v3, _iAP2TimeCompareID);
    if (result != 255)
    {
      iAP2ListArrayDeleteItem(*(v2 + 48), result, 0);
      return _iAP2TimeCheckTimeouts(v2);
    }
  }

  return result;
}

BOOL iAP2LinkRunLoopQueueSendDataWithSentCallback(uint64_t a1, char *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), unsigned __int8 a9)
{
  if (a1 && (*(a1 + 44) & 1) == 0)
  {
    v10 = *(a1 + 24);

    return iAP2LinkQueueSendDataWithSentCallback(v10, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    if (_iAP2LogEnableMask)
    {
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
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v12 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "iAP2LinkRunLoopQueueSendDataWithSentCallback";
        v15 = 1024;
        v16 = 809;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d NULL linkRunLoop!", &v13, 0x12u);
      }
    }

    return 0;
  }
}

BOOL iAP2LinkQueueSendDataWithSentCallback(uint64_t a1, char *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), unsigned __int8 a9)
{
  v9 = a8;
  v10 = a3;
  if (!a1 || !a2 || !a3)
  {
    if (_iAP2LogEnableMask)
    {
      if (!gLogObjects || gNumLogObjects < 20)
      {
        v27 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v27 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v56 = "iAP2LinkQueueSendDataWithSentCallback";
        v57 = 1024;
        v58 = 4416;
        v59 = 1024;
        v60 = a1;
        v61 = 1024;
        v62 = a2;
        v63 = 1024;
        v64 = v10;
        v28 = "ERROR: %s:%d NULL link(%hx) or payload(%hx) or no payload (len=%u)!";
        v29 = v27;
        v30 = 36;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
      }
    }

LABEL_42:
    v32 = 0;
    v33 = 1;
    if (!v9)
    {
      return v32;
    }

    goto LABEL_43;
  }

  v14 = *(a1 + 420);
  if (!*(a1 + 420))
  {
    goto LABEL_79;
  }

  v16 = 0;
  v17 = (a1 + 440);
  v18 = (a1 + 440);
  do
  {
    v19 = *v18;
    v18 += 4;
    if (v19 == a4)
    {
      v16 = v17;
    }

    v17 = v18;
    --v14;
  }

  while (v14);
  if (!v16)
  {
LABEL_79:
    if (_iAP2LogEnableMask)
    {
      if (!gLogObjects || gNumLogObjects < 20)
      {
        v31 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v31 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v56 = "iAP2LinkQueueSendDataWithSentCallback";
        v57 = 1024;
        v58 = 4410;
        v59 = 1024;
        v60 = a4;
        v28 = "ERROR: %s:%d ERROR: Invalid session(%u)!";
        v29 = v31;
        v30 = 24;
        goto LABEL_41;
      }
    }

    goto LABEL_42;
  }

  v20 = *(a1 + 422);
  if (v20 >= *(a1 + 192))
  {
    v20 = *(a1 + 192);
  }

  if (*(a1 + 213) == 2)
  {
    v21 = -12;
  }

  else
  {
    v21 = -10;
  }

  v22 = v21 + v20;
  v23 = a3;
  if (v21 + v20 <= a3)
  {
    if (((a3 + v22 - 1) / v22) > iAP2ListArrayGetAvailSpace(*(a1 + 304 + 8 * v16[1])))
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v24 = *(gLogObjects + 152);
        }

        else
        {
          v24 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          Count = iAP2ListArrayGetCount(*(a1 + 304 + 8 * v16[1]));
          *buf = 136316930;
          v56 = "iAP2LinkQueueSendDataWithSentCallback";
          v57 = 1024;
          v58 = 4337;
          v59 = 1024;
          v60 = Count;
          v61 = 1024;
          v62 = a2;
          v63 = 1024;
          v64 = v10;
          v65 = 1024;
          v66 = a2;
          v67 = 1024;
          v68 = v22;
          v69 = 1024;
          v70 = a4;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d No space in session send queue! listCount=%u payload=%hx payloadLen=%u data=%hx dataLen=%u session=%u", buf, 0x36u);
        }
      }

      v32 = 0;
      v33 = 1;
      goto LABEL_75;
    }

    v23 = v22;
  }

  ACKPacket = iAP2PacketCreateACKPacket(a1, *(a1 + 190), *(a1 + 188), a2, v23, a4);
  v50 = ACKPacket == 0;
  v36 = a2;
  v37 = v10;
  v49 = v36;
  if (ACKPacket)
  {
    v38 = ACKPacket;
    v51 = a7;
    v39 = 0;
    v40 = v23;
    while (1)
    {
      v41 = v40;
      v40 = v23;
      if (v10 <= v41)
      {
        v42 = v37;
        if (a6)
        {
          iAP2PacketSetCallbackOnSentToTransport(v38, a6);
        }

        v32 = iAP2LinkQueueSendDataPacketInternal(a1, v38, a4, a5, v51, a8, a9);
      }

      else
      {
        v32 = iAP2LinkQueueSendDataPacketInternal(a1, v38, a4, a5, 0, 0, 0);
        v42 = v37;
      }

      iAP2PacketRelease(v38);
      v33 = 0;
      if (!v32)
      {
        break;
      }

      v39 += v40;
      v43 = v42 >= v39;
      v10 = v42 - v39;
      if (v10 == 0 || !v43)
      {
        break;
      }

      v36 += v40;
      if (v40 >= v10)
      {
        v23 = v10;
      }

      else
      {
        v23 = v40;
      }

      v38 = iAP2PacketCreateACKPacket(a1, *(a1 + 190), *(a1 + 188), v36, v23, a4);
      if (!v38)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
LABEL_61:
    if (_iAP2LogEnableMask)
    {
      v44 = gLogObjects;
      v45 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v46 = *(gLogObjects + 152);
      }

      else
      {
        v46 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v56 = v44;
          v57 = 1024;
          v58 = v45;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = iAP2ListArrayGetCount(*(a1 + 304 + 8 * v16[1]));
        *buf = 136316930;
        v56 = "iAP2LinkQueueSendDataWithSentCallback";
        v57 = 1024;
        v58 = 4399;
        v59 = 1024;
        v60 = v47;
        v61 = 1024;
        v62 = v49;
        v63 = 1024;
        v64 = v37;
        v65 = 1024;
        v66 = v36;
        v67 = 1024;
        v68 = v23;
        v69 = 1024;
        v70 = a4;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d ERROR: Ran out of Send Packets! listCount=%u payload=%hx payloadLen=%u data=%hx dataLen=%u session=%u", buf, 0x36u);
      }
    }

    v32 = 0;
    v33 = v50;
  }

LABEL_75:
  iAP2LinkSignalSendBuffCB(a1);
  v9 = a8;
  if (!a8)
  {
    return v32;
  }

LABEL_43:
  if (v33)
  {
    v9(a1, a5);
  }

  return v32;
}

uint64_t iAP2PacketCreate(uint64_t a1, char a2, char a3, char a4, const void *a5, int a6, char a7, int a8)
{
  LODWORD(__n) = a6;
  v16 = iAP2LinkCurPckHdrSize(a1);
  if (a6)
  {
    v17 = iAP2LinkCurPckChksumSize(a1);
    if (a8)
    {
LABEL_3:
      EmptySendPacket = iAP2PacketCreateEmptySendPacket(a1, &__n);
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a8)
    {
      goto LABEL_3;
    }
  }

  EmptySendPacket = iAP2PacketCreateEmptyRecvPacket(a1);
LABEL_6:
  v19 = EmptySendPacket;
  if (EmptySendPacket)
  {
    v20 = *(EmptySendPacket + 8);
    v21 = v17 + v16 + __n;
    *(EmptySendPacket + 27) = v21;
    *v20 = 23295;
    *(v20 + 2) = HIBYTE(v21);
    *(v20 + 3) = v21;
    *(v20 + 4) = a2;
    *(v20 + 5) = a3;
    *(v20 + 6) = a4;
    *(v20 + 7) = a7;
    ChecksumType = iAP2LinkGetChecksumType(a1);
    iAP2PacketSetHdrChecksum(v19, ChecksumType, 0);
    if (a8)
    {
      v23 = 512;
    }

    else
    {
      v23 = 0;
    }

    *(v19 + 61) = *(v19 + 61) & 0xFDFF | v23;
    *(v19 + 63) = 0;
    *(v19 + 44) = *(v19 + 54);
    if (a5 && __n)
    {
      memcpy(*(v19 + 72), a5, __n);
    }

    *(v19 + 52) = iAP2PacketGetPayloadLen(v19);
    *(v19 + 56) = -16777216;
    v24 = *(v19 + 61) & 0xF600 | 0x12;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *(v19 + 61) = v24;
  }

  return v19;
}

_BYTE *__iAP2BuffPoolGetSendPacket_typed(uint64_t a1, unsigned int a2, malloc_type_id_t a3)
{
  v5 = *(a1 + 8);
  MaxPayloadSize = iAP2LinkGetMaxPayloadSize(v5, 0);
  v7 = iAP2LinkCurPckHdrSize(v5);
  v8 = iAP2LinkCurPckChksumSize(v5);
  if (MaxPayloadSize >= a2)
  {
    MaxPayloadSize = a2;
  }

  v9 = malloc_type_calloc(1uLL, 0x50uLL, a3);
  if (!v9)
  {
    __iAP2BuffPoolGetSendPacket_typed_cold_2();
  }

  v10 = v9;
  v11 = MaxPayloadSize + v7 + v8;
  v9[60] = 0;
  v12 = malloc_type_calloc(1uLL, v11, a3);
  *(v10 + 8) = v12;
  if (!v12)
  {
    __iAP2BuffPoolGetSendPacket_typed_cold_1();
  }

  *(v10 + 10) = v11;
  *(v10 + 9) = &v12[v8 + 8];
  *(v10 + 61) = ((iAP2LinkGetChecksumType(v5) & 3) << 12) | *(v10 + 61) & 0xCFFF;
  return v10;
}

_BYTE *iAP2BuffPoolGetPacketBuffer(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *a1;
  if (v3 >= 3)
  {
    iAP2BuffPoolGetPacketBuffer_cold_1();
  }

  if (v3 == 2)
  {
    if (HIDWORD(a2))
    {
      return 0;
    }

    return __iAP2BuffPoolGetRecvPacket_typed(a1, a2, 0x107B2AA2uLL);
  }

  else
  {
    if (v3 != 1 || HIDWORD(a2) != 0)
    {
      return 0;
    }

    return __iAP2BuffPoolGetSendPacket_typed(a1, a2, 0xE487C116uLL);
  }
}

uint64_t iAP2LinkGetMaxPayloadSize(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 422);
    if (v2 >= *(result + 192))
    {
      v2 = *(result + 192);
    }

    if (a2 && *(a2 + 40) < v2)
    {
      v2 = *(a2 + 40);
    }

    if (*(result + 213) == 2)
    {
      v3 = -12;
    }

    else
    {
      v3 = -10;
    }

    return v3 + v2;
  }

  return result;
}

BOOL __iAP2PacketResetPacket(void *a1)
{
  v2 = *a1;
  v3 = a1[4];
  if (v3 && a1[1])
  {
    v3(*a1);
  }

  *(a1 + 50) = 0;
  *(a1 + 44) = 0;
  *(a1 + 61) = *(a1 + 62) << 8;
  v4 = a1[8];
  v5 = iAP2LinkCurPckHdrSize(v2);
  bzero(v4, v5);
  a1[1] = 0;
  a1[2] = 0;
  v6 = *(a1 + 61);
  a1[4] = 0;
  *(a1 + 61) = v6 & 0xF6FF;
  *(a1 + 58) = 0;
  result = iAP2LinkGetChecksumType(v2);
  *(a1 + 61) = *(a1 + 61) & 0xCBFF | ((result & 3) << 12);
  return result;
}

void iAP2PacketSetHdrChecksum(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 64);
  if (a2 == 1)
  {
    *(v3 + 8) = __rev16(a3);
    v7 = *(a1 + 61);
    if ((v7 & 0x3000) == 0)
    {
      ++*(a1 + 72);
    }

    v6 = v7 & 0xCFFF | 0x1000;
    goto LABEL_9;
  }

  if (!a2)
  {
    *(v3 + 8) = a3;
    v5 = *(a1 + 61);
    if ((v5 & 0x3000) == 0x1000)
    {
      --*(a1 + 72);
    }

    v6 = v5 & 0xCFFF;
LABEL_9:
    *(a1 + 61) = v6;
    return;
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 20;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v9 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "iAP2PacketSetHdrChecksum";
      v12 = 1024;
      v13 = 2102;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Unknown checksumType(%d)!", &v10, 0x18u);
    }
  }
}

BOOL iAP2LinkQueueSendDataPacketInternal(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), int a7)
{
  if (!a1 || !iAP2PacketIsDataPacket(a2))
  {
    if ((_iAP2LogEnableMask & 1) == 0)
    {
      goto LABEL_32;
    }

    if (!gLogObjects || gNumLogObjects < 20)
    {
      v26 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v26 = *(gLogObjects + 152);
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *v33 = 136315906;
    *&v33[4] = "iAP2LinkQueueSendDataPacketInternal";
    v34 = 1024;
    v35 = 4136;
    v36 = 1024;
    v37 = a1;
    v38 = 1024;
    v39 = a2;
    v27 = "ERROR: %s:%d NULL link(%hx) or invalid packet (%hx)!";
    v28 = v26;
    v29 = 30;
    goto LABEL_31;
  }

  v14 = *(a1 + 420);
  if (!*(a1 + 420))
  {
    goto LABEL_46;
  }

  v15 = 0;
  v16 = (a1 + 440);
  v17 = (a1 + 440);
  do
  {
    v18 = *v17;
    v17 += 4;
    if (v18 == a3)
    {
      v15 = v16;
    }

    v16 = v17;
    --v14;
  }

  while (v14);
  if (!v15)
  {
LABEL_46:
    if ((_iAP2LogEnableMask & 1) == 0)
    {
      goto LABEL_32;
    }

    if (!gLogObjects || gNumLogObjects < 20)
    {
      v30 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v30 = *(gLogObjects + 152);
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *v33 = 136315650;
    *&v33[4] = "iAP2LinkQueueSendDataPacketInternal";
    v34 = 1024;
    v35 = 4130;
    v36 = 1024;
    v37 = a3;
    v27 = "ERROR: %s:%d Invalid session(%u)!";
    v28 = v30;
    v29 = 24;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, v33, v29);
LABEL_32:
    if (a6)
    {
      a6(a1, a4);
    }

    return 0;
  }

  *(*(a2 + 64) + 7) = a3;
  *(a2 + 8) = a4;
  iAP2PacketSetCallbacks(a2, a5, a6, a7);
  v19 = v15[1];
  *v33 = a2;
  v20 = a1 + 304;
  v21 = *(a1 + 304 + 8 * v19);
  LastItemIndex = iAP2ListArrayGetLastItemIndex(v21);
  if (iAP2LinkAddPacketAfter(v21, LastItemIndex, v33) != 255)
  {
    return 1;
  }

  if ((_iAP2LogEnableMask & 1) == 0)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 20)
  {
    v31 = *(gLogObjects + 152);
  }

  else
  {
    v31 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  result = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    Count = iAP2ListArrayGetCount(*(v20 + 8 * v15[1]));
    *v33 = 136315906;
    *&v33[4] = "iAP2LinkQueueSendDataPacketInternal";
    v34 = 1024;
    v35 = 4125;
    v36 = 1024;
    v37 = Count;
    v38 = 1024;
    v39 = a2;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Could not queue packet to session send list! listCount=%u packet=%hx", v33, 0x1Eu);
    return 0;
  }

  return result;
}

uint64_t iAP2PacketSetCallbackOnSentToTransport(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

BOOL iAP2PacketIsDataPacket(uint64_t a1)
{
  if ((*(*(a1 + 64) + 4) & 0xF0) != 0x40)
  {
    return 0;
  }

  v1 = *(a1 + 54);
  return v1 > iAP2LinkCurPckHdrSize(*a1);
}

uint64_t iAP2PacketSetCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a1)
  {
    *(a1 + 16) = a2;
    *(a1 + 32) = a3;
    if (a4)
    {
      v4 = 2048;
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 61) = *(a1 + 61) & 0xF7FF | v4;
  }

  return 0;
}

void iAP2LinkRunLoopSignal(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (a2)
  {

    iAP2LinkRunLoopRunOnce(a1, a2, a3);
  }

  else
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(*(a1 + 16) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __iAP2LinkRunLoopSignal_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a1;
    block[5] = 0;
    block[6] = a3;
    dispatch_async(v5, block);
  }
}

void platform_navigation_deleteParams(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (*a1 > 1)
  {
    if (v2 != 2 && v2 != 3)
    {
      if (v2 != 4)
      {
        goto LABEL_13;
      }

LABEL_11:
      v4 = a1[1];
      if (v4)
      {
        CFRelease(v4);
      }

      goto LABEL_13;
    }

LABEL_9:
    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    goto LABEL_11;
  }

  if (v2 <= 1)
  {
    goto LABEL_9;
  }

LABEL_13:

  free(a1);
}

BOOL _iAP2LinkSendPacketCommon(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a1 && a2)
  {
    v8 = *(a2 + 64);
    ++*(a1 + 524);
    *(a1 + 516) += *(a2 + 54);
    if ((v8[4] & 0x40) != 0)
    {
      v9 = v8[6];
      v10 = *(a1 + 188);
      if (v9 != v10)
      {
        v8[6] = v10;
        LOBYTE(v9) = v10;
      }

      *(a1 + 191) = v9;
      *(a1 + 212) |= 8u;
    }

    CurTimeMs = iAP2TimeGetCurTimeMs();
    if (a3)
    {
      v12.i32[1] = 1;
      v12.i32[0] = CurTimeMs - *(a2 + 48);
      *(a1 + 596) = vadd_s32(v12, *(a1 + 596));
    }

    *(a2 + 48) = CurTimeMs;
    if ((v8[4] & 0x40) != 0)
    {
      iAP2TimeCancelTimer(*(a1 + 200), *(a1 + 194));
      *(a1 + 194) = -1;
    }

    if (a4)
    {
      iAP2LinkSendPacketWaitCB(a1, a2);
    }

    else
    {
      iAP2LinkSendPacketCB(a1, a2);
    }

    IsNoRetransmit = iAP2LinkIsNoRetransmit(a1 + 410);
    if (a3)
    {
      if (!IsNoRetransmit)
      {
        v15 = iAP2TimeCallbackAfter(*(a1 + 200), 12, *(a1 + 416));
        iAP2PacketAssignTimer(a2, v15);
      }

      return 1;
    }

    if (!IsNoRetransmit && iAP2PacketRequireACK(a2))
    {
      *v28 = a2;
      v17 = *(a1 + 296);
      LastItemIndex = iAP2ListArrayGetLastItemIndex(v17);
      if (iAP2LinkAddPacketAfter(v17, LastItemIndex, v28) == 255)
      {
        if (_iAP2LogEnableMask)
        {
          v21 = logObjectForModule_31();
          result = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            goto LABEL_31;
          }

          if (*(a1 + 184))
          {
            v22 = "Device";
          }

          else
          {
            v22 = "Accessory";
          }

          v23 = v8[5];
          v24 = v8[4];
          v25 = iAP2PacketName(a2);
          v26 = v8[6];
          v27 = *(a2 + 54);
          *v28 = 136317186;
          *&v28[4] = v22;
          v29 = 2080;
          *v30 = "_iAP2LinkSendPacketCommon";
          *&v30[8] = 1024;
          *v31 = 5457;
          *&v31[4] = 1024;
          v32 = v23;
          v33 = 1024;
          v34 = v24;
          v35 = 2080;
          v36 = v25;
          v37 = 1024;
          v38 = v26;
          v39 = 1024;
          v40 = v27;
          v41 = 1024;
          v42 = a4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%s:%d FAILED to add packet to sendPckList, sentSeq(%u) control=%xh(%s) ack=%u len=%u bWaitSend=%d", v28, 0x44u);
        }

        result = 0;
        goto LABEL_31;
      }

      v19 = iAP2TimeCallbackAfter(*(a1 + 200), 12, *(a1 + 416));
      iAP2PacketAssignTimer(a2, v19);
    }

    result = 1;
LABEL_31:
    *(a1 + 190) = v8[5];
    *(a1 + 212) |= 4u;
    return result;
  }

  if ((_iAP2LogEnableMask & 1) == 0)
  {
    return 0;
  }

  if (gLogObjects)
  {
    v13 = gNumLogObjects < 20;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v20 = *(gLogObjects + 152);
  }

  result = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *v28 = 136315906;
    *&v28[4] = "_iAP2LinkSendPacketCommon";
    v29 = 1024;
    *v30 = 5510;
    *&v30[4] = 1024;
    *&v30[6] = a1;
    *v31 = 1024;
    *&v31[2] = a2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Invalid link(%hx) or packet(%hx)", v28, 0x1Eu);
    return 0;
  }

  return result;
}

BOOL iAP2PacketRequireACK(uint64_t *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 190);
  v3 = *(v1 + 5);
  v4 = *(a1 + 27);
  result = 0;
  if (v4 > iAP2LinkCurPckHdrSize(*a1) && (v3 != v2 || *(v1 + 4) < 0))
  {
    v5 = *(v1 + 4);
    if (v5 >= 0x40 && (v5 & 0x20) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t iAP2TimeCallbackAfter(uint64_t a1, char a2, int a3)
{
  if (!a1)
  {
    return 255;
  }

  v12 = -1431655766;
  v6 = *(a1 + 60);
  v7 = (v6 + 1);
  if (v7 == v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = 1;
  }

  if (v7 == v6 + 1)
  {
    v9 = *(a1 + 60);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 60) = v8;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  __src = v13.tv_usec / 1000 + a3 + 1000 * LODWORD(v13.tv_sec);
  LOBYTE(v12) = v9;
  BYTE1(v12) = a2;
  iAP2ListArrayAddItemInOrder(*(a1 + 48), &__src, _iAP2TimeCompareTimeout);
  _iAP2TimeCheckTimeouts(a1);
  return v9;
}

uint64_t iAP2ListArrayAddItemInOrder(unsigned __int8 *a1, void *__src, uint64_t (*a3)(unsigned __int8 *, void *, uint64_t))
{
  result = 255;
  if (__src && a1 && a3)
  {
    v7 = a1[2];
    if (v7 == 255 || (v8 = a1[5], v9 = &a1[(v8 + 2) * a1[2] + 8], a3(v9 + 2, __src, v8) > 0))
    {
      v10 = -1;
    }

    else
    {
      do
      {
        v10 = v7;
        v7 = *v9;
        if (v7 == 255)
        {
          break;
        }

        v9 = &a1[(a1[5] + 2) * *v9 + 8];
      }

      while (a3(v9 + 2, __src, v8) < 1);
    }

    return iAP2ListArrayAddItemAfter(a1, v10, __src);
  }

  return result;
}

BOOL _iAP2TimeCallbackAfter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(*(iAP2TimeGetContext(a1) + 176) + 16);
    v7 = *(a1 + 24);
    v8 = v7;
    if (!v7)
    {
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
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v11 = &_os_log_default;
        v10 = &_os_log_default;
      }

      else
      {
        v11 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "iAP2 Link Timer doesn't exist, creating a new one...", buf, 2u);
      }

      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 24));
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = ___iAP2TimeCallbackAfter_block_invoke;
      handler[3] = &__block_descriptor_56_e5_v8__0l;
      handler[4] = v6;
      handler[5] = a3;
      handler[6] = a1;
      dispatch_source_set_event_handler(v8, handler);
    }

    if (gLogObjects)
    {
      v12 = gNumLogObjects < 20;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v13 = &_os_log_default;
    }

    else
    {
      v14 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = a2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Setting iAP2 Link Timer for %ums...", buf, 8u);
    }

    v15 = dispatch_time(0, 1000000 * a2);
    dispatch_source_set_timer(v8, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (!v7)
    {
      v16 = v8;
      *(a1 + 24) = v16;
      dispatch_resume(v16);
    }
  }

  return a1 != 0;
}

uint64_t iAP2TimeGetContext(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void iAP2LinkProcessOutQueue(uint64_t a1)
{
  if (!a1)
  {
    iAP2LinkProcessOutQueue_cold_1();
  }

  v2 = a1 + 304;
  v3 = (a1 + 440);
  v4 = 5;
  while (v4 && iAP2LinkSendWindowAvailable(a1))
  {
    v5 = 0;
    v6 = 0;
    --v4;
    while (iAP2LinkSendWindowAvailable(a1) && iAP2ListArrayGetAvailSpace(*(a1 + 296)))
    {
      v7 = *(a1 + 344);
      if (iAP2ListArrayGetCount(*(v2 + 8 * v7)))
      {
        FirstItemIndex = iAP2ListArrayGetFirstItemIndex(*(v2 + 8 * v7));
        v9 = iAP2ListArrayItemForIndex(*(v2 + 8 * v7), FirstItemIndex);
        if (v9)
        {
          v10 = *v9;
          if (*v9)
          {
            iAP2PacketRetain(*v9);
            v11 = *(v10 + 64);
            v12 = *(a1 + 420);
            if (!*(a1 + 420))
            {
              goto LABEL_19;
            }

            v13 = 0;
            v14 = v3;
            v15 = v3;
            do
            {
              v16 = *v15;
              v15 += 4;
              if (v16 == v11[7])
              {
                v13 = v14;
              }

              v14 = v15;
              --v12;
            }

            while (v12);
            if (v13 && (v13[3] & 1) != 0)
            {
              v17 = 0;
            }

            else
            {
LABEL_19:
              v17 = 1;
            }

            v11[5] = *(a1 + 190) + v17;
            v11[6] = *(a1 + 188);
            if (!_iAP2LinkSendPacketCommon(a1, v10, 0, 0))
            {
              break;
            }

            *(a1 + 532) += iAP2PacketGetPayloadLen(v10);
            ++*(a1 + 540);
            iAP2ListArrayDeleteItem(*(v2 + 8 * v7), FirstItemIndex, _DeletePckCB);
            v18 = *(v10 + 24);
            if (v18)
            {
              v18(a1, *(v10 + 8));
            }

            v19 = *(v10 + 16);
            if (v19 && (*(v10 + 61) & 0x800) == 0)
            {
              v19(a1, *(v10 + 8));
            }

            iAP2PacketRelease(v10);
          }
        }

        v6 |= iAP2ListArrayGetCount(*(v2 + 8 * v7)) != 0;
      }

      v20 = *(a1 + 344);
      if (v20 < 4)
      {
        v21 = v20 + 1;
      }

      else
      {
        v21 = 0;
      }

      *(a1 + 344) = v21;
      if (++v5 == 5)
      {
        break;
      }
    }

    if ((v6 & 1) == 0)
    {
      v22 = 0;
      goto LABEL_35;
    }
  }

  v22 = 1;
LABEL_35:
  if (!iAP2LinkSendWindowAvailable(a1))
  {
    iAP2LinkEventNotify(a1, 4, 0);
  }

  if (v22)
  {

    iAP2LinkSignalSendBuffCB(a1);
  }
}

unsigned int *iAP2PacketAssignTimer(unsigned int *result, int a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 59);
    if (v4 != 255 && v4 != a2)
    {
      MainTimer = iAP2LinkGetMainTimer(*result);
      result = iAP2TimeCancelTimer(MainTimer, *(v3 + 59));
    }

    *(v3 + 59) = v2;
  }

  return result;
}

_BYTE *iAP2ListArrayDeleteItem(_BYTE *result, unsigned int a2, uint64_t (*a3)(unsigned __int8 *))
{
  if (result)
  {
    v3 = a2;
    if (a2 != 255)
    {
      v4 = result;
      v5 = *result;
      if (*result)
      {
        v6 = result[2];
        v7 = result + 8;
        v8 = result[5] + 2;
        v9 = &result[v8 * a2 + 8];
        v10 = *v9;
        v11 = v9[1];
        if (result[3] == a2)
        {
          result[3] = v11;
        }

        if (v6 == a2)
        {
          result[2] = v10;
        }

        v12 = result[4];
        if (v11 != 255)
        {
          v7[v8 * v11] = v10;
        }

        if (v10 != 255)
        {
          v7[v8 * v10 + 1] = v11;
        }

        *result = v5 - 1;
        if (a3)
        {
          result = a3(v9 + 2);
        }

        if (v12 != 255)
        {
          v7[(v4[5] + 2) * v12 + 1] = v3;
        }

        *v9 = v12;
        v4[4] = v3;
      }
    }
  }

  return result;
}

unsigned __int8 *iAP2ListArrayGetCount(unsigned __int8 *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t iAP2ListArrayFindItem(_BYTE *a1, uint64_t a2, uint64_t (*a3)(unsigned __int8 *, uint64_t, uint64_t))
{
  LOBYTE(v3) = -1;
  if (a2 && a1 && a3 && *a1 && a1[2] != 255)
  {
    v7 = a1[5];
    v3 = a1[2];
    do
    {
      v8 = &a1[(a1[5] + 2) * v3 + 8];
      if (!a3(v8 + 2, a2, v7))
      {
        break;
      }

      v3 = *v8;
    }

    while (v3 != 255);
  }

  return v3;
}

BOOL iAP2LinkIsNoRetransmit(uint64_t a1)
{
  v2 = (a1 + 6);
  if (!*(a1 + 6) && !*(a1 + 8) && !*(a1 + 2) && !*(a1 + 3))
  {
    return 1;
  }

  if ((_iAP2LogEnableMask & 4) == 0)
  {
    return 0;
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 20;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v5 = *(gLogObjects + 152);
  }

  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    iAP2LinkIsNoRetransmit_cold_2(v2, a1);
    return 0;
  }

  return result;
}

uint64_t *_DeletePckCB(uint64_t *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return iAP2PacketRelease(result);
    }
  }

  return result;
}

uint64_t __iAP2LinkDataSentOutCB(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 64);
    if (v2)
    {
      return v2(a2, result);
    }
  }

  return result;
}

uint64_t iAP2LinkRunLoopRunOnce(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 44))
  {
    return 0;
  }

  ResetEventMask = iAP2LinkRunLoopGetResetEventMask(result);
  v7 = *(v3 + 24);
  if (!v7)
  {
    iAP2LinkRunLoopRunOnce_cold_2();
  }

  if (ResetEventMask)
  {
    iAP2LinkAttached(v7);
    if ((ResetEventMask & 2) == 0)
    {
LABEL_7:
      if ((ResetEventMask & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((ResetEventMask & 2) == 0)
  {
    goto LABEL_7;
  }

  iAP2LinkDetached(*(v3 + 24));
  if ((ResetEventMask & 4) == 0)
  {
LABEL_8:
    if ((ResetEventMask & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_13:
  iAP2LinkHandleSuspend(*(v3 + 24));
  if ((ResetEventMask & 8) == 0)
  {
LABEL_9:
    if ((ResetEventMask & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

LABEL_14:
  iAP2LinkHandleResume(*(v3 + 24));
  if ((ResetEventMask & 0x1000) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  if (a3)
  {
    v8 = *a3;
    *a3 = v8 & 0x7F;
    iAP2LinkRenegotiate(*(v3 + 24), a3, v8 >> 7);
  }

  else if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v9 = *(gLogObjects + 152);
    }

    else
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ERROR: syn == NULL!", v14, 2u);
    }
  }

LABEL_25:
  if (a2)
  {
    iAP2LinkHandleReadyPacket(*(v3 + 24), a2);
    iAP2PacketRelease(a2);
  }

  if ((ResetEventMask & 0x1F0) == 0)
  {
    goto LABEL_33;
  }

  CurTimeMs = iAP2TimeGetCurTimeMs();
  if ((ResetEventMask & 0x40) != 0)
  {
    iAP2LinkHandleTimeout(*(v3 + 24), CurTimeMs, 0x1Au);
    if ((ResetEventMask & 0x10) == 0)
    {
LABEL_30:
      if ((ResetEventMask & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }
  }

  else if ((ResetEventMask & 0x10) == 0)
  {
    goto LABEL_30;
  }

  iAP2LinkHandleTimeout(*(v3 + 24), CurTimeMs, 0xCu);
  if ((ResetEventMask & 0x20) == 0)
  {
LABEL_31:
    if ((ResetEventMask & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_42:
  iAP2LinkHandleTimeout(*(v3 + 24), CurTimeMs, 0xDu);
  if ((ResetEventMask & 0x80) != 0)
  {
LABEL_32:
    iAP2LinkHandleTimeout(*(v3 + 24), CurTimeMs, 0xBu);
  }

LABEL_33:
  iAP2LinkProcessSendBuff(*(v3 + 24));
  v11 = 0;
  do
  {
    SessSendPckListCount = iAP2LinkGetSessSendPckListCount(*(v3 + 24), v11);
    v13 = SessSendPckListCount == 0;
    result = SessSendPckListCount != 0;
    v13 = !v13 || v11++ == 4;
  }

  while (!v13);
  return result;
}

uint64_t iAP2MsgCleanup(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t iAP2PacketGenerateBuffer(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 54);
    v3 = *(a1 + 64);
    ChecksumType = iAP2LinkGetChecksumType(*a1);
    *v3 = 23295;
    *(v3 + 2) = BYTE1(v2);
    *(v3 + 3) = v2;
    v5 = *(a1 + 44);
    if (v5 != *(a1 + 54))
    {
      iAP2PacketGenerateBuffer_cold_1();
    }

    if (v5 >= v2)
    {
      v6 = ChecksumType;
      v7 = *(a1 + 72);
      PayloadLen = iAP2PacketGetPayloadLen(a1);
      v9 = iAP2PacketCalcChecksum(*(a1 + 64), 8u, v6);
      iAP2PacketSetHdrChecksum(a1, v6, v9);
      if (v7)
      {
        if (PayloadLen)
        {
          v10 = iAP2PacketCalcChecksum(v7, PayloadLen, v6);
          *(a1 + 52) = PayloadLen;
          iAP2PacketSetPayloadChecksum(a1, v10);
        }
      }
    }

    return *(a1 + 64);
  }

  else
  {
    if (_iAP2LogEnableMask)
    {
      if (gLogObjects)
      {
        v12 = gNumLogObjects < 20;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
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

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315394;
        v15 = "iAP2PacketGenerateBuffer";
        v16 = 1024;
        v17 = 1678;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d NULL packet pointer!", &v14, 0x12u);
      }
    }

    return 0;
  }
}

uint64_t iAP2LinkSendPacketCB(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = *(result + 176);
      if (v3)
      {
        v4 = *(v3 + 16);
        if (v4)
        {
          Buffer = iAP2PacketGenerateBuffer(a2);
          v6 = *(a2 + 54);
          acc_platform_packetLogging_logiAP2Packet(v4, a2, 0);

          return iap2_endpoint_sendOutgoingData(v4, Buffer, v6);
        }
      }
    }
  }

  return result;
}

uint64_t iAP2PacketCalcChecksum(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v3 = a2;
  v4 = a1;
  if (!a1 || !a2)
  {
    if ((_iAP2LogEnableMask & 1) == 0)
    {
      goto LABEL_35;
    }

    if (!gLogObjects || gNumLogObjects < 20)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v18 = *(gLogObjects + 152);
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v23 = 136315906;
    v24 = "iAP2PacketCalcChecksum";
    v25 = 1024;
    v26 = 2028;
    v27 = 1024;
    v28 = v4;
    v29 = 1024;
    v30 = v3;
    v19 = "ERROR: %s:%d NULL buffer(%hx) pointer or nothing to copy (len=%u)!";
    v20 = v18;
    v21 = 30;
    goto LABEL_34;
  }

  if (!a3)
  {
    v14 = 0;
    v15 = a2;
    do
    {
      v16 = *v4++;
      v14 += v16;
      --v15;
    }

    while (v15);
    LOWORD(v12) = -v14;
    return v12;
  }

  if (a3 != 1)
  {
    if ((_iAP2LogEnableMask & 1) == 0)
    {
      goto LABEL_35;
    }

    if (gLogObjects && gNumLogObjects >= 20)
    {
      v17 = *(gLogObjects + 152);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v23 = 136315650;
    v24 = "iAP2PacketCalcChecksum";
    v25 = 1024;
    v26 = 2020;
    v27 = 1024;
    v28 = a3;
    v19 = "ERROR: %s:%d Unknown checksumType(%d)!";
    v20 = v17;
    v21 = 24;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v23, v21);
LABEL_35:
    LOWORD(v12) = 0;
    return v12;
  }

  LOWORD(v6) = 255;
  LOWORD(v7) = 255;
  do
  {
    if (v3 >= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = v3;
    }

    v9 = v8;
    v10 = v4;
    do
    {
      --v9;
      v11 = *v10++;
      LOWORD(v7) = v7 + v11;
      LOWORD(v6) = v7 + v6;
    }

    while (v9);
    v4 += v8;
    v7 = BYTE1(v7) + v7;
    v6 = BYTE1(v6) + v6;
    v3 -= v8;
  }

  while (v3);
  return -((257 * v6) & 0x3FF00 | ((v7 >> 8) + v7));
}

void iAP2PacketSetPayloadChecksum(uint64_t a1, __int16 a2)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 52);
  v5 = (*(a1 + 61) >> 12) & 3;
  if (v5 == 1)
  {
    *(v3 + v4) = __rev16(a2);
    goto LABEL_5;
  }

  if (!v5)
  {
    *(v3 + v4) = a2;
LABEL_5:
    *(a1 + 56) = a2;
    return;
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 20;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v7 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (*(a1 + 61) >> 12) & 3;
      v9 = 136315650;
      v10 = "iAP2PacketSetPayloadChecksum";
      v11 = 1024;
      v12 = 2175;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Unknown checksumType(%d)!", &v9, 0x18u);
    }
  }
}

void acc_platform_packetLogging_logiAP2Packet(uint64_t *a1, uint64_t a2, int a3)
{
  context = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v6 = objc_alloc_init(NSDate);
    v7 = __referenceDate;
    __referenceDate = v6;
  }

  v8 = +[NSDate date];
  TransportTypeString = acc_endpoint_getTransportTypeString(*a1);
  PayloadLen = iAP2PacketGetPayloadLen(a2);
  v11 = *(a2 + 64);
  v42 = v8;
  [v8 timeIntervalSinceDate:__referenceDate];
  *&v12 = v12;
  v13 = *&v12;
  v41 = a1[1];
  if (TransportTypeString)
  {
    v14 = TransportTypeString;
  }

  else
  {
    v14 = "unknown";
  }

  if (a3)
  {
    v15 = @"Acc";
  }

  else
  {
    v15 = @"iPod";
  }

  v16 = *(a2 + 54);
  v17 = v11[4];
  v18 = v11[5];
  v19 = v11[6];
  v20 = v11[7];
  HdrChecksum = iAP2PacketGetHdrChecksum(a2);
  v22 = [NSString stringWithFormat:@"LOG %.6f; %@; %s; %@%@; len=0x%04x; control=0x%02x; seq=0x%02x; ack=0x%02x; session=0x%02x; hdrChk=0x%04x; payload(len=%d chk=0x%04x)=", *&v13, v41, v14, v15, &stru_10022D360, v16, v17, v18, v19, v20, HdrChecksum, PayloadLen, iAP2PacketGetPayloadChecksum(a2)];;
  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    v23 = "";
    goto LABEL_19;
  }

  v23 = "";
  if (!_logPacketDataSizeLimit)
  {
LABEL_19:
    v24 = PayloadLen;
    goto LABEL_20;
  }

  v24 = PayloadLen;
  if (_logPacketDataSizeLimit < PayloadLen)
  {
    if (_logPacketDataSizeLimit)
    {
      v24 = _logPacketDataSizeLimit;
    }

    else
    {
      v24 = 0x10000;
    }

    v23 = "...";
  }

LABEL_20:
  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v25 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v25 = &_os_log_default;
      v29 = &_os_log_default;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 72);
      *buf = 138544130;
      v45 = v22;
      v46 = 1040;
      v47 = v24;
      v48 = 2098;
      v49 = v30;
      v50 = 2080;
      v51 = v23;
      v31 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v32 = v25;
      v33 = OS_LOG_TYPE_DEFAULT;
LABEL_45:
      _os_log_impl(&_mh_execute_header, v32, v33, v31, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v27 = gNumLogObjects <= 21;
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    if (isInternalBuild)
    {
      if (v28)
      {
        v25 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v25 = &_os_log_default;
        v34 = &_os_log_default;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v35 = *(a2 + 72);
        *buf = 138413058;
        v45 = v22;
        v46 = 1040;
        v47 = v24;
        v48 = 2096;
        v49 = v35;
        v50 = 2080;
        v51 = v23;
        v31 = "%@<%{coreacc:bytes}.*P> %s";
        v32 = v25;
        v33 = OS_LOG_TYPE_INFO;
        goto LABEL_45;
      }
    }

    else
    {
      if (v28)
      {
        v25 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v25 = &_os_log_default;
        v36 = &_os_log_default;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a2 + 72);
        *buf = 138413058;
        v45 = v22;
        v46 = 1040;
        v47 = v24;
        v48 = 2096;
        v49 = v40;
        v50 = 2080;
        v51 = v23;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v37 = getLogWriter();
    v38 = v37;
    if (PayloadLen)
    {
      v39 = [NSData dataWithBytes:*(a2 + 72) length:PayloadLen];
      [v38 log:v22 data:v39 limit:v24];
    }

    else
    {
      [v37 log:v22 data:0 limit:v24];
    }
  }

  objc_autoreleasePoolPop(context);
}

uint64_t acc_endpoint_getTransportTypeString(uint64_t a1)
{
  result = kACCEndpoint_TransportType_Strings[18];
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3 <= 0x10)
    {
      return kACCEndpoint_TransportType_Strings[v3];
    }
  }

  return result;
}

uint64_t iAP2PacketGetChecksum(unsigned __int16 *a1, int a2)
{
  if (a2 == 1)
  {
    return bswap32(*a1) >> 16;
  }

  if (!a2)
  {
    return *a1;
  }

  if ((_iAP2LogEnableMask & 1) == 0)
  {
    return 0;
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 20;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v5 = *(gLogObjects + 152);
  }

  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v6 = 136315650;
    v7 = "iAP2PacketGetChecksum";
    v8 = 1024;
    v9 = 2247;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Unknown checksumType(%d)!", &v6, 0x18u);
    return 0;
  }

  return result;
}

BOOL acc_manager_processIncomingDataForEndpointWithUUID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  v5[1] = 0;
  v6 = 0;
  v5[0] = a2;
  acc_manager_callbackForEndpoint(a1, _acc_manager_processIncomingDataForEndpointWithUUID, v5, 0);
  return v6 != 0;
}

uint64_t _acc_manager_processIncomingDataForEndpointWithUUID(uint64_t a1, void *a2)
{
  if (*a2)
  {
    a2[2] = acc_endpoint_processIncomingData();
  }

  return 0;
}

void OUTLINED_FUNCTION_47(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, v10, a5, a6, &a9, 0x20u);
}

BOOL OUTLINED_FUNCTION_47_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL acc_endpoint_isTransportRestricted(unsigned int *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *a1;
  return !v2 || acc_connection_getSupervisedTransportsRestricted(v2) && acc_policies_isTransportSupervised(a1[6], *(*a1 + 8));
}

uint64_t acc_connection_getSupervisedTransportsRestricted(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 136);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void OUTLINED_FUNCTION_34_0(uint64_t a1@<X8>)
{
  *(v5 - 130) = v2;
  *(v5 - 126) = 2048;
  *(v5 - 124) = v4;
  *(v5 - 116) = 2048;
  *(v5 - 114) = v3;
  *(v5 - 106) = 2112;
  *(v5 - 104) = a1;
  *(v5 - 96) = v1;
  *(v5 - 94) = *(v5 - 164);
}

void *OUTLINED_FUNCTION_34_1(size_t a1)
{

  return malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
}

BOOL OUTLINED_FUNCTION_75()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_34_6()
{
  v3 = *(v0 + 8);
  v4 = *(v1 + 3928);
  v5 = *(v2 + 3936);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_2_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_32(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_4_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_4_14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_4_16(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 128) = a2;
  *(v2 + 4) = a1;
  *(v3 - 116) = 2112;
}

void OUTLINED_FUNCTION_4_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

CFStringRef OUTLINED_FUNCTION_4_22(char *cStr)
{

  return CFStringCreateWithCString(v1, cStr, 0x8000100u);
}

void OUTLINED_FUNCTION_4_24(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_error_impl(a1, v15, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void OUTLINED_FUNCTION_4_28(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4_30(float a1)
{
  *(v3 - 144) = a1;
  v4 = v3 - 144;
  *(v4 + 4) = v1;
  *(v3 - 132) = 1024;
  *(v4 + 14) = v2;
}

void OUTLINED_FUNCTION_4_36(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

BOOL acc_protocolRouter_routeIncomingData(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    switch(*(a1 + 28))
    {
      case 3:
        if (platform_iapd_bridge_accessory_processIncomingData(a1, a2))
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      case 4:
        kdebug_trace();
        v26 = OUTLINED_FUNCTION_5_16();
        if ((iap2_endpoint_processIncomingData(v26, v27) & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 5:
      case 7:
        if ((platform_externalAccessory_handleIncomingEADataFromAccessoryForEndpointUUID(*(a1 + 16), a2) & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 8:
        v8 = OUTLINED_FUNCTION_5_16();
        if (!oobPairing_endpoint_processIncomingData(v8, v9))
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 0xA:
        v12 = OUTLINED_FUNCTION_5_16();
        if ((accAuthProtocol_endpoint_processIncomingData(v12, v13) & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 0xB:
        v24 = OUTLINED_FUNCTION_5_16();
        if ((configStream_endpoint_processIncomingData(v24) & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 0xD:
        v25 = OUTLINED_FUNCTION_5_16();
        if ((audioProductCerts_endpoint_processIncomingData(v25) & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 0xE:
        v30 = OUTLINED_FUNCTION_5_16();
        if (mfi4Auth_endpoint_processIncomingData(v30, v31))
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      case 0xF:
        v28 = OUTLINED_FUNCTION_5_16();
        if ((accSNTPTimeSync_endpoint_processIncomingData(v28, v29) & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 0x10:
        if (!platform_systemInfo_supportsQiAuth())
        {
          goto LABEL_38;
        }

        v6 = OUTLINED_FUNCTION_5_16();
        if (!qiAuth_endpoint_processIncomingData(v6, v7))
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 0x11:
        v14 = OUTLINED_FUNCTION_5_16();
        if ((t56_endpoint_processIncomingData(v14, v15) & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 0x12:
        v10 = OUTLINED_FUNCTION_5_16();
        if ((genericMFi_endpoint_processIncomingData(v10, v11) & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_35:
        result = 1;
        break;
      default:
        OUTLINED_FUNCTION_7_9();
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = v3 < 17;
        }

        if (v17)
        {
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_3_10();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v18, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v20, v21, v22, v23, v54);
          }
        }

        else
        {
          v32 = *(v2 + 128);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v33 = *(a1 + 28);
          OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_10_5(v34, v35, v36, v37, v38);
        }

LABEL_38:
        if (gLogObjects && gNumLogObjects >= 17)
        {
          v39 = *(gLogObjects + 128);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_21();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, v51, v52, v53, 0);
        }

        result = OUTLINED_FUNCTION_21();
        if (result)
        {
          v40 = *(a1 + 16);
          v41 = *(a1 + 28);
          OUTLINED_FUNCTION_4_17();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v42, v43, "Error routing incoming data for endpoint UUID: %@ with protocol: %{coreacc:ACCEndpoint_Protocol_t}d!", v44, v45, v46, v47, v54);
          result = 0;
        }

        break;
    }
  }

  return result;
}

uint64_t iap2_endpoint_processIncomingData(uint64_t result, CFTypeRef cf)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (cf)
    {
      if (*(v3 + 32))
      {
        CFRetain(cf);
        v4 = *(v3 + 24);
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 0x40000000;
        v5[2] = __iap2_endpoint_processIncomingData_block_invoke;
        v5[3] = &__block_descriptor_tmp_6_5;
        v5[4] = v3;
        v5[5] = cf;
        dispatch_async(v4, v5);
        return 1;
      }
    }
  }

  return result;
}

void __iap2_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  v84 = *(*(*(a1 + 32) + 32) + 24);
  Length = CFDataGetLength(*(a1 + 40));
  OUTLINED_FUNCTION_5_34();
  if (Length)
  {
    v4 = 0;
    *&v3 = 134218240;
    v83 = v3;
    v5 = Length;
    do
    {
      if (!*(*(a1 + 32) + 104))
      {
        *(*(a1 + 32) + 104) = iAP2PacketCreateEmptyRecvPacket(v84);
        if (!*(*(a1 + 32) + 104))
        {
          break;
        }
      }

      if (!gLogObjects || gNumLogObjects < 19)
      {
        v7 = OUTLINED_FUNCTION_11();
        if (v7)
        {
          OUTLINED_FUNCTION_6_36(v7, v8, v9, v10, v11, v12, v13, v14, v83);
          OUTLINED_FUNCTION_2_43();
          OUTLINED_FUNCTION_10_6();
          _os_log_error_impl(v15, v16, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v18, 0x12u);
        }
      }

      else
      {
        v19 = *(gLogObjects + 144);
      }

      if (OUTLINED_FUNCTION_79())
      {
        OUTLINED_FUNCTION_3_37();
        OUTLINED_FUNCTION_76_3();
        _os_log_debug_impl(v55, v56, v57, "Calling iAP2PacketParseBuffer, dataLength: %u, numBytesRemaining: %u, byteIndex: %u", v58, 0x14u);
      }

      v20 = &CFDataGetBytePtr(*(a1 + 40))[v4];
      v21 = *(*(a1 + 32) + 104);
      MaxRecvPacketSize = iAP2LinkGetMaxRecvPacketSize(v84);
      v23 = iAP2PacketParseBuffer(v20, v5, v21, MaxRecvPacketSize, 0, 0, 0, 2);
      if (!v23)
      {
        break;
      }

      v24 = v23;
      if (gLogObjects && gNumLogObjects >= 19)
      {
        v25 = *(gLogObjects + 144);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_11();
        if (v26)
        {
          OUTLINED_FUNCTION_6_36(v26, v27, v28, v29, v30, v31, v32, v33, v83);
          OUTLINED_FUNCTION_10_6();
          _os_log_error_impl(v63, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v66, 0x12u);
        }
      }

      v5 -= v24;
      v4 += v24;
      if (OUTLINED_FUNCTION_79())
      {
        OUTLINED_FUNCTION_3_37();
        OUTLINED_FUNCTION_76_3();
        _os_log_debug_impl(v59, v60, v61, "iAP2PacketParseBuffer finished, numBytesRead: %u, numBytesRemaining: %u, byteIndex: %u", v62, 0x14u);
      }

      IsComplete = iAP2PacketIsComplete(*(*(a1 + 32) + 104));
      v35 = !gLogObjects || gNumLogObjects <= 18;
      v36 = !v35;
      if (IsComplete)
      {
        if (v36)
        {
          v37 = *(gLogObjects + 144);
        }

        else
        {
          v39 = OUTLINED_FUNCTION_11();
          if (v39)
          {
            OUTLINED_FUNCTION_6_36(v39, v40, v41, v42, v43, v44, v45, v46, v83);
            OUTLINED_FUNCTION_2_43();
            OUTLINED_FUNCTION_10_6();
            _os_log_error_impl(v75, v76, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v78, 0x12u);
          }
        }

        if (OUTLINED_FUNCTION_79())
        {
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v67, v68, v69, "iAP2 packet complete!", v70, 2u);
        }

        acc_platform_packetLogging_logiAP2Packet(*(a1 + 32), *(*(a1 + 32) + 104), 1);
        OUTLINED_FUNCTION_5_34();
        iAP2LinkRunLoopHandleReadyPacket(*(*(a1 + 32) + 32), *(*(a1 + 32) + 104));
        iAP2PacketRelease(*(*(a1 + 32) + 104));
        *(*(a1 + 32) + 104) = 0;
      }

      else
      {
        if (v36)
        {
          v38 = *(gLogObjects + 144);
        }

        else
        {
          v47 = OUTLINED_FUNCTION_11();
          if (v47)
          {
            OUTLINED_FUNCTION_6_36(v47, v48, v49, v50, v51, v52, v53, v54, v83);
            OUTLINED_FUNCTION_2_43();
            OUTLINED_FUNCTION_10_6();
            _os_log_error_impl(v79, v80, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v82, 0x12u);
          }
        }

        if (OUTLINED_FUNCTION_79())
        {
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v71, v72, v73, "iAP2 packet NOT complete.", v74, 2u);
        }
      }
    }

    while (v5 - 1 < Length);
  }

  CFRelease(*(a1 + 40));
}

__n128 OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  v20 = *(v19 - 148);
  result = a17;
  *(v19 - 144) = a17.n128_u32[0];
  *(v19 - 140) = v18;
  *(v19 - 132) = 1024;
  *(v19 - 130) = v17;
  *(v19 - 126) = 1024;
  *(v19 - 124) = v20;
  return result;
}

void OUTLINED_FUNCTION_5_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_5_11(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf)
{

  _os_log_impl(a1, v31, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

__n128 OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *(v13 - 128) = a13.n128_u32[0];
  return result;
}

BOOL OUTLINED_FUNCTION_5_15(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_35(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_5_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 176), 0x12u);
}

__n128 OUTLINED_FUNCTION_5_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *(v13 - 144) = a13.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 109);
  return result;
}

void OUTLINED_FUNCTION_5_32(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t OUTLINED_FUNCTION_5_34()
{

  return kdebug_trace();
}

_BYTE *iAP2PacketCreateEmptyRecvPacket(uint64_t a1)
{
  v2 = *(a1 + 240);
  MaxRecvPayloadSize = iAP2LinkGetMaxRecvPayloadSize(a1, 0);
  PacketBuffer = iAP2BuffPoolGetPacketBuffer(v2, MaxRecvPayloadSize);
  v5 = PacketBuffer;
  if (PacketBuffer)
  {
    v6 = *(PacketBuffer + 61);
    *(PacketBuffer + 59) = 511;
    PacketBuffer[63] = 0;
    *(PacketBuffer + 1) = 0;
    *(PacketBuffer + 2) = 0;
    *PacketBuffer = a1;
    *(PacketBuffer + 61) = v6 & 0xF5FF;
    *(PacketBuffer + 4) = 0;
    __iAP2PacketResetPacket(PacketBuffer);
  }

  return v5;
}

_BYTE *__iAP2BuffPoolGetRecvPacket_typed(uint64_t a1, int a2, malloc_type_id_t a3)
{
  v5 = *(a1 + 8);
  v6 = iAP2LinkCurPckHdrSize(v5);
  v7 = iAP2LinkCurPckChksumSize(v5);
  v8 = v7 + v6;
  if (__CFADD__(a2, v7 + v6))
  {
    return 0;
  }

  v10 = v7;
  v11 = malloc_type_calloc(1uLL, 0x50uLL, a3);
  if (!v11)
  {
    __iAP2BuffPoolGetRecvPacket_typed_cold_2();
  }

  v9 = v11;
  v12 = (v8 + a2);
  v11[60] = 0;
  v13 = malloc_type_calloc(1uLL, v12, a3);
  *(v9 + 8) = v13;
  if (!v13)
  {
    __iAP2BuffPoolGetRecvPacket_typed_cold_1();
  }

  *(v9 + 10) = v12;
  *(v9 + 9) = &v13[v10 + 8];
  *(v9 + 61) = ((iAP2LinkGetChecksumType(v5) & 3) << 12) | *(v9 + 61) & 0xCFFF;
  return v9;
}

uint64_t iAP2PacketParseBuffer(char *a1, unsigned int a2, uint64_t a3, unsigned int a4, _BYTE *a5, _DWORD *a6, _DWORD *a7, int a8)
{
  v16 = *a3;
  v17 = iAP2LinkCurPckHdrSize(*a3);
  ChecksumType = iAP2LinkGetChecksumType(v16);
  if (a5)
  {
    *a5 = 0;
  }

  if (!a1 || !a2)
  {
    return 0;
  }

  v78 = a4;
  v79 = v17;
  v19 = *(a3 + 64);
  v20 = a2;
  v21 = &a1[a2];
  v80 = a8;
  while (2)
  {
    v22 = *(a3 + 61);
    switch(*(a3 + 61))
    {
      case 0u:
        *(a3 + 52) = 0;
        *(a3 + 56) = 0;
        *(a3 + 44) = 0;
        v23 = *a1;
        if (v23 == 85)
        {
          if (a7)
          {
            ++*a7;
            v74 = *(a3 + 44) + 2;
          }

          else
          {
            v74 = 2;
          }

          *v19 = 0;
          v19[1] = *a1;
          *(a3 + 44) = v74;
          *(a3 + 61) = 13;
          goto LABEL_94;
        }

        if (v23 != 255)
        {
          goto LABEL_94;
        }

        *v19 = -1;
        v24 = 1;
        *(a3 + 61) = 1;
        goto LABEL_93;
      case 1u:
        v52 = *a1;
        if (a8 == 1 || v52 != 90)
        {
          if (v52 == 255)
          {
            goto LABEL_94;
          }

          if (v52 != 85)
          {
            *(a3 + 61) = v22 & 0xFF00;
            goto LABEL_94;
          }

          if (a7)
          {
            ++*a7;
            v69 = *a1;
          }

          else
          {
            v69 = 85;
          }

          v19[1] = v69;
          v50 = 13;
        }

        else
        {
          if (a7)
          {
            ++*a7;
            v53 = *a1;
          }

          else
          {
            v53 = 90;
          }

          v19[1] = v53;
          v50 = 2;
        }

        goto LABEL_91;
      case 2u:
        v44 = *a1++;
        v19[2] = v44;
        *(a3 + 54) = v44 << 8;
        v28 = 3;
        goto LABEL_47;
      case 3u:
        v47 = *a1;
        v48 = *(a3 + 54) + v47;
        v49 = v48 <= v78 || v78 == 0;
        v19[3] = v47;
        *(a3 + 54) = v48;
        if (v49 && v79 <= v48)
        {
          v50 = 4;
          goto LABEL_91;
        }

        v86 = v20;
        __iAP2PacketResetPacket(a3);
        v20 = v86;
        goto LABEL_94;
      case 4u:
        v34 = *a1++;
        v19[4] = v34;
        v28 = 5;
        goto LABEL_47;
      case 5u:
        v57 = *a1++;
        v19[5] = v57;
        v28 = 6;
        goto LABEL_47;
      case 6u:
        v61 = *a1++;
        v19[6] = v61;
        v28 = 7;
        goto LABEL_47;
      case 7u:
        v51 = *a1++;
        v19[7] = v51;
        v28 = 8;
        goto LABEL_47;
      case 8u:
        v67 = *a1++;
        v66 = v67;
        v85 = v20;
        iAP2PacketSetHdrChecksum(a3, ChecksumType, v67);
        *(&v20 + 1) = *(&v85 + 1);
        v68 = *(a3 + 62);
        *(a3 + 61) = 9;
        ++*(a3 + 44);
        *&v20 = vadd_s32(*&v85, 0x1FFFFFFFFLL);
        if (ChecksumType)
        {
          goto LABEL_96;
        }

        v82 = v20;
        *(a3 + 61) = (v68 << 8) | 0xA;
        if (iAP2PacketCalcChecksum(*(a3 + 64), 8u, 0) != v66)
        {
LABEL_52:
          iAP2PacketGetChecksum((*(a3 + 64) + 8), (*(a3 + 61) >> 12) & 3);
          if (a6)
          {
            ++*a6;
          }

LABEL_54:
          v60 = a3;
          goto LABEL_55;
        }

LABEL_20:
        *(a3 + 52) = 0;
        if (*(a3 + 54) == v79)
        {
          v43 = 18;
LABEL_73:
          *(a3 + 61) = v43;
        }

        goto LABEL_74;
      case 9u:
        v84 = v20;
        iAP2PacketGetChecksum((*(a3 + 64) + 8), (v22 >> 12) & 3);
        v40 = *a1++;
        iAP2PacketSetHdrChecksum(a3, ChecksumType, v40);
        *(a3 + 61) = 10;
        ++*(a3 + 44);
        *(&v41 + 1) = *(&v84 + 1);
        *&v41 = vadd_s32(*&v84, 0x1FFFFFFFFLL);
        v82 = v41;
        v42 = iAP2PacketCalcChecksum(*(a3 + 64), 8u, ChecksumType);
        if (v42 == iAP2PacketGetChecksum((*(a3 + 64) + 8), (*(a3 + 61) >> 12) & 3))
        {
          goto LABEL_20;
        }

        goto LABEL_52;
      case 0xAu:
        v82 = v20;
        PayloadLen = iAP2PacketGetPayloadLen(a3);
        v63 = *(a3 + 52);
        v64 = PayloadLen - v63;
        if (PayloadLen == v63)
        {
          v65 = PayloadLen;
        }

        else
        {
          if (v82 >= v64)
          {
            v70 = v64;
          }

          else
          {
            v70 = v82;
          }

          memcpy((*(a3 + 72) + *(a3 + 52)), a1, v70);
          v65 = *(a3 + 52) + v70;
          *(a3 + 52) = v65;
          *(a3 + 44) += v70;
          a1 += v70;
          v71.i32[0] = v70;
          v72 = vdup_n_s32(v70);
          a8 = v80;
          *(&v73 + 1) = *(&v82 + 1);
          LODWORD(v73) = vsub_s32(*&v82, v71).u32[0];
          DWORD1(v73) = vadd_s32(*&v82, v72).i32[1];
          v82 = v73;
        }

        if (iAP2PacketGetPayloadLen(a3) != v65)
        {
          goto LABEL_74;
        }

        v43 = 11;
        goto LABEL_73;
      case 0xBu:
        v29 = *a1++;
        v81 = v20;
        iAP2PacketSetPayloadChecksum(a3, v29);
        *(&v20 + 1) = *(&v81 + 1);
        *(a3 + 61) = 12;
        ++*(a3 + 44);
        *&v20 = vadd_s32(*&v81, 0x1FFFFFFFFLL);
        if (ChecksumType)
        {
          goto LABEL_96;
        }

        v82 = v20;
        v30 = *(a3 + 72);
        v31 = iAP2PacketGetPayloadLen(a3);
        v32 = v30;
        v33 = 0;
LABEL_17:
        v39 = iAP2PacketCalcChecksum(v32, v31, v33);
        if (v39 == iAP2PacketGetChecksum((*(a3 + 72) + *(a3 + 52)), (*(a3 + 61) >> 12) & 3))
        {
          *(a3 + 61) = 18;
        }

        else
        {
          if (a6)
          {
            ++*a6;
          }

          __iAP2PacketResetPacket(a3);
        }

        a8 = v80;
        goto LABEL_74;
      case 0xCu:
        v83 = v20;
        Checksum = iAP2PacketGetChecksum((*(a3 + 72) + *(a3 + 52)), (v22 >> 12) & 3);
        v36 = *a1++;
        iAP2PacketSetPayloadChecksum(a3, v36 | (Checksum << 8));
        ++*(a3 + 44);
        *(&v37 + 1) = *(&v83 + 1);
        *&v37 = vadd_s32(*&v83, 0x1FFFFFFFFLL);
        v82 = v37;
        v38 = *(a3 + 72);
        v31 = iAP2PacketGetPayloadLen(a3);
        v32 = v38;
        v33 = ChecksumType;
        goto LABEL_17;
      case 0xDu:
        v58 = *a1;
        *(*(a3 + 64) + *(a3 + 44)) = v58;
        if (a8 != 2)
        {
          if (v58)
          {
LABEL_66:
            *(a3 + 61) = 16;
            *(a3 + 54) = *a1 + 4;
          }

          else
          {
            v50 = 14;
LABEL_91:
            *(a3 + 61) = v50;
          }

          v24 = *(a3 + 44) + 1;
LABEL_93:
          *(a3 + 44) = v24;
LABEL_94:
          ++a1;
LABEL_95:
          *&v20 = vadd_s32(*&v20, 0x1FFFFFFFFLL);
          goto LABEL_96;
        }

        if (v58 == 2 || v58 == 4)
        {
          goto LABEL_66;
        }

        v60 = a3;
        v82 = v20;
LABEL_55:
        __iAP2PacketResetPacket(v60);
LABEL_74:
        v20 = v82;
        goto LABEL_96;
      case 0xEu:
        v27 = *a1++;
        *(*(a3 + 64) + *(a3 + 44)) = v27;
        *(a3 + 54) = v27;
        v28 = 15;
        goto LABEL_47;
      case 0xFu:
        *(*(a3 + 64) + *(a3 + 44)) = *a1;
        v45 = *(a3 + 54);
        *(a3 + 54) = v45 << 8;
        v46 = *a1++;
        *(a3 + 54) = (v46 | (v45 << 8)) + 6;
        v28 = 16;
LABEL_47:
        *(a3 + 61) = v28;
        ++*(a3 + 44);
        goto LABEL_95;
      case 0x10u:
        v25 = *a1++;
        *(*(a3 + 64) + *(a3 + 44)) = v25;
        v26 = *(a3 + 44);
        *(a3 + 44) = v26 + 1;
        *&v20 = vadd_s32(*&v20, 0x1FFFFFFFFLL);
        if (v26 == *(a3 + 54) - 2)
        {
          *(a3 + 61) = 17;
        }

        goto LABEL_96;
      case 0x11u:
        v82 = v20;
        *(*(a3 + 64) + *(a3 + 44)) = *a1;
        if (iAP2PacketCalcChecksum((*(a3 + 64) + 2), *(a3 + 54) - 2, 0))
        {
          goto LABEL_54;
        }

        v54 = *(a3 + 61) | 0x400;
        *(a3 + 61) = v54;
        if (!iAP2PacketCheckDetect(a3))
        {
          if (iAP2PacketCheckDetectNACK(a3))
          {
            v55 = v54 & 0xFF00;
            v56 = 20;
            goto LABEL_81;
          }

          if (iAP2PacketCheckRequestIdentify(a3))
          {
            v75 = v54 & 0xFF00;
            v76 = 21;
          }

          else
          {
            if (v80 == 2)
            {
              __iAP2PacketResetPacket(a3);
LABEL_102:
              v20 = v82;
              goto LABEL_103;
            }

            v75 = v54 & 0xFF00;
            v76 = 22;
          }

          *(a3 + 61) = v75 | v76;
          goto LABEL_102;
        }

        v55 = v54 & 0xFF00;
        v56 = 19;
LABEL_81:
        *(a3 + 61) = v55 | v56;
        v20 = v82;
        if (a5)
        {
          *a5 = 1;
        }

LABEL_103:
        ++*(a3 + 44);
        ++a1;
        *&v20 = vadd_s32(*&v20, 0x1FFFFFFFFLL);
        a8 = v80;
LABEL_96:
        if (a1 < v21)
        {
          continue;
        }

        return DWORD1(v20);
      default:
        return DWORD1(v20);
    }
  }
}

uint64_t iAP2LinkGetMaxRecvPacketSize(uint64_t a1)
{
  if (a1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL iAP2PacketIsComplete(_BOOL8 result)
{
  if (result)
  {
    return (*(result + 61) & 0xFEu) > 0x11;
  }

  return result;
}

void iAP2LinkHandleReadyPacket(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 61);
  if (v3 >= 0x13)
  {
    v4 = *(a1 + 8);

    iAP2FSMHandleEvent(v4, (v3 + 4));
    return;
  }

  v6 = *(a2 + 64);
  if (*(a2 + 54) > *(a1 + 414))
  {
    if (_iAP2LogEnableMask)
    {
      if (!gLogObjects || gNumLogObjects < 20)
      {
        v14 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v14 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v6[5];
        v16 = *(a2 + 54);
        v17 = *(a1 + 414);
        *buf = 67109632;
        v40 = v15;
        v41 = 1024;
        v42 = v16;
        v43 = 1024;
        v44 = v17;
        v18 = "ERROR: Packet 0x%x has length = %d bytes > maxPacketLength (%d bytes)";
        v19 = v14;
        v20 = 20;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
        return;
      }
    }

    return;
  }

  if (*(*(a1 + 8) + 10) != 6)
  {
    ++*(a1 + 528);
    iAP2PacketRetain(a2);
    v9 = *(a1 + 280);
    if (v9)
    {
      iAP2PacketRelease(v9);
    }

    *(a1 + 280) = a2;
    v10 = *(a1 + 188);
    v11 = v6[5];
    v12 = iAP2PacketCalcSeqGap(*(a1 + 188), v6[5]);
    if ((*(a1 + 212) & 4) != 0 && (v6[4] & 0x40) != 0)
    {
      v13 = iAP2PacketCalcSeqGap(v6[6], *(a1 + 190));
    }

    else
    {
      v13 = 0;
    }

    if (!iAP2LinkIsNoRetransmit(a1 + 410) && v13 > *(a1 + 421))
    {
      iAP2FSMHandleEvent(*(a1 + 8), 0x13u);
LABEL_52:
      ++*(a1 + 556);
LABEL_53:
      v26 = *(a1 + 280);
      if (v26)
      {
        iAP2PacketRelease(v26);
      }

      *(a1 + 280) = 0;
      buf[0] = -86;
      RecvPckFirstItem = _GetRecvPckFirstItem(a1, buf);
      if (RecvPckFirstItem)
      {
        v28 = RecvPckFirstItem;
        v29 = buf[0];
        do
        {
          v38 = -86;
          RecvPckNextItem = _GetRecvPckNextItem(a1, v29, &v38);
          if (*(a1 + 212) & 1) != 0 && (v31 = RecvPckNextItem, v32 = iAP2PacketCalcSeqGap(*(a1 + 188), *(v28[8] + 5)), (*(a1 + 212)) && v32 != 1)
          {
            if (v32 > *(a1 + 411))
            {
              iAP2ListArrayDeleteItem(*(a1 + 288), v29, _DeletePckCB);
            }
          }

          else
          {
            iAP2PacketRetain(v28);
            iAP2ListArrayDeleteItem(*(a1 + 288), v29, _DeletePckCB);
            if (*(a1 + 280))
            {
              iAP2LinkHandleReadyPacket_cold_1();
            }

            *(a1 + 280) = v28;
            iAP2LinkProcessInOrderPacket(a1, v28);
            *(a1 + 280) = 0;
            iAP2PacketRelease(v28);
            v31 = _GetRecvPckFirstItem(a1, &v38);
          }

          v29 = v38;
          v28 = v31;
        }

        while (v31);
      }

      return;
    }

    if ((v6[4] & 4) == 0)
    {
      if ((v6[4] & 0x80) != 0 || (*(a1 + 212) & 1) == 0 || v12 == 1)
      {
        if ((v6[4] & 0xC0) != 0x80)
        {
          _AddRecvPckItem(a1, a2);
LABEL_45:
          IsACKOnly = 0;
          goto LABEL_46;
        }
      }

      else
      {
        if (v12 > *(a1 + 411))
        {
          goto LABEL_40;
        }

        if ((iAP2PacketIsEAK(a2) & 1) == 0 && !iAP2PacketIsACKOnly(a2))
        {
          v33 = *(a1 + 420);
          if (!*(a1 + 420))
          {
            goto LABEL_75;
          }

          v34 = 0;
          v35 = (a1 + 440);
          v36 = (a1 + 440);
          do
          {
            v37 = *v36;
            v36 += 4;
            if (v37 == *(*(a2 + 64) + 7))
            {
              v34 = v35;
            }

            v35 = v36;
            --v33;
          }

          while (v33);
          if (!v34 || (v34[3] & 1) == 0)
          {
LABEL_75:
            if (!v12)
            {
LABEL_78:
              if (v10 != v11 || iAP2PacketIsACKOnly(a2) || iAP2LinkIsNoRetransmit(a1 + 410))
              {
                goto LABEL_52;
              }

              iAP2FSMHandleEvent(*(a1 + 8), 0x10u);
              goto LABEL_45;
            }

LABEL_40:
            if (iAP2LinkIsNoRetransmit(a1 + 410))
            {
              ++*(a1 + 560);
              iAP2LinkSendRST(a1);
              goto LABEL_52;
            }

            if (v12 <= *(a1 + 411))
            {
              if (!iAP2PacketRequireACK(a2))
              {
                IsACKOnly = iAP2PacketIsACKOnly(a2);
                goto LABEL_46;
              }

              if ((_IsReceivedPacket(a1, a2) & 1) == 0)
              {
                ++*(a1 + 560);
                _AddRecvPckItem(a1, a2);
                if (*(a1 + 194) == 255)
                {
                  IsACKOnly = 0;
                  *(a1 + 194) = iAP2TimeCallbackAfter(*(a1 + 200), 13, *(a1 + 418));
                  goto LABEL_46;
                }
              }

              goto LABEL_45;
            }

            goto LABEL_78;
          }
        }
      }
    }

    IsACKOnly = 1;
LABEL_46:
    if ((v6[4] & 0x40) != 0)
    {
      v24 = iAP2PacketCalcSeqGap(*(a1 + 189), v6[6]);
      v25 = *(a1 + 212);
      if ((v25 & 2) == 0 || (v24 & 0x80000000) == 0)
      {
        *(a1 + 189) = v6[6];
        *(a1 + 212) = v25 | 2;
        _CleanupAckedPackets(a1);
      }
    }

    if (!IsACKOnly || iAP2LinkProcessInOrderPacket(a1, a2))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v8 = *(gLogObjects + 152);
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
      v21 = v6[5];
      v22 = *(a2 + 54);
      *buf = 67109376;
      v40 = v21;
      v41 = 1024;
      v42 = v22;
      v18 = "ERROR: Packet seq:0x%x length:%d received while link state = SUSPEND !";
      v19 = v8;
      v20 = 14;
      goto LABEL_30;
    }
  }
}

void iAP2LinkRunLoopHandleReadyPacket(uint64_t a1, uint64_t *a2)
{
  if (a1 && (*(a1 + 44) & 1) == 0)
  {
    iAP2PacketRetain(a2);

    iAP2LinkRunLoopSignal(a1, a2, 0);
  }
}

BOOL iAP2PacketIsACKOnly(uint64_t a1)
{
  if ((*(*(a1 + 64) + 4) & 0xF0) != 0x40)
  {
    return 0;
  }

  v1 = *(a1 + 54);
  return v1 == iAP2LinkCurPckHdrSize(*a1);
}

uint64_t _CleanupAckedPackets(uint64_t a1)
{
  v13 = -86;
  result = _GetSendPckFirstItem(a1, &v13);
  if (result)
  {
    SendPckNextItem = result;
    v4 = 0;
    v5 = v13;
LABEL_3:
    v6 = SendPckNextItem;
    do
    {
      v12 = -86;
      SendPckNextItem = _GetSendPckNextItem(a1, v5, &v12);
      v7 = *(v6 + 64);
      if (*(v7 + 4) < 0)
      {
        v9 = iAP2PacketCalcSeqGap(*(v7 + 5), *(a1 + 190));
        v8 = *(a1 + 421);
        if (v9 > v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = *(a1 + 421);
      }

      result = iAP2PacketIsSeqACKd(*(v7 + 5), *(a1 + 189), v8);
      if (result)
      {
LABEL_10:
        CurTimeMs = iAP2TimeGetCurTimeMs();
        v11.i32[1] = 1;
        v11.i32[0] = CurTimeMs - *(v6 + 48);
        *(a1 + 596) = vadd_s32(v11, *(a1 + 596));
        iAP2ListArrayDeleteItem(*(a1 + 296), v5, _DeletePckCB);
        v5 = v12;
        v4 = 1;
        if (SendPckNextItem)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      v5 = v12;
      v6 = SendPckNextItem;
    }

    while (SendPckNextItem);
    if ((v4 & 1) == 0)
    {
      return result;
    }

LABEL_13:

    return iAP2LinkSignalSendBuffCB(a1);
  }

  return result;
}

unint64_t _GetSendPckFirstItem(uint64_t a1, _BYTE *a2)
{
  FirstItemIndex = iAP2ListArrayGetFirstItemIndex(*(a1 + 296));
  *a2 = FirstItemIndex;
  result = iAP2ListArrayItemForIndex(*(a1 + 296), FirstItemIndex);
  if (result)
  {
    return *result;
  }

  return result;
}

unint64_t _GetSendPckNextItem(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  NextItemIndex = iAP2ListArrayGetNextItemIndex(*(a1 + 296), a2);
  *a3 = NextItemIndex;
  result = iAP2ListArrayItemForIndex(*(a1 + 296), NextItemIndex);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t iAP2ListArrayGetNextItemIndex(uint64_t a1, unsigned int a2)
{
  result = 255;
  if (a1)
  {
    if (a2 != 255)
    {
      return *(a1 + (*(a1 + 5) + 2) * a2 + 8);
    }
  }

  return result;
}

uint64_t __iAP2LinkDeleteContextCB(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a2 + 8))
    {
      return iAP2MsgCleanup(a2);
    }
  }

  return result;
}

void iAP2BuffPoolReturnPacketBuffer(unsigned __int8 *a1, void **a2)
{
  v3 = *a1;
  if (v3 >= 3)
  {
    iAP2BuffPoolReturnPacketBuffer_cold_1();
  }

  if (v3 == 2)
  {

    goto LABEL_6;
  }

  if (v3 == 1)
  {

LABEL_6:
    __iAP2BuffPoolReturnSendPacket(a1, a2);
  }
}

void __iAP2BuffPoolReturnSendPacket(uint64_t a1, void **a2)
{
  free(a2[8]);

  free(a2);
}

BOOL iAP2LinkProcessInOrderPacket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4[4] < 0)
  {
    v17 = *(a1 + 212);
    if (v17)
    {
      v18 = v4[5];
      if (*(a1 + 188) == v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }
    }

    else
    {
      LOBYTE(v18) = v4[5];
      v19 = 2;
    }

    v23 = *(a1 + 213);
    *(a1 + 188) = v18;
    *(a1 + 212) = v17 | 1;
    v24 = v4[4];
    v25 = *(a1 + 460) + 1;
    *(a1 + 460) = v25;
    if ((v24 & 0x40) != 0)
    {
      ++*(a1 + 480);
      ++*(a1 + 488);
      if ((v17 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      ++*(a1 + 476);
      ++*(a1 + 484);
      if ((v17 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

    if (v25 >= 0xB)
    {
      iAP2FSMHandleEvent(*(a1 + 8), 0x14u);
      goto LABEL_42;
    }

LABEL_33:
    if (v23 == 2)
    {
      v26 = 22;
    }

    else
    {
      v26 = 20;
    }

    if (*(a2 + 54) < v26)
    {
      goto LABEL_42;
    }

    v47 = -21846;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v45[16] = v27;
    v46 = v27;
    *v45 = v27;
    v28 = *(a2 + 72);
    PayloadLen = iAP2PacketGetPayloadLen(a2);
    if (iAP2PacketParseSYNData(v28, PayloadLen, v45))
    {
      if (iAP2LinkIsValidSynParam(v45, *(a1 + 215), *(a1 + 352) + 14, *(a1 + 352) + 19))
      {
        if ((v4[4] & 0x40) == 0)
        {
          v21 = *(a1 + 8);
          v22 = v19;
LABEL_82:
          iAP2FSMHandleEvent(v21, v22);
          return 1;
        }

        if (v45[0] == *(a1 + 360) && __PAIR64__(*&v45[8], *&v45[6]) == __PAIR64__(*(a1 + 368), *(a1 + 366)) && __PAIR64__(v45[3], v45[2]) == __PAIR64__(*(a1 + 363), *(a1 + 362)) && v45[10] == *(a1 + 370))
        {
          v21 = *(a1 + 8);
          if (v4[6] == *(a1 + 190))
          {
            v22 = 4;
          }

          else
          {
            v22 = 5;
          }

          goto LABEL_82;
        }
      }

      if (iAP2LinkIsNoRetransmit(a1 + 360) && !iAP2LinkIsNoRetransmit(v45))
      {
        v21 = *(a1 + 8);
        v22 = 7;
        goto LABEL_82;
      }
    }

    else
    {
      iAP2LinkIsNoRetransmit(a1 + 360);
    }

    v21 = *(a1 + 8);
    v22 = 6;
    goto LABEL_82;
  }

  v5 = v4[4];
  if ((v5 & 0x20) != 0)
  {
    if (*(a1 + 213) == 2)
    {
      v20 = 12;
    }

    else
    {
      v20 = 10;
    }

    if (*(a2 + 54) <= v20)
    {
      goto LABEL_42;
    }

    ++*(a1 + 564);
    v21 = *(a1 + 8);
    v22 = 17;
    goto LABEL_82;
  }

  if ((v5 & 4) != 0)
  {
    if (!iAP2LinkProcessInOrderPacketCMD(a1, a2))
    {
      goto LABEL_42;
    }

    return 1;
  }

  if (v5 >= 0x40)
  {
    v6 = *(a1 + 213);
    v7 = *(a2 + 54);
    if (v6 == 2)
    {
      v8 = 12;
    }

    else
    {
      v8 = 10;
    }

    if (v7 > v8)
    {
      *(a1 + 188) = v4[5];
      *(a1 + 212) |= 1u;
      ++*(a1 + 576);
      iAP2FSMHandleEvent(*(a1 + 8), 0xFu);
      v9 = iAP2PacketCalcSeqGap(*(a1 + 191), *(a1 + 188));
      v10 = v9;
      v11 = *(a1 + 420);
      if (!*(a1 + 420))
      {
        goto LABEL_60;
      }

      v12 = 0;
      v13 = (a1 + 440);
      v14 = (a1 + 440);
      do
      {
        v15 = *v14;
        v14 += 4;
        if (v15 == *(*(a2 + 64) + 7))
        {
          v12 = v13;
        }

        v13 = v14;
        --v11;
      }

      while (v11);
      if (v12 && (v12[3] & 1) != 0)
      {
        v16 = 1;
      }

      else
      {
LABEL_60:
        v16 = 0;
      }

      if (*(*(a1 + 8) + 10) >= 5u)
      {
        v42 = v9 ? 0 : v16;
        if ((v9 > 0 || v42) && !iAP2LinkIsNoRetransmit(a1 + 410))
        {
          if (v10 < *(a1 + 413))
          {
            v43 = 1;
          }

          else
          {
            v43 = v16;
          }

          if ((v43 & 1) == 0)
          {
            ACKPacket = iAP2PacketCreateACKPacket(a1, *(a1 + 190), *(a1 + 188), 0, 0, 0);
            ++*(a1 + 588);
            _iAP2LinkSendPacketCommon(a1, ACKPacket, 0, 0);
            iAP2PacketRelease(ACKPacket);
          }
        }
      }

      goto LABEL_89;
    }

    v38 = v6 == 2 ? 10 : 9;
    if (v7 == v38)
    {
      ++*(a1 + 572);
      v47 = *(a1 + 408);
      v39 = *(a1 + 392);
      *&v45[16] = *(a1 + 376);
      v46 = v39;
      *v45 = *(a1 + 360);
      v45[1] = v45[11];
      *&v45[4] = *&v45[12];
      v40 = *(a1 + 8);
      if (*(v40 + 10) <= 4u)
      {
        if (!iAP2LinkIsValidSynParam(v45, *(a1 + 215), *(a1 + 352) + 14, *(a1 + 352) + 19) || *&v45[4] > *(*(a1 + 352) + 12))
        {
          v40 = *(a1 + 8);
          v41 = 22;
LABEL_88:
          iAP2FSMHandleEvent(v40, v41);
LABEL_89:
          iAP2LinkSignalSendBuffCB(a1);
          return 1;
        }

        v40 = *(a1 + 8);
      }

      v41 = 21;
      goto LABEL_88;
    }
  }

LABEL_42:
  if ((_iAP2LogEnableMask & 1) == 0)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 20)
  {
    v30 = *(gLogObjects + 152);
  }

  else
  {
    v30 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v32 = v4[4];
    v33 = v4[5];
    v34 = *(a1 + 190);
    v35 = *(a1 + 189);
    v36 = *(a1 + 188);
    v37 = *(a1 + 191);
    *v45 = 136316930;
    *&v45[4] = "iAP2LinkProcessInOrderPacket";
    *&v45[12] = 1024;
    *&v45[14] = 5304;
    *&v45[18] = 1024;
    *&v45[20] = v32;
    *&v45[24] = 1024;
    *&v45[26] = v33;
    *&v45[30] = 1024;
    LODWORD(v46) = v34;
    WORD2(v46) = 1024;
    *(&v46 + 6) = v35;
    WORD5(v46) = 1024;
    HIDWORD(v46) = v36;
    v47 = 1024;
    v48 = v37;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Received Invalid Packet (control=0x%x seq=%u sentSeq=%u recvAck=%u recvSeq=%u sentAck=%u)", v45, 0x36u);
    return 0;
  }

  return result;
}

uint64_t iAP2LinkActionHandleACK(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    iAP2LinkActionHandleACK_cold_2();
  }

  if (!a2)
  {
    iAP2LinkActionHandleACK_cold_1();
  }

  *a2 = 29;
  return result;
}

unint64_t _GetRecvPckFirstItem(uint64_t a1, _BYTE *a2)
{
  FirstItemIndex = iAP2ListArrayGetFirstItemIndex(*(a1 + 288));
  *a2 = FirstItemIndex;
  result = iAP2ListArrayItemForIndex(*(a1 + 288), FirstItemIndex);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t ccaes_arm_encrypt_cbc(uint64_t result, int8x16_t *a2, uint64_t a3, __int128 *a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = *(result + 240);
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      v6 = *a2;
      do
      {
        v7 = v5 - 16;
        v8 = *a4++;
        _Q2 = *result;
        v9 = (result + 16);
        do
        {
          __asm
          {
            AESE            V0.16B, V2.16B
            AESMC           V0.16B, V0.16B
          }

          _Q2 = *v9++;
          v17 = v7 <= 16;
          v7 -= 16;
        }

        while (!v17);
        __asm { AESE            V0.16B, V2.16B }

        v19 = veorq_s8(_Q0, *v9);
        result = v9->i64 - v5;
        *a5++ = v19;
        v17 = a3-- <= 1;
      }

      while (!v17);
      result = 0;
      *a2 = v19;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t ccn_n_asm(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = 0;
    do
    {
      v4 = *a2++;
      ++v3;
      if (v4)
      {
        result = v3;
      }
    }

    while (v3 < v2);
  }

  return result;
}

int8x16_t *ccm128_decrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_10000E380[2 * a7];
  v8 = *a3;
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v9 = a5 + 4;
  _Q20 = *v9;
  _Q21 = v9[1];
  _Q22 = v9[2];
  _Q23 = v9[3];
  v9 += 4;
  _Q24 = *v9;
  _Q25 = v9[1];
  v20 = v9[2];
  v21 = vqtbl1q_s8(*a6, *Lbswap_mask);
  v22 = vorrq_s8(vandq_s8(vaddq_s64(v21, *qword_10000E380), v7), vbicq_s8(v21, v7));
  v24 = *a1;
  result = a1 + 1;
  __asm
  {
    AESE            V3.16B, V16.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V17.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V18.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V19.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V20.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V21.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V22.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V23.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V24.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V25.16B
  }

  *a2 = veorq_s8(v24, veorq_s8(_Q3, v20));
  v48 = a2 + 1;
  v49 = a4 - 1;
  if (v49)
  {
    do
    {
      v22 = vorrq_s8(vandq_s8(vaddq_s64(v22, *qword_10000E380), v7), vbicq_s8(v22, v7));
      v50 = *result++;
      __asm
      {
        AESE            V3.16B, V16.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V16.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V17.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V17.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V18.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V18.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V19.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V19.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V20.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V20.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V21.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V21.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V22.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V22.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V23.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V23.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V24.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V24.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V25.16B
        AESE            V1.16B, V25.16B
      }

      *v48++ = veorq_s8(v50, veorq_s8(_Q3, v20));
      _VF = __OFSUB__(v49--, 1);
    }

    while (!((v49 < 0) ^ _VF | (v49 == 0)));
  }

  __asm
  {
    AESE            V1.16B, V16.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V17.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V18.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V19.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V20.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V21.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V22.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V23.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V24.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V25.16B
  }

  *a6 = vqtbl1q_s8(v22, *Lbswap_mask);
  *a3 = veorq_s8(_Q1, v20);
  return result;
}

int8x16_t *ccm192_decrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_10000E380[2 * a7];
  v8 = *a3;
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v9 = a5 + 4;
  _Q20 = *v9;
  _Q21 = v9[1];
  _Q22 = v9[2];
  _Q23 = v9[3];
  v9 += 4;
  _Q24 = *v9;
  _Q25 = v9[1];
  _Q26 = v9[2];
  _Q27 = v9[3];
  v22 = v9[4];
  v23 = vqtbl1q_s8(*a6, *Lbswap_mask);
  v24 = vorrq_s8(vandq_s8(vaddq_s64(v23, *qword_10000E380), v7), vbicq_s8(v23, v7));
  v26 = *a1;
  result = a1 + 1;
  __asm
  {
    AESE            V3.16B, V16.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V17.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V18.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V19.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V20.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V21.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V22.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V23.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V24.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V25.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V26.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V27.16B
  }

  *a2 = veorq_s8(v26, veorq_s8(_Q3, v22));
  v54 = a2 + 1;
  v55 = a4 - 1;
  if (v55)
  {
    do
    {
      v24 = vorrq_s8(vandq_s8(vaddq_s64(v24, *qword_10000E380), v7), vbicq_s8(v24, v7));
      v56 = *result++;
      __asm
      {
        AESE            V3.16B, V16.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V16.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V17.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V17.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V18.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V18.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V19.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V19.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V20.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V20.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V21.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V21.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V22.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V22.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V23.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V23.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V24.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V24.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V25.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V25.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V26.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V26.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V27.16B
        AESE            V1.16B, V27.16B
      }

      *v54++ = veorq_s8(v56, veorq_s8(_Q3, v22));
      _VF = __OFSUB__(v55--, 1);
    }

    while (!((v55 < 0) ^ _VF | (v55 == 0)));
  }

  __asm
  {
    AESE            V1.16B, V16.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V17.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V18.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V19.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V20.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V21.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V22.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V23.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V24.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V25.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V26.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V27.16B
  }

  *a6 = vqtbl1q_s8(v24, *Lbswap_mask);
  *a3 = veorq_s8(_Q1, v22);
  return result;
}

int8x16_t *ccm256_decrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_10000E380[2 * a7];
  v8 = *a3;
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v9 = a5 + 4;
  _Q20 = *v9;
  _Q21 = v9[1];
  _Q22 = v9[2];
  _Q23 = v9[3];
  v9 += 4;
  _Q24 = *v9;
  _Q25 = v9[1];
  _Q26 = v9[2];
  _Q27 = v9[3];
  v9 += 4;
  _Q28 = *v9;
  _Q29 = v9[1];
  v24 = v9[2];
  v25 = vqtbl1q_s8(*a6, *Lbswap_mask);
  v26 = vorrq_s8(vandq_s8(vaddq_s64(v25, *qword_10000E380), v7), vbicq_s8(v25, v7));
  v28 = *a1;
  result = a1 + 1;
  __asm
  {
    AESE            V3.16B, V16.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V17.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V18.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V19.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V20.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V21.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V22.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V23.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V24.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V25.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V26.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V27.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V28.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V29.16B
  }

  *a2 = veorq_s8(v28, veorq_s8(_Q3, v24));
  v60 = a2 + 1;
  v61 = a4 - 1;
  if (v61)
  {
    do
    {
      v26 = vorrq_s8(vandq_s8(vaddq_s64(v26, *qword_10000E380), v7), vbicq_s8(v26, v7));
      v62 = *result++;
      __asm
      {
        AESE            V3.16B, V16.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V16.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V17.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V17.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V18.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V18.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V19.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V19.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V20.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V20.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V21.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V21.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V22.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V22.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V23.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V23.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V24.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V24.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V25.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V25.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V26.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V26.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V27.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V27.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V28.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V28.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V29.16B
        AESE            V1.16B, V29.16B
      }

      *v60++ = veorq_s8(v62, veorq_s8(_Q3, v24));
      _VF = __OFSUB__(v61--, 1);
    }

    while (!((v61 < 0) ^ _VF | (v61 == 0)));
  }

  __asm
  {
    AESE            V1.16B, V16.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V17.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V18.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V19.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V20.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V21.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V22.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V23.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V24.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V25.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V26.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V27.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V28.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V29.16B
  }

  *a6 = vqtbl1q_s8(v26, *Lbswap_mask);
  *a3 = veorq_s8(_Q1, v24);
  return result;
}

int8x16_t ccaes_arm_encrypt_key128(int8x16_t *a1, int8x16_t *a2)
{
  result = *a1;
  a2[15].i32[0] = 160;
  _Q2 = 0uLL;
  v4 = Rcon;
  v5 = 10;
  *a2 = result;
  v6 = a2 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v12 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v13 = veorq_s8(result, v12);
    v12.i8[0] = v4.i8[0];
    v4 = vextq_s8(v4, v4, 1uLL);
    v14 = veorq_s8(v13, v12);
    v15 = veorq_s8(v14, vextq_s8(0, v14, 0xCuLL));
    result = veorq_s8(v15, vextq_s8(0, v15, 8uLL));
    *v6++ = result;
    _CF = v5-- != 0;
  }

  while (v5 != 0 && _CF);
  return result;
}

int8x16_t ccaes_arm_encrypt_key192(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  result = *a1;
  a9.i64[0] = a1[1].i64[0];
  a2[15].i32[0] = 192;
  _Q2 = 0uLL;
  v11 = Rcon;
  *a2 = result;
  v12 = a2 + 1;
  v13 = 46;
  v12->i64[0] = a9.i64[0];
  v14 = &v12->u64[1];
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v20 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v21 = veorq_s8(result, v20);
    v20.i8[0] = v11.i8[0];
    v11 = vextq_s8(v11, v11, 1uLL);
    v22 = veorq_s8(v21, v20);
    v23 = veorq_s8(v22, vextq_s8(0, v22, 0xCuLL));
    result = veorq_s8(v23, vextq_s8(0, v23, 8uLL));
    *a9.i8 = veor_s8(veor_s8(*a9.i8, *&vshlq_n_s64(a9, 0x20uLL)), *&vdupq_laneq_s32(result, 3));
    *v14 = result;
    v24 = v14 + 1;
    v24->i64[0] = a9.i64[0];
    v14 = &v24->u64[1];
    _CF = v13 >= 6;
    v13 -= 6;
  }

  while (v13 != 0 && _CF);
  return result;
}

int8x16_t *ccaes_arm_encrypt_key256(int8x16_t *result, int8x16_t *a2)
{
  v2 = *result;
  v3 = result[1];
  a2[15].i32[0] = 224;
  _Q2 = 0uLL;
  v5 = Rcon;
  *a2 = v2;
  v6 = a2 + 1;
  v7 = 52;
  *v6 = v3;
  v8 = v6 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v14 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v15 = veorq_s8(v2, v14);
    v14.i8[0] = v5.i8[0];
    v5 = vextq_s8(v5, v5, 1uLL);
    v16 = veorq_s8(v15, v14);
    v17 = veorq_s8(v16, vextq_s8(0, v16, 0xCuLL));
    v2 = veorq_s8(v17, vextq_s8(0, v17, 8uLL));
    *v8 = v2;
    v18 = v8 + 1;
    v19 = v7 - 4;
    if (!v19)
    {
      break;
    }

    __asm { AESE            V7.16B, V2.16B }

    v21 = veorq_s8(v3, vqtbl1q_s8(_Q7, *InvShiftRows_RotWord));
    v22 = veorq_s8(v21, vextq_s8(0, v21, 0xCuLL));
    v3 = veorq_s8(v22, vextq_s8(0, v22, 8uLL));
    *v18 = v3;
    v8 = v18 + 1;
    _CF = v19 >= 4;
    v7 = v19 - 4;
  }

  while (v7 != 0 && _CF);
  return result;
}

uint64_t ccaes_arm_encrypt_key(double a1, double a2, double a3, double a4, double a5, double a6, int64x2_t a7, uint64_t a8, int8x16_t *a9, uint64_t a10, int8x16_t *a11)
{
  v13 = a9;
  v15 = a10;
  if (a10 > 32)
  {
    v15 = a10 >> 3;
  }

  switch(v15)
  {
    case 0x10uLL:
      ccaes_arm_encrypt_key128(a11, v13);
      break;
    case 0x18uLL:
      ccaes_arm_encrypt_key192(a11, v13, a1, a2, a3, a4, a5, a6, a7);
      break;
    case 0x20uLL:
      ccaes_arm_encrypt_key256(a11, v13);
      break;
    default:
      return -1;
  }

  return 0;
}

__n128 ccaes_arm_decrypt_key(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  v11 = ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  v13 = a3;
  if (v11 != -1)
  {
    if (a3 > 32)
    {
      v13 = a3 >> 3;
    }

    v14 = (v13 >> 2) + 4;
    v15 = &a2[1];
    do
    {
      _Q0 = *v15;
      _Q1 = v15[1];
      __asm
      {
        AESIMC          V0.16B, V0.16B
        AESIMC          V1.16B, V1.16B
      }

      *v15 = _Q0;
      v15[1] = _Q1;
      v15 += 2;
      v24 = v14 <= 2;
      v14 -= 2;
    }

    while (!v24);
    _Q0 = *v15;
    __asm { AESIMC          V0.16B, V0.16B }

    *v15 = result;
  }

  return result;
}

int8x16_t *aes_ctr_crypt(int8x16_t *a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6)
{
  v6 = a5[15].i32[0];
  v7 = vqtbl1q_s8(*a4, *Lbswap_mask_0);
  v9 = __OFSUB__(a3, 128);
  v8 = a3 - 128 < 0;
  v10 = a3 - 128;
  if (v8 != v9)
  {
    return Decrypt_Main_Loop_End(a1, a2, v10, a4, a5, a6, v6);
  }

  else
  {
    return Decrypt_Main_Loop(a1, a2, v10, a4, a5, a6, v6);
  }
}

uint64_t Decrypt_Main_Loop(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int a7)
{
  do
  {
    v8 = vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, v8))));
    _Q20 = *a5;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[9];
    v167 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[11];
      v167 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[13];
        v167 = a5[14];
      }
    }

    v235 = *a1;
    v236 = *(a1 + 1);
    v237 = *(a1 + 2);
    v238 = *(a1 + 3);
    v234 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v243 = veorq_s8(v235, veorq_s8(_Q22, v167));
    v244 = veorq_s8(v236, veorq_s8(_Q23, v167));
    v245 = veorq_s8(v237, veorq_s8(_Q24, v167));
    v246 = veorq_s8(v238, veorq_s8(_Q25, v167));
    v247 = *v234;
    v248 = *(v234 + 1);
    v249 = *(v234 + 2);
    v250 = *(v234 + 3);
    a1 = v234 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v243;
    a2[1] = v244;
    a2[2] = v245;
    a2[3] = v246;
    v255 = a2 + 4;
    *v255 = veorq_s8(v247, veorq_s8(_Q26, v167));
    v255[1] = veorq_s8(v248, veorq_s8(_Q27, v167));
    v255[2] = veorq_s8(v249, veorq_s8(_Q28, v167));
    v255[3] = veorq_s8(v250, veorq_s8(_Q29, v167));
    a2 = v255 + 4;
    _VF = __OFSUB__(a3, 128);
    _NF = a3 - 128 < 0;
    a3 -= 128;
  }

  while (_NF == _VF);
  return Decrypt_Main_Loop_End();
}

int8x16_t *Decrypt_Main_Loop_End(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, int a7)
{
  v10 = a3 < -112;
  for (i = a3 + 112; !v10; i -= 16)
  {
    _Q4 = *a5;
    _Q5 = a5[1];
    _Q6 = a5[2];
    v9 = vaddq_s64(v7, v9);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[3];
    _Q5 = a5[4];
    _Q6 = a5[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[6];
    _Q5 = a5[7];
    _Q6 = a5[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a5[9];
    _Q21 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a5[11];
      _Q21 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a5[13];
        _Q21 = a5[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v54 = *result++;
    *a2++ = veorq_s8(v54, veorq_s8(_Q7, _Q21));
    v10 = i < 16;
  }

  *a4 = vqtbl1q_s8(v9, v8);
  return result;
}

void gcmEncrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a6 + 240);
  v11 = vqtbl1q_s8(a3[2], *Lbswap_mask_1);
  v12 = vqtbl1q_s8(a3[1], *Lbswap_mask_1);
  if (a4 < 128)
  {
    JUMPOUT(0x100010068);
  }

  _Q20 = *a6;
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 16);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 32);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 48);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 64);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 80);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 96);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 112);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 128);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 144);
  v171 = *(a6 + 160);
  if (v10 > 160)
  {
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = *(a6 + 160);
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = *(a6 + 176);
    v171 = *(a6 + 192);
    if (v10 > 192)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = *(a6 + 192);
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = *(a6 + 208);
      v171 = *(a6 + 224);
    }
  }

  v239 = *a1;
  v240 = a1[1];
  v241 = a1[2];
  v242 = a1[3];
  v238 = a1 + 4;
  __asm
  {
    AESE            V22.16B, V20.16B
    AESE            V23.16B, V20.16B
    AESE            V24.16B, V20.16B
    AESE            V25.16B, V20.16B
  }

  *a2 = veorq_s8(veorq_s8(_Q22, v171), v239);
  a2[1] = veorq_s8(veorq_s8(_Q23, v171), v240);
  a2[2] = veorq_s8(veorq_s8(_Q24, v171), v241);
  a2[3] = veorq_s8(veorq_s8(_Q25, v171), v242);
  v247 = a2 + 4;
  v249 = *v238;
  v250 = v238[1];
  v251 = v238[2];
  v252 = v238[3];
  v248 = v238 + 4;
  __asm
  {
    AESE            V26.16B, V20.16B
    AESE            V27.16B, V20.16B
    AESE            V28.16B, V20.16B
    AESE            V29.16B, V20.16B
  }

  *v247 = veorq_s8(veorq_s8(_Q26, v171), v249);
  v247[1] = veorq_s8(veorq_s8(_Q27, v171), v250);
  v247[2] = veorq_s8(veorq_s8(_Q28, v171), v251);
  v247[3] = veorq_s8(veorq_s8(_Q29, v171), v252);
  v257 = v247 + 4;
  v258 = a4 < 256;
  v259 = a4 - 256;
  if (v258)
  {
    Encrypt_Main_Loop_End(v248, v257, a3, v259, a5, a6, v10, v12);
  }

  else
  {
    Encrypt_Main_Loop(v248, v257, a3, v259, a5, a6, v10, qword_10000F300, v12, a9, a10);
  }
}

uint64_t Encrypt_Main_Loop(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6, uint64_t a7, uint64_t a8, int8x16_t a9, uint64_t a10, uint64_t a11)
{
  do
  {
    v307 = veorq_s8(v14, a9);
    v306 = v15;
    v305 = v16;
    v304 = v17;
    v303 = v18;
    v302 = v19;
    v301 = v20;
    v22 = vaddq_s32(v11, vaddq_s32(v11, vaddq_s32(v11, vaddq_s32(v11, v22))));
    _Q20 = *a6;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v35 = veorq_s8(vmull_p64(a5[8].u64[0], veorq_s8(vextq_s8(v21, v21, 8uLL), v21).u64[0]), vmull_p64(a5[9].u64[0], veorq_s8(v301, vextq_s8(v301, v301, 8uLL)).u64[0]));
    v36 = a5[1];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v41 = veorq_s8(vmull_high_p64(*a5, v21), vmull_high_p64(v36, v20));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v46 = veorq_s8(vmull_p64(a5->i64[0], v21.u64[0]), vmull_p64(v36.u64[0], v301.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v56 = a5[2];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v61 = veorq_s8(v41, vmull_high_p64(v56, v302));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v66 = veorq_s8(v46, vmull_p64(v56.u64[0], v302.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v76 = a5[3];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v81 = veorq_s8(v61, vmull_high_p64(v76, v303));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v86 = veorq_s8(v66, vmull_p64(v76.u64[0], v303.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v96 = a5[4];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v101 = veorq_s8(v81, vmull_high_p64(v96, v304));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v106 = veorq_s8(v86, vmull_p64(v96.u64[0], v304.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v116 = a5[5];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v121 = veorq_s8(v101, vmull_high_p64(v116, v305));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v126 = veorq_s8(v106, vmull_p64(v116.u64[0], v305.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v136 = a5[6];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v141 = veorq_s8(v121, vmull_high_p64(v136, v306));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v146 = veorq_s8(v126, vmull_p64(v136.u64[0], v306.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v156 = a5[7];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v161 = veorq_s8(v141, vmull_high_p64(v156, v307));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v166 = veorq_s8(v146, vmull_p64(v156.u64[0], v307.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v172 = veorq_s8(v166, veorq_s8(v161, veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(v35, vmull_p64(a5[10].u64[0], veorq_s8(v302, vextq_s8(v302, v302, 8uLL)).u64[0])), vmull_p64(a5[11].u64[0], veorq_s8(v303, vextq_s8(v303, v303, 8uLL)).u64[0])), vmull_p64(a5[12].u64[0], veorq_s8(v304, vextq_s8(v304, v304, 8uLL)).u64[0])), vmull_p64(a5[13].u64[0], veorq_s8(v305, vextq_s8(v305, v305, 8uLL)).u64[0])), vmull_p64(a5[14].u64[0], veorq_s8(v306, vextq_s8(v306, v306, 8uLL)).u64[0])), vmull_p64(a5[15].u64[0], veorq_s8(v307, vextq_s8(v307, v307, 8uLL)).u64[0]))));
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v179 = veorq_s8(vextq_s8(v23, v172, 8uLL), v166);
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v182 = veorq_s8(vextq_s8(v179, v179, 8uLL), vmull_p64(v13, v179.u64[0]));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    a9 = veorq_s8(veorq_s8(vextq_s8(v172, v23, 8uLL), v161), veorq_s8(vextq_s8(v182, v182, 8uLL), vmull_p64(v13, v182.u64[0])));
    _Q20 = a6[9];
    v207 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a6[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a6[11];
      v207 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a6[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a6[13];
        v207 = a6[14];
      }
    }

    v275 = *a1;
    v276 = *(a1 + 1);
    v277 = *(a1 + 2);
    v278 = *(a1 + 3);
    v274 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v283 = veorq_s8(veorq_s8(_Q22, v207), v275);
    v284 = veorq_s8(veorq_s8(_Q23, v207), v276);
    v285 = veorq_s8(veorq_s8(_Q24, v207), v277);
    v286 = veorq_s8(veorq_s8(_Q25, v207), v278);
    *a2 = v283;
    a2[1] = v284;
    a2[2] = v285;
    a2[3] = v286;
    v287 = a2 + 4;
    v14 = vqtbl1q_s8(v283, v12);
    v15 = vqtbl1q_s8(v284, v12);
    v16 = vqtbl1q_s8(v285, v12);
    v17 = vqtbl1q_s8(v286, v12);
    v288 = *v274;
    v289 = *(v274 + 1);
    v290 = *(v274 + 2);
    v291 = *(v274 + 3);
    a1 = v274 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    v296 = veorq_s8(veorq_s8(_Q26, v207), v288);
    v297 = veorq_s8(veorq_s8(_Q27, v207), v289);
    v298 = veorq_s8(veorq_s8(_Q28, v207), v290);
    v299 = veorq_s8(veorq_s8(_Q29, v207), v291);
    *v287 = v296;
    v287[1] = v297;
    v287[2] = v298;
    v287[3] = v299;
    a2 = v287 + 4;
    v18 = vqtbl1q_s8(v296, v12);
    v19 = vqtbl1q_s8(v297, v12);
    v20 = vqtbl1q_s8(v298, v12);
    v21 = vqtbl1q_s8(v299, v12);
    _VF = __OFSUB__(a4, 128);
    _NF = a4 - 128 < 0;
    a4 -= 128;
  }

  while (_NF == _VF);
  return Encrypt_Main_Loop_End(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, v301.i64[0], v301.i64[1], v302.i64[0], v302.i64[1], v303.i64[0], v303.i64[1]);
}