BOOL _checkRequiredSampleRates(uint64_t a1)
{
  v2 = iap2_identification_transportComponents(a1);
  if (v2 && (v3 = v2, (Count = CFDictionaryGetCount(v2)) != 0))
  {
    v5 = Count;
    v20 = &v19;
    __chkstk_darwin();
    v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    memset(v7, 170, v6);
    CFDictionaryGetKeysAndValues(v3, 0, v7);
    if (v5 >= 1)
    {
      v9 = 1;
      *&v8 = 134218240;
      v19 = v8;
      v10 = v5;
      v11 = 1;
      while (1)
      {
        v12 = *v7;
        if (*v7)
        {
          if (*(v12 + 20) == 1)
          {
            v13 = *(*a1 + 24);
            v14 = !v13 || v13 == 8;
            if ((v14 || v13 == 6 && !*(v12 + 16)) && (~*(v12 + 48) & 0x1C0) == 0)
            {
              return v11;
            }
          }
        }

        else
        {
          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 38)
          {
            v17 = *(gLogObjects + 296);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v24 = v15;
              v25 = 1024;
              v26 = v16;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v17 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            _getEndpointSampleRates_cold_1(&v21, v22, v17);
          }
        }

        v11 = v5 > v9;
        ++v7;
        ++v9;
        if (!--v10)
        {
          return v11;
        }
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_2_18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

uint64_t obfuscatedPointer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = obfuscatedPointer_salt;
    if (!obfuscatedPointer_salt)
    {
      v2 = random();
      obfuscatedPointer_salt = v2;
    }

    return v1 + v2;
  }

  return result;
}

BOOL getMemoryUse(void *a1, void *a2, void *a3)
{
  v33 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  *task_info_out = v6;
  v11 = v6;
  task_info_outCnt = 93;
  v7 = task_info(mach_task_self_, 0x16u, task_info_out, &task_info_outCnt);
  if (!v7)
  {
    if (a1)
    {
      *a1 = v11;
    }

    if (a2)
    {
      *a2 = *task_info_out;
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v7 == 0;
}

void _replaceKeyInDictIfExist(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v8 objectForKey:v5];
  if (v7)
  {
    [v8 setObject:v7 forKey:v6];
    [v8 removeObjectForKey:v5];
  }
}

id _convertAccInfoToBLEAccInfo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (a1)
  {
    v8 = [NSMutableDictionary dictionaryWithDictionary:a1];
    _replaceKeyInDictIfExist(v8, kACCInfo_Name, @"IAPAppBTPairingAccName");
    _replaceKeyInDictIfExist(v8, kACCInfo_Manufacturer, @"IAPAppBTPairingAccManufacturer");
    _replaceKeyInDictIfExist(v8, kACCInfo_Model, @"IAPAppBTPairingAccModel");
    _replaceKeyInDictIfExist(v8, kACCInfo_SerialNumber, @"IAPAppBTPairingAccSerialNum");
    _replaceKeyInDictIfExist(v8, kACCInfo_HardwareVersion, @"IAPAppBTPairingAccHwVer");
    _replaceKeyInDictIfExist(v8, kACCInfo_FirmwareVersionActive, @"IAPAppBTPairingAccFwVer");
    _replaceKeyInDictIfExist(v8, kACCInfo_FirmwareVersionPending, @"IAPAppBTPairingAccFwPendingVer");
    _replaceKeyInDictIfExist(v8, kACCInfo_AccessoryDeviceUID, @"IAPAppBTPairingAccDeviceUID");
    _replaceKeyInDictIfExist(v8, @"Supports2Way", @"IAPAppBTPairingSupports2WayKey");
    _replaceKeyInDictIfExist(v8, kACCInfo_VendorID, @"IAPAppBTPairingAccVendorID");
    _replaceKeyInDictIfExist(v8, kACCInfo_ProductID, @"IAPAppBTPairingAccProductID");
    _replaceKeyInDictIfExist(v8, kACCInfo_AccessoryPlatformID, @"IAPAppBTPairingAccPlatformID");
    if (v7)
    {
      [v8 setObject:v7 forKey:@"IAPAppBTPairingTypesSupportedKey"];
    }

    if (v6)
    {
      [v8 setObject:v6 forKey:@"IAPAppBTPairingUUIDKey"];
    }

    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000506CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

uint64_t t56_util_init(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  result = 0;
  *(a1 + 16) = v2;
  return result;
}

uint64_t t56_util_cleanup(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  free(v1);
  return 0;
}

void t56_util_notifyRxID(const void **a1, unsigned int a2)
{
  valuePtr = a2;
  if (a1)
  {
    T56Endpoint = t56_util_ios_getT56Endpoint(a1);
    if (T56Endpoint)
    {
      v3 = T56Endpoint;
      if (*T56Endpoint)
      {
        v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"RxID: %@ / 0x%X", v4, valuePtr);
        acc_platform_packetLogging_logParsedData(*v3, @"DATA-RxID", @"T56", v5, 1);
        if (v5)
        {
          CFRelease(v5);
        }

        acc_endpoint_setProperty(*v3, kCFACCProperties_Endpoint_Inductive_RxID, v4);
        v6 = **v3;
        if (v6)
        {
          if ((acc_connection_setProperty(v6, kCFACCProperties_Connection_Inductive_RxID), (v7 = acc_endpoint_copyParentEndpointUUID(*v3)) != 0) && (v8 = v7, EndpointWithUUID = acc_manager_getEndpointWithUUID(v7), CFRelease(v8), EndpointWithUUID) && EndpointWithUUID[6] == 13 || (EndpointWithUUID = *v3, *(*v3 + 24) == 13))
          {
            acc_endpoint_setProperty(EndpointWithUUID, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanFalse);
          }
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }
    }
  }
}

const void **t56_util_ios_getT56Endpoint(const void **result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(v1);
      if (EndpointWithUUID)
      {
        return EndpointWithUUID[7];
      }

      if (gLogObjects && gNumLogObjects >= 61)
      {
        v3 = *(gLogObjects + 480);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v3 = &_os_log_default;
        v5 = &_os_log_default;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        t56_util_ios_getT56Endpoint_cold_2();
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 61)
      {
        v3 = *(gLogObjects + 480);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v3 = &_os_log_default;
        v4 = &_os_log_default;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        t56_util_ios_getT56Endpoint_cold_4();
      }
    }

    return 0;
  }

  return result;
}

const void **t56_util_sendData(const void **result, const UInt8 *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        result = t56_util_ios_getT56Endpoint(result);
        if (result)
        {

          return t56_endpoint_sendOutgoingData(result, a2, a3);
        }
      }
    }
  }

  return result;
}

uint64_t t56_util_callbackOnTimer(const void **a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = 1000000 * a2;
  v6 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    T56Endpoint = t56_util_ios_getT56Endpoint(a1);
    if (T56Endpoint)
    {
      v29 = a4;
      v31 = v5;
      v6 = 0;
      v10 = (T56Endpoint + 18);
      v11 = T56Endpoint + 26;
      v30 = T56Endpoint + 18;
      while (1)
      {
        v12 = gLogObjects;
        v13 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 61)
        {
          v14 = *(gLogObjects + 480);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v33 = v12;
            v34 = 1024;
            v35 = v13;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v15 = &_os_log_default;
          v14 = &_os_log_default;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = *v10;
          v17 = *(v11 + v6);
          *buf = 136316162;
          v33 = "t56_util_callbackOnTimer";
          v34 = 1024;
          v35 = 222;
          v36 = 1024;
          v37 = v6;
          v38 = 2048;
          *v39 = v16;
          *&v39[8] = 1024;
          *&v39[10] = v17;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s:%d [%d] timer %p, running %d", buf, 0x28u);
        }

        if (!*v10)
        {
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v18 = *(gLogObjects + 480);
            v5 = v31;
          }

          else
          {
            v5 = v31;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v18 = &_os_log_default;
            v23 = &_os_log_default;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            t56_util_callbackOnTimer_cold_5();
          }

          goto LABEL_45;
        }

        if ((*(v11 + v6) & 1) == 0)
        {
          break;
        }

        ++v6;
        ++v10;
        if (v6 == 4)
        {
          v6 = 0xFFFFFFFFLL;
          goto LABEL_22;
        }
      }

      v10[4] = a3;
      v10[9] = v29;
      *(v11 + v6) = 1;
LABEL_22:
      v5 = v31;
      if (gLogObjects && gNumLogObjects >= 61)
      {
        v19 = *(gLogObjects + 480);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v19 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v28 = v30[v6];
        *buf = 136316418;
        v33 = "t56_util_callbackOnTimer";
        v34 = 1024;
        v35 = 238;
        v36 = 1024;
        v37 = v6;
        v38 = 2048;
        *v39 = v28;
        *&v39[8] = 1024;
        *&v39[10] = a2;
        v40 = 2048;
        v41 = v31;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s:%d timerID %d, timer %p, timeoutMs %u, timeoutNs %lld", buf, 0x32u);
      }

      if ((v6 & 0x80000000) == 0)
      {
        v21 = v30[v6];
        v22 = dispatch_time(0, v31);
        dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
        goto LABEL_47;
      }

      if (gLogObjects && gNumLogObjects >= 61)
      {
        v18 = *(gLogObjects + 480);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v18 = &_os_log_default;
        v24 = &_os_log_default;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        t56_util_callbackOnTimer_cold_3();
      }

LABEL_45:
    }

    v6 = 0xFFFFFFFFLL;
  }

LABEL_47:
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v25 = *(gLogObjects + 480);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v25 = &_os_log_default;
    v26 = &_os_log_default;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v33 = "t56_util_callbackOnTimer";
    v34 = 1024;
    v35 = 246;
    v36 = 1024;
    v37 = v6;
    v38 = 1024;
    *v39 = a2;
    *&v39[4] = 2048;
    *&v39[6] = v5;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s:%d timerID %d, timeoutMs %u, timeoutNs %lld", buf, 0x28u);
  }

  return v6;
}

void t56_util_cancelTimer(const void **a1, unsigned int a2)
{
  if (a1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      T56Endpoint = t56_util_ios_getT56Endpoint(a1);
      if (T56Endpoint)
      {
        v4 = T56Endpoint;
        v5 = T56Endpoint + 26;
        if (gLogObjects)
        {
          v6 = gNumLogObjects <= 60;
        }

        else
        {
          v6 = 1;
        }

        v7 = !v6;
        if (*(T56Endpoint + a2 + 208))
        {
          if (v7)
          {
            v8 = *(gLogObjects + 480);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v8 = &_os_log_default;
            v10 = &_os_log_default;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315650;
            v14 = "t56_util_cancelTimer";
            v15 = 1024;
            v16 = 263;
            v17 = 1024;
            v18 = a2;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d Cancel timerID %d", &v13, 0x18u);
          }

          *(v5 + a2) = 0;
          v11 = &v4[a2];
          v11[22] = 0;
          v11[27] = 0;
          dispatch_source_set_timer(v11[18], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        }

        else
        {
          if (v7)
          {
            v9 = *(gLogObjects + 480);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v9 = &_os_log_default;
            v12 = &_os_log_default;
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            t56_util_cancelTimer_cold_2();
          }
        }
      }
    }
  }
}

void sub_100055780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000560E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000563A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000569FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000574D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000577A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000584EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000587B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t acc_connection_getAuthInfo(uint64_t a1)
{
  if (a1)
  {
    return a1 + 48;
  }

  else
  {
    return 0;
  }
}

uint64_t acc_connection_getTypeString(uint64_t a1)
{
  result = kACCConnection_Type_Strings[11];
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3 <= 9)
    {
      return kACCConnection_Type_Strings[v3];
    }
  }

  return result;
}

uint64_t acc_connection_setPairingStatus(uint64_t a1, int a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
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
      logObjectForModule_cold_1_1();
    }
  }

  else
  {
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "acc_connection_setPairingStatus", v7, 2u);
  }

  acc_nvmInfo_setPairingStatus((a1 + 112), a2);
  if (*(a1 + 138) == 1)
  {
    platform_connectionInfo_accessoryConnectionInfoPropertyChanged(*a1);
  }

  return 1;
}

uint64_t acc_connection_getPairingStatus(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 9;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_1();
    }
  }

  else
  {
    v3 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "acc_connection_getPairingStatus", v7, 2u);
  }

  PairingStatus = acc_nvmInfo_getPairingStatus((a1 + 112));
  if (gLogObjects && gNumLogObjects >= 9)
  {
    v5 = *(gLogObjects + 64);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_1();
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = PairingStatus;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "acc_connection_getPairingStatus: %d", v7, 8u);
  }

  return PairingStatus;
}

void OUTLINED_FUNCTION_9_7(float a1)
{
  *(v3 - 96) = a1;
  *(v3 - 92) = v2;
  *(v3 - 84) = 1024;
  *(v3 - 82) = v1;
}

void OUTLINED_FUNCTION_12_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_19_5(float a1)
{
  *(v3 - 96) = a1;
  *(v3 - 92) = v1;
  *(v3 - 84) = 1024;
  *(v3 - 82) = v2;
}

void OUTLINED_FUNCTION_31_1()
{
  v4 = *v0;

  platform_notifications_propertiesDidChangeForConnectionUUID(v4, v1, v2);
}

void OUTLINED_FUNCTION_38_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_45_3()
{

  return acc_connection_endpointIterateForConnection(v0);
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1)
{
  v2 = (a1 + 208);

  return pthread_mutex_lock(v2);
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return pthread_mutex_unlock((v0 + 208));
}

const __CFDictionary *OUTLINED_FUNCTION_51()
{
  v2 = *(v0 + 128);

  return acc_properties_copyProperties(v2);
}

id _powerLogQueue()
{
  if (_powerLogQueue_onceToken != -1)
  {
    _powerLogQueue_cold_1();
  }

  v1 = _powerLogQueue_powerLogQueue;

  return v1;
}

uint64_t __platform_analytics_endpointAccessoryInfoDidChange_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
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
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#EventLogger] [#powerlog] Logging accessory connection for endpoint %@ to powerlog...", &v10, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v6 = *(gLogObjects + 48);
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __platform_analytics_endpointAccessoryInfoDidChange_block_invoke_cold_3(a1, v6);
  }

  v8 = *(a1 + 40);
  return PLLogRegisteredEvent();
}

uint64_t __platform_analytics_endpointWillBeDestroyed_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
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
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#EventLogger] [#powerlog] Logging accessory disconnection for endpoint %@ to powerlog...", &v10, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v6 = *(gLogObjects + 48);
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __platform_analytics_endpointAccessoryInfoDidChange_block_invoke_cold_3(a1, v6);
  }

  v8 = *(a1 + 40);
  return PLLogRegisteredEvent();
}

void platform_analytics_connectionPassedAuthForProtocol(CFStringRef *a1, int a2)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (!a1 || !*a1)
  {
LABEL_45:
    v9 = 0;
    goto LABEL_46;
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
  v30[3] = Copy;
  if (gLogObjects && gNumLogObjects >= 7)
  {
    v5 = *(gLogObjects + 48);
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
    v7 = v30[3];
    *buf = 136315650;
    v34 = "platform_analytics_connectionPassedAuthForProtocol";
    v35 = 2112;
    v36 = v7;
    v37 = 1024;
    v38 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#EventLogger] %s: connection %@, protocol %{coreacc:ACCEndpoint_Protocol_t}d", buf, 0x1Cu);
  }

  v28 = 0;
  _getEndpointAndAccInfoForAuthPassedEvent();
  v8 = 0;
  if (!v8)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v11 = *(gLogObjects + 48);
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
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Accessory info was nil or unknown -- will retry in a few seconds", buf, 2u);
    }

    v13 = _connectionContainsInductiveEndpoint(a1);
    if (gLogObjects)
    {
      v14 = gNumLogObjects <= 6;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (v13)
    {
      if (v15)
      {
        v16 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v16 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Performing retry in 30 seconds", buf, 2u);
      }

      v19 = dispatch_time(0, 30000000000);
      v20 = _analyticsQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __platform_analytics_connectionPassedAuthForProtocol_block_invoke;
      block[3] = &unk_1002273F8;
      block[4] = &v29;
      v27 = a2;
      dispatch_after(v19, v20, block);
    }

    else
    {
      if (v15)
      {
        v17 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v17 = &_os_log_default;
        v21 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Performing retry in 5 seconds", buf, 2u);
      }

      v22 = dispatch_time(0, 5000000000);
      v23 = _analyticsQueue();
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __platform_analytics_connectionPassedAuthForProtocol_block_invoke_167;
      v24[3] = &unk_1002273F8;
      v24[4] = &v29;
      v25 = a2;
      dispatch_after(v22, v23, v24);
    }

    goto LABEL_45;
  }

  v9 = v8;
  _logAuthPassedEvent(v30[3], a2);
  v10 = v30[3];
  if (v10)
  {
    CFRelease(v10);
    v30[3] = 0;
  }

LABEL_46:
  _Block_object_dispose(&v29, 8);
}

void sub_100059700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _logAuthPassedEvent(void *a1, int a2)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  if (!gLogObjects || gNumLogObjects < 7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "_logAuthPassedEvent";
    v11 = 2112;
    v12 = a1;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#EventLogger] %s: connection %@, protocol %{coreacc:ACCEndpoint_Protocol_t}d", buf, 0x1Cu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = ___logAuthPassedEvent_block_invoke;
  v7[3] = &__block_descriptor_36_e269_B24__0__ACCConnection_s_____CFString_i____CFString___Q____CFDictionary_____5i_i____CFData_____CFData_____CFString_____CFData____i_____B____i_________CFDictionary_BBBSB__opaque_pthread_mutex_t_q_56c____opaque_pthread_mutex_t_q_56c____opaque_pthread_mutex_t_q_56c___8_v16l;
  v8 = a2;
  if ((acc_manager_protectedConnectionCall(a1, 0, 0, v7) & 1) == 0)
  {
LABEL_13:
    _logAuthPassedEvent_cold_2();
  }
}

id _analyticsQueue()
{
  if (_analyticsQueue_onceToken != -1)
  {
    _analyticsQueue_cold_1();
  }

  v1 = _analyticsQueue_analyticsQueue;

  return v1;
}

void __platform_analytics_connectionPassedAuthForProtocol_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
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
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Calling auth passed for inductive via retry data", v6, 2u);
  }

  _logAuthPassedEvent(*(*(*(a1 + 32) + 8) + 24), *(a1 + 40));
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __platform_analytics_connectionPassedAuthForProtocol_block_invoke_167(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
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
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Calling auth passed via retry data", v6, 2u);
  }

  _logAuthPassedEvent(*(*(*(a1 + 32) + 8) + 24), *(a1 + 40));
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void _getWeekAndMonth(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v7 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v6 = [v7 components:8200 fromDate:v5];

  *a2 = [v6 weekOfYear];
  *a3 = [v6 month];
}

void ___powerLogQueue_block_invoke(id a1)
{
  _powerLogQueue_powerLogQueue = dispatch_queue_create("com.apple.accessorydMatchingPlugin.powerLogQueue", 0);

  _objc_release_x1();
}

BOOL ___logAuthPassedEvent_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    _getEndpointAndAccInfoForAuthPassedEvent();
    v8 = v7;
    v9 = 0;
    v2 = v9 != 0;
    if (!v9)
    {
LABEL_72:

      return v2;
    }

    if (gLogObjects)
    {
      v10 = gNumLogObjects < 7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v11 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a2;
      *buf = 138412290;
      v80 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Connection: %@ passed authentication", buf, 0xCu);
    }

    v83[0] = @"connectionUUID";
    v14 = *a2;
    if (*a2)
    {
      v14 = CFRetain(v14);
    }

    v77 = v14;
    v15 = NSObjectIfNotNull(v14);
    v76 = v15;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &stru_10022D360;
    }

    v84[0] = v16;
    v83[1] = @"connectionType";
    v75 = [NSString stringWithUTF8String:acc_connection_getTypeString(a2)];
    v17 = NSObjectIfNotNull(v75);
    v74 = v17;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &stru_10022D360;
    }

    v84[1] = v18;
    v83[2] = @"transportType";
    v73 = [NSString stringWithUTF8String:acc_endpoint_getTransportTypeString(v8)];
    v19 = NSObjectIfNotNull(v73);
    v72 = v19;
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = &stru_10022D360;
    }

    v84[2] = v20;
    v83[3] = @"protocol";
    v21 = *(a1 + 32);
    v22 = kACCEndpoint_Protocol_Strings[0];
    if (v21)
    {
      if (v21 > 0x12)
      {
        goto LABEL_32;
      }
    }

    else if (!v8 || (v21 = *(v8 + 28), v21 >= 0x13))
    {
LABEL_32:
      v71 = [NSString stringWithUTF8String:v22];
      v23 = NSObjectIfNotNull(v71);
      v70 = v23;
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = &stru_10022D360;
      }

      v84[3] = v24;
      v83[4] = @"accessoryName";
      v69 = [v9 objectForKeyedSubscript:kACCInfo_Name];
      v25 = NSObjectIfNotNull(v69);
      v68 = v25;
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = &stru_10022D360;
      }

      v84[4] = v26;
      v83[5] = @"accessoryManufacturer";
      v67 = [v9 objectForKeyedSubscript:kACCInfo_Manufacturer];
      v27 = NSObjectIfNotNull(v67);
      v66 = v27;
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = &stru_10022D360;
      }

      v84[5] = v28;
      v83[6] = @"accessoryModel";
      v65 = [v9 objectForKeyedSubscript:kACCInfo_Model];
      v29 = NSObjectIfNotNull(v65);
      v64 = v29;
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = &stru_10022D360;
      }

      v84[6] = v30;
      v83[7] = @"accessoryHardwareVersion";
      v63 = [v9 objectForKeyedSubscript:kACCInfo_HardwareVersion];
      v31 = NSObjectIfNotNull(v63);
      v62 = v31;
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = &stru_10022D360;
      }

      v84[7] = v32;
      v83[8] = @"accessoryFirmwareVersionActive";
      v61 = [v9 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
      v33 = NSObjectIfNotNull(v61);
      v60 = v33;
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = &stru_10022D360;
      }

      v84[8] = v34;
      v83[9] = @"accessoryFirmwareVersionPending";
      v59 = [v9 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
      v35 = NSObjectIfNotNull(v59);
      v58 = v35;
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = &stru_10022D360;
      }

      v84[9] = v36;
      v83[10] = @"accessoryVID";
      v57 = [v9 objectForKeyedSubscript:kACCInfo_VendorID];
      v37 = NSObjectIfNotNull(v57);
      v56 = v37;
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = &off_100233DE0;
      }

      v84[10] = v38;
      v83[11] = @"accessoryPID";
      v78 = v9;
      v55 = [v9 objectForKeyedSubscript:kACCInfo_ProductID];
      v39 = NSObjectIfNotNull(v55);
      v54 = v39;
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        v40 = &off_100233DE0;
      }

      v84[11] = v40;
      v83[12] = @"unlockedSinceBoot";
      v53 = [NSNumber numberWithBool:platform_system_unlockedSinceBoot()];
      v84[12] = v53;
      v83[13] = @"deviceIsPowered";
      v41 = [NSNumber numberWithBool:platform_power_getCurrentLimit(*a2) != 0];
      v84[13] = v41;
      v83[14] = @"authVersion";
      v42 = [NSNumber numberWithInt:*(a2 + 68)];
      v84[14] = v42;
      v83[15] = @"ConnectedThroughAdapter";
      v43 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(a2)];
      v84[15] = v43;
      v83[16] = @"AdapterVID";
      v44 = [NSNumber numberWithInt:acc_connection_getAdapterVID(a2)];
      v84[16] = v44;
      v83[17] = @"AdapterPID";
      v45 = [NSNumber numberWithInt:acc_connection_getAdapterPID(a2)];
      v84[17] = v45;
      v46 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:18];
      v47 = [NSMutableDictionary dictionaryWithDictionary:v46];

      v48 = acc_connection_copyProperty(a2, kCFACCProperties_Connection_PrimaryPortNumber);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v47 setObject:v48 forKey:@"lightningPrimaryPortNumber"];
      }

      CableType = platform_power_getCableType(*a2);
      if ((CableType - 1) <= 0xFFFFFFFD)
      {
        v50 = [NSNumber numberWithInt:CableType];
        [v47 setObject:v50 forKey:@"lightningCableType"];
      }

      v9 = v78;
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v51 = *(gLogObjects + 48);
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
        *buf = 138412546;
        v80 = @"com.apple.accessories.connection.passedAuth";
        v81 = 2112;
        v82 = v47;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", buf, 0x16u);
      }

      AnalyticsSendEvent();
      goto LABEL_72;
    }

    v22 = kACCEndpoint_Protocol_Strings[v21];
    goto LABEL_32;
  }

  return 0;
}

void ___analyticsQueue_block_invoke(id a1)
{
  _analyticsQueue_analyticsQueue = dispatch_queue_create("com.apple.accessorydMatchingPlugin.eventLoggerQueue", 0);

  _objc_release_x1();
}

void OUTLINED_FUNCTION_1_14(float a1)
{
  *(v4 - 128) = a1;
  *(v3 + 4) = v1;
  *(v4 - 116) = 1024;
  *(v3 + 14) = v2;
}

void OUTLINED_FUNCTION_2_20(float a1)
{
  *(v3 - 128) = a1;
  v4 = v3 - 128;
  *(v4 + 4) = v1;
  *(v3 - 116) = 1024;
  *(v4 + 14) = v2;
}

void OUTLINED_FUNCTION_12_9(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v2 - 128) = a2;
  *(v2 - 124) = a1;
  *(v2 - 116) = 2112;
}

void OUTLINED_FUNCTION_16_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_30_2(float a1)
{
  *(v3 - 112) = a1;
  *(v3 - 108) = v1;
  *(v3 - 100) = 1024;
  *(v3 - 98) = v2;
}

id OUTLINED_FUNCTION_36_2()
{

  return [v0 setObject:v1 forKey:?];
}

void OUTLINED_FUNCTION_43_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, (v5 - 128), 8u);
}

id OUTLINED_FUNCTION_44_4()
{

  return [v1 setObject:v0 forKey:?];
}

void acc_protocolParser_iAP2_run(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 4)
  {
    v41 = v3;
    v42 = v4;
    v8 = *(a2 + 8);
    v9 = *v8;
    if (*v8 <= 4)
    {
      if (v9 <= 1)
      {
        if (!v9)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v15 = *(gLogObjects + 120);
          }

          else
          {
            v15 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP2_run_cold_29();
          }

          v22 = *a3;
          v10 = v22 == 255;
          *(v8 + 6) += v22;
          goto LABEL_170;
        }

        v10 = *v8;
        if (v9 == 1)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v14 = *(gLogObjects + 120);
          }

          else
          {
            v14 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP2_run_cold_27();
          }

          v23 = *a3;
          if (v23 == 90)
          {
            v10 = 2;
          }

          else
          {
            v10 = 12;
          }

          *(v8 + 6) += v23;
        }

        goto LABEL_124;
      }

      if (v9 == 2)
      {
        if (gLogObjects && gNumLogObjects >= 16)
        {
          v19 = *(gLogObjects + 120);
        }

        else
        {
          v19 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP2_run_cold_25();
        }

        *(v8 + 4) = *a3 << 8;
        *(v8 + 6) += *a3;
        v10 = 3;
        goto LABEL_170;
      }

      if (v9 != 3)
      {
        v10 = *v8;
        if (v9 == 4)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v12 = *(gLogObjects + 120);
          }

          else
          {
            v12 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP2_run_cold_17();
          }

          *(v8 + 6) += *a3;
          v10 = 5;
          goto LABEL_170;
        }

        goto LABEL_124;
      }

      if (gLogObjects && gNumLogObjects >= 16)
      {
        v16 = *(gLogObjects + 120);
      }

      else
      {
        v16 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        acc_protocolParser_iAP2_run_cold_19();
      }

      v24 = *(v8 + 4) | *a3;
      *(v8 + 4) = v24;
      if (v24 >= 9u)
      {
        *(v8 + 16) = v24 - 9;
        if (gLogObjects && gNumLogObjects >= 16)
        {
          v25 = *(gLogObjects + 120);
        }

        else
        {
          v25 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP2_run_cold_21((v8 + 4), v25);
        }

        if (gLogObjects && gNumLogObjects >= 16)
        {
          v34 = *(gLogObjects + 120);
        }

        else
        {
          v34 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP2_run_cold_23((v8 + 16), v34);
        }

        *(v8 + 6) += *a3;
        v10 = 4;
        goto LABEL_170;
      }
    }

    else
    {
      if (v9 <= 7)
      {
        if (v9 == 5)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v20 = *(gLogObjects + 120);
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
            acc_protocolParser_iAP2_run_cold_15();
          }

          *(v8 + 6) += *a3;
          v10 = 6;
          goto LABEL_170;
        }

        if (v9 == 6)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v17 = *(gLogObjects + 120);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP2_run_cold_13();
          }

          *(v8 + 6) += *a3;
          v10 = 7;
          goto LABEL_170;
        }

        v10 = *v8;
        if (v9 == 7)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v11 = *(gLogObjects + 120);
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
            acc_protocolParser_iAP2_run_cold_11();
          }

          *(v8 + 6) += *a3;
          v10 = 8;
          goto LABEL_170;
        }

LABEL_124:
        if (v9 != 12 && v10 == 12)
        {
          ++*(a1 + 24);
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v33 = *(gLogObjects + 120);
          }

          else
          {
            v33 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP2_run_cold_31();
          }

          v10 = 12;
        }

        goto LABEL_170;
      }

      if (v9 == 8)
      {
        if (gLogObjects && gNumLogObjects >= 16)
        {
          v21 = *(gLogObjects + 120);
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
          acc_protocolParser_iAP2_run_cold_8();
        }

        if (*(v8 + 6) == -*a3)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v31 = *(gLogObjects + 120);
          }

          else
          {
            v31 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "iAP2 header checksum validated!", v40, 2u);
          }

          if (*(v8 + 16) == 1)
          {
            v10 = 10;
            goto LABEL_170;
          }

          if (*(v8 + 16))
          {
            v10 = 9;
            goto LABEL_170;
          }

          *(a1 + 28) = *a2;
          v35 = logObjectForModule_13();
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
LABEL_169:
            v10 = 11;
LABEL_170:
            *v8 = v10;
            return;
          }

          *v39 = 0;
          v36 = v39;
LABEL_168:
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "iAP2 detected!", v36, 2u);
          goto LABEL_169;
        }
      }

      else if (v9 == 9)
      {
        if (gLogObjects && gNumLogObjects >= 16)
        {
          v18 = *(gLogObjects + 120);
        }

        else
        {
          v18 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP2_run_cold_6();
        }

        v26 = *(v8 + 8);
        if (!v26)
        {
          *(v8 + 8) = a3;
          LOWORD(v26) = a3;
        }

        v27 = *(v8 + 16);
        v28 = v27 >= 2;
        v29 = v27 - 2;
        if (v28)
        {
          if (v29 == (a3 - v26))
          {
            v10 = 10;
          }

          else
          {
            v10 = 9;
          }

          *(v8 + 18) += *a3;
          goto LABEL_170;
        }
      }

      else
      {
        v10 = *v8;
        if (v9 != 10)
        {
          goto LABEL_124;
        }

        if (gLogObjects && gNumLogObjects >= 16)
        {
          v13 = *(gLogObjects + 120);
        }

        else
        {
          v13 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP2_run_cold_2();
        }

        if (*(v8 + 18) == -*a3)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v30 = *(gLogObjects + 120);
          }

          else
          {
            v30 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "iAP2 payload checksum validated!", buf, 2u);
          }

          *(a1 + 28) = *a2;
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v35 = *(gLogObjects + 120);
          }

          else
          {
            v35 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            goto LABEL_169;
          }

          v37 = 0;
          v36 = &v37;
          goto LABEL_168;
        }
      }
    }

    v10 = 12;
    goto LABEL_124;
  }
}

void *logObjectForModule_13()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 16;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    return *(gLogObjects + 120);
  }

  v1 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v1;
}

void *logObjectForModule_14()
{
  v0 = gLogObjects;
  v1 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 39)
  {
    return *(gLogObjects + 304);
  }

  v2 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_0(v0, v1, v3);
  }

  return v2;
}

CFStringRef OUTLINED_FUNCTION_8_8()
{

  return CFStringCreateWithCString(v1, v0, 0x8000100u);
}

const void *platform_systemInfo_copySystemName()
{
  v0 = MGGetStringAnswer();
  CFRetain(v0);
  return v0;
}

const void *platform_systemInfo_copyBluetoothMACAddress()
{
  v0 = MGGetStringAnswer();
  CFRetain(v0);
  return v0;
}

id _isDeviceClass(void *a1)
{
  v1 = a1;
  v2 = systemInfo_copyDeviceClass();
  v3 = [v2 isEqualToString:v1];

  return v3;
}

BOOL platform_systemInfo_isApplePencilGen1Supported()
{
  result = 0;
  if (MGGetBoolAnswer())
  {
    v0 = MGCopyAnswer();
    if ((MGGetBoolAnswer() & 1) != 0 || CFStringCompare(v0, @"iPad13,20", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad13,21", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad15,7", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad15,8", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad13,18", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad13,19", 0) == kCFCompareEqualTo)
    {
      return 1;
    }
  }

  return result;
}

uint64_t platform_systemInfo_deviceType()
{
  if (_isDeviceClass(@"Watch"))
  {
    return 4;
  }

  if (_isDeviceClass(@"iPod"))
  {
    return 2;
  }

  if (_isDeviceClass(@"iPad"))
  {
    return 3;
  }

  if (_isDeviceClass(@"iPhone"))
  {
    return 1;
  }

  if (_isDeviceClass(@"AppleTV"))
  {
    return 5;
  }

  return 0;
}

uint64_t iAP2LinkRunLoopCreate(int a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, int a5, unsigned int a6, __int16 a7, uint64_t a8)
{
  if (!a8)
  {
    iAP2LinkRunLoopCreate_cold_2();
  }

  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *a8 = a8;
  v10 = a8 + 96;
  *(a8 + 16) = a2;
  *(a8 + 24) = iAP2LinkCreate(a1, a8, a3, a4, a5, a6, a7, (a8 + 96));
  BuffSize = iAP2LinkGetBuffSize(a6);
  v12 = *(a8 + 24);
  if (!v12)
  {
    iAP2LinkRunLoopCreate_cold_1();
  }

  *(a8 + 8) = v10 + BuffSize;
  iAP2LinkSetUseiAP2LinkRunLoop(v12);
  iAP2LinkStart(*(a8 + 24));
  iAP2LinkRunLoopInitImplementation(a8);
  return a8;
}

void iAP2LinkRunLoopShuttingDown(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 44) = 1;
    iAP2LinkShuttingDown(*(a1 + 24));
  }
}

void iAP2LinkRunLoopDelete(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 2) != 0)
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
      v3 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v3 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "iAP2LinkRunLoopDelete";
      v8 = 1024;
      v9 = 293;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "entering %s:%d", &v6, 0x12u);
    }
  }

  if (a1)
  {
    *(a1 + 44) = 1;
    iAP2LinkRunLoopInitImplementation(a1);
    iAP2LinkDelete(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  else if (_iAP2LogEnableMask)
  {
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "iAP2LinkRunLoopDelete";
      v8 = 1024;
      v9 = 303;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d NULL linkRunLoop!", &v6, 0x12u);
    }
  }
}

void iAP2LinkRunLoopTimeout(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && (*(a1 + 44) & 1) == 0)
  {
    if (a3 > 12)
    {
      if (a3 == 13)
      {
        v4 = 32;
      }

      else
      {
        if (a3 != 26)
        {
          return;
        }

        v4 = 64;
      }
    }

    else if (a3 == 11)
    {
      v4 = 128;
    }

    else
    {
      if (a3 != 12)
      {
        return;
      }

      v4 = 16;
    }

    iAP2LinkRunLoopSetEventMaskBit(a1, v4);

    iAP2LinkRunLoopSignal(a1, 0, 0);
  }
}

void iAP2LinkRunLoopAttached(uint64_t a1)
{
  if (a1)
  {
    iAP2LinkRunLoopSetEventMaskBit(a1, 1);

    iAP2LinkRunLoopSignal(a1, 0, 0);
  }
}

void iAP2LinkRunLoopDetached(uint64_t a1)
{
  if (a1)
  {
    iAP2LinkRunLoopSetEventMaskBit(a1, 2);

    iAP2LinkRunLoopSignal(a1, 0, 0);
  }
}

uint64_t iAP2LinkRunLoopHandleSuspend(uint64_t result)
{
  if (result)
  {
    v1 = result;
    iAP2LinkRunLoopSetEventMaskBit(result, 4);

    return iAP2LinkRunLoopRunOnce(v1, 0, 0);
  }

  return result;
}

uint64_t iAP2LinkRunLoopHandleResume(uint64_t result)
{
  if (result)
  {
    v1 = result;
    iAP2LinkRunLoopSetEventMaskBit(result, 8);

    return iAP2LinkRunLoopRunOnce(v1, 0, 0);
  }

  return result;
}

void *genericMFi_endpoint_create(uint64_t *a1)
{
  if (!a1)
  {
    genericMFi_endpoint_create_cold_4(buf);
LABEL_33:
    v3 = *buf;
    goto LABEL_20;
  }

  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x10E004004452AF6uLL);
  if (!v2)
  {
    genericMFi_endpoint_create_cold_3(buf);
    goto LABEL_33;
  }

  v3 = v2;
  *v2 = a1;
  v5 = a1 + 2;
  v4 = a1[2];
  if (v4)
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, v4);
  }

  else
  {
    Copy = 0;
  }

  v3[1] = Copy;
  v7 = a1[1];
  if (v7)
  {
    v8 = CFStringCreateCopy(kCFAllocatorDefault, v7);
  }

  else
  {
    v8 = 0;
  }

  v3[2] = v8;
  AuthStatus = acc_connection_getAuthStatus(*a1, 1u);
  *(v3 + 10) = AuthStatus;
  if (!AuthStatus)
  {
    *(v3 + 10) = acc_connection_getAuthStatus(*a1, 0);
  }

  if (gLogObjects && gNumLogObjects >= 62)
  {
    v10 = *(gLogObjects + 488);
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
    v11 = v3[1];
    v12 = *(v3 + 10);
    *buf = 136315650;
    *&buf[4] = "genericMFi_endpoint_create";
    v26 = 2112;
    v27 = v11;
    v28 = 1024;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@, authStatus %{coreacc:ACCAuthInfo_Status_t}d", buf, 0x1Cu);
  }

  v13 = dispatch_queue_create("GenericMFi", 0);
  v3[4] = v13;
  if (!v13)
  {
    genericMFi_endpoint_create_cold_2(v3, v5, buf);
    return *buf;
  }

  dispatch_set_context(v13, v3);
  dispatch_set_finalizer_f(v3[4], _genericMFi_endpoint_dispatchQueueFinalizer);
  v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3[4]);
  v3[12] = v14;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = __genericMFi_endpoint_create_block_invoke;
  handler[3] = &__block_descriptor_tmp_5;
  handler[4] = v3;
  dispatch_source_set_event_handler(v14, handler);
  dispatch_source_set_timer(v3[12], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_activate(v3[12]);
  acc_platform_packetLogging_logEvent(*v3, "ATTACH", "GenericMFi attached!", v15, v16, v17, v18, v19, v23);
LABEL_20:
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v20 = *(gLogObjects + 488);
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v21 = v3[1];
    }

    else
    {
      v21 = 0;
    }

    *buf = 136315394;
    *&buf[4] = "genericMFi_endpoint_create";
    v26 = 2112;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Created GenericMFi endpoint!!! %@", buf, 0x16u);
  }

  return v3;
}

void _genericMFi_endpoint_dispatchQueueFinalizer(void *a1)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v2 = *(gLogObjects + 488);
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
      v3 = a1[1];
      v11 = 136315394;
      v12 = "_genericMFi_endpoint_dispatchQueueFinalizer";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: %@", &v11, 0x16u);
    }

    a1[4] = 0;
    v4 = a1[8];
    if (v4)
    {
      CFRelease(v4);
      a1[8] = 0;
    }

    v5 = a1[9];
    if (v5)
    {
      CFRelease(v5);
      a1[9] = 0;
    }

    v6 = a1[6];
    if (v6)
    {
      CFRelease(v6);
      a1[6] = 0;
    }

    v7 = a1[7];
    if (v7)
    {
      CFRelease(v7);
      a1[7] = 0;
    }

    v8 = a1[10];
    if (v8)
    {
      CFRelease(v8);
      a1[10] = 0;
    }

    v9 = a1[1];
    if (v9)
    {
      CFRelease(v9);
      a1[1] = 0;
    }

    v10 = a1[2];
    if (v10)
    {
      CFRelease(v10);
    }

    free(a1);
  }
}

uint64_t __genericMFi_endpoint_create_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v2 = *(gLogObjects + 488);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    v5 = 136315394;
    v6 = "genericMFi_endpoint_create_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: authTimer: timeout!!!, authStatus %{coreacc:ACCAuthInfo_Status_t}d", &v5, 0x12u);
  }

  result = *(a1 + 32);
  if (!*(result + 40))
  {
    return genericMFi_endpoint_authStatusChanged(result, 3, 0, 1);
  }

  return result;
}

void __genericMFi_endpoint_publish_block_invoke(id a1)
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v1 = *(gLogObjects + 488);
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
    v4 = 136315138;
    v5 = "genericMFi_endpoint_publish_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: CFNotificationCenterAddObserver", &v4, 0xCu);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _genericMFi_endpoint_handlePropertiesDidChange, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v3, 0, _genericMFi_endpoint_handleAuthStatusDidChange, CFACCTransportPlugin_AuthStatusDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void _genericMFi_endpoint_handlePropertiesDidChange(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v7 = *(gLogObjects + 488);
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
    *buf = 136315650;
    v20 = "_genericMFi_endpoint_handlePropertiesDidChange";
    v21 = 2112;
    v22 = a3;
    v23 = 2112;
    v24 = a5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Notification received %@, userInfo: %@", buf, 0x20u);
  }

  v8 = CFEqual(a3, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification);
  if (a5)
  {
    if (v8)
    {
      Value = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID);
      v10 = CFDictionaryGetValue(a5, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID);
      if (Value)
      {
        v11 = v10;
        v12 = CFGetTypeID(Value);
        if (v12 == CFStringGetTypeID() && v11 != 0)
        {
          v14 = CFGetTypeID(v11);
          if (v14 == CFStringGetTypeID())
          {
            EndpointWithUUID = acc_manager_getEndpointWithUUID(v11);
            if (EndpointWithUUID)
            {
              if (*(EndpointWithUUID + 7) == 18)
              {
                v16 = EndpointWithUUID[7];
                if (v16)
                {
                  CFRetain(a5);
                  v17 = *(v16 + 32);
                  v18[0] = _NSConcreteStackBlock;
                  v18[1] = 0x40000000;
                  v18[2] = ___genericMFi_endpoint_handlePropertiesDidChange_block_invoke;
                  v18[3] = &__block_descriptor_tmp_62;
                  v18[4] = a5;
                  v18[5] = v16;
                  dispatch_async(v17, v18);
                }
              }
            }
          }
        }
      }
    }
  }
}

void _genericMFi_endpoint_handleAuthStatusDidChange(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v7 = *(gLogObjects + 488);
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
    *buf = 136315650;
    v42 = "_genericMFi_endpoint_handleAuthStatusDidChange";
    v43 = 2112;
    *v44 = a3;
    *&v44[8] = 2112;
    *&v44[10] = a5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Notification received %@, userInfo: %@", buf, 0x20u);
  }

  v8 = CFEqual(a3, CFACCTransportPlugin_AuthStatusDidChangeNotification);
  if (a5)
  {
    if (v8)
    {
      Value = CFDictionaryGetValue(a5, CFACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionUUID);
      v10 = CFDictionaryGetValue(a5, CFACCTransportPlugin_AuthStatusDidChangeNotification_AuthStatusNew);
      valuePtr = 0;
      CFNumberGetValue(v10, kCFNumberSInt8Type, &valuePtr);
      if (Value)
      {
        v11 = valuePtr;
        ConnectionWithUUID = acc_manager_getConnectionWithUUID(Value);
        v13 = acc_connection_copyEndpointUUIDs(ConnectionWithUUID);
        NumEndpoints = acc_connection_getNumEndpoints(ConnectionWithUUID);
        if (v13)
        {
          v15 = NumEndpoints;
          if (NumEndpoints)
          {
            if (NumEndpoints != CFSetGetCount(v13))
            {
LABEL_47:
              CFRelease(v13);
              return;
            }

            if (gLogObjects && gNumLogObjects >= 10)
            {
              v16 = *(gLogObjects + 72);
            }

            else
            {
              v16 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            v36 = v11;
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            if (v17)
            {
              *buf = 136315394;
              v42 = "_genericMFi_endpoint_handleAuthStatusDidChange";
              v43 = 2048;
              *v44 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Have %ld endpoints to parse", buf, 0x16u);
            }

            v37 = v32;
            __chkstk_darwin(v17);
            v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
            memset(v19, 170, v18);
            v38 = v13;
            CFSetGetValues(v13, v19);
            if (v15 >= 1)
            {
              v21 = 0;
              v22 = 1;
              *&v20 = 134218240;
              v35 = v20;
              *&v20 = 136315906;
              v39 = v20;
              *&v20 = 136315650;
              v34 = v20;
              do
              {
                v23 = *&v19[8 * v21];
                v24 = gLogObjects;
                v25 = gNumLogObjects;
                if (gLogObjects)
                {
                  v26 = gNumLogObjects < 10;
                }

                else
                {
                  v26 = 1;
                }

                if (v26)
                {
                  v27 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v35;
                    v42 = v24;
                    v43 = 1024;
                    *v44 = v25;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    v27 = &_os_log_default;
                  }
                }

                else
                {
                  v27 = *(gLogObjects + 72);
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v39;
                  v42 = "_genericMFi_endpoint_handleAuthStatusDidChange";
                  v43 = 1024;
                  *v44 = v22 - 1;
                  *&v44[4] = 2048;
                  *&v44[6] = v15;
                  *&v44[14] = 2112;
                  *&v44[16] = v23;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s: [%u / %ld] endpointUUID %@", buf, 0x26u);
                }

                EndpointWithUUID = acc_manager_getEndpointWithUUID(v23);
                if (EndpointWithUUID)
                {
                  v29 = EndpointWithUUID;
                  if (*(EndpointWithUUID + 7) == 18)
                  {
                    if (EndpointWithUUID[7])
                    {
                      v30 = gLogObjects;
                      if (gLogObjects && gNumLogObjects >= 10)
                      {
                        v31 = *(gLogObjects + 72);
                      }

                      else
                      {
                        v33 = gNumLogObjects;
                        v31 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          *buf = v35;
                          v42 = v30;
                          v43 = 1024;
                          *v44 = v33;
                          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                          v31 = &_os_log_default;
                        }
                      }

                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = v34;
                        v42 = "_genericMFi_endpoint_handleAuthStatusDidChange";
                        v43 = 2112;
                        *v44 = v23;
                        *&v44[8] = 1024;
                        *&v44[10] = v36;
                        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s: Found GenericMFi endpointUUID %@, call genericMFi_endpoint_authStatusChanged, authStatus %{coreacc:ACCAuthInfo_Status_t}d", buf, 0x1Cu);
                      }

                      genericMFi_endpoint_authStatusChanged(v29[7], v36, 0, 0);
                    }
                  }
                }

                v21 = v22;
                v26 = v15 > v22++;
              }

              while (v26);
            }

            v13 = v38;
          }
        }

        if (!v13)
        {
          return;
        }

        goto LABEL_47;
      }
    }
  }
}

void __genericMFi_endpoint_authStatusChanged_block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  if (*(v3 + 40) != v4 || *(a1 + 60) == 1)
  {
    *(v3 + 40) = v4;
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v7 = *(gLogObjects + 488);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v20 = 134218240;
        *&v20[4] = v5;
        v21 = 1024;
        LODWORD(v22) = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v20, 0x12u);
        v3 = *v2;
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v3 + 8);
      v15 = *(v3 + 40);
      v16 = *(a1 + 60);
      *v20 = 136315906;
      *&v20[4] = "genericMFi_endpoint_authStatusChanged_block_invoke";
      v21 = 2112;
      v22 = v14;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@, new authStatus %{coreacc:ACCAuthInfo_Status_t}d, onPublish %d", v20, 0x22u);
      v3 = *(a1 + 32);
    }

    v17 = *(v3 + 40);
    if (v17)
    {
      if (v17 == 2)
      {
        platform_analytics_connectionPassedAuthForProtocol(*(a1 + 40), 18);
      }

      else
      {
        platform_analytics_connectionAuthUnsuccessfulForProtocol(*(a1 + 40), v17, 0x12u);
      }
    }

    v18 = *v2;
    v19 = *(*v2 + 40);
    switch(v19)
    {
      case 1:
        acc_platform_packetLogging_logEvent(*v18, "AUTH FAILED", "GenericMFi accessory authentication Failed!", v9, v10, v11, v12, v13, *v20);
        break;
      case 3:
        acc_platform_packetLogging_logEvent(*v18, "AUTH TIMEOUT", "GenericMFi accessory authentication Timed Out!", v9, v10, v11, v12, v13, *v20);
        if (*(a1 + 61) == 1)
        {
          acc_connection_setAuthStatus(**(a1 + 48), 1, *(a1 + 56));
        }

        break;
      case 2:
        __genericMFi_endpoint_authStatusChanged_block_invoke_cold_1(v18, v2, v8, v9, v10, v11, v12, v13);
        break;
    }
  }
}

void ___genericMFi_endpoint_handlePropertiesDidChange_block_invoke(uint64_t a1)
{
  v1 = a1;
  Value = CFDictionaryGetValue(*(a1 + 32), CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld);
  v3 = CFDictionaryGetValue(*(v1 + 32), CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew);
  v4 = CFEqual(Value, v3);
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v5 = *(gLogObjects + 488);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v45 = "_genericMFi_endpoint_handlePropertiesDidChange_block_invoke";
    v46 = 1024;
    v47 = v4 != 0;
    v48 = 2112;
    v49 = v3;
    v50 = 2112;
    v51 = Value;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: _isEqual %d, new %@, old %@", buf, 0x26u);
  }

  if (!v4)
  {
    v42 = v1;
    if (Value)
    {
      Count = CFDictionaryGetCount(Value);
      Mutable = &v39;
      v7 = __chkstk_darwin(Count);
      v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v7)
      {
        memset(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v8);
        CFDictionaryGetKeysAndValues(Value, v9, 0);
        if (Count >= 1)
        {
          v11 = 0;
          *&v10 = 136316162;
          v41 = v10;
          *&v10 = 136315650;
          v39 = v10;
          *&v10 = 134218240;
          v40 = v10;
          do
          {
            if (v3)
            {
              v12 = CFDictionaryGetValue(v3, v9[v11]);
            }

            else
            {
              v12 = 0;
            }

            v13 = CFDictionaryGetValue(Value, v9[v11]);
            v14 = gLogObjects;
            v15 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 62)
            {
              v16 = *(gLogObjects + 488);
            }

            else
            {
              v16 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v40;
                v45 = v14;
                v46 = 1024;
                v47 = v15;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v20 = v9[v11];
              *buf = v41;
              v45 = "_genericMFi_endpoint_handlePropertiesDidChange_block_invoke";
              v46 = 1024;
              v47 = v11;
              v48 = 2112;
              v49 = v20;
              v50 = 2112;
              v51 = v13;
              v52 = 2112;
              v53 = v12;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: [%d] %@, old %@, new %@", buf, 0x30u);
              if (!v12)
              {
LABEL_23:
                if (v13)
                {
                  v17 = gLogObjects;
                  v18 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 62)
                  {
                    v19 = *(gLogObjects + 488);
                  }

                  else
                  {
                    v19 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v40;
                      v45 = v17;
                      v46 = 1024;
                      v47 = v18;
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }
                  }

                  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                  {
                    v21 = v9[v11];
                    *buf = v39;
                    v45 = "_genericMFi_endpoint_handlePropertiesDidChange_block_invoke";
                    v46 = 1024;
                    v47 = v11;
                    v48 = 2112;
                    v49 = v21;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: [%d] reset %@", buf, 0x1Cu);
                  }

                  v22 = v42;
                  _genericMFi_endpoint_resetPropertyArray(*(v42 + 40), v9[v11]);
                  _genericMFi_endpoint_updatePropertyInfo(*(v22 + 40), v9[v11]);
                }
              }
            }

            else if (!v12)
            {
              goto LABEL_23;
            }

            ++v11;
          }

          while (Count != v11);
        }
      }

      else
      {
        CFDictionaryGetKeysAndValues(Value, (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)), 0);
      }

      v1 = v42;
    }

    if (v3)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v23 = CFDictionaryGetCount(v3);
      *&v41 = &v39;
      v24 = __chkstk_darwin(v23);
      v26 = (&v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v24)
      {
        memset(&v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v25);
        CFDictionaryGetKeysAndValues(v3, v26, 0);
        if (v23 >= 1)
        {
          v28 = 0;
          *&v27 = 136316162;
          v40 = v27;
          *&v27 = 134218240;
          v39 = v27;
          do
          {
            v29 = CFDictionaryGetValue(v3, v26[v28]);
            if (Value)
            {
              v30 = CFDictionaryGetValue(Value, v26[v28]);
            }

            else
            {
              v30 = 0;
            }

            v31 = gLogObjects;
            v32 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 62)
            {
              v33 = *(gLogObjects + 488);
            }

            else
            {
              v33 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v39;
                v45 = v31;
                v46 = 1024;
                v47 = v32;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = v26[v28];
              *buf = v40;
              v45 = "_genericMFi_endpoint_handlePropertiesDidChange_block_invoke";
              v46 = 1024;
              v47 = v28;
              v48 = 2112;
              v49 = v34;
              v50 = 2112;
              v51 = v30;
              v52 = 2112;
              v53 = v29;
              _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s: [%d] %@, old %@, new %@", buf, 0x30u);
              if (v30)
              {
                goto LABEL_53;
              }
            }

            else if (v30)
            {
              goto LABEL_53;
            }

            if (v29)
            {
              goto LABEL_54;
            }

LABEL_53:
            if (!CFEqual(v29, v30))
            {
LABEL_54:
              CFDictionaryAddValue(Mutable, v26[v28], v29);
            }

            ++v28;
          }

          while (v23 != v28);
        }
      }

      else
      {
        CFDictionaryGetKeysAndValues(v3, (&v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0)), 0);
      }

      if (gLogObjects && gNumLogObjects >= 62)
      {
        v35 = *(gLogObjects + 488);
        v1 = v42;
      }

      else
      {
        v35 = &_os_log_default;
        v36 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v1 = v42;
        if (v36)
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v37 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
      v38 = Mutable;
      if (v37)
      {
        ___genericMFi_endpoint_handlePropertiesDidChange_block_invoke_cold_3();
      }

      if (CFDictionaryGetCount(v38))
      {
        genericMFi_endpoint_propertiesDidChange(*(v1 + 40), v38);
      }

      CFRelease(v38);
    }
  }

  CFRelease(*(v1 + 32));
}

void _genericMFi_endpoint_initFeature(uint64_t a1, unsigned int a2)
{
  if (a1 && a2 <= 2 && *(a1 + 8 * a2 + 104))
  {
    _genericMFi_endpoint_initFeature_cold_1(a1);
  }

  else if (a2 >= 2)
  {

    genericMFi_appLaunch_create(a1);
  }
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31)
{
  a31 = 0;
  a30 = 0;
  a25 = 0;
  a26 = 0;

  return TLV8GetNext(v32, v31, &a30, &a26, &a25, &a31);
}

uint64_t OUTLINED_FUNCTION_56_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  a25 = -1431655766;

  return TLV8GetUInt64(v26, v25, 2, &a25, 0);
}

CFStringRef OUTLINED_FUNCTION_57_3(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{

  return CFStringCreateWithBytes(a1, a2, a3, 0x8000100u, 0);
}

void OUTLINED_FUNCTION_64_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x1Cu);
}

CFComparisonResult OUTLINED_FUNCTION_65_0(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

void *OUTLINED_FUNCTION_71_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char __b)
{

  return memset(&__b, 170, 0x150uLL);
}

BOOL OUTLINED_FUNCTION_75_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

void _iAP2TimeCancelCallback(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      dispatch_source_set_timer(v1, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

void _iAP2TimeCleanupCallback(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = v2;
      dispatch_source_cancel(v2);
      v2 = v3;
      *(a1 + 24) = 0;
    }
  }
}

void *logObjectForModule_15()
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    return *(gLogObjects + 368);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
  }

  return v0;
}

uint64_t _convertManeuverStateTypeForFunc(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 4)
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
      _convertManeuverStateTypeForFunc_cold_2();
    }

    return -1;
  }

  return v1;
}

uint64_t _convertManeuverTypeForFunc(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 0x36)
  {
    v2 = logObjectForModule_15();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _convertManeuverTypeForFunc_cold_1();
    }

    return -1;
  }

  return v1;
}

uint64_t _convertDrivingSideTypeForFunc(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 47)
      {
        v1 = *(gLogObjects + 368);
      }

      else
      {
        v1 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }
      }

      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        _convertDrivingSideTypeForFunc_cold_2();
      }

      return 255;
    }
  }

  return result;
}

uint64_t _convertJunctionTypeForFunc(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 47)
      {
        v1 = *(gLogObjects + 368);
      }

      else
      {
        v1 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }
      }

      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        _convertJunctionTypeForFunc_cold_2();
      }

      return 255;
    }
  }

  return result;
}

uint64_t _convertLaneInfoStatusTypeForFunc(unsigned int a1)
{
  if (a1 >= 3)
  {
    return -1;
  }

  else
  {
    return a1;
  }
}

uint64_t _checkIdentificationInfo_2(uint64_t a1)
{
  v8 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgNavigationMainList, 5u, &v8);
  v3 = v2;
  if (v8 != 1 || v2 == 0)
  {
    v7 = 0;
    v5 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgRoadObjectDetectionMainList, 3u, &v7);
    if (v7 == 1)
    {
      v3 = 1;
      iap2_identification_rejectMsgID(a1, 3328, 1, 1u);
      iap2_identification_rejectMsgID(a1, 3329, 0, 1u);
      iap2_identification_rejectMsgID(a1, 3330, 1, 1u);
    }

    else
    {
      v3 = v5;
      if (v8 == 1 && !v5)
      {
        iap2_features_createFeature(a1, 0x11u);
        iap2_identification_setIdentifiedForFeature(a1);
      }
    }
  }

  return v3;
}

void _handleIdentificationRejection(uint64_t a1)
{
  Feature = iap2_feature_getFeature(a1, 0x11u);
  if (Feature)
  {
    v2 = Feature;
    v3 = *Feature;
    if (v3)
    {
      CFRelease(v3);
      *v2 = 0;
    }

    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
      v2[1] = 0;
    }
  }
}

uint64_t _parseIdentificationParams_0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (!a1)
  {
    _parseIdentificationParams_cold_6_0(buf);
    return buf[0];
  }

  ParamID = iAP2MsgGetParamID(a3);
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v7 = *(gLogObjects + 368);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v34) = ParamID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "parsing identification paramID 0x%X", buf, 8u);
  }

  if (ParamID == 33)
  {
    v19 = a1;
    v20 = 33;
    v21 = 1;
LABEL_114:
    iap2_identification_addRejectParam(v19, v20, v21);
    return 0;
  }

  if (ParamID != 30)
  {
    return 0;
  }

  v32 = -1;
  if (iAP2MsgGetParamID(a3) != 30)
  {
    _parseIdentificationParams_cold_2_0(buf);
    v17 = *buf;
    goto LABEL_113;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  if (!FirstParam)
  {
    v17 = 2;
LABEL_113:
    v19 = a1;
    v20 = 30;
    v21 = v17;
    goto LABEL_114;
  }

  NextParam = FirstParam;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  cf = 0;
  v29 = 0;
  do
  {
    v14 = iAP2MsgGetParamID(NextParam);
    if (v14 <= 3)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
          if (!v32)
          {
            if (v12)
            {
              CFRelease(v12);
            }

            v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
          }
        }

        else
        {
          *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
          if (!v32)
          {
            if (v13)
            {
              CFRelease(v13);
            }

            v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
          }
        }
      }

      else if (v14)
      {
        if (v14 == 1)
        {
          DataAsString = iAP2MsgGetDataAsString(NextParam, &v32);
          if (!v32)
          {
            v16 = DataAsString;
            if (v11)
            {
              CFRelease(v11);
            }

            v11 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
          }
        }
      }

      else
      {
        *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
        if (!v32)
        {
          if (v10)
          {
            CFRelease(v10);
          }

          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
        }
      }
    }

    else if (v14 <= 5)
    {
      if (v14 == 4)
      {
        *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
        if (!v32)
        {
          if (v28)
          {
            CFRelease(v28);
          }

          v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
        }
      }

      else
      {
        *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
        if (!v32)
        {
          if (v29)
          {
            CFRelease(v29);
          }

          v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
        }
      }
    }

    else
    {
      switch(v14)
      {
        case 6:
          *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
          if (!v32)
          {
            if (v30)
            {
              CFRelease(v30);
            }

            v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
          }

          break;
        case 7:
          *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
          if (!v32)
          {
            if (v27)
            {
              CFRelease(v27);
            }

            v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
          }

          break;
        case 8:
          *buf = iAP2MsgGetDataAsU16(NextParam, &v32);
          if (!v32)
          {
            if (cf)
            {
              CFRelease(cf);
            }

            cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, buf);
          }

          break;
      }
    }

    NextParam = iAP2MsgGetNextParam(a2, a3, NextParam);
  }

  while (NextParam);
  v17 = 2;
  if (v10 && v11)
  {
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v18 = *(gLogObjects + 368);
    }

    else
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138414338;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = v12;
      v39 = 2112;
      v40 = v13;
      v41 = 2112;
      v42 = v28;
      v43 = 2112;
      v44 = v29;
      v45 = 2112;
      v46 = v30;
      v47 = 2112;
      v48 = v27;
      v49 = 2112;
      v50 = cf;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Adding Navigation Display Component %@: '%@' maxCurRoadNameLen=%@ maxDestinationRoadNameLen=%@ maxPostManeuverRoadNameLen=%@ maxManeuverDescriptionLen=%@ maxGuidanceManeuverCapacity=%@ maxLaneGuidanceDescriptionLen=%@ maxLaneGuidanceCapacityObj=%@", buf, 0x5Cu);
    }

    if (!iap2_feature_getFeature(a1, 0x11u))
    {
      iap2_features_createFeature(a1, 0x11u);
    }

    Feature = iap2_feature_getFeature(a1, 0x11u);
    if (!*Feature)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *Feature = Mutable;
      if (!Mutable)
      {
        if (gLogObjects && gNumLogObjects >= 47)
        {
          v26 = *(gLogObjects + 368);
        }

        else
        {
          v26 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          _parseIdentificationParams_cold_5_0();
        }

        v17 = 10;
        if (!v12)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      }
    }

    *buf = -21846;
    CFNumberGetValue(v10, kCFNumberSInt16Type, buf);
    if (CFDictionaryContainsKey(*Feature, v10))
    {
      CFDictionaryRemoveAllValues(*Feature);
      v17 = 3;
      if (!v12)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }

    DisplayComponentDict = platform_navigation_createDisplayComponentDict(*(a1 + 8), *buf, v11);
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt16Type, buf);
      platform_navigation_displayComponentAddMaxCurrentRoadNameLength(DisplayComponentDict, *buf);
    }

    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberSInt16Type, buf);
      platform_navigation_displayComponentAddMaxDestinationNameLength(DisplayComponentDict, *buf);
    }

    if (v28)
    {
      CFNumberGetValue(v28, kCFNumberSInt16Type, buf);
      platform_navigation_displayComponentAddMaxAfterManeuverRoadNameLength(DisplayComponentDict, *buf);
    }

    if (v29)
    {
      CFNumberGetValue(v29, kCFNumberSInt16Type, buf);
      platform_navigation_displayComponentAddManeuverDescriptionLength(DisplayComponentDict, *buf);
    }

    if (v30)
    {
      CFNumberGetValue(v30, kCFNumberSInt16Type, buf);
      platform_navigation_displayComponentAddGuidanceManeuverCapacity(DisplayComponentDict, *buf);
    }

    if (v27)
    {
      CFNumberGetValue(v27, kCFNumberSInt16Type, buf);
      platform_navigation_displayComponentAddLaneGuidanceDescriptionLength(DisplayComponentDict, *buf);
    }

    if (cf)
    {
      CFNumberGetValue(cf, kCFNumberSInt16Type, buf);
      platform_navigation_displayComponentAddLaneGuidanceCapacity(DisplayComponentDict, *buf);
    }

    CFDictionaryAddValue(*Feature, v10, DisplayComponentDict);
    if (DisplayComponentDict)
    {
      CFRelease(DisplayComponentDict);
    }

    v17 = 0;
  }

  if (v12)
  {
LABEL_97:
    CFRelease(v12);
  }

LABEL_98:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v17)
  {
    goto LABEL_113;
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_10@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v3 - 140) = a2;
  *(v3 - 136) = 1024;
  *(v3 - 134) = v2;
  *(v3 - 130) = 1024;
  *(v3 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_15@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v3 - 124) = a2;
  *(v3 - 120) = 1024;
  *(v3 - 118) = v2;
  *(v3 - 114) = 1024;
  *(v3 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t result)
{
  *(v2 - 136) = 1024;
  *(v2 - 134) = v1;
  *(v2 - 130) = 1024;
  *(v2 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t result)
{
  *(v2 - 120) = 1024;
  *(v2 - 118) = v1;
  *(v2 - 114) = 1024;
  *(v2 - 112) = result;
  return result;
}

CFNumberRef OUTLINED_FUNCTION_19_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  *(v30 - 144) = a28 / a29;

  return CFNumberCreate(v29, kCFNumberFloatType, (v30 - 144));
}

__n128 OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, uint64_t a12)
{
  result = a11;
  v13 = *(a12 + 8);
  return result;
}

CFNumberRef OUTLINED_FUNCTION_37_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char valuePtr)
{

  return CFNumberCreate(v26, kCFNumberSInt32Type, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_45_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29)
{
  a29 = v31;

  return iAP2MsgGetDataAsArrayI32(v29, &a28, &a29, 2);
}

uint64_t OUTLINED_FUNCTION_48_3()
{

  return iAP2MsgGetMsgID(v0);
}

BOOL OUTLINED_FUNCTION_50_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

CFNumberRef OUTLINED_FUNCTION_51_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char valuePtr)
{

  return CFNumberCreate(v28, kCFNumberSInt8Type, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return iAP2MsgGetMsgID(v0);
}

BOOL OUTLINED_FUNCTION_65_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_70_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

CFNumberRef OUTLINED_FUNCTION_82_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char valuePtr)
{

  return CFNumberCreate(v19, kCFNumberIntType, &valuePtr);
}

CFNumberRef OUTLINED_FUNCTION_83_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char valuePtr)
{

  return CFNumberCreate(v26, kCFNumberSInt8Type, &valuePtr);
}

void OUTLINED_FUNCTION_103(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_debug_impl(a1, v17, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_104()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

const void *OUTLINED_FUNCTION_105(void *key)
{

  return CFDictionaryGetValue(v1, key);
}

BOOL OUTLINED_FUNCTION_108()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

uint64_t acc_auth_protocol_sizeofMessageData(int a1, int a2, uint64_t a3)
{
  if ((a1 - 162) <= 5)
  {
    v6 = 1 << (a1 + 94);
    if ((v6 & 3) != 0)
    {
      v8 = 69;
      goto LABEL_69;
    }

    if ((v6 & 0xC) == 0)
    {
      v8 = 1;
      goto LABEL_69;
    }

    if (a2 <= 3)
    {
      if (a2 > 1)
      {
        if (a2 != 2)
        {
          LODWORD(v7) = 7;
          goto LABEL_61;
        }

        goto LABEL_34;
      }

      if (a2)
      {
        if (a2 == 1)
        {
LABEL_48:
          LODWORD(v7) = 0;
LABEL_61:
          if (gLogObjects && gNumLogObjects >= 55)
          {
            v13 = *(gLogObjects + 432);
          }

          else
          {
            v13 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v16 = 67109632;
            v17 = a2;
            v18 = 1024;
            v19 = a3;
            v20 = 1024;
            v21 = v7;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[AccAuth] sizeofAuthInfoData: infoType %d, encryptedInfoType %d, dataLen %d \n", &v16, 0x14u);
          }

          v8 = (v7 + 2);
          goto LABEL_69;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (a2 > 6)
      {
        switch(a2)
        {
          case 7:
            LODWORD(v7) = 84;
            goto LABEL_61;
          case 8:
            LODWORD(v7) = 132;
            goto LABEL_61;
          case 128:
            if (a3 < 7 && ((0x77u >> a3) & 1) != 0)
            {
              v7 = dword_1001C3918[a3];
            }

            else
            {
              if (gLogObjects && gNumLogObjects >= 55)
              {
                v11 = *(gLogObjects + 432);
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
                v16 = 67109120;
                v17 = a3;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[AccAuth] sizeofMessageData: unknown or unsupported encryptedInfoType(%#04x) \n", &v16, 8u);
              }

              v7 = 0;
            }

            if (gLogObjects && gNumLogObjects >= 55)
            {
              v12 = *(gLogObjects + 432);
            }

            else
            {
              v12 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              acc_auth_protocol_sizeofMessageData_cold_3(a3, v7, v12);
            }

            goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
LABEL_34:
          LODWORD(v7) = 1030;
          goto LABEL_61;
        }

LABEL_38:
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v10 = *(gLogObjects + 432);
        }

        else
        {
          v10 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v16 = 67109120;
          v17 = a2;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[AccAuth] sizeofMessageData: unknown or unsupported infoType(%#04x) \n", &v16, 8u);
        }

        goto LABEL_48;
      }
    }

    LODWORD(v7) = 36;
    goto LABEL_61;
  }

  if (a1 == 161)
  {
    v8 = 7;
  }

  else if (a1 == 160)
  {
    v16 = -1431655766;
    v8 = _acc_auth_protocol_supportedAuthTypes(1, &v16, 4u) + 6;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v9 = *(gLogObjects + 432);
    }

    else
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = a1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[AccAuth] sizeofMessageData: unknown or unsupported message(%#04x) \n", &v16, 8u);
    }

    v8 = 0;
  }

LABEL_69:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v14 = *(gLogObjects + 432);
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109888;
    v17 = a1;
    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = v8;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[AccAuth] sizeofMessageData: msgID %#04x, infoType %d, encryptedInfoType %d, messageDataLen %d \n", &v16, 0x1Au);
  }

  return v8;
}

void *logObjectForModule_16()
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    return *(gLogObjects + 432);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

uint64_t acc_auth_protocol_isRespMessage(unsigned __int8 *a1)
{
  if (a1)
  {
    v2 = *a1;
    if ((*a1 & 0xF8) != 0xA0)
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v3 = *(gLogObjects + 432);
      }

      else
      {
        v3 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v2 = 0;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *a1;
        v7[0] = 67109120;
        v7[1] = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[AccAuth] isRespMessage: invalid incoming messageID(%#04x) ! \n", v7, 8u);
        v2 = 0;
      }
    }

    if (gLogObjects && gNumLogObjects >= 55)
    {
      v5 = *(gLogObjects + 432);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      acc_auth_protocol_isRespMessage_cold_3(a1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t acc_auth_protocol_sizeofMessage(uint64_t a1, unsigned int a2, unsigned int *a3, int *a4)
{
  result = 0;
  if (!a1 || a2 < 4)
  {
    return result;
  }

  v6 = *(a1 + 3);
  if (v6 < 0)
  {
    v9 = *(a1 + 3) & 0x7F;
    if ((v6 & 0x7Fu) <= 3)
    {
      v8 = v6 & 0x7B | 4;
      if (v8 <= a2)
      {
        v7 = 0;
        if ((*(a1 + 3) & 0x7F) != 0)
        {
          v10 = (a1 + 4);
          do
          {
            v11 = *v10++;
            v7 = v11 | (v7 << 8);
            --v9;
          }

          while (v9);
        }

        result = v7 + v8;
        if (result <= a2)
        {
          goto LABEL_6;
        }
      }
    }

    return 0;
  }

  v7 = *(a1 + 3);
  result = (v7 + 4);
  if (result > a2)
  {
    return 0;
  }

  v8 = 4;
LABEL_6:
  if (a3)
  {
    *a3 = v8;
  }

  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t acc_auth_protocol_messagePayload(uint64_t result, unsigned int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v12 = 0;
  if (result)
  {
    v8 = result;
    v9 = acc_auth_protocol_sizeofMessage(result, a2, &v12 + 1, &v12);
    result = 0;
    if (v9)
    {
      v10 = v12;
      if (v12)
      {
        v11 = HIDWORD(v12);
        if (a3)
        {
          *a3 = v9;
        }

        result = v8 + v11;
        if (a4)
        {
          *a4 = v11;
        }

        if (a5)
        {
          *a5 = v10;
        }
      }
    }
  }

  return result;
}

BOOL acc_auth_protocol_initMessage(unsigned __int8 *a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4 >= 4)
        {
          v7 = *(a1 + 280);
          if (v7)
          {
            if (v7 == 1)
            {
              v8 = a1[69];
              v9 = v8 & 0xF;
              a1[70] = v8 & 0xF;
              a1[69] = v8 + 1;
            }

            else
            {
              v9 = a1[70];
            }

            *a3 = a2;
            a3[1] = 16 * a1[1];
            a3[2] = *a1 & 0xF | (16 * v9);
            a3[3] = 0;
            if (gLogObjects && gNumLogObjects >= 55)
            {
              v10 = *(gLogObjects + 432);
            }

            else
            {
              v10 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
            if (result)
            {
              v11 = *a1;
              v12 = *a3;
              v13 = a3[1];
              v14 = a3[2];
              v15 = a3[3];
              v16[0] = 67110400;
              v16[1] = v11;
              v17 = 1024;
              v18 = v12;
              v19 = 1024;
              v20 = v13;
              v21 = 1024;
              v22 = v14;
              v23 = 1024;
              v24 = v15;
              v25 = 1024;
              v26 = 0;
              _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[AccAuth] initMessage: sessionID %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %d, errorNo %d \n", v16, 0x26u);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL acc_auth_protocol_initSetupMessage(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3 >= 4)
      {
        v6 = *(a1 + 280);
        if (v6)
        {
          if (v6 == 1)
          {
            acc_auth_protocol_initMessage(a1, 160, a2, a3);
          }

          a2[4] = 0;
          a2[5] = a1[1383];
          a2[6] = *(a1 + 691);
          a2[7] = BYTE1(*(a1 + 345));
          a2[8] = *(a1 + 345);
          a2[3] += 5;
          a2[9] = 1;
          v7 = gLogObjects;
          if (*(a1 + 280) == 1)
          {
            if (gLogObjects && gNumLogObjects >= 55)
            {
              v8 = *(gLogObjects + 432);
            }

            else
            {
              v8 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              acc_auth_protocol_initSetupMessage_cold_2(a2, a1);
            }

            memcpy(a2 + 11, a1 + 1384, *(a1 + 347));
            v9 = a1[1388];
            a2[10] = v9;
            a2[3] += v9 + 2;
            v7 = gLogObjects;
          }

          if (v7 && gNumLogObjects >= 55)
          {
            v10 = *(v7 + 432);
          }

          else
          {
            v10 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            v11 = *a1;
            v12 = *a2;
            v13 = a2[1];
            v14 = a2[2];
            v15 = a2[3];
            if (a2[3] < 0)
            {
              v16 = a2[4];
              v17 = a2[5];
            }

            else
            {
              v16 = 0;
              v17 = 0;
            }

            v18 = a2[10];
            v19 = _byteswap_ulong(*(a2 + 5));
            v20[0] = 67111424;
            v20[1] = v11;
            v21 = 1024;
            v22 = v12;
            v23 = 1024;
            v24 = v13;
            v25 = 1024;
            v26 = v14;
            v27 = 1024;
            v28 = v15;
            v29 = 1024;
            v30 = v16;
            v31 = 1024;
            v32 = v17;
            v33 = 1024;
            v34 = v19;
            v35 = 1024;
            v36 = v18;
            v37 = 1024;
            v38 = 0;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[AccAuth] initSetupMessage: sessionID %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %02x (%02x %02x), characteristics %#10x, authTypesLen %d, errorNo %d \n", v20, 0x3Eu);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL acc_auth_protocol_initStartMessage(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 1;
  if (a1 && a2 && a3 >= 4 && *(a1 + 280) == 1 && !acc_auth_protocol_initMessage(a1, 162, a2, a3))
  {
    v3 = *(a1 + 283) == 1 && acc_auth_protocol_initStartMessage1Way(a1, a2, a3);
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v7 = *(gLogObjects + 432);
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
      v9 = *a1;
      v10 = *(a1 + 283);
      v11 = *a2;
      v12 = a2[1];
      v13 = a2[2];
      v16 = 0;
      acc_auth_protocol_sizeofMessage(a2, a3, buf, &v16);
      v14 = a2[5];
      v15 = a2[39];
      *buf = 67111168;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      v27 = 1024;
      v28 = v16;
      v29 = 1024;
      v30 = v14;
      v31 = 1024;
      v32 = v15;
      v33 = 1024;
      v34 = v3;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[AccAuth] initStartMessage: sessionID %d, negotiatedAuthType %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %d, sessionNonceLen %dx, dhPublicKeyLen %d, errorNo %d \n", buf, 0x38u);
    }
  }

  return v3;
}

BOOL acc_auth_protocol_initInfoCommonMessage(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 *a3, unsigned int a4)
{
  result = 1;
  if (a1 && a3 && a4 >= 4 && *(a1 + 280) == 1)
  {
    if (acc_auth_protocol_initMessage(a1, 164, a3, a4))
    {
      return 1;
    }

    else
    {
      a3[4] = 0;
      a3[5] = a2;
      a3[3] += 2;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v8 = *(gLogObjects + 432);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      result = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v9 = *a1;
        v10 = *a3;
        v11 = a3[1];
        v12 = a3[2];
        v13 = a3[3];
        v14 = a3[5];
        if (a3[3] < 0)
        {
          v15 = a3[4];
          v16 = a3[5];
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        v17[0] = 67111168;
        v17[1] = v9;
        v18 = 1024;
        v19 = v10;
        v20 = 1024;
        v21 = v11;
        v22 = 1024;
        v23 = v12;
        v24 = 1024;
        v25 = v13;
        v26 = 1024;
        v27 = v15;
        v28 = 1024;
        v29 = v16;
        v30 = 1024;
        v31 = v14;
        v32 = 1024;
        v33 = 0;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[AccAuth] initInfoCommonMessage: sessionID %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %02x (%02x %02x), infoType %d, errorNo %d \n", v17, 0x38u);
        return 0;
      }
    }
  }

  return result;
}

BOOL acc_auth_protocol_initFinishMessage(unsigned __int8 *a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  inited = 1;
  if (a1 && a3 && a4 >= 4)
  {
    if (*(a1 + 280) == 1)
    {
      inited = acc_auth_protocol_initMessage(a1, 166, a3, a4);
    }

    if (a2)
    {
      a3[4] = 1;
      a3[5] = HIBYTE(a2);
      a3[6] = BYTE2(a2);
      a3[7] = BYTE1(a2);
      v9 = 5;
      a3[8] = a2;
    }

    else
    {
      a3[4] = 0;
      v9 = 1;
    }

    a3[3] += v9;
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v10 = *(gLogObjects + 432);
    }

    else
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a1;
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[2];
      v17 = 0;
      acc_auth_protocol_sizeofMessage(a3, a4, buf, &v17);
      v16 = a3[4];
      *buf = 67110656;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = v17;
      v28 = 1024;
      v29 = v16;
      v30 = 1024;
      v31 = inited;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[AccAuth] initFinishMessage: sessionID %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %d, paramID0 %d, errorNo %d \n", buf, 0x2Cu);
    }
  }

  return inited;
}

uint64_t acc_auth_protocol_initInfoChallengeMessage(unsigned __int8 *a1, const void *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v5 = 1;
  if (a1 && a4 && a5 >= 4)
  {
    if (a2 && a3 - 1 <= 0x4F && !acc_auth_protocol_initInfoCommonMessage(a1, 7u, a4, a5))
    {
      a4[6] = 10;
      a4[7] = a3;
      memcpy(a4 + 8, a2, a3);
      v5 = 0;
      a4[3] += a3 + 2;
    }

    if (gLogObjects && gNumLogObjects >= 55)
    {
      v11 = *(gLogObjects + 432);
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
      v13 = *(a1 + 280);
      v14 = *a1;
      v15 = *a4;
      v16 = a4[1];
      v17 = a4[2];
      v21 = 0;
      acc_auth_protocol_sizeofMessage(a4, a5, buf, &v21);
      v18 = a4[5];
      v19 = a4[6];
      v20 = a4[7];
      *buf = 67111424;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = v15;
      v28 = 1024;
      v29 = v16;
      v30 = 1024;
      v31 = v17;
      v32 = 1024;
      v33 = v21;
      v34 = 1024;
      v35 = v18;
      v36 = 1024;
      v37 = v19;
      v38 = 1024;
      v39 = v20;
      v40 = 1024;
      v41 = v5;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[AccAuth] initInfoChallengeMessage: role %d, sessionID %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %d, infoType %d, paramID1 %d, challengeLen %d, errorNo %d \n", buf, 0x3Eu);
    }
  }

  return v5;
}

uint64_t acc_auth_protocol_determineAuthType(int a1, unsigned __int8 *a2, unsigned int a3, int a4, unsigned __int8 *a5, unsigned int a6, int a7, _BYTE *a8, int *a9)
{
  v9 = 1;
  if (a1 && a2 && a3 && a5 && a6 && a8 && a9)
  {
    v15 = 0;
    do
    {
      v16 = 0;
      do
      {
        if (a5[v16] == a2[v15])
        {
          v17 = a2[v15];
        }

        else
        {
          v17 = 4;
        }

        ++v16;
      }

      while (v16 < a6 && v17 == 4);
      ++v15;
    }

    while (v15 < a3 && v17 == 4);
    if (v17 == 4)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a8 = v17;
      *a9 = a7 & a4;
    }

    if (gLogObjects && gNumLogObjects >= 55)
    {
      v18 = *(gLogObjects + 432);
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
      v19 = *a9;
      v20 = *a2;
      v21 = a2[1];
      v22 = a2[2];
      v23 = a2[3];
      v24 = *a5;
      v25 = a5[1];
      v26 = a5[2];
      v27 = a5[3];
      v28 = *a8;
      *buf = 67112960;
      v34 = a1;
      v35 = 1024;
      v36 = a4;
      v37 = 1024;
      v38 = a7;
      v39 = 1024;
      v40 = v19;
      v41 = 1024;
      v42 = a3;
      v43 = 1024;
      v44 = v20;
      v45 = 1024;
      v46 = v21;
      v47 = 1024;
      v48 = v22;
      v49 = 1024;
      v50 = v23;
      v51 = 1024;
      v52 = a6;
      v53 = 1024;
      v54 = v24;
      v55 = 1024;
      v56 = v25;
      v57 = 1024;
      v58 = v26;
      v59 = 1024;
      v60 = v27;
      v61 = 1024;
      v62 = v28;
      v63 = 1024;
      v64 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[AccAuth] determineAuthType: role %d, characteristics %#10x / %#10x -> %#10x, authType (%d)[%d %d %d %d] / (%d)[%d %d %d %d] -> [%d], errorNo %d \n", buf, 0x62u);
    }
  }

  return v9;
}

uint64_t acc_auth_protocol_createSessionWithContext(int a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v8 = *(gLogObjects + 432);
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
      v10 = *a2;
      v11 = *(a2 + 8);
      v12 = *(a2 + 4);
      v13 = *(a2 + 5);
      v14 = *(a2 + 6);
      v15 = *(a2 + 7);
      v29 = 67110656;
      v30 = a1;
      v31 = 1024;
      v32 = v10;
      v33 = 1024;
      v34 = v11;
      v35 = 1024;
      v36 = v12;
      v37 = 1024;
      v38 = v13;
      v39 = 1024;
      v40 = v14;
      v41 = 1024;
      v42 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AccAuth] createSession: setupInfo: role %d, characteristics %#10x, authTypes(%d)[%d %d %d %d] \n", &v29, 0x2Cu);
    }

    bzero(a3, 0x588uLL);
    *(a3 + 175) = a4;
    a3[1] = 1;
    *(a3 + 280) = a1;
    *(a3 + 283) = 4;
    *(a3 + 281) = 9;
    a3[69] = _acc_auth_protocol_generateRandomUniform(0x10u);
    *(a3 + 35) = 4112;
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v16 = *(gLogObjects + 432);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      acc_auth_protocol_createSessionWithContext_cold_3(a3 + 280, a3);
    }

    if (*(a3 + 280) == 1)
    {
      v17 = _acc_auth_protocol_reserveFreeSessionID(a3);
      if (v17)
      {
        SessionImplementation = v17;
      }

      else
      {
        *(a3 + 1380) = *a2;
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v27 = *(gLogObjects + 432);
        }

        else
        {
          v27 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          acc_auth_protocol_createSessionWithContext_cold_5(a3 + 280, a3);
        }

        SessionImplementation = _acc_auth_protocol_createSessionImplementation(a2, a3);
        if (!SessionImplementation)
        {
          v28 = *a3;
          kdebug_trace();
        }
      }
    }

    else
    {
      SessionImplementation = 1;
    }
  }

  else
  {
    SessionImplementation = 1;
    if (!a3)
    {
      return SessionImplementation;
    }
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v18 = *(gLogObjects + 432);
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
    v19 = *(a3 + 280);
    v20 = *(a3 + 345);
    v21 = *(a3 + 347);
    v22 = a3[1384];
    v23 = a3[1385];
    v24 = a3[1386];
    v25 = a3[1387];
    v29 = 67110912;
    v30 = v19;
    v31 = 1024;
    v32 = v20;
    v33 = 1024;
    v34 = v21;
    v35 = 1024;
    v36 = v22;
    v37 = 1024;
    v38 = v23;
    v39 = 1024;
    v40 = v24;
    v41 = 1024;
    v42 = v25;
    v43 = 1024;
    v44 = SessionImplementation;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[AccAuth] createSession: outSession: role %d, characteristics %#10x, authTypes(%d)[%d %d %d %d], errorNo %d \n", &v29, 0x32u);
  }

  return SessionImplementation;
}

unsigned __int8 *acc_auth_protocol_endSession(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v3 = *(gLogObjects + 432);
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
      v4[0] = 67109120;
      v4[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[AccAuth] endSession: sessionID %d \n", v4, 8u);
    }

    __acc_auth_protocol_cleanupSegmentedTransfer(v1, 1);
    __acc_auth_protocol_cleanupSegmentedTransfer(v1, 0);
    _acc_auth_protocol_endSessionImplementation(v1);
    bzero(v1, 0x588uLL);
    *(v1 + 283) = 4;
    _acc_auth_protocol_returnSessionID(v2);
    return kdebug_trace();
  }

  return result;
}

BOOL acc_auth_protocol_authSetupStart(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  inited = 1;
  if (a1 && a2 && *(a1 + 280) == 1 && _acc_auth_protocol_supportsAuthRole(1))
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v7 = *(gLogObjects + 432);
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
      v8 = *(a1 + 280);
      v9 = *a1;
      v13[0] = 67109376;
      v13[1] = v8;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AccAuth] authSetupStart: authSession: role %d, sessionID %d \n", v13, 0xEu);
    }

    inited = acc_auth_protocol_initSetupMessage(a1, a2, a3);
    v10 = a2[2];
    v11 = *a2;
    kdebug_trace();
  }

  return inited;
}

uint64_t __acc_auth_protocol_setupSegmentedTransfer(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v11 = *(gLogObjects + 432);
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
    *buf = 67109376;
    v26 = a5;
    v27 = 1024;
    v28 = a6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[AccAuth] setupSegmentedTransfer: dataLen = %d, segmentSize = %d \n", buf, 0xEu);
  }

  if (a1 && a5 && a6)
  {
    v12 = *(a1 + 348);
    if (v12 <= 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 - 10;
    }

    if (v13 >= a6)
    {
      v14 = (a5 + a6 - 1) / a6;
      if ((v14 & 0xFF00) != 0)
      {
        v15 = 34;
      }

      else
      {
        v15 = 14;
      }

      if ((v14 & 0xFF00) == 0 && (a2 & 1) == 0)
      {
        v15 = 0;
        *(a1 + 9) = a3;
        *(a1 + 10) = a4;
        *(a1 + 44) = a5;
        *(a1 + 45) = 0;
        a1[94] = a6;
        a1[93] = v14;
        a1[92] = 0;
      }

LABEL_23:
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v16 = *(gLogObjects + 432);
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
        v17 = *(a1 + 280);
        v18 = *a1;
        *buf = 67110656;
        v26 = v17;
        v27 = 1024;
        v28 = v18;
        v29 = 1024;
        v30 = a2;
        v31 = 1024;
        v32 = a5;
        v33 = 1024;
        v34 = a6;
        v35 = 1024;
        v36 = v14;
        v37 = 1024;
        v38 = v15;
        v19 = "[AccAuth] setupSegmentedTransfer: authSession: role %d, sessionID %d, send %d, dataLen %d, segmentSize %d, totalSegments %d, errorNo %d \n";
        v20 = v16;
        v21 = 44;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
        return v15;
      }

      return v15;
    }

LABEL_22:
    LOWORD(v14) = 0;
    v15 = 1;
    goto LABEL_23;
  }

  if (a1)
  {
    goto LABEL_22;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v23 = *(gLogObjects + 432);
  }

  else
  {
    v23 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v15 = 1;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 67109888;
    v26 = a2;
    v27 = 1024;
    v28 = a5;
    v29 = 1024;
    v30 = a6;
    v31 = 1024;
    v32 = 1;
    v19 = "[AccAuth] setupSegmentedTransfer: authSession: no authSession, send %d, dataLen %d, segmentSize %d, errorNo %d \n";
    v20 = v23;
    v21 = 26;
    goto LABEL_30;
  }

  return v15;
}

void __acc_auth_protocol_cleanupSegmentedTransfer(void *a1, int a2)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v4 = *(gLogObjects + 432);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *a1;
      v6[0] = 67109376;
      v6[1] = v5;
      v7 = 1024;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[AccAuth] cleanupSegmentedTransfer: sessionID %d, send %d \n", v6, 0xEu);
    }

    if ((a2 & 1) == 0)
    {
      a1[9] = 0;
      a1[10] = 0;
      *(a1 + 87) = 0;
    }
  }
}

uint64_t acc_auth_protocol_updateSegmentReceive(unsigned __int8 *a1, const void *a2, unsigned int a3, int a4, int a5, int a6, unsigned __int8 *a7, unsigned int a8, BOOL *a9)
{
  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 54;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (a1)
  {
    if (v11)
    {
      v17 = *(gLogObjects + 432);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 280);
      v20 = *a1;
      v21 = *(a1 + 45);
      v22 = a1[92];
      v23 = a1[93];
      *buf = 67110912;
      v48 = v19;
      v49 = 1024;
      v50 = v20;
      v51 = 1024;
      v52 = a4;
      v53 = 1024;
      v54 = a5;
      v55 = 1024;
      v56 = a6;
      v57 = 1024;
      v58 = v21;
      v59 = 1024;
      v60 = v22;
      v61 = 1024;
      v62 = v23;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[AccAuth] updateSegmentReceive: authSession: role %d, sessionID %d, infoType %d, paramID %#04x, segmentNum %d, dataRecv:[already %d, segment last %d / total %d] \n", buf, 0x32u);
    }

    v24 = a6 + 1;
    v25 = *(a1 + 10);
    if (v25 && ((v26 = *(a1 + 348), v26 <= 4) ? (v27 = 0) : (v27 = v26 - 10), v27 >= a3 && a1[92] == a6))
    {
      v28 = 0;
      v29 = *(a1 + 45);
      v30 = 1;
      if (v29 + a3 <= *(a1 + 44) && v29 + a3 <= 0x400)
      {
        memcpy((v25 + v29), a2, a3);
        v31 = *(a1 + 45) + a3;
        *(a1 + 45) = v31;
        a1[92] = v24;
        v32 = a1[93];
        if (a9)
        {
          *a9 = v32 == v24;
        }

        if (v32 == v24)
        {
          v30 = 0;
          *(a1 + 44) = v31;
          v28 = 1;
        }

        else if (acc_auth_protocol_initInfoCommonMessage(a1, 3u, a7, a8))
        {
          v28 = 0;
        }

        else
        {
          v43 = acc_auth_protocol_messagePayload(a7, a8, 0, 0, 0);
          v28 = 0;
          if (v43)
          {
            v30 = 0;
            v43[2] = 6;
            v43[3] = a4;
            v43[4] = a5;
            v43[5] = 7;
            v43[6] = v24;
            a7[3] += 5;
          }

          else
          {
            v30 = 45;
          }
        }
      }
    }

    else
    {
      v28 = 0;
      v30 = 1;
    }

    if (gLogObjects && gNumLogObjects >= 55)
    {
      v33 = *(gLogObjects + 432);
    }

    else
    {
      v33 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = *(a1 + 280);
      v35 = *a1;
      v36 = *(a1 + 45);
      v37 = a1[92];
      v38 = a1[93];
      *buf = 67111424;
      v48 = v34;
      v49 = 1024;
      v50 = v35;
      v51 = 1024;
      v52 = a4;
      v53 = 1024;
      v54 = a5;
      v55 = 1024;
      v56 = v24;
      v57 = 1024;
      v58 = v36;
      v59 = 1024;
      v60 = v37;
      v61 = 1024;
      v62 = v38;
      v63 = 1024;
      v64 = v28;
      v65 = 1024;
      v66 = v30;
      v39 = "[AccAuth] updateSegmentReceive: authSession: role %d, sessionID %d, infoType %d, paramID %#04x, nextSegment %d, dataRecv:[already %d, segment last %d / total %d], transferFinished %d, errorNo %d \n";
      v40 = v33;
      v41 = 62;
LABEL_40:
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, v39, buf, v41);
    }
  }

  else
  {
    if (v11)
    {
      v18 = *(gLogObjects + 432);
    }

    else
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v30 = 1;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      v48 = a4;
      v49 = 1024;
      v50 = a5;
      v51 = 1024;
      v52 = 1;
      v39 = "[AccAuth] updateSegmentReceive: authSession: no authSession, infoType %d, paramID %#04x, errorNo %d \n";
      v40 = v18;
      v41 = 20;
      goto LABEL_40;
    }
  }

  return v30;
}

uint64_t acc_auth_protocol_handleMessage(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v6 = a1;
  v7 = 1;
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (!a1 || !a2 || !a4)
  {
    goto LABEL_74;
  }

  isRespMessage = acc_auth_protocol_isRespMessage(a2);
  v11 = a2[2] >> 4;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v12 = *(gLogObjects + 432);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v6;
    if (!isRespMessage)
    {
      goto LABEL_11;
    }

LABEL_15:
    v6 = v14;
    if (v14[70] == v11)
    {
      v21 = acc_auth_protocol_messagePayload(a2, a3, 0, 0, 0);
      v25 = v14[71];
      if (v25 > 0xF || v25 != v11)
      {
        goto LABEL_12;
      }

      v26 = v11;
      v27 = v8[491];
      if (v27 && gNumLogObjects >= 55)
      {
        v28 = *(v27 + 432);
      }

      else
      {
        v28 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v7 = 1;
      v9 = &audioProductCerts_endpoint_publish_onceToken;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }
    }

    else
    {
      v26 = v11;
      v37 = v8[491];
      if (v37 && gNumLogObjects >= 55)
      {
        v28 = *(v37 + 432);
      }

      else
      {
        v28 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v7 = 1;
      v9 = &audioProductCerts_endpoint_publish_onceToken;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }
    }

    v38 = acc_auth_protocol_isRespMessage(a2);
    v39 = v14[70];
    v40 = *a2;
    *buf = 67110144;
    *v72 = v38;
    *&v72[4] = 1024;
    *&v72[6] = 1;
    *v73 = 1024;
    *&v73[2] = v39;
    v74 = 1024;
    v75 = v26;
    v76 = 1024;
    v77 = v40;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleMessage: isResponse(%d/%d) and seq#(%d != %d) doesn't match messageID(%#04x) ! \n", buf, 0x20u);
    goto LABEL_74;
  }

  v13 = *(v6 + 280);
  v14 = v6;
  v15 = *v6;
  v16 = *a2;
  v17 = a5;
  v18 = a2[1];
  v19 = v11;
  v20 = a2[2];
  v70 = 0;
  acc_auth_protocol_sizeofMessage(a2, a3, buf, &v70);
  *buf = 67110912;
  *v72 = v13;
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  *&v72[4] = 1024;
  *&v72[6] = v15;
  *v73 = 1024;
  *&v73[2] = v16;
  v74 = 1024;
  v75 = v18;
  a5 = v17;
  v76 = 1024;
  v77 = v20;
  v11 = v19;
  v78 = 1024;
  v79 = v70;
  v80 = 1024;
  v81 = isRespMessage;
  v82 = 1024;
  v83 = v19;
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleMessage: authSession: role %d, sessionID %d; inMessage %#04x, ctl0 %02x, ctl1 %02x, len %d, inMessageIsResp %d, inMsgSeqNum %d \n", buf, 0x32u);
  if (isRespMessage)
  {
    goto LABEL_15;
  }

LABEL_11:
  v21 = acc_auth_protocol_messagePayload(a2, a3, 0, 0, 0);
  v6 = v14;
LABEL_12:
  v66 = v11;
  *a4 = 0;
  v22 = *a2;
  v23 = a5;
  if ((v22 & 0xFE) == 0xA4)
  {
    v24 = *(v21 + 1);
  }

  else
  {
    v24 = 255;
  }

  v9 = &audioProductCerts_endpoint_publish_onceToken;
  v29 = gLogObjects;
  v30 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v31 = *(gLogObjects + 432);
  }

  else
  {
    v31 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v72 = v29;
      *&v72[8] = 1024;
      *v73 = v30;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      v22 = *a2;
    }
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v41 = *(v6 + 280);
    v42 = *v6;
    v70 = 0;
    acc_auth_protocol_sizeofMessage(a2, a3, buf, &v70);
    *buf = 67110656;
    *v72 = v41;
    v9 = &audioProductCerts_endpoint_publish_onceToken;
    *&v72[4] = 1024;
    *&v72[6] = v42;
    *v73 = 1024;
    *&v73[2] = v22;
    v74 = 1024;
    v75 = v70;
    v76 = 1024;
    v77 = v24;
    v78 = 1024;
    v79 = isRespMessage;
    v80 = 1024;
    v81 = v66;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "[AccAuth] handleMessage: authSession: role %d, sessionID %d, inMessage %#04x, len %d, infoType %#04x, inMessageIsResp %d, inMsgSeqNum %d \n", buf, 0x2Cu);
    v43 = *a2;
  }

  a5 = v23;
  v32 = a2[2];
  kdebug_trace();
  v33 = a2[2];
  v34 = *a2;
  kdebug_trace();
  v6[71] = a2[2] >> 4;
  v7 = 1;
  if (*(v6 + 280) == 1)
  {
    v8 = &audioProductCerts_endpoint_publish_onceToken;
    if (_acc_auth_protocol_supportsAuthRole(1))
    {
      v35 = *a2;
      if (v35 <= 0xA4)
      {
        if (v35 == 161)
        {
          started = __acc_auth_protocol_handleAuthSetupResp(v6, a2, a3, a4, v23);
          goto LABEL_55;
        }

        if (v35 == 163)
        {
          started = __acc_auth_protocol_handleAuthStartResp(v6, a2, a3, a4, v23);
LABEL_55:
          v7 = started;
          goto LABEL_56;
        }

LABEL_50:
        v44 = logObjectForModule_16();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *a2;
          *buf = 67109120;
          *v72 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleMessage: invalid incoming messageID(%#04x) ! \n", buf, 8u);
        }

        v7 = 1;
        v9 = &audioProductCerts_endpoint_publish_onceToken;
        goto LABEL_56;
      }

      if (v35 == 165)
      {
        started = __acc_auth_protocol_handleAuthInfoResp(v6, a2, a3, a4, v23);
        goto LABEL_55;
      }

      if (v35 != 167)
      {
        goto LABEL_50;
      }

      __acc_auth_protocol_handleAuthFinishResp(v6, a2, a3);
      v7 = 1;
    }
  }

  else
  {
    v8 = &audioProductCerts_endpoint_publish_onceToken;
  }

LABEL_56:
  v46 = a2[2];
  v47 = *a2;
  kdebug_trace();
  if (v7)
  {
    goto LABEL_74;
  }

  v7 = *a4;
  if ((v7 - 164) >= 2)
  {
    if (!*a4)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

  v70 = 0;
  *buf = 0;
  if (acc_auth_protocol_sizeofMessage(a4, v23, buf, &v70) && v70)
  {
    v48 = a4[*buf + 1];
    goto LABEL_66;
  }

  if ((isRespMessage & 1) == 0 || v6[70] == v66)
  {
LABEL_65:
    v48 = 0;
LABEL_66:
    v49 = a4[2];
    kdebug_trace();
    v50 = v8[491];
    v51 = *(v9 + 984);
    if (v50 && v51 >= 55)
    {
      v52 = *(v50 + 432);
    }

    else
    {
      v52 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v63 = *(v6 + 280);
      v64 = *v6;
      v65 = *a4;
      v70 = 0;
      acc_auth_protocol_sizeofMessage(a4, a5, buf, &v70);
      *buf = 67110144;
      *v72 = v63;
      v8 = &audioProductCerts_endpoint_publish_onceToken;
      *&v72[4] = 1024;
      *&v72[6] = v64;
      *v73 = 1024;
      *&v73[2] = v65;
      v74 = 1024;
      v75 = v70;
      v76 = 1024;
      v77 = v48;
      _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "[AccAuth] handleMessage: authSession: role %d, sessionID %d, outMessage %#04x, len %d, infoType %#04x \n", buf, 0x20u);
    }

    v7 = 0;
    v9 = &audioProductCerts_endpoint_publish_onceToken;
    goto LABEL_74;
  }

  v62 = logObjectForModule_16();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleMessage: Cannot get messagePayload ! \n", buf, 2u);
  }

  v7 = 0;
LABEL_74:
  v53 = v8[491];
  v54 = *(v9 + 984);
  if (v53 && v54 >= 55)
  {
    v55 = *(v53 + 432);
  }

  else
  {
    v55 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(v6 + 280);
    v57 = *v6;
    v58 = *a4;
    v59 = a4[1];
    v60 = a4[2];
    v70 = 0;
    acc_auth_protocol_sizeofMessage(a4, a5, buf, &v70);
    *buf = 67110656;
    *v72 = v56;
    *&v72[4] = 1024;
    *&v72[6] = v57;
    *v73 = 1024;
    *&v73[2] = v58;
    v74 = 1024;
    v75 = v59;
    v76 = 1024;
    v77 = v60;
    v78 = 1024;
    v79 = v70;
    v80 = 1024;
    v81 = v7;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleMessage: authSession: role %d, sessionID %d, outMessage %#04x, ctl0 %02x, ctl1 %02x, len %d, errorNo %d \n", buf, 0x2Cu);
  }

  return v7;
}

uint64_t __acc_auth_protocol_handleAuthSetupResp(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v8 = a2[1];
  v9 = v8 >> 4;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v10 = *(gLogObjects + 432);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v26 = *a1;
    v27 = *a2;
    v36 = a2[1];
    v38 = a2[2];
    v43 = 0;
    acc_auth_protocol_sizeofMessage(a2, a3, buf, &v43);
    v28 = a1[1];
    *buf = 67110656;
    v45 = v26;
    v46 = 1024;
    v47 = v27;
    v48 = 1024;
    v49 = v36;
    v50 = 1024;
    v51 = v38;
    v52 = 1024;
    v53 = v43;
    v54 = 1024;
    v55 = v8 >> 4;
    v56 = 1024;
    v57 = v28;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[AccAuth] handleAuthSetupResp: sessionID %d, inMessage %#04x, ctl0 %02x, ctl1 %02x, len %d, msgVersion %d : %d \n", buf, 0x2Cu);
  }

  if (!*(a1 + 347))
  {
    return 1;
  }

  if (a2[3])
  {
    inited = 1;
    goto LABEL_11;
  }

  if (a1[1] == v9)
  {
    return 22;
  }

  if ((v8 & 0xF0) != 0x10)
  {
    return 1;
  }

  a1[1] = v9;
  inited = acc_auth_protocol_initSetupMessage(a1, a4, a5);
  if (!a2[3])
  {
    return inited;
  }

LABEL_11:
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 54;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (a2[10] == 1)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 432);
    }

    else
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v32 = *a1;
      v33 = *a2;
      v37 = a2[1];
      v39 = a2[2];
      v43 = 0;
      acc_auth_protocol_sizeofMessage(a2, a3, buf, &v43);
      v34 = bswap32(*(a2 + 5));
      v35 = a2[10];
      *buf = 67110656;
      v45 = v32;
      v46 = 1024;
      v47 = v33;
      v48 = 1024;
      v49 = v37;
      v50 = 1024;
      v51 = v39;
      v52 = 1024;
      v53 = v43;
      v54 = 1024;
      v55 = v34;
      v56 = 1024;
      v57 = v35;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[AccAuth] handleAuthSetupResp: sessionID %d, inMessage %#04x, ctl0 %02x, ctl1 %02x, len %d, characteristics %#10x, authTypesLen %d \n", buf, 0x2Cu);
    }

    v16 = a2[2];
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v17 = *(gLogObjects + 432);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v45 = v16 & 0xF;
      v46 = 1024;
      v47 = v8 >> 4;
      v48 = 1024;
      v49 = v16 >> 4;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[AccAuth] handleAuthSetupResp: sessionID %d, version %d, sequence %d \n", buf, 0x14u);
    }

    v18 = a1[1];
    if (v8 < 0x10 || v18 <= v9)
    {
      if (v18 != v9)
      {
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v29 = *(gLogObjects + 432);
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
          v30 = a1[1];
          *buf = 67109376;
          v45 = v8 >> 4;
          v46 = 1024;
          v47 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleAuthSetupResp: Version mismatch! %d != %d \n", buf, 0xEu);
        }

        v24 = a1;
        v25 = 43;
        goto LABEL_69;
      }
    }

    else
    {
      a1[1] = v9;
    }

    v43 = bswap32(*(a2 + 5));
    v42 = 4;
    v19 = acc_auth_protocol_determineAuthType(*(a1 + 280), a1 + 1384, a1[1388], *(a1 + 345), a2 + 11, a2[10], v43, &v42, &v43);
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v20 = *(gLogObjects + 432);
    }

    else
    {
      v20 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v45 = v19;
      v46 = 1024;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleAuthSetupResp: determineAuthType: errorNo %d, authType %d \n", buf, 0xEu);
    }

    if (!v19)
    {
      v22 = v42;
      if (v42 != 4)
      {
        *(a1 + 283) = v42;
        *(a1 + 282) = v43;
        if (v22 == 1)
        {
          return acc_auth_protocol_initInfoCommonMessage(a1, 9u, a4, a5);
        }

        else
        {
          return acc_auth_protocol_initStartMessage(a1, a4, a5);
        }
      }
    }

    v24 = a1;
    v25 = 22;
LABEL_69:
    inited = acc_auth_protocol_initFinishMessage(v24, v25, a4, a5);
    _acc_auth_protocol_handleSessionAuthenticationState(a1, 0);
    return inited;
  }

  if (v13)
  {
    v15 = *(gLogObjects + 432);
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
    v21 = a2[10];
    *buf = 67109120;
    v45 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[AccAuth] handleAuthSetupResp: invalid # of authTypes(%d) ! \n", buf, 8u);
  }

  return inited;
}

BOOL __acc_auth_protocol_handleAuthStartResp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v10 = *(gLogObjects + 432);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a1;
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = 0;
    acc_auth_protocol_sizeofMessage(a2, a3, buf, &v17);
    *buf = 67110144;
    v19 = v13;
    v20 = 1024;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    v24 = 1024;
    v25 = v16;
    v26 = 1024;
    v27 = v17;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[AccAuth] handleAuthStartResp: sessionID %d, inMessage %#04x, ctl0 %02x, ctl1 %02x, len %d \n", buf, 0x20u);
  }

  if (*(a1 + 283) == 1 && !acc_auth_protocol_handleAuthStartResp1Way(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  inited = acc_auth_protocol_initFinishMessage(a1, 81, a4, a5);
  _acc_auth_protocol_handleSessionAuthenticationState(a1, 0);
  return inited;
}

BOOL __acc_auth_protocol_handleAuthInfoResp(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v10 = *(gLogObjects + 432);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = *a1;
    v16 = *a2;
    v24 = a2[1];
    v25 = a2[2];
    HIDWORD(v27) = 0;
    acc_auth_protocol_sizeofMessage(a2, a3, buf, &v27 + 1);
    *buf = 67110144;
    v29 = v15;
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = v24;
    v34 = 1024;
    v35 = v25;
    v36 = 1024;
    v37 = HIDWORD(v27);
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[AccAuth] handleAuthInfoResp: sessionID %d, inMessage %#04x, ctl0 %02x, ctl1 %02x, len %d \n", buf, 0x20u);
  }

  if (*(a1 + 283) == 1)
  {
    v11 = acc_auth_protocol_handleAuthInfoResp1Way(a1, a2, a3, a4, a5);
  }

  else
  {
    v11 = 1;
  }

  v27 = 0;
  v26 = 0;
  v12 = acc_auth_protocol_messagePayload(a2, a3, &v27 + 1, &v27, &v26);
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v13 = *(gLogObjects + 432);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 280);
    v18 = *a1;
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2];
    if (v12)
    {
      v22 = *(v12 + 1);
    }

    else
    {
      v22 = 255;
    }

    *buf = 67110912;
    v29 = v17;
    v30 = 1024;
    v31 = v18;
    v32 = 1024;
    v33 = v19;
    v34 = 1024;
    v35 = v20;
    v36 = 1024;
    v37 = v21;
    v38 = 1024;
    v39 = HIDWORD(v27);
    v40 = 1024;
    v41 = v22;
    v42 = 1024;
    v43 = v11;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[AccAuth] handleAuthInfoResp: role %d, sessionID %d; inMessage %#04x, ctl0 %02x, ctl1 %02x, len %d, infoType %d, errorNo %d \n", buf, 0x32u);
    if (v11)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_18:
  inited = acc_auth_protocol_initFinishMessage(a1, 81, a4, a5);
  _acc_auth_protocol_handleSessionAuthenticationState(a1, 0);
  return inited;
}

void __acc_auth_protocol_handleAuthFinishResp(void *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v6 = *(gLogObjects + 432);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a1;
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    v11 = 0;
    acc_auth_protocol_sizeofMessage(a2, a3, buf, &v11);
    *buf = 67110144;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[AccAuth] handleAuthFinishResp: sessionID %d, inMessage %#04x, ctl0 %02x, ctl1 %02x, len %d \n", buf, 0x20u);
  }

  if (a2[4] == 1)
  {
    if (bswap32(*(a2 + 5)))
    {
      _acc_auth_protocol_handleSessionAuthenticationState(a1, 0);
    }
  }
}

uint64_t acc_auth_protocol_checkMessage(unsigned __int8 *a1, _BYTE *a2, int a3, _DWORD *a4)
{
  v6 = 0;
  if (a1 && a2 && a3)
  {
    v7 = 0;
    if (a4)
    {
      v6 = 0;
      v8 = &a2[a3];
      while ((*a2 & 0xF8) != 0xA0)
      {
        ++a2;
        if (a3 == ++v6)
        {
          a2 = v8;
          v6 = a3;
          break;
        }
      }

      if ((a3 - v6) < 4)
      {
        v7 = 0;
      }

      else
      {
        v7 = acc_auth_protocol_sizeofMessage(a2, a3 - v6, 0, 0);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v9 = *(gLogObjects + 432);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 280);
    v12 = *a1;
    v13[0] = 67109888;
    v13[1] = v11;
    v14 = 1024;
    v15 = v12;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[AccAuth] handleMessage: authSession: role %d, sessionID %d, skipBytes %d, messageLen %d \n", v13, 0x1Au);
    if (!a4)
    {
      return v7;
    }

    goto LABEL_20;
  }

  if (a4)
  {
LABEL_20:
    *a4 = v6;
  }

  return v7;
}

void OUTLINED_FUNCTION_3_20(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xEu);
}

uint64_t _parseIdentificationParams_1(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v42 = 0;
  if (!a1)
  {
    _parseIdentificationParams_cold_6_1(buf);
    return buf[0];
  }

  v5 = a1;
  if (iAP2MsgGetParamID(a3) != 22)
  {
    v21 = 0;
    LODWORD(v11) = 10;
    goto LABEL_50;
  }

  v37 = v5;
  v6 = kCFAllocatorDefault;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (!FirstParam)
  {
    DataAsString = 0;
    v22 = 0;
    v23 = 0;
    LODWORD(v10) = 0;
    LODWORD(v11) = 10;
    goto LABEL_33;
  }

  v40 = 0;
  v10 = 0;
  DataAsU16 = 0;
  DataAsString = 0;
  v11 = 10;
  do
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    valuePtr = ParamID;
    if ((ParamID - 17) >= 7)
    {
      if (ParamID == 1)
      {
        if (v10)
        {
          v11 = 5;
          v10 = 1;
        }

        else
        {
          DataAsString = iAP2MsgGetDataAsString(FirstParam, &v42);
          v10 = v42 == 0;
        }
      }

      else if (ParamID)
      {
        v15 = v11;
        v16 = v10;
        v17 = v9;
        v18 = v9[491];
        v19 = gNumLogObjects;
        if (v18 && gNumLogObjects >= 43)
        {
          v20 = *(v18 + 336);
        }

        else
        {
          v20 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&v44 = v18;
            WORD4(v44) = 1024;
            *(&v44 + 10) = v19;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v44) = 22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "unhandled sub-paramID:%04X\n", buf, 8u);
        }

        v9 = v17;
        v10 = v16;
        v11 = v15;
        v6 = kCFAllocatorDefault;
      }

      else
      {
        if ((v40 & 0x100000000) != 0)
        {
          v11 = 5;
          v14 = 1;
        }

        else
        {
          DataAsU16 = iAP2MsgGetDataAsU16(FirstParam, &v42);
          v14 = v42 == 0;
        }

        HIDWORD(v40) = v14;
      }
    }

    else
    {
      if (!iAP2MsgIsDataVoid(FirstParam))
      {
        goto LABEL_29;
      }

      v13 = CFNumberCreate(v6, kCFNumberShortType, &valuePtr);
      v58.length = CFArrayGetCount(Mutable);
      v58.location = 0;
      if (!CFArrayContainsValue(Mutable, v58, v13))
      {
        CFArrayAppendValue(Mutable, v13);
        LODWORD(v40) = 1;
        if (!v13)
        {
          goto LABEL_29;
        }

LABEL_15:
        CFRelease(v13);
        goto LABEL_29;
      }

      v11 = 5;
      if (v13)
      {
        goto LABEL_15;
      }
    }

LABEL_29:
    FirstParam = iAP2MsgGetNextParam(a2, a3, FirstParam);
  }

  while (FirstParam);
  v22 = DataAsU16;
  v23 = v40;
  LODWORD(FirstParam) = HIDWORD(v40);
LABEL_33:
  v24 = v9[491];
  if (v24 && gNumLogObjects >= 43)
  {
    v25 = *(v24 + 336);
  }

  else
  {
    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    LODWORD(v44) = FirstParam & 1;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v10;
    WORD5(v44) = 1024;
    HIDWORD(v44) = v23 & 1;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "componentIDReceived: %d, componentNameReceived: %d, componentGPRSDataReceived: %d", buf, 0x14u);
  }

  if (!(FirstParam & v10 & v23) || v11 == 5)
  {
    v21 = 0;
    if (v11 == 10)
    {
      LODWORD(v11) = 2;
    }

    v5 = v37;
    if (Mutable)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v26 = acc_userDefaults_BOOLForKey(@"RejectionOfMultipleLocation");
  v27 = v9[491];
  if (v27 && gNumLogObjects >= 43)
  {
    v28 = *(v27 + 336);
  }

  else
  {
    v28 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    LODWORD(v44) = v22;
    WORD2(v44) = 2080;
    *(&v44 + 6) = DataAsString;
    HIWORD(v44) = 2112;
    v45 = Mutable;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "All are Valid: componentID: %d, componentName: %s, supportedNMEASentencesArray: %@", buf, 0x1Cu);
  }

  v5 = v37;
  if (!iap2_feature_getFeature(v37, 0xCu))
  {
    iap2_features_createFeature(v37, 0xCu);
    iap2_identification_setIdentifiedForFeature(v37);
  }

  if (platform_location_setSupportedNMEASentencesForEndpoint(*(v37 + 8), Mutable))
  {
    LODWORD(v11) = 0;
    v21 = 1;
    if (!Mutable)
    {
      goto LABEL_49;
    }

LABEL_48:
    CFRelease(Mutable);
    goto LABEL_49;
  }

  v30 = v9;
  v31 = v9[491];
  if (v31 && gNumLogObjects >= 43)
  {
    v32 = *(v31 + 336);
  }

  else
  {
    v32 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    _parseIdentificationParams_cold_4(v32);
    if (v26)
    {
      goto LABEL_68;
    }

    goto LABEL_71;
  }

  if ((v26 & 1) == 0)
  {
LABEL_71:
    v33 = v30[491];
    if (v33 && gNumLogObjects >= 43)
    {
      v34 = *(v33 + 336);
    }

    else
    {
      v34 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v21 = 1;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(v37 + 8);
      v35 = *(v37 + 16);
      *buf = 136317186;
      *&v44 = "_parseIdentificationParams";
      WORD4(v44) = 1024;
      *(&v44 + 10) = 359;
      HIWORD(v44) = 2112;
      v45 = v35;
      v46 = 2112;
      v47 = v36;
      v48 = 1024;
      v49 = 0;
      v50 = 1024;
      v51 = 0;
      v52 = 1024;
      v53 = 1;
      v54 = 1024;
      v55 = v11;
      v56 = 1024;
      v57 = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s:%d %@ - %@, setSupportedNMEASentencesForEndpoint failed, but don't reject!! rejectionOfMultipleLocation %d, result %d -> %d, rejectReason %d -> %d", buf, 0x44u);
    }

    LODWORD(v11) = 0;
    if (Mutable)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_68:
  v21 = 0;
  if (Mutable)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (v11)
  {
LABEL_50:
    iap2_identification_addRejectParam(v5, 22, v11);
  }

  return v21;
}

void *logObjectForModule_17()
{
  if (gLogObjects && gNumLogObjects >= 43)
  {
    return *(gLogObjects + 336);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

uint64_t _checkIdentificationInfo_3(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo__kMsgLocationList, 4u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_features_createFeature(a1, 0xCu);
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

void _handleIdentificationRejection_0(uint64_t a1)
{
  if (!a1 || (v2 = *(a1 + 8)) == 0)
  {
    v2 = 0;
  }

  if ((platform_location_resetSupportedNMEASentencesForEndpoint(v2) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 43)
    {
      v3 = *(gLogObjects + 336);
    }

    else
    {
      v3 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _handleIdentificationRejection_cold_2(a1 == 0, a1, v3);
    }
  }
}

void OUTLINED_FUNCTION_9_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0x20u);
}

uint64_t platform_bluetooth_copyNameForMacAddress(uint64_t a1)
{
  v2 = +[ACCPlatformPluginManager sharedManager];
  v3 = [v2 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformBluetoothAccessoryInformationPluginProtocol fallbackToTransportPlugins:1];

  if (!v3)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 7;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_bluetooth_copyNameForMacAddress_cold_1();
      }

      v8 = &_os_log_default;
      v6 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      platform_bluetooth_copyNameForMacAddress_cold_3(v8);
    }

    goto LABEL_24;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v7 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_bluetooth_copyNameForMacAddress_cold_1();
      }

      v7 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector("nameForMacAddress:");
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Bluetooth] Platform plugin does not implement selector %@!", &v12, 0xCu);
    }

LABEL_24:
    v4 = 0;
    goto LABEL_25;
  }

  v4 = [v3 nameForMacAddress:a1];
LABEL_25:

  return v4;
}

void ACCUNManagerPresentNotification(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    v5 = +[ACCUserNotificationManager sharedManager];
    [v5 presentNotification:v3 completionHandler:v4];
  }
}

void ACCUNManagerDismissNotificationsWithGroupIdentifier(uint64_t a1)
{
  if (a1)
  {
    v2 = +[ACCUserNotificationManager sharedManager];
    [v2 dismissNotificationsWithGroupIdentifier:a1];
  }
}

void sub_10006480C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

uint64_t _maximumCurrentAvailableFromDevice(uint64_t **a1)
{
  if (a1 && (v1 = *a1) != 0 && *v1 && acc_connection_getType(*v1) == 3)
  {
    return 500;
  }

  else
  {
    return 100;
  }
}

BOOL _parseIdentificationParamsPower(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v32 = 0;
  if (!iap2_feature_getFeature(a1, 0x10u))
  {
    iap2_features_createFeature(a1, 0x10u);
  }

  Feature = iap2_feature_getFeature(a1, 0x10u);
  if (Feature)
  {
    v6 = Feature;
    ParamID = iAP2MsgGetParamID(a3);
    if (ParamID <= 24)
    {
      if (ParamID != 8)
      {
        if (ParamID != 9)
        {
          return v32 == 0;
        }

        DataAsU16 = iAP2MsgGetDataAsU16(a3, &v32);
        if (v32)
        {
          return v32 == 0;
        }

        v12 = DataAsU16;
        if (DataAsU16 <= _maximumCurrentAvailableFromDevice(a1))
        {
          v6[3] = v12;
          return v32 == 0;
        }

        v13 = 6;
        v14 = a1;
        v15 = 9;
LABEL_35:
        v23 = 6;
LABEL_53:
        iap2_identification_addRejectParam(v14, v15, v23);
        v32 = v13;
        return v32 == 0;
      }

      DataAsU8 = iAP2MsgGetDataAsU8(a3, &v32);
      if (!v32)
      {
        if (DataAsU8 != 1 || (*(*a1 + 24) | 8) != 8)
        {
          v6[1] = DataAsU8;
          return v32 == 0;
        }

        v13 = 13;
        v14 = a1;
        v15 = 8;
        v23 = 13;
        goto LABEL_53;
      }

      if (gLogObjects && gNumLogObjects >= 37)
      {
        v25 = *(gLogObjects + 288);
      }

      else
      {
        v25 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        _parseIdentificationParamsPower_cold_8();
      }

      v30 = a1;
      v31 = 8;
    }

    else
    {
      if (ParamID != 25)
      {
        if (ParamID != 240)
        {
          if (ParamID == 241)
          {
            v8 = iAP2MsgGetDataAsU8(a3, &v32);
            if (gLogObjects && gNumLogObjects >= 37)
            {
              v9 = *(gLogObjects + 288);
            }

            else
            {
              v9 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 67109376;
              v34 = v8;
              v35 = 1024;
              v36 = v32;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "powerDuringSleepType during identification = %d, status = %d", buf, 0xEu);
            }

            if (!v32)
            {
              v6[2] = v8;
              if (v8 <= 1)
              {
                v29 = logObjectForModule_1(36);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "identified for power during sleep over iAP2", buf, 2u);
                }

                iap2_identification_setIdentifiedForFeature(a1);
              }

              return v32 == 0;
            }

            if (gLogObjects && gNumLogObjects >= 37)
            {
              v26 = *(gLogObjects + 288);
            }

            else
            {
              v26 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              _parseIdentificationParamsPower_cold_6();
            }

            v30 = a1;
            v31 = 241;
            goto LABEL_73;
          }

          return v32 == 0;
        }

        v21 = iAP2MsgGetDataAsU16(a3, &v32);
        if (v32)
        {
          return v32 == 0;
        }

        v22 = v21;
        if (v21 <= platform_power_getUltraHighPowerModeCurrentLimit(*(a1 + 8)))
        {
          v6[4] = v22;
          return v32 == 0;
        }

        v13 = 6;
        v14 = a1;
        v15 = 240;
        goto LABEL_35;
      }

      v17 = iAP2MsgGetDataAsU16(a3, &v32);
      if (gLogObjects)
      {
        v18 = gNumLogObjects <= 36;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      if (!v32)
      {
        v27 = v17;
        if (v19)
        {
          v28 = *(gLogObjects + 288);
        }

        else
        {
          v28 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v34 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "maximumSiphoningCurrent: %d!!", buf, 8u);
        }

        return v32 == 0;
      }

      if (v19)
      {
        v20 = *(gLogObjects + 288);
      }

      else
      {
        v20 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        _parseIdentificationParamsPower_cold_2();
      }

      v30 = a1;
      v31 = 25;
    }

LABEL_73:
    iap2_identification_addRejectParam(v30, v31, 0xAu);
    return v32 == 0;
  }

  if (gLogObjects && gNumLogObjects >= 37)
  {
    v10 = *(gLogObjects + 288);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _parseIdentificationParamsPower_cold_10();
    return 0;
  }

  return result;
}

uint64_t iap2_power_checkIdentificationInfo(void **a1, uint64_t a2)
{
  v13 = 0;
  v4 = iap2_identification_checkIdentificationMsgIDs(a1, &iap2_power_checkIdentificationInfo_skMsgPowerList, 6u, &v13);
  v5 = v4;
  if (v13 == 1 && v4 == 0)
  {
    Feature = iap2_feature_getFeature(a1, 0x10u);
    if (Feature && (!*(Feature + 4) || acc_endpoint_isWireless(*a1)))
    {
      if (CFSetContainsValue(*(a2 + 96), 0xAE03))
      {
        if (acc_endpoint_isWireless(*a1))
        {
          v5 = 13;
        }

        else
        {
          v5 = 14;
        }

        v8 = a1;
        v9 = 44547;
        v10 = v5;
        goto LABEL_16;
      }

      if (CFSetContainsValue(*(a2 + 96), 0xAE06))
      {
        v5 = 11;
        v8 = a1;
        v9 = 44550;
        v10 = 11;
LABEL_16:
        iap2_identification_rejectMsgID(v8, v9, 0, v10);
        return v5;
      }
    }

    v5 = 0;
  }

  if (v13 == 1 && v5 == 0)
  {
    iap2_identification_setIdentifiedForFeature(a1);
    return 0;
  }

  return v5;
}

uint64_t _processPowerSourceUpdate(uint64_t *a1, uint64_t a2)
{
  Feature = iap2_feature_getFeature(a1, 0x10u);
  v5 = *(Feature + 36);
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v6 = *(gLogObjects + 288);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    _processPowerSourceUpdate_cold_2(a1, a2);
  }

  LOWORD(v7) = v5;
  if (*(a2 + 2) == 1)
  {
    v21 = *a2;
    v7 = v21;
    *(Feature + 36) = v21;
    if (_checkRequiresChargingCurrentLimit(a1, v7, &v21))
    {
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v11 = *(gLogObjects + 288);
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
        if (!a1 || (v19 = a1[1]) == 0)
        {
          v19 = 0;
        }

        *buf = 138412802;
        v23 = v19;
        v24 = 1024;
        v25 = v7;
        v26 = 1024;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "!!!! Overriding availableCurrentForDevice(ChargingCurrentLimit) for accessory %@, %d -> %d", buf, 0x18u);
      }

      v7 = v21;
    }

    v20 = *(Feature + 24);
    if ((v20 & 0x40) == 0)
    {
      platform_power_startPowerUpdates(a1[1], v20 | 0x40, v20);
    }

    platform_power_setAvailableCurrent(a1[1], v7, v7 != v5);
  }

  if (*(a2 + 4) == 1)
  {
    platform_power_setShouldChargeDeviceBattery(a1[1], *(a2 + 3), v7 != v5);
  }

  if (*(a2 + 5) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v8 = *(gLogObjects + 288);
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
      v9 = *(a2 + 6);
      *buf = 67109120;
      LODWORD(v23) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "siphoningCurrent=%d", buf, 8u);
    }
  }

  if (*(a2 + 8) == 1)
  {
    if (!*(a2 + 10) && platform_power_isOvercurrentState(a1[1]))
    {
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v10 = *(gLogObjects + 288);
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
        v12 = *(a2 + 10);
        *buf = 67109120;
        LODWORD(v23) = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ResetOvercurrentSiphoning(), reserveCurrent=%d", buf, 8u);
      }

      platform_power_resetOvercurrentSiphoning(a1[1]);
    }

    if (gLogObjects && gNumLogObjects >= 37)
    {
      v13 = *(gLogObjects + 288);
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    v15 = *(a2 + 10);
    if (v14)
    {
      *buf = 67109120;
      LODWORD(v23) = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PowerSetReserveCurrent(), reserveCurrent=%d", buf, 8u);
      v15 = *(a2 + 10);
    }

    platform_power_setReserveCurrent(a1[1], v15);
  }

  if (*(a2 + 13) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v16 = *(gLogObjects + 288);
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
      v17 = *(a2 + 13);
      *buf = 67109120;
      LODWORD(v23) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SetOvercurrentSiphoning(), maxNonSiphoningCurrentExceeded=%d", buf, 8u);
    }

    platform_power_setOvercurrentSiphoning(a1[1]);
  }

  return 0;
}

uint64_t _cbPowerSourceUpdateParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v17 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  if (ParamID > 2)
  {
    switch(ParamID)
    {
      case 3:
        DataAsU16 = iAP2MsgGetDataAsU16(a3, &v17);
        if (!v17)
        {
          *(a4 + 6) = DataAsU16;
          *(a4 + 5) = 1;
        }

        break;
      case 4:
        v12 = iAP2MsgGetDataAsU16(a3, &v17);
        if (!v17)
        {
          *(a4 + 10) = v12;
          *(a4 + 8) = 1;
        }

        break;
      case 5:
        IsDataVoid = iAP2MsgIsDataVoid(a3);
        v17 = !IsDataVoid << 31 >> 31;
        if (IsDataVoid)
        {
          *(a4 + 12) = 257;
        }

        return v17;
      default:
        goto LABEL_23;
    }

    return v17;
  }

  if (!ParamID)
  {
    v13 = iAP2MsgGetDataAsU16(a3, &v17);
    if (v17)
    {
      return v17;
    }

    v14 = v13;
    if (!acc_userDefaults_BOOLForKey(@"IgnorePowerSourceUpdateForAvailableCurrent"))
    {
      *a4 = v14;
      *(a4 + 2) = 1;
      return v17;
    }

    if (gLogObjects && gNumLogObjects >= 37)
    {
      v10 = *(gLogObjects + 288);
    }

    else
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return v17;
    }

    *buf = 136315650;
    v19 = "_cbPowerSourceUpdateParams";
    v20 = 1024;
    v21 = 491;
    v22 = 1024;
    v23 = 0;
LABEL_41:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d iAP2MsgPowerSourceUpdate ignore paramID:%04X\n", buf, 0x18u);
    return v17;
  }

  if (ParamID != 1)
  {
LABEL_23:
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v15 = *(gLogObjects + 288);
    }

    else
    {
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _cbPowerSourceUpdateParams_cold_4();
    }

    return v17;
  }

  DataAsBool = iAP2MsgGetDataAsBool(a3, &v17);
  if (!v17)
  {
    v9 = DataAsBool;
    if (!acc_userDefaults_BOOLForKey(@"IgnorePowerSourceUpdateForAvailableCurrent"))
    {
      *(a4 + 3) = v9;
      *(a4 + 4) = 1;
      return v17;
    }

    if (gLogObjects && gNumLogObjects >= 37)
    {
      v10 = *(gLogObjects + 288);
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
      *buf = 136315650;
      v19 = "_cbPowerSourceUpdateParams";
      v20 = 1024;
      v21 = 507;
      v22 = 1024;
      v23 = 1;
      goto LABEL_41;
    }
  }

  return v17;
}

id iap2_power_accessoryResetBaseCurrentHandler(uint64_t a1)
{
  v1 = acc_manager_copyConnectionUUIDForEndpointUUID(*(a1 + 8));
  v2 = platform_power_resetBaseCurrent(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

BOOL iap2_power_powerSourceUpdateHandler(uint64_t *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xEuLL, 0x1000040D1CB851CuLL);
  v5 = iAP2MsgForEachParamDo(a2, 0, _cbPowerSourceUpdateParams, v4);
  if (v5)
  {
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v6 = *(gLogObjects + 288);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      iap2_power_powerSourceUpdateHandler_cold_2();
    }
  }

  else
  {
    v7 = acc_userDefaults_copyIntegerForKey(@"PowerSourceUpdateBehavior");
    if ((v7 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v8 = v7;
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v9 = *(gLogObjects + 288);
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
        v11 = 134217984;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PowerSourceUpdate message ignored due to behavior(%ld)!\n", &v11, 0xCu);
      }
    }

    else
    {
      _processPowerSourceUpdate(a1, v4);
    }
  }

  if (v4)
  {
    free(v4);
  }

  return v5 == 0;
}

uint64_t _cbAccessoryPowerUpdateParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, _WORD *a4)
{
  v10 = 0;
  if (iAP2MsgGetParamID(a3))
  {
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v6 = *(gLogObjects + 288);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _cbAccessoryPowerUpdateParams_cold_2();
      return 0;
    }
  }

  else
  {
    DataAsU16 = iAP2MsgGetDataAsU16(a3, &v10);
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v8 = *(gLogObjects + 288);
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
      *buf = 67109120;
      v12 = DataAsU16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AccessoryPowerUpdate accessoryChargeCurrent:%04X\n", buf, 8u);
    }

    result = v10;
    if (!v10)
    {
      *a4 = DataAsU16;
    }
  }

  return result;
}

BOOL iap2_power_accessoryPowerUpdateHandler(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
  v5 = iAP2MsgForEachParamDo(a2, 0, _cbAccessoryPowerUpdateParams, v4);
  if (!v5)
  {
    platform_power_updateAccessoryChargeCurrent(*(a1 + 8), *v4);
    goto LABEL_10;
  }

  if (gLogObjects && gNumLogObjects >= 37)
  {
    v6 = *(gLogObjects + 288);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    iap2_power_accessoryPowerUpdateHandler_cold_2();
    if (!v4)
    {
      return v5 == 0;
    }

    goto LABEL_10;
  }

  if (v4)
  {
LABEL_10:
    free(v4);
  }

  return v5 == 0;
}

uint64_t _cbStartPowerUpdatesParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, void *a4)
{
  ParamID = iAP2MsgGetParamID(a3);
  if (ParamID <= 0xC)
  {
    IsDataVoid = iAP2MsgIsDataVoid(a3);
    result = 1;
    if (!IsDataVoid)
    {
      return result;
    }

    *a4 |= (1 << ParamID);
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 37)
  {
    v9 = *(gLogObjects + 288);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v11[0] = 67109120;
    v11[1] = ParamID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "StartPowerUpdates unhandled paramID:%04X\n", v11, 8u);
    return 0;
  }

  return result;
}

uint64_t _setupPowerUpdateParam(uint64_t a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 0:
      v5 = 0;
      goto LABEL_19;
    case 1:
      v6 = a3;
      v7 = 1;
      goto LABEL_12;
    case 2:
      v6 = a3;
      v7 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v6 = a3;
      v7 = 4;
      goto LABEL_12;
    case 5:
      v6 = a3;
      v7 = 5;
LABEL_12:
      iAP2MsgAddU8Param(a1, 0, v7, v6);
      goto LABEL_20;
    case 6:
      v5 = 6;
      goto LABEL_19;
    case 7:
      v5 = 7;
      goto LABEL_19;
    case 8:
      v5 = 8;
      goto LABEL_19;
    case 9:
      v5 = 9;
      goto LABEL_19;
    case 10:
      v5 = 10;
      goto LABEL_19;
    case 11:
      v5 = 11;
      goto LABEL_19;
    case 12:
      v5 = 12;
LABEL_19:
      iAP2MsgAddU16Param(a1, 0, v5, a3);
LABEL_20:
      v9 = 0;
      break;
    default:
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v8 = *(gLogObjects + 288);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v9 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109376;
        v11[1] = 1;
        v12 = 1024;
        v13 = a2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PowerUpdate message processing error: %d. powerUpdateType: %d\n", v11, 0xEu);
      }

      break;
  }

  return v9;
}

BOOL iap2_power_startPowerUpdatesHandler(uint64_t a1, uint64_t a2)
{
  v5 = (iap2_feature_getFeature(a1, 0x10u) + 24);
  v4 = *v5;
  *v5 = 0;
  v6 = iAP2MsgForEachParamDo(a2, 0, _cbStartPowerUpdatesParams, v5);
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 36;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *(gLogObjects + 288);
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
      v14 = 67109120;
      LODWORD(v15) = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "StartPowerUpdate message processing error: %d\n", &v14, 8u);
    }
  }

  else
  {
    if (v9)
    {
      v11 = *(gLogObjects + 288);
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
      v12 = *v5;
      v14 = 134217984;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "startPowerUpdates: 0x%llx", &v14, 0xCu);
    }

    platform_power_startPowerUpdates(*(a1 + 8), *v5 | 0x40, v4);
  }

  return v7 == 0;
}

uint64_t iap2_power_stopPowerUpdatesHandler(uint64_t a1)
{
  *(iap2_feature_getFeature(a1, 0x10u) + 24) = 0;
  platform_power_stopPowerUpdates(*(a1 + 8));
  return 1;
}

uint64_t iap2_power_sendPowerUpdate(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v12 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v13 = *(gLogObjects + 288);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    LODWORD(v37) = a3;
    WORD2(v37) = 1024;
    *(&v37 + 6) = a4;
    WORD5(v37) = 1024;
    HIDWORD(v37) = a5;
    *v38 = 1024;
    *&v38[2] = a6;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "SendPowerUpdate: %d, %d, %d, %d\n", buf, 0x1Au);
    if (!a2)
    {
      goto LABEL_55;
    }
  }

  else if (!a2)
  {
    goto LABEL_55;
  }

  v34 = a6;
  v14 = (1 << a3);
  if ((*a2 & v14) == 0)
  {
    goto LABEL_55;
  }

  v15 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
  v16 = malloc_type_malloc(0xFFFFuLL, 0x8F5E613uLL);
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v17 = *(gLogObjects + 240);
  }

  else
  {
    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v12 = &audioProductCerts_endpoint_publish_onceToken;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = @"Null";
    }

    *buf = 136315650;
    *&v37 = "iap2_power_sendPowerUpdate";
    WORD4(v37) = 1024;
    *(&v37 + 10) = 865;
    HIWORD(v37) = 2112;
    *v38 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s:%d - iAP2MsgInit with cleanupCB - _iap2_power_msgCleanupCB endpointUUID: %@", buf, 0x1Cu);
  }

  v19 = iAP2MsgInit(v15, 44545, v16, 0xFFFF, _iap2_power_msgCleanupCB, 0);
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v20 = *(gLogObjects + 288);
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_55:
    v25 = 0;
    goto LABEL_56;
  }

  v26 = iap2_power_sendPowerUpdate_powerUpdateTypeStr[a3];
  if (a5 >= 0xD)
  {
    v27 = -1;
  }

  else
  {
    v27 = a5;
  }

  if (a5 > 0xC)
  {
    v28 = "";
  }

  else
  {
    v28 = iap2_power_sendPowerUpdate_powerUpdateTypeStr[a5];
  }

  *buf = 67110402;
  LODWORD(v37) = a3;
  WORD2(v37) = 2080;
  *(&v37 + 6) = v26;
  HIWORD(v37) = 1024;
  *v38 = a4;
  *&v38[4] = 1024;
  *&v38[6] = v27;
  v39 = 2080;
  v40 = v28;
  v41 = 1024;
  v42 = v34;
  _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "powerUpdateType=%d(%s) value=%u  powerUpdateType2=%d(%s) value2=%u", buf, 0x2Eu);
  if (!v19)
  {
    goto LABEL_55;
  }

LABEL_26:
  if (a3 <= 0xC && (*a2 & v14) != 0)
  {
    if (_setupPowerUpdateParam(v19, a3, a4))
    {
LABEL_38:
      iAP2MsgCleanup(v19);
      goto LABEL_39;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = 1;
  if (a5 <= 0xC && (*a2 & (1 << a5)) != 0)
  {
    updated = _setupPowerUpdateParam(v19, a5, v34);
    v21 += updated ^ 1;
    v22 = updated == 0;
  }

  if (!v22 || !v21)
  {
    goto LABEL_38;
  }

  if (iap2_sessionControl_sendOutgoingMessage(a1, v19))
  {
    goto LABEL_55;
  }

LABEL_39:
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v24 = *(gLogObjects + 288);
  }

  else
  {
    v24 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v25 = 1;
  v12 = &audioProductCerts_endpoint_publish_onceToken;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v37) = 1;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PowerUpdate processing error : %d\n", buf, 8u);
  }

LABEL_56:
  if (a3 == 6 || a5 == 6)
  {
    v29 = *(iap2_feature_getFeature(a1, 0x10u) + 36);
    if ((v29 & 0x80000000) == 0)
    {
      v35 = v29;
      if (_checkRequiresChargingCurrentLimit(a1, v29, &v35))
      {
        v31 = v12[491];
        if (v31 && gNumLogObjects >= 37)
        {
          v32 = *(v31 + 288);
        }

        else
        {
          v32 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          if (!a1 || (v33 = *(a1 + 8)) == 0)
          {
            v33 = 0;
          }

          *buf = 138412802;
          *&v37 = v33;
          WORD4(v37) = 1024;
          *(&v37 + 10) = v29;
          HIWORD(v37) = 1024;
          *v38 = v35;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "!!!! On re-check, Overriding availableCurrentForDevice(ChargingCurrentLimit) for accessory %@, %d -> %d", buf, 0x18u);
        }

        LOWORD(v29) = v35;
      }

      platform_power_setAvailableCurrent(*(a1 + 8), v29, 0);
    }
  }

  return v25;
}

void _iap2_power_msgCleanupCB(void *a1, int a2)
{
  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v3 = *(gLogObjects + 288);
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
      if (a1)
      {
        MsgID = iAP2MsgGetMsgID(a1);
        MsgLen = iAP2MsgGetMsgLen(a1);
      }

      else
      {
        MsgID = 0;
        MsgLen = 0;
      }

      v7 = 136316418;
      v8 = "_iap2_power_msgCleanupCB";
      v9 = 1024;
      v10 = 833;
      v11 = 1024;
      v12 = 1;
      v13 = 1024;
      v14 = MsgID;
      v15 = 1024;
      v16 = MsgLen;
      v17 = 2080;
      label = dispatch_queue_get_label(0);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d iAP2 Power MSG Cleanup callback deleting msg! needDelete=%d msgID=%xh msgLen=%d currentDispatchQueue: %s", &v7, 0x2Eu);
    }

    if (a1)
    {
      v6 = a1[3];
      if (v6)
      {
        free(v6);
      }

      free(a1);
    }
  }
}

BOOL iap2_power_updateHandler(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v4 = *(gLogObjects + 288);
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
    v5 = *a2;
    v6 = *(a2 + 4);
    v7 = *(a2 + 8);
    v8 = *(a2 + 12);
    v13[0] = 67109888;
    v13[1] = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending Power Update: %d, %d, %d, %d\n", v13, 0x1Au);
  }

  Feature = iap2_feature_getFeature(a1, 0x10u);
  v10 = Feature;
  if (Feature)
  {
    iap2_power_sendPowerUpdate(a1, (Feature + 24), *a2, *(a2 + 4), *(a2 + 8), *(a2 + 12));
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v11 = *(gLogObjects + 288);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      iap2_power_updateHandler_cold_3();
    }
  }

  return v10 != 0;
}

void iap2_power_registerForSleepNotification(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      platform_power_registerForSleepWakeUpdate(*(a1 + 8));
    }
  }
}

void iap2_power_unregisterForSleepNotification(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      platform_power_unregisterForSleepWakeUpdate(*(a1 + 8));
    }
  }
}

uint64_t iap2_power_sleepUpdateHandler(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      iAP2LinkRunLoopHandleSuspend(v1);
      usleep(0x186A0u);
    }
  }

  return 1;
}

double _createFeature(uint64_t a1)
{
  if (a1)
  {
    v1 = malloc_type_calloc(1uLL, 0x28uLL, 0x1000040D4D046C0uLL);
    if (v1)
    {
      *v1 = 0;
      *&result = 0x200000003;
      *(v1 + 4) = xmmword_1001C3970;
      *(v1 + 3) = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature(_DWORD **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      if (!a2)
      {
        goto LABEL_7;
      }

      if (v3[2] != 2)
      {
        platform_power_setPowerDuringSleep(*(a2 + 8), 0);
      }

      platform_power_stopPowerUpdates(*(a2 + 8));
      v3 = *a1;
      if (*a1)
      {
LABEL_7:
        free(v3);
        *a1 = 0;
      }
    }
  }

  return 1;
}

uint64_t _checkIdentificationInfo_4(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgDeviceNotificationsList, 6u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

id _getUSBBillboardDevicePluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBBillboardDevicePluginProtocol fallbackToTransportPlugins:1];

  return v1;
}

int main(int argc, const char **argv, const char **envp)
{
  kdebug_trace();
  context = objc_autoreleasePoolPush();
  init_logging();
  v4 = &_dispatch_main_q;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__2;
  v105 = __Block_byref_object_dispose__2;
  v106 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v102[5], &__block_literal_global_15);
  v5 = v102[5];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __main_block_invoke_56;
  handler[3] = &unk_100227998;
  handler[4] = &v101;
  dispatch_source_set_cancel_handler(v5, handler);
  dispatch_resume(v102[5]);
  kdebug_trace();
  v6 = 0;
  *buf = "/var/mobile/Library/CoreAccessories/.acc_analytics_v2.db";
  *&buf[8] = "/var/mobile/Library/CoreAccessories/.acc_analytics_v2.db-shm";
  *&buf[16] = "/var/mobile/Library/CoreAccessories/.acc_analytics_v2.db-wal";
  v112 = "/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_accessoryd_v2.db";
  v113 = "/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_accessoryd_v2.db-shm";
  v114 = "/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_accessoryd_v2.db-wal";
  do
  {
    v7 = *&buf[v6];
    v8 = +[NSFileManager defaultManager];
    v9 = [NSString stringWithUTF8String:v7];
    [v8 removeItemAtPath:v9 error:0];

    v6 += 8;
  }

  while (v6 != 48);
  v10 = dispatch_get_global_queue(0, 0);
  xpc_set_event_stream_handler("com.apple.accessoryd.digitalIDMatching", v10, &__block_literal_global_60);

  xpc_set_event_stream_handler("com.apple.accessoryd.cableTypeMatching", v10, &__block_literal_global_64);
  xpc_set_event_stream_handler("com.apple.accessoryd.btServiceMatching", v10, &__block_literal_global_68);

  xpc_set_event_stream_handler("com.apple.iokit.matching", v10, &__block_literal_global_72);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
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
    v13 = platform_system_unlockedSinceBoot();
    *buf = 136315650;
    *&buf[4] = "main";
    *&buf[12] = 1024;
    *&buf[14] = 193;
    *&buf[18] = 1024;
    *&buf[20] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:%d unlockedSinceBoot %d", buf, 0x18u);
  }

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting daemon...", buf, 2u);
  }

  __resetiAP2ShimServerState();
  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v16 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v17 = &_os_log_default;
  }

  v18 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

  if (v18)
  {
    v19 = +[NSBundle mainBundle];
    v20 = [v19 infoDictionary];
    v21 = [v20 objectForKeyedSubscript:@"GitCommitHash"];

    v22 = +[NSBundle mainBundle];
    v23 = [v22 infoDictionary];
    v24 = [v23 objectForKeyedSubscript:@"GitStatus"];

    if (v21 && ([v24 isEqualToString:@"Clean"] & 1) == 0)
    {
      v25 = [NSString stringWithFormat:@"%@ (%@)", v21, v24, context];
    }

    else
    {
      v25 = [NSString stringWithFormat:@"%@", v21];
    }

    v26 = v25;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v27 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v27 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Commit Hash: %@", buf, 0xCu);
    }

    v29 = [NSString stringWithCString:*argv encoding:4];
    v30 = +[NSFileManager defaultManager];
    v31 = [v30 attributesOfItemAtPath:v29 error:0];

    v32 = [v31 objectForKey:NSFileCreationDate];
    v33 = objc_alloc_init(NSDateFormatter);
    v34 = +[NSTimeZone localTimeZone];
    [v33 setTimeZone:v34];

    [v33 setDateStyle:1];
    [v33 setTimeStyle:3];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v35 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v35 = &_os_log_default;
      v36 = &_os_log_default;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v37 = [v33 stringFromDate:v32];
      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Binary date: %@", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v38 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v38 = &_os_log_default;
      v39 = &_os_log_default;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      isInternalBuild = platform_systemInfo_isInternalBuild();
      v41 = "NO";
      if (isInternalBuild)
      {
        v41 = "YES";
      }

      *buf = 136315138;
      *&buf[4] = v41;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Internal Build: %s", buf, 0xCu);
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v42 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v42 = &_os_log_default;
    v43 = &_os_log_default;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v44 = +[NSBundle mainBundle];
    main_cold_8(v44, v110);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v45 = *gLogObjects;
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

  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    +[NSBundle mainBundle];
    v47 = [objc_claimAutoreleasedReturnValue() bundlePath];
    main_cold_10(v47);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v48 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v48 = &_os_log_default;
    v49 = &_os_log_default;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    +[NSBundle mainBundle];
    v50 = [objc_claimAutoreleasedReturnValue() bundleIdentifier];
    main_cold_12(v50);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v51 = *gLogObjects;
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

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    +[NSBundle mainBundle];
    v53 = [objc_claimAutoreleasedReturnValue() builtInPlugInsPath];
    main_cold_14(v53);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v54 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v54 = &_os_log_default;
    v55 = &_os_log_default;
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    v56 = +[NSBundle mainBundle];
    v57 = [v56 localizations];
    main_cold_16(v57, v109, v54, v56);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v58 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v58 = &_os_log_default;
    v59 = &_os_log_default;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v60 = +[NSBundle mainBundle];
    v61 = [v60 preferredLocalizations];
    main_cold_18(v61, v108, v58, v60);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v62 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v62 = &_os_log_default;
    v63 = &_os_log_default;
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    v64 = acc_strings_bundle();
    main_cold_20(v64, v107);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v65 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v65 = &_os_log_default;
    v66 = &_os_log_default;
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "main";
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%s: initIdentityCertStates ... ", buf, 0xCu);
  }

  inited = mfi4Auth_protocol_initIdentityCertStates();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v68 = *gLogObjects;
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
    *buf = 136315394;
    *&buf[4] = "main";
    *&buf[12] = 1024;
    *&buf[14] = inited;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%s: initIdentityCertStates ... errNo %d", buf, 0x12u);
  }

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v70 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v70 = &_os_log_default;
    v71 = &_os_log_default;
  }

  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Loading platform plugins...", buf, 2u);
  }

  v72 = +[ACCPlatformPluginManager sharedManager];
  [v72 loadAllBundles];

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v73 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v73 = &_os_log_default;
    v74 = &_os_log_default;
  }

  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Initializing platform plugins...", buf, 2u);
  }

  v75 = +[ACCPlatformPluginManager sharedManager];
  [v75 initAllPlugIns];

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v76 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v76 = &_os_log_default;
    v77 = &_os_log_default;
  }

  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Starting EA XPC server...", buf, 2u);
  }

  v78 = +[ACCExternalAccessoryServer sharedServer];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v79 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v79 = &_os_log_default;
    v80 = &_os_log_default;
  }

  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Starting accessory transport server...", buf, 2u);
  }

  v81 = +[ACCTransportServer sharedServer];
  [v81 startServer];

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v82 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v82 = &_os_log_default;
    v83 = &_os_log_default;
  }

  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Loading transport plugins...", buf, 2u);
  }

  v84 = +[ACCTransportPluginManager sharedManager];
  [v84 loadAllBundles];

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v85 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v85 = &_os_log_default;
    v86 = &_os_log_default;
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Initializing transport plugins...", buf, 2u);
  }

  v87 = +[ACCTransportPluginManager sharedManager];
  [v87 initAllPlugIns];

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v88 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v88 = &_os_log_default;
    v89 = &_os_log_default;
  }

  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Starting transport plugins...", buf, 2u);
  }

  v90 = +[ACCTransportPluginManager sharedManager];
  [v90 startAllPlugIns];

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v91 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v91 = &_os_log_default;
    v92 = &_os_log_default;
  }

  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Loading feature plugins...", buf, 2u);
  }

  v93 = +[ACCFeaturePluginManager sharedManager];
  [v93 loadAllBundles];

  kdebug_trace();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v94 = *gLogObjects;
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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Initializing feature plugins...", buf, 2u);
  }

  v96 = +[ACCFeaturePluginManager sharedManager];
  [v96 initAllPlugIns];

  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  if (_isDeviceAnalyticsEnabled_onceToken != -1)
  {
    main_cold_32();
  }

  [v78 startServer];

  _Block_object_dispose(&v101, 8);
  objc_autoreleasePoolPop(context);
  v97 = +[NSRunLoop currentRunLoop];
  [v97 run];

  __resetiAP2ShimServerState();
  return 0;
}