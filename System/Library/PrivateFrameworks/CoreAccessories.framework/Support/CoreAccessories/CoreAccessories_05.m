void _mfi4Auth_endpoint_cleanupSession(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
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
    v8 = 67109120;
    v9 = 573;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_mfi4Auth_endpoint_cleanupSession: %d", &v8, 8u);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 30) = 1;
    mfi4Auth_protocol_cleanupSessionCommon(v3);
    v4 = *v3;
    *v3 = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v5 = *(gLogObjects + 440);
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
      v8 = 67109120;
      v9 = 585;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_mfi4Auth_endpoint_cleanupSession: %d", &v8, 8u);
    }

    mfi4Auth_protocol_cleanupNVMContext(*(v3 + 712));
    v6 = *(v3 + 712);
    if (v6)
    {
      free(v6);
      *(v3 + 712) = 0;
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      free(v7);
      *(a1 + 8) = 0;
    }
  }
}

void __mfi4Auth_endpoint_publish_block_invoke(id a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v2 = CFACCTransportPlugin_EndpointPropertiesDidChangeNotification;

  CFNotificationCenterAddObserver(LocalCenter, 0, _mfi4Auth_endpoint_handlePropertiesDidChange, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void _mfi4Auth_endpoint_firstUnlockHandler()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v0 = *(gLogObjects + 440);
  }

  else
  {
    v0 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "_mfi4Auth_endpoint_firstUnlockHandler FIRED!!", buf, 2u);
  }

  v1 = acc_manager_copyAllEndpoints();
  Count = CFDictionaryGetCount(v1);
  v3 = 8 * Count;
  v4 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = (&v12 - v4);
  if (__chkstk_darwin(Count))
  {
    v6 = memset(&v12 - v4, 170, v3);
    __chkstk_darwin(v6);
    v7 = &v12 - v4;
    memset(v7, 170, v3);
  }

  else
  {
    v7 = &v13;
  }

  CFDictionaryGetKeysAndValues(v1, v5, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (Count >= 1)
  {
    while (acc_endpoint_getTransportType(*v7) != 13 || acc_endpoint_getProtocol(*v7) != 14)
    {
      ++v5;
      v7 += 8;
      if (!--Count)
      {
        goto LABEL_27;
      }
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v8 = *(gLogObjects + 440);
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
      v9 = *v5;
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_mfi4Auth_endpoint_firstUnlockHandler endpoint Found: %@", buf, 0xCu);
    }

    v10 = *(acc_manager_getEndpointWithUUID(*v5) + 7);
    *(v10[1] + 32) = 1;
    if (acc_endpoint_getTransportType(*v10) == 13)
    {
      acc_endpoint_setProperty(*v10, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }
  }

LABEL_27:
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, 0, @"ACCPlatformApplicationFirstUnlockNotification", 0);
}

uint64_t mfi4Auth_endpoint_processIncomingData(void *a1, const void *a2)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_processIncomingData", buf, 2u);
  }

  if (!a1)
  {
    mfi4Auth_endpoint_processIncomingData_cold_5();
    return buf[0];
  }

  if (!*a1)
  {
    mfi4Auth_endpoint_processIncomingData_cold_4();
    return buf[0];
  }

  if (!a2)
  {
    mfi4Auth_endpoint_processIncomingData_cold_3();
    return buf[0];
  }

  if (*(*a1 + 24) == 13 && (acc_userDefaults_BOOLForKey(@"PretendNoNFCResponse") & 1) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v5 = *(gLogObjects + 440);
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
      v8 = acc_userDefaults_BOOLForKey(@"PretendNoNFCResponse");
      *buf = 136315394;
      v11 = "mfi4Auth_endpoint_processIncomingData";
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: PretendNoNFCResponse %d, ignore incomingData!", buf, 0x12u);
    }
  }

  else
  {
    CFRetain(a2);
    v6 = a1[2];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = __mfi4Auth_endpoint_processIncomingData_block_invoke;
    v9[3] = &__block_descriptor_tmp_14_1;
    v9[4] = a1;
    v9[5] = a2;
    dispatch_async(v6, v9);
  }

  return 1;
}

void __mfi4Auth_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  mfi4Auth_protocol_messageHandler_receiveIncomingData(*(*(a1 + 32) + 8), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t mfi4Auth_endpoint_processOutgoingSecureTunnelDataForClient(void *a1, int a2, const __CFData *a3)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v12 = a2;
    v13 = 2048;
    Length = CFDataGetLength(a3);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_processOutgoingSecureTunnelDataForClient: type %d, dataOut %ld bytes", buf, 0x12u);
  }

  if (a1)
  {
    if (*a1)
    {
      if (a3)
      {
        CFRetain(a3);
        v7 = a1[2];
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = __mfi4Auth_endpoint_processOutgoingSecureTunnelDataForClient_block_invoke;
        block[3] = &__block_descriptor_tmp_15;
        v10 = a2;
        block[4] = a1;
        block[5] = a3;
        dispatch_async(v7, block);
        return 1;
      }

      mfi4Auth_endpoint_processIncomingData_cold_3();
    }

    else
    {
      mfi4Auth_endpoint_processIncomingData_cold_4();
    }
  }

  else
  {
    mfi4Auth_endpoint_processIncomingData_cold_5();
  }

  return buf[0];
}

void __mfi4Auth_endpoint_processOutgoingSecureTunnelDataForClient_block_invoke(uint64_t a1)
{
  mfi4Auth_protocol_messageHandler_handleOutgoingSecureTunnelDataForClient(*(*(a1 + 32) + 8), *(a1 + 48), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t mfi4Auth_endpoint_sendOutgoingData(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *a1;
      Som = iAP2MsgGetSom(a2);
      acc_platform_packetLogging_logMFi4AuthProtocolMsg(v4, Som, a2, 0, 0);
      if (mfi4Auth_protocol_encryptOutgoingData(a1[1]))
      {
        if (mfi4Auth_util_packetLoggingEncryptedData())
        {
          v6 = *a1;
          v7 = iAP2MsgGetSom(a2);
          acc_platform_packetLogging_logMFi4AuthProtocolMsg(v6, v7, a2, 0, 1);
        }

        v8 = *(a2 + 24);
        MsgLen = iAP2MsgGetMsgLen(a2);
        v10 = CFDataCreate(kCFAllocatorDefault, v8, MsgLen);
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v11 = *(gLogObjects + 440);
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
          v14 = 138412290;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_sendOutgoingData: %@", &v14, 0xCu);
        }

        v12 = acc_endpoint_sendOutgoingData(v4, v10);
        if (v10)
        {
          CFRelease(v10);
        }

        if (v12)
        {
          return 1;
        }
      }
    }

    else
    {
      mfi4Auth_endpoint_sendOutgoingData_cold_2();
    }
  }

  else
  {
    mfi4Auth_endpoint_sendOutgoingData_cold_3();
  }

  mfi4Auth_endpoint_sendOutgoingData_cold_4(a1, &v14);
  return v14;
}

uint64_t mfi4Auth_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler(const void *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = *(*(acc_manager_getEndpointWithUUID(a1) + 7) + 8);

      return mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler(v5, a2, a3);
    }

    else
    {
      mfi4Auth_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler_cold_1();
      return v7;
    }
  }

  else
  {
    mfi4Auth_endpoint_processIncomingData_cold_5();
    return v8;
  }
}

uint64_t mfi4Auth_endpoint_timeoutForTransportInSeconds(int a1)
{
  if (a1 == 3)
  {
    v1 = 10;
  }

  else
  {
    v1 = 0;
  }

  v2 = acc_userDefaults_copyIntegerForKey(@"MFi4AuthTimeoutValueS");
  if (v2)
  {
    return v2 & ~(v2 >> 63);
  }

  else
  {
    return v1;
  }
}

void ___mfi4Auth_endpoint_isEndpointSupportsMutualAuth_block_invoke(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v2 = *gLogObjects;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "_mfi4Auth_endpoint_isEndpointSupportsMutualAuth_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: initIdentityCertStates ... ", &v5, 0xCu);
  }

  inited = mfi4Auth_protocol_initIdentityCertStates();
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v4 = *gLogObjects;
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
    v5 = 136315394;
    v6 = "_mfi4Auth_endpoint_isEndpointSupportsMutualAuth_block_invoke";
    v7 = 1024;
    v8 = inited;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: initIdentityCertStates ... errNo %d", &v5, 0x12u);
  }
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke(uint64_t a1)
{
  v10 = 0;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
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
    *buf = 136315138;
    v12 = "_mfi4Auth_endpoint_sendAuthSetupStart_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  EndpointWithUUID = acc_manager_getEndpointWithUUID(v4);
  if (EndpointWithUUID)
  {
    v6 = EndpointWithUUID;
    if (*(EndpointWithUUID + 7))
    {
      v7 = EndpointWithUUID[7];
      if (v7)
      {
        if (mfi4Auth_protocol_authSetupStart(v7[1], &v10))
        {
          ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_2();
        }

        else
        {
          mfi4Auth_endpoint_sendOutgoingData(v7, v10);
          if (*(v6 + 6) == 13 && (acc_userDefaults_BOOLForKey(@"DisableNFCAuthTimer") & 1) == 0)
          {
            v8 = v7[4];
            v9 = dispatch_time(0, 3000000000);
            dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
          }
        }
      }

      else
      {
        ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_3(v3);
      }
    }

    else
    {
      ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_4(v3);
    }
  }

  else
  {
    ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_5(v3);
  }

  if (v10)
  {
    free(v10);
    v10 = 0;
  }

  if (*v3)
  {
    CFRelease(*v3);
  }
}

void ___mfi4Auth_endpoint_handlePropertiesDidChange_block_invoke(uint64_t a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 32));
  if (EndpointWithUUID)
  {
    v3 = EndpointWithUUID;
    if (*(EndpointWithUUID + 7) == 14)
    {
      if (EndpointWithUUID[7])
      {
        v4 = acc_endpoint_copyProperty(EndpointWithUUID);
        if (v4)
        {
          v5 = v4;
          v6 = CFGetTypeID(v4);
          if (v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) == 1)
          {
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v7 = *(gLogObjects + 440);
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
              v8[0] = 0;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_mfi4Auth_endpoint_handlePropertiesDidChange: sendAuthSetupStart", v8, 2u);
            }

            _mfi4Auth_endpoint_sendAuthSetupStart(v3[7]);
          }
        }
      }
    }
  }

  CFRelease(*(a1 + 32));
}

void *OUTLINED_FUNCTION_9_15()
{

  return logObjectForModule_1(55);
}

void *OUTLINED_FUNCTION_15_14()
{

  return logObjectForModule_1(55);
}

void OUTLINED_FUNCTION_16_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void *qiAuth_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x878uLL, 0x10F004037CAF07AuLL);
    v3 = v2;
    if (v2)
    {
      *v2 = a1;
      v4 = *(a1 + 16);
      v5 = v4 ? CFStringCreateCopy(kCFAllocatorDefault, v4) : 0;
      v3[2] = v5;
      v6 = *(a1 + 8);
      v7 = v6 ? CFStringCreateCopy(kCFAllocatorDefault, v6) : 0;
      v3[1] = v7;
      *(v3 + 1080) = 128;
      v8 = malloc_type_calloc(1uLL, 0x80uLL, 0xA6E4C436uLL);
      v3[269] = v8;
      *(v3 + 1081) = 0;
      *(v3 + 265) = 0u;
      *(v3 + 267) = 0u;
      *(v3 + 128) = 0u;
      *(v3 + 129) = 0u;
      *(v3 + 130) = 0u;
      *(v3 + 131) = 0u;
      *(v3 + 528) = 0;
      if (v8)
      {
        Copy = v3[2];
        if (Copy)
        {
          Copy = CFStringCreateCopy(kCFAllocatorDefault, Copy);
          v10 = v3[269];
        }

        else
        {
          v10 = v8;
        }

        v3[255] = v3 + 5;
        if (!qiAuth_protocol_init((v3 + 5), Copy, 0, 1, 1u, 1, v10, *(v3 + 1080)))
        {
          v11 = dispatch_queue_create("QiAuthEndpoint", 0);
          v3[4] = v11;
          if (v11)
          {
            dispatch_set_context(v11, v3);
            dispatch_set_finalizer_f(v3[4], _qiAuth_endpoint_dispatchQueueFinalizer);
            v12 = 0;
            while (1)
            {
              v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3[4]);
              v14 = &v3[v12];
              v14[256] = v13;
              if (!v13)
              {
                break;
              }

              dispatch_source_set_timer(v13, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
              v15 = v14[256];
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 0x40000000;
              handler[2] = __qiAuth_endpoint_create_block_invoke;
              handler[3] = &__block_descriptor_tmp_9;
              handler[4] = v3;
              v24 = v12;
              dispatch_source_set_event_handler(v15, handler);
              dispatch_activate(v14[256]);
              if (++v12 == 4)
              {
                acc_platform_packetLogging_logEvent(*v3, "ATTACH", "QiAuth accessory attached!", v16, v17, v18, v19, v20, v22);
                return v3;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    qiAuth_endpoint_create_cold_1(&v25);
    v3 = v25;
  }

  qiAuth_endpoint_create_cold_2(v3, &v25);
  return v25;
}

void *logObjectForModule_22()
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    return *(gLogObjects + 472);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

void _qiAuth_endpoint_dispatchQueueFinalizer(void *a1)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v2 = *(gLogObjects + 472);
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
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up pQiAuthProtocol in queue finalizer", v9, 2u);
    }

    v3 = a1[2];
    qiAuth_protocol_cleanup(a1[255], 0, 0);
    a1[255] = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    for (i = 256; i != 260; ++i)
    {
      v5 = a1[i];
      if (v5)
      {
        dispatch_source_set_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_source_cancel(a1[i]);
        dispatch_release(a1[i]);
        a1[i] = 0;
      }
    }

    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
      a1[1] = 0;
    }

    v7 = a1[2];
    if (v7)
    {
      CFRelease(v7);
      a1[2] = 0;
    }

    v8 = a1[269];
    if (v8)
    {
      free(v8);
    }

    free(a1);
  }

  else
  {
    _qiAuth_endpoint_dispatchQueueFinalizer_cold_2();
  }
}

void __qiAuth_endpoint_create_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v2 = *(gLogObjects + 472);
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
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8 * v3 + 2080) != 0;
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "QiAuth timer source fired!!! qiAuthTimerCallback(%d), timerID %d", v9, 0xEu);
  }

  v5 = *(a1 + 32);
  v6 = v5 + 8 * *(a1 + 40);
  v7 = *(v6 + 2080);
  if (v7)
  {
    v8 = *(v6 + 2120);
    v7(*(v5 + 2040));
    *(*(a1 + 32) + 8 * *(a1 + 40) + 2080) = 0;
  }
}

uint64_t qiAuth_endpoint_destroy(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*a1)
    {
      acc_platform_packetLogging_logEvent(*v9, "DETACH", "QiAuth accessory detached!", a4, a5, a6, a7, a8, v14);
      v10 = (*a1)[4];
      (*a1)[4] = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __qiAuth_endpoint_destroy_block_invoke;
      block[3] = &__block_descriptor_tmp_7_1;
      block[4] = v9;
      dispatch_sync(v10, block);
      dispatch_release(v10);
      *a1 = 0;
      return 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v12 = *(gLogObjects + 472);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v13)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "QiAuth Endpoint Destroy. *ppProtocolEndpoint is null!", &v14, 2u);
        return 0;
      }
    }
  }

  else
  {
    qiAuth_endpoint_destroy_cold_2(&v14);
    return v14;
  }

  return result;
}

void __qiAuth_endpoint_destroy_block_invoke(uint64_t a1)
{
  for (i = 2048; i != 2080; i += 8)
  {
    v3 = *(*(a1 + 32) + i);
    if (v3)
    {
      dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_source_cancel(*(*(a1 + 32) + i));
      dispatch_release(*(*(a1 + 32) + i));
      *(*(a1 + 32) + i) = 0;
    }
  }
}

void __qiAuth_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if ((_qiAuth_endpoint_handleMessage(*(a1 + 32), *(a1 + 40)) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v3 = *(gLogObjects + 472);
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
      __qiAuth_endpoint_processIncomingData_block_invoke_cold_2(a1, v2, v3);
    }
  }

  CFRelease(*v2);
}

uint64_t _qiAuth_endpoint_handleMessage(uint64_t a1, const __CFData *a2)
{
  if (!a1)
  {
    _qiAuth_endpoint_handleMessage_cold_3(&v10);
    return v10;
  }

  if (!*(a1 + 2152) || !*(a1 + 2160))
  {
    _qiAuth_endpoint_handleMessage_cold_2(&v10);
    return v10;
  }

  if (acc_userDefaults_BOOLForKey(@"ForceAuthTimeout") && (v4 = CFDataGetBytePtr(a2)) != 0 && (*v4 & 0xF) == 3)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v5 = *(gLogObjects + 472);
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
      v10 = 136315138;
      v11 = "_qiAuth_endpoint_handleMessage";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Skip CHALLENGE_AUTH!!!", &v10, 0xCu);
    }

    return 1;
  }

  else
  {
    v6 = *(a1 + 2040);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    return qiAuth_protocol_processIncomingData(v6, BytePtr, Length) < 2;
  }
}

uint64_t qiAuth_endpoint_sendOutgoingData(uint64_t *a1, const UInt8 *a2, CFIndex length)
{
  if (a1)
  {
    v4 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a2, length, kCFAllocatorNull);
    acc_platform_packetLogging_logQiAuthMsg(*a1, v4, 0);
    v5 = acc_endpoint_sendOutgoingData(*a1, v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    _qiAuth_endpoint_handleMessage_cold_3(&v7);
    return v7;
  }

  return v5;
}

uint64_t qiAuth_endpoint_setAuthState(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _qiAuth_endpoint_handleMessage_cold_3(&v18);
    return v18;
  }

  if (!a2)
  {
    qiAuth_endpoint_setAuthState_cold_3(&v17);
    return v17;
  }

  v9 = *a1;
  if (!v9)
  {
    qiAuth_endpoint_setAuthState_cold_2(&v16);
    return v16;
  }

  v10 = *v9;
  if (!*v9)
  {
    qiAuth_endpoint_setAuthState_cold_1(&v15);
    return v15;
  }

  switch(a2)
  {
    case 1:
      v11 = "AUTH FAILED";
      v12 = "QiAuth accessory authentication Failed!";
      goto LABEL_11;
    case 3:
      v11 = "AUTH TIMEOUT";
      v12 = "QiAuth accessory authentication Timed Out!";
      goto LABEL_11;
    case 2:
      v11 = "AUTH PASSED";
      v12 = "QiAuth accessory authentication Passed!";
LABEL_11:
      acc_platform_packetLogging_logEvent(v9, v11, v12, a4, a5, a6, a7, a8, v14);
      break;
  }

  return acc_connection_setAuthStatus(v10, 3, a2);
}

void *logObjectForModule_23()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 27;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    return *(gLogObjects + 208);
  }

  v1 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_1();
  }

  return v1;
}

void ___userNotificationHandler_block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (a2 > 2)
  {
    v4 = @"[Unknown]";
  }

  else
  {
    v4 = *(&off_1002287C8 + a2);
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 27;
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
      logObjectForModule_cold_1_1();
    }
  }

  else
  {
    v6 = *(gLogObjects + 208);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User notification response: %@", &v10, 0xCu);
  }

  CFRelease(v4);
  if (*(a1 + 42) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 27)
    {
      v7 = *(gLogObjects + 208);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = 2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending user notification response message (0x%04X)!", &v10, 8u);
    }

    v8 = *(a1 + 32);
    iAP2MsgInit(v8 + 120, 2, *(v8 + 192), 0xFFFF, 0, 0);
    v9 = *(a1 + 43) != 1 || iAP2MsgAddU16Param(v8 + 120, 0, 0, *(a1 + 40)) == 0;
    if (iAP2MsgAddU8Param(v8 + 120, 0, 1, v2) || !v9)
    {
      iap2_sessionControl_sendOutgoingMessage(*(a1 + 32), v8 + 120);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_16@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 - 140) = a2;
  *(v2 - 136) = 1024;
  *(v2 - 134) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_9_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v13 - 144) = a11.n128_u32[0];
  *(v13 - 140) = v11;
  *(v13 - 132) = 1024;
  *(v13 - 130) = v12;
  return result;
}

void ACCAuthProtocol_PrintMessage(unsigned __int8 *a1, unsigned int a2, const char *a3, int a4, int a5)
{
  if (a1)
  {
    memset(v39, 0, sizeof(v39));
    v26 = 0;
    v10 = acc_auth_protocol_sizeofMessage(a1, a2, 0, &v26);
    __acc_auth_protocol_getMessagePayloadString(a1, a2, v39, 256);
    if (a4)
    {
      v11 = "";
      v12 = *a1;
      v13 = a1[1];
      if (a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = "";
      }

      if (a3)
      {
        v11 = " ";
      }

      v15 = a1[2];
      v16 = a1[3];
      *buf = "Setup";
      *&buf[8] = "SetupResp";
      *&buf[16] = "Start";
      *&v28 = "StartResp";
      *(&v28 + 1) = "Info";
      v29 = "InfoResp";
      v30 = "Finish";
      v31 = "FinishResp";
      if ((v12 & 0xF8) == 0xA0)
      {
        v17 = *&buf[8 * (v12 & 7)];
      }

      else
      {
        v17 = "Unknown";
      }

      printf("%s%smsg: hdr: %02X %02X %02X %02X \n    id [%s], ver %d, seq %d, sess %d, len %d \n    { %s } \n", v14, v11, v12, v13, v15, v16, v17, v13 >> 4, v15 >> 4, v15 & 0xF, v26, v39);
      goto LABEL_26;
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
        platform_bluetooth_copyNameForMacAddress_cold_1();
      }
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_26:
      if (!a5)
      {
        return;
      }

      goto LABEL_27;
    }

    v19 = *a1;
    v20 = a1[1];
    if (a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = "";
    }

    if (a3)
    {
      v22 = " ";
    }

    else
    {
      v22 = "";
    }

    v23 = a1[2];
    v24 = a1[3];
    *buf = "Setup";
    *&buf[8] = "SetupResp";
    *&buf[16] = "Start";
    *&v28 = "StartResp";
    *(&v28 + 1) = "Info";
    v29 = "InfoResp";
    v30 = "Finish";
    v31 = "FinishResp";
    if ((v19 & 0xF8) == 0xA0)
    {
      v25 = *&buf[8 * (v19 & 7)];
    }

    else
    {
      v25 = "Unknown";
    }

    *buf = 136317954;
    *&buf[4] = v21;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    *&buf[22] = 1024;
    LODWORD(v28) = v19;
    WORD2(v28) = 1024;
    *(&v28 + 6) = v20;
    WORD5(v28) = 1024;
    HIDWORD(v28) = v23;
    LOWORD(v29) = 1024;
    *(&v29 + 2) = v24;
    HIWORD(v29) = 2080;
    v30 = v25;
    LOWORD(v31) = 1024;
    *(&v31 + 2) = v20 >> 4;
    HIWORD(v31) = 1024;
    v32 = v23 >> 4;
    v33 = 1024;
    v34 = v23 & 0xF;
    v35 = 1024;
    v36 = v26;
    v37 = 2080;
    v38 = v39;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s%smsg: hdr: %02X %02X %02X %02X \n    id [%s], ver %d, seq %d, sess %d, len %d \n    { %s } \n", buf, 0x5Au);
    if (a5)
    {
LABEL_27:
      ACCAuthProtocol_PrintData(a1, v10);
    }
  }
}

const char *__acc_auth_protocol_getMessagePayloadString(unsigned __int8 *a1, unsigned int a2, char *a3, int a4)
{
  v49 = 0;
  v48 = 0;
  v7 = acc_auth_protocol_messagePayload(a1, a2, &v49 + 1, &v49, &v48);
  if (!a1)
  {
    return "";
  }

  v8 = *a1;
  v9 = v8 + 94;
  if ((v8 - 162) <= 5)
  {
    if (((1 << v9) & 3) == 0)
    {
      if (((1 << v9) & 0xC) != 0)
      {
        if (v48 < 6)
        {
          if (v48 < 4)
          {
            if (v48 >= 2)
            {
              v18 = *v7;
              if (v7[1] <= 9u)
              {
                v19 = off_1002287E0[v7[1]];
              }

              v29 = v7[1];
              snprintf(a3, a4, "info(%02X)[%02X %s]");
            }
          }

          else
          {
            v16 = *v7;
            if (v7[1] <= 9u)
            {
              v17 = off_1002287E0[v7[1]];
            }

            v39 = v7[2];
            v43 = v7[3];
            snprintf(a3, a4, "info(%02X)[%02X %s], param1(%02X)[%02X]");
          }
        }

        else
        {
          v10 = v7[1];
          if (v10 <= 9)
          {
            v11 = off_1002287E0[v7[1]];
          }

          v12 = v7[2];
          v13 = v7[3];
          v14 = v7[4];
          v45 = v7[5];
          snprintf(a3, a4, "info(%02X)[%02X %s], param1(%02X)[%02X %02X %02X%s]", *v7, v10);
        }

        return a3;
      }

      if (v48)
      {
        if (!*v7)
        {
          snprintf(a3, a4, "SUCCESS");
          return a3;
        }

        if (v48 >= 5 && *v7 == 1)
        {
          v22 = bswap32(*(v7 + 1));
          snprintf(a3, a4, "FAILED: %#10x");
          return a3;
        }
      }

LABEL_28:
      snprintf(a3, a4, "no parameters");
      return a3;
    }

    if (v48 < 0x45)
    {
      if (v48 < 0x22 || *v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*v7)
      {
        goto LABEL_28;
      }

      if (v7[34] == 1)
      {
        v46 = v7[37];
        v47 = v7[38];
        v42 = v7[35];
        v44 = v7[36];
        v32 = v7[3];
        v37 = v7[4];
        snprintf(a3, a4, "nonce(%d bytes)[%02X %02X %02X ...], ecdhKey(%d bytes)[%02X %02X %02X ...]", v7[1], v7[2]);
        return a3;
      }
    }

    v20 = v7[1];
    v35 = v7[3];
    v40 = v7[4];
    v30 = v7[2];
    snprintf(a3, a4, "nonce(%d bytes)[%02X %02X %02X ...], ecdhKey - cannot parse parameter");
    return a3;
  }

  if ((v8 - 160) >= 2)
  {
    snprintf(a3, a4, "Unknown messageID !!");
  }

  else if (v48 < 9)
  {
    if (v48 == 8)
    {
      v33 = v7[7];
      v38 = v7[8];
      v23 = bswap32(*(v7 + 1));
      v27 = v7[6];
      snprintf(a3, a4, "characteristics[0x%08X], authTypes(%d)[%02X %02X]");
    }

    else if (v48 < 7)
    {
      if (v48 >= 5)
      {
        v25 = bswap32(*(v7 + 1));
        snprintf(a3, a4, "characteristics[0x%08X], authTypes - insufficient bytes");
      }
    }

    else
    {
      v28 = v7[6];
      v34 = v7[7];
      v24 = bswap32(*(v7 + 1));
      snprintf(a3, a4, "characteristics[0x%08X], authTypes(%d)[%02X]");
    }
  }

  else
  {
    v36 = v7[8];
    v41 = v7[9];
    v26 = v7[6];
    v31 = v7[7];
    v21 = bswap32(*(v7 + 1));
    snprintf(a3, a4, "characteristics[0x%08X], authTypes(%d)[%02X %02X %02X]");
  }

  return a3;
}

__n128 ACCAuthProtocol_PrintData(unsigned __int8 *a1, int a2)
{
  memset(__b, 170, sizeof(__b));
  __sprintf_chk(__b, 0, 0x3E8uLL, "data: \n");
  if (a2)
  {
    v5 = 0;
    v6 = &a1[a2];
    v7 = __b;
    do
    {
      v8 = *a1++;
      sprintf(v7, "%02x ", v8);
      v7 += 3;
      v5 += 3;
      if (v5 >= 0x3D5)
      {
        *v7 = 0;
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v11 = *(gLogObjects + 432);
        }

        else
        {
          v11 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v15 = v9;
            v16 = 1024;
            v17 = v10;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v11 = &_os_log_default;
          }
        }

        v7 = __b;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v15 = __b;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
        }

        v5 = 0;
      }
    }

    while (a1 < v6);
    if (v5)
    {
      *v7 = 0;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v12 = *(gLogObjects + 432);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_bluetooth_copyNameForMacAddress_cold_1();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = __b;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s \n", buf, 0xCu);
      }
    }
  }

  return result;
}

uint64_t *iAP2LinkActionStartTimeSync(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 264);
  *a2 = 29;
  CurTimeMsInt64 = iAP2TimeGetCurTimeMsInt64();
  *(v3 + 72) = 0;
  *v3 = CurTimeMsInt64;
  TimeSyncPacket = iAP2PacketCreateTimeSyncPacket(v2, 84, *(v2 + 190), (v2 + 188), CurTimeMsInt64, 0, 0);
  iAP2LinkSendPacket(v2, TimeSyncPacket, 0);

  return iAP2PacketRelease(TimeSyncPacket);
}

void iAP2LinkActionHandleTimeSyncResponse(uint64_t a1, _BYTE *a2)
{
  *a2 = 29;
  v2 = *(a1 + 16);
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = *(*(v2 + 280) + 72);
    if (bswap64(*(v4 + 1)) == *v3)
    {
      v5 = bswap64(*(v4 + 9));
      v72 = NAN;
      v73 = NAN;
      CurTimeMsInt64 = iAP2TimeGetCurTimeMsInt64();
      v7 = 2 * v5;
      if ((_iAP2LogEnableMask & 4) == 0)
      {
        goto LABEL_22;
      }

      if (gLogObjects && gNumLogObjects >= 20)
      {
        v8 = *(gLogObjects + 152);
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
        iAP2LinkActionHandleTimeSyncResponse_cold_2(v3, v8, v10, v11, v12, v13, v14, v15);
      }

      if ((_iAP2LogEnableMask & 4) == 0)
      {
        goto LABEL_22;
      }

      if (gLogObjects && gNumLogObjects >= 20)
      {
        v16 = *(gLogObjects + 152);
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

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        iAP2LinkActionHandleTimeSyncResponse_cold_4(v5, v16, v18, v19, v20, v21, v22, v23);
      }

      if ((_iAP2LogEnableMask & 4) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v40 = *(gLogObjects + 152);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v40 = &_os_log_default;
          v53 = &_os_log_default;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          iAP2LinkActionHandleTimeSyncResponse_cold_6(CurTimeMsInt64, v40, v54, v55, v56, v57, v58, v59);
        }

        v24 = (v7 - (CurTimeMsInt64 + *v3)) / 2;
        if ((_iAP2LogEnableMask & 4) != 0)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v60 = *(gLogObjects + 152);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v60 = &_os_log_default;
            v64 = &_os_log_default;
          }

          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            iAP2LinkActionHandleTimeSyncResponse_cold_8(v24, v60, v65, v66, v67, v68, v69, v70);
          }
        }
      }

      else
      {
LABEL_22:
        v24 = (v7 - (CurTimeMsInt64 + *v3)) / 2;
      }

      v25 = _getFilterList();
      v26 = [NSNumber numberWithUnsignedLongLong:*(v3 + 64)];
      v27 = [v25 objectForKey:v26];

      if (!v27)
      {
        if (_iAP2LogEnableMask)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v31 = *(gLogObjects + 152);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v31 = &_os_log_default;
            v41 = &_os_log_default;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v71[0] = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "ERROR: ERROR: No kalman filter!", v71, 2u);
          }
        }

        goto LABEL_66;
      }

      [v27 iAP2KalmanFilterUpdateDeviceTime:&v73 Offset:&v72 FilteredOffset:CurTimeMsInt64 / 1000.0 OffsetUncertainty:v24 / 1000.0];
      v28 = (v73 * 1000.0);
      v29 = (v72 * 1000.0);
      *(v3 + 16) = v29;
      *(v3 + 8) = v28;
      if (*(v3 + 24) < v29)
      {
        *(v3 + 72) = 0;
      }

      if ((_iAP2LogEnableMask & 4) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v30 = *(gLogObjects + 152);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v30 = &_os_log_default;
          v32 = &_os_log_default;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          iAP2LinkActionHandleTimeSyncResponse_cold_10((v3 + 8), v30, v33, v34, v35, v36, v37, v38);
        }

        if ((_iAP2LogEnableMask & 4) != 0)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v39 = *(gLogObjects + 152);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v39 = &_os_log_default;
            v42 = &_os_log_default;
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            iAP2LinkActionHandleTimeSyncResponse_cold_12((v3 + 16), v39, v43, v44, v45, v46, v47, v48);
          }
        }
      }

      if ((*(v3 + 72) & 1) != 0 || !*(v3 + 40))
      {
        iAP2TimeCallbackAfter(*(v2 + 200), 11, *(*(v2 + 264) + 32));
LABEL_66:

        return;
      }

      *v3 = CurTimeMsInt64;
      TimeSyncPacket = iAP2PacketCreateTimeSyncPacket(v2, 84, *(v2 + 190), (v2 + 191), CurTimeMsInt64, 0, *(v3 + 8));
      iAP2LinkSendPacket(v2, TimeSyncPacket, 0);
      iAP2PacketRelease(TimeSyncPacket);
      if (*(v3 + 16) >= *(v3 + 24))
      {
        if ((*(v3 + 72) & 1) == 0)
        {
          v61 = CurTimeMsInt64 - *(v3 + 40);
          v62 = *(v3 + 52);
          v63 = *(v3 + 48) + 1;
          *(v3 + 48) = v63;
          if (v61 <= v62 && v63 <= *(v3 + 56))
          {
            goto LABEL_66;
          }

          v50 = v2;
          v51 = CurTimeMsInt64;
          v52 = 0;
          goto LABEL_65;
        }
      }

      else
      {
        *(v3 + 72) = 1;
      }

      v50 = v2;
      v51 = CurTimeMsInt64;
      v52 = 1;
LABEL_65:
      __iAP2TimeSyncDeviceSendTimeSyncMeasurement(v50, v51, v52);
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
      goto LABEL_66;
    }
  }
}

void __iAP2TimeSyncDeviceSendTimeSyncMeasurement(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 264);
  if (gLogObjects && gNumLogObjects >= 48)
  {
    v8 = *(gLogObjects + 376);
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
    v10 = *(v7 + 8);
    v29 = 134217984;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "TimeSync: Filtered Time Offset = %lld", &v29, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 48)
  {
    v11 = *(gLogObjects + 376);
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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = *(v7 + 16);
    v14 = *(v7 + 24);
    v29 = 134218240;
    v30 = v13;
    v31 = 2048;
    *v32 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TimeSync: Offset Uncertainty = %lld (threshold %lld)", &v29, 0x16u);
  }

  if (gLogObjects)
  {
    v15 = gNumLogObjects <= 47;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (a3)
  {
    if (v16)
    {
      v17 = *(gLogObjects + 376);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = a2 - *(v7 + 40);
      v20 = *(v7 + 48);
      v29 = 134218240;
      v30 = v19;
      v31 = 1024;
      *v32 = v20;
      v21 = "TimeSync: timeSync converged in %llu ms and %d measurements";
      v22 = v17;
      v23 = 18;
LABEL_38:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v21, &v29, v23);
    }
  }

  else
  {
    if (v16)
    {
      v17 = *(gLogObjects + 376);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = a2 - *(v7 + 40);
      v27 = *(v7 + 48);
      v26 = *(v7 + 52);
      v28 = *(v7 + 56);
      v29 = 134218752;
      v30 = v25;
      v31 = 1024;
      *v32 = v26;
      *&v32[4] = 1024;
      *&v32[6] = v27;
      v33 = 1024;
      v34 = v28;
      v21 = "TimeSync: timeSync FAILED to converge in %llu/%u ms and %u/%u measurements";
      v22 = v17;
      v23 = 30;
      goto LABEL_38;
    }
  }

  iAP2TimeCallbackAfter(*(a1 + 200), 11, *(*(a1 + 264) + 32));
  objc_autoreleasePoolPop(v6);
}

void iAP2TimeSyncStart(uint64_t a1)
{
  v1 = *(*(*(a1 + 176) + 16) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __iAP2TimeSyncStart_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v1, block);
}

uint64_t *__iAP2TimeSyncStart_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 264);
  CurTimeMsInt64 = iAP2TimeGetCurTimeMsInt64();
  *v2 = CurTimeMsInt64;
  if (!*(v2 + 40))
  {
    *(v2 + 40) = CurTimeMsInt64;
    *(v2 + 48) = 0;
  }

  TimeSyncPacket = iAP2PacketCreateTimeSyncPacket(v1, 84, *(v1 + 190), (v1 + 188), CurTimeMsInt64, 0, 0);
  iAP2LinkSendPacket(v1, TimeSyncPacket, 0);

  return iAP2PacketRelease(TimeSyncPacket);
}

uint64_t iAP2TimeSyncInit(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1001C3BB0;
  *(a1 + 32) = 60000;
  *(a1 + 40) = 0;
  v2 = __defaultTimeout;
  *(a1 + 48) = 0;
  *(a1 + 52) = v2;
  *(a1 + 56) = __defaultMaxAttempts;
  *(a1 + 64) = arc4random();
  v3 = [[iAP2KalmanFilter alloc] initWithReseedTimeout:20 AndCountForNoiseTraining:61.0];
  if (v3)
  {
    v4 = _getFilterList();
    v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
    [v4 setObject:v3 forKey:v5];
  }

  *(a1 + 72) = 0;

  return a1;
}

void iAP2TimeSyncCleanup(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = _getFilterList();
    v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
    [v2 removeObjectForKey:v3];

    *(a1 + 64) = 0;
  }
}

id _getFilterList()
{
  if (_getFilterList_onceToken != -1)
  {
    _getFilterList_cold_1();
  }

  v1 = _getFilterList_filterList;

  return v1;
}

void ___getFilterList_block_invoke(id a1)
{
  _getFilterList_filterList = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void iAP2MsgSendControlAndCallbackOnAck(uint64_t a1, uint64_t a2)
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
    *(a2 + 56) = 1;
    v6 = *(a1 + 24);

    __iAP2LinkDataSentCB(v6, a2);
  }
}

void sub_10008194C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *logObjectForModule_24(int a1)
{
  v1 = gLogObjects;
  if (gLogObjects)
  {
    v2 = gNumLogObjects <= a1;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    return *(gLogObjects + 8 * a1);
  }

  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    iap2_sessionFileTransfer_deleteFileTransfer_cold_1(v1);
  }

  return v3;
}

uint64_t _compareLibraryRevisionPlaylistPersistentID(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != 13 || *(a2 + 4) != 13)
  {
    return -1;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  LODWORD(result) = strncmp((*v2 + 65), (*v3 + 65), 0x40uLL);
  if (result)
  {
    return result;
  }

  LODWORD(result) = strncmp((v2 + 24), (v3 + 24), 0x20uLL);
  if (result)
  {
    return result;
  }

  v5 = *(v2 + 16);
  v6 = *(v3 + 16);
  v7 = v5 == v6;
  v8 = v5 > v6;
  v9 = 1;
  if (!v8)
  {
    v9 = -1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

const char *GetCStringFromCFString(const __CFString *a1)
{
  result = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!result)
  {
    if (CFStringGetCString(a1, GetCStringFromCFString_buff, 256, 0x8000100u))
    {
      return GetCStringFromCFString_buff;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _checkIdentificationInfo_6(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_gskMsgMediaLibraryList, 0xAu, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_features_createFeature(a1, 0xDu);
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

uint64_t _compareLibraryUID(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 13 && *(a2 + 4) == 13)
  {
    return strncmp((**(a1 + 16) + 65), (**(a2 + 16) + 65), 0x40uLL);
  }

  else
  {
    return -1;
  }
}

__n128 OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __n128 a35)
{
  result = a35;
  *(v37 - 256) = a35.n128_u32[0];
  *(v37 - 252) = v35;
  *(v37 - 244) = 1024;
  *(v37 - 242) = v36;
  return result;
}

__n128 OUTLINED_FUNCTION_2_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __n128 a35)
{
  v38 = v37 - 128;
  result = a35;
  *v38 = a35.n128_u32[0];
  *(v38 + 4) = v35;
  *(v38 + 12) = 1024;
  *(v38 + 14) = v36;
  return result;
}

void OUTLINED_FUNCTION_17_13(uint64_t a1@<X8>, float a2@<S0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 - 256) = a2;
  *(v35 - 252) = a35;
  *(v35 - 244) = 2112;
  *(v35 - 242) = a1;
}

void OUTLINED_FUNCTION_28_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  *(v20 + 34) = v18;
  *(v20 + 50) = v19;
  *(v20 + 62) = a18;
}

double OUTLINED_FUNCTION_31_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  result = 2.0542726e-289;
  *(v19 - 256) = 67109888;
  *(v19 - 252) = a17;
  *(v19 - 248) = 1024;
  *(v19 - 246) = a16;
  *(v19 - 242) = 1024;
  *(v19 - 240) = v18;
  *(v19 - 236) = 1024;
  *(v19 - 234) = v17;
  return result;
}

__n128 OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __n128 a35)
{
  result = a35;
  *(v35 - 256) = a35.n128_u32[0];
  return result;
}

unint64_t OUTLINED_FUNCTION_38_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return iap2_sessionFileTransfer_findTransferEntryForFeature(v13, 128, va, _compareLibraryUID);
}

void OUTLINED_FUNCTION_50_2(int a1@<W8>)
{
  *(v4 - 248) = 1024;
  *(v4 - 246) = a1;
  *(v4 - 242) = 1024;
  *(v4 - 240) = v1;
  *(v4 - 236) = 1024;
  *(v4 - 234) = v2;
  *(v4 - 230) = 1024;
  *(v4 - 228) = v3;
}

void OUTLINED_FUNCTION_51_1()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 28);
}

uint64_t OUTLINED_FUNCTION_74_1(const __CFString *a1, char *a2)
{

  return CFStringGetCString(a1, a2, 32, 0x8000100u);
}

CFStringRef OUTLINED_FUNCTION_80_1(const __CFAllocator *a1, const char *a2)
{

  return CFStringCreateWithCString(a1, a2, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return iap2_feature_getFeature(v0, 0xDu);
}

BOOL OUTLINED_FUNCTION_93_2()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

const char *OUTLINED_FUNCTION_96_1(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_100_1(uint64_t result)
{
  *(v2 - 234) = 1024;
  *(v2 - 232) = result;
  *(v2 - 228) = v1;
  return result;
}

void OUTLINED_FUNCTION_102_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 28);
}

void OUTLINED_FUNCTION_103_0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
}

void OUTLINED_FUNCTION_110()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 109);
  v3 = *(v0 + 16);
}

void *OUTLINED_FUNCTION_112(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004000313F17uLL);
}

BOOL OUTLINED_FUNCTION_114()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t iAP2MsgParserInit(__int16 a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *a2 = 0;
  *(a2 + 2) = a1;
  *(a2 + 8) = a2 + 32;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  return a2;
}

uint64_t iAP2MsgParserConsumeByte(unsigned __int16 *a1, char a2, uint64_t a3)
{
  if (*a1 >= a1[1])
  {
    if (_iAP2LogEnableMask)
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
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
          acc_nvmInfo_getPairingStatus_cold_1(v7, v8);
        }
      }

      else
      {
        v12 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *a1;
        v14 = a1[1];
        v15 = 136315906;
        v16 = "_consumeByteInternal";
        v17 = 1024;
        v18 = 134;
        v19 = 1024;
        v20 = v13;
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d ERROR: message parse error, length (%u) passed allocated buffer length (%u)", &v15, 0x1Eu);
      }
    }

LABEL_20:
    result = 0;
    goto LABEL_21;
  }

  *(*(a1 + 1) + *a1) = a2;
  v4 = *a1;
  v5 = (v4 + 1);
  *a1 = v4 + 1;
  if (v5 != v4 + 1)
  {
    return 0;
  }

  v10 = a1[12];
  v11 = *(a1 + 1);
  if (*v11 != v10 >> 8)
  {
    goto LABEL_20;
  }

  if (!v4)
  {
    return 0;
  }

  if (v11[1] != v10)
  {
    goto LABEL_20;
  }

  if (v5 < 4 || v5 != bswap32(*(v11 + 1)) >> 16)
  {
    return 0;
  }

  result = parseMessage(a3, v10, *(a1 + 1), a1[1]);
LABEL_21:
  *a1 = 0;
  return result;
}

uint64_t parseMessage(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 6)
  {
    return 0;
  }

  v4 = *(a3 + 2);
  v5 = *(a3 + 3);
  v6 = v5 | (v4 << 8);
  if (v6 > a4)
  {
    return 0;
  }

  result = iAP2MsgInitWithSom(a1, a2, bswap32(*(a3 + 4)) >> 16, a3, a4, 0, 0);
  *(*(result + 24) + 2) = v4;
  *(*(result + 24) + 3) = v5;
  *(result + 32) = *(result + 32) + v6 - 6;
  return result;
}

uint64_t iap2_externalAccessory_openEASession(uint64_t a1, const __CFDictionary *a2)
{
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  Value = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionIDKey);
  valuePtr = -1431655766;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v5 = valuePtr;
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040DC31F451uLL);
  v6[1] = 0;
  *(v6 + 1) = CFArrayCreateMutable(kCFAllocatorDefault, 8, &kCFTypeArrayCallBacks);
  *(v6 + 2) = CFArrayCreateMutable(kCFAllocatorDefault, 8, &kCFTypeArrayCallBacks);
  *v6 = v5;
  v6[2] = iap2_endpoint_getMaxSendPayloadSize(a1);
  v7 = 0;
  *(v6 + 3) = CFStringCreateCopy(kCFAllocatorDefault, *(a1 + 8));
  do
  {
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, v6[2]);
    CFArrayAppendValue(*(v6 + 1), Mutable);
    CFRelease(Mutable);
  }

  while (v7++ < 7);
  v10 = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionUUIDKey);
  CFDictionarySetValue(__gActiveEASessionStructs, v10, v6);
  Feature = iap2_feature_getFeature(a1, 0xAu);
  CFDictionarySetValue(*(Feature + 32), v10, v6);
  pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v10);
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v13 = *(gLogObjects + 232);
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
    iap2_externalAccessory_openEASession_cold_2(MutableCopy, v13, v14);
  }

  v15 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
  v16 = malloc_type_malloc(0xFFFFuLL, 0x95A14250uLL);
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v17 = *(gLogObjects + 232);
  }

  else
  {
    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

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
    *v26 = "iap2_externalAccessory_openEASession";
    *&v26[8] = 1024;
    *v27 = 1294;
    *&v27[4] = 2112;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s:%d - iAP2MsgInit with cleanupCB - _iap2_externalAccessory_openEASessionSent endpointUUID: %@", buf, 0x1Cu);
  }

  v19 = iAP2MsgInit(v15, 59904, v16, 0xFFFF, _iap2_externalAccessory_openEASessionSent, MutableCopy);
  v20 = CFDictionaryGetValue(a2, kCFACCExternalAccessoryProtocolIndexKey);
  v23 = -86;
  CFNumberGetValue(v20, kCFNumberCharType, &v23);
  iAP2MsgAddU8Param(v19, 0, 0, v23);
  iAP2MsgAddU16Param(v19, 0, 1, valuePtr);
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v21 = *(gLogObjects + 232);
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
    *buf = 67109632;
    *v26 = v23;
    *&v26[4] = 1024;
    *&v26[6] = valuePtr;
    *v27 = 1024;
    *&v27[2] = valuePtr;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "opening EA session for protocol %d with sessionID %d (0x%X)", buf, 0x14u);
  }

  return iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(a1, v19);
}

void _iap2_externalAccessory_openEASessionSent(uint64_t a1, int a2)
{
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  if (a1 && (v4 = *(a1 + 48)) != 0)
  {
    Value = CFDictionaryGetValue(__gActiveEASessionStructs, *(a1 + 48));
    if (Value)
    {
      v6 = Value;
      *(Value + 2) = 1;
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v7 = *(gLogObjects + 232);
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
        v9 = *v6;
        v11[0] = 67109378;
        v11[1] = v9;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Open EA Session Sent for sessionID %d, UUID %@, start incoming data notifications", v11, 0x12u);
      }

      platform_externalAccessory_startIncomingDataNotificationsForEASessionUUID(v4);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v8 = *(gLogObjects + 232);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _iap2_externalAccessory_openEASessionSent_cold_3();
      }
    }

    pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
    CFRelease(v4);
  }

  else
  {
    pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
  }

  *(a1 + 48) = 0;
  if (a2)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      free(v10);
      *(a1 + 24) = 0;
    }

    *(a1 + 16) = 0;
  }
}

uint64_t _checkEAIdentificationInfo(uint64_t a1)
{
  Feature = iap2_feature_getFeature(a1, 0xAu);
  v21 = 0;
  v3 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkEAIdentificationInfo_kMsgExternalAccessoryList, 3u, &v21);
  if (v21 == 1 && v3 == 0)
  {
    if (!Feature)
    {
      iap2_features_createFeature(a1, 0xAu);
      Feature = iap2_feature_getFeature(a1, 0xAu);
    }

    v11 = *(Feature + 8);
    if (!v11 || !CFArrayGetCount(v11))
    {
      v14 = &dword_1001C3D6C;
      v15 = 3;
      do
      {
        v16 = *(v14 - 2);
        v17 = *v14;
        v14 += 3;
        v5 = 14;
        iap2_identification_rejectMsgID(a1, v16, v17, 0xEu);
        --v15;
      }

      while (v15);
LABEL_31:
      if (gLogObjects)
      {
        v18 = gNumLogObjects < 30;
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
        v19 = *(gLogObjects + 232);
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to identify for iAP2 EA, rejectReason = %d", buf, 8u);
      }

      return v5;
    }

    v5 = 0;
  }

  else
  {
    v5 = v3;
    if ((v21 & 1) == 0)
    {
      if (Feature)
      {
        v6 = *(Feature + 8);
        if (v6)
        {
          if (CFArrayGetCount(v6) >= 1)
          {
            Count = CFArrayGetCount(*(Feature + 8));
            if (Count >= 1)
            {
              v8 = Count;
              for (i = 0; i != v8; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(Feature + 8), i);
                if ((ValueAtIndex[11] & 1) == 0 && (*(ValueAtIndex + 4) - 3) >= 2)
                {
                  v5 = 11;
                  iap2_identification_addRejectGroup(a1, 10, *ValueAtIndex, 0xBu);
                }
              }
            }
          }
        }
      }
    }
  }

  if (v21 != 1 || v5 != 0)
  {
    goto LABEL_31;
  }

  if (gLogObjects && gNumLogObjects >= 30)
  {
    v13 = *(gLogObjects + 232);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully identified for iAP2 ExternalAccessory", buf, 2u);
  }

  iap2_identification_setIdentifiedForFeature(a1);
  return 0;
}

void _handleIdentificationRejection_2(uint64_t a1)
{
  Feature = iap2_feature_getFeature(a1, 0xAu);
  if (Feature)
  {
    v2 = Feature;
    v3 = *(Feature + 16);
    if (v3)
    {
      CFDictionaryRemoveAllValues(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 8), i);
          v9 = ValueAtIndex[1];
          if (v9)
          {
            CFRelease(v9);
          }

          free(ValueAtIndex);
        }
      }

      v10 = *(v2 + 8);
      if (v10)
      {
        CFRelease(v10);
        *(v2 + 8) = 0;
      }
    }

    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }
  }
}

BOOL _parseIdentificationSupportedEAProtocol(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v55 = 0;
  if (iAP2MsgGetParamID(a3) != 10)
  {
    v27 = 0;
    v16 = 17;
LABEL_113:
    iap2_identification_addRejectParam(a1, 10, v16);
    return v27 == 0;
  }

  valuePtr = 0;
  iap2_features_createFeature(a1, 0xAu);
  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  v7 = &audioProductCerts_endpoint_publish_onceToken;
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  if (!FirstParam)
  {
    v28 = 0;
    v16 = 17;
    goto LABEL_45;
  }

  v9 = FirstParam;
  v49 = a1;
  v53 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v50 = 0;
  DataAsU16 = 0;
  DataAsU8 = 5;
  do
  {
    ParamID = iAP2MsgGetParamID(v9);
    v16 = 17;
    if (ParamID <= 1)
    {
      if (!ParamID)
      {
        if (v10)
        {
          v16 = 5;
          v10 = 1;
          goto LABEL_36;
        }

        LOBYTE(v53) = iAP2MsgGetDataAsU8(v9, &v55);
        valuePtr = v53;
        v20 = v55 == 0;
        v10 = v55 == 0;
LABEL_30:
        if (v20)
        {
          v16 = 17;
        }

        else
        {
          v16 = 15;
        }

        goto LABEL_36;
      }

      if (ParamID == 1)
      {
        if (v11)
        {
          v16 = 5;
          v11 = 1;
        }

        else
        {
          DataAsString = iAP2MsgGetDataAsString(v9, &v55);
          if (v55)
          {
            v11 = 0;
            v16 = 15;
          }

          else
          {
            v50 = CFStringCreateWithCString(kCFAllocatorDefault, DataAsString, 0x8000100u);
            v11 = v50 != 0;
          }
        }
      }
    }

    else
    {
      if (ParamID == 2)
      {
        if (v12)
        {
          v16 = 5;
          v12 = 1;
        }

        else
        {
          DataAsU8 = iAP2MsgGetDataAsU8(v9, &v55);
          v18 = v55 == 0;
          v19 = DataAsU8 < 5u;
          v12 = v18 && v19;
          if (v18 && v19)
          {
            v16 = 17;
          }

          else
          {
            v16 = 15;
          }
        }

        goto LABEL_36;
      }

      if (ParamID == 3)
      {
        if (v13)
        {
          v16 = 5;
          v13 = 1;
          goto LABEL_36;
        }

        DataAsU16 = iAP2MsgGetDataAsU16(v9, &v55);
        v20 = v55 == 0;
        v13 = v55 == 0;
        v21 = HIDWORD(v53);
        if (!v55)
        {
          v21 = 2;
        }

        HIDWORD(v53) = v21;
        goto LABEL_30;
      }

      if (v14)
      {
        v17 = 5;
      }

      else
      {
        v17 = 17;
      }

      if (ParamID == 4)
      {
        v14 = 1;
        v16 = v17;
      }

      else
      {
        v16 = 17;
      }
    }

LABEL_36:
    NextParam = iAP2MsgGetNextParam(a2, a3, v9);
    if (!NextParam)
    {
      break;
    }

    v9 = NextParam;
  }

  while (v16 == 17);
  if (!v10 || !v11 || v16 != 17)
  {
    a1 = v49;
    v28 = v50;
    v8 = &audioProductCerts_endpoint_publish_onceToken;
    v7 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_45:
    v55 = -1;
    v29 = v7[491];
    if (v29 && *(v8 + 984) >= 30)
    {
      v30 = *(v29 + 232);
    }

    else
    {
      v30 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Invalid EA Protocol param! (need to log more details later)", buf, 2u);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    goto LABEL_112;
  }

  if (gLogObjects && gNumLogObjects >= 30)
  {
    v24 = *(gLogObjects + 232);
    v25 = v50;
    v26 = v53;
  }

  else
  {
    v24 = &_os_log_default;
    v25 = v50;
    v26 = v53;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v57 = v25;
    v58 = 1024;
    v59 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Adding EA protocol %@, protocolID %d", buf, 0x12u);
  }

  v31 = malloc_type_calloc(1uLL, 0x20uLL, 0x106004016586FA1uLL);
  if (!v31)
  {
    v55 = -1;
    if (gLogObjects && gNumLogObjects >= 30)
    {
      v39 = *(gLogObjects + 232);
      a1 = v49;
    }

    else
    {
      v39 = &_os_log_default;
      a1 = v49;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      _parseIdentificationSupportedEAProtocol_cold_7();
      if (!v25)
      {
        goto LABEL_111;
      }
    }

    else if (!v25)
    {
LABEL_111:
      v16 = 17;
LABEL_112:
      v27 = v55;
      goto LABEL_113;
    }

    CFRelease(v25);
    goto LABEL_111;
  }

  v32 = v31;
  *v31 = v26;
  *(v31 + 1) = v25;
  *(v31 + 23) = v14 & 1;
  v31[10] = DataAsU16;
  *(v31 + 22) = v13;
  *(v31 + 6) = HIDWORD(v53);
  v33 = DataAsU8;
  if ((v12 & 1) == 0)
  {
    v33 = 1;
  }

  *(v31 + 4) = v33;
  a1 = v49;
  Feature = iap2_feature_getFeature(v49, 0xAu);
  if (!Feature)
  {
    v55 = -1;
    if (gLogObjects && gNumLogObjects >= 30)
    {
      v40 = *(gLogObjects + 232);
    }

    else
    {
      v40 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      _parseIdentificationSupportedEAProtocol_cold_5();
      if (!v25)
      {
        goto LABEL_110;
      }
    }

    else if (!v25)
    {
LABEL_110:
      free(v32);
      goto LABEL_111;
    }

    CFRelease(v25);
    goto LABEL_110;
  }

  v35 = Feature;
  if (!*(Feature + 8))
  {
    *(Feature + 8) = CFArrayCreateMutable(kCFAllocatorDefault, 1, 0);
  }

  if (!*(v35 + 24))
  {
    *(v35 + 24) = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (!*(v35 + 16))
  {
    *(v35 + 16) = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, 0);
  }

  if (!*(v35 + 32))
  {
    *(v35 + 32) = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, 0);
  }

  v36 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
  CountOfKey = CFDictionaryGetCountOfKey(*(v35 + 16), v36);
  if (CountOfKey)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v38 = *gLogObjects;
    }

    else
    {
      v38 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      _parseIdentificationSupportedEAProtocol_cold_3(&valuePtr, v25, v38);
    }

    v55 = -1;
    CFDictionaryRemoveAllValues(*(v35 + 16));
    v41 = *(v35 + 8);
    if (v41)
    {
      Count = CFArrayGetCount(v41);
      if (Count >= 1)
      {
        v43 = Count;
        for (i = 0; i != v43; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v35 + 8), i);
          v46 = ValueAtIndex[1];
          if (v46)
          {
            CFRelease(v46);
          }

          free(ValueAtIndex);
        }
      }

      v47 = *(v35 + 8);
      if (v47)
      {
        CFRelease(v47);
        *(v35 + 8) = 0;
      }
    }

    if (v25)
    {
      CFRelease(v25);
    }

    free(v32);
    v16 = 17;
  }

  else
  {
    CFDictionaryAddValue(*(v35 + 16), v36, v32);
    CFArrayAppendValue(*(v35 + 8), v32);
    v16 = 0;
  }

  if (v36)
  {
    CFRelease(v36);
  }

  v27 = v55;
  if (CountOfKey)
  {
    goto LABEL_113;
  }

  return v27 == 0;
}

BOOL _parseIdentificationPreferredBundleSeedID(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v16 = 0;
  if (iAP2MsgGetParamID(a3) != 11)
  {
    v7 = 0;
    v12 = 17;
LABEL_27:
    iap2_identification_addRejectParam(a1, 11, v12);
    return v7 == 0;
  }

  v5 = iAP2MsgCopyDataAsCFString(a3, &v16);
  v6 = v5;
  v7 = v16;
  if (!v5 || v16)
  {
    v12 = 10;
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  iap2_features_createFeature(a1, 0xAu);
  Feature = iap2_feature_getFeature(a1, 0xAu);
  if (!Feature)
  {
    if (gLogObjects && gNumLogObjects >= 30)
    {
      v13 = *(gLogObjects + 232);
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _parseIdentificationPreferredBundleSeedID_cold_3();
    }

    v12 = 17;
LABEL_26:
    CFRelease(v6);
    v7 = v16;
    goto LABEL_27;
  }

  v9 = Feature;
  v10 = *Feature;
  if (v10)
  {
    CFRelease(v10);
  }

  *v9 = v6;
  CFRetain(v6);
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v11 = *(gLogObjects + 232);
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
    v14 = *v9;
    *buf = 138412290;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "preferredAppBundleSeedID %@", buf, 0xCu);
  }

  CFRelease(v6);
  v7 = v16;
  return v7 == 0;
}

__n128 OUTLINED_FUNCTION_19_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  v11 = *v9;
  return result;
}

void OUTLINED_FUNCTION_30_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

BOOL OUTLINED_FUNCTION_42_3(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{

  return iAP2LinkQueueSendData(a1, a2, a3, a22, a20, a6, 0, 0);
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return iap2_feature_getFeature(v0, 0xAu);
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  v2 = *(v0 + 192);

  return iAP2MsgInit(v0 + 120, 32257, v2, 0xFFFF, 0, 0);
}

void OUTLINED_FUNCTION_9_19(float a1)
{
  *(v3 - 112) = a1;
  *(v3 - 108) = v1;
  *(v3 - 100) = 1024;
  *(v3 - 98) = v2;
}

_BYTE *___requestAppLaunchHandler_block_invoke_16(uint64_t a1)
{
  result = iap2_feature_getFeature(*(a1 + 32), 2u);
  if (result)
  {
    *result = 0;
  }

  return result;
}

uint64_t _checkIdentificationInfo_7(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgTestList_0, 1u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

void OUTLINED_FUNCTION_0_18(float a1)
{
  *(v2 - 128) = a1;
  *(v2 - 124) = v1;
  *(v2 - 116) = 1024;
}

void *logObjectForModule_25()
{
  if (gLogObjects && gNumLogObjects >= 59)
  {
    return *(gLogObjects + 464);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

uint64_t _accSNTPTimeSync_endpoint_initSession(uint64_t a1)
{
  *(a1 + 16) = CFAbsoluteTimeGetCurrent();
  if (gLogObjects && gNumLogObjects >= 59)
  {
    v1 = *(gLogObjects + 464);
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
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SNTP Time Sync  initSession complete ", v3, 2u);
  }

  return 1;
}

void _accSNTPTimeSync_endpoint_cleanupSession()
{
  if (gLogObjects && gNumLogObjects >= 59)
  {
    v0 = *(gLogObjects + 464);
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
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SNTP Time Sync  cleanupSession - no session data to cleanup at the moment. ", v1, 2u);
  }
}

void __accSNTPTimeSync_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  _accSNTPTimeSync_endpoint_processIncomingData(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t accSNTPTimeSync_endpoint_getAccessoryTime(void *a1, uint64_t a2)
{
  if (!a1 || !*a1)
  {
    goto LABEL_7;
  }

  v4 = malloc_type_calloc(1uLL, 0x32uLL, 0x100004077774924uLL);
  if (!v4)
  {
    accSNTPTimeSync_endpoint_getAccessoryTime_cold_2();
LABEL_7:
    CFRelease(a1);
    return 0;
  }

  accSNTPTimeSync_endpoint_getAccessoryTime_cold_1(v4, a2, a1, &v6);
  return v6;
}

uint64_t accSNTPTimeSync_endpoint_sendAccessoryTime(void *a1, uint64_t a2)
{
  if (!a1 || !*a1)
  {
    goto LABEL_7;
  }

  v4 = malloc_type_calloc(1uLL, 0x32uLL, 0x100004077774924uLL);
  if (!v4)
  {
    accSNTPTimeSync_endpoint_sendAccessoryTime_cold_2();
LABEL_7:
    CFRelease(a1);
    return 0;
  }

  accSNTPTimeSync_endpoint_sendAccessoryTime_cold_1(v4, a2, a1, &v6);
  return v6;
}

__n128 OUTLINED_FUNCTION_1_24@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W8>)
{
  *a1 = a3;
  result = *a2;
  v4 = *(a2 + 16);
  *(a1 + 34) = *(a2 + 32);
  *(a1 + 18) = v4;
  *(a1 + 2) = result;
  return result;
}

void sub_100086DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

ACCUserNotification *ACCUNCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v19 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v19 setType:a1];
  [(ACCUserNotification *)v19 setTitle:a2];
  [(ACCUserNotification *)v19 setMessage:a3];
  [(ACCUserNotification *)v19 setDefaultButtonName:a4];
  [(ACCUserNotification *)v19 setOtherButtonName:a5];
  [(ACCUserNotification *)v19 setIconURL:a6];
  [(ACCUserNotification *)v19 setIsModal:a7];
  [(ACCUserNotification *)v19 setTimeout:a9];
  [(ACCUserNotification *)v19 setIdentifier:a8];
  [(ACCUserNotification *)v19 setGroupIdentifier:a10];
  return v19;
}

BOOL ACCUNSetIdentifier(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 setIdentifier:a2];
  }

  return a1 != 0;
}

BOOL ACCUNSetGroupIdentifier(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 setGroupIdentifier:a2];
  }

  return a1 != 0;
}

id _getWiFiSharingPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformWiFiSharingProtocol fallbackToTransportPlugins:0];

  return v1;
}

uint64_t platform_wifisharing_request_device_wifi_information(const void *a1)
{
  isDeviceLocked = platform_system_isDeviceLocked();
  if (!isDeviceLocked)
  {
    v11 = _getWiFiSharingPluginInstance();
    v12 = v11;
    if (!v11)
    {
LABEL_78:

      return isDeviceLocked ^ 1u;
    }

    if ([v11 isDeviceConnectedToWiFi])
    {
      v13 = systemInfo_systemSupportsWAPI();
      v14 = acc_strings_bundleCF();
      if (v13)
      {
        v15 = @"Share WLAN Settings?";
      }

      else
      {
        v15 = @"Share Wi-Fi Settings?";
      }

      v30 = CFBundleCopyLocalizedString(v14, v15, v15, 0);
      v31 = systemInfo_systemSupportsWAPI();
      v32 = acc_strings_bundleCF();
      if (v31)
      {
        v33 = @"Do you want to share your WLAN settings so this accessory can connect to the WLAN network?";
      }

      else
      {
        v33 = @"Do you want to share your Wi-Fi settings so this accessory can connect to the Wi-Fi network?";
      }

      v34 = CFBundleCopyLocalizedString(v32, v33, v33, 0);
      v35 = acc_strings_bundleCF();
      v36 = CFBundleCopyLocalizedString(v35, @"Allow", @"Allow", 0);
      v37 = acc_strings_bundleCF();
      v38 = CFBundleCopyLocalizedString(v37, @"Ignore", @"Ignore", 0);
      Identifier = acc_userNotifications_createIdentifier(@"wifi-sharing-share", a1);
      EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
      v41 = ACCUNCreate(1, v30, v34, v36, v38, 0, 1, Identifier, 0.0, **EndpointWithUUID);
      CFRetain(a1);
      v56 = _NSConcreteStackBlock;
      v57 = 3221225472;
      v58 = ___presentShareWiFiCredentialsNotification_block_invoke;
      v59 = &__block_descriptor_40_e8_v12__0i8l;
      v60 = a1;
      ACCUNManagerPresentNotification(v41, &v56);
      if (v41)
      {
        CFRelease(v41);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (!v38)
      {
        goto LABEL_70;
      }

      v42 = v38;
    }

    else
    {
      v25 = systemInfo_copyDeviceClass();
      if (!v25)
      {
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v43 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v43 = &_os_log_default;
          v54 = &_os_log_default;
        }

        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          platform_wifisharing_request_device_wifi_information_cold_2(v43);
        }

        goto LABEL_78;
      }

      v26 = v25;
      v27 = systemInfo_systemSupportsWAPI();
      v28 = acc_strings_bundleCF();
      if (v27)
      {
        v29 = @"Connect to WLAN";
      }

      else
      {
        v29 = @"Connect to Wi-Fi";
      }

      v44 = CFBundleCopyLocalizedString(v28, v29, v29, 0);
      v45 = systemInfo_systemSupportsWAPI();
      v46 = acc_strings_bundleCF();
      if (v45)
      {
        v47 = @"This accessory would like to use a WLAN network. Connect this %@ to WLAN if you want to share WLAN settings with this accessory.";
      }

      else
      {
        v47 = @"This accessory would like to use a Wi-Fi network. Connect this %@ to Wi-Fi if you want to share Wi-Fi settings with this accessory.";
      }

      v48 = CFBundleCopyLocalizedString(v46, v47, v47, 0);
      v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v48, v26);
      v50 = acc_strings_bundleCF();
      v51 = CFBundleCopyLocalizedString(v50, @"OK", @"OK", 0);
      Identifier = acc_userNotifications_createIdentifier(@"wifi-sharing-connect", a1);
      v52 = acc_manager_getEndpointWithUUID(a1);
      v53 = ACCUNCreate(1, v44, v49, v51, 0, 0, 1, Identifier, 0.0, **v52);
      CFRetain(a1);
      v56 = _NSConcreteStackBlock;
      v57 = 3221225472;
      v58 = ___presentConnectToWiFiNotification_block_invoke;
      v59 = &__block_descriptor_40_e8_v12__0i8l;
      v60 = a1;
      ACCUNManagerPresentNotification(v53, &v56);
      if (v53)
      {
        CFRelease(v53);
      }

      if (v44)
      {
        CFRelease(v44);
      }

      if (v49)
      {
        CFRelease(v49);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      v42 = v26;
    }

    CFRelease(v42);
LABEL_70:
    if (Identifier)
    {
      CFRelease(Identifier);
    }

    goto LABEL_78;
  }

  v3 = systemInfo_copyDeviceClass();
  if (!v3)
  {
    if (gLogObjects)
    {
      v16 = gNumLogObjects < 8;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v17 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_wifisharing_request_device_wifi_information_cold_4(v12);
    }

    goto LABEL_78;
  }

  v4 = v3;
  v5 = acc_strings_bundleCF();
  v6 = CFBundleCopyLocalizedString(v5, @"%@ is Locked", @"%@ is Locked", 0);
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v6, v4);
  v8 = systemInfo_systemSupportsWAPI();
  v9 = acc_strings_bundleCF();
  if (v8)
  {
    v10 = @"This accessory would like to use the WLAN network. Unlock your %@ to configure WLAN settings.";
  }

  else
  {
    v10 = @"This accessory would like to use the Wi-Fi network. Unlock your %@ to configure Wi-Fi settings.";
  }

  v18 = CFBundleCopyLocalizedString(v9, v10, v10, 0);
  v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v18, v4);
  v20 = acc_strings_bundleCF();
  v21 = CFBundleCopyLocalizedString(v20, @"OK", @"OK", 0);
  v22 = acc_userNotifications_createIdentifier(@"wifi-sharing-unlock", a1);
  v23 = acc_manager_getEndpointWithUUID(a1);
  v24 = ACCUNCreate(1, v7, v19, v21, 0, 0, 1, v22, 0.0, **v23);
  CFRetain(a1);
  v56 = _NSConcreteStackBlock;
  v57 = 3221225472;
  v58 = ___presentUnlockForWiFiSharingNotification_block_invoke;
  v59 = &__block_descriptor_40_e8_v12__0i8l;
  v60 = a1;
  ACCUNManagerPresentNotification(v24, &v56);
  if (v24)
  {
    CFRelease(v24);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  CFRelease(v4);
  if (v22)
  {
    CFRelease(v22);
  }

  return isDeviceLocked ^ 1u;
}

id platform_wifisharing_accessory_wifi_configuration_information(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = _getWiFiSharingPluginInstance();
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 7;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v16 = &_os_log_default;
  }

  else
  {
    v17 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v29 = 138413826;
    v30 = a1;
    v31 = 2112;
    v32 = a2;
    v33 = 2112;
    v34 = a3;
    v35 = 2112;
    v36 = a4;
    v37 = 2112;
    v38 = a5;
    v39 = 2112;
    v40 = a6;
    v41 = 1024;
    v42 = a7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "wifi config info: %@, BSSID=%@ SSID=%@ Passphrase=%@ securityType=%@ channel=%@ supportsWirelessCarPlay=%d", &v29, 0x44u);
  }

  if (v14)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = v18;
    if (a2)
    {
      [v18 setObject:a2 forKey:kCFWiFiSharing_WiFiNetworkInformationWifiBSSID];
    }

    if (a3)
    {
      [v19 setObject:a3 forKey:kCFWiFiSharing_WiFiNetworkInformationWifiSSID];
    }

    if (a4)
    {
      [v19 setObject:a4 forKey:kCFWiFiSharing_WiFiNetworkInformationWifiPassphrase];
    }

    if (a5)
    {
      [v19 setObject:a5 forKey:kCFWiFiSharing_WiFiNetworkInformationSecurityType];
    }

    if (a6)
    {
      [v19 setObject:a6 forKey:kCFWiFiSharing_WiFiNetworkInformationChannel];
    }

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v20 = *(gLogObjects + 48);
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
      v29 = 138412546;
      v30 = v19;
      v31 = 1024;
      LODWORD(v32) = a7;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Accessory WiFi Config Information %@, supportsWirelessCarPlay = %d", &v29, 0x12u);
    }

    if (!a7)
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v26 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v26 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Accessory WiFi Config Information only supported for CarPlay!!!", &v29, 2u);
      }

      v21 = 0;
      goto LABEL_46;
    }

    v23 = acc_manager_copyConnectionUUIDForEndpointUUID(a1);
    ConnectionWithUUID = acc_manager_getConnectionWithUUID(v23);
    if (acc_connection_getType(ConnectionWithUUID) == 2)
    {
      v25 = [NSNumber numberWithUnsignedInt:platform_externalAccesory_legacyConnectionUUIDForPrimaryEndpointUUID(a1)];
      [v19 setObject:v25 forKey:kCFWiFiSharing_LegacyAccessoryExternalAccessoryConnectionID];

      v21 = [v14 handleAccessoryWiFiInformationForWirelessCarPlay:v19];
      if (!v23)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v21 = 0;
      if (!v23)
      {
LABEL_46:

        goto LABEL_47;
      }
    }

    CFRelease(v23);
    goto LABEL_46;
  }

  v21 = 0;
LABEL_47:

  return v21;
}

void platform_wifisharing_request_accessory_wifi_information(const void *a1)
{
  CFRetain(a1);
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __platform_wifisharing_request_accessory_wifi_information_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v2, block);
}

void __platform_wifisharing_request_accessory_wifi_information_block_invoke(uint64_t a1)
{
  accFeatureHandlers_invokeHandler(*(a1 + 32), 25, 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void ___presentUnlockForWiFiSharingNotification_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
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
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User dismissed Unlock for WiFi sharing - ignoring", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

void ___presentConnectToWiFiNotification_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
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
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissed Connect to WiFi for WiFi Sharing alert", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

void ___presentShareWiFiCredentialsNotification_block_invoke(uint64_t a1, int a2)
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 7;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (a2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User did not approve wifi sharing", buf, 2u);
    }

    v46 = kCFWiFiSharing_WiFiNetworkInformationStatus;
    v8 = [NSNumber numberWithUnsignedInt:1];
    v47 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
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
      ___presentShareWiFiCredentialsNotification_block_invoke_cold_3(v9, v10);
    }

    v12 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___presentShareWiFiCredentialsNotification_block_invoke_102;
    block[3] = &unk_100228CA8;
    v13 = *(a1 + 32);
    v37 = v9;
    v38 = v13;
    v14 = v9;
    dispatch_async(v12, block);
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sharing WiFi credentials with accessory...", buf, 2u);
    }

    v16 = *(a1 + 32);
    v17 = _getWiFiSharingPluginInstance();
    v14 = v17;
    if (v17)
    {
      v18 = [v17 copyDeviceWiFiNetworkInformation];
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v19 = *(gLogObjects + 56);
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
        ___presentShareWiFiCredentialsNotification_block_invoke_cold_6(v18, v19);
      }

      CFRetain(v16);
      v21 = dispatch_get_global_queue(0, 0);
      *buf = _NSConcreteStackBlock;
      v40 = 3221225472;
      v41 = ___handleDeviceWiFiConfigurationInformation_block_invoke;
      v42 = &unk_100228CA8;
      v44 = v16;
      v22 = v18;
      v43 = v22;
      dispatch_async(v21, buf);

      v23 = [v22 objectForKey:kCFWiFiSharing_WiFiNetworkInformationStatus];
      if ([v23 unsignedIntValue] == 2)
      {
        v24 = systemInfo_systemSupportsWAPI();
        v25 = acc_strings_bundleCF();
        if (v24)
        {
          v26 = @"WLAN Settings";
        }

        else
        {
          v26 = @"Wi-Fi Settings";
        }

        v27 = CFBundleCopyLocalizedString(v25, v26, v26, 0);
        v28 = acc_strings_bundleCF();
        v29 = CFBundleCopyLocalizedString(v28, @"This network’s settings are not available for sharing with accessories.", @"This network’s settings are not available for sharing with accessories.", 0);
        v30 = acc_strings_bundleCF();
        v31 = CFBundleCopyLocalizedString(v30, @"OK", @"OK", 0);
        Identifier = acc_userNotifications_createIdentifier(@"wifi-sharing-unavailable", v16);
        EndpointWithUUID = acc_manager_getEndpointWithUUID(v16);
        v34 = ACCUNCreate(1, v27, v29, v31, 0, 0, 1, Identifier, 0.0, **EndpointWithUUID);
        CFRetain(v16);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = ___presentWiFiSharingUnavailableNotification_block_invoke;
        v45[3] = &__block_descriptor_40_e8_v12__0i8l;
        v45[4] = v16;
        ACCUNManagerPresentNotification(v34, v45);
        if (v34)
        {
          CFRelease(v34);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (Identifier)
        {
          CFRelease(Identifier);
        }
      }
    }
  }

  v35 = *(a1 + 32);
  if (v35)
  {
    CFRelease(v35);
  }
}

void ___handleDeviceWiFiConfigurationInformation_block_invoke(uint64_t a1)
{
  accFeatureHandlers_invokeHandler(*(a1 + 40), 24, *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void ___presentWiFiSharingUnavailableNotification_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
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
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissed WiFi unavailable alert", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t iAP2ListArrayInit(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 && a3 <= 0xFD)
  {
    v4 = 0;
    *a1 = 0;
    *(a1 + 1) = a2;
    *(a1 + 2) = -1;
    *(a1 + 4) = 0;
    *(a1 + 5) = a3;
    *(a1 + 6) = 0;
    v5 = a3 + 2;
    v6 = (a1 + 9);
    do
    {
      *(v6 - 1) = v4 + 1;
      *v6 = v4 - 1;
      v6 += v5;
      ++v4;
    }

    while (a2 != v4);
    v3 = 0;
    *(a1 + 9) = -1;
    *(a1 + 8 + v5 * (a2 - 1)) = -1;
  }

  return v3;
}

_BYTE *iAP2ListArrayCleanup(_BYTE *result, void (*a2)(unsigned __int8 *))
{
  if (result && a2)
  {
    v3 = result;
    v4 = result[1];
    v5 = result[5];
    if (*result)
    {
      for (i = result[2]; i != 255; i = *v7)
      {
        v7 = (v3 + 8 + (*(v3 + 5) + 2) * i);
        a2(v7 + 2);
      }
    }

    return iAP2ListArrayInit(v3, v4, v5);
  }

  return result;
}

void *logObjectForModule_26()
{
  if (gLogObjects && gNumLogObjects >= 50)
  {
    return *(gLogObjects + 392);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

uint64_t _checkIdentificationInfo_8(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgTestList_1, 5u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

uint64_t _iAP2MessageCutoffSize(uint64_t a1)
{
  MaxSendPayloadSize = iap2_endpoint_getMaxSendPayloadSize(a1);
  if (gLogObjects && gNumLogObjects >= 50)
  {
    v2 = *(gLogObjects + 392);
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
    v4[0] = 67109376;
    v4[1] = MaxSendPayloadSize;
    v5 = 1024;
    v6 = MaxSendPayloadSize >> 1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "maxPayloadSize: %d, messageCutoffSize: %d", v4, 0xEu);
  }

  return MaxSendPayloadSize >> 1;
}

void ___appLinksProcessAppIcon_block_invoke(uint64_t a1)
{
  _appLinksAppIconResponse(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void _appIconFileTransferIDSent(void *a1, int a2)
{
  if (a1)
  {
    v4 = a1[6];
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v5 = *(gLogObjects + 392);
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
      v6 = obfuscatedPointer(v4);
      if (v4)
      {
        v7 = *(v4 + 12);
      }

      else
      {
        v7 = 0;
      }

      *buf = 134218754;
      v33 = v6;
      v34 = 1024;
      *v35 = v7;
      *&v35[4] = 1024;
      *&v35[6] = a2;
      *v36 = 2080;
      *&v36[2] = dispatch_queue_get_label(0);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#AppIcon File transfer ID sent callback fired! context=%p (type=%d) needDelete=%d currentDispatchQueue: %s", buf, 0x22u);
    }

    if (v4)
    {
      if (*(v4 + 12) == 8)
      {
        if (*v4)
        {
          Feature = iap2_feature_getFeature(*v4, 0x18u);
          if (Feature)
          {
            v9 = Feature;
            if (gLogObjects && gNumLogObjects >= 50)
            {
              v10 = *(gLogObjects + 392);
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
              v11 = *(v4 + 8);
              v12 = *(v4 + 12);
              v13 = *(v9 + 90);
              v14 = *(v9 + 89);
              v15 = *(v9 + 91);
              *buf = 138544642;
              v33 = @"#AppIcon";
              v34 = 1024;
              *v35 = v11;
              *&v35[4] = 1024;
              *&v35[6] = v12;
              *v36 = 1024;
              *&v36[2] = v13;
              *&v36[6] = 1024;
              *&v36[8] = v14;
              LOWORD(v37) = 1024;
              *(&v37 + 2) = v15;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ File transfer ID sent callback fired! context(ID=%u type=%u) currentTransferInfo(ID=%u valid=%d type=%u)", buf, 0x2Au);
            }

            if (!*(v9 + 91) || *(v4 + 12) == *(v9 + 91))
            {
              v16 = *v4;
              if (*v4)
              {
                if (iap2_feature_getFeature(*v4, 0x18u))
                {
                  if (*(v4 + 8) < 0 && *(v9 + 89) == 1 && *(v4 + 8) == *(v9 + 90))
                  {
                    TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v16, *(v4 + 8));
                    if (TransferEntry)
                    {
                      v18 = *(TransferEntry + 8);
                      if (v18)
                      {
                        if (*(v18 + 104))
                        {
                          if (gLogObjects && gNumLogObjects >= 50)
                          {
                            v19 = *(gLogObjects + 392);
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
                            _appIconFileTransferIDSent_cold_4(v18, (v18 + 104), v19);
                          }
                        }

                        else
                        {
                          v20 = *(v9 + 80);
                          if (v20)
                          {
                            BytePtr = CFDataGetBytePtr(v20);
                            Length = CFDataGetLength(*(v9 + 80));
                          }

                          else
                          {
                            Length = 0;
                            BytePtr = 0;
                          }

                          if (gLogObjects && gNumLogObjects >= 50)
                          {
                            v22 = *(gLogObjects + 392);
                          }

                          else
                          {
                            v22 = &_os_log_default;
                            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              platform_connectionInfo_configStreamGetCategories_cold_2();
                            }
                          }

                          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                          {
                            v23 = *(v18 + 109);
                            v24 = *(v18 + 104);
                            v25 = obfuscatedPointer(BytePtr);
                            *buf = 138544642;
                            v33 = @"#AppIcon";
                            v34 = 2048;
                            *v35 = v18;
                            *&v35[8] = 1024;
                            *v36 = v23;
                            *&v36[4] = 1024;
                            *&v36[6] = v24;
                            *&v36[10] = 2048;
                            v37 = v25;
                            v38 = 1024;
                            v39 = Length;
                            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}@ start transfer (%p id=%d state=%d) pBuffer=%p bufferLen=%u", buf, 0x32u);
                          }

                          v26 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
                          *v26 = 0;
                          if (gLogObjects && gNumLogObjects >= 50)
                          {
                            v27 = *(gLogObjects + 392);
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
                            _appIconFileTransferIDSent_cold_7(v18, (v18 + 104));
                          }

                          if ((iAP2FileTransferStart(v18, BytePtr, Length, Length, _appIconFileTransferEndHandler, v26, 0, 0) & 1) == 0)
                          {
                            v28 = logObjectForModule_26();
                            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                            {
                              _appIconFileTransferIDSent_cold_8(v28);
                            }

                            iAP2FileTransferCancel(v18);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (a2)
    {
      v29 = a1[6];
      if (v29)
      {
        free(v29);
        a1[6] = 0;
      }

      v30 = a1[3];
      if (v30)
      {
        free(v30);
      }

      free(a1);
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  v2 = *(v0 + 192);

  return iAP2MsgInit(v0 + 120, 44289, v2, 0xFFFF, 0, 0);
}

void OUTLINED_FUNCTION_12_15()
{
  v1 = *(v0 + 109);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{

  return iAP2MsgGetDataAsU16(v23, &a23);
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
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
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
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
          __init_logging_signpost_modules_block_invoke_cold_1(v15, v4, &v16);
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

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v10;
}

uint64_t platform_nowPlaying_setPlaybackElapsedTime(unsigned int a1)
{
  v2 = +[ACCNowPlayingServer sharedServer];
  v3 = [NSNumber numberWithLong:a1];
  [v2 setPlaybackElapsedTime:v3];

  return 1;
}

uint64_t platform_nowPlaying_setPlaybackQueueIndex(unsigned int a1)
{
  v2 = +[ACCNowPlayingServer sharedServer];
  v3 = [NSNumber numberWithLong:a1];
  [v2 setPlaybackQueueIndex:v3];

  return 1;
}

unint64_t platform_nowPlaying_playbackAttributesUpdate(void *a1)
{
  v1 = a1;
  v2 = _gShouldSendMediaLibraryUID;
  v3 = [v1 objectForKeyedSubscript:@"AppBundleID"];
  if (v3 && (!platform_nowPlaying_playbackAttributesUpdate_appBundleID || ([platform_nowPlaying_playbackAttributesUpdate_appBundleID isEqualToString:v3] & 1) == 0))
  {
    objc_storeStrong(&platform_nowPlaying_playbackAttributesUpdate_appBundleID, v3);
    v2 = 1;
  }

  v4 = [v1 objectForKeyedSubscript:@"IsMusicApp"];
  if (v4 && (!platform_nowPlaying_playbackAttributesUpdate_isMusicAppNS || ([platform_nowPlaying_playbackAttributesUpdate_isMusicAppNS isEqualToNumber:v4] & 1) == 0))
  {
    objc_storeStrong(&platform_nowPlaying_playbackAttributesUpdate_isMusicAppNS, v4);
    v2 = 1;
  }

  v5 = [v1 objectForKeyedSubscript:@"iTunesRadioStationIdentifier"];
  if (!v5)
  {
LABEL_12:
    if (!v2)
    {
      goto LABEL_49;
    }

    goto LABEL_21;
  }

  v6 = platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier;
  if (platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier)
  {
    if ([platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier isEqualToString:v5])
    {
      goto LABEL_12;
    }

    v6 = platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier;
  }

  if ((!-[__CFString isEqualToString:](v6, "isEqualToString:", &stru_10022D360) || [v5 isEqualToString:&stru_10022D360]) && ((objc_msgSend(platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier, "isEqualToString:", &stru_10022D360) & 1) != 0 || !objc_msgSend(v5, "isEqualToString:", &stru_10022D360)))
  {
    objc_storeStrong(&platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier, v5);
    if ((v2 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    objc_storeStrong(&platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier, v5);
  }

LABEL_21:
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v7 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_bluetooth_copyNameForMacAddress_cold_1();
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#Now Playing] Injecting MediaLibraryUID...", &v20, 2u);
  }

  if (platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier)
  {
    v9 = [platform_nowPlaying_playbackAttributesUpdate_iTunesRadioStationIdentifier length] != 0;
  }

  else
  {
    v9 = 0;
  }

  if (platform_nowPlaying_playbackAttributesUpdate_isMusicAppNS)
  {
    v10 = [platform_nowPlaying_playbackAttributesUpdate_isMusicAppNS BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSMutableDictionary dictionaryWithDictionary:v1];
  v12 = platform_system_copyMediaLibraryUIDString(v10, v9);
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v13 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_bluetooth_copyNameForMacAddress_cold_1();
    }

    v13 = &_os_log_default;
    v14 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = "NO";
    if (v10)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    v20 = 138412802;
    v21 = v12;
    v22 = 2080;
    v23 = v16;
    if (v9)
    {
      v15 = "YES";
    }

    v24 = 2080;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[#Now Playing] mediaLibraryUID: '%@'; isMusicApp: %s; isiTunesRadio: %s", &v20, 0x20u);
  }

  [v11 setObject:v12 forKey:@"MediaLibraryUID"];
  v17 = [v11 copy];

  _gShouldSendMediaLibraryUID = 0;
  v1 = v17;
LABEL_49:
  v18 = accFeatureHandlers_invokeHandler(0, 6, v1);

  return v18;
}

void platform_nowPlaying_triggerMediaItemAttributesUpdate()
{
  v0 = +[ACCNowPlayingServer sharedServer];
  [v0 triggerMediaItemAttributesUpdate];
}

void platform_nowPlaying_triggerMediaItemArtworkUpdate()
{
  v0 = +[ACCNowPlayingServer sharedServer];
  [v0 triggerMediaItemArtworkUpdate];
}

void platform_nowPlaying_triggerPlaybackAttributesUpdate()
{
  _gShouldSendMediaLibraryUID = 1;
  v0 = +[ACCNowPlayingServer sharedServer];
  [v0 triggerPlaybackAttributesUpdate];
}

void platform_nowPlaying_requestPlaybackQueueListInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = +[ACCNowPlayingServer sharedServer];
  [v10 requestPlaybackQueueListInfo:a1 requestID:a2 startIndex:a3 upToCount:a4 infoMask:a5];
}

void platform_nowPlaying_cancelRequestPlaybackQueueListInfo(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCNowPlayingServer sharedServer];
  [v4 cancelRequestPlaybackQueueListInfo:a1 requestID:a2];
}

void platform_nowPlaying_addSubscriber(uint64_t a1)
{
  v2 = +[ACCNowPlayingServer sharedServer];
  [v2 addSubscriber:a1];
}

void platform_nowPlaying_removeSubscriber(uint64_t a1)
{
  v2 = +[ACCNowPlayingServer sharedServer];
  [v2 removeSubscriber:a1];
}

void platform_nowPlaying_incrementUserCount()
{
  v0 = +[ACCNowPlayingServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCNowPlayingServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233D08];
  }
}

void platform_nowPlaying_decrementUserCount()
{
  v0 = +[ACCNowPlayingServer sharedServer];
  [v0 decrementUserCount];
}

uint64_t platform_nowPlaying_copyDefaultMediaItemAttributes()
{
  v1[0] = @"PersistentID";
  v1[1] = @"Title";
  v2[0] = &off_100233E10;
  v2[1] = &stru_10022D360;
  v1[2] = @"PlaybackDurationMS";
  v1[3] = @"AlbumTitle";
  v2[2] = &off_100233E10;
  v2[3] = &stru_10022D360;
  v1[4] = @"AlbumTrackNum";
  v1[5] = @"AlbumTrackCount";
  v2[4] = &off_100233E10;
  v2[5] = &off_100233E10;
  v1[6] = @"AlbumDiscNum";
  v1[7] = @"AlbumDiscCount";
  v2[6] = &off_100233E10;
  v2[7] = &off_100233E10;
  v1[8] = @"Artist";
  v1[9] = @"Genre";
  v2[8] = &stru_10022D360;
  v2[9] = &stru_10022D360;
  v1[10] = @"Composer";
  v1[11] = @"IsLikeSupported";
  v2[10] = &stru_10022D360;
  v2[11] = &__kCFBooleanFalse;
  v1[12] = @"IsBanSupported";
  v1[13] = @"IsLiked";
  v2[12] = &__kCFBooleanFalse;
  v2[13] = &__kCFBooleanFalse;
  v1[14] = @"IsBanned";
  v1[15] = @"ChapterCount";
  v2[14] = &__kCFBooleanFalse;
  v2[15] = &off_100233E10;
  [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:16];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t platform_nowPlaying_copyDefaultPlaybackAttributes()
{
  v1[0] = @"Status";
  v1[1] = @"ElapsedTimeMS";
  v2[0] = &off_100233E28;
  v2[1] = &off_100233E10;
  v1[2] = @"QueueIndex";
  v1[3] = @"QueueCount";
  v2[2] = &off_100233E10;
  v2[3] = &off_100233E10;
  v1[4] = @"QueueChapterIndex";
  v1[5] = @"ShuffleMode";
  v2[4] = &off_100233E10;
  v2[5] = &off_100233E28;
  v1[6] = @"RepeatMode";
  v1[7] = @"AppName";
  v2[6] = &off_100233E28;
  v2[7] = &stru_10022D360;
  v1[8] = @"MediaLibraryUID";
  v1[9] = @"iTunesRadioAd";
  v2[8] = &stru_10022D360;
  v2[9] = &__kCFBooleanFalse;
  v1[10] = @"iTunesRadioStation";
  v1[11] = @"iTunesRadioStationMediaPlaylistPersistentID";
  v2[10] = &stru_10022D360;
  v2[11] = &off_100233E10;
  v1[12] = @"PlaybackSpeed";
  v1[13] = @"SetElapsedTimeAvailable";
  v2[12] = &off_100233E10;
  v2[13] = &__kCFBooleanFalse;
  v1[14] = @"AppBundleID";
  v2[14] = &stru_10022D360;
  [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:15];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t platform_connectionInfo_accessoryInfoForConnection(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (a1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __platform_connectionInfo_accessoryInfoForConnection_block_invoke;
    v3[3] = &unk_1002273D0;
    v3[4] = &v4;
    acc_manager_protectedConnectionCall(a1, 0, 0, v3);
    v1 = v5[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10008BAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t platform_connectionInfo_accessoryPropertiesForConnection(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (a1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __platform_connectionInfo_accessoryPropertiesForConnection_block_invoke;
    v3[3] = &unk_1002273D0;
    v3[4] = &v4;
    acc_manager_protectedConnectionCall(a1, 0, 0, v3);
    v1 = v5[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10008BBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t platform_connectionInfo_accessoryPropertiesForEndpoint(uint64_t a1, void *a2)
{
  v2 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (a1 && a2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __platform_connectionInfo_accessoryPropertiesForEndpoint_block_invoke;
    v4[3] = &unk_100227380;
    v4[4] = &v5;
    acc_manager_protectedEndpointCall(a2, 0, 0, v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10008BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFSetRef platform_connectionInfo_accessoryConnections()
{
  v0 = acc_manager_copyAllConnections();
  Keys = CFDictionaryGetKeys(v0, 1);
  if (v0)
  {
    CFRelease(v0);
  }

  return Keys;
}

uint64_t __platform_connectionInfo_accessoryInfoForConnection_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a2 + 142) & 1) == 0)
  {
    AccessoryInfo = acc_connection_getAccessoryInfo(a2);
    *(*(*(a1 + 32) + 8) + 24) = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
  }

  return 1;
}

uint64_t __platform_connectionInfo_accessoryPropertiesForConnection_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 142) & 1) == 0)
  {
    v4 = acc_connection_copyProperties(a2);
    if (v4)
    {
      v7 = v4;
      v5 = _platform_connectionInfo_addAuthInfo(a2, v4);
      CFRelease(v7);
    }

    else
    {
      v5 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  return 1;
}

uint64_t __platform_connectionInfo_accessoryPropertiesForEndpoint_block_invoke(uint64_t a1, pthread_mutex_t *a2)
{
  if ((a2[1].__opaque[48] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = acc_endpoint_copyProperties(a2);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      if (a2->__sig)
      {
        *(*(*(a1 + 32) + 8) + 24) = _platform_connectionInfo_addAuthInfo(a2->__sig, *(v4 + 24));
        CFRelease(v5);
      }
    }
  }

  return 1;
}

void platform_connectionInfo_setAccessoryUserName(const __CFString *a1, uint64_t a2, const void *a3, void *a4)
{
  v7 = a4;
  v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a2 || !a3)
  {
    goto LABEL_36;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buffer = 0u;
  Length = CFStringGetLength(a1);
  CString = CFStringGetCString(a1, buffer, Length + 1, 0x8000100u);
  if (!gLogObjects)
  {
    goto LABEL_40;
  }

  if (gNumLogObjects >= 9)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
LABEL_40:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67109378;
    v22[1] = CString != 0;
    v23 = 2080;
    v24 = buffer;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_setAccessoryUserName: %d, %s", v22, 0x12u);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a3);
  if (!EndpointWithUUID)
  {
    goto LABEL_36;
  }

  v14 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_37;
  }

  if (gLogObjects)
  {
    v15 = gNumLogObjects <= 8;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v16)
    {
      v18 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_setAccessoryUserName_cold_3(v14);
    }

LABEL_36:
    v7[2](v7, v8);
    goto LABEL_37;
  }

  if (v16)
  {
    v17 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_setAccessoryUserName", v22, 2u);
  }

  v20 = *(v14 + 56);
  mfi4Auth_endpoint_setAccessoryUserName();
LABEL_37:
}

void platform_connectionInfo_getAccessoryUserName(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v5[2](v5, 0, v6);
    goto LABEL_29;
  }

  v8 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_getAccessoryUserName_cold_2(v8);
    }

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_getAccessoryUserName", v16, 2u);
  }

  v14 = *(v8 + 56);
  mfi4Auth_endpoint_getAccessoryUserName();
LABEL_29:
}

void platform_connectionInfo_provisionPairing(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v5[2](v5, v6);
    goto LABEL_29;
  }

  v8 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_provisionPairing_cold_2(v8);
    }

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[FindMy] platform_connectionInfo_provisionPairing", v16, 2u);
  }

  v14 = *(v8 + 56);
  mfi4Auth_endpoint_provisionPairing();
LABEL_29:
}

void platform_connectionInfo_resetPairing(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (a1)
  {
    if (a2)
    {
      if (gLogObjects)
      {
        v7 = gNumLogObjects < 9;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v9 = &_os_log_default;
        v8 = &_os_log_default;
      }

      else
      {
        v9 = *(gLogObjects + 64);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_resetPairing", buf, 2u);
      }

      EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
      if (EndpointWithUUID)
      {
        v11 = EndpointWithUUID;
        if (*(EndpointWithUUID + 120) == 1)
        {
          platform_connectionInfo_resetPairing_cold_5();
        }

        else
        {
          if (gLogObjects)
          {
            v12 = gNumLogObjects <= 8;
          }

          else
          {
            v12 = 1;
          }

          v13 = !v12;
          if (EndpointWithUUID[7] == 14)
          {
            if (v13)
            {
              v14 = *(gLogObjects + 64);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }

              v14 = &_os_log_default;
              v16 = &_os_log_default;
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v18[0] = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_resetPairing: mfi4Auth_endpoint_erasePairing", v18, 2u);
            }

            mfi4Auth_endpoint_erasePairing(*(v11 + 56), v5);
          }

          else
          {
            if (v13)
            {
              v15 = *(gLogObjects + 64);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }

              v15 = &_os_log_default;
              v17 = &_os_log_default;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_resetPairing_cold_3(v11);
            }

            v5[2](v5, v6);
          }
        }
      }

      else
      {
        platform_connectionInfo_resetPairing_cold_6();
      }
    }

    else
    {
      platform_connectionInfo_resetPairing_cold_7();
    }
  }

  else
  {
    platform_connectionInfo_resetPairing_cold_8();
  }
}

void platform_connectionInfo_getPublicNvmKeyValues(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (a1)
  {
    if (a2)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
      if (!EndpointWithUUID || (v10 = EndpointWithUUID, *(EndpointWithUUID + 120) == 1))
      {
        platform_connectionInfo_getPublicNvmKeyValues_cold_3();
      }

      else if (*(EndpointWithUUID + 7) == 14)
      {
        mfi4Auth_endpoint_getPublicNvmKeyValues(EndpointWithUUID[7], a3, v7);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 9)
        {
          v11 = *(gLogObjects + 64);
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

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_getPublicNvmKeyValues_cold_2(v10);
        }

        v7[2](v7, 0, v8);
      }
    }

    else
    {
      platform_connectionInfo_getPublicNvmKeyValues_cold_5();
    }
  }

  else
  {
    platform_connectionInfo_getPublicNvmKeyValues_cold_6();
  }
}

void platform_connectionInfo_setPublicNvmKeyValues(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v7[2](v7, v8);
    goto LABEL_29;
  }

  v10 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 8;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v12)
    {
      v14 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_setPublicNvmKeyValues_cold_2(v10);
    }

    goto LABEL_28;
  }

  if (v12)
  {
    v13 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_setPublicNvmKeyValues", v17, 2u);
  }

  mfi4Auth_endpoint_setPublicNvmKeyValues(*(v10 + 56), a3, v7);
LABEL_29:
}

void platform_connectionInfo_getPrivateNvmKeyValues(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v7[2](v7, 0, v8);
    goto LABEL_29;
  }

  v10 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 8;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v12)
    {
      v14 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_getPrivateNvmKeyValues_cold_2(v10);
    }

    goto LABEL_28;
  }

  if (v12)
  {
    v13 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_getPrivateNvmKeyValues", v17, 2u);
  }

  mfi4Auth_endpoint_getPrivateNvmKeyValues(*(v10 + 56), a3, v7);
LABEL_29:
}

void platform_connectionInfo_setPrivateNvmKeyValues(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v7[2](v7, v8);
    goto LABEL_29;
  }

  v10 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 8;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v12)
    {
      v14 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_setPrivateNvmKeyValues_cold_2(v10);
    }

    goto LABEL_28;
  }

  if (v12)
  {
    v13 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_setPrivateNvmKeyValues", v17, 2u);
  }

  mfi4Auth_endpoint_setPrivateNvmKeyValues(*(v10 + 56), a3, v7);
LABEL_29:
}

void platform_connectionInfo_beginVendorKeyErase(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v5[2](v5, 0, v6);
    goto LABEL_29;
  }

  v8 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_beginVendorKeyErase_cold_2(v8);
    }

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_beginVendorKeyErase", v15, 2u);
  }

  mfi4Auth_endpoint_beginVendorKeyErase(*(v8 + 56), v5);
LABEL_29:
}

void platform_connectionInfo_continueVendorKeyErase(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v11[2](v11, v12);
    goto LABEL_29;
  }

  v14 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v15 = gNumLogObjects <= 8;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v16)
    {
      v18 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_continueVendorKeyErase_cold_2(v14);
    }

    goto LABEL_28;
  }

  if (v16)
  {
    v17 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_continueVendorKeyErase", v21, 2u);
  }

  mfi4Auth_endpoint_continueVendorKeyErase(*(v14 + 56), a3, a4, a5, v11);
LABEL_29:
}

void platform_connectionInfo_cancelVendorKeyErase(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v5[2](v5, v6);
    goto LABEL_29;
  }

  v8 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_cancelVendorKeyErase_cold_2(v8);
    }

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_cancelVendorKeyErase", v15, 2u);
  }

  mfi4Auth_endpoint_cancelVendorKeyErase(*(v8 + 56), v5);
LABEL_29:
}

void platform_connectionInfo_beginUserKeyErase(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v5[2](v5, 0, v6);
    goto LABEL_29;
  }

  v8 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_beginUserKeyErase_cold_2(v8);
    }

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_beginUserKeyErase", v15, 2u);
  }

  mfi4Auth_endpoint_beginUserKeyErase(*(v8 + 56), v5);
LABEL_29:
}

void platform_connectionInfo_continueUserKeyErase(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v11[2](v11, v12);
    goto LABEL_29;
  }

  v14 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v15 = gNumLogObjects <= 8;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v16)
    {
      v18 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_continueUserKeyErase_cold_2(v14);
    }

    goto LABEL_28;
  }

  if (v16)
  {
    v17 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_continueUserKeyErase", v21, 2u);
  }

  mfi4Auth_endpoint_continueUserKeyErase(*(v14 + 56), a3, a4, a5, v11);
LABEL_29:
}

void platform_connectionInfo_cancelUserKeyErase(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v5[2](v5, v6);
    goto LABEL_29;
  }

  v8 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_cancelUserKeyErase_cold_2(v8);
    }

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_cancelUserKeyErase", v15, 2u);
  }

  mfi4Auth_endpoint_cancelUserKeyErase(*(v8 + 56), v5);
LABEL_29:
}

void platform_connectionInfo_copyUserPrivateKey(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  if (!a1 || !a2 || (EndpointWithUUID = acc_manager_getEndpointWithUUID(a2)) == 0)
  {
LABEL_28:
    v5[2](v5, 0, v6);
    goto LABEL_29;
  }

  v8 = EndpointWithUUID;
  if (EndpointWithUUID[120])
  {
    goto LABEL_29;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (*(EndpointWithUUID + 7) != 14)
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_copyUserPrivateKey_cold_2(v8);
    }

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_copyUserPrivateKey", v15, 2u);
  }

  mfi4Auth_endpoint_copyUserPrivateKey(*(v8 + 56), v5);
LABEL_29:
}

uint64_t ___platform_connectionInfo_sendDataForAuthProtocolEndpoint_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  Length = CFDataGetLength(*(a1 + 48));
  result = accAuthProtocol_endpoint_sendOutgoingData(v2, BytePtr, Length);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___platform_connectionInfo_sendDataForiAP2Endpoint_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  Length = CFDataGetLength(*(a1 + 48));
  result = iap2_endpoint_sendOutgoingData(v2, BytePtr, Length);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10008F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void acc_sysdiagnose_InitiateAuthFailureSysdiagnose()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315906;
    v2 = "acc_sysdiagnose_InitiateAuthFailureSysdiagnose";
    v3 = 1024;
    v4 = 50;
    v5 = 1024;
    v6 = MFAAIsInternalBuild();
    v7 = 1024;
    v8 = platform_systemInfo_isWatch();
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d MFAAIsInternalBuild %d, isWatch %d", &v1, 0x1Eu);
  }

  if (MFAAIsInternalBuild())
  {
    if (_isSysdiagnosePending)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v1 = 136315394;
        v2 = "acc_sysdiagnose_InitiateAuthFailureSysdiagnose";
        v3 = 1024;
        v4 = 64;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d sysdiagnose already in flight! skipped!", &v1, 0x12u);
      }
    }

    else
    {
      _isSysdiagnosePending = 1;
      v0 = dispatch_get_global_queue(0, 0);
      dispatch_async(v0, &__block_literal_global_25);
    }
  }
}

void _acc_sysdiagnose_authFailure(int a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "_acc_sysdiagnose_authFailure";
    v8 = 1024;
    v9 = 28;
    v10 = 1024;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d timeout %d", buf, 0x18u);
  }

  v2 = +[NSMutableDictionary dictionary];
  v5 = 0;
  v3 = [Libsysdiagnose sysdiagnoseWithMetadata:v2 withError:&v5];
  v4 = v5;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    _acc_sysdiagnose_authFailure_cold_1(v4);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sysdiagnose path: %@\n", buf, 0xCu);
  }
}

CFStringRef CFCreateUUIDString()
{
  v0 = CFUUIDCreate(kCFAllocatorDefault);
  v1 = CFUUIDCreateString(kCFAllocatorDefault, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CFStringRef CFArrayCreateRawValuesString(const __CFArray *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  v5.length = CFArrayGetCount(a1);
  if (a2)
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  v5.location = 0;
  CFArrayApplyFunction(a1, v5, v6, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFSetCreateRawValuesString(const __CFSet *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  if (a2)
  {
    v5 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v5 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  CFSetApplyFunction(a1, v5, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

const __CFString *CFStringCreateFromCFData(const __CFData *a1, const __CFString *a2)
{
  if (!a1)
  {
    return &stru_10022D360;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Length >= 1)
  {
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, a2, v7);
      --Length;
    }

    while (Length);
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFSetRef CFDictionaryGetKeys(const __CFDictionary *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2 ? &kCFTypeSetCallBacks : 0;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, v3);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  CFDictionaryApplyFunction(a1, CFDictionaryApplierFunction_addKeyToMutableSet, Mutable);
  Copy = CFSetCreateCopy(kCFAllocatorDefault, v5);
  CFRelease(v5);
  return Copy;
}

void CFDictionaryApplierFunction_addKeyToMutableSet(void *value, int a2, CFMutableSetRef theSet)
{
  if (value)
  {
    if (theSet)
    {
      CFSetAddValue(theSet, value);
    }
  }
}

char *createCStringFromCFString(const __CFString *a1, CFStringEncoding a2)
{
  bufferSize = 0;
  if (!a1)
  {
    return 0;
  }

  v9.length = CFStringGetLength(a1);
  v9.location = 0;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, 0, 0, &bufferSize);
  v4 = malloc_type_malloc(++bufferSize, 0xAE6E017BuLL);
  CString = CFStringGetCString(a1, v4, bufferSize, a2);
  if (v4)
  {
    v6 = CString == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v4);
    return 0;
  }

  return v4;
}

void CFDictionaryApplierFunction_setValueInMutableDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

id logObjectForModule_27()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 10;
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
    v10 = *(gLogObjects + 72);
  }

  return v10;
}

void OUTLINED_FUNCTION_7_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, (v5 - 144), 2u);
}

id __getSessionIDLock()
{
  if (__getSessionIDLock_onceToken != -1)
  {
    __getSessionIDLock_cold_1();
  }

  v1 = __getSessionIDLock___sessionIDLock;

  return v1;
}

void ____getSessionIDLock_block_invoke(id a1)
{
  __getSessionIDLock___sessionIDLock = objc_alloc_init(NSLock);

  _objc_release_x1();
}

uint64_t _acc_auth_protocol_supportedAuthTypes(int a1, _BYTE *a2, unsigned int a3)
{
  result = 0;
  if (a1 == 1 && a2 && a3)
  {
    if (acc_userDefaults_copyIntegerForKey(@"ACCAuthProtocolRoleSupport") == 2)
    {
      return 0;
    }

    else
    {
      if (acc_userDefaults_copyIntegerForKey(@"ACCAuthProtocolRoleSupport") == 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = 1;
        *a2 = 1;
      }

      if (v7 >= a3)
      {
        return 1;
      }

      else
      {
        result = v7 + 1;
        a2[v7] = 0;
      }
    }
  }

  return result;
}

uint64_t _acc_auth_protocol_supportedAuthCapabilities(int a1)
{
  if (a1 != 1 || acc_userDefaults_copyIntegerForKey(@"ACCAuthProtocolRoleSupport") == 2)
  {
    return 0;
  }

  if (!acc_userDefaults_BOOLForKey(@"DisableMFi4CertSupport"))
  {
    return 34;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
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
    v4 = 136315650;
    v5 = "_acc_auth_protocol_supportedAuthCapabilities";
    v6 = 1024;
    v7 = 34;
    v8 = 1024;
    v9 = 2;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: supportedCharacteristics 0x%08x -> 0x%08x", &v4, 0x18u);
  }

  return 2;
}

id logObjectForModule_28()
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v0 = *(gLogObjects + 432);
  }

  else
  {
    v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v1)
    {
      logObjectForModule_cold_1_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v0 = &_os_log_default;
    v9 = &_os_log_default;
  }

  return v0;
}

uint64_t _acc_auth_protocol_reserveFreeSessionID(_BYTE *a1)
{
  v2 = __getSessionIDLock();
  [v2 lock];

  if (a1)
  {
    if (__availableSessionIDs)
    {
      if (__lastAllocatedSessionIDInitialized == 1)
      {
        v3 = __lastAllocatedSessionID;
      }

      else
      {
        v3 = arc4random_uniform(0x10u);
        __lastAllocatedSessionID = v3;
        __lastAllocatedSessionIDInitialized = 1;
      }

      v5 = (v3 + 1) & 0xF;
      v4 = 1;
      if (v5 != v3)
      {
        while (((1 << v5) & __availableSessionIDs) == 0)
        {
          v5 = (v5 + 1) & 0xF;
          if (v5 == v3)
          {
            goto LABEL_10;
          }
        }

        v4 = 0;
        __availableSessionIDs &= ~(1 << v5);
        __lastAllocatedSessionID = v5;
        *a1 = v5;
      }
    }

    else
    {
      v4 = 16;
    }
  }

  else
  {
LABEL_10:
    v4 = 1;
  }

  v6 = __getSessionIDLock();
  [v6 unlock];

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v7 = *(gLogObjects + 432);
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
    if (a1)
    {
      v9 = *a1;
    }

    else
    {
      v9 = -1;
    }

    v11[0] = 67109376;
    v11[1] = v9;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AccAuth] _reserveFreeSessionID: sessionID %d, errorNo %d \n", v11, 0xEu);
  }

  return v4;
}

BOOL _acc_auth_protocol_isBusySessionID(int a1)
{
  v2 = __getSessionIDLock();
  [v2 lock];

  v3 = __availableSessionIDs;
  v4 = __getSessionIDLock();
  [v4 unlock];

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v5 = *(gLogObjects + 432);
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

  v7 = (1 << a1) & v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _acc_auth_protocol_isBusySessionID_cold_2(v7 == 0, a1, v5);
  }

  return v7 == 0;
}

uint64_t _acc_auth_protocol_returnSessionID(int a1)
{
  v2 = __getSessionIDLock();
  [v2 lock];

  v3 = 1;
  if (((1 << a1) & __availableSessionIDs) == 0)
  {
    v3 = 0;
    __availableSessionIDs |= 1 << a1;
  }

  v4 = __getSessionIDLock();
  [v4 unlock];

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v5 = *(gLogObjects + 432);
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
    v8[0] = 67109376;
    v8[1] = a1;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[AccAuth] _returnSessionID: sessionID %d, errorNo %d \n", v8, 0xEu);
  }

  return v3;
}

uint64_t _acc_auth_protocol_createSessionImplementation(uint64_t a1, unsigned __int8 *a2)
{
  v3 = 0;
  v4 = 1;
  if (a1 && a2)
  {
    v5 = *a2;
    if (v5 == 255 || _acc_auth_protocol_isBusySessionID(v5))
    {
      v3 = malloc_type_calloc(1uLL, 0x168uLL, 0x1090040F983C52EuLL);
      v4 = 0;
      *(a2 + 176) = v3;
    }

    else
    {
      v3 = 0;
      v4 = 9;
    }
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v6 = *(gLogObjects + 432);
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
    if (a2)
    {
      v8 = *a2;
      if (v3)
      {
LABEL_16:
        v9 = v3[88];
LABEL_19:
        v11[0] = 67109632;
        v11[1] = v8;
        v12 = 1024;
        v13 = v9;
        v14 = 1024;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[AccAuth] _createSessionImplementation: sessionID %d, certificateDataCount %d, errorNo %d \n", v11, 0x14u);
        goto LABEL_20;
      }
    }

    else
    {
      v8 = -1;
      if (v3)
      {
        goto LABEL_16;
      }
    }

    v9 = -1;
    goto LABEL_19;
  }

LABEL_20:

  return v4;
}

void _acc_auth_protocol_endSessionImplementation(unsigned __int8 *a1)
{
  if (a1)
  {
    v2 = *(a1 + 176);
    *(a1 + 176) = 0;
    _acc_auth_protocol_cleanupCertificateInfo(v2);
    if (v2)
    {
      free(v2);
    }
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v3 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v5 = *a1;
    }

    else
    {
      v5 = -1;
    }

    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[AccAuth] _endSessionImplementation: sessionID %d \n", v6, 8u);
  }
}

uint64_t _acc_auth_protocol_cleanupCertificateInfo(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _acc_auth_protocol_cleanupCertificateInfo_cold_2(a1);
  }

  if (a1)
  {
    v4 = -1;
    v5 = a1;
    while (++v4 < *(a1 + 352))
    {
      v6 = v5 + 88;
      v7 = _acc_auth_protocol_cleanupCertificateData(v5);
      v5 = v6;
      if (v7)
      {
        v8 = 1;
        goto LABEL_16;
      }
    }

    v8 = 0;
LABEL_16:
    *(a1 + 352) = 0;
  }

  else
  {
    v8 = 1;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v9 = *(gLogObjects + 432);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v11 = *(a1 + 352);
    }

    else
    {
      v11 = -1;
    }

    v13[0] = 67109376;
    v13[1] = v11;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[AccAuth] _cleanupCertificateInfo: certificateDataCount %d, errorNo %d \n", v13, 0xEu);
  }

  return v8;
}

void _acc_auth_protocol_handleSessionAuthenticationState(void *a1, unsigned __int8 a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return;
  }

  v3 = a1[176];
  if (!v3)
  {
    return;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v4 = *(gLogObjects + 432);
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
    v6 = *a1;
    *buf = 67109376;
    *&buf[4] = v6;
    LOWORD(v33) = 1024;
    *(&v33 + 2) = valuePtr;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AccAuth] _handleSessionAuthenticationState: sessionID %d, authenticated %d \n", buf, 0xEu);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, a1);
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"sessionID", v8);
  CFDictionarySetValue(Mutable, @"authStatus", v9);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.accAuthProtocol.authStatus", 0, Mutable, 1u);
  if (valuePtr == 1 && *(v3 + 352))
  {
    v12 = 0;
    v13 = v3;
    do
    {
      v11 = _acc_auth_protocol_certificateCacheSaveCert(v11, v13);
      ++v12;
      v13 += 88;
    }

    while (v12 < *(v3 + 352));
  }

  v14 = a1[175];
  if (v14)
  {
    v15 = valuePtr;
    if (valuePtr)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    Copy = CFStringCreateCopy(kCFAllocatorDefault, v14);
    if (!Copy)
    {
      return;
    }

    v18 = Copy;
    EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
    if (!EndpointWithUUID)
    {
      v9 = v18;
LABEL_47:
      CFRelease(v9);
      return;
    }

    v20 = EndpointWithUUID;
    v29 = v16;
    if (v15)
    {
      v21 = CFDataCreate(kCFAllocatorDefault, *v3, *(v3 + 8));
      if (v21)
      {
        v22 = v21;
        acc_connection_setAuthCertData(*v20, v21);
        CFRelease(v22);
      }
    }

    AuthStatus = acc_connection_getAuthStatus(*v20, 1u);
    v28 = acc_connection_getAuthStatus(*v20, 4u);
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v24 = *(gLogObjects + 432);
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
      *buf = 67109376;
      *&buf[4] = AuthStatus;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v28;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[AccAuth] oldAuthStatus %d, oldCTAAuthStatus %d \n", buf, 0xEu);
    }

    if (v28 != 2 && AuthStatus != v29)
    {
      acc_connection_setAuthStatus(*v20, 1, v29);
      accAuthProtocol_endpoint_notifyAuthStatus(*(v20 + 7), v29);
      if (acc_userDefaults_BOOLForKey(@"SysdiagnoseOnInductiveCTAFailure"))
      {
        acc_sysdiagnose_InitiateAuthFailureSysdiagnose();
      }
    }

    if (v15)
    {
      *buf = 0;
      v33 = buf;
      v34 = 0x2020000000;
      v35 = CFStringCreateCopy(kCFAllocatorDefault, *(v20 + 1));
      if (*(v33 + 3))
      {
        v26 = dispatch_time(0, 20000000000);
        v27 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = ___acc_auth_protocol_handleSessionAuthenticationState_block_invoke;
        block[3] = &unk_100227998;
        block[4] = buf;
        dispatch_after(v26, v27, block);
      }

      _Block_object_dispose(buf, 8);
    }

    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    goto LABEL_47;
  }
}

uint64_t _acc_auth_protocol_certificateCacheSaveCert(uint64_t a1, uint64_t a2)
{
  if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
  {
    return 1;
  }

  v4 = CFDataCreate(kCFAllocatorDefault, *a2, *(a2 + 8));
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  if (__getCerCacheObj_onceToken != -1)
  {
    _acc_auth_protocol_certificateCacheSaveCert_cold_1();
  }

  v3 = MFAAAddCertDataEntryToCache() ^ 1;
  CFRelease(v5);
  return v3;
}

void ___acc_auth_protocol_handleSessionAuthenticationState_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
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
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[AccAuth] remove assertion for connection %@ \n", &v6, 0xCu);
  }

  platform_sleepAssertion_destroy(*(*(*(a1 + 32) + 8) + 24));
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t _acc_auth_protocol_getCertificate(uint64_t a1, const void *a2, unsigned int a3, _OWORD *a4, int a5, uint64_t a6)
{
  v7 = 1;
  if (a1 && a6)
  {
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = 32;
    }

    v12 = acc_auth_protocol_negotiatedMFi4Cert(a1);
    if (!a4 || !v12)
    {
      v18 = malloc_type_malloc(v11 + 650, 0xE94A3D31uLL);
      *(a6 + 80) = v18;
      if (v18)
      {
        *a6 = v18;
        *(a6 + 8) = 650;
        arc4random_buf(v18, 0x28AuLL);
        *(a6 + 24) = v11;
        v17 = (a6 + 24);
        v15 = *(a6 + 8);
        v16 = (*(a6 + 80) + v15);
        goto LABEL_13;
      }

LABEL_15:
      v7 = 1;
LABEL_19:
      *(a6 + 64) = *(a6 + 80);
      *(a6 + 72) = *(a6 + 8) + *(a6 + 40);
      goto LABEL_20;
    }

    if (a5 == 16)
    {
      v13 = malloc_type_malloc(v11 + 666, 0x69DCC0FEuLL);
      *(a6 + 80) = v13;
      if (v13)
      {
        *(a6 + 32) = v13;
        *(a6 + 40) = 16;
        *v13 = *a4;
        v14 = (*(a6 + 80) + *(a6 + 40));
        *a6 = v14;
        *(a6 + 8) = 650;
        arc4random_buf(v14, 0x28AuLL);
        v15 = *(a6 + 8);
        v16 = (*(a6 + 80) + *(a6 + 40) + v15);
        *(a6 + 24) = v11;
        v17 = (a6 + 24);
LABEL_13:
        *(v17 - 1) = v16;
        if (a2)
        {
          memcpy(v16, a2, v11);
        }

        else
        {
          _acc_auth_protocol_hash(2, *a6, v15, v16, v11, v17);
        }

        v7 = 0;
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_20:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v19 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    if (a6)
    {
      v21 = *(a6 + 8);
      v22 = *(a6 + 24);
    }

    else
    {
      v21 = -1;
      v22 = -1;
    }

    v24[0] = 67109632;
    v24[1] = v21;
    v25 = 1024;
    v26 = v22;
    v27 = 1024;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[AccAuth] _getCertificate: certificateDataLen %d, certificateHashLen %d, errorNo %d \n", v24, 0x14u);
  }

  return v7;
}

uint64_t _acc_auth_protocol_hash(int a1, void *data, CC_LONG len, unsigned __int8 *md, unsigned int a5, char *a6)
{
  if ((a1 - 1) > 1 || data == 0 || len == 0 || md == 0 || a5 == 0 || a6 == 0)
  {
    return 1;
  }

  if (a1 == 2)
  {
    if (a5 >= 0x20)
    {
      CC_SHA256(data, len, md);
      v15 = 32;
      goto LABEL_24;
    }

    return 1;
  }

  if (a5 < 0x14)
  {
    return 1;
  }

  CC_SHA1(data, len, md);
  v15 = 20;
LABEL_24:
  *a6 = v15;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v16 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a6;
    v19[0] = 67109888;
    v19[1] = a1;
    v20 = 1024;
    v21 = len;
    v22 = 1024;
    v23 = v18;
    v24 = 1024;
    v25 = 0;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[AccAuth] _hash: hashType %d, inDataLen %d, outHashLen %d, errorNo %d \n", v19, 0x1Au);
  }

  return 0;
}

uint64_t _acc_auth_protocol_getSigningCertificateHash(uint64_t a1, uint64_t *a2, void *a3, unsigned int a4, _BYTE *a5)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v10 = *(gLogObjects + 432);
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
    v23 = *(a2 + 2);
    v24 = 67109632;
    v25 = v23;
    v26 = 1024;
    v27 = a4;
    v28 = 2048;
    v29 = a5;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[AccAuth] _getSigningCertificateHash: inCertificateData %d, outCertificateHashSize %d, outCertificateHashLen %p \n", &v24, 0x18u);
  }

  v12 = 1;
  if (a1 && a2 && a3 && a4 >= 0x20 && a5)
  {
    if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
    {
      arc4random_buf(a3, a4);
      v12 = 0;
      *a5 = a4;
    }

    else
    {
      *a5 = 0;
      if (!acc_auth_protocol_negotiatedMFi4Cert(a1))
      {
        goto LABEL_23;
      }

      v13 = *a2;
      v14 = *(a2 + 2);
      if (!SecCertificateCreateWithBytes())
      {
        goto LABEL_24;
      }

      AuthorityKeyID = SecCertificateGetAuthorityKeyID();
      if (!AuthorityKeyID)
      {
LABEL_23:
        v12 = 2;
        goto LABEL_24;
      }

      v16 = AuthorityKeyID;
      Length = CFDataGetLength(AuthorityKeyID);
      v12 = 22;
      if (Length <= 255)
      {
        v18 = Length;
        if (Length <= a4)
        {
          v30.location = 0;
          v30.length = Length;
          CFDataGetBytes(v16, v30, a3);
          *a5 = v18;
          CFRelease(v16);
          v12 = 0;
        }
      }
    }
  }

LABEL_24:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v19 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    if (a5)
    {
      v21 = *a5;
    }

    else
    {
      v21 = -1;
    }

    v24 = 67109632;
    v25 = a4;
    v26 = 1024;
    v27 = v21;
    v28 = 1024;
    LODWORD(v29) = v12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[AccAuth] _getSigningCertificateHash: outCertificateHashSize %d, outCertificateHashLen %d, errorNo %d \n", &v24, 0x14u);
  }

  return v12;
}

uint64_t _acc_auth_protocol_createCertificateData(uint64_t a1, unsigned int a2, int a3, uint64_t *a4)
{
  if (a1)
  {
    v7 = 1;
    if (a2 - 1 <= 0x3FF && a4)
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v9 = *(gLogObjects + 432);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v9 = &_os_log_default;
        v10 = &_os_log_default;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v42 = 67109376;
        v43 = a2;
        v44 = 1024;
        *v45 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[AccAuth] createCertificateData: certificateDataLen %d, isMFi4LeafCertData %d \n", &v42, 0xEu);
      }

      v11 = malloc_type_calloc(1uLL, a2 + 48, 0x4F031CE0uLL);
      a4[10] = v11;
      if (!v11)
      {
        a4[4] = 0;
        *(a4 + 40) = 0;
        *a4 = 0;
        *(a4 + 2) = 0;
        a4[2] = 0;
        v7 = 1;
        *(a4 + 24) = 0;
LABEL_58:
        a4[8] = a4[10];
        *(a4 + 18) = *(a4 + 2) + *(a4 + 40);
        goto LABEL_59;
      }

      if (a3)
      {
        a4[4] = v11;
        *(a4 + 40) = 16;
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v12 = *(gLogObjects + 432);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v12 = &_os_log_default;
          v15 = &_os_log_default;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16 = *(a4 + 40);
          v17 = a4[4];
          v42 = 68157954;
          v43 = v16;
          v44 = 2098;
          *v45 = v17;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[AccAuth] createCertificateData: mfi4 privacyPrefix: \n<%{public,coreacc:bytes}.*P>", &v42, 0x12u);
        }

        v18 = (a4[10] + 16);
        *a4 = v18;
        *(a4 + 2) = a2 - 16;
        memcpy(v18, (a1 + 16), a2 - 16);
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v19 = *(gLogObjects + 432);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v19 = &_os_log_default;
          v25 = &_os_log_default;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v26 = *(a4 + 2);
          v27 = *a4;
          v42 = 68157954;
          v43 = v26;
          v44 = 2098;
          *v45 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[AccAuth] createCertificateData: mfi4 certificateData: \n<%{public,coreacc:bytes}.*P>", &v42, 0x12u);
        }

        v28 = (a4[10] + a2);
        a4[2] = v28;
        *(a4 + 24) = 32;
        v7 = _acc_auth_protocol_hash(2, *a4, *(a4 + 2), v28, 0x20u, a4 + 24);
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v24 = *(gLogObjects + 432);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v24 = &_os_log_default;
          v33 = &_os_log_default;
        }

        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_57;
        }

        v34 = *(a4 + 24);
        v35 = a4[2];
        v42 = 68157954;
        v43 = v34;
        v44 = 2098;
        *v45 = v35;
        v32 = "[AccAuth] createCertificateData: mfi4 certificateHash: \n<%{public,coreacc:bytes}.*P>";
      }

      else
      {
        *a4 = v11;
        *(a4 + 2) = a2;
        v13 = a2;
        memcpy(v11, a1, a2);
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v14 = *(gLogObjects + 432);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v14 = &_os_log_default;
          v20 = &_os_log_default;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v21 = *(a4 + 2);
          v22 = *a4;
          v42 = 68157954;
          v43 = v21;
          v44 = 2098;
          *v45 = v22;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[AccAuth] createCertificateData: mfi3 certificateData: \n<%{public,coreacc:bytes}.*P>", &v42, 0x12u);
        }

        v23 = (a4[10] + v13);
        a4[2] = v23;
        *(a4 + 24) = 32;
        v7 = _acc_auth_protocol_hash(2, *a4, *(a4 + 2), v23, 0x20u, a4 + 24);
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v24 = *(gLogObjects + 432);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v24 = &_os_log_default;
          v29 = &_os_log_default;
        }

        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_57;
        }

        v30 = *(a4 + 24);
        v31 = a4[2];
        v42 = 68157954;
        v43 = v30;
        v44 = 2098;
        *v45 = v31;
        v32 = "[AccAuth] createCertificateData: mfi3 certificateHash: \n<%{public,coreacc:bytes}.*P>";
      }

      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v32, &v42, 0x12u);
LABEL_57:

      goto LABEL_58;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_59:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v36 = *(gLogObjects + 432);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v36 = &_os_log_default;
    v37 = &_os_log_default;
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v38 = *(a4 + 40);
      v39 = *(a4 + 2);
      v40 = *(a4 + 24);
    }

    else
    {
      v39 = -1;
      v38 = -1;
      v40 = -1;
    }

    v42 = 67110144;
    v43 = v38;
    v44 = 1024;
    *v45 = v39;
    *&v45[4] = 1024;
    *&v45[6] = v40;
    v46 = 1024;
    v47 = a3;
    v48 = 1024;
    v49 = v7;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[AccAuth] _createCertificateData: privacyPrefixLen %d, certificateDataLen %d, certificateHashLen %d, isMFi4LeafCertData %d, errorNo %d \n", &v42, 0x20u);
  }

  return v7;
}

uint64_t _acc_auth_protocol_createCertificateDataWithHash(_OWORD *a1, unsigned int a2, const void *a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a1)
  {
    v9 = 1;
    if (a2 - 1 <= 0x3FF && a3 && a4 - 1 <= 0x1F && a6)
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v13 = *(gLogObjects + 432);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v13 = &_os_log_default;
        v14 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v25 = 67109632;
        v26 = a2;
        v27 = 1024;
        v28 = a4;
        v29 = 1024;
        v30 = a5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[AccAuth] createCertificateDataWithHash: certificateDataLen %d, certificateHashLen %d, isMFi4LeafCertData %d \n", &v25, 0x14u);
      }

      v15 = malloc_type_calloc(1uLL, a2 + 48, 0xC1B9544DuLL);
      *(a6 + 80) = v15;
      if (v15)
      {
        if (a5)
        {
          v16 = a2 - 16;
          *(a6 + 32) = v15;
          *(a6 + 40) = 16;
          **a6 = *a1;
          v15 = (*(a6 + 80) + 16);
          *a6 = v15;
          *(a6 + 8) = v16;
          v17 = a1 + 1;
        }

        else
        {
          *a6 = v15;
          *(a6 + 8) = a2;
          v16 = a2;
          v17 = a1;
        }

        memcpy(v15, v17, v16);
        v18 = (*(a6 + 80) + a2);
        *(a6 + 16) = v18;
        *(a6 + 24) = a4;
        memcpy(v18, a3, a4);
        v9 = 0;
      }

      else
      {
        *(a6 + 32) = 0;
        *(a6 + 40) = 0;
        *a6 = 0;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
        v9 = 1;
        *(a6 + 24) = 0;
      }

      *(a6 + 64) = *(a6 + 80);
      *(a6 + 72) = *(a6 + 8) + *(a6 + 40);
    }
  }

  else
  {
    v9 = 1;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v19 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (a6)
    {
      v21 = *(a6 + 40);
      v22 = *(a6 + 8);
      v23 = *(a6 + 24);
    }

    else
    {
      v22 = -1;
      v21 = -1;
      v23 = -1;
    }

    v25 = 67110144;
    v26 = v21;
    v27 = 1024;
    v28 = v22;
    v29 = 1024;
    v30 = v23;
    v31 = 1024;
    v32 = a5;
    v33 = 1024;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[AccAuth] createCertificateDataWithHash: privacyPrefixLen %d, certificateDataLen %d, certificateHashLen %d, isMFi4LeafCertData %d, errorNo %d \n", &v25, 0x20u);
  }

  return v9;
}

uint64_t _acc_auth_protocol_cleanupCertificateData(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _acc_auth_protocol_cleanupCertificateData_cold_2(a1);
  }

  if (a1)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      free(v4);
      *(a1 + 80) = 0;
    }

    v5 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v5 = 1;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v6 = *(gLogObjects + 432);
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
    if (a1)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 56);
      v9 = *(a1 + 8);
      v12 = *(a1 + 24);
    }

    else
    {
      v9 = -1;
      v10 = -1;
      v11 = -1;
      v12 = -1;
    }

    v13[0] = 67110144;
    v13[1] = v10;
    v14 = 1024;
    v15 = v11;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[AccAuth] _cleanupCertificateData: privacyPrefixLen %d, compressedCertLen %d, certificateDataLen %d, certificateHashLen %d, errorNo %d \n", v13, 0x20u);
  }

  return v5;
}

uint64_t _acc_auth_protocol_setPeerCertificateDataAtIndex(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  v7 = 1;
  if (a1 && a3)
  {
    v6 = *(a1 + 176);
    if (v6)
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v8 = *(gLogObjects + 432);
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
        v22 = *a1;
        v23 = *(a3 + 8);
        v24 = *(a3 + 24);
        v25 = *(v6 + 352);
        v26 = 67110144;
        v27 = v22;
        v28 = 1024;
        v29 = v23;
        v30 = 1024;
        v31 = v24;
        v32 = 1024;
        v33 = a2;
        v34 = 1024;
        v35 = v25;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[AccAuth] _setPeerCertificateDataAtIndex: sessionID %d, certificateDataLen %d, certificateHashLen %d, index %d, certificateDataCount %d \n", &v26, 0x20u);
      }

      if (a2 > 3)
      {
        v7 = 27;
      }

      else
      {
        v10 = v6 + 88 * a2;
        if (*(v6 + 352) <= a2)
        {
          *(v6 + 352) = a2 + 1;
        }

        else
        {
          _acc_auth_protocol_cleanupCertificateData(v6 + 88 * a2);
        }

        v7 = 0;
        v11 = *(a3 + 16);
        *v10 = *a3;
        *(v10 + 16) = v11;
        v12 = *(a3 + 32);
        v13 = *(a3 + 48);
        v14 = *(a3 + 64);
        *(v10 + 80) = *(a3 + 80);
        *(v10 + 48) = v13;
        *(v10 + 64) = v14;
        *(v10 + 32) = v12;
      }
    }

    else
    {
      v7 = 2;
    }
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v15 = *(gLogObjects + 432);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    if (a3)
    {
      v18 = *(a3 + 8);
      v19 = *(a3 + 24);
    }

    else
    {
      v18 = -1;
      v19 = -1;
    }

    v20 = *a1;
    if (v6)
    {
      v21 = *(v6 + 352);
    }

    else
    {
      v21 = -1;
    }

    v26 = 67110400;
    v27 = v20;
    v28 = 1024;
    v29 = v18;
    v30 = 1024;
    v31 = v19;
    v32 = 1024;
    v33 = a2;
    v34 = 1024;
    v35 = v21;
    v36 = 1024;
    v37 = v7;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[AccAuth] _setPeerCertificateDataAtIndex: sessionID %d, certificateDataLen %d, certificateHashLen %d, index %d, certificateDataCount %d, errorNo %d \n", &v26, 0x26u);
  }

  return v7;
}

uint64_t _acc_auth_protocol_setPeerLeafCertificateData(unsigned __int8 *a1, uint64_t a2)
{
  v4 = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 176);
    if (v5)
    {
      if (platform_systemInfo_isInternalBuild() && acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") && *(v5 + 352) >= 3u)
      {
        _acc_auth_protocol_cleanupCertificateInfo(v5);
      }

      v4 = _acc_auth_protocol_setPeerCertificateDataAtIndex(a1, 0, a2);
    }

    else
    {
      v4 = 1;
    }
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v6 = *(gLogObjects + 432);
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
    v8 = *a1;
    if (a2)
    {
      v9 = *(a2 + 8);
      v10 = *(a2 + 24);
    }

    else
    {
      v9 = -1;
      v10 = -1;
    }

    v12[0] = 67109888;
    v12[1] = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[AccAuth] _setPeerLeafCertificateData: sessionID %d, certificateDataLen %d, certificateHashLen %d, errorNo %d \n", v12, 0x1Au);
  }

  return v4;
}

uint64_t _acc_auth_protocol_addPeerIntermediateCertificateData(unsigned __int8 *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v6 = *(gLogObjects + 432);
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
        v15 = *a1;
        v16 = *(a2 + 8);
        v17 = *(a2 + 24);
        v18 = *(v4 + 352);
        v19 = 67109888;
        v20 = v15;
        v21 = 1024;
        v22 = v16;
        v23 = 1024;
        v24 = v17;
        v25 = 1024;
        v26 = v18;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[AccAuth] _addPeerIntermediateCertificateData: sessionID %d, certificateDataLen %d, certificateHashLen %d, certificateDataCount %d \n", &v19, 0x1Au);
      }

      if (*(v4 + 352) > 2u)
      {
        v5 = 27;
      }

      else
      {
        _acc_auth_protocol_setPeerCertificateDataAtIndex(a1, *(v4 + 352), a2);
        v5 = 0;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v8 = *(gLogObjects + 432);
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
    if (a2)
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 24);
    }

    else
    {
      v10 = -1;
      v11 = -1;
    }

    v12 = *a1;
    if (v4)
    {
      v13 = *(v4 + 352);
    }

    else
    {
      v13 = -1;
    }

    v19 = 67110144;
    v20 = v12;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v13;
    v27 = 1024;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[AccAuth] _addPeerIntermediateCertificateData: sessionID %d, certificateDataLen %d, certificateHashLen %d, certificateDataCount %d, errorNo %d \n", &v19, 0x20u);
  }

  return v5;
}

uint64_t _acc_auth_protocol_validatePeerCertificateChain(uint64_t a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = *(a1 + 1408);
  if (!v2)
  {
    goto LABEL_22;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v3 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    _acc_auth_protocol_validatePeerCertificateChain_cold_2(v2);
  }

  if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
  {
    v5 = 0;
    goto LABEL_23;
  }

  if (!*(v2 + 352) || acc_auth_protocol_negotiatedMFi4Cert(a1) && *(v2 + 352) < 2u)
  {
LABEL_22:
    v5 = 1;
    goto LABEL_23;
  }

  if (!acc_auth_protocol_negotiatedMFi4Cert(a1) || (v6 = _acc_auth_protocol_decompressCerts(a1, v2), !v6))
  {
    v6 = _acc_auth_protocol_validateCertificateChain(a1, v2);
  }

  v5 = v6;
LABEL_23:
  if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v7 = *(gLogObjects + 432);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 67109120;
      v16 = v5;
      v10 = "[AccAuth] _acc_auth_protocol_validatePeerCertificateChain: errorNo %d \n";
      v11 = v7;
      v12 = 8;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, &v15, v12);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v7 = *(gLogObjects + 432);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v2)
      {
        v9 = *(v2 + 352);
      }

      else
      {
        v9 = -1;
      }

      v15 = 67109376;
      v16 = v9;
      v17 = 1024;
      v18 = v5;
      v10 = "[AccAuth] _acc_auth_protocol_validatePeerCertificateChain: peer certificateDataCount %d, errorNo %d \n";
      v11 = v7;
      v12 = 14;
      goto LABEL_44;
    }
  }

  return v5;
}

uint64_t _acc_auth_protocol_decompressCerts(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 1;
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  v6 = &audioProductCerts_endpoint_publish_onceToken;
  if (a1 && a2)
  {
    if (acc_auth_protocol_negotiatedMFi4Cert(a1))
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v8 = *(gLogObjects + 432);
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
        _acc_auth_protocol_decompressCerts_cold_2(a2);
      }

      if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
      {
        v3 = 0;
LABEL_47:
        v4 = 0;
        goto LABEL_55;
      }

      v34 = (a2 + 352);
      v10 = [[NSMutableArray alloc] initWithCapacity:*(a2 + 352)];
      if (gLogObjects)
      {
        v11 = gNumLogObjects <= 54;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      if (v10)
      {
        v3 = v10;
        if (v12)
        {
          v13 = *(gLogObjects + 432);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v13 = &_os_log_default;
          v15 = &_os_log_default;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          _acc_auth_protocol_decompressCerts_cold_4(v34);
        }

        if (*v34)
        {
          v16 = 0;
          v17 = a2;
          while (1)
          {
            v18 = v5;
            v19 = v5[491];
            v20 = v6;
            v21 = *(v6 + 984);
            if (v19 && v21 >= 55)
            {
              v22 = *(v19 + 432);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v36 = v19;
                *&v36[8] = 1024;
                v37 = v21;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = &_os_log_default;
              v22 = &_os_log_default;
            }

            v6 = v20;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v27 = *(v17 + 8);
              *buf = 67109376;
              *v36 = v16;
              *&v36[4] = 1024;
              *&v36[6] = v27;
              _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[AccAuth] _decompressCerts: [%d] certificateDataLen %u \n", buf, 0xEu);
            }

            v5 = v18;
            if (*(v17 + 8))
            {
              v24 = _acc_auth_protocol_decompressCert(a1, v17);
              if (v24)
              {
                v4 = v24;
                goto LABEL_55;
              }

              v25 = [NSData dataWithBytes:*v17 length:*(v17 + 8)];
              if (!v25)
              {
                goto LABEL_54;
              }

              v26 = v25;
              [v3 addObject:v25];
            }

            ++v16;
            v17 += 88;
            if (v16 >= *v34)
            {
              goto LABEL_47;
            }
          }
        }

        goto LABEL_47;
      }

      if (v12)
      {
        v14 = *(gLogObjects + 432);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v14 = &_os_log_default;
        v28 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _acc_auth_protocol_decompressCerts_cold_6(v34);
      }

      v3 = 0;
LABEL_54:
      v4 = 12;
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_55:
  v29 = v5[491];
  if (v29 && *(v6 + 984) >= 55)
  {
    v30 = *(v29 + 432);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v30 = &_os_log_default;
    v31 = &_os_log_default;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v32 = *(a2 + 352);
    }

    else
    {
      v32 = -1;
    }

    *buf = 67109376;
    *v36 = v32;
    *&v36[4] = 1024;
    *&v36[6] = v4;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[AccAuth] _decompressCerts: certificateDataCount %d, errorNo %d \n", buf, 0xEu);
  }

  return v4;
}

uint64_t _acc_auth_protocol_validateCertificateChain(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 1;
  v5 = 0;
  if (a1 && a2)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v7 = *(gLogObjects + 432);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      _acc_auth_protocol_validateCertificateChain_cold_2(a2);
    }

    if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
    {
      v3 = 0;
      v5 = 0;
      v4 = 0;
      goto LABEL_95;
    }

    v9 = (a2 + 352);
    v10 = [[NSMutableArray alloc] initWithCapacity:*(a2 + 352)];
    if (gLogObjects)
    {
      v11 = gNumLogObjects <= 54;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (v10)
    {
      v5 = v10;
      if (v12)
      {
        v13 = *(gLogObjects + 432);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v13 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        _acc_auth_protocol_validateCertificateChain_cold_4((a2 + 352));
      }

      if (*v9)
      {
        v16 = 0;
        v17 = a2;
        while (1)
        {
          v18 = gLogObjects;
          v19 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 55)
          {
            v20 = *(gLogObjects + 432);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v52 = v18;
              *&v52[8] = 1024;
              *v53 = v19;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v21 = &_os_log_default;
            v20 = &_os_log_default;
          }

          v22 = &kACCExternalAccessoryProtocolFirmwareVersionPendingKey_ptr;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(v17 + 40);
            v28 = *(v17 + 14);
            v29 = *(v17 + 2);
            v30 = *(v17 + 24);
            *buf = 136316674;
            *v52 = "_acc_auth_protocol_validateCertificateChain";
            *&v52[8] = 1024;
            *v53 = 2032;
            *&v53[4] = 1024;
            *&v53[6] = v16;
            v54 = 1024;
            v55 = v27;
            v56 = 1024;
            v57 = v28;
            v58 = 1024;
            v59 = v29;
            v60 = 1024;
            v61 = v30;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[AccAuth] %s:%d [%d] privacyPrefixLen %u, compressedCertLen %u, certificateDataLen %u, certificateHashLen %u \n", buf, 0x30u);
          }

          if (!*(v17 + 2))
          {
            goto LABEL_92;
          }

          EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 1400));
          if (!EndpointWithUUID)
          {
            v25 = 0;
            goto LABEL_63;
          }

          v24 = EndpointWithUUID;
          if (!v17[6] || !*(v17 + 14))
          {
            break;
          }

          if (v16)
          {
            [NSString stringWithFormat:@"MFi40Accessory-Compressed-Intermediate-%d", v16];
          }

          else
          {
            [NSString stringWithFormat:@"MFi40Accessory-Compressed-Certificate", v49];
          }
          v25 = ;
          acc_platform_packetLogging_logData(v24, v25, @"AccAuth", [NSData dataWithBytes:v17[6] length:*(v17 + 14)], 1);
          if (*v17 && *(v17 + 2) >= 0x191u)
          {
            if (v16)
            {
              [NSString stringWithFormat:@"MFi40Accessory-Intermediate-%d", v16];
            }

            else
            {
              [NSString stringWithFormat:@"MFi40Accessory-Certificate", v49];
            }
            v39 = ;

            v25 = v39;
            v22 = &kACCExternalAccessoryProtocolFirmwareVersionPendingKey_ptr;
            goto LABEL_62;
          }

LABEL_63:

          v31 = [v22[219] dataWithBytes:*v17 length:*(v17 + 2)];
          if (!v31)
          {
            v3 = 0;
            goto LABEL_94;
          }

          v32 = v31;
          v33 = gLogObjects;
          v34 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 55)
          {
            v35 = *(gLogObjects + 432);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v52 = v33;
              *&v52[8] = 1024;
              *v53 = v34;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v36 = &_os_log_default;
            v35 = &_os_log_default;
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v37 = [v32 length];
            v38 = [v32 bytes];
            *buf = 67109634;
            *v52 = v16;
            *&v52[4] = 1040;
            *&v52[6] = v37;
            *v53 = 2098;
            *&v53[2] = v38;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[AccAuth] _validateCertificateChain: [%d] certificateData: \n<%{public,coreacc:bytes}.*P>", buf, 0x18u);
          }

          [v5 addObject:v32];
          ++v16;
          v17 += 11;
          if (v16 >= *v9)
          {
            goto LABEL_76;
          }
        }

        if (*v17 && *(v17 + 2) <= 0x190u)
        {
          if (v16)
          {
            [NSString stringWithFormat:@"MFi40Accessory-Compressed-Intermediate-%d", v16];
            v25 = LABEL_61:;
LABEL_62:
            acc_platform_packetLogging_logData(v24, v25, @"AccAuth", [v22[219] dataWithBytes:*v17 length:*(v17 + 2)], 1);
            goto LABEL_63;
          }

          v26 = @"MFi40Accessory-Compressed-Certificate";
        }

        else
        {
          if (v16)
          {
            [NSString stringWithFormat:@"Accessory-Intermediate-%d", v16];
            goto LABEL_61;
          }

          v26 = @"Accessory-Certificate";
        }

        [NSString stringWithFormat:v26, v49];
        goto LABEL_61;
      }

LABEL_76:
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v40 = *(gLogObjects + 432);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v40 = &_os_log_default;
        v42 = &_os_log_default;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        _acc_auth_protocol_validateCertificateChain_cold_6(v5, v40);
      }

      if ([v5 count])
      {
        v43 = +[MFAACertificateManager sharedManager];
        v50 = 0;
        v44 = [v43 validateCertificateChain:v5 realtime:0 error:&v50];
        v3 = v50;

        v4 = v44 != 1;
      }

      else
      {
LABEL_92:
        v3 = 0;
        v4 = 2;
      }
    }

    else
    {
      if (v12)
      {
        v14 = *(gLogObjects + 432);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v14 = &_os_log_default;
        v41 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _acc_auth_protocol_validateCertificateChain_cold_8((a2 + 352));
      }

      v3 = 0;
      v5 = 0;
LABEL_94:
      v4 = 12;
    }
  }

LABEL_95:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v45 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v47 = *(a2 + 352);
    }

    else
    {
      v47 = -1;
    }

    *buf = 67109376;
    *v52 = v47;
    *&v52[4] = 1024;
    *&v52[6] = v4;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "[AccAuth] _validateCertificateChain: certificateDataCount %d, errorNo %d \n", buf, 0xEu);
  }

  return v4;
}

uint64_t _acc_auth_protocol_challengeSizeForCertificate(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_15;
  }

  if (acc_auth_protocol_negotiatedMFi4Cert(a1) && *(a2 + 48))
  {
    v3 = 0;
    v4 = 16;
    goto LABEL_15;
  }

  v6 = CFDataCreate(kCFAllocatorDefault, *a2, *(a2 + 8));
  v7 = MFAACertificateAuthVersionNumber();
  v3 = v7;
  switch(v7)
  {
    case 2:
      v4 = 20;
      break;
    case 5:
      goto LABEL_12;
    case 3:
      v4 = 32;
      break;
    default:
      if (acc_auth_protocol_negotiatedMFi4Cert(a1))
      {
LABEL_12:
        v4 = 16;
      }

      else if (platform_systemInfo_isInternalBuild())
      {
        if (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth"))
        {
          v4 = 32;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }

      break;
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_15:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v8 = *(gLogObjects + 432);
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
    if (a2)
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 24);
    }

    else
    {
      v10 = -1;
      v11 = -1;
    }

    v13[0] = 67109888;
    v13[1] = v10;
    v14 = 1024;
    v15 = v11;
    v16 = 1024;
    v17 = v3;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[AccAuth] _challengeSizeForCertificate: certificateDataLen %d, certificateHashLen %d, authVerMajor %d, challengeSize %d \n", v13, 0x1Au);
  }

  return v4;
}