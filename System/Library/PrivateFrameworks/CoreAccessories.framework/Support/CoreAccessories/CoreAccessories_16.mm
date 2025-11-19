void mfi4Auth_endpoint_sendOutgoingData_cold_2()
{
  v0 = logObjectForModule_1(55);
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void mfi4Auth_endpoint_sendOutgoingData_cold_3()
{
  v0 = logObjectForModule_1(55);
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

uint64_t mfi4Auth_endpoint_sendOutgoingData_cold_4(uint64_t *a1, _BYTE *a2)
{
  result = acc_endpoint_getTransportType(*a1);
  if (result == 13)
  {
    result = acc_endpoint_setProperty(*a1, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanFalse);
  }

  *a2 = 0;
  return result;
}

void mfi4Auth_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler_cold_1()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_2()
{
  v0 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_3(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v2))
  {
    v3 = *a1;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v2))
  {
    v3 = *a1;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_5(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v2))
  {
    v3 = *a1;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

uint64_t qiAuth_endpoint_publish(uint64_t a1)
{
  v2 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v3 = *(gLogObjects + 472);
  }

  else
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_16();
      v63 = v2;
      OUTLINED_FUNCTION_4_24(&_mh_execute_header, v42, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, v54, block, v56, v57, v58, v59, buf[0]);
    }
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    OUTLINED_FUNCTION_5_22();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = *a1;
  if (!*a1 || !*(a1 + 2152) || !*(a1 + 2160))
  {
    return 0;
  }

  v10 = HIDWORD(gLogObjects);
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v12 = *(gLogObjects + 472);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v61) = v10;
      v62 = 1024;
      v63 = v11;
      OUTLINED_FUNCTION_4_24(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v54, block, v56, v57, v58, v59, 0);
      v9 = *a1;
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v9 + 24);
    *buf = 67109120;
    LODWORD(v61) = v19;
    OUTLINED_FUNCTION_5_22();
    _os_log_impl(v20, v21, v22, v23, v24, 8u);
    v9 = *a1;
  }

  if (!acc_endpoint_isPublished(v9))
  {
    goto LABEL_30;
  }

  v25 = *(a1 + 16);
  v26 = v25 ? CFStringCreateCopy(kCFAllocatorDefault, v25) : 0;
  v27 = gLogObjects;
  v28 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v29 = *(gLogObjects + 472);
  }

  else
  {
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v61 = v27;
      v62 = 1024;
      v63 = v28;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Cleaning up pQiAuthProtocol in publish", buf, 2u);
  }

  qiAuth_protocol_cleanup(*(a1 + 2040), 0, 0);
  result = qiAuth_protocol_init(*(a1 + 2040), v26, 0, 1, 1u, 1, *(a1 + 2152), *(a1 + 2160));
  if (result)
  {
LABEL_30:
    v31 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v32 = *(gLogObjects + 472);
    }

    else
    {
      v32 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_7_16();
        v63 = v31;
        OUTLINED_FUNCTION_4_24(&_mh_execute_header, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, v51, v52, v53, v54, block, v56, v57, v58, v59, buf[0]);
      }
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(*a1 + 24);
      *buf = 67109120;
      LODWORD(v61) = v33;
      OUTLINED_FUNCTION_5_22();
      _os_log_impl(v34, v35, v36, v37, v38, 8u);
    }

    dispatch_time(0, 100000000);
    v39 = *(a1 + 32);
    OUTLINED_FUNCTION_7_15();
    v56 = 0x40000000;
    v57 = __qiAuth_endpoint_publish_block_invoke;
    v58 = &__block_descriptor_tmp_4_2;
    v59 = a1;
    dispatch_after(v40, v41, &block);
    return 1;
  }

  return result;
}

BOOL qiAuth_endpoint_processIncomingData(_BOOL8 result, CFDataRef theData)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (theData)
    {
      if (v3[255])
      {
        Length = CFDataGetLength(theData);
        if (Length < 2)
        {
          return 0;
        }

        else
        {
          CFRetain(theData);
          v5 = *CFDataGetBytePtr(theData);
          acc_platform_packetLogging_logQiAuthMsg(*v3, theData, 1);
          result = qiAuth_protocol_checkValidMessageHeaderAndSize(v3[255], v5, Length);
          if (result)
          {
            v6 = v3[4];
            OUTLINED_FUNCTION_7_15();
            v9 = 0x40000000;
            v10 = __qiAuth_endpoint_processIncomingData_block_invoke;
            v11 = &__block_descriptor_tmp_8_0;
            v12 = v3;
            v13 = theData;
            v15 = v5;
            v14 = Length;
            dispatch_async(v7, block);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void qiAuth_endpoint_create_cold_1(void *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint = NULL", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void qiAuth_endpoint_create_cold_2(void *a1, void *a2)
{
  if (a1[255])
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v6 = *(gLogObjects + 472);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = 134218240;
        v15 = v4;
        v16 = 1024;
        v17 = v5;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v14, 0x12u);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up pQiAuthProtocol in create", &v14, 2u);
    }

    v7 = a1[2];
    qiAuth_protocol_cleanup(a1[255], 0, 0);
    a1[255] = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  for (i = 256; i != 260; ++i)
  {
    v9 = a1[i];
    if (v9)
    {
      dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_source_cancel(a1[i]);
      dispatch_release(a1[i]);
      a1[i] = 0;
    }
  }

  v10 = a1[4];
  if (v10)
  {
    a1[4] = 0;
    dispatch_release(v10);
  }

  else
  {
    v11 = a1[1];
    if (v11)
    {
      CFRelease(v11);
      a1[1] = 0;
    }

    v12 = a1[2];
    if (v12)
    {
      CFRelease(v12);
      a1[2] = 0;
    }

    v13 = a1[269];
    if (v13)
    {
      free(v13);
    }

    free(a1);
  }

  *a2 = 0;
}

void _qiAuth_endpoint_dispatchQueueFinalizer_cold_2()
{
  v0 = logObjectForModule_22();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v1, 2u);
  }
}

void qiAuth_endpoint_destroy_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "QiAuth Endpoint Destroy. NULL ppProtocolEndpoint!", v3, 2u);
  }

  *a1 = 0;
}

void __qiAuth_endpoint_processIncomingData_block_invoke_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  v5 = *a2;
  v6 = 136315906;
  v7 = "qiAuth_endpoint_processIncomingData_block_invoke";
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to process incoming message!!! hdr 0x%02X, (%d bytes) %@", &v6, 0x22u);
}

void _qiAuth_endpoint_handleMessage_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "dataOutBuffer not allocated", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void _qiAuth_endpoint_handleMessage_cold_3(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint = NULL", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void qiAuth_endpoint_setAuthState_cold_1(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pConnection = NULL", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void qiAuth_endpoint_setAuthState_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pEndpoint = NULL", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void qiAuth_endpoint_setAuthState_cold_3(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "Unknown AuthStatus passed in!!!!", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

uint64_t _pingHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v10 = OUTLINED_FUNCTION_8_13();
      if (iap2_feature_getFeature(v10, v11) || (v12 = OUTLINED_FUNCTION_8_13(), iap2_features_createFeature(v12, v13), v14 = OUTLINED_FUNCTION_8_13(), (result = iap2_feature_getFeature(v14, v15)) != 0))
      {
        OUTLINED_FUNCTION_13_12();
        if (v3 && v6 >= 27)
        {
          v16 = *(v3 + 208);
        }

        else
        {
          v16 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v36, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v38, v39, v40, v41, 0);
          }
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_10_5(v17, v18, v19, v20, v21);
        }

        ++*v2;
        v22 = *(v4 + 3928);
        if (v22 && *(v5 + 3936) >= 27)
        {
          v23 = *(v22 + 208);
        }

        else
        {
          v23 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v42, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, 0);
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v53 = *v2;
          OUTLINED_FUNCTION_14_3();
          _os_log_impl(v24, v25, OS_LOG_TYPE_INFO, v26, v27, 8u);
        }

        v28 = *(v4 + 3928);
        if (v28 && *(v5 + 3936) >= 27)
        {
          v29 = *(v28 + 208);
        }

        else
        {
          v29 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_10(v48, v49, v50, v51, v52);
          }
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_10_5(v30, v31, v32, v33, v34);
        }

        iAP2MsgInit(a1 + 120, 0, *(a1 + 192), 0xFFFF, 0, 0);
        memcpy(*(a1 + 144), *(a2 + 24), *(a2 + 16));
        v35 = *(a1 + 144);
        *(a1 + 152) = v35 + iAP2MsgGetMsgLen(a2);
        return iap2_sessionControl_sendOutgoingMessage(a1, a1 + 120);
      }
    }
  }

  return result;
}

uint64_t _sendPingAccHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v10 = OUTLINED_FUNCTION_8_13();
      if (iap2_feature_getFeature(v10, v11) || (v12 = OUTLINED_FUNCTION_8_13(), iap2_features_createFeature(v12, v13), v14 = OUTLINED_FUNCTION_8_13(), (result = iap2_feature_getFeature(v14, v15)) != 0))
      {
        OUTLINED_FUNCTION_13_12();
        if (v3 && v6 >= 27)
        {
          v16 = *(v3 + 208);
        }

        else
        {
          v16 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v35, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v37, v38, v39, v40, 0);
          }
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_10_5(v17, v18, v19, v20, v21);
        }

        ++*(v2 + 4);
        v22 = *(v4 + 3928);
        if (v22 && *(v5 + 3936) >= 27)
        {
          v23 = *(v22 + 208);
        }

        else
        {
          v23 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v41, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v43, v44, v45, v46, 0);
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v52 = *(v2 + 4);
          OUTLINED_FUNCTION_14_3();
          _os_log_impl(v24, v25, OS_LOG_TYPE_INFO, v26, v27, 8u);
        }

        iAP2MsgInit(a1 + 120, 5, *(a1 + 192), 0xFFFF, 0, 0);
        memcpy(*(a1 + 144), *(a2 + 24), *(a2 + 16));
        *(a1 + 152) = *(a1 + 144) + *(a2 + 16);
        iAP2MsgSetMsgID(a1 + 120, 5);
        v28 = *(v4 + 3928);
        if (v28 && *(v5 + 3936) >= 27)
        {
          v29 = *(v28 + 208);
        }

        else
        {
          v29 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_10(v47, v48, v49, v50, v51);
          }
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a1 + 120);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_10_5(v30, v31, v32, v33, v34);
        }

        return iap2_sessionControl_sendOutgoingMessage(a1, a1 + 120);
      }
    }
  }

  return result;
}

uint64_t _pingAccHandler(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Feature = iap2_feature_getFeature(a1, 0x12u);
      if (Feature || (iap2_features_createFeature(a1, 0x12u), (Feature = iap2_feature_getFeature(a1, 0x12u)) != 0))
      {
        v5 = Feature;
        if (gLogObjects && gNumLogObjects >= 27)
        {
          v6 = *(gLogObjects + 208);
        }

        else
        {
          v6 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_10(v18, v19, v20, v21, v22);
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_10_5(v7, v8, v9, v10, v11);
        }

        ++*(v5 + 8);
        if (gLogObjects && gNumLogObjects >= 27)
        {
          v12 = *(gLogObjects + 208);
        }

        else
        {
          v12 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_10(v23, v24, v25, v26, v27);
          }
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v28 = *(v5 + 8);
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v13, v14, OS_LOG_TYPE_INFO, v15, v16, 8u);
        }
      }
    }
  }

  return 0;
}

uint64_t _userNotificationHandler(void *a1, uint64_t a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 && **a1)
  {
    FirstParam = iAP2MsgGetFirstParam(a2, 0);
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 27)
    {
      v7 = *(gLogObjects + 208);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v197 = v5;
        *&v197[8] = 1024;
        v198 = v6;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      MsgID = iAP2MsgGetMsgID(a2);
      *buf = 67109120;
      *v197 = MsgID;
      OUTLINED_FUNCTION_10_5(&_mh_execute_header, v7, v11, "Received User Notification message (0x%04X)!", buf);
    }

    if (!FirstParam)
    {
      v185 = 0;
      v186 = 0;
      v190 = 0;
      v12 = 0.0;
      v184 = 1;
LABEL_51:
      Identifier = acc_userNotifications_createIdentifier(@"test", a1[1]);
      v72 = 0;
      v74 = 0;
      v73 = 0;
      v75 = ACCUNCreate(v184, 0, 0, 0, 0, 0, v185 & 1, Identifier, v12, a1[2]);
      if (Identifier)
      {
        CFRelease(Identifier);
      }

      v191[0] = _NSConcreteStackBlock;
      v191[1] = 0x40000000;
      v191[2] = ___userNotificationHandler_block_invoke;
      v191[3] = &__block_descriptor_tmp_10;
      v193 = v186 & 1;
      v191[4] = a1;
      v194 = BYTE4(v185) & 1;
      v192 = WORD2(v186);
      ACCUNManagerPresentNotification(v75, v191);
      if (v75)
      {
        CFRelease(v75);
      }

      v3 = 1;
      goto LABEL_56;
    }

    v185 = 0;
    v186 = 0;
    v189 = 0;
    v190 = 0;
    v187 = 0;
    cf = 0;
    v12 = 0.0;
    v184 = 1;
    *&v9 = 134218240;
    v182 = v9;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(FirstParam);
      if (gLogObjects)
      {
        v14 = gNumLogObjects < 27;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = OUTLINED_FUNCTION_21();
        v25 = &_os_log_default;
        if (v15)
        {
          OUTLINED_FUNCTION_9_16(v15, v16, v17, v18, v19, v20, v21, v22, v180, v181, v23);
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v24, 0x12u);
          v25 = &_os_log_default;
        }
      }

      else
      {
        v25 = *(gLogObjects + 208);
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v197 = ParamID;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
      }

      switch(ParamID)
      {
        case 0:
          v26 = OUTLINED_FUNCTION_2_29();
          DataAsU16 = iAP2MsgGetDataAsU16(v26, v27);
          if (!v195)
          {
            WORD2(v186) = DataAsU16;
            BYTE4(v185) = 1;
            break;
          }

          v123 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v123))
          {
            goto LABEL_85;
          }

          v124 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v124, v125, v126, v127, v128, v129, v130, v131, v180, v181, v182, *(&v182 + 1), v132);
          *v197 = 0;
          *&v197[4] = 1024;
          *&v197[6] = v133;
          goto LABEL_84;
        case 1:
          v38 = OUTLINED_FUNCTION_2_29();
          DataAsU8 = iAP2MsgGetDataAsU8(v38, v39);
          if (v195)
          {
            v146 = logObjectForModule_23();
            if (!OUTLINED_FUNCTION_16(v146))
            {
              goto LABEL_85;
            }

            v147 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v147, v148, v149, v150, v151, v152, v153, v154, v180, v181, v182, *(&v182 + 1), v155);
            OUTLINED_FUNCTION_0_16(v156, 1);
            goto LABEL_84;
          }

          if (DataAsU8 > 3)
          {
            v41 = 1;
          }

          else
          {
            v41 = DataAsU8;
          }

          v184 = v41;
          break;
        case 2:
          v195 = -1431655766;
          v31 = OUTLINED_FUNCTION_6_20();
          v190 = iAP2MsgCopyDataAsCFString(v31, v32);
          v111 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v111))
          {
            goto LABEL_85;
          }

          v113 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v113, v114, v115, v116, v117, v118, v119, v120, v180, v181, v182, *(&v182 + 1), v121);
          OUTLINED_FUNCTION_0_16(v122, 2);
          goto LABEL_84;
        case 3:
          v195 = -1431655766;
          v33 = OUTLINED_FUNCTION_6_20();
          v187 = iAP2MsgCopyDataAsCFString(v33, v34);
          v134 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v134))
          {
            goto LABEL_85;
          }

          v136 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v136, v137, v138, v139, v140, v141, v142, v143, v180, v181, v182, *(&v182 + 1), v144);
          OUTLINED_FUNCTION_0_16(v145, 3);
          goto LABEL_84;
        case 4:
          v195 = -1431655766;
          v29 = OUTLINED_FUNCTION_6_20();
          cf = iAP2MsgCopyDataAsCFString(v29, v30);
          v157 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v157))
          {
            goto LABEL_85;
          }

          v159 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v159, v160, v161, v162, v163, v164, v165, v166, v180, v181, v182, *(&v182 + 1), v167);
          OUTLINED_FUNCTION_0_16(v168, 4);
          goto LABEL_84;
        case 5:
          v195 = -1431655766;
          v42 = OUTLINED_FUNCTION_6_20();
          v189 = iAP2MsgCopyDataAsCFString(v42, v43);
          v88 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v88))
          {
            goto LABEL_85;
          }

          v90 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v90, v91, v92, v93, v94, v95, v96, v97, v180, v181, v182, *(&v182 + 1), v98);
          OUTLINED_FUNCTION_0_16(v99, 5);
          goto LABEL_84;
        case 6:
          v44 = OUTLINED_FUNCTION_2_29();
          DataAsBool = iAP2MsgGetDataAsBool(v44, v45);
          if (v195)
          {
            v169 = logObjectForModule_23();
            if (!OUTLINED_FUNCTION_16(v169))
            {
              goto LABEL_85;
            }

            v170 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v170, v171, v172, v173, v174, v175, v176, v177, v180, v181, v182, *(&v182 + 1), v178);
            OUTLINED_FUNCTION_0_16(v179, 6);
            goto LABEL_84;
          }

          LOBYTE(v185) = DataAsBool;
          break;
        case 7:
          v35 = OUTLINED_FUNCTION_2_29();
          v37 = iAP2MsgGetDataAsU16(v35, v36);
          if (v195)
          {
            v100 = logObjectForModule_23();
            if (!OUTLINED_FUNCTION_16(v100))
            {
              goto LABEL_85;
            }

            v101 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v101, v102, v103, v104, v105, v106, v107, v108, v180, v181, v182, *(&v182 + 1), v109);
            OUTLINED_FUNCTION_0_16(v110, 7);
LABEL_84:
            _os_log_error_impl(&_mh_execute_header, ParamID, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
            goto LABEL_85;
          }

          v12 = v37;
          break;
        case 8:
          v47 = OUTLINED_FUNCTION_2_29();
          v49 = iAP2MsgGetDataAsBool(v47, v48);
          if (v195)
          {
            v77 = logObjectForModule_23();
            if (OUTLINED_FUNCTION_16(v77))
            {
              v78 = iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_5_23(v78, v79, v80, v81, v82, v83, v84, v85, v180, v181, v182, *(&v182 + 1), v86);
              OUTLINED_FUNCTION_0_16(v87, 8);
              goto LABEL_84;
            }

LABEL_85:
            v3 = 0;
            v73 = cf;
            v72 = v189;
            v74 = v187;
LABEL_56:
            if (v190)
            {
              CFRelease(v190);
            }

            if (v74)
            {
              CFRelease(v74);
            }

            if (v73)
            {
              CFRelease(v73);
            }

            if (v72)
            {
              CFRelease(v72);
            }

            return v3;
          }

          LOBYTE(v186) = v49;
          break;
        default:
          if (gLogObjects && gNumLogObjects >= 27)
          {
            v50 = *(gLogObjects + 208);
          }

          else
          {
            v51 = OUTLINED_FUNCTION_21();
            v50 = &_os_log_default;
            if (v51)
            {
              OUTLINED_FUNCTION_9_16(v51, v52, v53, v54, v55, v56, v57, v58, v180, v181, v59);
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v70, 0x12u);
              v50 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v60 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v60, v61, v62, v63, v64, v65, v66, v67, v180, v181, v182, *(&v182 + 1), v68);
            *v197 = ParamID;
            *&v197[4] = 1024;
            *&v197[6] = v69;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
          }

          break;
      }

      FirstParam = iAP2MsgGetNextParam(a2, 0, FirstParam);
      if (!FirstParam)
      {
        goto LABEL_51;
      }
    }
  }

  return v3;
}

uint64_t _setTransportLockoutHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 27;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v31 = v6;
      *&v31[8] = 1024;
      v32 = v7;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  else
  {
    v10 = *(gLogObjects + 208);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    MsgID = iAP2MsgGetMsgID(a2);
    *buf = 67109120;
    *v31 = MsgID;
    OUTLINED_FUNCTION_10_5(&_mh_execute_header, v10, v12, "Received Set Transport Lockout message (0x%04X)!", buf);
  }

  if (!FirstParam)
  {
LABEL_31:
    acc_manager_disableLockoutForAllTransportTypes();
    return 1;
  }

  v13 = 0;
  v14 = 18;
  do
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v16 = gLogObjects;
    v17 = gNumLogObjects;
    if (gLogObjects)
    {
      v18 = gNumLogObjects < 27;
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
        *buf = 134218240;
        *v31 = v16;
        *&v31[8] = 1024;
        v32 = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v19 = &_os_log_default;
      }
    }

    else
    {
      v19 = *(gLogObjects + 208);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v31 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
    }

    if (ParamID == 1)
    {
      v23 = OUTLINED_FUNCTION_17_12();
      DataAsU32 = iAP2MsgGetDataAsU32(v23, v24);
      if (v29)
      {
        v26 = logObjectForModule_23();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *v31 = 1;
          *&v31[4] = 1024;
          *&v31[6] = v28;
LABEL_42:
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
        }

        return 0;
      }

      v13 = DataAsU32;
    }

    else
    {
      if (ParamID)
      {
        goto LABEL_29;
      }

      v20 = OUTLINED_FUNCTION_17_12();
      DataAsU8 = iAP2MsgGetDataAsU8(v20, v21);
      if (v29)
      {
        v26 = logObjectForModule_23();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *v31 = 0;
          *&v31[4] = 1024;
          *&v31[6] = v27;
          goto LABEL_42;
        }

        return 0;
      }

      v14 = DataAsU8;
    }

LABEL_29:
    FirstParam = iAP2MsgGetNextParam(a2, 0, FirstParam);
  }

  while (FirstParam);
  if (v14 == 18)
  {
    goto LABEL_31;
  }

  if (v13)
  {
    acc_manager_enableLockoutForTransportType(v14, v13);
  }

  else
  {
    acc_manager_disableLockoutForTransportType(v14);
  }

  return 1;
}

_DWORD *_createFeature_13(_DWORD *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
    if (result)
    {
      *result = 0;
      result[2] = 0;
    }
  }

  return result;
}

BOOL _destroyFeature_13(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return a1 != 0;
}

uint64_t _checkIdentificationInfo_20(uint64_t a1)
{
  result = platform_systemInfo_isInternalBuild();
  if (result)
  {
    v5 = 0;
    result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgTestList, 5u, &v5);
    if (v5 == 1 && result == 0)
    {
      v4 = OUTLINED_FUNCTION_8_13();
      iap2_identification_setIdentifiedForFeature(v4);
      return 0;
    }
  }

  return result;
}

uint64_t iap2_mediaLibrary_startMediaLibraryInformationHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 21;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
      }
    }

    else
    {
      v10 = *(gLogObjects + 160);
    }

    v11 = OUTLINED_FUNCTION_66_1();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_26_7();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
    }

    v18 = OUTLINED_FUNCTION_91_0();
    if (v18)
    {
      v2 = 1;
      *v18 = 1;
      platform_mediaLibrary_requestLibraryInfoUpdate(*(a1 + 8));
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_mediaLibrary_stopMediaLibraryInformationHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 21;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
      }
    }

    else
    {
      v10 = *(gLogObjects + 160);
    }

    v11 = OUTLINED_FUNCTION_66_1();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_26_7();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
    }

    result = OUTLINED_FUNCTION_91_0();
    if (result)
    {
      *result = 0;
      return 1;
    }
  }

  return result;
}

uint64_t iap2_mediaLibrary_startMediaLibraryUpdatesHandler()
{
  result = OUTLINED_FUNCTION_88_1();
  v305 = v2;
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  if (!v1)
  {
    return result;
  }

  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 21;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v316 = v4;
      OUTLINED_FUNCTION_52_4();
      *v318 = v5;
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
    }
  }

  else
  {
    v12 = *(gLogObjects + 160);
  }

  v13 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 0;
    OUTLINED_FUNCTION_26_7();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
  }

  FirstParam = iAP2MsgGetFirstParam(v3, 0);
  v312 = 0;
  if (!FirstParam)
  {
    v25 = 0;
    v311 = 0;
    v307 = 0;
    v308 = 0;
    v306 = 0;
    v24 = 0;
    v23 = 0;
    DataAsString = 0;
LABEL_97:
    v163 = gLogObjects;
    v164 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 21)
    {
      v165 = *(gLogObjects + 160);
      v166 = DataAsString;
    }

    else
    {
      v165 = &_os_log_default;
      v166 = DataAsString;
      if (OUTLINED_FUNCTION_19_0())
      {
        *buf = 134218240;
        v316 = v163;
        OUTLINED_FUNCTION_52_4();
        *v318 = v164;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v205, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_95())
    {
      v167 = "(nil)";
      *buf = 134219010;
      v168 = v308;
      if (!v308)
      {
        v168 = "(nil)";
      }

      v316 = v23;
      v317 = 2048;
      if (v166)
      {
        v167 = v166;
      }

      *v318 = v24;
      *&v318[8] = 2048;
      *v319 = v25;
      *&v319[8] = 2080;
      *&v319[10] = v168;
      *v320 = 2080;
      *&v320[2] = v167;
      _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_INFO, "StartMediaLibraryUpdates: mediaItemProperties=%llxh playlistProperties=%llxh playlistContentMediaItemProperties=%llxh lastRevision=%s libraryUID=%s", buf, 0x34u);
    }

    if (!v166)
    {
      return 0;
    }

    result = _iap2_mediaLibrary_findMediaLibraryForUID(v305, v166);
    if (result)
    {
      *result = 1;
      *(result + 136) = v23;
      *(result + 144) = v24;
      v169 = OUTLINED_FUNCTION_91_0();
      if (v169)
      {
        v171 = *(v169 + 48);
        if (v171)
        {
          v303 = v25;
          v310 = v169;
          if (v171 < 1)
          {
            v176 = 0;
            v175 = 0;
            v174 = 0;
            v173 = 0;
          }

          else
          {
            v172 = 0;
            LODWORD(v173) = 0;
            v174 = 0;
            v175 = 0;
            v176 = 0;
            *&v170 = 134218240;
            v298 = v170;
            *&v170 = 138414594;
            v301 = v170;
            do
            {
              v177 = *(*(v169 + 40) + 8 * v172);
              v313 = 0;
              v314 = 0;
              _calcWindowSize(v305, v177, &v314 + 1, &v314, &v313 + 1, &v313);
              v178 = gLogObjects;
              v179 = gNumLogObjects;
              if (gLogObjects)
              {
                v180 = gNumLogObjects < 31;
              }

              else
              {
                v180 = 1;
              }

              if (v180)
              {
                v185 = &_os_log_default;
                if (OUTLINED_FUNCTION_59())
                {
                  *buf = v298;
                  v316 = v178;
                  OUTLINED_FUNCTION_52_4();
                  *v318 = v179;
                  OUTLINED_FUNCTION_36_3();
                  _os_log_error_impl(v181, v182, v183, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v184, 0x12u);
                }
              }

              else
              {
                v185 = *(gLogObjects + 240);
              }

              v186 = os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT);
              if (v186)
              {
                v194 = *(v305 + 8);
                OUTLINED_FUNCTION_59_4(v186, v187, v188, v189, v190, v191, v192, v193, v295, v296, v298, *(&v298 + 1), v301);
                v316 = v195;
                v317 = 2080;
                *v318 = v196;
                *&v318[8] = 1024;
                *v319 = v173;
                *&v319[4] = 1024;
                *&v319[6] = v197;
                *&v319[10] = 1024;
                *&v319[12] = v174;
                *&v319[16] = 1024;
                *v320 = v198;
                *&v320[4] = 1024;
                *&v320[6] = v175;
                v321 = 1024;
                v322 = v199;
                v323 = 1024;
                v324 = v176;
                v325 = 1024;
                v326 = v200;
                _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "iAP2MediaLibrary _recalcWindowSize: %@ - %s, window=%d->%d recordsPerMessage=%d->%d maxUpdateMessagesInFlight=%d->%d maxUpdateMessagesPendingSend=%d->%d", buf, 0x46u);
              }

              if (v173 <= HIDWORD(v314))
              {
                v201 = HIDWORD(v314);
              }

              else
              {
                v201 = v173;
              }

              if (HIDWORD(v314))
              {
                v173 = v201;
              }

              else
              {
                v173 = v173;
              }

              if (v174 <= v314)
              {
                v202 = v314;
              }

              else
              {
                v202 = v174;
              }

              if (v314)
              {
                v174 = v202;
              }

              if (v175 <= HIDWORD(v313))
              {
                v203 = HIDWORD(v313);
              }

              else
              {
                v203 = v175;
              }

              if (HIDWORD(v313))
              {
                v175 = v203;
              }

              if (v176 <= v313)
              {
                v204 = v313;
              }

              else
              {
                v204 = v176;
              }

              if (v313)
              {
                v176 = v204;
              }

              ++v172;
              v169 = v310;
            }

            while (v172 < v310[12]);
          }

          v206 = gLogObjects;
          v207 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 31)
          {
            v208 = *(gLogObjects + 240);
          }

          else
          {
            v208 = &_os_log_default;
            if (OUTLINED_FUNCTION_59())
            {
              *buf = 134218240;
              v316 = v206;
              OUTLINED_FUNCTION_52_4();
              *v318 = v207;
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v245, v246, v247, v248, v249, 0x12u);
            }
          }

          if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
          {
            v209 = *(v305 + 8);
            v210 = v310[1];
            v211 = v310[2];
            v212 = v310[3];
            *buf = 138413826;
            v316 = v209;
            OUTLINED_FUNCTION_52_4();
            *v318 = v213;
            *&v318[4] = v214;
            *&v318[6] = v173;
            *v319 = v214;
            *&v319[2] = v215;
            *&v319[6] = v214;
            *&v319[8] = v174;
            *&v319[12] = v214;
            *&v319[14] = v216;
            *v320 = v214;
            *&v320[2] = v175;
            _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "iAP2MediaLibrary _recalcWindowSize: %@, for all library: window=%d->%d recordsPerMessage=%d->%d maxUpdateMessagesInFlight=%d->%d", buf, 0x30u);
          }

          if (v174 && v310[2] != v174)
          {
            v310[2] = v174;
          }

          v25 = v303;
          if (v175 && v310[3] != v175)
          {
            v310[3] = v175;
          }

          if (v176 && v310[4] != v176)
          {
            v310[4] = v176;
          }

          if (v173 && v310[1] != v173)
          {
            v310[1] = v173;
            platform_mediaLibrary_accessoryUpdate(*(v305 + 8), v173);
          }
        }
      }

      v217 = OUTLINED_FUNCTION_80_1(kCFAllocatorDefault, DataAsString);
      if (v308)
      {
        v218 = OUTLINED_FUNCTION_80_1(kCFAllocatorDefault, v308);
      }

      else
      {
        v218 = 0;
      }

      platform_mediaLibrary_startMediaLibraryUpdate(*(v305 + 8), v217, v218, v23, v24, v306 & 1, v307 & 1, BYTE4(v307) & 1, v311, v25);
      if (v217)
      {
        CFRelease(v217);
      }

      if (v218)
      {
        CFRelease(v218);
      }

      return 1;
    }

    return result;
  }

  v22 = FirstParam;
  v308 = 0;
  DataAsString = 0;
  v23 = 0;
  v24 = 0;
  v306 = 0;
  v307 = 0;
  v311 = 0;
  v25 = 0;
  *&v21 = 134218240;
  v302 = v21;
  *&v21 = 67109376;
  v300 = v21;
  *&v21 = 67109632;
  v304 = v21;
  v26 = 168820735;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(v22);
    switch(ParamID)
    {
      case 0:
        DataAsString = iAP2MsgGetDataAsString(v22, &v312);
        if (!v312)
        {
          goto LABEL_94;
        }

        v250 = logObjectForModule_24(30);
        result = OUTLINED_FUNCTION_16(v250);
        if (result)
        {
          MsgID = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(MsgID, v252, v253, v254, v255, v256, v257, v258, v295, v296, v297, v299, v300);
          LODWORD(v316) = 0;
          OUTLINED_FUNCTION_21_6();
          goto LABEL_196;
        }

        return result;
      case 1:
        v133 = iAP2MsgGetDataAsString(v22, &v312);
        if (!v312)
        {
          v308 = v133;
          goto LABEL_94;
        }

        v268 = logObjectForModule_24(30);
        result = OUTLINED_FUNCTION_16(v268);
        if (result)
        {
          v269 = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(v269, v270, v271, v272, v273, v274, v275, v276, v295, v296, v297, v299, v300);
          LODWORD(v316) = 1;
          OUTLINED_FUNCTION_21_6();
          goto LABEL_196;
        }

        return result;
      case 2:
        v29 = OUTLINED_FUNCTION_72_2();
        v31 = iAP2MsgGetFirstParam(v29, v30);
        if (!v31)
        {
          goto LABEL_94;
        }

        NextParam = v31;
        while (2)
        {
          v33 = iAP2MsgGetParamID(NextParam);
          v34 = v33;
          if (v33 <= 0x1B && ((1 << v33) & v26) != 0)
          {
            iAP2MsgIsDataVoid(NextParam);
            OUTLINED_FUNCTION_61_0();
            if ((v35 & 1) == 0)
            {
              v219 = logObjectForModule_24(30);
              result = OUTLINED_FUNCTION_16(v219);
              if (result)
              {
                goto LABEL_177;
              }

              return result;
            }

            v23 |= 1 << _convertiAP2ToACCItemProperty__itemPropertyLookup[v34];
          }

          else
          {
            v23 = v24;
            v24 = v25;
            v26 = gNumLogObjects;
            if (gLogObjects)
            {
              v38 = gNumLogObjects < 31;
            }

            else
            {
              v38 = 1;
            }

            if (v38)
            {
              v25 = &_os_log_default;
              v39 = OUTLINED_FUNCTION_59();
              if (v39)
              {
                OUTLINED_FUNCTION_6_21(v39, v40, v41, v42, v43, v44, v45, v46, v295, v296, v297, v299, v300, *(&v300 + 1), v302);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v47, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, 0x12u);
              }
            }

            else
            {
              v25 = *(gLogObjects + 240);
            }

            if (OUTLINED_FUNCTION_59())
            {
              v51 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_11_12(v51, v52, v53, v54, v55, v56, v57, v58, v295, v296, v297, v299, v300, *(&v300 + 1), v302, *(&v302 + 1), v304);
              OUTLINED_FUNCTION_15_15();
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v59, v60, v61, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v62, 0x14u);
            }

            OUTLINED_FUNCTION_47_3();
          }

          v36 = OUTLINED_FUNCTION_72_2();
          NextParam = iAP2MsgGetNextParam(v36, v37, NextParam);
          if (!NextParam)
          {
            goto LABEL_94;
          }

          continue;
        }

      case 3:
        v63 = OUTLINED_FUNCTION_72_2();
        v65 = iAP2MsgGetFirstParam(v63, v64);
        if (!v65)
        {
          goto LABEL_94;
        }

        v66 = v65;
        while (2)
        {
          v67 = iAP2MsgGetParamID(v66);
          v68 = v67;
          if (v67 > 8)
          {
            v23 = v24;
            v24 = v25;
            v26 = gNumLogObjects;
            if (gLogObjects)
            {
              v72 = gNumLogObjects < 31;
            }

            else
            {
              v72 = 1;
            }

            if (v72)
            {
              v25 = &_os_log_default;
              v73 = OUTLINED_FUNCTION_59();
              if (v73)
              {
                OUTLINED_FUNCTION_6_21(v73, v74, v75, v76, v77, v78, v79, v80, v295, v296, v297, v299, v300, *(&v300 + 1), v302);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v81, v82, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v84, 0x12u);
              }
            }

            else
            {
              v25 = *(gLogObjects + 240);
            }

            if (OUTLINED_FUNCTION_59())
            {
              v87 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_9_17(v87, v88, v89, v90, v91, v92, v93, v94, v295, v296, v297, v299, v300, *(&v300 + 1), v302, *(&v302 + 1), v304);
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v95, v96, v97, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v98, 0x14u);
            }

            OUTLINED_FUNCTION_47_3();
          }

          else
          {
            if (((1 << v67) & 0x15F) != 0)
            {
              iAP2MsgIsDataVoid(v66);
              OUTLINED_FUNCTION_61_0();
              if (v69)
              {
                v24 |= 1 << _convertiAP2ToACCPlaylistProperty__playlistPropertyLookup[v68];
                goto LABEL_58;
              }

              v231 = logObjectForModule_24(30);
              result = OUTLINED_FUNCTION_16(v231);
              if (!result)
              {
                return result;
              }

LABEL_183:
              v233 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_9_17(v233, v234, v235, v236, v237, v238, v239, v240, v295, v296, v297, v299, v300, *(&v300 + 1), v302, *(&v302 + 1), v304);
              v228 = &_mh_execute_header;
              v229 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_184;
            }

            if (v67 == 5)
            {
              v70 = 1;
            }

            else
            {
              v70 = 2;
            }

            iAP2MsgIsDataVoid(v66);
            OUTLINED_FUNCTION_61_0();
            if ((v71 & 1) == 0)
            {
              v232 = logObjectForModule_24(30);
              result = OUTLINED_FUNCTION_16(v232);
              if (!result)
              {
                return result;
              }

              goto LABEL_183;
            }

            v311 |= v70;
            v24 |= 0x20uLL;
          }

LABEL_58:
          v85 = OUTLINED_FUNCTION_72_2();
          v66 = iAP2MsgGetNextParam(v85, v86, v66);
          if (!v66)
          {
            goto LABEL_94;
          }

          continue;
        }

      case 4:
        iAP2MsgIsDataVoid(v22);
        OUTLINED_FUNCTION_61_0();
        if ((v28 & 1) == 0)
        {
          v259 = logObjectForModule_24(30);
          result = OUTLINED_FUNCTION_16(v259);
          if (result)
          {
            v260 = iAP2MsgGetMsgID(v3);
            OUTLINED_FUNCTION_59_4(v260, v261, v262, v263, v264, v265, v266, v267, v295, v296, v297, v299, v300);
            LODWORD(v316) = 4;
            OUTLINED_FUNCTION_21_6();
            goto LABEL_196;
          }

          return result;
        }

        v306 = 1;
        goto LABEL_94;
      case 5:
        iAP2MsgIsDataVoid(v22);
        OUTLINED_FUNCTION_61_0();
        if ((v134 & 1) == 0)
        {
          v277 = logObjectForModule_24(30);
          result = OUTLINED_FUNCTION_16(v277);
          if (result)
          {
            v278 = iAP2MsgGetMsgID(v3);
            OUTLINED_FUNCTION_59_4(v278, v279, v280, v281, v282, v283, v284, v285, v295, v296, v297, v299, v300);
            LODWORD(v316) = 5;
            OUTLINED_FUNCTION_21_6();
            goto LABEL_196;
          }

          return result;
        }

        LOBYTE(v307) = 1;
        goto LABEL_94;
      case 6:
        iAP2MsgIsDataVoid(v22);
        OUTLINED_FUNCTION_61_0();
        if (v135)
        {
          BYTE4(v307) = 1;
LABEL_94:
          v22 = iAP2MsgGetNextParam(v3, 0, v22);
          if (!v22)
          {
            goto LABEL_97;
          }

          continue;
        }

        v286 = logObjectForModule_24(30);
        result = OUTLINED_FUNCTION_16(v286);
        if (result)
        {
          v287 = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v299, v300);
          LODWORD(v316) = 6;
          OUTLINED_FUNCTION_21_6();
LABEL_196:
          OUTLINED_FUNCTION_19_9();
LABEL_185:
          _os_log_error_impl(v228, v242, v243, v229, v241, v244);
          return 0;
        }

        return result;
      case 7:
        v99 = OUTLINED_FUNCTION_72_2();
        v101 = iAP2MsgGetFirstParam(v99, v100);
        if (!v101)
        {
          goto LABEL_94;
        }

        v102 = v101;
        while (2)
        {
          v103 = iAP2MsgGetParamID(v102);
          v104 = v103;
          if (v103 <= 0x12 && ((1 << v103) & 0x55043) != 0)
          {
            iAP2MsgIsDataVoid(v102);
            OUTLINED_FUNCTION_61_0();
            if ((v105 & 1) == 0)
            {
              v230 = logObjectForModule_24(30);
              result = OUTLINED_FUNCTION_16(v230);
              if (result)
              {
LABEL_177:
                v220 = iAP2MsgGetMsgID(v3);
                OUTLINED_FUNCTION_11_12(v220, v221, v222, v223, v224, v225, v226, v227, v295, v296, v297, v299, v300, *(&v300 + 1), v302, *(&v302 + 1), v304);
                OUTLINED_FUNCTION_15_15();
                v228 = &_mh_execute_header;
                v229 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_184:
                v241 = buf;
                v242 = 1;
                v243 = OS_LOG_TYPE_ERROR;
                v244 = 20;
                goto LABEL_185;
              }

              return result;
            }

            v25 |= 1 << _convertiAP2ToACCPlaylistContentItemProperty__itemPropertyLookup[v104];
          }

          else
          {
            v23 = v24;
            v24 = v25;
            v26 = gNumLogObjects;
            if (gLogObjects)
            {
              v108 = gNumLogObjects < 31;
            }

            else
            {
              v108 = 1;
            }

            if (v108)
            {
              v25 = &_os_log_default;
              v109 = OUTLINED_FUNCTION_59();
              if (v109)
              {
                OUTLINED_FUNCTION_6_21(v109, v110, v111, v112, v113, v114, v115, v116, v295, v296, v297, v299, v300, *(&v300 + 1), v302);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v117, v118, v119, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v120, 0x12u);
              }
            }

            else
            {
              v25 = *(gLogObjects + 240);
            }

            if (OUTLINED_FUNCTION_59())
            {
              v121 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_11_12(v121, v122, v123, v124, v125, v126, v127, v128, v295, v296, v297, v299, v300, *(&v300 + 1), v302, *(&v302 + 1), v304);
              OUTLINED_FUNCTION_15_15();
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v129, v130, v131, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v132, 0x14u);
            }

            OUTLINED_FUNCTION_47_3();
          }

          v106 = OUTLINED_FUNCTION_72_2();
          v102 = iAP2MsgGetNextParam(v106, v107, v102);
          if (!v102)
          {
            goto LABEL_94;
          }

          continue;
        }

      default:
        v136 = v25;
        if (gLogObjects)
        {
          v137 = gNumLogObjects < 31;
        }

        else
        {
          v137 = 1;
        }

        if (v137)
        {
          v138 = OUTLINED_FUNCTION_59();
          if (v138)
          {
            OUTLINED_FUNCTION_6_21(v138, v139, v140, v141, v142, v143, v144, v145, v295, v296, v297, v299, v300, *(&v300 + 1), v302);
            OUTLINED_FUNCTION_36_3();
            _os_log_error_impl(v146, v147, v148, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v149, 0x12u);
          }
        }

        else
        {
          v150 = *(gLogObjects + 240);
        }

        if (OUTLINED_FUNCTION_59())
        {
          v151 = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(v151, v152, v153, v154, v155, v156, v157, v158, v295, v296, v297, v299, v300);
          LODWORD(v316) = ParamID;
          OUTLINED_FUNCTION_21_6();
          OUTLINED_FUNCTION_36_3();
          _os_log_error_impl(v159, v160, v161, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v162, 0xEu);
        }

        v25 = v136;
        v26 = 168820735;
        goto LABEL_94;
    }
  }
}

uint64_t _iap2_mediaLibrary_findMediaLibraryForUID(uint64_t a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 0xDu);
    if (Feature && (v5 = *(Feature + 48), v5 >= 1))
    {
      for (i = *(Feature + 40); ; ++i)
      {
        v2 = *i;
        if (!strncmp((*i + 65), a2, 0x40uLL))
        {
          break;
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_mediaLibrary_playMediaLibraryCurrentSelectionHandler()
{
  result = OUTLINED_FUNCTION_88_1();
  if (v8)
  {
    v9 = v7;
    if (v7)
    {
      OUTLINED_FUNCTION_85_2();
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v1 < 21;
      }

      v74 = v10;
      if (v12)
      {
        if (OUTLINED_FUNCTION_17())
        {
          *buf = 134218240;
          v77 = v0;
          OUTLINED_FUNCTION_34_2();
          v78 = v1;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      else
      {
        v15 = *(v0 + 160);
      }

      if (OUTLINED_FUNCTION_82())
      {
        *buf = 0;
        OUTLINED_FUNCTION_33_5();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
      }

      v21 = OUTLINED_FUNCTION_22();
      FirstParam = iAP2MsgGetFirstParam(v21, v22);
      if (FirstParam)
      {
        NextParam = FirstParam;
        v26 = 0;
        *&v24 = 134218240;
        v72 = v24;
        *&v24 = 67109376;
        v73 = v24;
        while (1)
        {
          if (iAP2MsgGetParamID(NextParam))
          {
            OUTLINED_FUNCTION_105_0();
            if (v11)
            {
              v27 = 1;
            }

            else
            {
              v27 = v2 < 31;
            }

            if (v27)
            {
              v29 = &_os_log_default;
              if (OUTLINED_FUNCTION_18())
              {
                *buf = v72;
                v77 = &off_1001C3000;
                OUTLINED_FUNCTION_34_2();
                v78 = v2;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v29 = &_os_log_default;
              }
            }

            else
            {
              v29 = 0x5BA6A0007ECC8;
            }

            if (OUTLINED_FUNCTION_114())
            {
              MsgID = iAP2MsgGetMsgID(v9);
              OUTLINED_FUNCTION_57_5(MsgID, v33, v34, v35, v36, v37, v38, v39, v72, *(&v72 + 1), v73);
              LODWORD(v77) = v5;
              OUTLINED_FUNCTION_10_2();
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
            }
          }

          else
          {
            v75 = -1431655766;
            DataAsString = iAP2MsgGetDataAsString(NextParam, &v75);
            if (v75)
            {
              v57 = logObjectForModule_24(30);
              if (OUTLINED_FUNCTION_16(v57))
              {
                v58 = iAP2MsgGetMsgID(v9);
                OUTLINED_FUNCTION_57_5(v58, v59, v60, v61, v62, v63, v64, v65, v72, *(&v72 + 1), v73);
                LODWORD(v77) = 0;
                OUTLINED_FUNCTION_10_2();
                OUTLINED_FUNCTION_19_9();
                _os_log_error_impl(v66, v67, v68, v69, v70, v71);
              }

              return 0;
            }

            v26 = DataAsString;
          }

          v30 = OUTLINED_FUNCTION_22();
          NextParam = iAP2MsgGetNextParam(v30, v31, NextParam);
          if (!NextParam)
          {
            goto LABEL_29;
          }
        }
      }

      v26 = 0;
LABEL_29:
      v40 = *(v3 + 3928);
      v41 = *(v4 + 3936);
      if (v40 && v41 >= 21)
      {
        v42 = *(v40 + 160);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        v77 = v40;
        OUTLINED_FUNCTION_34_2();
        v78 = v41;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v52, v53, v54, v55, v56, 0x12u);
      }

      v43 = OUTLINED_FUNCTION_66_1();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = "(nil)";
        if (v26)
        {
          v45 = v26;
        }

        *buf = 136315138;
        v77 = v45;
        OUTLINED_FUNCTION_26_7();
        _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      }

      if (v26)
      {
        v51 = OUTLINED_FUNCTION_80_1(kCFAllocatorDefault, v26);
        platform_mediaLibrary_playCurrentSelection(*(v74 + 8), v51);
        if (v51)
        {
          CFRelease(v51);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t iap2_mediaLibrary_infoUpdateHandler(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = 0;
  if (!a2)
  {
    return result;
  }

  v164 = *(v3 + 8);
  if (!v164)
  {
    return result;
  }

  if (*a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  v161 = a2;
  v6 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v7 = *(gLogObjects + 240);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_3_5();
    *v170 = v6;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v151, v152, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_82())
  {
    v8 = *(a2 + 8);
    *buf = 138412802;
    if (v8)
    {
      v9 = ".";
    }

    else
    {
      v9 = "nil ";
    }

    v168 = v164;
    v169 = 2080;
    *v170 = v9;
    *&v170[8] = 2048;
    *&v170[10] = Count;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  result = iap2_feature_getFeature(v3, 0xDu);
  if (!result)
  {
    return result;
  }

  if (*result != 1)
  {
    return 0;
  }

  v165 = result;
  v162 = v3;
  v15 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v16 = *(gLogObjects + 240);
    v17 = a2;
  }

  else
  {
    v17 = a2;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_3_5();
      *v170 = v15;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v153, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_93_2())
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_83_2();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
  }

  if (Count >= 1)
  {
    v24 = 0;
    key = @"ACCMediaLibraryNameKey";
    v158 = @"ACCMediaLibraryUIDKey";
    *&v18 = 134218240;
    v160 = v18;
    *&v18 = 138412546;
    v163 = v18;
    *&v18 = 138413314;
    v157 = v18;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v17 + 8), v24);
      Value = CFDictionaryGetValue(ValueAtIndex, @"ACCMediaLibraryTypeKey");
      valuePtr = 4;
      if (!Value)
      {
        break;
      }

      if (CFNumberGetValue(Value, kCFNumberCharType, &valuePtr))
      {
        goto LABEL_43;
      }

      v27 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 31)
      {
        v28 = *(gLogObjects + 240);
      }

      else if (OUTLINED_FUNCTION_75())
      {
        OUTLINED_FUNCTION_3_5();
        *v170 = v27;
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v70, v71, v72, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v73, 0x12u);
      }

      v46 = OUTLINED_FUNCTION_75();
      if (v46)
      {
        OUTLINED_FUNCTION_4_25(v46, v47, v48, v49, v50, v51, v52, v53, v157, *(&v157 + 1), v158, key, v160, *(&v160 + 1), v161, v162, v163);
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v66, v67, v68, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: failed to get type from typeObj! entry=%@", v69, 0x16u);
      }

LABEL_51:
      if (Count == ++v24)
      {
        for (i = 0; i != Count; ++i)
        {
          v75 = CFArrayGetValueAtIndex(*(v17 + 8), i);
          v76 = CFDictionaryGetValue(v75, @"ACCMediaLibraryTypeKey");
          valuePtr = 4;
          if (v76)
          {
            if (!CFNumberGetValue(v76, kCFNumberCharType, &valuePtr))
            {
              v77 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 31)
              {
                v78 = *(gLogObjects + 240);
              }

              else if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_3_5();
                *v170 = v77;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v120, v121, v122, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v123, 0x12u);
              }

              v98 = OUTLINED_FUNCTION_11();
              if (v98)
              {
                OUTLINED_FUNCTION_4_25(v98, v99, v100, v101, v102, v103, v104, v105, v157, *(&v157 + 1), v158, key, v160, *(&v160 + 1), v161, v162, v163);
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v116, v117, v118, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: failed to get type from typeObj! entry=%@", v119, 0x16u);
              }

              valuePtr = 4;
            }
          }

          else
          {
            v79 = gNumLogObjects;
            if (gLogObjects)
            {
              v80 = gNumLogObjects < 31;
            }

            else
            {
              v80 = 1;
            }

            if (v80)
            {
              if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_3_5();
                *v170 = v79;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v81, v82, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v84, 0x12u);
              }
            }

            else
            {
              v85 = *(gLogObjects + 240);
            }

            v86 = OUTLINED_FUNCTION_11();
            if (v86)
            {
              OUTLINED_FUNCTION_4_25(v86, v87, v88, v89, v90, v91, v92, v93, v157, *(&v157 + 1), v158, key, v160, *(&v160 + 1), v161, v162, v163);
              OUTLINED_FUNCTION_10_6();
              _os_log_error_impl(v94, v95, v96, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: no Type object in libraryDictionary! entry=%@", v97, 0x16u);
            }
          }

          if ((valuePtr & 0xFFFFFFFB) != 0)
          {
            v106 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v107 = *(gLogObjects + 240);
            }

            else
            {
              v107 = &_os_log_default;
              if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_3_5();
                *v170 = v106;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v108, v109, v110, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v111, 0x12u);
              }
            }

            if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
            {
              v112 = CFDictionaryGetValue(v75, key);
              v113 = CFDictionaryGetValue(v75, v158);
              CFDictionaryGetValue(v75, @"ACCMediaLibraryTypeKey");
              OUTLINED_FUNCTION_12_13();
              OUTLINED_FUNCTION_86_2();
              *&v170[10] = v112;
              *&v170[18] = v114;
              *&v170[20] = v113;
              *&v170[28] = v114;
              v171 = v115;
              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "iap2_mediaLibrary_infoUpdateHandler %@ i=%ld addUpdateLibrary name=%@ uid=%@ type=%@", buf, 0x34u);
            }

            iap2_mediaLibrary_addUpdateLibrary(v162, v75);
          }
        }

        goto LABEL_88;
      }
    }

    v29 = gNumLogObjects;
    if (gLogObjects)
    {
      v30 = gNumLogObjects < 31;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      if (OUTLINED_FUNCTION_75())
      {
        OUTLINED_FUNCTION_3_5();
        *v170 = v29;
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v31, v32, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34, 0x12u);
      }
    }

    else
    {
      v35 = *(gLogObjects + 240);
    }

    v36 = OUTLINED_FUNCTION_75();
    if (v36)
    {
      OUTLINED_FUNCTION_4_25(v36, v37, v38, v39, v40, v41, v42, v43, v157, *(&v157 + 1), v158, key, v160, *(&v160 + 1), v161, v162, v163);
      OUTLINED_FUNCTION_39_5();
      _os_log_error_impl(v62, v63, v64, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: no Type object in libraryDictionary! entry=%@", v65, 0x16u);
    }

LABEL_43:
    if (!valuePtr)
    {
      v44 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 31)
      {
        v45 = *(gLogObjects + 240);
      }

      else
      {
        v45 = &_os_log_default;
        if (OUTLINED_FUNCTION_75())
        {
          OUTLINED_FUNCTION_3_5();
          *v170 = v44;
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v54, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v57, 0x12u);
        }
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v58 = CFDictionaryGetValue(ValueAtIndex, key);
        v59 = CFDictionaryGetValue(ValueAtIndex, v158);
        CFDictionaryGetValue(ValueAtIndex, @"ACCMediaLibraryTypeKey");
        OUTLINED_FUNCTION_12_13();
        OUTLINED_FUNCTION_86_2();
        *&v170[10] = v58;
        *&v170[18] = v60;
        *&v170[20] = v59;
        *&v170[28] = v60;
        v171 = v61;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "iap2_mediaLibrary_infoUpdateHandler %@ i=%ld addUpdateLibrary name=%@ uid=%@ type=%@", buf, 0x34u);
      }

      iap2_mediaLibrary_addUpdateLibrary(v162, ValueAtIndex);
    }

    goto LABEL_51;
  }

LABEL_88:
  v124 = iAP2MsgInit(v162 + 120, 19457, *(v162 + 192), 0xFFFF, 0, 0);
  v125 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v126 = *(gLogObjects + 240);
    v127 = v165;
  }

  else
  {
    v127 = v165;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_3_5();
      *v170 = v125;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v154, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_93_2())
  {
    v128 = *(v127 + 48);
    *buf = 138412546;
    v168 = v164;
    v169 = 1024;
    *v170 = v128;
    OUTLINED_FUNCTION_83_2();
    _os_log_impl(v129, v130, v131, v132, v133, 0x12u);
  }

  if (*(v127 + 48) >= 1)
  {
    v134 = 0;
    do
    {
      v135 = *(*(v127 + 40) + 8 * v134);
      v136 = iAP2MsgAddGroupParam(v124, 0);
      v137 = gLogObjects;
      v138 = gNumLogObjects;
      if (gLogObjects)
      {
        v139 = gNumLogObjects < 31;
      }

      else
      {
        v139 = 1;
      }

      if (v139)
      {
        v140 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          *buf = 134218240;
          v168 = v137;
          v169 = 1024;
          *v170 = v138;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v140 = &_os_log_default;
        }
      }

      else
      {
        v140 = *(gLogObjects + 240);
      }

      if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
      {
        v141 = *(v135 + 33);
        *buf = 138413314;
        v168 = v164;
        v169 = 1024;
        *v170 = v134;
        *&v170[4] = 2080;
        *&v170[6] = v135 + 1;
        *&v170[14] = 2080;
        *&v170[16] = v135 + 65;
        *&v170[24] = 1024;
        *&v170[26] = v141;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_INFO, "iap2_mediaLibrary_infoUpdateHandler %@ index=%d name=%s uid=%s type=%d", buf, 0x2Cu);
      }

      iAP2MsgAddStringParam(v124, v136, 0, v135 + 1);
      iAP2MsgAddStringParam(v124, v136, 1, v135 + 65);
      iAP2MsgAddU8Param(v124, v136, 2, v135[132]);
      ++v134;
      v127 = v165;
    }

    while (v134 < *(v165 + 48));
  }

  v142 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v143 = *(gLogObjects + 240);
    v144 = v162;
  }

  else
  {
    v144 = v162;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_3_5();
      *v170 = v142;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v155, v156, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_82())
  {
    iAP2MsgGetMsgID(v124);
    OUTLINED_FUNCTION_12_13();
    v169 = 1024;
    *v170 = v145;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v146, v147, v148, v149, v150, 0x12u);
  }

  iap2_sessionControl_sendOutgoingMessage(v144, v124);
  platform_mediaLibrary_deleteParams(v161);
  return 1;
}

uint64_t iap2_mediaLibrary_addUpdateLibrary(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = 1;
  if (!a1)
  {
    return v2;
  }

  if (!theDict)
  {
    return v2;
  }

  Value = CFDictionaryGetValue(theDict, @"ACCMediaLibraryNameKey");
  v6 = CFDictionaryGetValue(theDict, @"ACCMediaLibraryUIDKey");
  v7 = CFDictionaryGetValue(theDict, @"ACCMediaLibraryTypeKey");
  valuePtr = -86;
  v2 = 1;
  if (!v6)
  {
    return v2;
  }

  if (!v7)
  {
    return v2;
  }

  CFNumberGetValue(v7, kCFNumberSInt8Type, &valuePtr);
  v8 = OUTLINED_FUNCTION_96_1(v6);
  MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(a1, v8);
  v10 = MediaLibraryForUID;
  if (!MediaLibraryForUID)
  {
    v2 = 1;
    v10 = malloc_type_calloc(1uLL, 0xC8uLL, 0x102004001C2AE80uLL);
    if (!v10)
    {
      return v2;
    }
  }

  GetCStringFromCFString(v6);
  __strlcpy_chk();
  if (Value)
  {
    GetCStringFromCFString(Value);
    __strlcpy_chk();
  }

  v10[33] = valuePtr;
  v11 = &audioProductCerts_endpoint_publish_onceToken;
  v12 = &audioProductCerts_endpoint_publish_onceToken;
  v13 = &off_1001C3000;
  if (!MediaLibraryForUID)
  {
    v14 = OUTLINED_FUNCTION_91_0();
    v2 = v14;
    if (!v14)
    {
      goto LABEL_42;
    }

    v15 = *(v14 + 52);
    if (v15 && *(v14 + 40))
    {
      if (v15 == *(v14 + 48))
      {
        v16 = 2 * v15;
        *(v14 + 52) = 2 * v15;
        v17 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 31)
        {
          v18 = *(gLogObjects + 240);
        }

        else if (OUTLINED_FUNCTION_19_0())
        {
          OUTLINED_FUNCTION_13_4();
          *v111 = v17;
          OUTLINED_FUNCTION_20_9();
          _os_log_error_impl(v97, v98, v99, v100, v101, 0x12u);
        }

        if (OUTLINED_FUNCTION_95())
        {
          v68 = *(a1 + 8);
          v69 = *(v2 + 52);
          OUTLINED_FUNCTION_23_6();
          *v111 = v70;
          *&v111[4] = v71;
          *&v111[6] = v16;
          OUTLINED_FUNCTION_48_2();
          _os_log_impl(v72, v73, OS_LOG_TYPE_INFO, v74, v75, 0x18u);
        }

        v76 = *(v2 + 40);
        OUTLINED_FUNCTION_106_0();
        v80 = malloc_type_realloc(v77, v78, v79);
        v11 = &audioProductCerts_endpoint_publish_onceToken;
        if (v80)
        {
          *(v2 + 40) = v80;
          *(v2 + 52) = v16;
          bzero(&v80[8 * *(v2 + 48)], 8 * (v16 - *(v2 + 48)));
        }

        else
        {
          v81 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 31)
          {
            v82 = *(gLogObjects + 240);
          }

          else if (OUTLINED_FUNCTION_19_0())
          {
            OUTLINED_FUNCTION_13_4();
            *v111 = v81;
            OUTLINED_FUNCTION_20_9();
            _os_log_error_impl(v102, v103, v104, v105, v106, 0x12u);
          }

          v11 = &audioProductCerts_endpoint_publish_onceToken;
          if (OUTLINED_FUNCTION_19_0())
          {
            v83 = *(a1 + 8);
            v84 = *(v2 + 52);
            OUTLINED_FUNCTION_23_6();
            *v111 = v85;
            *&v111[4] = v86;
            *&v111[6] = v16;
            OUTLINED_FUNCTION_20_9();
            _os_log_error_impl(v87, v88, v89, v90, v91, 0x18u);
          }
        }
      }

      goto LABEL_26;
    }

    *(v14 + 52) = 2;
    v19 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 31)
    {
      v20 = *(gLogObjects + 240);
    }

    else if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_13_4();
      *v111 = v19;
      OUTLINED_FUNCTION_20_9();
      _os_log_error_impl(v92, v93, v94, v95, v96, 0x12u);
      v21 = *(v2 + 52);
      goto LABEL_23;
    }

    v21 = 2;
LABEL_23:
    v11 = &audioProductCerts_endpoint_publish_onceToken;
    if (OUTLINED_FUNCTION_95())
    {
      v22 = *(a1 + 8);
      OUTLINED_FUNCTION_23_6();
      *v111 = v21;
      OUTLINED_FUNCTION_48_2();
      _os_log_impl(v23, v24, OS_LOG_TYPE_INFO, v25, v26, 0x12u);
      v27 = *(v2 + 52);
    }

    OUTLINED_FUNCTION_106_0();
    *(v2 + 40) = malloc_type_calloc(v28, 8uLL, v29);
LABEL_26:
    v30 = *(v2 + 40);
    if (v30)
    {
      v31 = *(v2 + 52);
      v12 = &audioProductCerts_endpoint_publish_onceToken;
      if (v31 < 1)
      {
LABEL_31:
        v2 = 0;
      }

      else
      {
        v32 = 0;
        while (*(v30 + 8 * v32))
        {
          if (v31 == ++v32)
          {
            goto LABEL_31;
          }
        }

        v33 = v11[491];
        v34 = gNumLogObjects;
        if (v33)
        {
          v35 = gNumLogObjects < 31;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          if (OUTLINED_FUNCTION_19_0())
          {
            OUTLINED_FUNCTION_13_4();
            *v111 = v34;
            OUTLINED_FUNCTION_20_9();
            _os_log_error_impl(v36, v37, v38, v39, v40, 0x12u);
          }
        }

        else
        {
          v41 = *(v33 + 240);
        }

        v13 = &off_1001C3000;
        if (OUTLINED_FUNCTION_95())
        {
          v42 = *(a1 + 8);
          v43 = v10[33];
          OUTLINED_FUNCTION_23_6();
          *v111 = v32;
          *&v111[4] = 2080;
          *&v111[6] = v44;
          *&v111[14] = 2080;
          *&v111[16] = v10 + 65;
          *&v111[24] = v45;
          *&v111[26] = v46;
          OUTLINED_FUNCTION_48_2();
          _os_log_impl(v47, v48, OS_LOG_TYPE_INFO, v49, v50, 0x2Cu);
        }

        *(*(v2 + 40) + 8 * v32) = v10;
        ++*(v2 + 48);
        v2 = 1;
        v12 = &audioProductCerts_endpoint_publish_onceToken;
        v11 = &audioProductCerts_endpoint_publish_onceToken;
      }
    }

    else
    {
      v2 = 0;
      v12 = &audioProductCerts_endpoint_publish_onceToken;
    }

    goto LABEL_42;
  }

  v2 = 1;
LABEL_42:
  v51 = v11[491];
  v52 = *(v12 + 984);
  if (v51)
  {
    v53 = v52 < 31;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {
    v59 = &_os_log_default;
    if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_13_4();
      *v111 = v52;
      OUTLINED_FUNCTION_20_9();
      _os_log_error_impl(v54, v55, v56, v57, v58, 0x12u);
    }
  }

  else
  {
    v59 = *(v51 + 240);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = "failed to insert";
    v61 = *(a1 + 8);
    v62 = v10[33];
    if (v2)
    {
      v60 = "inserted";
    }

    v108 = *(v13 + 79);
    v109 = v61;
    if (MediaLibraryForUID)
    {
      v60 = "updated";
    }

    v110 = 2080;
    *v111 = v60;
    *&v111[8] = 2080;
    *&v111[10] = v10 + 1;
    *&v111[18] = 2080;
    *&v111[20] = v10 + 65;
    *&v111[28] = 1024;
    v112 = v62;
    OUTLINED_FUNCTION_48_2();
    _os_log_impl(v63, v64, OS_LOG_TYPE_DEFAULT, v65, v66, 0x30u);
  }

  return v2;
}

uint64_t iap2_mediaLibrary_libraryStateUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (v3[1])
      {
        if (*a2 != 1)
        {
          return 0;
        }

        v4 = OUTLINED_FUNCTION_96_1(*(a2 + 8));
        result = _iap2_mediaLibrary_findMediaLibraryForUID(v3, v4);
        if (!result)
        {
          return result;
        }

        if (*result != 1)
        {
          return 0;
        }

        v5 = gLogObjects;
        v6 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 31)
        {
          v7 = *(gLogObjects + 240);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          v37 = 134218240;
          v38 = v5;
          OUTLINED_FUNCTION_3();
          v39 = v6;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v30, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v37);
        }

        if (OUTLINED_FUNCTION_82())
        {
          v8 = *(a2 + 8);
          v9 = *(a2 + 16);
          v10 = *(a2 + 20);
          OUTLINED_FUNCTION_43_5();
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v11, v12, OS_LOG_TYPE_INFO, v13, v14, 0x22u);
        }

        v15 = iAP2MsgInit((v3 + 15), 19460, v3[24], 0xFFFF, 0, 0);
        iAP2MsgAddCFStringParam(v15, 0, 0, *(a2 + 8));
        v16 = *(a2 + 16);
        if (v16 == 1)
        {
          v17 = *(a2 + 20);
          v18 = v15;
          v19 = 9;
        }

        else
        {
          if (v16)
          {
            v20 = gLogObjects;
            v21 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v22 = *(gLogObjects + 240);
            }

            else
            {
              v22 = &_os_log_default;
              if (OUTLINED_FUNCTION_27())
              {
                v37 = 134218240;
                v38 = v20;
                OUTLINED_FUNCTION_3();
                v39 = v21;
                OUTLINED_FUNCTION_14_3();
                OUTLINED_FUNCTION_10(v32, v33, v34, v35, v36);
              }
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = *(a2 + 8);
              v24 = *(a2 + 16);
              v25 = *(a2 + 20);
              OUTLINED_FUNCTION_43_5();
              OUTLINED_FUNCTION_14_3();
              _os_log_impl(v26, v27, OS_LOG_TYPE_INFO, v28, v29, 0x22u);
            }

            goto LABEL_19;
          }

          v17 = *(a2 + 20);
          v18 = v15;
          v19 = 8;
        }

        iAP2MsgAddU8Param(v18, 0, v19, v17);
LABEL_19:
        iap2_sessionControl_sendOutgoingMessage(v3, v15);
        platform_mediaLibrary_deleteParams(a2);
        return 1;
      }
    }
  }

  return result;
}

uint64_t iap2_mediaLibrary_updateHandler(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    result = 0;
    if (a2)
    {
      v591 = v3;
      theString = *(v3 + 8);
      if (theString)
      {
        if (*a2 != 2)
        {
          return 0;
        }

        v4 = OUTLINED_FUNCTION_91_0();
        v5 = OUTLINED_FUNCTION_96_1(*(v2 + 8));
        MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(v591, v5);
        result = 0;
        v595 = v4;
        if (v4 && MediaLibraryForUID)
        {
          if (*MediaLibraryForUID == 1)
          {
            Count = CFArrayGetCount(*(v2 + 24));
            v7 = gLogObjects;
            v8 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v9 = *(gLogObjects + 240);
            }

            else if (OUTLINED_FUNCTION_21())
            {
              *v611 = 134218240;
              *&v611[4] = v7;
              OUTLINED_FUNCTION_34_3();
              *&v611[14] = v8;
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v556, v557, v558, v559, v560, 0x12u);
            }

            v10 = OUTLINED_FUNCTION_66_1();
            if (os_log_type_enabled(v10, v11))
            {
              v12 = *(v2 + 8);
              v13 = *(v2 + 16);
              *(v2 + 24);
              *v611 = 138413314;
              *&v611[4] = theString;
              *&v611[12] = 2112;
              OUTLINED_FUNCTION_29_6(v12);
              *&v611[24] = v14;
              *&v611[28] = 2080;
              *&v611[30] = v15;
              *&v611[38] = 2048;
              *&v611[40] = Count;
              OUTLINED_FUNCTION_26_7();
              _os_log_impl(v16, v17, v18, v19, v20, 0x30u);
            }

            v602 = *(MediaLibraryForUID + 152);
            v609 = 0;
            v21 = *(v2 + 16);
            v22 = *(MediaLibraryForUID + 192);
            MaxSendPayloadSizeWithOverride = iap2_endpoint_getMaxSendPayloadSizeWithOverride(v591);
            v597 = MediaLibraryForUID;
            LODWORD(v596) = MaxSendPayloadSizeWithOverride;
            HIDWORD(v588) = MaxSendPayloadSizeWithOverride >> 1;
            if (Count >= 1)
            {
              v25 = 0;
              LODWORD(v593) = 0;
              cf = 0;
              HIDWORD(v601) = 0;
              LOBYTE(v26) = 0;
              v27 = 0;
              HIDWORD(v576) = v591;
              LODWORD(v576) = MediaLibraryForUID;
              key = @"ACCMediaLibraryUpdateTypeKey";
              HIDWORD(v590) = (MaxSendPayloadSizeWithOverride >> 1) + (MaxSendPayloadSizeWithOverride >> 2);
              v599 = @"ACCMediaLibraryUpdateProgressKey";
              v598 = @"ACCMediaLibraryUpdateRevisionKey";
              alloc = kCFAllocatorDefault;
              v582 = @"ACCMediaLibraryUpdateItemDeletePersistentID";
              v583 = @"ACCMediaLibraryUpdatePlaylistDeletePersistentID";
              v580 = @"ACCMediaLibraryUpdateItemDictionary";
              v581 = @"ACCMediaLibraryUpdatePlaylistDictionary";
              *&v24 = 134218240;
              v589 = v24;
              *&v24 = 138413314;
              v586 = v24;
              *&v24 = 138413570;
              v585 = v24;
              *&v24 = 138413058;
              v584 = v24;
              *&v24 = 67109376;
              v579 = v24;
              *&v24 = 138414082;
              v574 = v24;
              *&v24 = 67109120;
              v577 = v24;
              *&v24 = 67109632;
              v573 = v24;
              *&v24 = 67110144;
              v578 = v24;
              LODWORD(v590) = v21;
              while (1)
              {
                v605 = v27;
                ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 24), v25);
                if (!gLogObjects || gNumLogObjects < 31)
                {
                  v30 = OUTLINED_FUNCTION_21();
                  if (v30)
                  {
                    OUTLINED_FUNCTION_0_17(v30, v31, v32, v33, v34, v35, v36, v37, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v38);
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v39, v40, v41, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v42, 0x12u);
                  }
                }

                else
                {
                  v43 = *(gLogObjects + 240);
                }

                if (OUTLINED_FUNCTION_65())
                {
                  OUTLINED_FUNCTION_17_13(*(v2 + 8), *&v586, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591, alloc, v593, theString);
                  *&v611[22] = 1024;
                  *&v611[24] = v605;
                  *&v611[28] = 2048;
                  *&v611[30] = Count;
                  *&v611[38] = v75;
                  *&v611[40] = ValueAtIndex;
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v76, v77, v78, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@, i = %d / %ld, entry=%@", v79, 0x30u);
                }

                v44 = v2;
                Value = CFDictionaryGetValue(ValueAtIndex, key);
                v46 = CFDictionaryGetValue(ValueAtIndex, v599);
                v606 = CFDictionaryGetValue(ValueAtIndex, v598);
                v47 = gLogObjects;
                v48 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 31)
                {
                  v49 = *(gLogObjects + 240);
                }

                else
                {
                  v50 = OUTLINED_FUNCTION_21();
                  if (v50)
                  {
                    OUTLINED_FUNCTION_36_4(v50, v51, v52, v53, v54, v55, v56, v57, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v58);
                    *&v611[4] = v47;
                    OUTLINED_FUNCTION_34_3();
                    *&v611[14] = v48;
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v119, v120, v121, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v122, 0x12u);
                  }
                }

                v2 = v44;
                if (OUTLINED_FUNCTION_65())
                {
                  OUTLINED_FUNCTION_17_13(*(v44 + 8), *&v585, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591, alloc, v593, theString);
                  *&v611[22] = 1024;
                  *&v611[24] = v605;
                  *&v611[28] = v80;
                  *&v611[30] = Value;
                  *&v611[38] = v80;
                  *&v611[40] = v46;
                  LOWORD(v612) = v80;
                  *(&v612 + 2) = v606;
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v81, v82, v83, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@ update[%d]=(type=%@ progress=%@ revision=%@)", v84, 0x3Au);
                }

                valuePtr = -86;
                CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
                if (v46)
                {
                  CFNumberGetValue(v46, kCFNumberSInt8Type, &v609);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                v59 = CFRetain(v606);
                v60 = v59;
                v61 = valuePtr - 3;
                v21 = v21 & (v61 < 2);
                if (v21 != 1)
                {
                  break;
                }

                cf = v59;
                if (gLogObjects && gNumLogObjects >= 31)
                {
                  v62 = *(gLogObjects + 240);
                }

                else
                {
                  v64 = OUTLINED_FUNCTION_21();
                  if (v64)
                  {
                    OUTLINED_FUNCTION_0_17(v64, v65, v66, v67, v68, v69, v70, v71, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v72);
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v439, v440, v441, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v442, 0x12u);
                  }
                }

                if (OUTLINED_FUNCTION_65())
                {
                  v123 = *(v44 + 8);
                  *v611 = v584;
                  *&v611[4] = theString;
                  *&v611[12] = 2112;
                  OUTLINED_FUNCTION_29_6(v123);
                  *&v611[24] = 1;
                  *&v611[28] = v124;
                  *&v611[30] = v125;
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v126, v127, v128, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@ bFullUpdateWaitForNonDelete=%d type=%d, skip deletes", v129, 0x22u);
                }

                ++HIDWORD(v601);
                if (v26)
                {
                  v63 = v22;
                  goto LABEL_254;
                }

                OUTLINED_FUNCTION_79_3();
                v21 = 1;
LABEL_256:
                v25 = v27;
                if (Count <= v27)
                {
                  goto LABEL_261;
                }
              }

              HIDWORD(v596) = v21;
              if (valuePtr - 1 < 2)
              {
                v63 = 2;
              }

              else if (v61 >= 2)
              {
                v63 = v22;
                if (valuePtr)
                {
                  v73 = v59;
                  if (gLogObjects && gNumLogObjects >= 31)
                  {
                    v74 = *(gLogObjects + 240);
                  }

                  else
                  {
                    v85 = OUTLINED_FUNCTION_21();
                    if (v85)
                    {
                      OUTLINED_FUNCTION_0_17(v85, v86, v87, v88, v89, v90, v91, v92, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v93);
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v467, v468, v469, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v470, 0x12u);
                    }
                  }

                  v94 = OUTLINED_FUNCTION_21();
                  v63 = v22;
                  v60 = v73;
                  if (v94)
                  {
                    OUTLINED_FUNCTION_89_2(v94, v95, v96, v97, v98, v99, v100, v101, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v102, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591, alloc, v593, theString, v595, v596, v597, v598, v599, key, v601, v602, Count, v605, v606, SBYTE4(v606), BYTE5(v606));
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v455, v456, v457, "Invalid media library update type: %d\n", v458, 8u);
                    v60 = v73;
                    v63 = v22;
                  }
                }
              }

              else
              {
                v63 = 1;
              }

              if (v22)
              {
                v103 = v22 == v63;
              }

              else
              {
                v103 = 1;
              }

              v21 = !v103;
              v104 = v597;
              *(v597 + 192) = v63;
              if (v103)
              {
                v105 = v602;
                cf = v60;
                if (!v602)
                {
                  v106 = malloc_type_malloc(0x20uLL, 0x106004082FC22AAuLL);
                  *v106 = CFStringCreateCopy(alloc, theString);
                  v106[1] = CFRetain(*(v2 + 8));
                  v106[2] = CFRetain(v606);
                  *(v106 + 6) = 0;
                  *(v106 + 28) = 0;
                  *(v597 + 196) = 0;
                  v107 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
                  v108 = malloc_type_malloc(0xFFFFuLL, 0x5E913751uLL);
                  v109 = iAP2MsgInit(v107, 19460, v108, 0xFFFF, _iAP2MediaLibraryMsgCleanupCB, v106);
                  v105 = v109;
                  if (v109 == v107)
                  {
                    *(v597 + 152) = v107;
                    v116 = gLogObjects;
                    v117 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 31)
                    {
                      v118 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v118 = &_os_log_default;
                      v160 = OUTLINED_FUNCTION_17();
                      if (v160)
                      {
                        OUTLINED_FUNCTION_36_4(v160, v161, v162, v163, v164, v165, v166, v167, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v168);
                        *&v611[4] = v116;
                        OUTLINED_FUNCTION_34_3();
                        *&v611[14] = v117;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v611, 0x12u);
                      }
                    }

                    if (OUTLINED_FUNCTION_75_0())
                    {
                      v471 = *(v2 + 8);
                      MsgID = iAP2MsgGetMsgID(v105);
                      v473 = *(v105 + 48);
                      v474 = *v473;
                      v475 = v473[1];
                      v476 = v473[2];
                      v477 = *(v473 + 6);
                      v478 = *(v473 + 28);
                      OUTLINED_FUNCTION_67_4(MsgID, v479, v480, v481, v482, v483, v484, v485, v571, v572, v573, *(&v573 + 1), v486, v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591, alloc);
                      *&v611[14] = v471;
                      OUTLINED_FUNCTION_100_1(v487);
                      *&v611[30] = v488;
                      *&v611[38] = v489;
                      *&v611[40] = v490;
                      LOWORD(v612) = v489;
                      *(&v612 + 2) = v491;
                      WORD5(v612) = v492;
                      HIDWORD(v612) = v493;
                      LOWORD(v613) = v492;
                      *(&v613 + 2) = v494;
                      _os_log_debug_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEBUG, "init outMsg: %@ libraryUID=%@ message(%04xh): context=(accessoryUID=%@ libraryUID=%@ lastRevision=%@ updatesInMsg=%d confirmed=%d)", v611, 0x46u);
                    }
                  }

                  else
                  {
                    v110 = v2;
                    v111 = v63;
                    v112 = v21;
                    v113 = v109;
                    v26 = gLogObjects;
                    v114 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 31)
                    {
                      v115 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v130 = OUTLINED_FUNCTION_21();
                      if (v130)
                      {
                        OUTLINED_FUNCTION_36_4(v130, v131, v132, v133, v134, v135, v136, v137, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v138);
                        *&v611[4] = v26;
                        OUTLINED_FUNCTION_34_3();
                        *&v611[14] = v114;
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v495, v496, v497, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v498, 0x12u);
                      }
                    }

                    v105 = v113;
                    v21 = v112;
                    v63 = v111;
                    v2 = v110;
                    v104 = v597;
                    if (OUTLINED_FUNCTION_21())
                    {
                      v26 = *(v2 + 8);
                      iAP2MsgGetMsgID(v107);
                      OUTLINED_FUNCTION_102_0();
                      OUTLINED_FUNCTION_67_4(v139, v140, v141, v142, v143, v144, v145, v146, v571, v572, v573, *(&v573 + 1), v147, v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591, alloc);
                      *&v611[14] = v26;
                      OUTLINED_FUNCTION_100_1(v148);
                      *&v611[30] = v149;
                      *&v611[38] = v150;
                      *&v611[40] = v151;
                      LOWORD(v612) = v150;
                      *(&v612 + 2) = v152;
                      WORD5(v612) = v153;
                      HIDWORD(v612) = v154;
                      LOWORD(v613) = v153;
                      *(&v613 + 2) = v155;
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v156, v157, v158, "ERROR: Failed init outMsg: %@ libraryUID=%@ message(%04xh): context=(accessoryUID=%@ libraryUID=%@ lastRevision=%@ updatesInMsg=%d confirmed=%d)", v159, 0x46u);
                    }
                  }

                  iAP2MsgSetCallbackOnSend(v105, __MsgSentOutCB);
                  iAP2MsgAddCFStringParam(v105, 0, 0, *(v2 + 8));
                }

                switch(valuePtr)
                {
                  case 1u:
                    v169 = CFDictionaryGetValue(ValueAtIndex, v580);
                    v170 = gLogObjects;
                    LODWORD(v26) = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 31)
                    {
                      v171 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v182 = OUTLINED_FUNCTION_21();
                      if (v182)
                      {
                        OUTLINED_FUNCTION_36_4(v182, v183, v184, v185, v186, v187, v188, v189, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v190);
                        *&v611[4] = v170;
                        OUTLINED_FUNCTION_34_3();
                        *&v611[14] = v26;
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v499, v500, v501, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v502, 0x12u);
                      }
                    }

                    v191 = OUTLINED_FUNCTION_65();
                    if (v191)
                    {
                      OUTLINED_FUNCTION_31_7(v191, v192, v193, v194, v195, v196, v197, v198, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, SHIDWORD(v576));
                      OUTLINED_FUNCTION_33_6();
                      _os_log_debug_impl(v459, v460, v461, "_iap2_mediaLibrary_mediaItemUpdateHandler: endpoint=%hxh mediaLibraryInfo=%hxh pOutMsg=%hxh data=%hxh", v462, 0x1Au);
                    }

                    LODWORD(v177) = 0;
                    if (!v105 || !v169)
                    {
                      goto LABEL_214;
                    }

                    if (*v104 != 1)
                    {
                      goto LABEL_259;
                    }

                    *&v199 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v199 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v615 = v199;
                    v616 = v199;
                    v613 = v199;
                    v614 = v199;
                    *&v611[32] = v199;
                    v612 = v199;
                    *v611 = v199;
                    *&v611[16] = v199;
                    iAP2MsgAddGroupParam(v105, 2);
                    platform_mediaLibrary_getStructUpdateItem(v2, v169, v611);
                    for (i = 0; i != 28; ++i)
                    {
                      if ((*v611 >> i))
                      {
                        switch(i)
                        {
                          case 0:
                            v201 = OUTLINED_FUNCTION_24_7();
                            v204 = 0;
                            goto LABEL_131;
                          case 1:
                            v205 = OUTLINED_FUNCTION_24_7();
                            v208 = 1;
                            goto LABEL_133;
                          case 2:
                            v213 = OUTLINED_FUNCTION_24_7();
                            v216 = 2;
                            goto LABEL_135;
                          case 3:
                            v213 = OUTLINED_FUNCTION_24_7();
                            v216 = 3;
                            goto LABEL_135;
                          case 4:
                            v217 = OUTLINED_FUNCTION_24_7();
                            iAP2MsgAddU32Param(v217, v218, 4, v219);
                            continue;
                          case 5:
                            v201 = OUTLINED_FUNCTION_24_7();
                            v204 = 5;
                            goto LABEL_131;
                          case 6:
                            v205 = OUTLINED_FUNCTION_24_7();
                            v208 = 6;
                            goto LABEL_133;
                          case 7:
                            v209 = OUTLINED_FUNCTION_24_7();
                            v212 = 7;
                            goto LABEL_129;
                          case 8:
                            v209 = OUTLINED_FUNCTION_24_7();
                            v212 = 8;
                            goto LABEL_129;
                          case 9:
                            v209 = OUTLINED_FUNCTION_24_7();
                            v212 = 9;
                            goto LABEL_129;
                          case 10:
                            v209 = OUTLINED_FUNCTION_24_7();
                            v212 = 10;
                            goto LABEL_129;
                          case 11:
                            v201 = OUTLINED_FUNCTION_24_7();
                            v204 = 11;
                            goto LABEL_131;
                          case 12:
                            v205 = OUTLINED_FUNCTION_24_7();
                            v208 = 12;
                            goto LABEL_133;
                          case 13:
                            v201 = OUTLINED_FUNCTION_24_7();
                            v204 = 13;
                            goto LABEL_131;
                          case 14:
                            v205 = OUTLINED_FUNCTION_24_7();
                            v208 = 14;
                            goto LABEL_133;
                          case 15:
                            v201 = OUTLINED_FUNCTION_24_7();
                            v204 = 15;
                            goto LABEL_131;
                          case 16:
                            v205 = OUTLINED_FUNCTION_24_7();
                            v208 = 16;
                            goto LABEL_133;
                          case 17:
                            v201 = OUTLINED_FUNCTION_24_7();
                            v204 = 17;
LABEL_131:
                            iAP2MsgAddU64Param(v201, v202, v204, v203);
                            continue;
                          case 18:
                            v205 = OUTLINED_FUNCTION_24_7();
                            v208 = 18;
LABEL_133:
                            iAP2MsgAddStringParam(v205, v206, v208, v207);
                            continue;
                          case 19:
                            v213 = OUTLINED_FUNCTION_24_7();
                            v216 = 19;
                            goto LABEL_135;
                          case 25:
                            v213 = OUTLINED_FUNCTION_24_7();
                            v216 = 25;
LABEL_135:
                            iAP2MsgAddU8Param(v213, v214, v216, v215);
                            break;
                          case 27:
                            v209 = OUTLINED_FUNCTION_24_7();
                            v212 = 27;
LABEL_129:
                            iAP2MsgAddU16Param(v209, v210, v212, v211);
                            break;
                          default:
                            continue;
                        }
                      }
                    }

                    LODWORD(v177) = 1;
                    goto LABEL_214;
                  case 2u:
                    v178 = CFDictionaryGetValue(ValueAtIndex, v581);
                    v179 = gLogObjects;
                    LODWORD(v26) = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 31)
                    {
                      v180 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v220 = OUTLINED_FUNCTION_21();
                      if (v220)
                      {
                        OUTLINED_FUNCTION_36_4(v220, v221, v222, v223, v224, v225, v226, v227, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v228);
                        *&v611[4] = v179;
                        OUTLINED_FUNCTION_34_3();
                        *&v611[14] = v26;
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v503, v504, v505, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v506, 0x12u);
                      }
                    }

                    v229 = OUTLINED_FUNCTION_65();
                    if (v229)
                    {
                      OUTLINED_FUNCTION_31_7(v229, v230, v231, v232, v233, v234, v235, v236, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, SHIDWORD(v576));
                      OUTLINED_FUNCTION_33_6();
                      _os_log_debug_impl(v463, v464, v465, "_iap2_mediaLibrary_playlistUpdateHandler: endpoint=%hxh mediaLibraryInfo=%hxh pOutMsg=%hxh data=%hxh", v466, 0x1Au);
                    }

                    Feature = iap2_feature_getFeature(v591, 0xDu);
                    LODWORD(v177) = 0;
                    if (!v178)
                    {
                      goto LABEL_214;
                    }

                    if (!v105)
                    {
                      goto LABEL_214;
                    }

                    if (!Feature)
                    {
                      goto LABEL_214;
                    }

                    v177 = *(v591 + 32);
                    if (!v177)
                    {
                      goto LABEL_214;
                    }

                    v177 = *(v177 + 24);
                    if (!v177)
                    {
                      goto LABEL_214;
                    }

                    v603 = v177;
                    if (*v104 == 1)
                    {
                      *&v611[32] = 0xAAAAAAAAAAAAAAAALL;
                      *&v238 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v238 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *v611 = v238;
                      *&v611[16] = v238;
                      iAP2MsgAddGroupParam(v105, 3);
                      platform_mediaLibrary_getStructUpdatePlaylist(v2, v178, v611);
                      for (j = 0; j != 10; ++j)
                      {
                        if ((*v611 >> j))
                        {
                          switch(j)
                          {
                            case 0:
                              v240 = OUTLINED_FUNCTION_49_3();
                              v243 = 0;
                              goto LABEL_161;
                            case 1:
                              v245 = OUTLINED_FUNCTION_49_3();
                              iAP2MsgAddStringParam(v245, v246, 1, v247);
                              continue;
                            case 2:
                              v240 = OUTLINED_FUNCTION_49_3();
                              v243 = 2;
LABEL_161:
                              iAP2MsgAddU64Param(v240, v241, v243, v242);
                              continue;
                            case 3:
                              v248 = OUTLINED_FUNCTION_49_3();
                              v251 = 3;
                              goto LABEL_164;
                            case 4:
                              v248 = OUTLINED_FUNCTION_49_3();
                              v251 = 4;
                              goto LABEL_164;
                            case 5:
                              if ((v611[0] & 0x10) != 0 && v611[33])
                              {
                                LOBYTE(v26) = gNumLogObjects;
                                if (gLogObjects && gNumLogObjects >= 31)
                                {
                                  v244 = *(gLogObjects + 240);
                                }

                                else
                                {
                                  v262 = OUTLINED_FUNCTION_21();
                                  if (v262)
                                  {
                                    OUTLINED_FUNCTION_2_30(v262, v263, v264, v265, v266, v267, v268, v269, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v270);
                                    OUTLINED_FUNCTION_8_0();
                                    _os_log_error_impl(v329, v330, v331, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v332, 0x12u);
                                  }
                                }

                                if (OUTLINED_FUNCTION_93())
                                {
                                  LOWORD(buf) = 0;
                                  OUTLINED_FUNCTION_15();
                                  v275 = "_iap2_mediaLibrary_playlistUpdateHandler: Playlist is a folder, no need to send content.";
                                  v276 = 2;
LABEL_193:
                                  _os_log_impl(v271, v272, v273, v275, v274, v276);
                                  continue;
                                }
                              }

                              else if (v611[34] == 2)
                              {
                                v277 = OUTLINED_FUNCTION_66_1();
                                SessionForService = iAP2LinkGetSessionForService(v277, v278);
                                SessionInfo = iAP2LinkGetSessionInfo(v603, SessionForService);
                                if (SessionInfo)
                                {
                                  if (SessionInfo[2] >= 2u && v611[34] != 1)
                                  {
                                    v282 = OUTLINED_FUNCTION_49_3();
                                    iAP2MsgAddVoidParam(v282, v283, 7);
                                  }
                                }
                              }

                              else if (v611[34] == 1)
                              {
                                v252 = iAP2LinkGetSessionForService(v603, 1);
                                v610 = 0;
                                if (iAP2FileTransferAllocateBufferID(v603, v252, &v610))
                                {
                                  OUTLINED_FUNCTION_111();
                                  v255 = malloc_type_malloc(v253, v254);
                                  v255[8] = v610;
                                  *v255 = v104;
                                  *(v255 + 2) = *&v611[8];
                                  v593 = v255;
                                  OUTLINED_FUNCTION_74_1(v606, v255 + 24);
                                  OUTLINED_FUNCTION_109();
                                  malloc_type_malloc(v256, v257);
                                  OUTLINED_FUNCTION_40_6();
                                  v572 = v258;
                                  iAP2FileTransferCreate(v603, v252, v259, 0, 0, 0, v258, v260);
                                  LOBYTE(v26) = gNumLogObjects;
                                  if (gLogObjects && gNumLogObjects >= 31)
                                  {
                                    v261 = *(gLogObjects + 240);
                                  }

                                  else
                                  {
                                    v297 = OUTLINED_FUNCTION_21();
                                    if (v297)
                                    {
                                      OUTLINED_FUNCTION_2_30(v297, v298, v299, v300, v301, v302, v303, v304, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v305);
                                      OUTLINED_FUNCTION_8_0();
                                      _os_log_error_impl(v341, v342, v343, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v344, 0x12u);
                                    }
                                  }

                                  if (OUTLINED_FUNCTION_65())
                                  {
                                    buf = v573;
                                    v618 = 5;
                                    v619 = 2048;
                                    v620 = *&v611[8];
                                    v621 = 1024;
                                    v622 = v610;
                                    OUTLINED_FUNCTION_33_6();
                                    _os_log_debug_impl(v333, v334, v335, "_iap2_mediaLibrary_playlistUpdateHandler: i=%d, iap2_sessionFileTransfer_addTransferForFeature, persistentID=%llu bufferID=%u", v336, 0x18u);
                                  }

                                  if (iap2_sessionFileTransfer_addTransferForFeature(v591, 13, v572, v593))
                                  {
                                    v248 = OUTLINED_FUNCTION_49_3();
                                    v251 = 5;
LABEL_164:
                                    iAP2MsgAddU8Param(v248, v249, v251, v250);
                                  }

                                  else
                                  {
                                    LOBYTE(v26) = gNumLogObjects;
                                    if (gLogObjects && gNumLogObjects >= 31)
                                    {
                                      v315 = *(gLogObjects + 240);
                                    }

                                    else
                                    {
                                      v316 = OUTLINED_FUNCTION_21();
                                      if (v316)
                                      {
                                        OUTLINED_FUNCTION_2_30(v316, v317, v318, v319, v320, v321, v322, v323, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v324);
                                        OUTLINED_FUNCTION_8_0();
                                        _os_log_error_impl(v349, v350, v351, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v352, 0x12u);
                                      }
                                    }

                                    if (OUTLINED_FUNCTION_93())
                                    {
                                      buf = v579;
                                      v618 = v610;
                                      v619 = 1024;
                                      LODWORD(v620) = v610;
                                      OUTLINED_FUNCTION_15();
                                      _os_log_impl(v325, v326, v327, "_iap2_mediaLibrary_playlistUpdateHandler: failed to add fileXfer for bufferID %u(%x) !!!!!!!!", v328, 0xEu);
                                    }

                                    if (v572)
                                    {
                                      iAP2FileTransferRelease(v572);
                                    }

                                    free(v593);
                                  }
                                }

                                else
                                {
                                  LOBYTE(v26) = gNumLogObjects;
                                  if (gLogObjects && gNumLogObjects >= 31)
                                  {
                                    v285 = *(gLogObjects + 240);
                                  }

                                  else
                                  {
                                    v285 = &_os_log_default;
                                    v306 = OUTLINED_FUNCTION_21();
                                    if (v306)
                                    {
                                      OUTLINED_FUNCTION_2_30(v306, v307, v308, v309, v310, v311, v312, v313, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v314);
                                      OUTLINED_FUNCTION_8_0();
                                      _os_log_error_impl(v345, v346, v347, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v348, 0x12u);
                                    }
                                  }

                                  if (os_log_type_enabled(v285, OS_LOG_TYPE_FAULT))
                                  {
                                    LOWORD(buf) = 0;
                                    _os_log_fault_impl(&_mh_execute_header, v285, OS_LOG_TYPE_FAULT, "_iap2_mediaLibrary_playlistUpdateHandler: failed to get bufferID... need to retry later! (but not supported yet)", &buf, 2u);
                                  }
                                }
                              }

                              else
                              {
                                LOBYTE(v26) = gNumLogObjects;
                                if (gLogObjects && gNumLogObjects >= 31)
                                {
                                  v284 = *(gLogObjects + 240);
                                }

                                else
                                {
                                  v286 = OUTLINED_FUNCTION_21();
                                  if (v286)
                                  {
                                    OUTLINED_FUNCTION_2_30(v286, v287, v288, v289, v290, v291, v292, v293, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v294);
                                    OUTLINED_FUNCTION_8_0();
                                    _os_log_error_impl(v337, v338, v339, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v340, 0x12u);
                                  }
                                }

                                v295 = OUTLINED_FUNCTION_66_1();
                                if (os_log_type_enabled(v295, v296))
                                {
                                  buf = v577;
                                  v618 = v611[34];
                                  OUTLINED_FUNCTION_26_7();
                                  v275 = "_iap2_mediaLibrary_playlistUpdateHandler: Invalid content style(%d)!";
                                  v276 = 8;
                                  goto LABEL_193;
                                }
                              }

                              break;
                            case 6:
                              v248 = OUTLINED_FUNCTION_49_3();
                              v251 = 6;
                              goto LABEL_164;
                            case 8:
                              v248 = OUTLINED_FUNCTION_49_3();
                              v251 = 8;
                              goto LABEL_164;
                            default:
                              continue;
                          }
                        }
                      }

                      LODWORD(v177) = 1;
                    }

                    else
                    {
LABEL_259:
                      LODWORD(v177) = 0;
                    }

LABEL_214:
                    LODWORD(v593) = v177;
LABEL_215:
                    ++*(v104 + 196);
                    OUTLINED_FUNCTION_74_1(cf, (v104 + 160));
                    break;
                  case 3u:
                    *v611 = 0;
                    v172 = CFDictionaryGetValue(ValueAtIndex, v582);
                    CFNumberGetValue(v172, kCFNumberSInt64Type, v611);
                    v173 = *v611;
                    v174 = v105;
                    v175 = 4;
                    goto LABEL_93;
                  case 4u:
                    *v611 = 0;
                    v176 = CFDictionaryGetValue(ValueAtIndex, v583);
                    CFNumberGetValue(v176, kCFNumberSInt64Type, v611);
                    v173 = *v611;
                    v174 = v105;
                    v175 = 5;
LABEL_93:
                    LODWORD(v177) = iAP2MsgAddI64Param(v174, 0, v175, v173) != 0;
                    goto LABEL_214;
                  default:
                    if (gLogObjects && gNumLogObjects >= 31)
                    {
                      v181 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v411 = OUTLINED_FUNCTION_21();
                      if (v411)
                      {
                        OUTLINED_FUNCTION_0_17(v411, v412, v413, v414, v415, v416, v417, v418, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v419);
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v507, v508, v509, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v510, 0x12u);
                      }
                    }

                    v420 = OUTLINED_FUNCTION_21();
                    if (v420)
                    {
                      OUTLINED_FUNCTION_89_2(v420, v421, v422, v423, v424, v425, v426, v427, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v428, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591, alloc, v593, theString, v595, v596, v597, v598, v599, key, v601, v602, Count, v605, v606, SBYTE4(v606), BYTE5(v606));
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v429, v430, v431, "Invalid media library update type: %d\n", v432, 8u);
                    }

                    goto LABEL_215;
                }
              }

              else
              {
                v105 = v602;
                if (v60)
                {
                  CFRelease(v60);
                }

                cf = OUTLINED_FUNCTION_80_1(alloc, (v597 + 160));
              }

              if (gLogObjects && gNumLogObjects >= 31)
              {
                v353 = *(gLogObjects + 240);
              }

              else
              {
                v354 = OUTLINED_FUNCTION_21();
                if (v354)
                {
                  OUTLINED_FUNCTION_0_17(v354, v355, v356, v357, v358, v359, v360, v361, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v362);
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v443, v444, v445, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v446, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_65())
              {
                v391 = *(v2 + 8);
                *v611 = v584;
                *&v611[4] = theString;
                *&v611[12] = 2112;
                OUTLINED_FUNCTION_29_6(v391);
                *&v611[24] = v392;
                *&v611[28] = v393;
                *&v611[30] = v394;
                OUTLINED_FUNCTION_33_6();
                _os_log_debug_impl(v395, v396, v397, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@ type=%d result=%d", v398, 0x22u);
              }

              if (gLogObjects && gNumLogObjects >= 31)
              {
                v363 = *(gLogObjects + 240);
              }

              else
              {
                v364 = OUTLINED_FUNCTION_21();
                if (v364)
                {
                  OUTLINED_FUNCTION_0_17(v364, v365, v366, v367, v368, v369, v370, v371, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v372);
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v447, v448, v449, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v450, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_65())
              {
                v399 = *(v104 + 196);
                v400 = *(v595 + 4);
                v401 = *(v595 + 8);
                *v611 = v578;
                *&v611[4] = v21;
                OUTLINED_FUNCTION_50_2(v399);
                OUTLINED_FUNCTION_33_6();
                _os_log_debug_impl(v402, v403, v404, "iap2_mediaLibrary_updateHandler addDeleteChanged=%d sendCount=%d window=%d recordsPerMessage=%d bFullUpdate=%d", v405, 0x20u);
              }

              if (gLogObjects && gNumLogObjects >= 31)
              {
                v373 = *(gLogObjects + 240);
              }

              else
              {
                v374 = OUTLINED_FUNCTION_21();
                if (v374)
                {
                  OUTLINED_FUNCTION_0_17(v374, v375, v376, v377, v378, v379, v380, v381, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v382);
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v451, v452, v453, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v454, 0x12u);
                }
              }

              v383 = OUTLINED_FUNCTION_65();
              if (v383)
              {
                MsgLen = iAP2MsgGetMsgLen(v105);
                *v611 = v579;
                *&v611[4] = MsgLen;
                *&v611[8] = 1024;
                *&v611[10] = v596;
                OUTLINED_FUNCTION_33_6();
                _os_log_debug_impl(v407, v408, v409, "iap2_mediaLibrary_updateHandler msgLen=%d maxSendPayloadSize=%d", v410, 0xEu);
                if (v105)
                {
                  goto LABEL_237;
                }
              }

              else if (v105)
              {
LABEL_237:
                v388 = v609;
                if (v609 > 0x63u)
                {
                  v389 = 1;
                }

                else
                {
                  v389 = v21;
                }

                v390 = *(v104 + 196);
                if ((v389 & 1) == 0 && v390 < *(v595 + 8))
                {
                  v383 = iAP2MsgGetMsgLen(v105);
                  if (v383 <= HIDWORD(v590))
                  {
                    v602 = v105;
                    v21 = 0;
LABEL_246:
                    OUTLINED_FUNCTION_79_3();
                    goto LABEL_255;
                  }

                  v388 = v609;
                  v390 = *(v104 + 196);
                }

                v433 = OUTLINED_FUNCTION_101_0(v383, v384, *(v2 + 8), v385, v386, v387, v388, v390, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591);
                _iap2_mediaLibrary_sendUpdateMsg(v433, v434, v435, v105, cf, v436, v437, v438);
                v602 = 0;
                *(v104 + 152) = 0;
                *(v104 + 196) = 0;
                LODWORD(v593) = 1;
                LODWORD(v590) = 0;
                if ((v21 & 1) == 0)
                {
                  OUTLINED_FUNCTION_79_3();
                  v21 = 0;
                  goto LABEL_255;
                }

LABEL_253:
                v21 = HIDWORD(v596);
LABEL_254:
                v27 = v605;
                LOBYTE(v26) = 1;
LABEL_255:
                v22 = v63;
                goto LABEL_256;
              }

              v602 = 0;
              if (!v21)
              {
                goto LABEL_246;
              }

              goto LABEL_253;
            }

            LOBYTE(v26) = 0;
            HIDWORD(v601) = 0;
            cf = 0;
            LODWORD(v593) = 0;
            LODWORD(v590) = v21;
LABEL_261:
            v511 = v21;
            v512 = gLogObjects;
            v513 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v514 = *(gLogObjects + 240);
              v515 = v597;
              v516 = HIDWORD(v588);
              v517 = v602;
              v518 = &off_1001C3000;
            }

            else
            {
              v515 = v597;
              v516 = HIDWORD(v588);
              v517 = v602;
              v518 = &off_1001C3000;
              if (OUTLINED_FUNCTION_21())
              {
                *v611 = 134218240;
                *&v611[4] = v512;
                OUTLINED_FUNCTION_34_3();
                *&v611[14] = v513;
                OUTLINED_FUNCTION_8_0();
                _os_log_error_impl(v561, v562, v563, v564, v565, 0x12u);
              }
            }

            v519 = OUTLINED_FUNCTION_65();
            if (v519)
            {
              v541 = iAP2MsgGetMsgLen(v517);
              v542 = *(v515 + 196);
              v543 = *(v595 + 4);
              v544 = *(v595 + 8);
              *v611 = *(v518 + 93);
              *&v611[4] = v541;
              OUTLINED_FUNCTION_50_2(v609);
              OUTLINED_FUNCTION_33_6();
              _os_log_debug_impl(v545, v546, v547, v548, v549, 0x20u);
            }

            if (v517)
            {
              v524 = v609;
              if (v609 > 0x63u)
              {
                v525 = 1;
              }

              else
              {
                v525 = v26;
              }

              if ((v525 & 1) == 0 && *(v515 + 196) < *(v595 + 8))
              {
                v519 = iAP2MsgGetMsgLen(v517);
                if (v519 <= v516 + (v596 >> 2))
                {
                  goto LABEL_275;
                }

                v524 = v609;
              }

              v550 = OUTLINED_FUNCTION_101_0(v519, v520, *(v2 + 8), v521, v522, v523, v524, *(v515 + 196), v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591);
              v530 = cf;
              _iap2_mediaLibrary_sendUpdateMsg(v550, v551, v552, v517, cf, v553, v554, v555);
              *(v515 + 152) = 0;
              *(v515 + 196) = 0;
              v539 = 1;
              if (cf)
              {
LABEL_286:
                v540 = v539;
                CFRelease(v530);
                v539 = v540;
              }

LABEL_287:
              if (v539)
              {
                platform_mediaLibrary_deleteParams(v2);
                return 1;
              }

              return 0;
            }

LABEL_275:
            if (v511)
            {
              v526 = gLogObjects;
              v527 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 31)
              {
                v528 = *(gLogObjects + 240);
                v529 = HIDWORD(v601);
              }

              else
              {
                v529 = HIDWORD(v601);
                if (OUTLINED_FUNCTION_21())
                {
                  *v611 = 134218240;
                  *&v611[4] = v526;
                  OUTLINED_FUNCTION_34_3();
                  *&v611[14] = v527;
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v566, v567, v568, v569, v570, 0x12u);
                }
              }

              v531 = OUTLINED_FUNCTION_66_1();
              if (os_log_type_enabled(v531, v532))
              {
                OUTLINED_FUNCTION_17_13(*(v2 + 8), 5.7784e-34, v571, v572, v573, *(&v573 + 1), v574, *(&v574 + 1), v575, v576, v577, *(&v577 + 1), v578, *(&v578 + 1), v579, *(&v579 + 1), v580, v581, v582, v583, v584, *(&v584 + 1), v585, *(&v585 + 1), v586, *(&v586 + 1), v587, v588, v589, *(&v589 + 1), v590, v591, alloc, v593, theString);
                *&v611[22] = v533;
                *&v611[24] = cf;
                *&v611[32] = 1024;
                *&v611[34] = 1;
                *&v611[38] = 1024;
                *&v611[40] = v529;
                OUTLINED_FUNCTION_26_7();
                _os_log_impl(v534, v535, v536, v537, v538, 0x2Cu);
              }

              v530 = cf;
              platform_mediaLibrary_confirmLibraryUpdate(*(v591 + 8), *(v2 + 8), cf, v529);
            }

            else
            {
              v530 = cf;
            }

            v539 = v593;
            if (v530)
            {
              goto LABEL_286;
            }

            goto LABEL_287;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void __MsgSentOutCB(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(*v1);
      if (EndpointWithUUID)
      {
        v3 = EndpointWithUUID[7];
        if (v3)
        {
          Feature = iap2_feature_getFeature(v3, 0xDu);
          if (Feature)
          {
            v5 = Feature;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v6 = *(gLogObjects + 240);
            }

            else if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
            }

            if (OUTLINED_FUNCTION_65())
            {
              OUTLINED_FUNCTION_102_0();
              v18 = v5[5];
              v19 = v5[3];
              v20 = v5[6];
              v21 = v5[4];
              OUTLINED_FUNCTION_33_6();
              _os_log_debug_impl(v8, v9, v10, v11, v12, 0x44u);
            }

            v7 = v5[6];
            if (v7)
            {
              v5[6] = --v7;
            }

            ++v5[5];
            if ((*(v1 + 28) & 1) == 0 && v7 < v5[4])
            {
              *(v1 + 28) = 1;
              platform_mediaLibrary_confirmLibraryUpdate(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
            }
          }
        }
      }
    }
  }
}

const char *_iap2_mediaLibrary_sendUpdateMsg(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, const __CFString *a5, int a6, int a7, int a8)
{
  result = GetCStringFromCFString(a5);
  v50 = a1;
  if (a1 && a2)
  {
    __s = result;
    v15 = *(a4 + 48);
    v16 = gNumLogObjects;
    if (gLogObjects)
    {
      v17 = gNumLogObjects < 31;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v19 = &_os_log_default;
      if (OUTLINED_FUNCTION_114())
      {
        OUTLINED_FUNCTION_46();
        LODWORD(v54) = v16;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    else
    {
      v19 = *(gLogObjects + 240);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v50[1];
      MsgID = iAP2MsgGetMsgID(a4);
      MsgLen = iAP2MsgGetMsgLen(a4);
      v23 = *v15;
      v24 = v15[1];
      *buf = 138414594;
      v52 = v20;
      v53 = 2112;
      v54 = a3;
      v55 = 1024;
      v56 = a6;
      v57 = 1024;
      v58 = a7;
      v59 = 1024;
      v60 = a8;
      v61 = 1024;
      *v62 = a4;
      *&v62[4] = 1024;
      *&v62[6] = MsgID;
      LOWORD(v63) = 1024;
      *(&v63 + 2) = MsgLen;
      HIWORD(v63) = 2112;
      *v64 = v23;
      *&v64[8] = 2112;
      v65 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "_iap2_mediaLibrary_sendUpdateMsg %@ libraryUID=%@ fullUpdate=%d progress=%d sendCount=%d pOutMsg(%hxh ID=%xh len=%d): context=(accessoryUID=%@ libraryUID=%@)", buf, 0x4Eu);
    }

    if (a6)
    {
      v25 = OUTLINED_FUNCTION_107();
      iAP2MsgAddVoidParam(v25, v26, 6);
    }

    v27 = OUTLINED_FUNCTION_107();
    iAP2MsgAddStringParam(v27, v28, 1, __s);
    v29 = OUTLINED_FUNCTION_107();
    iAP2MsgAddU8Param(v29, v30, 7, a7);
    if (v15)
    {
      v31 = v15[2];
      if (v31)
      {
        CFRelease(v31);
        v15[2] = 0;
      }

      if (a5)
      {
        v15[2] = CFRetain(a5);
      }

      *(v15 + 6) = a8;
    }

    v32 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 31)
    {
      v33 = *(gLogObjects + 240);
    }

    else
    {
      v33 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_46();
        LODWORD(v54) = v32;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = v50[1];
      v35 = iAP2MsgGetMsgID(a4);
      v36 = iAP2MsgGetMsgLen(a4);
      if (v15)
      {
        v39 = *v15;
        v38 = v15[1];
        v40 = v15[2];
        v37 = *(v15 + 6);
        v41 = *(v15 + 28);
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
      }

      v43 = a2[5];
      v44 = a2[6];
      v45 = a2[3];
      v46 = a2[4];
      *buf = 138415874;
      v52 = v34;
      v53 = 2112;
      v54 = a3;
      v55 = 1024;
      v56 = a4;
      v57 = 1024;
      v58 = v35;
      v59 = 1024;
      v60 = v36;
      v61 = 2112;
      *v62 = v39;
      *&v62[8] = 2112;
      v63 = v38;
      *v64 = 2112;
      *&v64[2] = v40;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = v37;
      HIWORD(v65) = 1024;
      v66 = v41;
      v67 = 1024;
      v68 = a6;
      v69 = 1024;
      v70 = v43;
      v71 = 1024;
      v72 = v45;
      v73 = 1024;
      v74 = v44;
      v75 = 1024;
      v76 = v46;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "_iap2_mediaLibrary_sendUpdateMsg %@ libraryUID=%@ send message(%hxh ID=%xh len=%d): context=(accessoryUID=%@ libraryUID=%@ lastRevision=%@ updatesInMsg=%d confirmed=%d) fullUpdate=%d updateMessagesInFlight=%d/%d updateMessagesPendingSend=%d++/%d", buf, 0x70u);
    }

    ++a2[6];
    return iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v50, a4);
  }

  return result;
}

uint64_t iap2_mediaLibrary_updatePlaylistContentHandler(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    result = 0;
    if (a2)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        if (*a2 != 3)
        {
          return 0;
        }

        v5 = &audioProductCerts_endpoint_publish_onceToken;
        v6 = gLogObjects;
        v7 = &audioProductCerts_endpoint_publish_onceToken;
        LODWORD(v8) = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 31)
        {
          v9 = *(gLogObjects + 240);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_1_21();
          OUTLINED_FUNCTION_8_14();
          _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
        }

        v15 = OUTLINED_FUNCTION_66_1();
        v306 = v3;
        if (os_log_type_enabled(v15, v16))
        {
          v18 = *(v2 + 8);
          v17 = *(v2 + 16);
          v8 = *(v2 + 24);
          v6 = *(v2 + 32);
          v19 = *(v2 + 40);
          if (v19)
          {
            v20 = ".";
          }

          else
          {
            v20 = "nil ";
          }

          if (v19)
          {
            CFArrayGetCount(v19);
          }

          OUTLINED_FUNCTION_99_1();
          WORD6(__b[0]) = 2112;
          *(__b + 14) = v18;
          WORD3(__b[1]) = 2112;
          *(&__b[1] + 1) = v17;
          LOWORD(__b[2]) = 2048;
          *(&__b[2] + 2) = v8;
          WORD5(__b[2]) = 1024;
          HIDWORD(__b[2]) = v6;
          LOWORD(__b[3]) = 2080;
          *(&__b[3] + 2) = v20;
          WORD5(__b[3]) = 2048;
          *(&__b[3] + 12) = v21;
          OUTLINED_FUNCTION_18_12();
          _os_log_impl(v22, v23, v24, v25, v26, 0x44u);
          v3 = v306;
        }

        v27 = OUTLINED_FUNCTION_96_1(*(v2 + 8));
        MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(v3, v27);
        if (MediaLibraryForUID)
        {
          OUTLINED_FUNCTION_68_4();
          if (v6 && v8 >= 31)
          {
            v28 = *(v6 + 240);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_8_14();
            _os_log_error_impl(v160, v161, v162, v163, v164, 0x12u);
          }

          v29 = OUTLINED_FUNCTION_66_1();
          v31 = os_log_type_enabled(v29, v30);
          if (v31)
          {
            v39 = *(MediaLibraryForUID + 33);
            v40 = *MediaLibraryForUID;
            OUTLINED_FUNCTION_99_1();
            WORD6(__b[0]) = 2080;
            *(__b + 14) = v41;
            WORD3(__b[1]) = 2080;
            *(&__b[1] + 1) = v42;
            LOWORD(__b[2]) = 1024;
            *(&__b[2] + 2) = v43;
            WORD3(__b[2]) = 1024;
            DWORD2(__b[2]) = v44;
            OUTLINED_FUNCTION_18_12();
            _os_log_impl(v45, v46, v47, v48, v49, 0x2Cu);
          }

          OUTLINED_FUNCTION_77_4(v31, v32, v33, v34, v35, v36, v37, v38, v286, v288, v289, v291, v292, v294, v295, v297, v299, v301, v304, v306, v308, v310, MediaLibraryForUID);
          if (v50)
          {
            v51 = *(v3 + 32);
            if (v51)
            {
              v52 = *(v51 + 24);
              if (v52)
              {
                LODWORD(v300) = iAP2LinkGetSessionForService(*(v51 + 24), 1);
                SessionInfo = iAP2LinkGetSessionInfo(v52, v300);
                if (SessionInfo)
                {
                  HIDWORD(v300) = SessionInfo[2];
                }

                else
                {
                  HIDWORD(v300) = 0;
                }

                v319 = 0;
                *&v54 = 0xAAAAAAAAAAAAAAAALL;
                *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v317[0] = v54;
                v317[1] = v54;
                v317[2] = v54;
                v317[3] = v54;
                v318 = 0xAAAAAAAAAAAAAAAALL;
                v55 = *(v2 + 40);
                if (v55)
                {
                  Count = CFArrayGetCount(v55);
                }

                else
                {
                  Count = 0;
                }

                v298 = v52;
                OUTLINED_FUNCTION_68_4();
                if (v8 < 31)
                {
                  if (OUTLINED_FUNCTION_21())
                  {
                    OUTLINED_FUNCTION_1_21();
                    OUTLINED_FUNCTION_8_14();
                    _os_log_error_impl(v205, v206, v207, v208, v209, 0x12u);
                  }
                }

                else
                {
                  v56 = *(v52 + 240);
                }

                if (OUTLINED_FUNCTION_65())
                {
                  OUTLINED_FUNCTION_103_0();
                  v132 = *(v2 + 32);
                  v133 = *(v2 + 40);
                  v135 = *(v134 + 2800);
                  OUTLINED_FUNCTION_99_1();
                  OUTLINED_FUNCTION_28_6(v136, v137, v138, v139, v140, v141, v142, v143, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v52, v300, SHIDWORD(v300));
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v144, v145, v146, v147, v148, 0x42u);
                }

                v57 = *(v2 + 32);
                i = &off_1001C3000;
                v305 = v4;
                if (v57 == 2)
                {
                  if (HIDWORD(v300) < 2)
                  {
                    OUTLINED_FUNCTION_68_4();
                    if (&off_1001C3000 < 31)
                    {
                      if (OUTLINED_FUNCTION_21())
                      {
                        OUTLINED_FUNCTION_1_21();
                        OUTLINED_FUNCTION_8_14();
                        _os_log_error_impl(v251, v252, v253, v254, v255, 0x12u);
                      }
                    }

                    else
                    {
                      v92 = *(v52 + 240);
                    }

                    if (OUTLINED_FUNCTION_21())
                    {
                      LODWORD(__b[0]) = 67109120;
                      DWORD1(__b[0]) = HIDWORD(v300);
                      OUTLINED_FUNCTION_8_14();
                      _os_log_error_impl(v101, v102, v103, v104, v105, 8u);
                    }
                  }

                  else
                  {
                    if (iAP2FileTransferAllocateBufferID(v298, v300, &v319))
                    {
                      v311 = v2;
                      if (Count < 1)
                      {
                        v302 = 0;
                        v52 = Count;
                        goto LABEL_159;
                      }

                      v302 = 0;
                      v68 = 0;
                      *&v67 = 134218240;
                      v290 = v67;
                      *&v67 = 134217984;
                      v293 = v67;
                      while (1)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 40), v68);
                        if (!ValueAtIndex)
                        {
                          goto LABEL_78;
                        }

                        OUTLINED_FUNCTION_77_4(ValueAtIndex, v70, v71, v72, v73, v74, v75, v76, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, v302, v305, v307, Count, v311, v313);
                        if (!v50)
                        {
                          goto LABEL_78;
                        }

                        *&v78 = 0xAAAAAAAAAAAAAAAALL;
                        *(&v78 + 1) = 0xAAAAAAAAAAAAAAAALL;
                        __b[2] = v78;
                        __b[3] = v78;
                        __b[0] = v78;
                        __b[1] = v78;
                        platform_mediaLibrary_getStructPlaylistContentItem(v2, v77, __b);
                        v79 = 0;
                        LODWORD(i) = __b[3];
                        v80 = 4;
                        do
                        {
                          v52 = v80;
                          if ((LODWORD(__b[0]) >> v79))
                          {
                            v80 = (v80 + 4);
                            switch(v79)
                            {
                              case 12:
                                v81 = *&__b[2];
                                goto LABEL_74;
                              case 13:
                              case 15:
                              case 17:
                                break;
                              case 14:
                                v81 = *(&__b[2] + 1);
                                goto LABEL_74;
                              case 16:
                                v81 = *&__b[3];
                                goto LABEL_74;
                              case 18:
                                v81 = *(&__b[3] + 1);
                                goto LABEL_74;
                              default:
                                if (v79 == 6)
                                {
                                  v81 = *(&__b[1] + 1);
                                  goto LABEL_74;
                                }

                                if (v79 == 1)
                                {
                                  v81 = *&__b[1];
LABEL_74:
                                  v80 = v52 + strlen(v81) + 5;
                                  break;
                                }

                                if (v79)
                                {
                                  v80 = v80;
                                }

                                else
                                {
                                  v80 = (v52 + 12);
                                }

                                break;
                            }
                          }

                          ++v79;
                        }

                        while (v79 != 28);
                        v2 = v311;
                        v7 = &audioProductCerts_endpoint_publish_onceToken;
                        v5 = &audioProductCerts_endpoint_publish_onceToken;
                        if (v80)
                        {
                          v302 = __PAIR64__(HIDWORD(v302), v80 + v302) + 0x100000000;
                          goto LABEL_87;
                        }

LABEL_78:
                        OUTLINED_FUNCTION_68_4();
                        if (v52)
                        {
                          v82 = i < 31;
                        }

                        else
                        {
                          v82 = 1;
                        }

                        if (v82)
                        {
                          if (OUTLINED_FUNCTION_21())
                          {
                            OUTLINED_FUNCTION_1_21();
                            OUTLINED_FUNCTION_8_0();
                            _os_log_error_impl(v83, v84, v85, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v86, 0x12u);
                          }
                        }

                        else
                        {
                          v87 = *(v52 + 240);
                        }

                        if (OUTLINED_FUNCTION_93())
                        {
                          OUTLINED_FUNCTION_99_1();
                          OUTLINED_FUNCTION_15();
                          _os_log_impl(v88, v89, v90, "updatePlaylistContentHandler: WARNING: record size is 0 for index %ld", v91, 0xCu);
                        }

LABEL_87:
                        v52 = Count;
                        if (++v68 == Count)
                        {
LABEL_159:
                          v94 = v5;
                          LODWORD(v293) = v302 + 16;
                          v113 = malloc_type_malloc((v302 + 22), 0x100004077774924uLL);
                          iAP2MsgInit(v317, 0, v113, v302 + 22, 0, 0);
                          iAP2MsgAddU32Param(v317, 0, 0, HIDWORD(v302));
                          iAP2MsgAddU32Param(v317, 0, 1, 0);
                          if (v52 < 1)
                          {
LABEL_191:
                            FirstParam = iAP2MsgGetFirstParam(v317, 0);
                            inited = iAP2LinkRunLoopInitImplementation(FirstParam);
                            OUTLINED_FUNCTION_111();
                            v200 = malloc_type_malloc(0x38uLL, v199);
                            v200[8] = v319;
                            v2 = v311;
                            *v200 = v313;
                            *(v200 + 2) = *(v311 + 24);
                            OUTLINED_FUNCTION_74_1(*(v311 + 16), v200 + 24);
                            OUTLINED_FUNCTION_109();
                            v95 = malloc_type_malloc(0x138uLL, v201);
                            OUTLINED_FUNCTION_40_6();
                            iAP2FileTransferCreate(v298, v300, v202, 0, 0, 0, v95, v203);
                            if (!iap2_sessionFileTransfer_addTransferForFeature(v307, 13, v95, v200))
                            {
                              v52 = v94[491];
                              LODWORD(i) = gNumLogObjects;
                              if (v52 && gNumLogObjects >= 31)
                              {
                                v204 = *(v52 + 240);
                              }

                              else if (OUTLINED_FUNCTION_21())
                              {
                                OUTLINED_FUNCTION_1_21();
                                OUTLINED_FUNCTION_8_14();
                                _os_log_error_impl(v281, v282, v283, v284, v285, 0x12u);
                              }

                              if (OUTLINED_FUNCTION_93())
                              {
                                LODWORD(__b[0]) = 67109120;
                                DWORD1(__b[0]) = v319;
                                OUTLINED_FUNCTION_15();
                                _os_log_impl(v217, v218, v219, v220, v221, 8u);
                              }

                              free(v200);
                              iAP2FileTransferRelease(v95);
                            }

                            v62 = 1;
                            v100 = v293;
                            if (v95)
                            {
                              goto LABEL_118;
                            }

                            goto LABEL_206;
                          }

                          v166 = 0;
                          LODWORD(v303) = v313;
                          HIDWORD(v303) = v307;
                          LODWORD(v290) = (v167 + 144) & 0xFFF0;
                          *&v165 = 134218240;
                          v287 = v165;
                          while (2)
                          {
                            i = CFArrayGetValueAtIndex(*(v311 + 40), v166);
                            v52 = v94[491];
                            v168 = *(v7 + 984);
                            if (v52)
                            {
                              v169 = v168 < 31;
                            }

                            else
                            {
                              v169 = 1;
                            }

                            if (v169)
                            {
                              if (OUTLINED_FUNCTION_114())
                              {
                                LODWORD(__b[0]) = v287;
                                *(__b + 4) = v52;
                                WORD6(__b[0]) = 1024;
                                *(__b + 14) = v168;
                                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", __b, 0x12u);
                              }
                            }

                            else
                            {
                              v170 = *(v52 + 240);
                            }

                            v171 = OUTLINED_FUNCTION_65();
                            if (v171)
                            {
                              *&__b[0] = __PAIR64__(HIDWORD(v303), 67109888);
                              WORD4(__b[0]) = 1024;
                              *(__b + 10) = v303;
                              HIWORD(__b[0]) = 1024;
                              LODWORD(__b[1]) = v290;
                              WORD2(__b[1]) = 1024;
                              *(&__b[1] + 6) = i;
                              OUTLINED_FUNCTION_33_6();
                              _os_log_debug_impl(v194, v195, v196, "_iap2_mediaLibrary_playlistContentItemUpdateHandler: pEndpoint=%hxh mediaLibraryInfo=%hxh pOutMsg=%hxh data=%hxh", v197, 0x1Au);
                              if (i)
                              {
                                goto LABEL_170;
                              }
                            }

                            else if (i)
                            {
LABEL_170:
                              OUTLINED_FUNCTION_77_4(v171, v172, v173, v174, v175, v176, v177, v178, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, v303, v305, v307, Count, v311, v313);
                              if (v50)
                              {
                                *&v179 = 0xAAAAAAAAAAAAAAAALL;
                                *(&v179 + 1) = 0xAAAAAAAAAAAAAAAALL;
                                __b[2] = v179;
                                __b[3] = v179;
                                __b[0] = v179;
                                __b[1] = v179;
                                iAP2MsgAddGroupParam(v317, 2);
                                StructPlaylistContentItem = platform_mediaLibrary_getStructPlaylistContentItem(v311, i, __b);
                                for (i = 0; i != 28; ++i)
                                {
                                  if ((LODWORD(__b[0]) >> i))
                                  {
                                    switch(i)
                                    {
                                      case 12:
                                        v187 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v181, v182, *&__b[2], v183, v184, v185, v186, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, v303, v305, v307, Count, v311, v313, v314, v315, v316, v317[0]);
                                        v190 = 12;
                                        goto LABEL_185;
                                      case 13:
                                      case 15:
                                      case 17:
                                        break;
                                      case 14:
                                        v187 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v181, v182, *(&__b[2] + 1), v183, v184, v185, v186, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, v303, v305, v307, Count, v311, v313, v314, v315, v316, v317[0]);
                                        v190 = 14;
                                        goto LABEL_185;
                                      case 16:
                                        OUTLINED_FUNCTION_8_0();
                                        goto LABEL_185;
                                      case 18:
                                        v187 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v181, v182, *(&__b[3] + 1), v183, v184, v185, v186, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, v303, v305, v307, Count, v311, v313, v314, v315, v316, v317[0]);
                                        v190 = 18;
                                        goto LABEL_185;
                                      default:
                                        switch(i)
                                        {
                                          case 6:
                                            v187 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v181, v182, *(&__b[1] + 1), v183, v184, v185, v186, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, v303, v305, v307, Count, v311, v313, v314, v315, v316, v317[0]);
                                            v190 = 6;
                                            goto LABEL_185;
                                          case 1:
                                            OUTLINED_FUNCTION_26_7();
LABEL_185:
                                            StructPlaylistContentItem = iAP2MsgAddStringParam(v187, v188, v190, v189);
                                            continue;
                                          case 0:
                                            v191 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v181, v182, *(&__b[0] + 1), v183, v184, v185, v186, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, v303, v305, v307, Count, v311, v313, v314, v315, v316, v317[0]);
                                            StructPlaylistContentItem = iAP2MsgAddU64Param(v191, v192, 0, v193);
                                            break;
                                        }

                                        break;
                                    }
                                  }
                                }
                              }
                            }

                            if (++v166 == Count)
                            {
                              goto LABEL_191;
                            }

                            continue;
                          }
                        }
                      }
                    }

                    OUTLINED_FUNCTION_68_4();
                    if (&off_1001C3000 < 31)
                    {
                      v106 = &_os_log_default;
                      if (OUTLINED_FUNCTION_21())
                      {
                        OUTLINED_FUNCTION_1_21();
                        OUTLINED_FUNCTION_8_14();
                        _os_log_error_impl(v271, v272, v273, v274, v275, 0x12u);
                      }
                    }

                    else
                    {
                      v106 = *(v52 + 240);
                    }

                    if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
                    {
                      LOWORD(__b[0]) = 0;
                      _os_log_fault_impl(&_mh_execute_header, v106, OS_LOG_TYPE_FAULT, "updatePlaylistContentHandler: failed to get bufferID... need to retry later! (but not supported yet)", __b, 2u);
                    }
                  }
                }

                else if (v57 == 1)
                {
                  *&v59 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *(__b + 8) = v59;
                  *(&__b[2] + 8) = v59;
                  *(&__b[1] + 8) = v59;
                  BYTE8(__b[0]) = 0;
                  *&__b[0] = v313;
                  v60 = *(v2 + 16);
                  *&__b[1] = *(v2 + 24);
                  OUTLINED_FUNCTION_74_1(v60, &__b[1] + 8);
                  v314 = 0xDAAAAAA00;
                  v315 = 0;
                  v316 = __b;
                  TransferEntryForFeature = iap2_sessionFileTransfer_findTransferEntryForFeature(v3, 128, &v314, _compareLibraryRevisionPlaylistPersistentID);
                  v62 = TransferEntryForFeature != 0;
                  v52 = gNumLogObjects;
                  if (gLogObjects)
                  {
                    v63 = gNumLogObjects <= 30;
                  }

                  else
                  {
                    v63 = 1;
                  }

                  v64 = !v63;
                  if (TransferEntryForFeature)
                  {
                    v65 = TransferEntryForFeature;
                    if (v64)
                    {
                      v66 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v66 = &_os_log_default;
                      if (OUTLINED_FUNCTION_17())
                      {
                        OUTLINED_FUNCTION_87_3(3.8521e-34);
                        OUTLINED_FUNCTION_35(&_mh_execute_header, v249, v250, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", valuePtr);
                      }
                    }

                    if (OUTLINED_FUNCTION_75_0())
                    {
                      v245 = *v65;
                      v246 = *(v65 + 1);
                      v247 = *(v65 + 4);
                      v248 = *(v65 + 8);
                      *valuePtr = 67109888;
                      *&valuePtr[4] = v245;
                      *&valuePtr[8] = 1024;
                      *&valuePtr[10] = v246;
                      v322 = 1024;
                      v323 = v247;
                      v324 = 1024;
                      v325 = v248;
                      _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "updatePlaylistContentHandler: xferEntry(bufferID=%u type=%u fileXfer=%hxh context=%hxh)", valuePtr, 0x1Au);
                    }

                    v94 = &audioProductCerts_endpoint_publish_onceToken;
                    v319 = *v65;
                    v95 = *(v65 + 1);
                    LODWORD(i) = Count;
                    if (Count)
                    {
                      v96 = OUTLINED_FUNCTION_112(8 * Count);
                      if (v96)
                      {
                        inited = v96;
                        *valuePtr = 0xAAAAAAAAAAAAAAAALL;
                        if (Count < 1)
                        {
                          v100 = 0;
                        }

                        else
                        {
                          v98 = 0;
                          v52 = v96;
                          do
                          {
                            v99 = CFArrayGetValueAtIndex(*(v2 + 40), v98);
                            CFNumberGetValue(v99, kCFNumberSInt64Type, valuePtr);
                            *v52 = valuePtr[7];
                            *(v52 + 1) = valuePtr[6];
                            *(v52 + 2) = valuePtr[5];
                            *(v52 + 3) = valuePtr[4];
                            *(v52 + 4) = valuePtr[3];
                            *(v52 + 5) = valuePtr[2];
                            *(v52 + 6) = valuePtr[1];
                            *(v52 + 7) = valuePtr[0];
                            ++v98;
                            v52 += 8;
                          }

                          while (Count != v98);
                          v100 = 8 * Count;
                        }

LABEL_117:
                        v113 = inited;
                        if (v95)
                        {
LABEL_118:
                          v114 = !v62;
                          if (HIDWORD(v300) < 2)
                          {
                            v114 = 1;
                          }

                          if ((v114 & 1) == 0)
                          {
                            memset(__b, 170, 0xA8uLL);
                            Length = CFStringGetLength(*(v2 + 8));
                            LOWORD(__b[0]) = Length + 9;
                            *(&__b[0] + 1) = *(v2 + 24);
                            v116 = *(v2 + 8);
                            if ((Length + 1) < 0x3C)
                            {
                              v117 = Length + 1;
                            }

                            else
                            {
                              v117 = 60;
                            }

                            CFStringGetCString(*(v2 + 8), &__b[1], v117, 0x8000100u);
                            BYTE11(__b[4]) = 0;
                            if (*(v2 + 32) == 2)
                            {
                              v118 = 7;
                            }

                            else
                            {
                              v118 = 4;
                            }

                            iAP2FileTransferTypeData(v95, v118, __b);
                          }

                          v119 = v94[491];
                          if (v119)
                          {
                            v120 = gNumLogObjects <= 30;
                          }

                          else
                          {
                            v120 = 1;
                          }

                          v121 = !v120;
                          if (!v95[26])
                          {
                            if (v121)
                            {
                              v123 = *(v119 + 240);
                            }

                            else if (OUTLINED_FUNCTION_21())
                            {
                              OUTLINED_FUNCTION_84_2();
                              OUTLINED_FUNCTION_8_14();
                              _os_log_error_impl(v266, v267, v268, v269, v270, 0x12u);
                            }

                            v149 = OUTLINED_FUNCTION_66_1();
                            if (os_log_type_enabled(v149, v150))
                            {
                              OUTLINED_FUNCTION_103_0();
                              v152 = *(v151 + 632);
                              OUTLINED_FUNCTION_30_6();
                              OUTLINED_FUNCTION_18_12();
                              _os_log_impl(v153, v154, v155, v156, v157, 0x30u);
                            }

                            if ((iAP2FileTransferStart(v95, inited, v100, v100, __handleTransferEnd, v113, 0, 0) & 1) == 0)
                            {
                              v158 = v94[491];
                              if (v158 && gNumLogObjects >= 31)
                              {
                                v159 = *(v158 + 240);
                              }

                              else if (OUTLINED_FUNCTION_21())
                              {
                                OUTLINED_FUNCTION_1_21();
                                OUTLINED_FUNCTION_8_14();
                                _os_log_error_impl(v276, v277, v278, v279, v280, 0x12u);
                              }

                              v210 = OUTLINED_FUNCTION_66_1();
                              if (os_log_type_enabled(v210, v211))
                              {
                                OUTLINED_FUNCTION_103_0();
                                OUTLINED_FUNCTION_30_6();
                                OUTLINED_FUNCTION_18_12();
                                _os_log_impl(v212, v213, v214, v215, v216, 0x30u);
                              }

                              iAP2FileTransferCancel(v95);
                            }

                            goto LABEL_215;
                          }

                          if (v121)
                          {
                            v122 = *(v119 + 240);
                          }

                          else if (OUTLINED_FUNCTION_21())
                          {
                            OUTLINED_FUNCTION_84_2();
                            OUTLINED_FUNCTION_8_14();
                            _os_log_error_impl(v256, v257, v258, v259, v260, 0x12u);
                          }

                          v124 = OUTLINED_FUNCTION_66_1();
                          if (os_log_type_enabled(v124, v125))
                          {
                            v126 = v95[26];
                            LODWORD(__b[0]) = 67109120;
                            DWORD1(__b[0]) = v126;
                            OUTLINED_FUNCTION_18_12();
                            _os_log_impl(v127, v128, v129, v130, v131, 8u);
                          }

                          iAP2FileTransferCancel(v95);
LABEL_213:
                          if (v113)
                          {
                            free(v113);
                          }

LABEL_215:
                          platform_mediaLibrary_confirmLibraryPlaylistContentUpdate(v305, *(v2 + 8), *(v2 + 16));
                          platform_mediaLibrary_deleteParams(v2);
                          return 1;
                        }

LABEL_206:
                        OUTLINED_FUNCTION_68_4();
                        if (v52 && i >= 31)
                        {
                          v222 = *(v52 + 240);
                        }

                        else if (OUTLINED_FUNCTION_21())
                        {
                          OUTLINED_FUNCTION_1_21();
                          OUTLINED_FUNCTION_8_14();
                          _os_log_error_impl(v240, v241, v242, v243, v244, 0x12u);
                        }

                        v223 = OUTLINED_FUNCTION_66_1();
                        if (os_log_type_enabled(v223, v224))
                        {
                          OUTLINED_FUNCTION_103_0();
                          v225 = *(v2 + 32);
                          v226 = *(v2 + 40);
                          LODWORD(__b[0]) = 138414082;
                          *(__b + 4) = v305;
                          OUTLINED_FUNCTION_28_6(v227, v228, v229, v230, v231, v232, v233, v234, v287, *(&v287 + 1), v290, *(&v290 + 1), v293, *(&v293 + 1), v296, v298, v300, SHIDWORD(v300));
                          OUTLINED_FUNCTION_18_12();
                          _os_log_impl(v235, v236, v237, v238, v239, 0x42u);
                        }

                        goto LABEL_213;
                      }

                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    if (v64)
                    {
                      v93 = *(gLogObjects + 240);
                    }

                    else if (OUTLINED_FUNCTION_21())
                    {
                      OUTLINED_FUNCTION_87_3(3.8521e-34);
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v261, v262, v263, v264, v265, 0x12u);
                    }

                    v94 = &audioProductCerts_endpoint_publish_onceToken;
                    if (OUTLINED_FUNCTION_93())
                    {
                      v107 = *(v2 + 24);
                      *valuePtr = 134217984;
                      *&valuePtr[4] = v107;
                      OUTLINED_FUNCTION_15();
                      _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
                    }

                    v95 = 0;
                  }

                  v100 = 0;
                  inited = 0;
                  goto LABEL_117;
                }

                v113 = 0;
                goto LABEL_206;
              }
            }
          }
        }

LABEL_103:
        platform_mediaLibrary_confirmLibraryPlaylistContentUpdate(v4, *(v2 + 8), *(v2 + 16));
        return 0;
      }
    }
  }

  return result;
}

uint64_t __handleTransferEnd(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*v3)
      {
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if (gLogObjects)
        {
          v6 = gNumLogObjects < 31;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          if (OUTLINED_FUNCTION_17())
          {
            v35 = 134218240;
            *v36 = v4;
            OUTLINED_FUNCTION_3();
            *v37 = v5;
            OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v35);
          }
        }

        else
        {
          v9 = *(gLogObjects + 240);
        }

        if (OUTLINED_FUNCTION_75_0())
        {
          OUTLINED_FUNCTION_110();
          v35 = 67110144;
          *v36 = v16;
          *&v36[4] = 1024;
          *&v36[6] = v17;
          *v37 = 1024;
          *&v37[2] = v18;
          *v38 = 1024;
          *&v38[2] = v19;
          *v39 = 1024;
          *&v39[2] = a2;
          OUTLINED_FUNCTION_6_0();
          _os_log_debug_impl(v20, v21, OS_LOG_TYPE_DEBUG, v22, v23, 0x20u);
        }

        v10 = *(v3 + 104);
        result = 1;
        if (v10 <= 7 && ((1 << v10) & 0xD0) != 0)
        {
          if (*(v3 + 16))
          {
            v11 = *(v3 + 64);
            if (v11 == a2)
            {
              free(v11);
              *(v3 + 64) = 0;
            }

            else
            {
              v12 = gLogObjects;
              v13 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 31)
              {
                v14 = *(gLogObjects + 240);
              }

              else
              {
                v14 = &_os_log_default;
                if (OUTLINED_FUNCTION_17())
                {
                  v35 = 134218240;
                  *v36 = v12;
                  OUTLINED_FUNCTION_3();
                  *v37 = v13;
                  OUTLINED_FUNCTION_35(&_mh_execute_header, v33, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v35);
                }
              }

              if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
              {
                OUTLINED_FUNCTION_110();
                v24 = *(v3 + 64);
                v35 = 136316674;
                *v36 = "__handleTransferEnd";
                *&v36[8] = 1024;
                *v37 = v25;
                *&v37[4] = 1024;
                *v38 = v26;
                *&v38[4] = 1024;
                *v39 = v27;
                *&v39[4] = 1024;
                v40 = v28;
                v41 = 1024;
                v42 = a2;
                v43 = 1024;
                v44 = v24;
                OUTLINED_FUNCTION_6_0();
                _os_log_fault_impl(v29, v30, OS_LOG_TYPE_FAULT, v31, v32, 0x30u);
              }
            }
          }

          *(v3 + 16) = 0;
          *(v3 + 40) = 0;
          v15 = *(*v3 + 176);
          if (v15)
          {
            result = *(v15 + 16);
            if (result)
            {
              iap2_sessionFileTransfer_removeTransferForFeature(result, 13, v3);
              return 1;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void *_createFeature_14(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 21;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
    }
  }

  else
  {
    v8 = *(gLogObjects + 160);
  }

  v9 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_26_7();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  v16 = malloc_type_calloc(1uLL, 0x38uLL, 0x1080040A967669AuLL);
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_107();
    _calcWindowSize(v17, v18, v19, v20, v21, v22);
    *v16 = 0;
    v16[5] = 0;
    v16[6] = 0;
    v16[4] = 0;
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    v16[2] = 0;
    *(v16 + 6) = 0;
    *(v16 + 1) = 1;
    *(v16 + 2) = 1;
    *(v16 + 3) = 1;
    *(v16 + 4) = 1;
  }

  return v16;
}

uint64_t _destroyFeature_14(void **a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 21;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (OUTLINED_FUNCTION_17())
    {
      *v131 = 134218240;
      *&v131[4] = v4;
      *&v131[12] = 1024;
      *&v131[14] = v5;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v131);
    }
  }

  else
  {
    v9 = *(gLogObjects + 160);
  }

  if (OUTLINED_FUNCTION_82())
  {
    *v131 = 0;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    v16 = *a1;
    if (*a1)
    {
      v117 = a1;
      v17 = *a1;
      if (*v16 == 1)
      {
        platform_mediaLibrary_accessoryDetached(*(a2 + 8));
        v122 = *(v17 + 48);
        if (v122 >= 1)
        {
          v27 = 0;
          *&v26 = 136315394;
          v118 = v26;
          *&v26 = 134218240;
          v121 = v26;
          v120 = v17;
          while (1)
          {
            v28 = *(*(v17 + 40) + 8 * v27);
            if (v28)
            {
              break;
            }

LABEL_61:
            if (++v27 == v122)
            {
              goto LABEL_62;
            }
          }

          *&v29 = 0xAAAAAAAAAAAAAAAALL;
          *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v133 = v29;
          v132 = v29;
          *&v131[8] = 0xAAAAAAAAAAAAAA00;
          v123 = v28;
          *v131 = v28;
          LOBYTE(v132) = 0;
          v30 = OUTLINED_FUNCTION_38_7(v18, v19, v20, v21, v22, v23, v24, v25, v116, v117, v118, *(&v118 + 1), v119);
          v31 = gNumLogObjects;
          if (gLogObjects)
          {
            v32 = gNumLogObjects <= 30;
          }

          else
          {
            v32 = 1;
          }

          v33 = !v32;
          if (v30)
          {
            v34 = v30;
            if (v33)
            {
              v35 = *(gLogObjects + 240);
            }

            else
            {
              v37 = OUTLINED_FUNCTION_27();
              if (v37)
              {
                OUTLINED_FUNCTION_48_4(v37, v38, v39, v40, v41, v42, v43, v44, v116, v117, v118, *(&v118 + 1), v119, v120, v121);
                *v126 = v31;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v103, v104, v105, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v106, 0x12u);
              }
            }

            if (OUTLINED_FUNCTION_93_2())
            {
              *buf = v118;
              OUTLINED_FUNCTION_82_2();
              OUTLINED_FUNCTION_83_2();
              _os_log_impl(v45, v46, v47, "cleanupPendingFileTransfers: for library '%s' (%s)", v48, 0x16u);
            }

            v49 = -1;
            do
            {
              v50 = gLogObjects;
              v51 = gNumLogObjects;
              if (gLogObjects)
              {
                v52 = gNumLogObjects < 31;
              }

              else
              {
                v52 = 1;
              }

              if (v52)
              {
                if (OUTLINED_FUNCTION_27())
                {
                  *buf = v121;
                  *v125 = v50;
                  *&v125[8] = 1024;
                  *v126 = v51;
                  OUTLINED_FUNCTION_70_4();
                  _os_log_error_impl(v53, v54, v55, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v56, 0x12u);
                }
              }

              else
              {
                v57 = *(gLogObjects + 240);
              }

              if (OUTLINED_FUNCTION_93_2())
              {
                v58 = *v34;
                v59 = *(v34 + 1);
                v60 = obfuscatedPointer(*(v34 + 1));
                v61 = *(*(v34 + 1) + 109);
                v62 = *(v34 + 8);
                *buf = 67110144;
                *v125 = v58;
                *&v125[4] = 1024;
                *&v125[6] = v59;
                *v126 = 2048;
                *&v126[2] = v60;
                v127 = 1024;
                v128 = v61;
                v129 = 1024;
                v130 = v62;
                OUTLINED_FUNCTION_83_2();
                _os_log_impl(v63, v64, v65, "cleanupPendingFileTransfers: xferEntry(bufferID=%u type=%u fileXfer=%p(0x%02x) context=%hxh)", v66, 0x24u);
              }

              v67 = iap2_sessionFileTransfer_removeTransferForFeature(a2, 13, *(v34 + 1));
              v75 = OUTLINED_FUNCTION_38_7(v67, v68, v69, v70, v71, v72, v73, v74, v116, v117, v118, *(&v118 + 1), v119);
              v34 = v75;
              v76 = v49 + 1;
              if (!v75)
              {
                break;
              }

              ++v49;
            }

            while (v49 < 0x3E7);
            v17 = v120;
            v77 = v123;
            if (!v75 || v76 < 0x3E7)
            {
              goto LABEL_58;
            }

            v78 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v79 = *(gLogObjects + 240);
            }

            else
            {
              v94 = OUTLINED_FUNCTION_27();
              v79 = &_os_log_default;
              if (v94)
              {
                OUTLINED_FUNCTION_48_4(v94, v95, v96, v97, v98, v99, v100, v101, v116, v117, v118, *(&v118 + 1), v119, v120, v121);
                *v126 = v78;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v111, v112, v113, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v114, 0x12u);
                v79 = &_os_log_default;
              }
            }

            if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_58;
            }

            *buf = 0;
            v91 = buf;
            v88 = &_mh_execute_header;
            v89 = v79;
            v90 = OS_LOG_TYPE_DEFAULT;
            v92 = "Reached max file transfer entries before stopping cleanup!";
            v93 = 2;
          }

          else
          {
            if (v33)
            {
              v36 = *(gLogObjects + 240);
            }

            else
            {
              v80 = OUTLINED_FUNCTION_27();
              if (v80)
              {
                OUTLINED_FUNCTION_48_4(v80, v81, v82, v83, v84, v85, v86, v87, v116, v117, v118, *(&v118 + 1), v119, v120, v121);
                *v126 = v31;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v107, v108, v109, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v110, 0x12u);
              }
            }

            v77 = v123;
            if (!OUTLINED_FUNCTION_93_2())
            {
              goto LABEL_58;
            }

            *buf = v118;
            OUTLINED_FUNCTION_82_2();
            OUTLINED_FUNCTION_83_2();
            v92 = "cleanupPendingFileTransfers: for library '%s' (%s), No transfers found to cleanup!";
            v93 = 22;
          }

          _os_log_impl(v88, v89, v90, v92, v91, v93);
LABEL_58:
          v102 = v77[19];
          if (v102)
          {
            iAP2MsgCleanup(v102);
          }

          *(*(v17 + 40) + 8 * v27) = 0;
          free(v77);
          --*(v17 + 48);
          goto LABEL_61;
        }
      }

LABEL_62:
      platform_mediaLibrary_decrementUserCount();
      v115 = *(v17 + 40);
      if (v115)
      {
        free(v115);
        *(v17 + 40) = 0;
      }

      if (*v117)
      {
        free(*v117);
        *v117 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _startFeatureFromDevice_10(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 21;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
    }
  }

  else
  {
    v8 = *(gLogObjects + 160);
  }

  v9 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_26_7();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
  }

  v16 = OUTLINED_FUNCTION_91_0();
  if (v16)
  {
    platform_mediaLibrary_incrementUserCount();
    if (!a1 || (v17 = *(a1 + 8)) == 0)
    {
      v17 = 0;
    }

    platform_mediaLibrary_accessoryAttached(v17, *(v16 + 4));
  }

  return v16 != 0;
}

void _calcWindowSize(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v78 = a6;
  v8 = a1;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  v75 = a4;
  v76 = a5;
  v74 = a3;
  v80 = a1;
  if (!a1)
  {
    v31 = 0;
    HIDWORD(v77) = 0;
    HIDWORD(v79) = 0;
    OUTLINED_FUNCTION_97_1();
    goto LABEL_79;
  }

  LinkMaxCumAck = iap2_endpoint_getLinkMaxCumAck(a1);
  MaxSendPayloadSizeWithOverride = iap2_endpoint_getMaxSendPayloadSizeWithOverride(v8);
  LODWORD(v8) = gLogObjects;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 31;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v17 = &_os_log_default;
    if (OUTLINED_FUNCTION_75())
    {
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_39_5();
      _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
    }
  }

  else
  {
    v17 = *(gLogObjects + 240);
  }

  v19 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v19)
  {
    OUTLINED_FUNCTION_76_4(v19, v20, v21, v22, v23, v24, v25, v26, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_55_2();
    _os_log_impl(v27, v28, OS_LOG_TYPE_INFO, v29, v30, 0x28u);
  }

  v31 = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_56_5();
    v9 = &audioProductCerts_endpoint_publish_onceToken;
    goto LABEL_79;
  }

  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (!MaxSendPayloadSizeWithOverride)
  {
    OUTLINED_FUNCTION_56_5();
    goto LABEL_79;
  }

  v32 = 0;
  v33 = *(a2 + 144);
  v34 = 1;
  do
  {
    if ((v34 & v33) != 0)
    {
      if ((v34 & v33) == 0 || !v18)
      {
        switch(v34)
        {
          case 1uLL:
          case 4uLL:
            v32 += 12;
            goto LABEL_24;
          case 2uLL:
            v32 += 68;
            goto LABEL_24;
          case 3uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
            goto LABEL_24;
          case 8uLL:
            goto LABEL_23;
          default:
LABEL_103:
            JUMPOUT(0);
        }
      }

      v18 = v34 - 16 >= 0x30;
      if (v34 - 16 <= 0x30 && ((1 << (v34 - 16)) & 0x1000000010001) != 0 || (v18 = v34 >= 0x100, v34 == 256))
      {
LABEL_23:
        v32 += 5;
      }
    }

LABEL_24:
    v34 *= 2;
  }

  while (v34);
  v35 = 0;
  v36 = *(a2 + 136);
  v37 = 1;
  do
  {
    if ((v37 & v36) == 0)
    {
      goto LABEL_57;
    }

    if ((v37 & v36) == 0 || !v18)
    {
      switch(v37)
      {
        case 1uLL:
          goto LABEL_55;
        case 2uLL:
          goto LABEL_56;
        case 3uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
          goto LABEL_57;
        case 4uLL:
        case 8uLL:
          goto LABEL_54;
        default:
          goto LABEL_103;
      }
    }

    v18 = v37 >= 0x10;
    if (v37 == 16)
    {
      v35 += 8;
      goto LABEL_57;
    }

    v18 = v37 >= 0x20;
    if (v37 == 32)
    {
LABEL_55:
      v35 += 12;
      goto LABEL_57;
    }

    v18 = v37 >= 0x40;
    if (v37 == 64)
    {
      goto LABEL_56;
    }

    v18 = v37 >= 0x80;
    if (v37 == 128 || (v18 = v37 >= 0x100, v37 == 256) || (v18 = v37 >= 0x200, v37 == 512) || (v18 = v37 >= 0x400, v37 == 1024))
    {
LABEL_52:
      v35 += 6;
      goto LABEL_57;
    }

    v18 = v37 >= 0x800;
    if (v37 == 2048)
    {
      goto LABEL_55;
    }

    v18 = v37 >= 0x1000;
    if (v37 == 4096)
    {
      goto LABEL_56;
    }

    v18 = v37 >= 0x2000;
    if (v37 == 0x2000)
    {
      goto LABEL_55;
    }

    v18 = v37 >= 0x4000;
    if (v37 == 0x4000)
    {
      goto LABEL_56;
    }

    v18 = v37 >= 0x8000;
    if (v37 == 0x8000)
    {
      goto LABEL_55;
    }

    v18 = v37 >= 0x10000;
    if (v37 == 0x10000)
    {
      goto LABEL_56;
    }

    v18 = v37 >= 0x8000000;
    if (v37 == 0x8000000)
    {
      goto LABEL_52;
    }

    v18 = v37 >= 0x40000;
    if (v37 == 0x40000)
    {
LABEL_56:
      v35 += 68;
    }

    else
    {
      if (v37 == 0x80000)
      {
        v18 = 0;
        v38 = 1;
      }

      else
      {
        v18 = v37 >= 0x2000000;
        v38 = v37 == 0x2000000;
      }

      if (v38)
      {
LABEL_54:
        v35 += 5;
        goto LABEL_57;
      }

      v18 = v37 >= 0x20000;
      if (v37 == 0x20000)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    v37 *= 2;
  }

  while (v37);
  if (v32 | v35)
  {
    if (v35 + 124 <= (v32 + 124))
    {
      v39 = v32 + 124;
    }

    else
    {
      v39 = v35 + 124;
    }

    v40 = (v39 + (MaxSendPayloadSizeWithOverride >> 1) - 1) / v39;
    v41 = 0x186A0 / LinkMaxCumAck;
    if (v40 * v39 * LinkMaxCumAck > 0x186A0)
    {
      LODWORD(v8) = 0x186A0 / LinkMaxCumAck / v39;
    }

    else
    {
      LODWORD(v8) = (v39 + (MaxSendPayloadSizeWithOverride >> 1) - 1) / v39;
    }

    if (v40 * v39 * LinkMaxCumAck <= 0x186A0)
    {
      v41 = v40 * v39;
    }

    HIDWORD(v72) = v41;
    if (!v8)
    {
      if (gLogObjects && gNumLogObjects >= 31)
      {
        v42 = *(gLogObjects + 240);
      }

      else
      {
        v42 = &_os_log_default;
        if (OUTLINED_FUNCTION_75())
        {
          OUTLINED_FUNCTION_14_10();
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v66, v67, v68, v69, v70, 0x12u);
        }
      }

      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
      if (v43)
      {
        OUTLINED_FUNCTION_76_4(v43, v44, v45, v46, v47, v48, v49, v50, v71, v72, __SPAIR64__(LinkMaxCumAck, MaxSendPayloadSizeWithOverride), v74, v75, v76, v77, v78, v79, v80);
        OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_55_2();
        _os_log_debug_impl(v62, v63, OS_LOG_TYPE_DEBUG, v64, v65, 0x16u);
      }

      LODWORD(v8) = 1;
      v9 = &audioProductCerts_endpoint_publish_onceToken;
    }

    HIDWORD(v79) = LinkMaxCumAck;
    MaxSendPayloadSizeWithOverride = 5 * v8;
    HIDWORD(v77) = 5;
  }

  else
  {
    HIDWORD(v77) = 0;
    HIDWORD(v79) = 0;
    LODWORD(v8) = 0;
    OUTLINED_FUNCTION_97_1();
  }

  v31 = 1;
LABEL_79:
  if (gLogObjects)
  {
    v51 = *(v9 + 984) < 31;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    v57 = &_os_log_default;
    if (OUTLINED_FUNCTION_75())
    {
      OUTLINED_FUNCTION_39_5();
      _os_log_error_impl(v52, v53, v54, v55, v56, 0x12u);
    }
  }

  else
  {
    v57 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    if (v80)
    {
      *(v80 + 8);
    }

    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_55_2();
    _os_log_impl(v58, v59, OS_LOG_TYPE_DEFAULT, v60, v61, 0x58u);
  }

  if (v31)
  {
    if (v74)
    {
      *v74 = MaxSendPayloadSizeWithOverride;
    }

    if (v75)
    {
      *v75 = v8;
    }

    if (v76)
    {
      *v76 = HIDWORD(v79);
    }

    if (v78)
    {
      *v78 = HIDWORD(v77);
    }
  }
}

uint64_t iap2_externalaccessory_statusEASessionHandler(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v196 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v4 = a1;
  if (iAP2MsgGetMsgID(a2) != 59907)
  {
    return 0;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    return 0;
  }

  NextParam = FirstParam;
  v191 = v4;
  LOWORD(v4) = 0;
  v194 = 0;
  v195 = 0;
  v8 = 2;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  *&v6 = 134218240;
  v192 = v6;
  *&v6 = 67109120;
  v193 = v6;
  do
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (ParamID == 1)
    {
      DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v196);
      if (v196)
      {
        v149 = logObjectForModule_1(9);
        if (!os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v198 = 1;
        *&v198[4] = 1024;
        *&v198[6] = MsgID;
        v143 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_79;
      }

      v8 = DataAsU8;
      v17 = v9[491];
      v18 = gNumLogObjects;
      if (v17)
      {
        v19 = gNumLogObjects < 10;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = OUTLINED_FUNCTION_59();
        v73 = &_os_log_default;
        if (v20)
        {
          OUTLINED_FUNCTION_5_25(v20, v21, v22, v23, v24, v25, v26, v27, v190, v191, v192);
          v199 = v18;
          OUTLINED_FUNCTION_36_3();
          _os_log_error_impl(v28, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v31, 0x12u);
          v73 = &_os_log_default;
        }
      }

      else
      {
        v73 = *(v17 + 72);
      }

      v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);
      if (v74)
      {
        OUTLINED_FUNCTION_29_5(v74, v75, v76, v77, v78, v79, v80, v81, v190, v191, v192, *(&v192 + 1), v193);
        *v198 = v8;
        _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "eaSessinoIDStatus for SessionIDStatus = %d", buf, 8u);
      }

      v195 = 1;
    }

    else
    {
      v11 = ParamID;
      if (!ParamID)
      {
        DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v196);
        if (!v196)
        {
          LODWORD(v4) = DataAsU16;
          v13 = v9[491];
          v14 = gNumLogObjects;
          if (v13 && gNumLogObjects >= 10)
          {
            v15 = *(v13 + 72);
          }

          else
          {
            v57 = OUTLINED_FUNCTION_59();
            v15 = &_os_log_default;
            if (v57)
            {
              OUTLINED_FUNCTION_45(v57, v58, v59, v60, v61, v62, v63, v64, v190, v191, v192);
              *v198 = v13;
              OUTLINED_FUNCTION_20_4();
              v199 = v14;
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v82, v83, v84, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v85, 0x12u);
              v15 = &_os_log_default;
            }
          }

          v65 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          if (v65)
          {
            OUTLINED_FUNCTION_29_5(v65, v66, v67, v68, v69, v70, v71, v72, v190, v191, v192, *(&v192 + 1), v193);
            *v198 = v4;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "eaSessionID for SessionIDStatus = %d", buf, 8u);
          }

          v194 = 1;
          goto LABEL_38;
        }

        v149 = logObjectForModule_1(9);
        if (!os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v150 = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v198 = 0;
        *&v198[4] = 1024;
        *&v198[6] = v150;
        v143 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
LABEL_79:
        v144 = v149;
        goto LABEL_74;
      }

      v32 = v9;
      v33 = v9[491];
      v34 = gNumLogObjects;
      if (v33)
      {
        v35 = gNumLogObjects < 10;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = OUTLINED_FUNCTION_59();
        v48 = &_os_log_default;
        if (v36)
        {
          OUTLINED_FUNCTION_45(v36, v37, v38, v39, v40, v41, v42, v43, v190, v191, v192);
          *v198 = v33;
          OUTLINED_FUNCTION_20_4();
          v199 = v34;
          OUTLINED_FUNCTION_36_3();
          _os_log_error_impl(v44, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, 0x12u);
          v48 = &_os_log_default;
        }
      }

      else
      {
        v48 = *(v33 + 72);
      }

      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
      if (v49)
      {
        OUTLINED_FUNCTION_29_5(v49, v50, v51, v52, v53, v54, v55, v56, v190, v191, v192, *(&v192 + 1), v193);
        *v198 = v11;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
      }

      v9 = v32;
    }

LABEL_38:
    NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
  }

  while (NextParam);
  if ((v194 & v195 & 1) == 0)
  {
    return 0;
  }

  v86 = v9[491];
  v87 = gNumLogObjects;
  if (v86 && gNumLogObjects >= 10)
  {
    v88 = *(v86 + 72);
  }

  else
  {
    v88 = &_os_log_default;
    v89 = OUTLINED_FUNCTION_27();
    if (v89)
    {
      OUTLINED_FUNCTION_5_25(v89, v90, v91, v92, v93, v94, v95, v96, v190, v191, v192);
      v199 = v87;
      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_10(v138, v139, v140, v141, v142);
    }
  }

  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v198 = v4;
    *&v198[4] = 1024;
    *&v198[6] = v8;
    OUTLINED_FUNCTION_10_3();
    _os_log_impl(v97, v98, OS_LOG_TYPE_DEFAULT, v99, v100, 0xEu);
  }

  if (v8)
  {
    if (v8 != 1)
    {
      v101 = v9[491];
      v102 = gNumLogObjects;
      if (v101 && gNumLogObjects >= 10)
      {
        v103 = *(v101 + 72);
      }

      else
      {
        v103 = &_os_log_default;
        v107 = OUTLINED_FUNCTION_21();
        if (v107)
        {
          OUTLINED_FUNCTION_45(v107, v108, v109, v110, v111, v112, v113, v114, v190, v191, v192);
          *v198 = v101;
          OUTLINED_FUNCTION_20_4();
          v199 = v102;
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v145, v146, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_21())
      {
        return 0;
      }

      *buf = 67109376;
      *v198 = v8;
      *&v198[4] = 1024;
      *&v198[6] = v4;
      v143 = "Unknown sessionStatus %d (eaSessionID %d)";
      v144 = v103;
LABEL_74:
      _os_log_error_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, v143, buf, 0xEu);
      return 0;
    }

    v133 = platform_externalAccessory_copyEndpointUUIDForEASessionID(v4);
    v134 = _iap2_externalAccessory_removeEASessionStruct(v191, v133);
    if (v133)
    {
      CFRelease(v133);
    }

    if (v134)
    {
      _iAP2_closeEASession(v191, v4);
    }

    v2 = platform_externalAccessory_accessoryCloseExternalAccessorySession(v4);
    if ((v2 & 1) == 0)
    {
      v135 = v9[491];
      v136 = gNumLogObjects;
      if (v135 && gNumLogObjects >= 30)
      {
        v137 = *(v135 + 232);
      }

      else
      {
        v152 = OUTLINED_FUNCTION_27();
        if (v152)
        {
          OUTLINED_FUNCTION_5_25(v152, v153, v154, v155, v156, v157, v158, v159, v190, v191, v192);
          v199 = v136;
          OUTLINED_FUNCTION_10_3();
          OUTLINED_FUNCTION_10(v185, v186, v187, v188, v189);
        }
      }

      v160 = OUTLINED_FUNCTION_27();
      if (v160)
      {
        OUTLINED_FUNCTION_29_5(v160, v161, v162, v163, v164, v165, v166, v167, v190, v191, v192, *(&v192 + 1), v193);
        *v198 = v180;
        OUTLINED_FUNCTION_10_3();
        _os_log_error_impl(v181, v182, OS_LOG_TYPE_ERROR, v183, v184, 8u);
      }
    }

    v168 = v9[491];
    v169 = gNumLogObjects;
    if (v168 && gNumLogObjects >= 30)
    {
      v170 = *(v168 + 232);
    }

    else
    {
      v170 = &_os_log_default;
      v171 = OUTLINED_FUNCTION_13();
      if (v171)
      {
        OUTLINED_FUNCTION_5_25(v171, v172, v173, v174, v175, v176, v177, v178, v190, v191, v192);
        v199 = v169;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v179, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_INFO, "Close iAP2 EA Session based on accessory sending eiAP2ParamEA_SessionStatus_SessionStatusClosed", buf, 2u);
    }
  }

  else
  {
    v104 = v9[491];
    v105 = gNumLogObjects;
    if (v104 && gNumLogObjects >= 10)
    {
      v106 = *(v104 + 72);
    }

    else
    {
      v106 = &_os_log_default;
      v116 = OUTLINED_FUNCTION_21();
      if (v116)
      {
        OUTLINED_FUNCTION_45(v116, v117, v118, v119, v120, v121, v122, v123, v190, v191, v192);
        *v198 = v104;
        OUTLINED_FUNCTION_20_4();
        v199 = v105;
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v147, v148, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    v124 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
    if (v124)
    {
      OUTLINED_FUNCTION_29_5(v124, v125, v126, v127, v128, v129, v130, v131, v190, v191, v192, *(&v192 + 1), v193);
      *v198 = v132;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "SessionStatus OK for sessionID %d", buf, 8u);
    }

    return 1;
  }

  return v2;
}

uint64_t _iap2_externalAccessory_removeEASessionStruct(uint64_t a1, const void *a2)
{
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  Value = 0;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(__gActiveEASessionStructs, a2);
      if (Value)
      {
        CFDictionaryRemoveValue(__gActiveEASessionStructs, a2);
        _iap2_externalAccessory_cleanupEASessionStruct(Value);
        free(Value);
        Feature = iap2_feature_getFeature(a1, 0xAu);
        if (Feature)
        {
          CFDictionaryRemoveValue(*(Feature + 32), a2);
        }

        Value = 1;
      }
    }
  }

  pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
  return Value;
}

uint64_t _iAP2_closeEASession(uint64_t *a1, unsigned int a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 30;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (OUTLINED_FUNCTION_17())
    {
      v44 = 134218240;
      *v45 = v4;
      OUTLINED_FUNCTION_3();
      v46 = v5;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v44);
    }
  }

  else
  {
    v9 = *(gLogObjects + 232);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (a1)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (a1)
  {
    v21 = @"yes";
  }

  else
  {
    v21 = @"no";
  }

  v44 = 138412290;
  *v45 = v21;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_30_7(v22, v23, v24, v25, v26);
  if (!a1)
  {
    return 0;
  }

LABEL_10:
  v10 = gLogObjects;
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v12 = *(gLogObjects + 232);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    v44 = 134218240;
    *v45 = v10;
    OUTLINED_FUNCTION_3();
    v46 = v11;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v39, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v44);
  }

  if (OUTLINED_FUNCTION_75_0())
  {
    if (*a1)
    {
      v27 = @"yes";
    }

    else
    {
      v27 = @"no";
    }

    v44 = 138412290;
    *v45 = v27;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_30_7(v28, v29, v30, v31, v32);
  }

  if (!*a1)
  {
    return 0;
  }

  v13 = gLogObjects;
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v15 = *(gLogObjects + 232);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    v44 = 134218240;
    *v45 = v13;
    OUTLINED_FUNCTION_3();
    v46 = v14;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v41, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v44);
  }

  if (OUTLINED_FUNCTION_75_0())
  {
    v33 = a1[1];
    if (!v33)
    {
      v33 = @"no";
    }

    v44 = 138412290;
    *v45 = v33;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_30_7(v34, v35, v36, v37, v38);
  }

  if (!a1[1])
  {
    return 0;
  }

  v16 = iAP2MsgInit((a1 + 15), 59905, a1[24], 0xFFFF, 0, 0);
  iAP2MsgAddU16Param(v16, 0, 0, a2);
  v17 = gLogObjects;
  v18 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v19 = *(gLogObjects + 232);
  }

  else
  {
    v19 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      v44 = 134218240;
      *v45 = v17;
      OUTLINED_FUNCTION_3();
      v46 = v18;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v44);
    }
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v44 = 67109376;
    *v45 = a2;
    *&v45[4] = 1024;
    *&v45[6] = a2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "closing EA session for sessionID %d (0x%X)", &v44, 0xEu);
  }

  return iap2_sessionControl_sendOutgoingMessage(a1, v16);
}

uint64_t iap2_externalAccessory_closeEASession(uint64_t *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
  if (a1)
  {
    Feature = iap2_feature_getFeature(a1, 0xAu);
    if (Feature)
    {
      v6 = Feature;
      v7 = CFDictionaryGetValue(*(Feature + 24), Value);
      if (v7)
      {
        v8 = v7;
        CFDictionaryRemoveValue(_gActiveEASessions, Value);
        CFDictionaryRemoveAllValues(v8);
        CFDictionaryRemoveValue(*(v6 + 24), Value);
      }
    }
  }

  if (_iap2_externalAccessory_removeEASessionStruct(a1, Value))
  {
    v14 = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionIDKey);
    *v20 = -1431655766;
    CFNumberGetValue(v14, kCFNumberSInt32Type, v20);
    return _iAP2_closeEASession(a1, v20[0]);
  }

  else
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 30;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v20);
      }
    }

    else
    {
      v12 = *(gLogObjects + 232);
    }

    result = OUTLINED_FUNCTION_65();
    if (result)
    {
      OUTLINED_FUNCTION_38_8();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_30_7(v15, v16, v17, v18, v19);
      return 0;
    }
  }

  return result;
}

uint64_t iap2_externalAccessory_outgoingEADataAvailable(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1 || !*(a1 + 32) || !iap2_endpoint_isInitialized(a1))
  {
    goto LABEL_48;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
LABEL_48:
    v10 = 0;
    goto LABEL_73;
  }

  v5 = *(v4 + 24);
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  if (!v5)
  {
    goto LABEL_48;
  }

  Value = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionUUIDKey);
  v7 = CFDictionaryGetValue(__gActiveEASessionStructs, Value);
  if (!v7)
  {
    goto LABEL_48;
  }

  v9 = v7;
  v10 = 1;
  *(v7 + 3) = 1;
  if (Value && (v7[1] & 1) != 0)
  {
    if (*(v7 + 2))
    {
      *&v8 = 134218240;
      v118 = v8;
      do
      {
        v11 = *(v9 + 1);
        if (!v11)
        {
          break;
        }

        if (CFArrayGetCount(v11) < 1)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 1), 0);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        CFDataSetLength(ValueAtIndex, v9[2]);
        v122.length = v9[2];
        v122.location = 0;
        CFDataReplaceBytes(v13, v122, 0, 0);
        CFArrayAppendValue(*(v9 + 2), v13);
        CFArrayRemoveValueAtIndex(*(v9 + 1), 0);
        MutableEADataFromAppForSessionUUID = platform_externalAccessory_retrieveMutableEADataFromAppForSessionUUID(Value, v9[2]);
        if (!MutableEADataFromAppForSessionUUID)
        {
          v86 = gLogObjects;
          v87 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 30)
          {
            v88 = *(gLogObjects + 232);
          }

          else if (OUTLINED_FUNCTION_17())
          {
            *buf = v118;
            v120 = v86;
            OUTLINED_FUNCTION_2_1();
            v121 = v87;
            OUTLINED_FUNCTION_35(&_mh_execute_header, v111, v112, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          if (OUTLINED_FUNCTION_82())
          {
            v89 = *v9;
            *buf = 67109120;
            LODWORD(v120) = v89;
            OUTLINED_FUNCTION_27_1();
            _os_log_impl(v90, v91, OS_LOG_TYPE_INFO, v92, v93, 8u);
          }

          v94 = *(v9 + 2);
          if (v94)
          {
            if (*(v9 + 1))
            {
              v95 = CFArrayGetCount(v94) - 1;
              v96 = CFArrayGetValueAtIndex(*(v9 + 2), v95);
              if (v96)
              {
                CFArrayAppendValue(*(v9 + 1), v96);
                CFArrayRemoveValueAtIndex(*(v9 + 2), v95);
              }
            }
          }

          *(v9 + 3) = 0;
          goto LABEL_62;
        }

        v15 = MutableEADataFromAppForSessionUUID;
        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = *(v16 + 24);
          if (v17)
          {
            CFRetain(Value);
            CFRetain(v15);
            SessionForService = iAP2LinkGetSessionForService(v17, 2);
            MutableBytePtr = CFDataGetMutableBytePtr(v15);
            *MutableBytePtr = bswap32(*v9) >> 16;
            Length = CFDataGetLength(v15);
            v21 = iAP2LinkQueueSendData(v17, MutableBytePtr, Length, SessionForService, Value, _iap2_externalAccessory_eaDataQueuedCB, 0, 0);
            if (gLogObjects)
            {
              v22 = gNumLogObjects <= 29;
            }

            else
            {
              v22 = 1;
            }

            v23 = !v22;
            if (v21)
            {
              if (v23)
              {
                v24 = *(gLogObjects + 232);
              }

              else
              {
                v26 = OUTLINED_FUNCTION_19_0();
                v24 = &_os_log_default;
                if (v26)
                {
                  OUTLINED_FUNCTION_6_22(v26, v27, v28, v29, v30, v31, v32, v33, v118);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v78, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v81, 0x12u);
                  v24 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v34 = CFDataGetLength(v15);
                OUTLINED_FUNCTION_19_10(v34, v35, v36, v37, v38, v39, v40, v41, v42);
                _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "queued %lu ea bytes for eaSession %d", v43, 0x12u);
              }
            }

            else
            {
              if (v23)
              {
                v25 = *(gLogObjects + 232);
              }

              else
              {
                v44 = OUTLINED_FUNCTION_19_0();
                if (v44)
                {
                  OUTLINED_FUNCTION_6_22(v44, v45, v46, v47, v48, v49, v50, v51, v118);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v82, v83, v84, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v85, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_59())
              {
                v65 = CFDataGetLength(v15);
                OUTLINED_FUNCTION_19_10(v65, v66, v67, v68, v69, v70, v71, v72, v73);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v74, v75, v76, "Unable to queue %lu ea bytes for eaSession %d", v77, 0x12u);
              }
            }

            CFRelease(v15);
          }
        }

        if (CFDataGetLength(v15) != v9[2])
        {
          *(v9 + 3) = 0;
          CFRelease(v15);
          goto LABEL_62;
        }

        if (gLogObjects && gNumLogObjects >= 30)
        {
          v52 = *(gLogObjects + 232);
        }

        else
        {
          v53 = OUTLINED_FUNCTION_19_0();
          v52 = &_os_log_default;
          if (v53)
          {
            OUTLINED_FUNCTION_6_22(v53, v54, v55, v56, v57, v58, v59, v60, v118);
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v61, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
            v52 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "SST READ MAX POSSIBLE, WILL KEEP READING", buf, 2u);
        }

        CFRelease(v15);
      }

      while (*(v9 + 2));
    }

    v100 = gLogObjects;
    v101 = gNumLogObjects;
    if (gLogObjects)
    {
      v102 = gNumLogObjects < 10;
    }

    else
    {
      v102 = 1;
    }

    if (v102)
    {
      if (OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        v120 = v100;
        OUTLINED_FUNCTION_2_1();
        v121 = v101;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v103, v104, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    else
    {
      v105 = *(gLogObjects + 72);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v106 = *v9;
      *buf = 67109120;
      LODWORD(v120) = v106;
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v107, v108, OS_LOG_TYPE_INFO, v109, v110, 8u);
    }

LABEL_62:
    v97 = *(v9 + 1);
    if (!v97 || CFArrayGetCount(v97) <= 0)
    {
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v98 = *(gLogObjects + 232);
      }

      else
      {
        v98 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v113, v114, v115, v116, v117, 0x12u);
        }
      }

      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_58_0();
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "free buffers are not remaining for eaSessionUUID %@, stop notifications", buf, 0xCu);
      }

      platform_externalAccessory_stopIncomingDataNotificationsForEASessionUUID(Value);
    }

    v10 = 1;
  }

LABEL_73:
  pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
  return v10;
}

uint64_t iap2_externalAccessory_sendOutgoingEAData(uint64_t a1, const __CFDictionary *a2)
{
  v2 = a1;
  if (a1)
  {
    if (*(a1 + 32) && iap2_endpoint_isInitialized(a1) && (v4 = *(v2 + 32)) != 0 && (v5 = *(v4 + 24)) != 0)
    {
      v6 = kCFACCExternalAccessorySessionIDKey;
      Value = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionIDKey);
      valuePtr = -21846;
      CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
      key = kCFACCExternalAccessorySessionDataKey;
      v8 = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionDataKey);
      Length = CFDataGetLength(v8);
      v10 = kCFACCExternalAccessorySessionUUIDKey;
      v11 = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionUUIDKey);
      Copy = CFStringCreateCopy(kCFAllocatorDefault, v11);
      HIDWORD(v245) = iAP2LinkGetSessionForService(v5, 2);
      if (v11)
      {
        Copy = CFStringCreateCopy(kCFAllocatorDefault, v11);
      }

      allocator = kCFAllocatorDefault;
      v13 = OUTLINED_FUNCTION_44_6();
      v14 = &off_1001C3000;
      v252 = v5;
      if (v13 && CFDictionaryGetValue(*(v13 + 24), Copy))
      {
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 30)
        {
          v17 = *(gLogObjects + 232);
        }

        else
        {
          v17 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *buf = 134218240;
            *v256 = v15;
            OUTLINED_FUNCTION_17_3();
            *&v256[10] = v16;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v200, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v256 = Copy;
          OUTLINED_FUNCTION_30_7(&_mh_execute_header, v17, v25, "has EA Session dictionary for eaSessionUUID %@", buf);
        }
      }

      else
      {
        *buf = valuePtr;
        v241 = OUTLINED_FUNCTION_44_6();
        if (v241)
        {
          v18 = Copy;
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v20 = v2;
          v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
          CFDictionaryAddValue(Mutable, v6, v21);
          v22 = v21;
          v2 = v20;
          v5 = v252;
          CFRelease(v22);
          v23 = CFStringCreateCopy(kCFAllocatorDefault, *(v2 + 8));
          CFDictionaryAddValue(Mutable, kCFACCExternalAccessoryProtocolEndpointUUIDKey, v23);
          CFRelease(v23);
          CFDictionaryAddValue(Mutable, v10, v18);
          CFDictionaryAddValue(*(v241 + 24), v18, Mutable);
          CFDictionaryAddValue(_gActiveEASessions, v18, Mutable);
          v24 = Mutable;
          Copy = v18;
          v14 = &off_1001C3000;
          CFRelease(v24);
        }
      }

      v26 = OUTLINED_FUNCTION_44_6();
      if (!v26 || (v27 = CFDictionaryGetValue(*(v26 + 24), Copy)) == 0 || (v28 = CFDictionaryGetValue(v27, key)) == 0 || !CFDataGetLength(v28))
      {
        v29 = OUTLINED_FUNCTION_44_6();
        cf = Copy;
        if (v29)
        {
          v242 = CFDictionaryGetValue(*(v29 + 24), v11);
        }

        else
        {
          v242 = 0;
        }

        v30 = (iap2_endpoint_getMaxSendPayloadSize(v2) - 2);
        if (Length % v30)
        {
          v31 = Length / v30 + 1;
        }

        else
        {
          v31 = Length / v30;
        }

        keya = CFDataGetBytePtr(v8);
        if (!v31)
        {
          LOBYTE(v2) = 0;
          Copy = cf;
          goto LABEL_108;
        }

        v210 = v2;
        v213 = Length;
        v33 = 0;
        LOBYTE(v2) = 0;
        v34 = 0;
        v35 = 0;
        if (Length >= v30)
        {
          v36 = v30;
        }

        else
        {
          v36 = 0;
        }

        if (Length % v30)
        {
          v36 = Length % v30;
        }

        __n = v30;
        v238 = v36;
        v37 = v36 + 2;
        v38 = v30 + 2;
        *&v32 = *(v14 + 71);
        v216 = v32;
        *&v32 = 67109632;
        v227 = v32;
        while (1)
        {
          if (v31 - v33 < 2)
          {
            OUTLINED_FUNCTION_18_13();
            v64 = malloc_type_calloc(v61, v62, v63);
            if (!v64)
            {
              v90 = gLogObjects;
              v91 = gNumLogObjects;
              if (gLogObjects)
              {
                v92 = gNumLogObjects < 30;
              }

              else
              {
                v92 = 1;
              }

              if (v92)
              {
                v30 = &_os_log_default;
                if (OUTLINED_FUNCTION_18())
                {
                  *buf = v216;
                  *v256 = v90;
                  OUTLINED_FUNCTION_17_3();
                  *&v256[10] = v91;
                  OUTLINED_FUNCTION_28();
                  _os_log_error_impl(v93, v94, v95, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v96, 0x12u);
                }
              }

              else
              {
                v30 = *(gLogObjects + 232);
              }

              if (!OUTLINED_FUNCTION_18())
              {
                goto LABEL_78;
              }

LABEL_100:
              *buf = 0;
              OUTLINED_FUNCTION_28();
              _os_log_error_impl(v171, v172, v173, "dataBuf is NULL!", v174, 2u);
LABEL_78:
              v99 = 0;
              goto LABEL_97;
            }

            v72 = OUTLINED_FUNCTION_26_8(v64, v65, v66, v67, v68, v69, v70, v71, v210, v213, v216, *(&v216 + 1), allocator, cf, v227, *(&v227 + 1), v232, __n, v238, v242, v245, keya, v252, *v253, *&v253[4], valuePtr);
            memcpy(v72, v73, v240);
            OUTLINED_FUNCTION_3_27();
            v79 = OUTLINED_FUNCTION_42_3(v5, v30, v37, v74, v75, v76, v77, v78, v212, v215, v218, v220, allocatorb, cfb, v229, v231, v234, __nb, v240, v244, v247, v249);
            LOBYTE(v2) = v79;
            if (gLogObjects)
            {
              v80 = gNumLogObjects <= 29;
            }

            else
            {
              v80 = 1;
            }

            v81 = !v80;
            if (v79)
            {
              if (v81)
              {
                v82 = *(gLogObjects + 232);
              }

              else
              {
                v82 = &_os_log_default;
                v117 = OUTLINED_FUNCTION_19_0();
                if (v117)
                {
                  OUTLINED_FUNCTION_1_22(v117, v118, v119, v120, v121, v122, v123, v124, v210, v213, v216);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v179, v180, v181, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v182, 0x12u);
                }
              }

              v125 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
              if (v125)
              {
                OUTLINED_FUNCTION_9_18(v125, v126, v127, v128, v129, v130, v131, v132, v210, v213, v216, *(&v216 + 1), allocator, cf, v227);
                *v256 = v238;
                OUTLINED_FUNCTION_4_26();
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "queued %d ea bytes for LAST packet %d, eaSession %d", v133, 0x14u);
              }

              v34 += v238;
              goto LABEL_96;
            }

            if (v81)
            {
              v98 = *(gLogObjects + 232);
            }

            else
            {
              v155 = OUTLINED_FUNCTION_19_0();
              if (v155)
              {
                OUTLINED_FUNCTION_1_22(v155, v156, v157, v158, v159, v160, v161, v162, v210, v213, v216);
                OUTLINED_FUNCTION_11_11();
                _os_log_error_impl(v187, v188, v189, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v190, 0x12u);
              }
            }

            v163 = OUTLINED_FUNCTION_19_0();
            if (!v163)
            {
              goto LABEL_96;
            }

            OUTLINED_FUNCTION_9_18(v163, v164, v165, v166, v167, v168, v169, v170, v210, v213, v216, *(&v216 + 1), allocator, cf, v227);
            *v256 = v238;
            OUTLINED_FUNCTION_4_26();
            OUTLINED_FUNCTION_11_11();
            v154 = "unable to queue %d ea bytes for LAST packet %d, eaSession %d";
          }

          else
          {
            OUTLINED_FUNCTION_18_13();
            v42 = malloc_type_calloc(v39, v40, v41);
            if (!v42)
            {
              v83 = gLogObjects;
              v84 = gNumLogObjects;
              if (gLogObjects)
              {
                v85 = gNumLogObjects < 30;
              }

              else
              {
                v85 = 1;
              }

              if (v85)
              {
                v30 = &_os_log_default;
                if (OUTLINED_FUNCTION_18())
                {
                  *buf = v216;
                  *v256 = v83;
                  OUTLINED_FUNCTION_17_3();
                  *&v256[10] = v84;
                  OUTLINED_FUNCTION_28();
                  _os_log_error_impl(v86, v87, v88, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v89, 0x12u);
                }
              }

              else
              {
                v30 = *(gLogObjects + 232);
              }

              if (OUTLINED_FUNCTION_18())
              {
                goto LABEL_100;
              }

              goto LABEL_78;
            }

            v50 = OUTLINED_FUNCTION_26_8(v42, v43, v44, v45, v46, v47, v48, v49, v210, v213, v216, *(&v216 + 1), allocator, cf, v227, *(&v227 + 1), v232, __n, v238, v242, v245, keya, v252, *v253, *&v253[4], valuePtr);
            memcpy(v50, v51, __na);
            OUTLINED_FUNCTION_3_27();
            v57 = OUTLINED_FUNCTION_42_3(v5, v30, v38, v52, v53, v54, v55, v56, v211, v214, v217, v219, allocatora, cfa, v228, v230, v233, __na, v239, v243, v246, v248);
            LOBYTE(v2) = v57;
            if (gLogObjects)
            {
              v58 = gNumLogObjects <= 29;
            }

            else
            {
              v58 = 1;
            }

            v59 = !v58;
            if (v57)
            {
              if (v59)
              {
                v60 = *(gLogObjects + 232);
              }

              else
              {
                v60 = &_os_log_default;
                v100 = OUTLINED_FUNCTION_19_0();
                if (v100)
                {
                  OUTLINED_FUNCTION_1_22(v100, v101, v102, v103, v104, v105, v106, v107, v210, v213, v216);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v175, v176, v177, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v178, 0x12u);
                }
              }

              v108 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);
              if (v108)
              {
                OUTLINED_FUNCTION_9_18(v108, v109, v110, v111, v112, v113, v114, v115, v210, v213, v216, *(&v216 + 1), allocator, cf, v227);
                *v256 = __n;
                OUTLINED_FUNCTION_4_26();
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "queued %d ea bytes for packet %d, eaSession %d", v116, 0x14u);
              }

              v34 += __n;
              goto LABEL_96;
            }

            if (v59)
            {
              v97 = *(gLogObjects + 232);
            }

            else
            {
              v134 = OUTLINED_FUNCTION_19_0();
              if (v134)
              {
                OUTLINED_FUNCTION_1_22(v134, v135, v136, v137, v138, v139, v140, v141, v210, v213, v216);
                OUTLINED_FUNCTION_11_11();
                _os_log_error_impl(v183, v184, v185, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v186, 0x12u);
              }
            }

            v142 = OUTLINED_FUNCTION_19_0();
            if (!v142)
            {
              goto LABEL_96;
            }

            OUTLINED_FUNCTION_9_18(v142, v143, v144, v145, v146, v147, v148, v149, v210, v213, v216, *(&v216 + 1), allocator, cf, v227);
            *v256 = __n;
            OUTLINED_FUNCTION_4_26();
            OUTLINED_FUNCTION_11_11();
            v154 = "Unable to queue %d ea bytes for packet %d, eaSession %d";
          }

          _os_log_error_impl(v150, v151, v152, v154, v153, 0x14u);
LABEL_96:
          v5 = v252;
          v99 = v2 ^ 1;
          free(v30);
LABEL_97:
          if (v31 > ++v35)
          {
            v33 = v35;
            if ((v99 & 1) == 0)
            {
              continue;
            }
          }

          Copy = cf;
          if (v99)
          {
            v191 = gLogObjects;
            v192 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 30)
            {
              v193 = *(gLogObjects + 232);
              v194 = allocator;
            }

            else
            {
              v193 = &_os_log_default;
              v194 = allocator;
              if (OUTLINED_FUNCTION_13())
              {
                *buf = v216;
                *v256 = v191;
                OUTLINED_FUNCTION_17_3();
                *&v256[10] = v192;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v201, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
              }
            }

            if (OUTLINED_FUNCTION_13())
            {
              *buf = 67109888;
              *v256 = valuePtr;
              *&v256[4] = 2048;
              *&v256[6] = v34;
              v257 = 1024;
              v258 = v213 - v34;
              v259 = 1024;
              v260 = v213;
              _os_log_error_impl(&_mh_execute_header, v193, OS_LOG_TYPE_ERROR, "Queue overrun encountered for eaSession %d. byteCounter = %llu, remainingBytes = %d, originalLen was %d", buf, 0x1Eu);
            }

            v202 = CFDataCreateWithBytesNoCopy(v194, &keya[v34], (v213 - v34), kCFAllocatorNull);
            _queueOutgoingDataForEASessionUUID(v210, cf, v202);
            CFRelease(v202);
          }

          goto LABEL_108;
        }
      }

      v196 = v8;
      v197 = gLogObjects;
      v198 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v199 = *(gLogObjects + 232);
      }

      else
      {
        v199 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          *buf = *(v14 + 71);
          *v256 = v197;
          OUTLINED_FUNCTION_17_3();
          *&v256[10] = v198;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v203, v204, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEBUG, "has pending outgoing EA data in the eaSessionDictionary", buf, 2u);
      }

      _queueOutgoingDataForEASessionUUID(v2, Copy, v196);
      v205 = gLogObjects;
      v206 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v207 = *(gLogObjects + 232);
      }

      else
      {
        v207 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *buf = *(v14 + 71);
          *v256 = v205;
          OUTLINED_FUNCTION_17_3();
          *&v256[10] = v206;
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v208, v209, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (OUTLINED_FUNCTION_65())
      {
        *buf = 67109378;
        *v256 = valuePtr;
        *&v256[4] = 2112;
        *&v256[6] = v11;
        _os_log_debug_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEBUG, "Queued all bytes for future send for eaSession %d (sessionUUID %@)", buf, 0x12u);
      }

      LOBYTE(v2) = 1;
LABEL_108:
      if (Copy)
      {
        CFRelease(Copy);
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

void _queueOutgoingDataForEASessionUUID(uint64_t a1, const void *a2, const __CFData *a3)
{
  if (a1)
  {
    Feature = iap2_feature_getFeature(a1, 0xAu);
    if (Feature)
    {
      v6 = Feature;
      Length = CFDataGetLength(a3);
      Value = CFDictionaryGetValue(*(v6 + 24), a2);
      if (Value)
      {
        v9 = Value;
        v10 = kCFACCExternalAccessorySessionDataKey;
        v11 = CFDictionaryGetValue(Value, kCFACCExternalAccessorySessionDataKey);
        if (v11)
        {
          Mutable = v11;
        }

        else
        {
          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          CFDictionaryAddValue(v9, v10, Mutable);
          CFRelease(Mutable);
          if (!Mutable)
          {
            return;
          }
        }

        if (CFDataGetLength(Mutable) + Length <= 0x500000)
        {
          BytePtr = CFDataGetBytePtr(a3);
          CFDataAppendBytes(Mutable, BytePtr, Length);
          if (gLogObjects && gNumLogObjects >= 30)
          {
            v15 = *(gLogObjects + 232);
          }

          else
          {
            v15 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              OUTLINED_FUNCTION_2_3();
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v23);
            }
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v23[0] = 67109120;
            v23[1] = Length;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "queueOutgoingData: Queued %d bytes in cache", v23, 8u);
          }
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 30)
          {
            v13 = *(gLogObjects + 232);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v20, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v23);
          }

          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_38_8();
            OUTLINED_FUNCTION_15_1();
            _os_log_error_impl(v16, v17, OS_LOG_TYPE_ERROR, v18, v19, 0xCu);
          }
        }
      }
    }
  }
}

void _eaDataQueuedCB(int a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
  if (Value && CFDictionaryContainsKey(_gActiveEASessions, Value))
  {
    v4 = kCFACCExternalAccessorySessionDataKey;
    v5 = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionDataKey);
    if (v5)
    {
      Length = CFDataGetLength(v5);
      if (Length)
      {
        v7 = CFDictionaryGetValue(theDict, kCFACCExternalAccessoryProtocolEndpointUUIDKey);
        v8 = gLogObjects;
        v9 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 30)
        {
          v10 = *(gLogObjects + 232);
        }

        else
        {
          v10 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = 134218240;
            *v97 = v8;
            OUTLINED_FUNCTION_2_1();
            v98 = v9;
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v64, v65, v66, v67, v68, 0x12u);
          }
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_2_1();
          v98 = Length;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_eaDataQueuedCB: Have more data to send in cache, eaSessionUUID %@, pendingDataLength = %d", buf, 0x12u);
        }

        EndpointWithUUID = acc_manager_getEndpointWithUUID(v7);
        if (EndpointWithUUID)
        {
          v20 = EndpointWithUUID[7];
          v21 = *(v20 + 32);
          if (v21)
          {
            v22 = *(v21 + 24);
            if (v22)
            {
              SessionForService = iAP2LinkGetSessionForService(*(v21 + 24), 2);
              v24 = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionIDKey);
              if (v24)
              {
                valuePtr = -21846;
                CFNumberGetValue(v24, kCFNumberSInt16Type, &valuePtr);
                v25 = CFDictionaryGetValue(theDict, v4);
                if (v25)
                {
                  v26 = v25;
                  v27 = CFDataGetLength(v25);
                  v28 = iap2_endpoint_getMaxSendPayloadSize(v20) - 2;
                  v94 = v27;
                  if (v27 > v28)
                  {
                    LOWORD(v27) = v28;
                  }

                  BytePtr = CFDataGetBytePtr(v26);
                  v30 = v27 + 2;
                  OUTLINED_FUNCTION_18_13();
                  v32 = malloc_type_calloc(1uLL, v30, v31);
                  if (v32)
                  {
                    v33 = v32;
                    *v32 = bswap32(valuePtr) >> 16;
                    v34 = memcpy(v32 + 2, BytePtr, v27);
                    OUTLINED_FUNCTION_3_27(v34);
                    v36 = iAP2LinkQueueSendData(v22, v33, v30, SessionForService, theDict, v35, 0, 0);
                    v37 = gLogObjects;
                    v38 = gNumLogObjects;
                    if (gLogObjects)
                    {
                      v39 = gNumLogObjects <= 29;
                    }

                    else
                    {
                      v39 = 1;
                    }

                    v40 = !v39;
                    if (v36)
                    {
                      if (v40)
                      {
                        v41 = *(gLogObjects + 232);
                      }

                      else if (OUTLINED_FUNCTION_17())
                      {
                        *buf = 134218240;
                        *v97 = v37;
                        OUTLINED_FUNCTION_2_1();
                        v98 = v38;
                        OUTLINED_FUNCTION_35(&_mh_execute_header, v87, v88, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      if (OUTLINED_FUNCTION_82())
                      {
                        OUTLINED_FUNCTION_28_7();
                        OUTLINED_FUNCTION_27_1();
                        _os_log_impl(v53, v54, OS_LOG_TYPE_INFO, v55, v56, 0xEu);
                      }

                      v57 = gLogObjects;
                      v58 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 30)
                      {
                        v59 = *(gLogObjects + 232);
                      }

                      else if (OUTLINED_FUNCTION_17())
                      {
                        *buf = 134218240;
                        *v97 = v57;
                        OUTLINED_FUNCTION_2_1();
                        v98 = v58;
                        OUTLINED_FUNCTION_35(&_mh_execute_header, v84, v85, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      if (OUTLINED_FUNCTION_75_0())
                      {
                        *buf = 67109120;
                        *v97 = v27;
                        OUTLINED_FUNCTION_27_1();
                        _os_log_debug_impl(v74, v75, OS_LOG_TYPE_DEBUG, v76, v77, 8u);
                      }

                      v99.length = v27;
                      v99.location = 0;
                      CFDataDeleteBytes(v26, v99);
                      v60 = CFDataGetLength(v26);
                      v61 = gLogObjects;
                      v62 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 30)
                      {
                        v63 = *(gLogObjects + 232);
                      }

                      else
                      {
                        v63 = &_os_log_default;
                        if (OUTLINED_FUNCTION_27())
                        {
                          *buf = 134218240;
                          *v97 = v61;
                          OUTLINED_FUNCTION_2_1();
                          v98 = v62;
                          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v86, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                        }
                      }

                      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 67109376;
                        *v97 = v94;
                        *&v97[4] = 1024;
                        *&v97[6] = v60;
                        _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Old cache length was %d, new length is %d", buf, 0xEu);
                      }
                    }

                    else
                    {
                      if (v40)
                      {
                        v52 = *(gLogObjects + 232);
                      }

                      else if (OUTLINED_FUNCTION_21())
                      {
                        *buf = 134218240;
                        *v97 = v37;
                        OUTLINED_FUNCTION_2_1();
                        v98 = v38;
                        OUTLINED_FUNCTION_7_17();
                        _os_log_error_impl(v89, v90, v91, v92, v93, 0x12u);
                      }

                      if (OUTLINED_FUNCTION_21())
                      {
                        OUTLINED_FUNCTION_28_7();
                        OUTLINED_FUNCTION_7_17();
                        _os_log_error_impl(v78, v79, v80, v81, v82, 0xEu);
                      }
                    }

                    free(v33);
                    return;
                  }

                  v49 = gLogObjects;
                  v50 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 30)
                  {
                    v51 = *(gLogObjects + 232);
                  }

                  else
                  {
                    v51 = &_os_log_default;
                    if (OUTLINED_FUNCTION_13())
                    {
                      *buf = 134218240;
                      *v97 = v49;
                      OUTLINED_FUNCTION_2_1();
                      v98 = v50;
                      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                    }
                  }

                  if (OUTLINED_FUNCTION_13())
                  {
                    *buf = 0;
                    v43 = &_mh_execute_header;
                    v46 = "dataBuf is NULL!";
                    v47 = buf;
                    v44 = v51;
                    v45 = OS_LOG_TYPE_ERROR;
                    v48 = 2;
                    goto LABEL_47;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v18 = *(gLogObjects + 232);
      }

      else
      {
        v18 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v69, v70, v71, v72, v73, 0x12u);
        }
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_30_7(&_mh_execute_header, v18, v42, "_eaDataQueuedCB No pending data for sessionUUID %@", buf);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 30;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_7_17();
        _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
      }
    }

    else
    {
      v17 = *(gLogObjects + 232);
    }

    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_7_17();
      v48 = 12;
LABEL_47:
      _os_log_error_impl(v43, v44, v45, v46, v47, v48);
    }
  }
}

void *_createEAFeature(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0x28uLL, 0x600409743DB05uLL);
  v2 = v1;
  if (v1)
  {
    v1[4] = 0;
    *v1 = 0u;
    *(v1 + 1) = 0u;
    if (_createEAFeature_onceToken != -1)
    {
      dispatch_once(&_createEAFeature_onceToken, &__block_literal_global_21);
    }
  }

  return v2;
}

uint64_t _destroyEAFeature(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *result;
    if (*result)
    {
      platform_externalAccessory_removeEAASessionCountForConnection(*(a2 + 16));
      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      v4 = *(v3 + 8);
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v6 = Count;
          for (i = 0; i != v6; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 8), i);
            v9 = ValueAtIndex[1];
            if (v9)
            {
              CFRelease(v9);
            }

            free(ValueAtIndex);
          }
        }

        v10 = *(v3 + 8);
        if (v10)
        {
          CFRelease(v10);
          *(v3 + 8) = 0;
        }
      }

      v11 = *(v3 + 16);
      if (v11)
      {
        CFDictionaryRemoveAllValues(v11);
        v12 = *(v3 + 16);
        if (v12)
        {
          CFRelease(v12);
          *(v3 + 16) = 0;
        }
      }

      v13 = *(v3 + 24);
      if (v13)
      {
        CFDictionaryApplyFunction(v13, _CFDictionaryApplierFunction_deactiveEASession, 0);
        CFDictionaryRemoveAllValues(*(v3 + 24));
        v14 = *(v3 + 24);
        if (v14)
        {
          CFRelease(v14);
          *(v3 + 24) = 0;
        }
      }

      pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
      v15 = *(v3 + 32);
      if (v15)
      {
        CFDictionaryApplyFunction(v15, _CFDictionaryApplierFunction_deactiveEASessionStruct, 0);
        CFDictionaryRemoveAllValues(*(v3 + 32));
        v16 = *(v3 + 32);
        if (v16)
        {
          CFRelease(v16);
          *(v3 + 32) = 0;
        }
      }

      pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
      if (*v2)
      {
        free(*v2);
        *v2 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _CFDictionaryApplierFunction_deactiveEASession(int a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 30;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12);
      }
    }

    else
    {
      v6 = *(gLogObjects + 232);
    }

    if (OUTLINED_FUNCTION_65())
    {
      OUTLINED_FUNCTION_38_8();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_30_7(v7, v8, v9, v10, v11);
    }

    CFDictionaryRemoveValue(_gActiveEASessions, Value);
  }
}

void _CFDictionaryApplierFunction_deactiveEASessionStruct(const void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 30;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (OUTLINED_FUNCTION_17())
      {
        v14 = 134218240;
        v15 = v4;
        OUTLINED_FUNCTION_3();
        v16 = v5;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v14);
      }
    }

    else
    {
      v9 = *(gLogObjects + 232);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v14 = 138412290;
      v15 = a1;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v10, v11, OS_LOG_TYPE_INFO, v12, v13, 0xCu);
    }

    CFDictionaryRemoveValue(__gActiveEASessionStructs, a1);
    _iap2_externalAccessory_cleanupEASessionStruct(a2);
    free(a2);
  }
}

void _iap2_externalAccessory_cleanupEASessionStruct(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    a1[3] = 0;
    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    a1[1] = 0;
    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    a1[2] = 0;
  }
}

uint64_t _iap2_externalAccessory_eaDataQueuedCB(uint64_t a1, const void *a2)
{
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  if (a2)
  {
    Value = CFDictionaryGetValue(__gActiveEASessionStructs, a2);
    if (Value)
    {
      v4 = Value;
      EndpointWithUUID = acc_manager_getEndpointWithUUID(Value[3]);
      if (EndpointWithUUID)
      {
        if (EndpointWithUUID[7])
        {
          v6 = v4[2];
          if (v6)
          {
            if (v4[1])
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
              CFArrayAppendValue(v4[1], ValueAtIndex);
              CFArrayRemoveValueAtIndex(v4[2], 0);
            }
          }
        }

        v8 = v4[1];
        if (v8 && CFArrayGetCount(v8) >= 1)
        {
          if (gLogObjects && gNumLogObjects >= 30)
          {
            v9 = *(gLogObjects + 232);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v16, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v18);
          }

          if (OUTLINED_FUNCTION_65())
          {
            OUTLINED_FUNCTION_38_8();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_30_7(v11, v12, v13, v14, v15);
          }

          platform_externalAccessory_startIncomingDataNotificationsForEASessionUUID(a2);
        }
      }
    }
  }

  CFRelease(a2);
  return pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
}

void iap2_externalAccessory_openEASession_cold_2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_30_7(&_mh_execute_header, a2, a3, "Creating mutable copy of sessionUUID string %@", &v3);
}

void _parseIdentificationSupportedEAProtocol_cold_3(unsigned __int8 *a1, CFStringRef theString, NSObject *a3)
{
  v4 = *a1;
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2080;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  OUTLINED_FUNCTION_10(&_mh_execute_header, a3, v5, "Already have an ea protocol for ID %d (protocol %s)", v6);
}

_BYTE *_createFeature_15(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

id _destroyFeature_15(void **a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*a2 && (v5 = a2[1]) != 0 && *a1)
    {
      if ((platform_usb_set_mode_monitoring(v5, 0) & 1) == 0)
      {
        v6 = gLogObjects;
        v7 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 34)
        {
          v8 = *(gLogObjects + 264);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          v24 = 134218240;
          v25 = v6;
          OUTLINED_FUNCTION_3();
          v26 = v7;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v18, v19, v20, v21, v22, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          LOWORD(v24) = 0;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v13, v14, v15, v16, v17, 2u);
        }
      }

      v2 = platform_usb_set_fault_monitoring(a2[1], 0);
      if ((v2 & 1) == 0)
      {
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 34)
        {
          v11 = *(gLogObjects + 264);
        }

        else
        {
          v11 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            v24 = 134218240;
            v25 = v9;
            OUTLINED_FUNCTION_3();
            v26 = v10;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v24);
          }
        }

        if (OUTLINED_FUNCTION_17())
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to disable usb fault monitoring!!", &v24, 2u);
        }
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _startFeatureFromDevice_11(uint64_t *a1)
{
  if (a1 && *a1 && a1[1])
  {
    if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x7E01u))
    {
      OUTLINED_FUNCTION_8_15();
      if (*a1)
      {
        mode = platform_usb_get_mode(a1[1]);
        if (mode)
        {
          if (mode != 1)
          {
            goto LABEL_27;
          }

          v3 = 1;
        }

        else
        {
          v3 = 0;
        }

        iAP2MsgAddVoidParam((a1 + 15), 0, v3);
        if (iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15)))
        {
          v5 = 1;
LABEL_28:
          platform_usb_set_mode_monitoring(a1[1], 1);
          return v5;
        }

        v6 = gLogObjects;
        v7 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 34)
        {
          v8 = *(gLogObjects + 264);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          v25 = 134218240;
          v26 = v6;
          OUTLINED_FUNCTION_3();
          v27 = v7;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v20, v21, v22, v23, v24, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          LOWORD(v25) = 0;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v15, v16, v17, v18, v19, 2u);
        }

LABEL_27:
        v5 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v4 = *(gLogObjects + 264);
      }

      else
      {
        v4 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_5_9();
          OUTLINED_FUNCTION_40_1();
          _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
        }
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v25) = 0;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "_startFeatureFromDevice: Not identified for message USBModeNotification", &v25, 2u);
      }
    }
  }

  return 0;
}

uint64_t _checkIdentificationInfo_21(uint64_t *a1)
{
  v33 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo__kMsgUSBHostModeList, 3u, &v33);
  if (v2)
  {
    return v2;
  }

  if (v33 != 1)
  {
    v26 = 0;
    goto LABEL_43;
  }

  if (*a1 && (acc_endpoint_getTransportType(*a1) == 6 || !acc_endpoint_getTransportType(*a1) || acc_endpoint_getTransportType(*a1) == 7 || acc_endpoint_getTransportType(*a1) == 1 || acc_endpoint_getTransportType(*a1) == 5))
  {
    v3 = iap2_identification_transportComponents(a1);
    if (v3)
    {
      v4 = v3;
      Count = CFDictionaryGetCount(v3);
      if (Count)
      {
        v6 = Count;
        __chkstk_darwin(Count);
        v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        memset(v8, 170, v7);
        CFDictionaryGetKeysAndValues(v4, 0, v8);
        if (v6 < 1)
        {
          v26 = 12;
        }

        else
        {
          *&v9 = 134218240;
          v32 = v9;
          do
          {
            if (*v8)
            {
              if (*(*v8 + 20) == 2)
              {
                v23 = OUTLINED_FUNCTION_12_14();
                iap2_features_createFeature(v23, v24);
                v25 = OUTLINED_FUNCTION_12_14();
                iap2_identification_setIdentifiedForFeature(v25);
                v26 = 0;
                goto LABEL_43;
              }
            }

            else
            {
              v10 = gLogObjects;
              v11 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 34)
              {
                v12 = *(gLogObjects + 264);
              }

              else
              {
                v12 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = v32;
                  v35 = v10;
                  v36 = 1024;
                  v37 = v11;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v12 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "transportComponent is NULL", buf, 2u);
              }
            }

            v8 += 8;
            --v6;
          }

          while (v6);
          v26 = 12;
        }

        goto LABEL_43;
      }
    }

    v14 = gLogObjects;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v16 = *(gLogObjects + 264);
    }

    else
    {
      v16 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v35 = v14;
        v36 = 1024;
        v37 = v15;
        OUTLINED_FUNCTION_32(&_mh_execute_header, v21, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v18 = "Identified for USB Host Mode without identifying for a usbHost transportComponent";
    v19 = v16;
    v20 = 2;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v13 = *(gLogObjects + 264);
    }

    else
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_9_19(3.8521e-34);
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    TransportType = acc_endpoint_getTransportType(*a1);
    *buf = 67109120;
    LODWORD(v35) = TransportType;
    v18 = "Identified for USB Host Mode from non invalide connection (type=%d)";
    v19 = v13;
    v20 = 8;
  }

  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, buf, v20);
LABEL_41:
  v26 = 12;
LABEL_43:
  if (v33 == 1)
  {
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v27 = *(gLogObjects + 264);
    }

    else
    {
      v27 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_9_19(3.8521e-34);
        OUTLINED_FUNCTION_32(&_mh_execute_header, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Identified for USB Host Mode", buf, 2u);
    }
  }

  return v26;
}

uint64_t iap2_usbHostMode_StartUSBHostModeHandler(uint64_t *a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 34)
  {
    v6 = *(gLogObjects + 264);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v32 = v4;
      *&v32[8] = 1024;
      v33 = v5;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v8 = *a1;
      if (*a1)
      {
        v8 = a1[1];
      }
    }

    else
    {
      v8 = 0;
    }

    *buf = 138412290;
    *v32 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "startUSBHostMode: %@", buf, 0xCu);
  }

  if (!a1 || !*a1)
  {
    return 0;
  }

  v9 = 0;
  if (a2 && a1[1])
  {
    v10 = OUTLINED_FUNCTION_12_14();
    Feature = iap2_feature_getFeature(v10, v11);
    if (!Feature)
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v22 = *(gLogObjects + 264);
      }

      else
      {
        v22 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_32(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_13())
      {
        return 0;
      }

      *buf = 0;
      v23 = "Failed to get feature pointer!!";
      goto LABEL_56;
    }

    v13 = Feature;
    FirstParam = iAP2MsgGetFirstParam(a2, 0);
    if (FirstParam)
    {
      NextParam = FirstParam;
      do
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        if (ParamID == 2)
        {
          *v13 = 1;
        }

        else
        {
          v17 = ParamID;
          v18 = gLogObjects;
          v19 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 34)
          {
            v20 = *(gLogObjects + 264);
          }

          else
          {
            v20 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v32 = v18;
              *&v32[8] = 1024;
              v33 = v19;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v20 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            MsgID = iAP2MsgGetMsgID(a2);
            *buf = 67109376;
            *v32 = v17;
            *&v32[4] = 1024;
            *&v32[6] = MsgID;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
          }
        }

        NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
      }

      while (NextParam);
    }

    if ((platform_usb_set_mode(a1[1], 1) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v22 = *(gLogObjects + 264);
      }

      else
      {
        v22 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_32(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_13())
      {
        return 0;
      }

      *buf = 0;
      v23 = "Failed to set usb host mode!!";
      goto LABEL_56;
    }

    if (*v13 != 1)
    {
      return 1;
    }

    v9 = 1;
    if ((platform_usb_set_fault_monitoring(a1[1], 1) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v22 = *(gLogObjects + 264);
      }

      else
      {
        v22 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_32(&_mh_execute_header, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_13())
      {
        return 0;
      }

      *buf = 0;
      v23 = "Failed to set usb fault detection!!";
LABEL_56:
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
      return 0;
    }
  }

  return v9;
}

uint64_t iap2_usbHostMode_StopUSBHostModeHandler(uint64_t *a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 34)
  {
    v6 = *(gLogObjects + 264);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v49 = 134218240;
      v50 = v4;
      OUTLINED_FUNCTION_3();
      v51 = v5;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v19, v20, v21, v22, v23, 0x12u);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v7 = *a1;
      if (*a1)
      {
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }

    v49 = 138412290;
    v50 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "stopUSBHostMode: %@", &v49, 0xCu);
  }

  if (!a1 || !*a1)
  {
    return 0;
  }

  v8 = 0;
  if (!a2 || !a1[1])
  {
    return v8;
  }

  v9 = OUTLINED_FUNCTION_12_14();
  Feature = iap2_feature_getFeature(v9, v10);
  if (!Feature)
  {
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v16 = *(gLogObjects + 264);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v29, v30, v31, v32, v33, 0x12u);
    }

    if (!OUTLINED_FUNCTION_13())
    {
      return 0;
    }

    LOWORD(v49) = 0;
    goto LABEL_45;
  }

  v12 = Feature;
  if ((platform_usb_set_mode(a1[1], 0) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v17 = *(gLogObjects + 264);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v34, v35, v36, v37, v38, 0x12u);
    }

    if (!OUTLINED_FUNCTION_13())
    {
      return 0;
    }

    LOWORD(v49) = 0;
LABEL_45:
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v24, v25, v26, v27, v28, 2u);
    return 0;
  }

  if (*v12 != 1)
  {
    return 1;
  }

  v8 = platform_usb_set_fault_monitoring(a1[1], 0);
  if ((v8 & 1) == 0)
  {
    v13 = gLogObjects;
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v15 = *(gLogObjects + 264);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      v49 = 134218240;
      v50 = v13;
      OUTLINED_FUNCTION_3();
      v51 = v14;
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v44, v45, v46, v47, v48, 0x12u);
    }

    if (OUTLINED_FUNCTION_13())
    {
      LOWORD(v49) = 0;
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v39, v40, v41, v42, v43, 2u);
    }
  }

  *v12 = 0;
  return v8;
}