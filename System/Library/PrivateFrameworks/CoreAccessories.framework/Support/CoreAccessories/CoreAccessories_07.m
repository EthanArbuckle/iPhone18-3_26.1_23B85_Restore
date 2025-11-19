void _genericMFi_appLaunch_LaunchApp(void *a1, int a2)
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v4 = *(gLogObjects + 488);
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
    v5 = 136315906;
    v6 = "_genericMFi_appLaunch_LaunchApp";
    v7 = 2080;
    v8 = "(without dialog)";
    v9 = 2112;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Launching application to foreground %s: %@: report primary app?: %{BOOL}d", &v5, 0x26u);
  }

  platform_system_launchApplication(a1, a2);
}

void __genericMFi_appLaunch_requestAppLaunch_block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    _genericMFi_appLaunch_LaunchApp(v3, v4);
  }

  else
  {
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
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "genericMFi_appLaunch_requestAppLaunch_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: User did not approve app launch for %@ - ignoring", &v7, 0x16u);
    }
  }
}

void *logObjectForModule_34()
{
  v0 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    return *(gLogObjects + 448);
  }

  v1 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_6(v0);
  }

  return v1;
}

void OUTLINED_FUNCTION_8_23()
{
  v2 = *(v1 + 24);
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
}

uint64_t OUTLINED_FUNCTION_16_15()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  return v1;
}

id logObjectForModule_35()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  return v10;
}

id platform_location_getSupportedNMEASentences()
{
  v0 = +[ACCPlatformLocationManager sharedManager];
  v1 = [v0 supportedNMEASentenceMask];

  return v1;
}

id platform_location_setSupportedNMEASentencesForEndpoint(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCPlatformLocationManager sharedManager];
  v5 = [v4 setLocationEndpointUUID:a1 withSupportedNMEASentences:a2];

  return v5;
}

id platform_location_resetSupportedNMEASentencesForEndpoint(uint64_t a1)
{
  v2 = +[ACCPlatformLocationManager sharedManager];
  v3 = [v2 resetLocationEndpointUUID:a1];

  return v3;
}

id platform_location_update(uint64_t a1, uint64_t a2)
{
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [NSNumber numberWithDouble:v6];
  [v7 addObject:v8];

  v9 = +[ACCExternalAccessoryServer sharedServer];
  v10 = [v9 sendNMEASentence:a2 forAccessoryUUID:a1 withTimestamps:v7];

  return v10;
}

id platform_location_start(uint64_t a1)
{
  v2 = +[ACCPlatformLocationManager sharedManager];
  v3 = [v2 startLocationUpdatesForUUID:a1];

  return v3;
}

id platform_location_stop(uint64_t a1)
{
  v2 = +[ACCPlatformLocationManager sharedManager];
  v3 = [v2 stopLocationUpdatesForUUID:a1];

  return v3;
}

id platform_location_sendNMEAFilterList(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCPlatformLocationManager sharedManager];
  v5 = [v4 setNMEAFilterList:a2 forUUID:a1];

  return v5;
}

id platform_location_sendGPRMCDataStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[ACCPlatformLocationManager sharedManager];
  v9 = [v8 sendGPRMCDataStatus:a2 valueV:a3 valueX:a4 forUUID:a1];

  return v9;
}

void OUTLINED_FUNCTION_8_24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t qiAuth_protocol_init(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, uint64_t a7, __int16 a8)
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v15 = *(gLogObjects + 472);
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
    *buf = 136315906;
    v21 = "qiAuth_protocol_init";
    v22 = 1024;
    v23 = 75;
    v24 = 1024;
    v25 = a3;
    v26 = 1024;
    v27 = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d role %d, slotsSupportedMask 0x%X", buf, 0x1Eu);
  }

  v16 = 4294967294;
  if (a1 && a4 && a5 <= 1)
  {
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 24) = a6;
    *(a1 + 32) = a7;
    *(a1 + 40) = a8;
    *(a1 + 16) = 0;
    *(a1 + 13) = a4;
    *(a1 + 14) = a5;
    *(a1 + 12) = a5;
    *(a1 + 228) = 0u;
    *(a1 + 244) = 0;
    *(a1 + 220) = -1;
    *(a1 + 224) = 0;
    *(a1 + 215) = 1280;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0;
    *(a1 + 322) = 0;
    *(a1 + 324) = 0;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    bzero((a1 + 368), 0x600uLL);
    *(a1 + 1904) = 0;
    *(a1 + 1906) = 0u;
    *(a1 + 1922) = 0;
    *(a1 + 1926) = 0u;
    *(a1 + 1942) = 0u;
    *(a1 + 1958) = 0u;
    *(a1 + 1974) = 0u;
    *(a1 + 1989) = 0;
    v16 = qiAuth_util_init(a1);
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v17 = *(gLogObjects + 472);
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
    *buf = 136316162;
    v21 = "qiAuth_protocol_init";
    v22 = 1024;
    v23 = 147;
    v24 = 1024;
    v25 = v16;
    v26 = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = a6;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s:%d result %d, role %d, slotsSupportedMask 0x%X", buf, 0x24u);
  }

  return v16;
}

double qiAuth_protocol_cleanup(uint64_t a1, void *a2, _WORD *a3)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v6 = *(gLogObjects + 472);
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
      v7 = *(a1 + 8);
      v8 = *(a1 + 24);
      v13 = 136316162;
      v14 = "qiAuth_protocol_cleanup";
      v15 = 1024;
      v16 = 156;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d role %d, slotsSupportedMask 0x%X -> 0x%X", &v13, 0x24u);
    }

    qiAuth_util_cleanup(a1);
    *(a1 + 12) = *(a1 + 14);
    *(a1 + 24) = 0;
    *(a1 + 44) = 0;
    if (a2)
    {
      *a2 = *(a1 + 32);
    }

    if (a3)
    {
      *a3 = *(a1 + 40);
    }

    if (gLogObjects && gNumLogObjects >= 60)
    {
      v9 = *(gLogObjects + 472);
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
      v10 = *(a1 + 8);
      v13 = 136315650;
      v14 = "qiAuth_protocol_cleanup";
      v15 = 1024;
      v16 = 175;
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s:%d role %d, clear authState and rx digest / cert cache", &v13, 0x18u);
    }

    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 236) = 0;
    *(a1 + 228) = 0;
    *(a1 + 244) = 0;
    v11 = *(a1 + 220);
    if ((v11 & 0x80000000) == 0)
    {
      qiAuth_util_cancelTimer(a1, v11);
      *(a1 + 220) = -1;
    }

    *(a1 + 215) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0;
    *(a1 + 322) = 0;
    *(a1 + 324) = 0;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    bzero((a1 + 368), 0x600uLL);
    *(a1 + 1904) = 0;
    result = 0.0;
    *(a1 + 1906) = 0u;
    *(a1 + 1922) = 0;
    *(a1 + 1926) = 0u;
    *(a1 + 1942) = 0u;
    *(a1 + 1958) = 0u;
    *(a1 + 1974) = 0u;
    *(a1 + 1989) = 0;
  }

  return result;
}

uint64_t qiAuth_protocol_start(uint64_t a1)
{
  if (!a1 || !*(a1 + 32) || *(a1 + 40) < 2u)
  {
    v3 = 4294967294;
    goto LABEL_8;
  }

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

  v6 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 40);
    v21 = 136315906;
    v22 = "qiAuth_protocol_start";
    v23 = 1024;
    v24 = 251;
    v25 = 1024;
    v26 = v7;
    v27 = 1024;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d role %d, outMsgBufferSize %d", &v21, 0x1Eu);
  }

  if (*(a1 + 8) || (v10 = *(a1 + 32)) == 0 || (v11 = *(a1 + 40), v11 < 2))
  {
    inited = -2;
    goto LABEL_22;
  }

  *(a1 + 48) = 4;
  inited = qiAuth_protocol_initMsg_GET_DIGESTS(v6, *(a1 + 12), 1u, v10, v11, (a1 + 42));
  if (inited)
  {
LABEL_22:
    if (*(a1 + 8) >= 2u)
    {
      v3 = 0xFFFFFFFFLL;
    }

    else
    {
      v3 = inited;
    }

    goto LABEL_8;
  }

  v12 = qiAuth_protocol_timeoutForRequest(a1, **(a1 + 32) & 0xF, 0x7Fu);
  v13 = *(a1 + 48) << 16;
  if ((*(a1 + 220) & 0x80000000) == 0)
  {
    v14 = logObjectForModule_22();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 44);
      v16 = qiAuth_protocol_msgTypeString(v15);
      v21 = 136316162;
      v22 = "qiAuth_protocol_start";
      v23 = 1024;
      v24 = 269;
      v25 = 1024;
      v26 = v12;
      v27 = 1024;
      v28 = v15;
      v29 = 2080;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%d Cancel responseTimer, %u ms, outMsgType %u(%s)", &v21, 0x28u);
    }

    qiAuth_util_cancelTimer(a1, *(a1 + 220));
  }

  v17 = logObjectForModule_22();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = **(a1 + 32) & 0xF;
    v21 = 136315906;
    v22 = "qiAuth_protocol_start";
    v23 = 1024;
    v24 = 273;
    v25 = 1024;
    v26 = v12;
    v27 = 1024;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s:%d Start responseTimer, %u ms, outMsgType %u", &v21, 0x1Eu);
  }

  v19 = qiAuth_util_callbackOnTimer(a1, v12, _qiAuth_protocol_timeoutCallback, v13);
  if ((v19 & 0x80000000) == 0)
  {
    *(a1 + 220) = v19;
    qiAuth_protocol_sendData(a1, *(a1 + 32), *(a1 + 42));
    inited = 0;
    goto LABEL_22;
  }

  v20 = logObjectForModule_22();
  v3 = 0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "qiAuth_protocol_start";
    v23 = 1024;
    v24 = 276;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s:%d Failed to start timer!!!", &v21, 0x12u);
    v3 = 0;
  }

LABEL_8:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v4 = *(gLogObjects + 472);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    qiAuth_protocol_start_cold_3(a1);
  }

  return v3;
}

uint64_t qiAuth_protocol_initMsg_GET_DIGESTS(uint64_t a1, int a2, unsigned int a3, _BYTE *a4, unsigned int a5, _WORD *a6)
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v11 = *(gLogObjects + 472);
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
    qiAuth_protocol_initMsg_GET_DIGESTS_cold_2();
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else if (!a4)
  {
    goto LABEL_12;
  }

  if (a3 <= 0xF && a5 >= 2)
  {
    v12 = 0;
    *a4 = (16 * a2) | 9;
    a4[1] = a3;
    *a6 = 2;
    goto LABEL_13;
  }

LABEL_12:
  v12 = 4294967294;
  if (!a4)
  {
    v13 = 15;
    goto LABEL_14;
  }

LABEL_13:
  v13 = *a4 & 0xF;
LABEL_14:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v14 = *(gLogObjects + 472);
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
    v16 = qiAuth_protocol_msgTypeString(v13);
    if (a6)
    {
      v17 = *a6;
    }

    else
    {
      v17 = -1;
    }

    v18 = 136316674;
    v19 = "qiAuth_protocol_initMsg_GET_DIGESTS";
    v20 = 1024;
    v21 = 2655;
    v22 = 1024;
    v23 = v12;
    v24 = 1024;
    v25 = a2;
    v26 = 1024;
    v27 = v13;
    v28 = 2080;
    v29 = v16;
    v30 = 1024;
    v31 = v17;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s:%d result %d, version %u, msgType %d(%s), msgDataOutLen %d", &v18, 0x34u);
  }

  return v12;
}

uint64_t qiAuth_protocol_timeoutForRequest(uint64_t a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 9:
      return 43000;
    case 11:
      return 23000;
    case 10:
      if (a3 <= 3)
      {
        return 5;
      }

      else
      {
        return 300 * a3 + 4000;
      }

    default:
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v6 = *(gLogObjects + 472);
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
        qiAuth_protocol_timeoutForRequest_cold_2(a1, a2, v6);
        return 0;
      }

      break;
  }

  return result;
}

const char *qiAuth_protocol_msgTypeString(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100229868[a1 - 1];
  }
}

void _qiAuth_protocol_timeoutCallback(uint64_t a1, int a2, unsigned int a3)
{
  if (!a1 || a2 < 0)
  {
    return;
  }

  v6 = a3;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v7 = *(gLogObjects + 472);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v8 = HIWORD(a3) & 0xF;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 8);
    v30 = 136316674;
    v31 = "_qiAuth_protocol_timeoutCallback";
    v32 = 1024;
    v33 = 1337;
    v34 = 1024;
    v35 = a2;
    v36 = 1024;
    v37 = v6;
    v38 = 1024;
    v39 = v9;
    v40 = 1024;
    v41 = HIWORD(a3) & 0xF;
    v42 = 1024;
    v43 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d Timeout: timer %d, type %d, role %d, slot %d, context %u", &v30, 0x30u);
  }

  v11 = (a1 + 8);
  v10 = *(a1 + 8);
  if (!v10)
  {
    if (*(a1 + 220) != a2)
    {
LABEL_42:
      v10 = *v11;
      goto LABEL_43;
    }

    *(a1 + 220) = -1;
    if (a3 == 2)
    {
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v19 = *(gLogObjects + 472);
      }

      else
      {
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v25 = **(a1 + 32) & 0xF;
      v26 = *(a1 + 42);
      v30 = 136316162;
      v31 = "_qiAuth_protocol_timeoutCallback";
      v32 = 1024;
      v33 = 1378;
      v34 = 1024;
      v35 = HIWORD(a3) & 0xF;
      v36 = 1024;
      v37 = v25;
      v38 = 1024;
      v39 = v26;
    }

    else
    {
      if (a3)
      {
        if (gLogObjects && gNumLogObjects >= 60)
        {
          v22 = *(gLogObjects + 472);
        }

        else
        {
          v22 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          _qiAuth_protocol_timeoutCallback_cold_4();
        }

        goto LABEL_42;
      }

      v12 = *(a1 + 44);
      v13 = *(a1 + 32);
      v14 = *v13 & 0xF;
      if (!*(a1 + 216) || v12 != v14)
      {
        v23 = logObjectForModule_22();
        v24 = v23;
        if (v12 == v14)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 136315650;
            v31 = "_qiAuth_protocol_timeoutCallback";
            v32 = 1024;
            v33 = 1364;
            v34 = 1024;
            v35 = v8;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d slot %d, retry limit reached! set authState Failed", &v30, 0x18u);
          }

          qiAuth_protocol_setSlotAuthState(a1, v8, 3);
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 44);
          v29 = **(a1 + 32) & 0xF;
          v30 = 136316162;
          v31 = "_qiAuth_protocol_timeoutCallback";
          v32 = 1024;
          v33 = 1371;
          v34 = 1024;
          v35 = v8;
          v36 = 1024;
          v37 = v28;
          v38 = 1024;
          v39 = v29;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s:%d slot %d, mismatched msgType (%d vs %d)!", &v30, 0x24u);
        }

        goto LABEL_42;
      }

      --*(a1 + 216);
      v15 = qiAuth_protocol_timeoutForRequest(a1, *v13 & 0xF, 0x7Fu);
      v16 = *(a1 + 48) << 16;
      v17 = logObjectForModule_22();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = **(a1 + 32) & 0xF;
        v30 = 136315906;
        v31 = "_qiAuth_protocol_timeoutCallback";
        v32 = 1024;
        v33 = 1355;
        v34 = 1024;
        v35 = v15;
        v36 = 1024;
        v37 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s:%d Start responseTimer, %u ms, outMsgType %u", &v30, 0x1Eu);
      }

      *(a1 + 220) = qiAuth_util_callbackOnTimer(a1, v15, _qiAuth_protocol_timeoutCallback, v16);
      v19 = logObjectForModule_22();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v20 = **(a1 + 32) & 0xF;
      v21 = *(a1 + 42);
      v30 = 136316162;
      v31 = "_qiAuth_protocol_timeoutCallback";
      v32 = 1024;
      v33 = 1359;
      v34 = 1024;
      v35 = v8;
      v36 = 1024;
      v37 = v20;
      v38 = 1024;
      v39 = v21;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s:%d slot %d, resend message %d, len %d", &v30, 0x24u);
LABEL_35:
    qiAuth_protocol_sendData(a1, *(a1 + 32), *(a1 + 42));
    goto LABEL_42;
  }

LABEL_43:
  if (v10 >= 2)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v27 = *(gLogObjects + 472);
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
      _qiAuth_protocol_timeoutCallback_cold_6(v11);
    }
  }
}

uint64_t qiAuth_protocol_sendData(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v4 = 0;
  v5 = 4294967294;
  if (a1 && a2)
  {
    v7 = 0;
    if ((a3 - 1) <= 0x7Fu)
    {
      v9 = *a2;
      v7 = v9 & 0xF;
      v4 = v9 >> 4;
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v10 = *(gLogObjects + 472);
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
        v11 = *(a1 + 44);
        v15 = 136316930;
        v16 = "qiAuth_protocol_sendData";
        v17 = 1024;
        v18 = 454;
        v19 = 1024;
        v20 = v4;
        v21 = 1024;
        v22 = a3;
        v23 = 1024;
        v24 = v11;
        v25 = 2080;
        v26 = qiAuth_protocol_msgTypeString(v11);
        v27 = 1024;
        v28 = v7;
        v29 = 2080;
        v30 = qiAuth_protocol_msgTypeString(v7);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d ver %d, dataOutLen %d, lastMsgSent %d(%s) -> %d(%s)", &v15, 0x3Eu);
      }

      *(a1 + 44) = v7;
      qiAuth_util_sendData(a1, a2, a3);
      v5 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = qiAuth_protocol_msgTypeString(v7);
    v15 = 136316674;
    v16 = "qiAuth_protocol_sendData";
    v17 = 1024;
    v18 = 464;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v7;
    v25 = 2080;
    v26 = v13;
    v27 = 1024;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, ver %d, msgType %d(%s), dataOutLen %d", &v15, 0x34u);
  }

  return v5;
}

uint64_t qiAuth_protocol_processIncomingData(uint64_t a1, char *a2, unsigned int a3)
{
  v5 = 0;
  v34 = 0;
  v6 = 4294967294;
  v7 = &audioProductCerts_endpoint_publish_onceToken;
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  if (a1 && a2)
  {
    v10 = 0;
    v11 = 0;
    if (a3)
    {
      v12 = (a1 + 8);
      if (*(a1 + 8) < 2u)
      {
        v13 = *a2;
        v11 = v13 & 0xF;
        v33 = *(a1 + 32);
        v14 = *(a1 + 40);
        if (gLogObjects && gNumLogObjects >= 60)
        {
          v15 = *(gLogObjects + 472);
        }

        else
        {
          v15 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        v5 = v13 >> 4;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = *v12;
          *buf = 136317186;
          v36 = "qiAuth_protocol_processIncomingData";
          v37 = 1024;
          v38 = 327;
          v39 = 1024;
          v40 = v17;
          v41 = 1024;
          v42 = v5;
          v43 = 1024;
          *v44 = v11;
          *&v44[4] = 2080;
          *&v44[6] = qiAuth_protocol_msgTypeString(v11);
          *&v44[14] = 1024;
          *&v44[16] = a3;
          v45 = 1024;
          v46 = v33 != 0;
          v47 = 1024;
          v48 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s:%d role %d, ver %d, msgType %d(%s), dataInLen %d, _dataOut(%d), _dataOutSize %d", buf, 0x40u);
        }

        v10 = 0;
        v6 = 4294967294;
        if (!v33 || !v14)
        {
          goto LABEL_21;
        }

        if (!qiAuth_protocol_checkValidMessageHeaderAndSize(a1, *a2, a3) || (*(a1 + 216) = 0, *(a1 + 8)))
        {
          v10 = 0;
LABEL_21:
          v8 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_22:
          v7 = &audioProductCerts_endpoint_publish_onceToken;
          goto LABEL_28;
        }

        v24 = *(a1 + 220);
        if ((v24 & 0x80000000) == 0)
        {
          qiAuth_util_cancelTimer(a1, v24);
          *(a1 + 220) = -1;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            v25 = _qiAuth_protocol_handleResponse_CHALLENGE_AUTH(a1, a2, a3, v33, v14, &v34);
            goto LABEL_50;
          }

          if (v11 == 7)
          {
            v25 = _qiAuth_protocol_handleResponse_ERROR(a1, a2, a3, v33, v14, &v34);
            goto LABEL_50;
          }
        }

        else
        {
          if (v11 == 1)
          {
            v25 = _qiAuth_protocol_handleResponse_DIGESTS(a1, a2, a3, v33, v14, &v34);
            goto LABEL_50;
          }

          if (v11 == 2)
          {
            v25 = _qiAuth_protocol_handleResponse_CERTIFICATE(a1, a2, a3, v33, v14, &v34);
LABEL_50:
            v6 = v25;
            v8 = &audioProductCerts_endpoint_publish_onceToken;
            v7 = &audioProductCerts_endpoint_publish_onceToken;
            if (v25)
            {
              v10 = 0;
              goto LABEL_28;
            }

            v27 = v34;
            *(a1 + 42) = v34;
            if (!v27)
            {
              v10 = 0;
              v6 = 0;
              goto LABEL_28;
            }

            v10 = *v33 & 0xF;
            if (!*v12)
            {
              v28 = qiAuth_protocol_timeoutForRequest(a1, *v33 & 0xF, 0x7Fu);
              v29 = *(a1 + 48) << 16;
              v30 = logObjectForModule_22();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v36 = "qiAuth_protocol_processIncomingData";
                v37 = 1024;
                v38 = 421;
                v39 = 1024;
                v40 = v28;
                v41 = 1024;
                v42 = v10;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s:%d Start responseTimer, %u ms, outMsgType %u", buf, 0x1Eu);
              }

              *(a1 + 220) = qiAuth_util_callbackOnTimer(a1, v28, _qiAuth_protocol_timeoutCallback, v29);
            }

            v31 = logObjectForModule_22();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              qiAuth_protocol_processIncomingData_cold_4(v10, v31);
            }

            qiAuth_protocol_sendData(a1, v33, v34);
            v6 = 0;
            goto LABEL_22;
          }
        }

        v26 = logObjectForModule_22();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v32 = qiAuth_protocol_msgTypeString(v11);
          *buf = 136316418;
          v36 = "qiAuth_protocol_processIncomingData";
          v37 = 1024;
          v38 = 365;
          v39 = 1024;
          v40 = v5;
          v41 = 1024;
          v42 = v11;
          v43 = 2080;
          *v44 = v32;
          *&v44[8] = 1024;
          *&v44[10] = a3;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s:%d RX: Unexpected MsgType!!! ver %d, msgType %d(%s), dataInLen %d", buf, 0x2Eu);
        }

        v10 = 0;
        v6 = 0xFFFFFFFFLL;
        goto LABEL_21;
      }

      if (gLogObjects && gNumLogObjects >= 60)
      {
        v16 = *(gLogObjects + 472);
      }

      else
      {
        v16 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        qiAuth_protocol_processIncomingData_cold_2((a1 + 8));
      }

      v5 = 0;
      v10 = 0;
      v11 = 0;
      v6 = 0xFFFFFFFFLL;
      v7 = &audioProductCerts_endpoint_publish_onceToken;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

LABEL_28:
  v18 = v7[491];
  if (v18 && *(v8 + 984) >= 60)
  {
    v19 = *(v18 + 472);
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
    v20 = *(a1 + 8);
    v21 = qiAuth_protocol_msgTypeString(v11);
    v22 = qiAuth_protocol_msgTypeString(v10);
    *buf = 136317698;
    v36 = "qiAuth_protocol_processIncomingData";
    v37 = 1024;
    v38 = 433;
    v39 = 1024;
    v40 = v6;
    v41 = 1024;
    v42 = v20;
    v43 = 1024;
    *v44 = v5;
    *&v44[4] = 1024;
    *&v44[6] = v11;
    *&v44[10] = 2080;
    *&v44[12] = v21;
    v45 = 1024;
    v46 = a3;
    v47 = 1024;
    v48 = v10;
    v49 = 2080;
    v50 = v22;
    v51 = 1024;
    v52 = v34;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, role %d, ver %d, msgType %d(%s), dataInLen %d, outMsgType %d(%s), dataOutLen %d", buf, 0x50u);
  }

  return v6;
}

BOOL qiAuth_protocol_checkValidMessageHeaderAndSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = a2 >> 4;
  v6 = a2 & 0xF;
  v7 = &audioProductCerts_endpoint_publish_onceToken;
  if (!a1)
  {
LABEL_12:
    v10 = -2;
    goto LABEL_13;
  }

  if ((a2 & 0xF0) != 0x10)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v11 = *(gLogObjects + 472);
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
      v23 = 136316674;
      v24 = "qiAuth_protocol_checkValidMessageHeaderAndSize";
      v25 = 1024;
      v26 = 480;
      v27 = 1024;
      v28 = v5;
      v29 = 1024;
      v30 = v6;
      v31 = 2080;
      *v32 = qiAuth_protocol_msgTypeString(v6);
      *&v32[8] = 1024;
      *&v32[10] = a2;
      *&v32[14] = 1024;
      *&v32[16] = a3;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s:%d Invalid Version!!! ver %d, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x34u);
    }

    goto LABEL_12;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = -2;
    goto LABEL_54;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v16 = *(gLogObjects + 472);
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
    v23 = 136316674;
    v24 = "qiAuth_protocol_checkValidMessageHeaderAndSize";
    v25 = 1024;
    v26 = 486;
    v27 = 1024;
    v28 = 1;
    v29 = 1024;
    v30 = v6;
    v31 = 2080;
    *v32 = qiAuth_protocol_msgTypeString(v6);
    *&v32[8] = 1024;
    *&v32[10] = a2;
    *&v32[14] = 1024;
    *&v32[16] = a3;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s:%d RX, ver %d, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x34u);
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v17 = a3 == 67;
    }

    else
    {
      if (v6 != 7)
      {
LABEL_37:
        if (gLogObjects && gNumLogObjects >= 60)
        {
          v18 = *(gLogObjects + 472);
        }

        else
        {
          v18 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = qiAuth_protocol_msgTypeString(v6);
          v23 = 136316674;
          v24 = "qiAuth_protocol_checkValidMessageHeaderAndSize";
          v25 = 1024;
          v26 = 525;
          v27 = 1024;
          v28 = 1;
          v29 = 1024;
          v30 = v6;
          v31 = 2080;
          *v32 = v22;
          *&v32[8] = 1024;
          *&v32[10] = a2;
          *&v32[14] = 1024;
          *&v32[16] = a3;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s:%d RX: Unexpected MsgType!!! ver %d, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x34u);
        }

        v10 = -2;
        goto LABEL_53;
      }

      v17 = a3 == 3;
    }

    if (v17)
    {
      v10 = 0;
    }

    else
    {
      v10 = -2;
    }

    goto LABEL_53;
  }

  if (v6 == 1)
  {
    v10 = -2;
    if (a3 >= 3)
    {
      if (((a3 + 30) & 0x1F) != 0)
      {
        v10 = -2;
      }

      else
      {
        v10 = 0;
      }
    }

    goto LABEL_53;
  }

  if (v6 != 2)
  {
    goto LABEL_37;
  }

  if (a3 <= 1)
  {
    v10 = -2;
  }

  else
  {
    v10 = 0;
  }

LABEL_53:
  v9 = *(a1 + 8);
LABEL_54:
  if (v9 >= 2)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v19 = *(gLogObjects + 472);
    }

    else
    {
      v19 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 8);
      v21 = qiAuth_protocol_msgTypeString(v6);
      v23 = 136317186;
      v24 = "qiAuth_protocol_checkValidMessageHeaderAndSize";
      v25 = 1024;
      v26 = 573;
      v27 = 1024;
      v28 = v20;
      v29 = 1024;
      v30 = v10;
      v31 = 1024;
      *v32 = 1;
      *&v32[4] = 1024;
      *&v32[6] = v6;
      *&v32[10] = 2080;
      *&v32[12] = v21;
      v33 = 1024;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s:%d Unknown Role! %d, result %d, ver %d, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x40u);
    }

    v7 = &audioProductCerts_endpoint_publish_onceToken;
  }

LABEL_13:
  v12 = v7[491];
  if (v12 && gNumLogObjects >= 60)
  {
    v13 = *(v12 + 472);
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
    v14 = qiAuth_protocol_msgTypeString(v6);
    v23 = 136316930;
    v24 = "qiAuth_protocol_checkValidMessageHeaderAndSize";
    v25 = 1024;
    v26 = 578;
    v27 = 1024;
    v28 = v10;
    v29 = 1024;
    v30 = v5;
    v31 = 1024;
    *v32 = v6;
    *&v32[4] = 2080;
    *&v32[6] = v14;
    *&v32[14] = 1024;
    *&v32[16] = a2;
    v33 = 1024;
    v34 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d result %d, ver %d, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x3Au);
  }

  return v10 == 0;
}

uint64_t _qiAuth_protocol_handleResponse_DIGESTS(uint64_t a1, char *a2, unsigned int a3, _BYTE *a4, unsigned int a5, unsigned __int16 *a6)
{
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (!a1)
  {
    v14 = 0;
    v15 = 4294967294;
    goto LABEL_62;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v13 = *(gLogObjects + 472);
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
    _qiAuth_protocol_handleResponse_DIGESTS_cold_2(a1);
  }

  v14 = 0;
  v15 = 4294967294;
  if (a3 >= 0x22 && a2 && !*(a1 + 8))
  {
    v84 = a4;
    v14 = *a2 & 0xF;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v16 = *(gLogObjects + 472);
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
      v45 = a6;
      v46 = *(a1 + 8);
      v47 = *(a1 + 48);
      *buf = 136316418;
      v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
      v88 = 1024;
      v89 = 1880;
      v90 = 1024;
      v91 = v46;
      a6 = v45;
      v9 = &audioProductCerts_endpoint_publish_onceToken;
      v92 = 1024;
      v93 = v47;
      v8 = &audioProductCerts_endpoint_publish_onceToken;
      v94 = 1024;
      *v95 = v14;
      *&v95[4] = 2080;
      *&v95[6] = qiAuth_protocol_msgTypeString(v14);
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s:%d role %d, currentSlot %d, msgType %d(%s)", buf, 0x2Eu);
    }

    v15 = 4294967294;
    if (a6)
    {
      if (a5 >= 0x80 && a4 && v14 == 1)
      {
        v17 = *a2;
        v83 = a6;
        *a6 = 0;
        *(a1 + 224) = 0;
        v18 = a2[1];
        v19 = *(a1 + 24);
        v20 = v19 & (v18 >> 4);
        *(a1 + 321) = v19 & (a2[1] >> 4);
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 60)
        {
          v23 = *(gLogObjects + 472);
        }

        else
        {
          v23 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v87 = v21;
            v88 = 1024;
            v89 = v22;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v20 = *(a1 + 321);
          }
        }

        v14 = v17 & 0xF;
        v24 = v18 & 0xF;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
          v88 = 1024;
          v89 = 1899;
          v90 = 1024;
          v91 = v20;
          v92 = 1024;
          v93 = v18 & 0xF;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s:%d rxCertsTXSupportedMask 0x%02x, digestReturnedMask 0x%02x", buf, 0x1Eu);
          v20 = *(a1 + 321);
        }

        a6 = v83;
        if (v20)
        {
          v25 = 0;
          v15 = 0;
          v26 = 0;
          v27 = a2 + 2;
          v28 = 34;
          while (1)
          {
            if (((1 << v25) & v24) != 0)
            {
              if (((1 << v25) & *(a1 + 24)) != 0)
              {
                if (v28 > a3)
                {
                  if (gLogObjects && gNumLogObjects >= 60)
                  {
                    v30 = *(gLogObjects + 472);
                    a6 = v83;
                  }

                  else
                  {
                    v30 = &_os_log_default;
                    a6 = v83;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      platform_connectionInfo_configStreamGetCategories_cold_2();
                    }
                  }

                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    _qiAuth_protocol_handleResponse_DIGESTS_cold_5();
                  }

                  goto LABEL_60;
                }

                v15 = qiAuth_protocol_saveDigest(a1, *(a1 + 8), v25, &v27[v26], 32);
              }

              v26 += 32;
            }

            ++v25;
            v28 += 32;
            if (v25 == 4)
            {
              v9 = &audioProductCerts_endpoint_publish_onceToken;
              v8 = &audioProductCerts_endpoint_publish_onceToken;
              if (v15)
              {
                a6 = v83;
                goto LABEL_62;
              }

              v31 = *(a1 + 248);
              v32 = *(a1 + 321);
              a6 = v83;
              if (v31 != v32)
              {
                v54 = v32 & ~v31;
                *(a1 + 48) = 4;
                v55 = logObjectForModule_22();
                v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
                if (v56)
                {
                  *buf = 136315650;
                  v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                  v88 = 1024;
                  v89 = 1926;
                  v90 = 1024;
                  v91 = v54;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s:%d Need more digests, GET_DIGESTS, slotRequestMask 0x%x", buf, 0x18u);
                }

                inited = qiAuth_protocol_initMsg_GET_DIGESTS(v56, *(a1 + 12), v54, v84, a5, v83);
                goto LABEL_76;
              }

              v33 = qiAuth_util_policy_challengeFirst(a1);
              v34 = *(a1 + 321);
              v35 = qiAuth_util_policy_preferredSlot();
              *(a1 + 48) = v35;
              if (v33)
              {
                qiAuth_util_generateNonce(a1, (a1 + 135), 0x10u);
                *(a1 + 215) = 0;
                v36 = logObjectForModule_22();
                v37 = v84;
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = *(a1 + 48);
                  *buf = 136315650;
                  v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                  v88 = 1024;
                  v89 = 2052;
                  v90 = 1024;
                  v91 = v38;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s:%d ChallengeBeforeAuth, CHALLENGE, currentSlot %d", buf, 0x18u);
                }

                qiAuth_util_logCertData(a1, "DIGEST: --nonce--", a1 + 135, 0x10u, 1);
                v15 = qiAuth_protocol_initMsg_CHALLENGE(v39, *(a1 + 12), *(a1 + 48), (a1 + 135), 16, v84, a5, v83);
                if (v15 || (v40 = *v83, v40 != 18))
                {
                  v41 = logObjectForModule_22();
                  if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_61;
                  }

                  v42 = *(a1 + 48);
                  v43 = *v83;
                  *buf = 136316162;
                  v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                  v88 = 1024;
                  v89 = 2067;
                  v90 = 1024;
                  v91 = v42;
                  v92 = 1024;
                  v93 = v15;
                  v94 = 1024;
                  *v95 = v43;
                  v44 = "%s:%d ChallengeBeforeAuth, CHALLENGE, currentSlot %d, result %d, dataOutLen %d, skip saving challengeMsg!";
LABEL_94:
                  _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v44, buf, 0x24u);
                  goto LABEL_61;
                }

LABEL_91:
                v15 = 0;
                *(a1 + 1904) = v40;
                v68 = *v37;
                *(a1 + 1922) = *(v37 + 8);
                *(a1 + 1906) = v68;
                goto LABEL_61;
              }

              v58 = v35;
              v59 = a1 + 256;
              qiAuth_util_logCertData(a1, "DIGEST: --CertDigest--", *(a1 + 256 + 8 * v35), 0x20u, 1);
              v60 = a1 + 336;
              if (!*(a1 + 336 + 8 * v58))
              {
                if (qiAuth_util_certificateExistsCache(a1, v58, *(v59 + 8 * v58), 0x20u))
                {
                  v82 = *(a1 + 322);
                  v61 = logObjectForModule_22();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                    v88 = 1024;
                    v89 = 1946;
                    v90 = 1024;
                    v91 = v58;
                    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%s:%d Cert EXIST in cache! slot %d", buf, 0x18u);
                  }

                  if (*(a1 + 322))
                  {
LABEL_82:
                    v62 = v58;
                    v63 = *(v60 + 8 * v58);
                    if (v63)
                    {
                      qiAuth_util_logCertData(a1, "DIGEST: --CertCacheData--", v63, *(a1 + 2 * v58 + 324), 1);
                      a6 = v83;
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    *(v60 + 8 * v58) = a1 + 368;
                    v71 = (a1 + 2 * v58 + 324);
                    *v71 = 0;
                    *(a1 + 322) = 1;
                    v72 = *(v59 + 8 * v58);
                    v62 = v58;
                    if (qiAuth_util_copyCertificateFromCache(a1, v58, v72, 0x20u, 0, 0, (a1 + 368), 0x600u, v71))
                    {
                      *(v60 + 8 * v58) = 0;
                      *v71 = 0;
                      *(a1 + 322) = v82;
                    }

                    else
                    {
                      v73 = *(v60 + 8 * v58);
                      v74 = (v73 + 17);
                      v75 = (bswap32(*v73) >> 16) - 34;
                      qiAuth_util_logCertData(a1, "CACHE: --RootHash--", (v73 + 1), 0x20u, 1);
                      qiAuth_util_logCertData(a1, "CACHE: --CertData--", (v73 + 17), v75, 1);
                      v76 = (v73 + 1);
                      v8 = &audioProductCerts_endpoint_publish_onceToken;
                      v77 = v75;
                      v9 = &audioProductCerts_endpoint_publish_onceToken;
                      if (!qiAuth_util_verifyCertificateChain(a1, *(a1 + 48), v76, 32, v74, v77))
                      {
                        *(a1 + 320) |= 1 << v58;
                        goto LABEL_82;
                      }
                    }
                  }

                  v78 = logObjectForModule_22();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                    v88 = 1024;
                    v89 = 1990;
                    v90 = 1024;
                    v91 = v58;
                    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%s:%d Failed to read cert from cache! slot %d", buf, 0x18u);
                  }

                  *(v60 + 8 * v62) = 0;
                  *(a1 + 2 * v62 + 324) = 0;
                  *(a1 + 322) = v82;
                  a6 = v83;
LABEL_101:
                  v79 = logObjectForModule_22();
                  v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
                  if (v80)
                  {
                    v81 = *(a1 + 48);
                    *buf = 136315650;
                    v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                    v88 = 1024;
                    v89 = 2035;
                    v90 = 1024;
                    v91 = v81;
                    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%s:%d GET_CERTIFICATE, currentSlot %d", buf, 0x18u);
                  }

                  *(a1 + 244) = 8323072;
                  inited = qiAuth_protocol_initMsg_GET_CERTIFICATE(v80, *(a1 + 12), *(a1 + 48), 0, 0x7Fu, v84, a5, a6);
LABEL_76:
                  v15 = inited;
                  goto LABEL_62;
                }

                v64 = logObjectForModule_22();
                v62 = v58;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                  v88 = 1024;
                  v89 = 2005;
                  v90 = 1024;
                  v91 = v58;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%s:%d Cert NOT EXIST in cache! slot %d", buf, 0x18u);
                }

LABEL_86:
                if (!*(v60 + 8 * v62))
                {
                  goto LABEL_101;
                }
              }

              qiAuth_util_generateNonce(a1, (a1 + 135), 0x10u);
              *(a1 + 215) = 0;
              v65 = logObjectForModule_22();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = *(a1 + 48);
                *buf = 136315650;
                v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                v88 = 1024;
                v89 = 2015;
                v90 = 1024;
                v91 = v66;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%s:%d CHALLENGE, currentSlot %d, Cert already available", buf, 0x18u);
              }

              qiAuth_util_logCertData(a1, "DIGEST: --nonce--", a1 + 135, 0x10u, 1);
              v37 = v84;
              v15 = qiAuth_protocol_initMsg_CHALLENGE(v67, *(a1 + 12), *(a1 + 48), (a1 + 135), 16, v84, a5, a6);
              if (!v15)
              {
                v40 = *a6;
                if (v40 == 18)
                {
                  goto LABEL_91;
                }
              }

              v41 = logObjectForModule_22();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v69 = *(a1 + 48);
                v70 = *a6;
                *buf = 136316162;
                v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
                v88 = 1024;
                v89 = 2030;
                v90 = 1024;
                v91 = v69;
                v92 = 1024;
                v93 = v15;
                v94 = 1024;
                *v95 = v70;
                v44 = "%s:%d CHALLENGE, currentSlot %d, result %d, dataOutLen %d, skip saving challengeMsg!";
                goto LABEL_94;
              }

LABEL_61:
              v8 = &audioProductCerts_endpoint_publish_onceToken;
              goto LABEL_62;
            }
          }
        }

        if (*(a1 + 48) >= 4u)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(a1 + 48);
        }

        qiAuth_protocol_setSlotAuthState(a1, v29, 2);
LABEL_60:
        v15 = 4294967294;
        v9 = &audioProductCerts_endpoint_publish_onceToken;
        goto LABEL_61;
      }
    }
  }

LABEL_62:
  v48 = v8[491];
  v49 = *(v9 + 984);
  if (v48 && v49 >= 60)
  {
    v50 = *(v48 + 472);
  }

  else
  {
    v50 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = qiAuth_protocol_msgTypeString(v14);
    if (a6)
    {
      v52 = *a6;
    }

    else
    {
      v52 = -1;
    }

    *buf = 136316674;
    v87 = "_qiAuth_protocol_handleResponse_DIGESTS";
    v88 = 1024;
    v89 = 2081;
    v90 = 1024;
    v91 = v15;
    v92 = 1024;
    v93 = v14;
    v94 = 2080;
    *v95 = v51;
    *&v95[8] = 1024;
    *&v95[10] = a3;
    v96 = 1024;
    v97 = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return v15;
}

uint64_t _qiAuth_protocol_handleResponse_CERTIFICATE(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned __int16 *a6)
{
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v14 = *(gLogObjects + 472);
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
      _qiAuth_protocol_handleResponse_CERTIFICATE_cold_2(a1);
    }

    v15 = 0;
    inited = 4294967294;
    if (a3 < 2)
    {
      goto LABEL_56;
    }

    v8 = &audioProductCerts_endpoint_publish_onceToken;
    if (a2 && !*(a1 + 8))
    {
      v15 = *a2 & 0xF;
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v17 = *(gLogObjects + 472);
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
        v30 = *(a1 + 8);
        v31 = *(a1 + 48);
        *buf = 136316418;
        v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
        v75 = 1024;
        v76 = 2105;
        v77 = 1024;
        v78 = v30;
        v79 = 1024;
        v80 = v31;
        v81 = 1024;
        LODWORD(v82) = v15;
        WORD2(v82) = 2080;
        *(&v82 + 6) = qiAuth_protocol_msgTypeString(v15);
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s:%d role %d, currentSlot %d, msgType %d(%s)", buf, 0x2Eu);
      }

      inited = 4294967294;
      if (!a6)
      {
        goto LABEL_55;
      }

      v9 = &audioProductCerts_endpoint_publish_onceToken;
      v8 = &audioProductCerts_endpoint_publish_onceToken;
      if (a5 >= 0x80)
      {
        if (a4)
        {
          if (v15 == 2)
          {
            v15 = *a2 & 0xF;
            if (*(a1 + 48) <= 3u)
            {
              v72 = *(a1 + 48);
              if (gLogObjects && gNumLogObjects >= 60)
              {
                v18 = *(gLogObjects + 472);
              }

              else
              {
                v18 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
              v20 = *(a1 + 8);
              if (v19)
              {
                v21 = *(a1 + 244);
                v22 = *(a1 + 246);
                *buf = 136316674;
                v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                v75 = 1024;
                v76 = 2120;
                v77 = 1024;
                v78 = v20;
                v79 = 1024;
                v23 = v72;
                v80 = v72;
                v81 = 1024;
                LODWORD(v82) = v21;
                WORD2(v82) = 1024;
                *(&v82 + 6) = v22;
                WORD5(v82) = 1024;
                HIDWORD(v82) = (a3 - 1);
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d Save certs segment, role %d, slot %d, lastCertOffsetRequest %d, lastCertLenRequest %d, certSegmentLen %d", buf, 0x30u);
                v20 = *(a1 + 8);
                v9 = &audioProductCerts_endpoint_publish_onceToken;
              }

              else
              {
                v9 = &audioProductCerts_endpoint_publish_onceToken;
                v23 = v72;
              }

              log = a3 - 1;
              Segment = qiAuth_protocol_saveCertNextSegment(a1, v20, v23, a2 + 1, *(a1 + 244), (a3 - 1));
              if (Segment)
              {
                inited = Segment;
                if (gLogObjects && *(v9 + 984) >= 60)
                {
                  v25 = *(gLogObjects + 472);
                }

                else
                {
                  v25 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    platform_connectionInfo_configStreamGetCategories_cold_2();
                  }
                }

                if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_56;
                }

                v28 = *(a1 + 8);
                *buf = 136316162;
                v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                v75 = 1024;
                v76 = 2127;
                v77 = 1024;
                v78 = v28;
                v79 = 1024;
                v80 = v72;
                v81 = 1024;
                LODWORD(v82) = log;
                v29 = "%s:%d Failed to save certs segment, role %d, slot %d, certSegmentLen %d";
LABEL_44:
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v29, buf, 0x24u);
LABEL_56:
                v8 = &audioProductCerts_endpoint_publish_onceToken;
                goto LABEL_57;
              }

              CachedCertLengthFromHeader = _qiAuth_protocol_getCachedCertLengthFromHeader(a1, v23);
              if (gLogObjects && *(v9 + 984) >= 60)
              {
                v27 = *(gLogObjects + 472);
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
                v60 = *(a1 + 8);
                v61 = *(a1 + 244);
                v62 = *(a1 + 246);
                *buf = 136316930;
                v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                v75 = 1024;
                v76 = 2132;
                v77 = 1024;
                v78 = v60;
                v79 = 1024;
                v32 = v72;
                v80 = v72;
                v81 = 1024;
                LODWORD(v82) = v61;
                WORD2(v82) = 1024;
                *(&v82 + 6) = v62;
                WORD5(v82) = 1024;
                HIDWORD(v82) = log;
                LOWORD(v83[0]) = 1024;
                *(v83 + 2) = CachedCertLengthFromHeader;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s:%d role %d, slot %d, lastCertOffsetRequest %d, lastCertLenRequest %d, certSegmentLen %d, maxCertLen %d", buf, 0x36u);
                v9 = &audioProductCerts_endpoint_publish_onceToken;
              }

              else
              {
                v9 = &audioProductCerts_endpoint_publish_onceToken;
                v32 = v72;
              }

              v8 = &audioProductCerts_endpoint_publish_onceToken;
              if (CachedCertLengthFromHeader < 2)
              {
                inited = 0;
                goto LABEL_57;
              }

              *a6 = 0;
              *(a1 + 224) = 0;
              v33 = v32;
              v34 = a1 + 324;
              if (CachedCertLengthFromHeader <= *(a1 + 324 + 2 * v33))
              {
                v43 = logObjectForModule_22();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = *(v34 + 2 * v72);
                  *buf = 136315906;
                  v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                  v75 = 1024;
                  v76 = 2143;
                  v77 = 1024;
                  v78 = v72;
                  v79 = 1024;
                  v80 = v44;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s:%d Got all certs segments, CHALLENGE, slot %d, rxCertsLen %d", buf, 0x1Eu);
                }

                v45 = *(a1 + 336 + 8 * v72);
                v46 = __rev16(*v45);
                if (v46 <= 0x21)
                {
                  v59 = logObjectForModule_22();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    v68 = __rev16(**(a1 + 336 + 8 * v72));
                    v69 = *(a1 + 8);
                    *buf = 136316674;
                    v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                    v75 = 1024;
                    v76 = 2147;
                    v77 = 1024;
                    v78 = v68;
                    v79 = 1024;
                    v80 = 34;
                    v81 = 1024;
                    LODWORD(v82) = v69;
                    WORD2(v82) = 1024;
                    *(&v82 + 6) = v72;
                    WORD5(v82) = 1024;
                    HIDWORD(v82) = log;
                    _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%s:%d Certificate length %d is less than required minimum length of %d, role %d, slot %d, certSegmentLen %d", buf, 0x30u);
                  }

                  inited = 4294967294;
                  goto LABEL_56;
                }

                v47 = v46 - 34;
                qiAuth_util_logCertData(a1, "CERTIFICATE: --RootHash--", (v45 + 1), 0x20u, 1);
                qiAuth_util_logCertData(a1, "CERTIFICATE: --CertData--", (v45 + 17), v47, 1);
                v48 = qiAuth_util_verifyCertificateChain(a1, *(a1 + 48), (v45 + 1), 32, (v45 + 17), v47);
                if (v48)
                {
                  inited = v48;
                  v49 = logObjectForModule_22();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    _qiAuth_protocol_handleResponse_CERTIFICATE_cold_7();
                  }

                  qiAuth_protocol_setSlotAuthState(a1, v72, 2);
                  goto LABEL_56;
                }

                *(a1 + 320) |= 1 << v72;
                if ((*(a1 + 215) & 1) == 0)
                {
                  qiAuth_util_generateNonce(a1, (a1 + 135), 0x10u);
                  qiAuth_util_logCertData(a1, "CERTIFICATE: --nonce--", a1 + 135, 0x10u, 1);
                  inited = qiAuth_protocol_initMsg_CHALLENGE(v63, *(a1 + 12), *(a1 + 48), (a1 + 135), 16, a4, a5, a6);
                  if (!inited && *a6 == 18)
                  {
                    inited = 0;
                    *(a1 + 1904) = 18;
                    v64 = *a4;
                    *(a1 + 1922) = *(a4 + 16);
                    *(a1 + 1906) = v64;
                    goto LABEL_56;
                  }

                  v25 = logObjectForModule_22();
                  if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_56;
                  }

                  v65 = *(a1 + 48);
                  v66 = *a6;
                  *buf = 136316162;
                  v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                  v75 = 1024;
                  v76 = 2182;
                  v77 = 1024;
                  v78 = v65;
                  v79 = 1024;
                  v80 = inited;
                  v81 = 1024;
                  LODWORD(v82) = v66;
                  v29 = "%s:%d ChallengeBeforeAuth, CHALLENGE, currentSlot %d, result %d, dataOutLen %d, skip saving challengeMsg!";
                  goto LABEL_44;
                }

                v58 = _qiAuth_protocol_finishAuth(a1);
              }

              else
              {
                v35 = *(a1 + 246);
                v36 = logObjectForModule_22();
                if ((a3 - 1) > v35)
                {
                  v37 = v36;
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    v67 = *(v34 + 2 * v72);
                    *buf = 136316162;
                    v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                    v75 = 1024;
                    v76 = 2220;
                    v77 = 1024;
                    v78 = v72;
                    v79 = 1024;
                    v80 = (a3 - 1);
                    v81 = 1024;
                    LODWORD(v82) = v67;
                    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s:%d Invalid segment length! GET_CERTIFICATE, slot %d, certSegmentLen %d, rxCertsLen %d", buf, 0x24u);
                  }

                  inited = 0xFFFFFFFFLL;
LABEL_55:
                  v9 = &audioProductCerts_endpoint_publish_onceToken;
                  goto LABEL_56;
                }

                v50 = v36;
                v9 = &audioProductCerts_endpoint_publish_onceToken;
                if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                {
                  v51 = *(v34 + 2 * v72);
                  *buf = 136315906;
                  v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                  v75 = 1024;
                  v76 = 2201;
                  v77 = 1024;
                  v78 = v72;
                  v79 = 1024;
                  v80 = v51;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s:%d Get next certs segment, GET_CERTIFICATE, slot %d, rxCertsLen %d", buf, 0x1Eu);
                }

                v52 = *(v34 + 2 * v72);
                *(a1 + 244) = v52;
                v53 = (CachedCertLengthFromHeader - v52);
                if (v53 >= 0x7F)
                {
                  LOWORD(v53) = 127;
                }

                *(a1 + 246) = v53;
                loga = logObjectForModule_22();
                v54 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
                if (v54)
                {
                  v55 = *(v34 + 2 * v72);
                  v56 = *(a1 + 244);
                  v57 = *(a1 + 246);
                  *buf = 136316674;
                  v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
                  v75 = 1024;
                  v76 = 2211;
                  v77 = 1024;
                  v78 = v72;
                  v79 = 1024;
                  v80 = v55;
                  v81 = 1024;
                  LODWORD(v82) = v56;
                  WORD2(v82) = 1024;
                  *(&v82 + 6) = v57;
                  WORD5(v82) = 1024;
                  HIDWORD(v82) = CachedCertLengthFromHeader;
                  _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "%s:%d Get next certs segment, GET_CERTIFICATE, slot %d, rxCertsLen %d, lastCertOffsetRequest %d, lastCertLenRequest %d, maxCertLen %d", buf, 0x30u);
                }

                v58 = qiAuth_protocol_initMsg_GET_CERTIFICATE(v54, *(a1 + 12), v72, *(a1 + 244), *(a1 + 246), a4, a5, a6);
              }

              inited = v58;
              goto LABEL_56;
            }
          }
        }
      }
    }
  }

  else
  {
    v15 = 0;
    inited = 4294967294;
  }

LABEL_57:
  v38 = v8[491];
  if (v38 && *(v9 + 984) >= 60)
  {
    v39 = *(v38 + 472);
  }

  else
  {
    v39 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = qiAuth_protocol_msgTypeString(v15);
    if (a6)
    {
      v41 = *a6;
    }

    else
    {
      v41 = -1;
    }

    *buf = 136316674;
    v74 = "_qiAuth_protocol_handleResponse_CERTIFICATE";
    v75 = 1024;
    v76 = 2227;
    v77 = 1024;
    v78 = inited;
    v79 = 1024;
    v80 = v15;
    v81 = 2080;
    *&v82 = v40;
    WORD4(v82) = 1024;
    *(&v82 + 10) = a3;
    HIWORD(v82) = 1024;
    v83[0] = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return inited;
}

uint64_t _qiAuth_protocol_handleResponse_CHALLENGE_AUTH(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, unsigned int a5, unsigned __int16 *a6)
{
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v13 = *(gLogObjects + 472);
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
      _qiAuth_protocol_handleResponse_CHALLENGE_AUTH_cold_2(a1);
    }

    v14 = 0;
    v15 = 4294967294;
    LODWORD(v16) = 4;
    if (a3 == 67 && a2 && !*(a1 + 8))
    {
      v14 = *a2 & 0xF;
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v17 = *(gLogObjects + 472);
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
        v28 = *(a1 + 8);
        v29 = *(a1 + 48);
        *buf = 136316418;
        v45 = "_qiAuth_protocol_handleResponse_CHALLENGE_AUTH";
        v46 = 1024;
        v47 = 2251;
        v48 = 1024;
        v49 = v28;
        v50 = 1024;
        *v51 = v29;
        *&v51[4] = 1024;
        *&v51[6] = v14;
        *&v51[10] = 2080;
        *&v51[12] = qiAuth_protocol_msgTypeString(v14);
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s:%d role %d, currentSlot %d, msgType %d(%s)", buf, 0x2Eu);
      }

      v15 = 4294967294;
      LODWORD(v16) = 4;
      if (a6)
      {
        v8 = &audioProductCerts_endpoint_publish_onceToken;
        if (a5 >= 0x80 && a4 && v14 == 3)
        {
          v18 = *(a2 + 1) & 0xF;
          v43 = *(a2 + 2);
          v16 = *(a1 + 48);
          *a6 = 0;
          *(a1 + 224) = 0;
          *(a1 + 1924) = 67;
          v19 = *(a2 + 16);
          v20 = *(a2 + 32);
          v21 = *(a2 + 48);
          *(a1 + 1989) = *(a2 + 63);
          *(a1 + 1958) = v20;
          *(a1 + 1974) = v21;
          *(a1 + 1942) = v19;
          *(a1 + 1926) = *a2;
          v22 = *(a2 + 3);
          v23 = *(a2 + 19);
          v24 = *(a2 + 35);
          *(a1 + 199) = *(a2 + 51);
          *(a1 + 183) = v24;
          *(a1 + 167) = v23;
          *(a1 + 151) = v22;
          *(a1 + 215) = 1;
          if (!*(a1 + 321))
          {
            *(a1 + 321) = v18;
          }

          if (gLogObjects && gNumLogObjects >= 60)
          {
            v25 = *(gLogObjects + 472);
          }

          else
          {
            v25 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v45 = "_qiAuth_protocol_handleResponse_CHALLENGE_AUTH";
            v46 = 1024;
            v47 = 2278;
            v48 = 1024;
            v49 = 3;
            v50 = 2080;
            *v51 = "CHALLENGE_AUTH";
            *&v51[8] = 1024;
            *&v51[10] = v16;
            *&v51[14] = 1024;
            *&v51[16] = v18;
            v52 = 1024;
            v53 = v43;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s:%d msgType %d(%s), slot %d, slotPopMask %x, certChainHashLSB %02x", buf, 0x34u);
          }

          v26 = a1 + 336;
          if (*(a1 + 336 + 8 * v16))
          {
            goto LABEL_45;
          }

          if (qiAuth_util_certificateExistsCache(a1, v16, &v43, 1u))
          {
            if (gLogObjects && gNumLogObjects >= 60)
            {
              v27 = *(gLogObjects + 472);
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
              *buf = 136315906;
              v45 = "_qiAuth_protocol_handleResponse_CHALLENGE_AUTH";
              v46 = 1024;
              v47 = 2284;
              v48 = 1024;
              v49 = v16;
              v50 = 1024;
              *v51 = v43;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s:%d Found in cache! slot %d, certChainHashLSB %02x", buf, 0x1Eu);
            }

            if (!*(a1 + 322))
            {
              *(v26 + 8 * v16) = a1 + 368;
              v36 = (a1 + 2 * v16 + 324);
              *v36 = 0;
              *(a1 + 322) = 1;
              if (qiAuth_util_copyCertificateFromCache(a1, v16, &v43, 1u, *(a1 + 256 + 8 * v16), 0x20u, (a1 + 368), 0x600u, v36))
              {
                *(v26 + 8 * v16) = 0;
                *v36 = 0;
                *(a1 + 322) = 0;
                goto LABEL_67;
              }

              v40 = *(v26 + 8 * v16);
              v41 = *v40;
              qiAuth_util_logCertData(a1, "CACHE: --CertDigest--", *(a1 + 256 + 8 * v16), 0x20u, 1);
              qiAuth_util_logCertData(a1, "CACHE: --RootHash--", (v40 + 1), 0x20u, 1);
              v42 = (bswap32(v41) >> 16) - 34;
              qiAuth_util_logCertData(a1, "CACHE: --CertData--", (v40 + 17), v42, 1);
              if (!qiAuth_util_verifyCertificateChain(a1, *(a1 + 48), (v40 + 1), 32, (v40 + 17), v42))
              {
                *(a1 + 320) |= 1 << v16;
              }
            }
          }

          if (*(v26 + 8 * v16))
          {
LABEL_45:
            v8 = &audioProductCerts_endpoint_publish_onceToken;
            if (gLogObjects && gNumLogObjects >= 60)
            {
              v30 = *(gLogObjects + 472);
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
              *buf = 136315650;
              v45 = "_qiAuth_protocol_handleResponse_CHALLENGE_AUTH";
              v46 = 1024;
              v47 = 2333;
              v48 = 1024;
              v49 = v16;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s:%d Have cert for slot %d !!! verify signature", buf, 0x18u);
            }

            inited = _qiAuth_protocol_finishAuth(a1);
LABEL_53:
            v15 = inited;
            v14 = 3;
            goto LABEL_54;
          }

LABEL_67:
          v8 = &audioProductCerts_endpoint_publish_onceToken;
          if (gLogObjects && gNumLogObjects >= 60)
          {
            v37 = *(gLogObjects + 472);
          }

          else
          {
            v37 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v45 = "_qiAuth_protocol_handleResponse_CHALLENGE_AUTH";
            v46 = 1024;
            v47 = 2339;
            v48 = 1024;
            v49 = v16;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s:%d No cert for slot %d !!! need GET_CERTIFICATE", buf, 0x18u);
          }

          v38 = *(a1 + 321);
          v39 = qiAuth_util_policy_preferredSlot();
          *(a1 + 48) = v39;
          *(a1 + 244) = 8323072;
          inited = qiAuth_protocol_initMsg_GET_CERTIFICATE(v39, *(a1 + 12), v16, 0, 0x7Fu, a4, a5, a6);
          goto LABEL_53;
        }
      }

      else
      {
        v8 = &audioProductCerts_endpoint_publish_onceToken;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 4294967294;
    LODWORD(v16) = 4;
  }

LABEL_54:
  if (gLogObjects && *(v8 + 984) >= 60)
  {
    v32 = *(gLogObjects + 472);
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
    v33 = qiAuth_protocol_msgTypeString(v14);
    if (a6)
    {
      v34 = *a6;
    }

    else
    {
      v34 = -1;
    }

    *buf = 136316930;
    v45 = "_qiAuth_protocol_handleResponse_CHALLENGE_AUTH";
    v46 = 1024;
    v47 = 2354;
    v48 = 1024;
    v49 = v15;
    v50 = 1024;
    *v51 = v14;
    *&v51[4] = 2080;
    *&v51[6] = v33;
    *&v51[14] = 1024;
    *&v51[16] = v16;
    v52 = 1024;
    v53 = a3;
    v54 = 1024;
    v55 = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), slot %d, dataInLen %u, dataOutLen %u", buf, 0x3Au);
  }

  return v15;
}

uint64_t _qiAuth_protocol_handleResponse_ERROR(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, unsigned int a5, _WORD *a6)
{
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v14 = *(gLogObjects + 472);
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
      _qiAuth_protocol_handleResponse_ERROR_cold_2(a1);
    }

    v15 = 0;
    v16 = 4294967294;
    v8 = &audioProductCerts_endpoint_publish_onceToken;
    if (a3 == 3 && a2 && !*(a1 + 8))
    {
      v15 = *a2 & 0xF;
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v17 = *(gLogObjects + 472);
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
        v30 = *(a1 + 8);
        v31 = *(a1 + 48);
        v51 = 136316418;
        v52 = "_qiAuth_protocol_handleResponse_ERROR";
        v53 = 1024;
        v54 = 2377;
        v55 = 1024;
        v56 = v30;
        v57 = 1024;
        v58 = v31;
        v59 = 1024;
        *v60 = v15;
        *&v60[4] = 2080;
        *&v60[6] = qiAuth_protocol_msgTypeString(v15);
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s:%d role %d, currentSlot %d, msgType %d(%s)", &v51, 0x2Eu);
      }

      v16 = 4294967294;
      if (a6)
      {
        v9 = &audioProductCerts_endpoint_publish_onceToken;
        v8 = &audioProductCerts_endpoint_publish_onceToken;
        if (a5 >= 0x80 && a4 && v15 == 7)
        {
          *a6 = 0;
          if (gLogObjects && gNumLogObjects >= 60)
          {
            v18 = *(gLogObjects + 472);
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
            v19 = a2[1];
            v20 = a2[2];
            v51 = 136316162;
            v52 = "_qiAuth_protocol_handleResponse_ERROR";
            v53 = 1024;
            v54 = 2387;
            v55 = 1024;
            v56 = 7;
            v57 = 1024;
            v58 = v19;
            v59 = 1024;
            *v60 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d RX: ERROR msg(%d): errorCode 0x%02X, errorData 0x%02X", &v51, 0x24u);
          }

          v21 = a2[1];
          if (v21 > 2)
          {
            if (v21 == 3)
            {
              v24 = qiAuth_protocol_timeoutForRequest(a1, *(a1 + 44) & 0xF, 0x7Fu);
              v25 = *(a1 + 48);
              if ((*(a1 + 220) & 0x80000000) == 0)
              {
                v26 = logObjectForModule_22();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = *(a1 + 44);
                  v51 = 136315906;
                  v52 = "_qiAuth_protocol_handleResponse_ERROR";
                  v53 = 1024;
                  v54 = 2442;
                  v55 = 1024;
                  v56 = v24;
                  v57 = 1024;
                  v58 = v27;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s:%d Cancel responseTimer, %u ms, outMsgType %u", &v51, 0x1Eu);
                }

                qiAuth_util_cancelTimer(a1, *(a1 + 220));
              }

              v28 = (v25 << 16) | 2;
              if (gLogObjects && gNumLogObjects >= 60)
              {
                v29 = *(gLogObjects + 472);
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
                v32 = *(a1 + 44);
                v51 = 136315906;
                v52 = "_qiAuth_protocol_handleResponse_ERROR";
                v53 = 1024;
                v54 = 2446;
                v55 = 1024;
                v56 = v24;
                v57 = 1024;
                v58 = v32;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s:%d Start responseTimer, %u ms, outMsgType %u", &v51, 0x1Eu);
              }

              v16 = 0;
              *(a1 + 220) = qiAuth_util_callbackOnTimer(a1, v24, _qiAuth_protocol_timeoutCallback, v28);
              goto LABEL_67;
            }

            if (v21 == 4)
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v21 < 2)
            {
              goto LABEL_62;
            }

            if (v21 == 2)
            {
              if (gLogObjects && gNumLogObjects >= 60)
              {
                v22 = *(gLogObjects + 472);
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
                v42 = a2[1];
                v43 = a2[2];
                v44 = *(a1 + 224);
                v51 = 136316418;
                v52 = "_qiAuth_protocol_handleResponse_ERROR";
                v53 = 1024;
                v54 = 2408;
                v55 = 1024;
                v56 = 7;
                v57 = 1024;
                v58 = v42;
                v59 = 1024;
                *v60 = v43;
                *&v60[4] = 1024;
                *&v60[6] = v44;
                _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s:%d RX: ERROR msg(%d): errorCode 0x%02X, errorData 0x%02X, retryOnErrorCount %d", &v51, 0x2Au);
              }

              if (!*(a1 + 224))
              {
                *(a1 + 224) = 1;
                v41 = logObjectForModule_22();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v48 = a2[1];
                  v49 = a2[2];
                  v50 = *(a1 + 224);
                  v51 = 136316418;
                  v52 = "_qiAuth_protocol_handleResponse_ERROR";
                  v53 = 1024;
                  v54 = 2416;
                  v55 = 1024;
                  v56 = 7;
                  v57 = 1024;
                  v58 = v48;
                  v59 = 1024;
                  *v60 = v49;
                  *&v60[4] = 1024;
                  *&v60[6] = v50;
                  _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%s:%d RX: ERROR msg(%d): errorCode 0x%02X, errorData 0x%02X, retryOnErrorCount %d, Retry once!", &v51, 0x2Au);
                }

                v35 = qiAuth_protocol_sendData(a1, *(a1 + 32), *(a1 + 42));
                goto LABEL_66;
              }

              v33 = logObjectForModule_22();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                v45 = a2[1];
                v46 = a2[2];
                v47 = *(a1 + 224);
                v51 = 136316418;
                v52 = "_qiAuth_protocol_handleResponse_ERROR";
                v53 = 1024;
                v54 = 2424;
                v55 = 1024;
                v56 = 7;
                v57 = 1024;
                v58 = v45;
                v59 = 1024;
                *v60 = v46;
                *&v60[4] = 1024;
                *&v60[6] = v47;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s:%d RX: ERROR msg(%d): errorCode 0x%02X, errorData 0x%02X, retryOnErrorCount %d, Already retried, fail auth.", &v51, 0x2Au);
              }

LABEL_62:
              if (*(a1 + 48) >= 4u)
              {
                v34 = 0;
              }

              else
              {
                v34 = *(a1 + 48);
              }

              v35 = qiAuth_protocol_setSlotAuthState(a1, v34, 2);
LABEL_66:
              v16 = v35;
LABEL_67:
              v15 = 7;
              goto LABEL_68;
            }
          }

          if (gLogObjects && gNumLogObjects >= 60)
          {
            v23 = *(gLogObjects + 472);
          }

          else
          {
            v23 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            _qiAuth_protocol_handleResponse_ERROR_cold_8(a2 + 1, a2);
          }

          v16 = 4294967294;
          goto LABEL_67;
        }
      }

      else
      {
        v9 = &audioProductCerts_endpoint_publish_onceToken;
        v8 = &audioProductCerts_endpoint_publish_onceToken;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 4294967294;
  }

LABEL_68:
  v36 = v8[491];
  if (v36 && *(v9 + 984) >= 60)
  {
    v37 = *(v36 + 472);
  }

  else
  {
    v37 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = qiAuth_protocol_msgTypeString(v15);
    if (a6)
    {
      v39 = *a6;
    }

    else
    {
      v39 = -1;
    }

    v51 = 136316674;
    v52 = "_qiAuth_protocol_handleResponse_ERROR";
    v53 = 1024;
    v54 = 2464;
    v55 = 1024;
    v56 = v16;
    v57 = 1024;
    v58 = v15;
    v59 = 2080;
    *v60 = v38;
    *&v60[8] = 1024;
    *&v60[10] = a3;
    v61 = 1024;
    v62 = v39;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", &v51, 0x34u);
  }

  return v16;
}

uint64_t qiAuth_protocol_setSlotAuthState(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v5 = gLogObjects;
  v6 = 4294967294;
  if (!a1 || a2 > 3)
  {
    goto LABEL_47;
  }

  v8 = a1 + 228;
  v9 = *&a1[4 * a2 + 228];
  *&a1[4 * a2 + 228] = a3;
  if (v5 && gNumLogObjects >= 60)
  {
    v10 = *(v5 + 472);
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
    *buf = 136316162;
    v29 = "qiAuth_protocol_setSlotAuthState";
    v30 = 1024;
    v31 = 594;
    v32 = 1024;
    v33 = a2;
    v34 = 1024;
    v35 = v9;
    v36 = 1024;
    v37 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d slot %d, authState %d -> %d", buf, 0x24u);
  }

  v5 = gLogObjects;
  if (v9 == a3)
  {
    v6 = 0;
    goto LABEL_47;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v11 = *(gLogObjects + 472);
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
    v12 = a1[248];
    v13 = &a1[8 * a2];
    v14 = *(v13 + 32) != 0;
    v15 = a1[320];
    LODWORD(v13) = *(v13 + 42) != 0;
    v16 = *&a1[2 * a2 + 324];
    *buf = 136317186;
    v29 = "qiAuth_protocol_setSlotAuthState";
    v30 = 1024;
    v31 = 604;
    v32 = 1024;
    v33 = a2;
    v34 = 1024;
    v35 = a3;
    v36 = 1024;
    v37 = v12;
    v38 = 1024;
    v39 = v14;
    v40 = 1024;
    v41 = v15;
    v42 = 1024;
    v43 = v13;
    v44 = 1024;
    v45 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:%d slot %d, authState %d, rxDigestsRetrievedMask 0x%x, rxDigests(%d), rxCertsAvailbleMask 0x%x, rxCerts(%d), len %d", buf, 0x3Cu);
  }

  v17 = *&v8[4 * a2];
  if (v17 == 1)
  {
    if (((1 << a2) & a1[248]) == 0 || !*&a1[8 * a2 + 256] || ((1 << a2) & a1[320]) == 0 || !*&a1[8 * a2 + 336] || (v18 = a1 + 324, !*&a1[2 * a2 + 324]))
    {
      v20 = gLogObjects;
      v21 = gNumLogObjects;
      if (!gLogObjects)
      {
        goto LABEL_34;
      }

LABEL_32:
      if (v21 >= 60)
      {
        v22 = *(v20 + 472);
LABEL_36:
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = a1[48];
          *buf = 136316162;
          v29 = "qiAuth_protocol_setSlotAuthState";
          v30 = 1024;
          v31 = 623;
          v32 = 1024;
          v33 = a2;
          v34 = 1024;
          v35 = v23;
          v36 = 1024;
          v37 = 4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s:%d slot %d, done with auth, clear currenSlot %d -> %d", buf, 0x24u);
        }

        a1[48] = 4;
        v20 = gLogObjects;
        v21 = gNumLogObjects;
        goto LABEL_39;
      }

LABEL_34:
      v22 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      goto LABEL_36;
    }

    log = logObjectForModule_22();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *&v18[2 * a2];
      *buf = 136315906;
      v29 = "qiAuth_protocol_setSlotAuthState";
      v30 = 1024;
      v31 = 613;
      v32 = 1024;
      v33 = a2;
      v34 = 1024;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s:%d slot %d, Save cert in cache!! certsLen %d", buf, 0x1Eu);
    }

    qiAuth_util_saveCertificateInCache(a1, a2, *&a1[8 * a2 + 256], 0x20u, *&a1[8 * a2 + 336], *&v18[2 * a2]);
    v17 = *&v8[4 * a2];
  }

  v20 = gLogObjects;
  v21 = gNumLogObjects;
  if (v17)
  {
    if (!gLogObjects)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_39:
  if (v20 && v21 >= 60)
  {
    v24 = *(v20 + 472);
  }

  else
  {
    v24 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v29 = "qiAuth_protocol_setSlotAuthState";
    v30 = 1024;
    v31 = 630;
    v32 = 1024;
    v33 = a2;
    v34 = 1024;
    v35 = a3;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s:%d slot %d, notify system of authState %d", buf, 0x1Eu);
  }

  qiAuth_util_notifySlotAuthState(a1, a2, a3);
  v6 = 0;
  v5 = gLogObjects;
LABEL_47:
  if (v5 && gNumLogObjects >= 60)
  {
    v25 = *(v5 + 472);
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
    *buf = 136316162;
    v29 = "qiAuth_protocol_setSlotAuthState";
    v30 = 1024;
    v31 = 637;
    v32 = 1024;
    v33 = v6;
    v34 = 1024;
    v35 = a2;
    v36 = 1024;
    v37 = a3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s:%d result %d, slot %d, authState %d", buf, 0x24u);
  }

  return v6;
}

const char *qiAuth_protocol_authStateString(int a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = "UNKNOWN";
  }

  else
  {
    v1 = off_1002298C0[a1 - 1];
  }

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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    qiAuth_protocol_authStateString_cold_2();
  }

  return v1;
}

uint64_t qiAuth_protocol_saveDigest(uint64_t a1, int a2, unsigned int a3, _OWORD *a4, int a5)
{
  v7 = 4294967294;
  if (a1 && a3 <= 3 && ((1 << a3) & *(a1 + 24)) != 0)
  {
    if (a2)
    {
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v8 = *(gLogObjects + 472);
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
        qiAuth_protocol_saveDigest_cold_2();
      }

      v7 = 4294967294;
    }

    else if (a4 && a5 == 32 && !*(a1 + 249))
    {
      v7 = 0;
      *(a1 + 8 * a3 + 256) = a1 + 288;
      v9 = a4[1];
      *(a1 + 288) = *a4;
      *(a1 + 304) = v9;
      *(a1 + 249) = 1;
      *(a1 + 248) |= 1 << a3;
    }
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v10 = *(gLogObjects + 472);
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
    v12 = 136316162;
    v13 = "qiAuth_protocol_saveDigest";
    v14 = 1024;
    v15 = 922;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s:%d Result %d, role %d, slot %d", &v12, 0x24u);
  }

  return v7;
}

uint64_t qiAuth_protocol_saveCertNextSegment(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, unsigned int a6)
{
  __n = a6;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v11 = *(gLogObjects + 472);
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
    __n_4 = 136316418;
    v32 = "qiAuth_protocol_saveCertNextSegment";
    v33 = 1024;
    v34 = 1032;
    v35 = 1024;
    v36 = a2;
    v37 = 1024;
    v38 = a3;
    v39 = 1024;
    v40 = a5;
    v41 = 1024;
    v42 = __n;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s:%d role %d, slot %d, offset %d, length %d", &__n_4, 0x2Au);
  }

  v12 = 4294967294;
  if (a1 && a3 <= 3 && ((*(a1 + 24) >> a3) & 1) != 0)
  {
    if (a2)
    {
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v13 = *(gLogObjects + 472);
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
        qiAuth_protocol_saveCertNextSegment_cold_3();
      }

      v12 = 4294967294;
      goto LABEL_28;
    }

    if (!a4 || a5 > 0x600 || __n > 0x600 || __n + a5 > 0x600)
    {
      goto LABEL_28;
    }

    v29 = a1 + 336;
    v14 = a3;
    if (*(a1 + 336 + 8 * a3))
    {
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v15 = *(gLogObjects + 472);
      }

      else
      {
        v15 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v14 = a3;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __n_4 = 136316418;
        v32 = "qiAuth_protocol_saveCertNextSegment";
        v33 = 1024;
        v34 = 1062;
        v35 = 1024;
        v36 = 0;
        v37 = 1024;
        v38 = a3;
        v39 = 1024;
        v40 = a5;
        v41 = 1024;
        v42 = __n;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s:%d Already have slot assigned, role %d, slot %d, offset %d, length %d", &__n_4, 0x2Au);
      }
    }

    else
    {
      v18 = *(a1 + 322);
      v19 = logObjectForModule_22();
      v20 = v19;
      if (v18)
      {
        v12 = 0xFFFFFFFFLL;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        __n_4 = 136316674;
        v32 = "qiAuth_protocol_saveCertNextSegment";
        v33 = 1024;
        v34 = 1057;
        v35 = 1024;
        v36 = 0;
        v37 = 1024;
        v38 = a3;
        v39 = 1024;
        v40 = a5;
        v41 = 1024;
        v42 = __n;
        v43 = 1024;
        v44 = -1;
        v21 = "%s:%d rxCerts failed to init, role %d, slot %d, offset %d, length %d, result %d";
        v22 = v20;
        goto LABEL_51;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __n_4 = 136316418;
        v32 = "qiAuth_protocol_saveCertNextSegment";
        v33 = 1024;
        v34 = 1048;
        v35 = 1024;
        v36 = 0;
        v37 = 1024;
        v38 = a3;
        v39 = 1024;
        v40 = a5;
        v41 = 1024;
        v42 = __n;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s:%d rxCerts init, role %d, slot %d, offset %d, length %d", &__n_4, 0x2Au);
      }

      v28 = *(a1 + 322);
      *(v29 + 8 * a3) = a1 + 1536 * v28 + 368;
      *(a1 + 2 * a3 + 324) = 0;
      *(a1 + 322) = v28 + 1;
    }

    if (!*(v29 + 8 * v14))
    {
      v12 = 0;
      goto LABEL_28;
    }

    v23 = a1 + 324;
    v24 = *(a1 + 324 + 2 * v14);
    v25 = logObjectForModule_22();
    v26 = v25;
    if (v24 == a5)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __n_4 = 136316418;
        v32 = "qiAuth_protocol_saveCertNextSegment";
        v33 = 1024;
        v34 = 1071;
        v35 = 1024;
        v36 = 0;
        v37 = 1024;
        v38 = a3;
        v39 = 1024;
        v40 = a5;
        v41 = 1024;
        v42 = __n;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s:%d Save certSegment in rxCerts, role %d, slot %d, offset %d, length %d", &__n_4, 0x2Au);
      }

      memcpy((*(v29 + 8 * v14) + a5), a4, __n);
      v12 = 0;
      *(v23 + 2 * v14) += __n;
      goto LABEL_28;
    }

    v12 = 0xFFFFFFFFLL;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v27 = *(v23 + 2 * v14);
    __n_4 = 136316674;
    v32 = "qiAuth_protocol_saveCertNextSegment";
    v33 = 1024;
    v34 = 1081;
    v35 = 1024;
    v36 = a5;
    v37 = 1024;
    v38 = v27;
    v39 = 1024;
    v40 = 0;
    v41 = 1024;
    v42 = a3;
    v43 = 1024;
    v44 = -1;
    v21 = "%s:%d offset(%d) not in sequence(%d)! role %d, slot %d, result %d";
    v22 = v26;
LABEL_51:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, &__n_4, 0x30u);
  }

LABEL_28:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v16 = *(gLogObjects + 472);
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
    __n_4 = 136316674;
    v32 = "qiAuth_protocol_saveCertNextSegment";
    v33 = 1024;
    v34 = 1085;
    v35 = 1024;
    v36 = v12;
    v37 = 1024;
    v38 = a2;
    v39 = 1024;
    v40 = a3;
    v41 = 1024;
    v42 = a5;
    v43 = 1024;
    v44 = __n;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s:%d Result %d, role %d, slot %d, offset %d, length %d", &__n_4, 0x30u);
  }

  return v12;
}

uint64_t qiAuth_protocol_composeTBSAuth(uint64_t a1, __int128 *a2, int a3, __int128 *a4, int a5, __int16 *a6, int a7, uint64_t a8, unsigned __int16 a9, _WORD *a10)
{
  v13 = 0;
  v14 = 4294967294;
  if (a1 && a2 && a3 == 32 && a4 && a5 == 18 && a8 && a9 >= 0x36u && a10)
  {
    v14 = 0;
    *a8 = 65;
    v15 = *a2;
    *(a8 + 17) = a2[1];
    *(a8 + 1) = v15;
    v16 = *a4;
    *(a8 + 49) = *(a4 + 8);
    *(a8 + 33) = v16;
    v17 = *a6;
    *(a8 + 53) = *(a6 + 2);
    *(a8 + 51) = v17;
    v13 = 54;
    *a10 = 54;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v18 = *(gLogObjects + 472);
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
    v20 = 136316930;
    v21 = "qiAuth_protocol_composeTBSAuth";
    v22 = 1024;
    v23 = 1126;
    v24 = 1024;
    v25 = v14;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = a3;
    v30 = 1024;
    v31 = a5;
    v32 = 1024;
    v33 = a7;
    v34 = 1024;
    v35 = a9;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d Result %d, tbsAuthLen %d, certChainHashLen %d, challengeMsgLen %d, challengeAuthHdrLen %d, dataOutSize %d", &v20, 0x36u);
  }

  return v14;
}

uint64_t qiAuth_protocol_calculateChallengeHash(uint64_t a1, unsigned int a2, __int128 *a3, int a4, _BYTE *a5, void *a6, int a7, _WORD *a8, unsigned __int8 *a9, unsigned __int16 a10, _WORD *a11)
{
  v12 = 0;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v13;
  v56 = v13;
  *&v54[15] = -1431655766;
  v53[2] = v13;
  *v54 = v13;
  v53[0] = v13;
  v53[1] = v13;
  v14 = 4294967294;
  if (!a1 || !a5 || !a6 || a7 != 54 || !a8 || !a9 || a10 < 0x20u || !a11)
  {
    goto LABEL_40;
  }

  v34 = (a1 + 8);
  if (*(a1 + 8))
  {
    v19 = &audioProductCerts_endpoint_publish_onceToken;
    v20 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_11:
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v21 = *(gLogObjects + 472);
    }

    else
    {
      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      qiAuth_protocol_calculateChallengeHash_cold_6(v34, a1);
    }

    v12 = 170;
LABEL_19:
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v22 = *(gLogObjects + 472);
    }

    else
    {
      v22 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      qiAuth_protocol_calculateChallengeHash_cold_8(v34, a1);
    }

    goto LABEL_26;
  }

  v29 = *(a1 + 8 * a2 + 256);
  if (!v29)
  {
    v20 = &audioProductCerts_endpoint_publish_onceToken;
    v19 = &audioProductCerts_endpoint_publish_onceToken;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v32 = *(gLogObjects + 472);
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
      qiAuth_protocol_calculateChallengeHash_cold_4(v34, a1);
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v30 = v29[1];
  v55 = *v29;
  v56 = v30;
  v12 = HIBYTE(v30);
  if (*(a1 + 1924) <= 2u)
  {
    v20 = &audioProductCerts_endpoint_publish_onceToken;
    v19 = &audioProductCerts_endpoint_publish_onceToken;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v33 = *(gLogObjects + 472);
    }

    else
    {
      v33 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      qiAuth_protocol_calculateChallengeHash_cold_2(v34, a1);
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  LOWORD(v53[0]) = *(a1 + 1926);
  BYTE2(v53[0]) = *(a1 + 1928);
  v31 = qiAuth_protocol_composeTBSAuth(a1, &v55, 32, a3, a4, v53, 3, a6, 0x36u, a8);
  if (!v31)
  {
    v14 = qiAuth_util_hash_SHA256(a1, a6, *a8, a9, a10, a11);
    if (!v14)
    {
      *a5 = v12;
      goto LABEL_40;
    }

    v19 = &audioProductCerts_endpoint_publish_onceToken;
    v20 = &audioProductCerts_endpoint_publish_onceToken;
    goto LABEL_33;
  }

  v14 = v31;
  v19 = &audioProductCerts_endpoint_publish_onceToken;
  v20 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_26:
  v23 = v20[491];
  if (v23 && *(v19 + 984) >= 60)
  {
    v24 = *(v23 + 472);
  }

  else
  {
    v24 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    qiAuth_protocol_calculateChallengeHash_cold_10(v34, a1);
  }

LABEL_33:
  v25 = v20[491];
  if (v25 && *(v19 + 984) >= 60)
  {
    v26 = *(v25 + 472);
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
    qiAuth_protocol_calculateChallengeHash_cold_12(v34, a1);
  }

LABEL_40:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v27 = *(gLogObjects + 472);
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
    *buf = 136316930;
    v38 = "qiAuth_protocol_calculateChallengeHash";
    v39 = 1024;
    v40 = 1244;
    v41 = 1024;
    v42 = v14;
    v43 = 1024;
    v44 = a2;
    v45 = 1024;
    v46 = a4;
    v47 = 1024;
    v48 = v12;
    v49 = 1024;
    v50 = a7;
    v51 = 1024;
    v52 = a10;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, slot %d, challengeMsgLen %d, digestLSB 0x%02x, outTBSAuthSize %d, outChallengeHashSize %d", buf, 0x36u);
  }

  return v14;
}

uint64_t _qiAuth_protocol_getCachedCertLengthFromHeader(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  if (a1 && a2 <= 3)
  {
    v4 = (a1 + 8);
    if (*(a1 + 8))
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

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        _qiAuth_protocol_getCachedCertLengthFromHeader_cold_2(v4);
      }

      goto LABEL_16;
    }

    v6 = a1 + 336;
    v7 = *(a1 + 336 + 8 * a2);
    if (!v7 || (v8 = a1 + 324, *(a1 + 324 + 2 * a2) < 2u))
    {
LABEL_16:
      v3 = 0;
      goto LABEL_17;
    }

    v9 = gLogObjects;
    v10 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v11 = *(gLogObjects + 472);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 = 134218240;
        v24 = v9;
        v25 = 1024;
        v26 = v10;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v23, 0x12u);
        v7 = *(v6 + 8 * a2);
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(v8 + 2 * a2);
      v15 = *v7;
      v16 = v7[1];
      v17 = v7[2];
      v18 = v7[3];
      v19 = v7[4];
      v20 = v7[5];
      v21 = v7[6];
      v22 = v7[7];
      v23 = 136317954;
      v24 = "_qiAuth_protocol_getCachedCertLengthFromHeader";
      v25 = 1024;
      v26 = 1274;
      v27 = 1024;
      v28 = a2;
      v29 = 1024;
      v30 = v14;
      v31 = 1024;
      v32 = v15;
      v33 = 1024;
      v34 = v16;
      v35 = 1024;
      v36 = v17;
      v37 = 1024;
      v38 = v18;
      v39 = 1024;
      v40 = v19;
      v41 = 1024;
      v42 = v20;
      v43 = 1024;
      v44 = v21;
      v45 = 1024;
      v46 = v22;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s:%d slot %d, rxCerts(%d bytes): [%02X %02X] %02X %02X %02X %02X %02X %02X ... \n", &v23, 0x4Eu);
      v7 = *(v6 + 8 * a2);
    }

    v3 = bswap32(*v7) >> 16;
  }

LABEL_17:
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    _qiAuth_protocol_getCachedCertLengthFromHeader_cold_4();
  }

  return v3;
}

uint64_t qiAuth_protocol_initMsg_CHALLENGE(uint64_t a1, unsigned int a2, unsigned int a3, _OWORD *a4, int a5, uint64_t a6, unsigned int a7, _WORD *a8)
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v13 = *(gLogObjects + 472);
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
    *buf = 136316162;
    v23 = "qiAuth_protocol_initMsg_CHALLENGE";
    v24 = 1024;
    v25 = 2705;
    v26 = 1024;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    v30 = 1024;
    v31 = a5;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s:%d version %d, slotNum %d, nonceLen %d", buf, 0x24u);
    if (!a6)
    {
      goto LABEL_14;
    }
  }

  else if (!a6)
  {
    goto LABEL_14;
  }

  if (a5 == 16 && a4 && a3 <= 3 && a7 >= 0x12)
  {
    v14 = 0;
    *a6 = (16 * a2) | 0xB;
    *(a6 + 1) = a3;
    *(a6 + 2) = *a4;
    *a8 = 18;
    goto LABEL_15;
  }

LABEL_14:
  v14 = 4294967294;
  if (!a6)
  {
    v15 = 15;
    goto LABEL_16;
  }

LABEL_15:
  v15 = *a6 & 0xF;
LABEL_16:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v16 = *(gLogObjects + 472);
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
    v18 = qiAuth_protocol_msgTypeString(v15);
    if (a8)
    {
      v19 = *a8;
    }

    else
    {
      v19 = -1;
    }

    *buf = 136316674;
    v23 = "qiAuth_protocol_initMsg_CHALLENGE";
    v24 = 1024;
    v25 = 2724;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = a2;
    v30 = 1024;
    v31 = v15;
    v32 = 2080;
    v33 = v18;
    v34 = 1024;
    v35 = v19;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s:%d result %d, version %u, msgType %d(%s), msgDataOutLen %d", buf, 0x34u);
  }

  return v14;
}

uint64_t qiAuth_protocol_initMsg_GET_CERTIFICATE(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, _BYTE *a6, unsigned int a7, _WORD *a8)
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v14 = *(gLogObjects + 472);
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
    *buf = 136316418;
    v27 = "qiAuth_protocol_initMsg_GET_CERTIFICATE";
    v28 = 1024;
    v29 = 2667;
    v30 = 1024;
    v31 = a2;
    v32 = 1024;
    v33 = a3;
    v34 = 1024;
    v35 = a4;
    v36 = 1024;
    *v37 = a5;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s:%d version %d, slotNum %d, offset, %d, length %d", buf, 0x2Au);
  }

  if (a6 && a5 <= 0x7F && a4 <= 0x5FF && a3 <= 3 && a7 >= 4 && a5 + a4 <= 0x600)
  {
    *a6 = (16 * a2) | 0xA;
    a6[1] = (a4 >> 3) & 0xE0 | a3;
    a6[2] = a4;
    a6[3] = a5;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v15 = *(gLogObjects + 472);
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
      v22 = a6[1];
      v23 = a6[2];
      v24 = a6[3];
      *buf = 136316674;
      v27 = "qiAuth_protocol_initMsg_GET_CERTIFICATE";
      v28 = 1024;
      v29 = 2684;
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = a5;
      v34 = 1024;
      v35 = v22;
      v36 = 1024;
      *v37 = v23;
      *&v37[4] = 1024;
      *&v37[6] = v24;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s:%d offset %d, length %d, msg: offset_len_slotNum 0x%02X, offset 0x%02X, length 0x%02X", buf, 0x30u);
    }

    v16 = 0;
    *a8 = 4;
    goto LABEL_24;
  }

  v16 = 4294967294;
  if (a6)
  {
LABEL_24:
    v17 = *a6 & 0xF;
    goto LABEL_25;
  }

  v17 = 15;
LABEL_25:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v18 = *(gLogObjects + 472);
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
    v20 = qiAuth_protocol_msgTypeString(v17);
    if (a8)
    {
      v21 = *a8;
    }

    else
    {
      v21 = -1;
    }

    *buf = 136316674;
    v27 = "qiAuth_protocol_initMsg_GET_CERTIFICATE";
    v28 = 1024;
    v29 = 2693;
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = a2;
    v34 = 1024;
    v35 = v17;
    v36 = 2080;
    *v37 = v20;
    *&v37[8] = 1024;
    v38 = v21;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s:%d result %d, version %u, msgType %d(%s), msgDataOutLen %d", buf, 0x34u);
  }

  return v16;
}

uint64_t _qiAuth_protocol_finishAuth(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_10;
  }

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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _qiAuth_protocol_finishAuth_cold_2(a1);
  }

  if (*(a1 + 8))
  {
LABEL_10:
    v3 = 4294967294;
    goto LABEL_11;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v6 = *(gLogObjects + 472);
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
    _qiAuth_protocol_finishAuth_cold_4((a1 + 8), a1);
  }

  v7 = *(a1 + 48);
  if (v7 < 4)
  {
    if (!*(a1 + 336 + 8 * v7))
    {
LABEL_69:
      v3 = 0;
      goto LABEL_11;
    }

    if (gLogObjects && gNumLogObjects >= 60)
    {
      v8 = *(gLogObjects + 472);
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
      *buf = 136315650;
      v27 = "_qiAuth_protocol_finishAuth";
      v28 = 1024;
      v29 = 2488;
      v30 = 1024;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d Have cert for slot %d !!! verify signature", buf, 0x18u);
    }

    v10 = *(a1 + 336 + 8 * v7);
    v11 = (v10 + 17);
    v12 = *v10;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    if (*(a1 + 1904) == 18)
    {
      if (!qiAuth_protocol_calculateChallengeHash(a1, v7, (a1 + 1906), 18, &v25, (a1 + 49), 54, &v24, (a1 + 103), 0x20u, &v23))
      {
        v13 = (bswap32(v12) >> 16) - 34;
        v14 = 1;
        qiAuth_util_logCertData(a1, "FINISH: --RootHash--", (v10 + 1), 0x20u, 1);
        qiAuth_util_logCertData(a1, "FINISH: --CertData--", v11, v13, 1);
        qiAuth_util_logCertData(a1, "FINISH: --nonce--", a1 + 135, 0x10u, 1);
        qiAuth_util_logCertData(a1, "FINISH: --TBSAuth--", a1 + 49, 0x36u, 1);
        qiAuth_util_logCertData(a1, "FINISH: --TBSAuthHash--", a1 + 103, 0x20u, 1);
        qiAuth_util_logCertData(a1, "FINISH: --Signature--", a1 + 151, 0x40u, 1);
        *(a1 + 215) = 1;
        v22 = (a1 + 103);
        if (!qiAuth_util_verifyChallengeSignature(a1, v7, (v10 + 1), 32, v11, v13, a1 + 103, 0x20u, a1 + 151, 0x40u))
        {
LABEL_68:
          qiAuth_protocol_setSlotAuthState(a1, v7, v14);
          goto LABEL_69;
        }

        v15 = logObjectForModule_22();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          v17 = *(a1 + 44);
          *buf = 136316162;
          v27 = "_qiAuth_protocol_finishAuth";
          v28 = 1024;
          v29 = 2536;
          v30 = 1024;
          v31 = v7;
          v32 = 1024;
          v33 = v17;
          v34 = 1024;
          v35 = v25;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d Signature verification failed, retry with legacy hash calculation!!!  slot %d, lastMsgSent %d, digestLSB 0x%x", buf, 0x24u);
        }

        if (!qiAuth_protocol_initMsg_CHALLENGE_AUTH(v16, *(a1 + 12), 1u, *(a1 + 24), v25, 0, 0, (a1 + 1926), 0x43u, (a1 + 1924)))
        {
          v18 = *(a1 + 1924);
          if (v18 >= 3)
          {
            qiAuth_util_logCertData(a1, "FINISH: recalc --CHALLENGE_AUTH--", a1 + 1926, v18, 1);
            if (!qiAuth_protocol_calculateChallengeHash(a1, v7, (a1 + 1906), *(a1 + 1904), &v25, (a1 + 49), 54, &v24, v22, 0x20u, &v23))
            {
              qiAuth_util_logCertData(a1, "FINISH: recalc --TBSAuth--", a1 + 49, 0x36u, 1);
              qiAuth_util_logCertData(a1, "FINISH: recalc --TBSAuthHash--", v22, 0x20u, 1);
              if (qiAuth_util_verifyChallengeSignature(a1, v7, (v10 + 1), 32, v11, v13, v22, 0x20u, a1 + 151, 0x40u))
              {
                v14 = 2;
              }

              else
              {
                v14 = 1;
              }

              goto LABEL_68;
            }
          }
        }

        v19 = logObjectForModule_22();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          _qiAuth_protocol_finishAuth_cold_12();
        }

LABEL_67:
        v14 = 2;
        goto LABEL_68;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v20 = *(gLogObjects + 472);
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
        _qiAuth_protocol_finishAuth_cold_9(a1);
      }
    }

    if (gLogObjects && gNumLogObjects >= 60)
    {
      v21 = *(gLogObjects + 472);
    }

    else
    {
      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _qiAuth_protocol_finishAuth_cold_11();
    }

    goto LABEL_67;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v9 = *(gLogObjects + 472);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    _qiAuth_protocol_finishAuth_cold_6();
  }

  v3 = 0xFFFFFFFFLL;
LABEL_11:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v4 = *(gLogObjects + 472);
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
    *buf = 136315650;
    v27 = "_qiAuth_protocol_finishAuth";
    v28 = 1024;
    v29 = 2592;
    v30 = 1024;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d result %d", buf, 0x18u);
  }

  return v3;
}

uint64_t qiAuth_protocol_initMsg_CHALLENGE_AUTH(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, const void *a6, unsigned int a7, _BYTE *a8, unsigned __int16 a9, __int16 *a10)
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v16 = *(gLogObjects + 472);
  }

  else
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (a8)
    {
      goto LABEL_8;
    }

LABEL_18:
    v19 = 15;
    v17 = 4294967294;
    goto LABEL_19;
  }

  *buf = 136316674;
  v26 = "qiAuth_protocol_initMsg_CHALLENGE_AUTH";
  v27 = 1024;
  v28 = 2835;
  v29 = 1024;
  v30 = a2;
  v31 = 1024;
  v32 = a3;
  v33 = 1024;
  v34 = a4;
  v35 = 1024;
  *v36 = a5;
  *&v36[4] = 1024;
  *&v36[6] = a7;
  _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s:%d version %d, maxProtocolVersion %d, slotPopulatedMask 0x%x, certChainHashLSB, 0x%02x, signatureLen %d", buf, 0x30u);
  if (!a8)
  {
    goto LABEL_18;
  }

LABEL_8:
  v17 = 4294967294;
  if ((a4 | a3) <= 0xF && a7 <= 0x7D && a7 + 3 <= a9 && (!a6 || a7 == 64))
  {
    v18 = 3;
    *a8 = (16 * a2) | 3;
    a8[1] = a4 | (16 * a3);
    a8[2] = a5;
    if (a6)
    {
      memcpy(a8 + 3, a6, a7);
      v18 = a7 + 3;
    }

    v17 = 0;
    *a10 = v18;
  }

  v19 = *a8 & 0xF;
LABEL_19:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v20 = *(gLogObjects + 472);
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
    v22 = qiAuth_protocol_msgTypeString(v19);
    if (a10)
    {
      v23 = *a10;
    }

    else
    {
      v23 = -1;
    }

    *buf = 136316674;
    v26 = "qiAuth_protocol_initMsg_CHALLENGE_AUTH";
    v27 = 1024;
    v28 = 2864;
    v29 = 1024;
    v30 = v17;
    v31 = 1024;
    v32 = a2;
    v33 = 1024;
    v34 = v19;
    v35 = 2080;
    *v36 = v22;
    *&v36[8] = 1024;
    v37 = v23;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s:%d result %d, version %u, msgType %d(%s), msgDataOutLen %d", buf, 0x34u);
  }

  return v17;
}

unsigned int *OUTLINED_FUNCTION_13_15@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *(a2 + 48);
  return result;
}

uint64_t iap2_features_registerMessageHandlers()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects <= 18;
  }

  else
  {
    v0 = 1;
  }

  v1 = !v0;
  if (iap2_features_registerMessageHandlers_handlersRegistered)
  {
    if (v1)
    {
      v2 = *(gLogObjects + 144);
    }

    else
    {
      v2 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      iap2_features_registerMessageHandlers_cold_6(v2);
    }
  }

  else
  {
    if (v1)
    {
      v3 = *(gLogObjects + 144);
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
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering message handlers...", buf, 2u);
    }

    for (i = 0; i != 29; ++i)
    {
      v5 = gLogObjects;
      v6 = gNumLogObjects;
      if (gLogObjects)
      {
        v7 = gNumLogObjects < 19;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v16 = v5;
          v17 = 1024;
          v18 = v6;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v8 = &_os_log_default;
        }
      }

      else
      {
        v8 = *(gLogObjects + 144);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        iap2_features_registerMessageHandlers_cold_2(v13, i, v14, v8);
      }

      v9 = *(&_kiAP2FeatureInfoEntries + 2 * i + 1);
      if (v9)
      {
        if (*(v9 + 8))
        {
          if (*(v9 + 16))
          {
            v10 = 0;
            v11 = 0;
            do
            {
              iap2_messageHandlers_setHandler(*(*(v9 + 8) + v10), *(*(v9 + 8) + v10 + 8));
              ++v11;
              v10 += 16;
            }

            while (v11 < *(v9 + 16));
          }
        }

        else
        {
          iap2_features_registerMessageHandlers_cold_3();
        }
      }

      else
      {
        iap2_features_registerMessageHandlers_cold_4();
      }
    }

    iap2_features_registerMessageHandlers_handlersRegistered = 1;
  }

  return 1;
}

void *logObjectForModule_36()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 19;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    return *(gLogObjects + 144);
  }

  v1 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v1;
}

uint64_t iap2_features_registerIdentificationParamHandlers()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects <= 18;
  }

  else
  {
    v0 = 1;
  }

  v1 = !v0;
  if (iap2_features_registerIdentificationParamHandlers_handlersRegistered)
  {
    if (v1)
    {
      v2 = *(gLogObjects + 144);
    }

    else
    {
      v2 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      iap2_features_registerIdentificationParamHandlers_cold_6(v2);
    }
  }

  else
  {
    if (v1)
    {
      v3 = *(gLogObjects + 144);
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
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering identification param handlers...", buf, 2u);
    }

    for (i = 0; i != 29; ++i)
    {
      v5 = gLogObjects;
      v6 = gNumLogObjects;
      if (gLogObjects)
      {
        v7 = gNumLogObjects < 19;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v19 = v5;
          v20 = 1024;
          v21 = v6;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v8 = &_os_log_default;
        }
      }

      else
      {
        v8 = *(gLogObjects + 144);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        iap2_features_registerIdentificationParamHandlers_cold_2(v16, i, v17, v8);
      }

      v9 = *(&_kiAP2FeatureInfoEntries + 2 * i + 1);
      if (v9)
      {
        if (*(v9 + 24))
        {
          if (*(v9 + 32))
          {
            v10 = 0;
            v11 = 0;
            do
            {
              v12 = *(v9 + 24);
              v13 = *(v12 + v10);
              v14 = *(v12 + v10 + 8);
              iap2_identification_setParamHandler();
              if (*(v12 + v10 + 16) == 1)
              {
                iap2_identification_setRequiredIdentificationParam(*(v12 + v10));
              }

              ++v11;
              v10 += 24;
            }

            while (v11 < *(v9 + 32));
          }
        }

        else
        {
          iap2_features_registerIdentificationParamHandlers_cold_3();
        }
      }

      else
      {
        iap2_features_registerMessageHandlers_cold_4();
      }
    }

    iap2_features_registerIdentificationParamHandlers_handlersRegistered = 1;
  }

  return 1;
}

uint64_t iap2_features_destroyFeatures(uint64_t a1, int a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 18;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (a2)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 144);
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
      *buf = 136315138;
      label = dispatch_queue_get_label(0);
      v7 = "Destroying required features... currentDispatchQueue: %s";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 144);
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
      *buf = 136315138;
      label = dispatch_queue_get_label(0);
      v7 = "Destroying optional features... currentDispatchQueue: %s";
      goto LABEL_20;
    }
  }

  v8 = a1 + 200;
  v9 = &off_1002298E0;
  v10 = 29;
  do
  {
    v11 = *v9;
    if (*v9)
    {
      if (*v11)
      {
        if (v11[34] == a2)
        {
          if (a1)
          {
            v12 = *(v9 - 2);
            v24 = *(v8 + 8 * v12);
            if (v24)
            {
              v13 = gLogObjects;
              v14 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 19)
              {
                v15 = *(gLogObjects + 144);
              }

              else
              {
                v15 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  label = v13;
                  v27 = 1024;
                  v28 = v14;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }
              }

              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 67109120;
                LODWORD(label) = v12;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Destroying feature: %{coreacc:iAP2Feature_t}d...", buf, 8u);
              }

              v16 = *(*v11 + 8);
              *(v8 + 8 * v12) = 0;
              if (v16)
              {
                if ((v16(&v24, a1) & 1) == 0)
                {
                  v17 = gLogObjects;
                  v18 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 19)
                  {
                    v19 = *(gLogObjects + 144);
                  }

                  else
                  {
                    v19 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      label = v17;
                      v27 = 1024;
                      v28 = v18;
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }
                  }

                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(label) = v12;
                    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error destroying feature: %{coreacc:iAP2Feature_t}d!", buf, 8u);
                  }
                }
              }

              else
              {
                v20 = gLogObjects;
                v21 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 19)
                {
                  v22 = *(gLogObjects + 144);
                }

                else
                {
                  v22 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    label = v20;
                    v27 = 1024;
                    v28 = v21;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }
                }

                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  LODWORD(label) = v12;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No destroy function for feature: %{coreacc:iAP2Feature_t}d!", buf, 8u);
                }
              }
            }
          }
        }
      }
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  return 0;
}

void *OUTLINED_FUNCTION_8_25()
{

  return logObjectForModule_36();
}

unint64_t iap2_sessionRouter_processSessionData(unint64_t a1, uint64_t a2, UInt8 *a3, unsigned int a4)
{
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 19;
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
      platform_bluetooth_copyNameForMacAddress_cold_1();
    }
  }

  else
  {
    v9 = *(gLogObjects + 144);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    iap2_sessionRouter_processSessionData_cold_2(a2, v9);
  }

  v10 = 0;
  v11 = *(a2 + 1);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          if (gLogObjects && gNumLogObjects >= 19)
          {
            v17 = *(gLogObjects + 144);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_bluetooth_copyNameForMacAddress_cold_1();
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received EA packet of 0 bytes, no data to process!", v18, 2u);
          }

          return 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v14 = a4;
        v15 = bswap32(*a3) >> 16;
        v16 = CFDataCreate(kCFAllocatorDefault, a3 + 2, v14 - 2);
        v10 = platform_externalAccessory_handleIncomingEADataFromAccessoryForSessionID(v15, v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    else if (v11 == 4)
    {
      return iap2_sessionLog_parseIncomingMessage(a1, a3, a4);
    }
  }

  else
  {
    if (!*(a2 + 1))
    {
      return iap2_sessionControl_parseIncomingMessage(a1, a3, a4);
    }

    if (v11 == 1)
    {
      return iap2_sessionFileTransfer_handleDatagram(a1, a3, a4);
    }
  }

  return v10;
}

uint64_t iAP2FSMCreate(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = a9;
  if (!a9)
  {
    iAP2FSMCreate_cold_1();
  }

  *a9 = a4;
  *(a9 + 9) = a3;
  *(a9 + 8) = a1;
  *(a9 + 10) = a2;
  *(a9 + 11) = a3;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  return result;
}

void *logObjectForModule_37()
{
  if (gLogObjects && gNumLogObjects >= 40)
  {
    return *(gLogObjects + 312);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_3();
  }

  return v0;
}

uint64_t _startListUpdatesHandler(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 40)
  {
    v4 = *(gLogObjects + 312);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_3();
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting List Updates...", buf, 2u);
  }

  Feature = iap2_feature_getFeature(a1, 6u);
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 10, 0);
  v6 = CFSetCreateMutable(kCFAllocatorDefault, 6, 0);
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    v63 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    LOBYTE(v12) = 0;
    v57 = 0;
LABEL_10:
    v65 = v8;
    v13 = 0;
    v59 = 0;
    v61 = v12;
    v14 = v12;
LABEL_77:
    v37 = 0x10000000000;
    if ((v14 & 1) == 0)
    {
      v37 = 0;
    }

    v68 = v37;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v38 = *(gLogObjects + 312);
    }

    else
    {
      v38 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_3();
      }
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = "NO";
      if (v9)
      {
        v40 = "YES";
      }

      else
      {
        v40 = "NO";
      }

      if (v10)
      {
        v41 = "YES";
      }

      else
      {
        v41 = "NO";
      }

      *buf = 136315906;
      *v71 = v40;
      if (v11)
      {
        v42 = "YES";
      }

      else
      {
        v42 = "NO";
      }

      *&v71[8] = 2080;
      v72 = v41;
      v73 = 2080;
      v74 = v42;
      if (v57)
      {
        v39 = "YES";
      }

      v75 = 2080;
      v76 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[tempRecentsConfig] sendListAvailable: %s, sendListCount: %s, sendList: %s, started: %s", buf, 0x2Au);
    }

    if (gLogObjects && gNumLogObjects >= 40)
    {
      v43 = *(gLogObjects + 312);
    }

    else
    {
      v43 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_3();
      }
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      Count = CFSetGetCount(Mutable);
      *buf = 134217984;
      *v71 = Count;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "recentsSubscriptionListCount: %ld", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 40)
    {
      v45 = *(gLogObjects + 312);
    }

    else
    {
      v45 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_3();
      }
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = "NO";
      if (v59)
      {
        v47 = "YES";
      }

      else
      {
        v47 = "NO";
      }

      if (v13)
      {
        v48 = "YES";
      }

      else
      {
        v48 = "NO";
      }

      *buf = 136315906;
      *v71 = v47;
      if (v61)
      {
        v49 = "YES";
      }

      else
      {
        v49 = "NO";
      }

      *&v71[8] = 2080;
      v72 = v48;
      v73 = 2080;
      v74 = v49;
      if (v14)
      {
        v46 = "YES";
      }

      v75 = 2080;
      v76 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "[tempFavoritesConfig] sendListAvailable: %s, sendListCount: %s, sendList: %s, started: %s", buf, 0x2Au);
    }

    if (gLogObjects && gNumLogObjects >= 40)
    {
      v50 = *(gLogObjects + 312);
      v51 = v63;
    }

    else
    {
      v50 = &_os_log_default;
      v51 = v63;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_3();
      }
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v52 = CFSetGetCount(v6);
      *buf = 134217984;
      *v71 = v52;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "favoritesSubscriptionListCount: %ld", buf, 0xCu);
    }

    _removeSubscriberForSubFeature(Feature, 3);
    v53 = *(Feature + 32);
    if (v53)
    {
      CFRelease(v53);
    }

    *(Feature + 32) = Mutable;
    *(Feature + 40) = v65;
    v54 = *(Feature + 48);
    if (v54)
    {
      CFRelease(v54);
    }

    *(Feature + 48) = v6;
    *(Feature + 56) = v51 | v68;
    *(Feature + 66) = 257;
    _addSubscriberForSubFeature(Feature, 3);
    return 1;
  }

  v15 = FirstParam;
  v11 = 0;
  v66 = 0;
  v16 = 0;
  v58 = 0;
  v60 = 0;
  v12 = 0;
  v17 = 0;
  v67 = 0;
  v56 = 0;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(v15);
    v19 = ParamID;
    v69 = 0;
    if (ParamID <= 3)
    {
      break;
    }

    if (ParamID > 5)
    {
      switch(ParamID)
      {
        case 6:
          v25 = iAP2MsgGetFirstParam(a2, v15);
          if (v25)
          {
            NextParam = v25;
            while (1)
            {
              v27 = iAP2MsgGetParamID(NextParam);
              if (!iAP2MsgIsDataVoid(NextParam))
              {
                break;
              }

              CFSetAddValue(v6, v27);
              NextParam = iAP2MsgGetNextParam(a2, v15, NextParam);
              if (!NextParam)
              {
                goto LABEL_43;
              }
            }

            _startListUpdatesHandler_cold_4(v27, a2);
            goto LABEL_68;
          }

LABEL_43:
          if (CFSetGetCount(v6) > 0)
          {
            v12 = 1;
          }

          else
          {
            v12 = v12;
          }

          break;
        case 7:
          if (!iAP2MsgIsDataVoid(v15))
          {
            _startListUpdatesHandler_cold_3(a2);
            goto LABEL_68;
          }

          break;
        case 8:
          DataAsU16 = iAP2MsgGetDataAsU16(v15, &v69);
          if (v69)
          {
            _startListUpdatesHandler_cold_2(a2);
            goto LABEL_68;
          }

          v56 = DataAsU16;
          goto LABEL_59;
        default:
          goto LABEL_51;
      }

      v17 = 1;
LABEL_50:
      v67 = 1;
      goto LABEL_59;
    }

    if (ParamID != 4)
    {
      if (!iAP2MsgIsDataVoid(v15))
      {
        _startListUpdatesHandler_cold_5(a2);
        goto LABEL_68;
      }

      goto LABEL_50;
    }

    DataAsBool = iAP2MsgGetDataAsBool(v15, &v69);
    if (v69)
    {
      _startListUpdatesHandler_cold_6(a2);
      goto LABEL_68;
    }

    v60 = DataAsBool;
LABEL_59:
    v15 = iAP2MsgGetNextParam(a2, 0, v15);
    if (!v15)
    {
      v35 = v58 | (v60 << 16) & 0xFFFFFFFF00FFFFFFLL | (v16 << 24) | (v66 << 32) | (v11 << 40);
      v63 = v56 | (v67 << 16) & 0xFFFFFFFF00FFFFFFLL | (v17 << 24) | (v12 << 32);
      if (v16 & 1) != 0 || (v66)
      {
        v9 = v16;
        v10 = v16 ^ 1 | v66;
        v8 = v35 | 0x1000000000000;
        v57 = 1;
        if (v67)
        {
          v65 = v8;
          v13 = v17;
          v61 = v12;
          v59 = 1;
          goto LABEL_76;
        }
      }

      else
      {
        v10 = 0;
        v8 = v35 | ((v11 & 1) << 48);
        if (v67)
        {
          v65 = v8;
          v13 = v17;
          v61 = v12;
          v59 = 1;
          v57 = v11;
          v9 = 0;
LABEL_76:
          v14 = 1;
          goto LABEL_77;
        }

        v57 = v11;
        v9 = 0;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }

      v65 = v8;
      v61 = v12;
      v59 = 0;
      v13 = 1;
      goto LABEL_76;
    }
  }

  if (ParamID > 1)
  {
    if (ParamID == 2)
    {
      if (!iAP2MsgIsDataVoid(v15))
      {
        _startListUpdatesHandler_cold_8(a2);
        goto LABEL_68;
      }

LABEL_37:
      v66 = 1;
LABEL_38:
      v16 = 1;
      goto LABEL_59;
    }

    v24 = iAP2MsgGetDataAsU16(v15, &v69);
    if (v69)
    {
      _startListUpdatesHandler_cold_7(a2);
      goto LABEL_68;
    }

    v58 = v24;
    goto LABEL_59;
  }

  if (!ParamID)
  {
    if (!iAP2MsgIsDataVoid(v15))
    {
      _startListUpdatesHandler_cold_10(a2);
      goto LABEL_68;
    }

    goto LABEL_38;
  }

  if (ParamID != 1)
  {
LABEL_51:
    v62 = v16;
    v64 = v11;
    v29 = v17;
    v30 = v12;
    v31 = gLogObjects;
    v32 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v33 = *(gLogObjects + 312);
    }

    else
    {
      v33 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v71 = v31;
        *&v71[8] = 1024;
        LODWORD(v72) = v32;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      MsgID = iAP2MsgGetMsgID(a2);
      *buf = 67109376;
      *v71 = v19;
      *&v71[4] = 1024;
      *&v71[6] = MsgID;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
    }

    v12 = v30;
    v17 = v29;
    v11 = v64;
    v16 = v62;
    goto LABEL_59;
  }

  v21 = iAP2MsgGetFirstParam(a2, v15);
  if (!v21)
  {
LABEL_26:
    if (CFSetGetCount(Mutable) > 0)
    {
      v11 = 1;
    }

    goto LABEL_37;
  }

  v22 = v21;
  while (1)
  {
    v23 = iAP2MsgGetParamID(v22);
    if (!iAP2MsgIsDataVoid(v22))
    {
      break;
    }

    CFSetAddValue(Mutable, v23);
    v22 = iAP2MsgGetNextParam(a2, v15, v22);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  _startListUpdatesHandler_cold_9(v23, a2);
LABEL_68:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t _iAP2MessageCutoffSize_0(uint64_t a1)
{
  MaxSendPayloadSize = iap2_endpoint_getMaxSendPayloadSize(a1);
  if (gLogObjects && gNumLogObjects >= 40)
  {
    v2 = *(gLogObjects + 312);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_3();
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

uint64_t OUTLINED_FUNCTION_3_32()
{
  v2 = *(v0 + 192);

  return iAP2MsgInit(v0 + 120, 16753, v2, 0xFFFF, 0, 0);
}

__n128 OUTLINED_FUNCTION_9_23@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *(v2 - 128) = result.n128_u32[0];
  *(v2 - 124) = v1;
  *(v2 - 116) = 1024;
  return result;
}

void OUTLINED_FUNCTION_10_19(float a1)
{
  *(v3 - 128) = a1;
  *(v3 - 124) = v1;
  *(v3 - 116) = 1024;
  *(v3 - 114) = v2;
}

__n128 OUTLINED_FUNCTION_25_3@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *(v1 - 128) = result.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_30_9(unsigned __int16 a1@<W8>, float a2@<S0>)
{
  *(v3 - 128) = a2;
  *(v3 - 124) = a1;
  *(v3 - 120) = 1024;
  *(v3 - 118) = v2 + 1;
  *(v3 - 114) = 1024;
}

void OUTLINED_FUNCTION_43_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_74_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 128), 2u);
}

void sub_1000BFBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1000C213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C2670(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1000C3878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

uint64_t iAP2MsgSetCallbackOnSend(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t iAP2MsgGetSom(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1 && *(result + 16) >= 6u)
    {
      return bswap32(*v1) >> 16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t iAP2MsgSetMsgID(uint64_t result, __int16 a2)
{
  if (result)
  {
    v2 = *(result + 24);
    if (v2 && *(result + 16) >= 6u)
    {
      *(v2 + 4) = HIBYTE(a2);
      *(*(result + 24) + 5) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL iAP2MsgSetCleanupCB(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 40) = a2;
  }

  return a1 != 0;
}

uint64_t iAP2MsgGetParamValueLen(unsigned __int16 *a1)
{
  v1 = __rev16(*a1);
  v2 = v1 >= 4;
  v3 = v1 - 4;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *iAP2MsgGetFirstParam(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a1;
  if (!a2)
  {
    result = 0;
    v7 = *(v2 + 32);
    v8 = *(v2 + 24) + 6;
    v9 = v7 - v8;
    if (v7 > v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      v11 = v7 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      return result;
    }

    if (v9 >= 4)
    {
      result = v8;
      if (v9 >= __rev16(*v10))
      {
        return result;
      }
    }

    return 0;
  }

  v3 = __rev16(*a2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = *(a1 + 24);
    if (v5 && *(a1 + 16) >= 6u)
    {
      v2 = __rev16(*(v5 + 2));
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v5 = MEMORY[0x18];
  }

  result = 0;
  v12 = v5 + v2;
  v14 = (a2 + 2) > v12 || a2 + v3 > v12;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 + 2;
  }

  if (v3 >= 5 && !v14)
  {
    if (v4 < 4)
    {
      return 0;
    }

    v16 = __rev16(*v15);
    v17 = v16 < 4 || v16 > v4;
    result = v15;
    if (v17)
    {
      return 0;
    }
  }

  return result;
}

void *logObjectForModule_38()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 20;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    return *(gLogObjects + 152);
  }

  v1 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_bluetooth_copyNameForMacAddress_cold_1();
  }

  return v1;
}

uint64_t iAP2MsgForEachParamDo(uint64_t a1, unsigned __int16 *a2, uint64_t (*a3)(uint64_t, unsigned __int16 *, unsigned __int16 *, uint64_t), uint64_t a4)
{
  FirstParam = iAP2MsgGetFirstParam(a1, a2);
  v17 = 0;
  if (!FirstParam)
  {
    return 0;
  }

  v9 = FirstParam;
  while (1)
  {
    v10 = a3(a1, a2, v9, a4);
    NextParamWithError = iAP2MsgGetNextParamWithError(a1, a2, v9, &v17);
    if (v17 == 1)
    {
      break;
    }

    v9 = NextParamWithError;
    if (!NextParamWithError || v10)
    {
      return v10;
    }
  }

  if (_iAP2LogEnableMask)
  {
    v12 = gLogObjects;
    v13 = gNumLogObjects;
    if (gLogObjects)
    {
      v14 = gNumLogObjects < 20;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v19 = v12;
        v20 = 1024;
        v21 = v13;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }
    }

    else
    {
      v15 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "iAP2MsgForEachParamDo";
      v20 = 1024;
      v21 = 482;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Couldn't get next param from iAP2MsgGetNextParamWithError\n", buf, 0x12u);
    }
  }

  return 0xFFFFFFFFLL;
}

_BYTE *iAP2MsgAddGroupParam(uint64_t a1, __int16 a2)
{
  if (*(a1 + 32) - *(a1 + 24) + 4 <= *(a1 + 16))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    iAP2MsgInitParam(a1, v2, a2, 10, 4u, 0);
  }

  return v2;
}

uint64_t iAP2MsgAddI64Param(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4)
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
    iAP2MsgInitParam(a1, v4, a3, 4, 0xCu, a2);
    *(v4 + 4) = bswap64(a4);
  }

  return v4;
}

uint64_t iAP2MsgAddI32Param(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
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
    iAP2MsgInitParam(a1, v4, a3, 5, 8u, a2);
    *(v4 + 4) = bswap32(a4);
  }

  return v4;
}

uint64_t iAP2MsgAddI16Param(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
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
    iAP2MsgInitParam(a1, v4, a3, 6, 6u, a2);
    *(v4 + 4) = bswap32(a4) >> 16;
  }

  return v4;
}

_BYTE *iAP2MsgAddI8Param(uint64_t a1, uint64_t a2, __int16 a3, char a4)
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
    iAP2MsgInitParam(a1, v4, a3, 7, 5u, a2);
    v4[4] = a4;
  }

  return v4;
}

_BYTE *iAP2MsgAddStringParam(uint64_t a1, uint64_t a2, __int16 a3, char *__s)
{
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = v10 + v8 - v9;
  if (v11 < 5)
  {
    v16 = 0;
  }

  else
  {
    v12 = strlen(__s) + 1;
    v13 = v11 - 4;
    if (v11 - 4 < v12)
    {
      v14 = &__s[v10 + v8 - v9 - 5];
      do
      {
        v12 = v13;
        if (v14 <= __s)
        {
          break;
        }

        v15 = *v14--;
        --v13;
      }

      while (v15 < -64);
    }

    if (v12 - 65532 >= 0xFFFFFFFFFFFF0000)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  if (&v9[(v16 + 4) - v10] <= v8)
  {
    v17 = v9;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    iAP2MsgInitParam(a1, v17, a3, 8, (v16 + 4), a2);
    strlcpy(v17 + 4, __s, v16);
  }

  return v17;
}

_BYTE *iAP2MsgAddDataParam(uint64_t a1, uint64_t a2, __int16 a3, const void *a4, unsigned int a5)
{
  if (*(a1 + 32) + a5 + 4 - *(a1 + 24) <= *(a1 + 16))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    iAP2MsgInitParam(a1, v5, a3, 9, (a5 + 4), a2);
    memcpy(v5 + 4, a4, a5);
  }

  return v5;
}

_BYTE *iAP2MsgAddVoidParam(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (*(a1 + 32) - *(a1 + 24) + 4 <= *(a1 + 16))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    iAP2MsgInitParam(a1, v3, a3, 11, 4u, a2);
  }

  return v3;
}

_BYTE *iAP2MsgAddArrayU8Param(uint64_t a1, uint64_t a2, __int16 a3, char *a4, unsigned int a5)
{
  if (a5 > 0xFFFB)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if (v6 + a5 + 4 - *(a1 + 24) <= *(a1 + 16))
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    iAP2MsgInitParam(a1, v7, a3, 9, (a5 + 4), a2);
    if (a5)
    {
      v9 = a5;
      v10 = 4;
      do
      {
        v11 = *a4++;
        v7[v10++] = v11;
        --v9;
      }

      while (v9);
    }

    else
    {
      return v6;
    }
  }

  return v7;
}

unint64_t iAP2MsgGetDataAsU64(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = __rev16(*a1);
  *a2 = v2 != 12;
  if (v2 == 12)
  {
    return bswap64(*(a1 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t iAP2MsgGetDataAsU32(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = __rev16(*a1);
  *a2 = v2 != 8;
  if (v2 == 8)
  {
    return bswap32(*(a1 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t iAP2MsgGetDataAsU16(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = __rev16(*a1);
  *a2 = v2 != 6;
  if (v2 == 6)
  {
    return bswap32(a1[2]) >> 16;
  }

  else
  {
    return 0;
  }
}

uint64_t iAP2MsgGetDataAsU8(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = __rev16(*a1);
  *a2 = v2 != 5;
  if (v2 == 5)
  {
    return *(a1 + 4);
  }

  else
  {
    return 0;
  }
}

BOOL iAP2MsgGetDataAsBool(unsigned __int16 *a1, _BOOL4 *a2)
{
  v2 = __rev16(*a1);
  v3 = *(a1 + 4);
  result = *(a1 + 4) != 0;
  v6 = v2 != 5 || v3 > 1;
  *a2 = v6;
  return result;
}

uint64_t iAP2MsgGetDataAsI32(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = bswap32(*(a1 + 1));
  *a2 = __rev16(*a1) != 8;
  return v2;
}

uint64_t iAP2MsgGetDataAsI16(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = bswap32(a1[2]);
  *a2 = __rev16(*a1) != 6;
  return (v2 >> 16);
}

unsigned __int16 *iAP2MsgGetDataAsString(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = __rev16(*a1);
  *a2 = v2 < 5;
  if (v2 < 5)
  {
    return 0;
  }

  v4 = *(a1 + v2 - 1);
  *a2 = v4 != 0;
  if (v4)
  {
    return 0;
  }

  else
  {
    return a1 + 2;
  }
}

size_t iAP2MsgGetDataAsArrayU8(unsigned __int16 *a1, _DWORD *a2, void *__dst, int a4)
{
  v4 = 0;
  v5 = __rev16(*a1);
  v6 = v5 >= 4;
  v7 = v5 - 4;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = 0;
  if (v8 <= a4)
  {
    memcpy(__dst, a1 + 2, v8);
    return v8;
  }

  return v4;
}

uint64_t iAP2MsgGetDataAsArrayI32(unsigned __int16 *a1, _DWORD *a2, _DWORD *a3, int a4)
{
  v4 = __rev16(*a1);
  v5 = v4 - 4;
  if (v4 < 4)
  {
    v5 = 0;
  }

  *a2 = (v5 & 3) != 0;
  if ((v5 & 3) != 0)
  {
    return 0;
  }

  result = v5 >> 2;
  if (result > a4)
  {
    return 0;
  }

  if (v4 >= 5)
  {
    if (result <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5 >> 2;
    }

    v9 = a1 + 7;
    do
    {
      *a3++ = bswap32(*(v9 - 3));
      v9 += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t iAP2MsgInitWithSom(uint64_t result, __int16 a2, __int16 a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 24) = a4;
    *(result + 16) = a5;
    *(result + 40) = a6;
    *(result + 48) = a7;
    if (a4)
    {
      *a4 = HIBYTE(a2);
      *(a4 + 1) = a2;
      *(a4 + 2) = 1536;
      *(a4 + 4) = HIBYTE(a3);
      v7 = a4 + 6;
      *(a4 + 5) = a3;
    }

    else
    {
      v7 = 0;
    }

    *(result + 32) = v7;
  }

  return result;
}

id platform_oobBtPairing_accessoryDictionaryForLogging(uint64_t a1)
{
  v1 = [NSMutableDictionary dictionaryWithDictionary:a1];
  v2 = [v1 objectForKey:@"ACCOOBBTPairingCertData"];

  if (v2)
  {
    v3 = [v1 objectForKey:@"ACCOOBBTPairingCertData"];
    v4 = [v3 length];

    v5 = [NSString stringWithFormat:@"%lu bytes", v4];
    [v1 setObject:v5 forKey:@"ACCOOBBTPairingCertData"];
  }

  v6 = [v1 objectForKey:@"ACCOOBBTPairingCertSerial"];

  if (v6)
  {
    v7 = [v1 objectForKey:@"ACCOOBBTPairingCertSerial"];
    v8 = [v7 length];

    v9 = [NSString stringWithFormat:@"%lu bytes", v8];
    [v1 setObject:v9 forKey:@"ACCOOBBTPairingCertSerial"];
  }

  return v1;
}

void platform_oobBtPairing_accessoryAttached(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v4 = *(gLogObjects + 360);
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = platform_oobBtPairing_accessoryDictionaryForLogging(a2);
    v8 = 138412546;
    v9 = a1;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "oobBtPairing accessoryAttached: %@, accInfoDict=%@", &v8, 0x16u);
  }

  v7 = +[ACCOOBBTPairingServer sharedServer];
  [v7 accessoryOOBBTPairingAttached:a1 accInfoDict:a2];
}

void platform_oobBtPairing_accessoryDetached(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v2 = *(gLogObjects + 360);
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "oobBtPairing accessoryDetached: %@", &v5, 0xCu);
  }

  v4 = +[ACCOOBBTPairingServer sharedServer];
  [v4 accessoryOOBBTPairingDetached:a1];
}

void platform_oobBtPairing_accessoryInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v8 = *(gLogObjects + 360);
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
    v11 = 138412802;
    v12 = a1;
    v13 = 2112;
    v14 = a2;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "oobBtPairing accessoryInfo: %@, oobBtPairingUID %@, deviceClass=%xh", &v11, 0x1Cu);
  }

  v10 = +[ACCOOBBTPairingServer sharedServer];
  [v10 accessoryOOBBTPairingBTAccessoryInfo:a1 oobBtPairingUID:a2 accessoryMacAddr:a3 deviceClass:a4];
}

void platform_oobBtPairing_completionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v6 = *(gLogObjects + 360);
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
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "oobBtPairing completionStatus: %@, oobBtPairingUID %@, result=%d", &v9, 0x1Cu);
  }

  v8 = +[ACCOOBBTPairingServer sharedServer];
  [v8 accessoryOOBBTPairingCompletionStatus:a1 oobBtPairingUID:a2 accessoryMacAddr:0 result:a3];
}

void platform_oobBtPairing_startOobBtPairingHandler(void *a1)
{
  v1 = a1;
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v2 = *(gLogObjects + 360);
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "oobBtPairing startOOBBTPairing: %@", &v4, 0xCu);
  }

  accFeatureHandlers_invokeHandler(v1, 40, 0);
}

void platform_oobBtPairing_linkKeyInfoHandler(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v11 = *(gLogObjects + 360);
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
    v14 = 138413058;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2048;
    v19 = [v9 length];
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "oobBtPairing linkKeyInfo: %@, oobBtPairingUID=%@, linkKey=(%lu bytes), deviceMacAddr=%@", &v14, 0x2Au);
  }

  v13 = malloc_type_malloc(0x20uLL, 0x1062040C7F98563uLL);
  *v13 = 1;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  if ((accFeatureHandlers_invokeHandler(v7, 41, v13) & 1) == 0)
  {
    platform_oobBtPairing_deleteParams(v13);
  }
}

void platform_oobBtPairing_deleteParams(void *a1)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      v2 = a1[2];
      if (v2)
      {
        CFRelease(v2);
      }

      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = a1[1];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void platform_oobBtPairing_stopOobBtPairingHandler(void *a1)
{
  v1 = a1;
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v2 = *(gLogObjects + 360);
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "oobBtPairing stopOOBBTPairing: %@", &v4, 0xCu);
  }

  accFeatureHandlers_invokeHandler(v1, 42, 0);
}

__CFDictionary *platform_oobBtPairing_createAccInfoMutableDict(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, char a10)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  v19 = Mutable;
  if (a2 && a1 && Mutable)
  {
    CFDictionaryAddValue(Mutable, @"ACCOOBBTPairingAccManufacturer", a2);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccModel", a1);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccName", a3);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccSerialNum", a4);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccFwVer", a5);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccHwVer", a6);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingCertData", a8);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingCertSerial", a9);
    if (a7)
    {
      CFDictionaryAddValue(v19, @"ACCOOBBTPairingDisplayName", a7);
    }

    valuePtr = a10;
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingCarPlaySupported", v20);
    CFRelease(v20);
  }

  return v19;
}

void platform_oobBtPairing_requestLegacyConnectionIDForAccessoryUID(void *a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __platform_oobBtPairing_requestLegacyConnectionIDForAccessoryUID_block_invoke;
  v9[3] = &unk_100225968;
  v1 = a1;
  v10 = v1;
  v2 = objc_retainBlock(v9);
  EndpointWithUUID = acc_manager_getEndpointWithUUID(v1);
  if (EndpointWithUUID && (v4 = EndpointWithUUID, acc_endpoint_getProtocol(EndpointWithUUID) == 4) && (v5 = v4[7]) != 0)
  {
    dispatch_async(*(v5 + 24), v2);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 46)
    {
      v6 = *(gLogObjects + 360);
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
      *buf = 138412290;
      v12 = v1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "oobBtPairing requestLegacyConnectionIDForAccessoryUID: %@, couldn't find accessory endpoint", buf, 0xCu);
    }

    v8 = dispatch_get_global_queue(0, 0);
    dispatch_async(v8, v2);
  }
}

void __platform_oobBtPairing_requestLegacyConnectionIDForAccessoryUID_block_invoke(uint64_t a1)
{
  v2 = platform_externalAccesory_legacyConnectionUUIDForPrimaryEndpointUUID(*(a1 + 32));
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v3 = *(gLogObjects + 360);
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "oobBtPairing requestLegacyConnectionIDForAccessoryUID: %@, return connectionID %d", &v6, 0x12u);
  }

  platform_oobBtPairing_legacyConnectionIDForAccessoryUID(*(a1 + 32), v2);
}

void platform_oobBtPairing_legacyConnectionIDForAccessoryUID(void *a1, uint64_t a2)
{
  v3 = a1;
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v4 = *(gLogObjects + 360);
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "oobBtPairing legacyConnectionIDForAccessoryUID: %@ connectionID: %d", &v7, 0x12u);
  }

  v6 = +[ACCOOBBTPairingServer sharedServer];
  [v6 legacyConnectionIDForAccessoryUID:v3 connectionID:a2];
}

void platform_oobBTPairing_incrementUserCount()
{
  v0 = +[ACCOOBBTPairingServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCOOBBTPairingServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233D20];
  }
}

void platform_oobBTPairing_decrementUserCount()
{
  v0 = +[ACCOOBBTPairingServer sharedServer];
  [v0 decrementUserCount];
}

void platform_system_launchApplication(void *a1, char a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
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
    v11 = 138412290;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Launching app with bundle ID: %@...", &v11, 0xCu);
  }

  v7 = _getSystemPluginInstance();
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 launchApplication:a1 options:a2 & 1];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v8 = *(gLogObjects + 48);
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
        v10 = NSStringFromSelector("launchApplication:options:");
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v11, 0xCu);
      }
    }
  }
}

id _getSystemPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformSystemPluginProtocol fallbackToTransportPlugins:0];

  if (!v1)
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

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _getSystemPluginInstance_cold_2(v4);
    }
  }

  return v1;
}

uint64_t platform_system_isApplicationVisible(uint64_t a1)
{
  v2 = _getSystemPluginInstance();
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 isAppVisibleInCurrentMode:a1];
    }

    else
    {
      if (gLogObjects)
      {
        v4 = gNumLogObjects < 7;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
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
        v7 = NSStringFromSelector("isAppVisibleInCurrentMode:");
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@, assuming app is visible!", &v9, 0xCu);
      }

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id platform_system_applicationSupportsExternalAccessoryBackgroundMode(uint64_t a1)
{
  v2 = _getSystemPluginInstance();
  if (!v2)
  {
LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
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
      v7 = NSStringFromSelector("supportsExternalAccessoryBackgroundMode:");
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v9, 0xCu);
    }

    goto LABEL_15;
  }

  v3 = [v2 supportsExternalAccessoryBackgroundMode:a1];
LABEL_16:

  return v3;
}

uint64_t platform_system_copyInstalledApplicationsForExternalAccessoryProtocol(uint64_t a1)
{
  v2 = _getSystemPluginInstance();
  if (!v2)
  {
LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
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
      v7 = NSStringFromSelector("applicationsInstalledWithExternalAccessoryProtocol:");
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@", &v9, 0xCu);
    }

    goto LABEL_15;
  }

  v3 = [v2 applicationsInstalledWithExternalAccessoryProtocol:a1];
LABEL_16:

  return v3;
}

id platform_system_launchURL(uint64_t a1)
{
  v2 = _getSystemPluginInstance();
  if (!v2)
  {
LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
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
      v7 = NSStringFromSelector("launchURL:");
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@", &v9, 0xCu);
    }

    goto LABEL_15;
  }

  v3 = [v2 launchURL:a1];
LABEL_16:

  return v3;
}

id platform_system_isAppInstalledWithBundleID(uint64_t a1)
{
  v2 = _getSystemPluginInstance();
  if (!v2)
  {
LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
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
      v7 = NSStringFromSelector("isAppInstalledWithBundleID:");
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v9, 0xCu);
    }

    goto LABEL_15;
  }

  v3 = [v2 isAppInstalledWithBundleID:a1];
LABEL_16:

  return v3;
}

uint64_t platform_system_copyAppNameForBundleID(uint64_t a1)
{
  v2 = _getSystemPluginInstance();
  if (!v2)
  {
LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
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
      v7 = NSStringFromSelector("appNameForBundleID:");
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v9, 0xCu);
    }

    goto LABEL_15;
  }

  v3 = [v2 appNameForBundleID:a1];
LABEL_16:

  return v3;
}

void platform_system_launchApplicationToBackground(void *a1)
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
    v9 = 138412290;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#System] Launching app with bundle ID to background: %@...", &v9, 0xCu);
  }

  v5 = _getSystemPluginInstance();
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 launchBundleIDToBackground:a1];
    }

    else
    {
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

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = NSStringFromSelector("launchBundleIDToBackground:");
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v9, 0xCu);
      }
    }
  }
}

id platform_system_isApplicationInForeground(void *a1)
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
    v11 = 138412290;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#System] isApplicationInForeground? : %@...", &v11, 0xCu);
  }

  v5 = _getSystemPluginInstance();
  if (!v5)
  {
    goto LABEL_23;
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
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector("isApplicationInForeground:");
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v11, 0xCu);
    }

LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  v6 = [v5 isApplicationInForeground:a1];
LABEL_24:

  return v6;
}

void platform_system_toggleProcessAssertionForBundleID(uint64_t a1, uint64_t a2)
{
  v4 = _getSystemPluginInstance();
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 toggleProcessAssertionForBundleID:a1 applicationPid:a2];
    }

    else
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
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v7 = &_os_log_default;
        v6 = &_os_log_default;
      }

      else
      {
        v7 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = NSStringFromSelector("toggleProcessAssertionForBundleID:applicationPid:");
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v9, 0xCu);
      }
    }
  }
}

uint64_t platform_system_isDeviceLocked()
{
  v0 = _getSystemPluginInstance();
  if (!v0)
  {
LABEL_15:
    v1 = 1;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
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
      v5 = NSStringFromSelector("isDeviceLocked");
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v7, 0xCu);
    }

    goto LABEL_15;
  }

  v1 = [v0 isDeviceLocked];
LABEL_16:

  return v1;
}

uint64_t platform_system_unlockedSinceBoot()
{
  v0 = _getSystemPluginInstance();
  if (!v0)
  {
LABEL_15:
    v1 = 1;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
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
      v5 = NSStringFromSelector("unlockedSinceBoot");
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v7, 0xCu);
    }

    goto LABEL_15;
  }

  v1 = [v0 unlockedSinceBoot];
LABEL_16:

  return v1;
}

id platform_system_isLockScreenUIDisplayed()
{
  v0 = _getSystemPluginInstance();
  if (!v0)
  {
LABEL_15:
    v1 = 0;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
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
      v5 = NSStringFromSelector("isLockScreenUIDisplayed");
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v7, 0xCu);
    }

    goto LABEL_15;
  }

  v1 = [v0 isLockScreenUIDisplayed];
LABEL_16:

  return v1;
}

void platform_system_startObservingApplicationState()
{
  v0 = _getSystemPluginInstance();
  if (v0)
  {
    if (objc_opt_respondsToSelector())
    {
      [v0 startObservingApplicationState];
    }

    else
    {
      if (gLogObjects)
      {
        v1 = gNumLogObjects < 7;
      }

      else
      {
        v1 = 1;
      }

      if (v1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v3 = &_os_log_default;
        v2 = &_os_log_default;
      }

      else
      {
        v3 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = NSStringFromSelector("startObservingApplicationState");
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v5, 0xCu);
      }
    }
  }
}

void platform_system_startObservingFirstUnlockNotification()
{
  v0 = _getSystemPluginInstance();
  if (v0)
  {
    if (objc_opt_respondsToSelector())
    {
      [v0 startObservingFirstUnlockNotification];
    }

    else
    {
      if (gLogObjects)
      {
        v1 = gNumLogObjects < 7;
      }

      else
      {
        v1 = 1;
      }

      if (v1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v3 = &_os_log_default;
        v2 = &_os_log_default;
      }

      else
      {
        v3 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = NSStringFromSelector("startObservingFirstUnlockNotification");
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v5, 0xCu);
      }
    }
  }
}

const __CFString *platform_system_copyMediaLibraryUIDString(int a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _getSystemPluginInstance();
    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [v3 mediaLibraryUIDString:a2];
LABEL_16:

        return v4;
      }

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
        v7 = NSStringFromSelector("mediaLibraryUIDString:");
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v9, 0xCu);
      }
    }

    v4 = &stru_10022D360;
    goto LABEL_16;
  }

  return &stru_10022D360;
}

id platform_system_createFolder(uint64_t a1, uint64_t a2)
{
  v4 = _getSystemPluginInstance();
  if (!v4)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 7;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector("createFolder:mode:");
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#System] Platform plugin does not implement selector %@!", &v11, 0xCu);
    }

    goto LABEL_15;
  }

  v5 = [v4 createFolder:a1 mode:a2];
LABEL_16:

  return v5;
}

BOOL loggingProtocol_requestLogsFromAccessory(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 < 2)
  {
    if (a2)
    {
      loggingProtocol_requestAccessoryLogs(a1, a2);
      return 1;
    }

    if (gLogObjects && gNumLogObjects >= 53)
    {
      v8 = *(gLogObjects + 416);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    result = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (result)
    {
      LOWORD(v9[0]) = 0;
      v5 = "Session state invalid.";
      v6 = v8;
      v7 = 2;
      goto LABEL_18;
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v3 = *(gLogObjects + 416);
    }

    else
    {
      v3 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    result = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (result)
    {
      v9[0] = 67109120;
      v9[1] = v2;
      v5 = "Invalid LoggingProtocoLogFilePriority. [priority: %d]. Not requesting logs from accessory.";
      v6 = v3;
      v7 = 8;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, v9, v7);
      return 0;
    }
  }

  return result;
}

BOOL loggingProtocol_stopLogsFromAccessory(unsigned int a1, uint64_t a2)
{
  if (a2)
  {
    loggingProtocol_stopAccessoryLogTransfer(a1, a2);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v3 = *(gLogObjects + 416);
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
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session state invalid.", v5, 2u);
    }
  }

  return a2 != 0;
}

uint64_t loggingProtocol_parseIncomingByteStream(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (a2)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(a3 + 24);
        do
        {
          v11 = *(a3 + 4);
          v12 = v8 + v11;
          v13 = (a1 + v8);
          if (v8 + v11 <= a2)
          {
            memcpy(v6 + v10, v13, *(a3 + 4));
            v10 += v11;
            v15 = (*a3 + 1) % 3u;
            *a3 = v15;
            if (v15 == 2)
            {
              v16 = (bswap32(*(v6 + v10 - 2)) >> 16) - 4;
              *(a3 + 4) = v16;
              if (!v16)
              {
                *a3 = 0;
                *(a3 + 4) = 2;
LABEL_12:
                loggingProtocol_handleMessage(v6, v10, a3);
                v10 = 0;
              }
            }

            else
            {
              *(a3 + 4) = 2;
              if (!v15)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            v14 = a2 - v9;
            *(a3 + 4) = v11 - (a2 - v9);
            memcpy(v6 + v10, v13, (a2 - v9));
            v10 += v14;
            v12 = v8 + v14;
          }

          *(a3 + 24) = v10;
          v8 = v12;
          v9 = v12;
        }

        while (v12 < a2);
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

uint64_t loggingProtocol_sendMessage(int a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v7 = 0;
  result = loggingProtocol_buildMessageDataFromStruct(a1, a2, &v8, &v7);
  if (result)
  {
    v5 = v8;
    v6 = loggingProtocol_sendMessageData(v8, v7, a3);
    free(v5);
    return v6;
  }

  return result;
}

uint64_t loggingProtocol_buildMessageDataFromStruct(int a1, uint64_t a2, void *a3, unsigned __int16 *a4)
{
  v7 = a1;
  switch(a1)
  {
    case 0:
      if (!a2)
      {
        return 0;
      }

      v20 = *(a2 + 20) + *(a2 + 32) + 15;
      v21 = *(a2 + 48);
      if (v21)
      {
        v20 += strnlen(v21, 0x200uLL);
      }

      v8 = v20 + 4;
      if ((v20 + 4) > 0x200u)
      {
        return 0;
      }

      result = malloc_type_malloc((v20 + 4), 0xACD45B4DuLL);
      if (result)
      {
        v10 = result;
        *(result + 4) = *(a2 + 3);
        *(result + 5) = *(a2 + 2);
        *(result + 6) = BYTE1(*a2);
        *(result + 7) = *a2;
        *(result + 8) = *(a2 + 15);
        *(result + 9) = *(a2 + 14);
        *(result + 10) = WORD2(*(a2 + 8)) >> 8;
        *(result + 11) = *(a2 + 12);
        *(result + 12) = BYTE3(*(a2 + 8));
        *(result + 13) = BYTE2(*(a2 + 8));
        *(result + 14) = BYTE1(*(a2 + 8));
        *(result + 15) = *(a2 + 8);
        *(result + 16) = *(a2 + 16);
        v22 = *(a2 + 20);
        *(result + 17) = v22;
        memcpy((result + 18), *(a2 + 24), v22);
        v23 = *(a2 + 20);
        v24 = *(a2 + 32);
        v25 = v23 + 19;
        v10[v23 + 18] = v24;
        memcpy(&v10[v23 + 19], *(a2 + 40), v24);
        v26 = *(a2 + 48);
        if (v26)
        {
          v27 = *(a2 + 32) + v25;
          strlcpy(&v10[v27], v26, v8 - v27);
        }

        goto LABEL_56;
      }

      return result;
    case 1:
      if (!a2)
      {
        return 0;
      }

      v28 = *(a2 + 24);
      if (v28 > 0x3D)
      {
        return 0;
      }

      v12 = 8 * v28 + 22;
      result = malloc_type_malloc(8 * v28 + 22, 0xFF8B5A2EuLL);
      if (result)
      {
        v10 = result;
        *(result + 4) = *(a2 + 3);
        *(result + 5) = *(a2 + 2);
        *(result + 6) = BYTE1(*a2);
        *(result + 7) = *a2;
        *(result + 8) = *(a2 + 15);
        *(result + 9) = *(a2 + 14);
        *(result + 10) = WORD2(*(a2 + 8)) >> 8;
        *(result + 11) = *(a2 + 12);
        *(result + 12) = BYTE3(*(a2 + 8));
        *(result + 13) = BYTE2(*(a2 + 8));
        *(result + 14) = BYTE1(*(a2 + 8));
        *(result + 15) = *(a2 + 8);
        *(result + 16) = *(a2 + 16);
        *(result + 17) = *(a2 + 23);
        *(result + 18) = *(a2 + 22);
        *(result + 19) = BYTE1(*(a2 + 20));
        *(result + 20) = *(a2 + 20);
        v29 = *(a2 + 24);
        *(result + 21) = v29;
        if (v29)
        {
          v30 = 0;
          v31 = 22;
          do
          {
            v32 = (result + v31);
            *v32 = *(*(a2 + 32) + 8 * v30 + 7);
            v32[1] = *(*(a2 + 32) + 8 * v30 + 6);
            v32[2] = WORD2(*(*(a2 + 32) + 8 * v30)) >> 8;
            v32[3] = *(*(a2 + 32) + 8 * v30 + 4);
            v32[4] = BYTE3(*(*(a2 + 32) + 8 * v30));
            v32[5] = BYTE2(*(*(a2 + 32) + 8 * v30));
            v32[6] = BYTE1(*(*(a2 + 32) + 8 * v30));
            v32[7] = *(*(a2 + 32) + 8 * v30);
            v31 += 8;
            ++v30;
          }

          while (v30 < *(a2 + 24));
        }

        goto LABEL_30;
      }

      return result;
    case 2:
      if (!a2)
      {
        return 0;
      }

      v12 = *(a2 + 64) + *(a2 + 48) + *(a2 + 32) + 32;
      result = malloc_type_malloc(*(a2 + 64) + *(a2 + 48) + *(a2 + 32) + 32, 0x5611364uLL);
      if (result)
      {
        v10 = result;
        *(result + 4) = *a2;
        *(result + 5) = *(a2 + 15);
        *(result + 6) = *(a2 + 14);
        *(result + 7) = WORD2(*(a2 + 8)) >> 8;
        *(result + 8) = *(a2 + 12);
        *(result + 9) = BYTE3(*(a2 + 8));
        *(result + 10) = BYTE2(*(a2 + 8));
        *(result + 11) = BYTE1(*(a2 + 8));
        *(result + 12) = *(a2 + 8);
        *(result + 13) = *(a2 + 16);
        v13 = *(a2 + 32);
        *(result + 29) = v13;
        memcpy((result + 30), *(a2 + 40), v13);
        v14 = *(a2 + 32);
        v15 = *(a2 + 48);
        v16 = v14 + 31;
        v10[v14 + 30] = v15;
        memcpy(&v10[v14 + 31], *(a2 + 56), v15);
        v17 = v16 + *(a2 + 48);
        v18 = *(a2 + 64);
        v10[v17] = v18;
        memcpy(&v10[v17 + 1], *(a2 + 72), v18);
LABEL_30:
        v8 = v12;
        goto LABEL_56;
      }

      return result;
    case 3:
      if (!a2)
      {
        return 0;
      }

      result = malloc_type_malloc(5uLL, 0x9D5F5C3FuLL);
      if (result)
      {
        v10 = result;
        *(result + 4) = *a2;
        v8 = 5;
        goto LABEL_56;
      }

      return result;
    case 4:
    case 5:
    case 8:
      v8 = 4;
      result = malloc_type_malloc(4uLL, 0xA296EB26uLL);
      if (result)
      {
        v10 = result;
        goto LABEL_56;
      }

      return result;
    case 6:
      if (!a2)
      {
        return 0;
      }

      v33 = 1633714508;
      goto LABEL_53;
    case 7:
      if (!a2)
      {
        return 0;
      }

      v33 = 3270281389;
LABEL_53:
      result = malloc_type_malloc(0xCuLL, v33);
      if (!result)
      {
        return result;
      }

      v10 = result;
      *(result + 4) = *(a2 + 3);
      *(result + 5) = *(a2 + 2);
      *(result + 6) = BYTE1(*a2);
      *(result + 7) = *a2;
      *(result + 8) = *(a2 + 7);
      *(result + 9) = *(a2 + 6);
      *(result + 10) = BYTE1(*(a2 + 4));
      *(result + 11) = *(a2 + 4);
      goto LABEL_55;
    case 9:
      if (!a2)
      {
        return 0;
      }

      v19 = 2323520260;
      goto LABEL_37;
    case 10:
      if (!a2)
      {
        return 0;
      }

      result = malloc_type_malloc(0x1CuLL, 0x13EF852uLL);
      if (!result)
      {
        return result;
      }

      v10 = result;
      *(result + 4) = *a2;
      *(result + 5) = *(a2 + 15);
      *(result + 6) = *(a2 + 14);
      *(result + 7) = WORD2(*(a2 + 8)) >> 8;
      *(result + 8) = *(a2 + 12);
      *(result + 9) = BYTE3(*(a2 + 8));
      *(result + 10) = BYTE2(*(a2 + 8));
      *(result + 11) = BYTE1(*(a2 + 8));
      *(result + 12) = *(a2 + 8);
      *(result + 13) = *(a2 + 23);
      *(result + 14) = *(a2 + 22);
      *(result + 15) = WORD2(*(a2 + 16)) >> 8;
      *(result + 16) = *(a2 + 20);
      *(result + 17) = BYTE3(*(a2 + 16));
      *(result + 18) = BYTE2(*(a2 + 16));
      *(result + 19) = BYTE1(*(a2 + 16));
      *(result + 20) = *(a2 + 16);
      v8 = 28;
      goto LABEL_56;
    case 11:
      if (!a2)
      {
        return 0;
      }

      v19 = 3046791216;
LABEL_37:
      result = malloc_type_malloc(0x24uLL, v19);
      if (!result)
      {
        return result;
      }

      v10 = result;
      *(result + 4) = *(a2 + 3);
      *(result + 5) = *(a2 + 2);
      *(result + 6) = BYTE1(*a2);
      *(result + 7) = *a2;
      *(result + 8) = *(a2 + 7);
      *(result + 9) = *(a2 + 6);
      *(result + 10) = BYTE1(*(a2 + 4));
      *(result + 11) = *(a2 + 4);
      *(result + 12) = *(a2 + 15);
      *(result + 13) = *(a2 + 14);
      *(result + 14) = WORD2(*(a2 + 8)) >> 8;
      *(result + 15) = *(a2 + 12);
      *(result + 16) = BYTE3(*(a2 + 8));
      *(result + 17) = BYTE2(*(a2 + 8));
      *(result + 18) = BYTE1(*(a2 + 8));
      *(result + 19) = *(a2 + 8);
      *(result + 20) = *(a2 + 23);
      *(result + 21) = *(a2 + 22);
      *(result + 22) = WORD2(*(a2 + 16)) >> 8;
      *(result + 23) = *(a2 + 20);
      *(result + 24) = BYTE3(*(a2 + 16));
      *(result + 25) = BYTE2(*(a2 + 16));
      *(result + 26) = BYTE1(*(a2 + 16));
      *(result + 27) = *(a2 + 16);
      *(result + 28) = *(a2 + 24);
      v8 = 36;
      goto LABEL_56;
    case 12:
      if (!a2)
      {
        return 0;
      }

      v11 = 3289104569;
      goto LABEL_33;
    case 13:
      if (!a2)
      {
        return 0;
      }

      v8 = *(a2 + 24) + 31;
      result = malloc_type_malloc(v8, 0xDBF3BB88uLL);
      if (!result)
      {
        return result;
      }

      v10 = result;
      *(result + 4) = *(a2 + 3);
      *(result + 5) = *(a2 + 2);
      *(result + 6) = BYTE1(*a2);
      *(result + 7) = *a2;
      *(result + 8) = *(a2 + 7);
      *(result + 9) = *(a2 + 6);
      *(result + 10) = BYTE1(*(a2 + 4));
      *(result + 11) = *(a2 + 4);
      *(result + 12) = *(a2 + 15);
      *(result + 13) = *(a2 + 14);
      *(result + 14) = WORD2(*(a2 + 8)) >> 8;
      *(result + 15) = *(a2 + 12);
      *(result + 16) = BYTE3(*(a2 + 8));
      *(result + 17) = BYTE2(*(a2 + 8));
      *(result + 18) = BYTE1(*(a2 + 8));
      *(result + 19) = *(a2 + 8);
      *(result + 20) = *(a2 + 23);
      *(result + 21) = *(a2 + 22);
      *(result + 22) = WORD2(*(a2 + 16)) >> 8;
      *(result + 23) = *(a2 + 20);
      *(result + 24) = BYTE3(*(a2 + 16));
      *(result + 25) = BYTE2(*(a2 + 16));
      *(result + 26) = BYTE1(*(a2 + 16));
      *(result + 27) = *(a2 + 16);
      *(result + 28) = *(a2 + 25);
      *(result + 29) = *(a2 + 24);
      memcpy((result + 30), *(a2 + 32), *(a2 + 24));
      v10[(*(a2 + 24) + 30)] = *(a2 + 40);
      goto LABEL_56;
    case 14:
      if (!a2)
      {
        return 0;
      }

      v11 = 1581899577;
LABEL_33:
      result = malloc_type_malloc(0xCuLL, v11);
      if (!result)
      {
        return result;
      }

      v10 = result;
      *(result + 4) = *(a2 + 3);
      *(result + 5) = *(a2 + 2);
      *(result + 6) = BYTE1(*a2);
      *(result + 7) = *a2;
      *(result + 8) = *(a2 + 4);
LABEL_55:
      v8 = 12;
      goto LABEL_56;
    case 15:
      if (!a2)
      {
        return 0;
      }

      result = malloc_type_malloc(0x10uLL, 0xDF027933uLL);
      if (!result)
      {
        return result;
      }

      v10 = result;
      *(result + 4) = *(a2 + 3);
      *(result + 5) = *(a2 + 2);
      *(result + 6) = BYTE1(*a2);
      *(result + 7) = *a2;
      *(result + 8) = *(a2 + 7);
      *(result + 9) = *(a2 + 6);
      *(result + 10) = BYTE1(*(a2 + 4));
      *(result + 11) = *(a2 + 4);
      *(result + 12) = *(a2 + 11);
      *(result + 13) = *(a2 + 10);
      *(result + 14) = BYTE1(*(a2 + 8));
      *(result + 15) = *(a2 + 8);
      v8 = 16;
      goto LABEL_56;
    case 16:
      if (!a2)
      {
        return 0;
      }

      v8 = *(a2 + 8) + 16;
      result = malloc_type_malloc(v8, 0x572B0BD7uLL);
      if (result)
      {
        v10 = result;
        *(result + 4) = *(a2 + 3);
        *(result + 5) = *(a2 + 2);
        *(result + 6) = BYTE1(*a2);
        *(result + 7) = *a2;
        *(result + 8) = *(a2 + 7);
        *(result + 9) = *(a2 + 6);
        *(result + 10) = BYTE1(*(a2 + 4));
        *(result + 11) = *(a2 + 4);
        *(result + 12) = *(a2 + 11);
        *(result + 13) = *(a2 + 10);
        *(result + 14) = BYTE1(*(a2 + 8));
        *(result + 15) = *(a2 + 8);
        memcpy((result + 16), *(a2 + 16), *(a2 + 8));
LABEL_56:
        *v10 = HIBYTE(v7);
        v10[1] = v7;
        v10[2] = HIBYTE(v8);
        v10[3] = v8;
        *a3 = v10;
        result = 1;
        *a4 = v8;
      }

      return result;
    default:
      return 0;
  }
}

void sub_1000CBB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

BOOL platform_transactions_connectionTypeRequiresTransaction(int a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 14;
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
    v4 = *(gLogObjects + 104);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109376;
    v6[1] = a1;
    v7 = 1024;
    v8 = a1 != 7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#Transactions] connectionType: connectionType: %{coreacc:ACCConnection_Type_t}d requires os transaction %d", v6, 0xEu);
  }

  return a1 != 7;
}

void platform_transactions_accessoryConnected(void *a1)
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
    v11 = 138412290;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Transactions] Creating transaction for connection %@...", &v11, 0xCu);
  }

  v5 = +[ACCPlatformTransactionManager sharedManager];
  [v5 addTransactionForConnectionUUID:a1];

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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = +[ACCPlatformTransactionManager sharedManager];
    v9 = [v8 transactions];
    v10 = [v9 count];
    v11 = 134217984;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#Transactions] There are now %lu transaction(s).", &v11, 0xCu);
  }
}

void platform_transactions_accessoryDisconnected(void *a1)
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
    v11 = 138412290;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Transactions] Removing transaction for connection %@...", &v11, 0xCu);
  }

  v5 = +[ACCPlatformTransactionManager sharedManager];
  [v5 removeTransactionForConnectionUUID:a1];

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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = +[ACCPlatformTransactionManager sharedManager];
    v9 = [v8 transactions];
    v10 = [v9 count];
    v11 = 134217984;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#Transactions] There are now %lu transaction(s).", &v11, 0xCu);
  }
}

const __CFString *genericMFi_util_copyTLVTypeStringForProperty(int a1, int a2)
{
  if (a2)
  {
    if (a2 == 17 && a1 < 3)
    {
      return *(&off_100229FB8 + a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = @"AccessoryType";
    v4 = @"AccessoryAttributes";
    v5 = @"Sequence";
    if (a1 != 128)
    {
      v5 = 0;
    }

    if (a1 != 33)
    {
      v4 = v5;
    }

    if (a1 != 32)
    {
      v3 = v4;
    }

    v6 = @"Separator";
    v7 = @"AppMatchTeamID";
    v8 = @"AppMatchProtoco,";
    if (a1 != 17)
    {
      v8 = 0;
    }

    if (a1 != 16)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = v7;
    }

    if (a1 <= 31)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }
}

const __CFString *genericMFi_util_copyTLVTypeStringForMessage(unsigned int a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 && a1 < 3)
    {
      return *(&off_100229FD0 + a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = @"RequestAppLaunch";
    v4 = @"Separator";
    if (a1)
    {
      v4 = 0;
    }

    if (a1 != 1)
    {
      v3 = v4;
    }

    if (a1 == 128)
    {
      return @"Sequence";
    }

    else
    {
      return v3;
    }
  }
}

id genericMFi_util_createTLVDescription(void *a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "genericMFi_util_createTLVDescription";
    v9 = 1024;
    v10 = a2;
    v11 = 2112;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: forProperty %d, tlvData %@", &v7, 0x1Cu);
  }

  if (a2)
  {
    TLVDescriptionForProperty = _genericMFi_util_createTLVDescriptionForProperty(a1);
  }

  else
  {
    TLVDescriptionForProperty = _genericMFi_util_createTLVDescriptionForMessage(a1);
  }

  v5 = TLVDescriptionForProperty;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "genericMFi_util_createTLVDescription";
    v9 = 1024;
    v10 = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: forProperty %d, strResult %@", &v7, 0x1Cu);
  }

  return v5;
}

id _genericMFi_util_createTLVDescriptionForProperty(void *a1)
{
  v2 = objc_alloc_init(NSMutableString);
  v3 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    _genericMFi_util_createTLVDescriptionForProperty_cold_1();
  }

  v4 = [v3 bytes];
  v36 = v3;
  v5 = [v3 length];
  v45 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v78[19] = v6;
  v78[20] = v6;
  v78[17] = v6;
  v78[18] = v6;
  v78[15] = v6;
  v78[16] = v6;
  v78[13] = v6;
  v78[14] = v6;
  v78[11] = v6;
  v78[12] = v6;
  v78[9] = v6;
  v78[10] = v6;
  v78[7] = v6;
  v78[8] = v6;
  v78[5] = v6;
  v78[6] = v6;
  v78[3] = v6;
  v78[4] = v6;
  v78[1] = v6;
  v78[2] = v6;
  v78[0] = v6;
  TLV8BufferInit(v78, v5);
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if (!v4 || v5 < 1)
  {
    goto LABEL_55;
  }

  v7 = &v4[v5];
  v37 = &v4[v5];
  do
  {
    v45 = 0;
    v44 = 0;
    v42 = 0;
    v43 = 0;
    Next = TLV8GetNext(v4, v7, &v44, &v43, &v42, &v45);
    if (Next)
    {
      v32 = Next;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        _genericMFi_util_createTLVDescriptionForProperty_cold_2(v32, v33, v34);
      }

      break;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *v58 = 136315650;
      *&v58[4] = "_genericMFi_util_createTLVDescriptionForProperty";
      *&v58[12] = 1024;
      *&v58[14] = v44;
      *&v58[18] = 2048;
      *&v58[20] = v42;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: tlvType 0x%02x, tlvLen %zu", v58, 0x1Cu);
    }

    if (v44 != 17)
    {
      v22 = [NSData dataWithBytes:v43 length:v42];
      v23 = v22;
      v24 = v44;
      if (v44 <= 0x21u && ((1 << v44) & 0x300010000) != 0)
      {
        v29 = 0;
        if (v44 > 0x1Fu)
        {
          if (v44 == 32)
          {
            v29 = @"AccessoryType";
          }

          else if (v44 == 33)
          {
            v29 = @"AccessoryAttributes";
          }
        }

        else if (v44 == 16)
        {
          v29 = @"AppMatchTeamID";
        }

        else if (v44 == 17)
        {
          v29 = @"AppMatchProtoco,";
        }

        v30 = v42;
        v28 = _dataToString(v22);
        v31 = _dataToUTF8(v23);
        [v2 appendFormat:@"<T:0x%02x-%@> <L:%3zu> <V:%@ - '%@'> \n", v24, v29, v30, v28, v31];

        v7 = v37;
      }

      else
      {
        if (v44 == 128)
        {
          v25 = @"Sequence";
        }

        else if (v44 == 17)
        {
          v25 = @"AppMatchProtoco,";
        }

        else if (v44)
        {
          v25 = 0;
        }

        else
        {
          v25 = @"Separator";
        }

        v27 = v42;
        v28 = _dataToString(v22);
        [v2 appendFormat:@"<T:0x%02x-%@> <L:%3zu> <V:%@> \n", v24, v25, v27, v28];
      }

      goto LABEL_40;
    }

    [v2 appendFormat:@"<T:0x%02x-%@> <L:%3zu> <V: \n", 17, @"AppMatchProtoco, ", v42];
    v9 = v42;
    v10 = v43;
    v41 = 0;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v76 = v11;
    v77 = v11;
    v74 = v11;
    v75 = v11;
    v72 = v11;
    v73 = v11;
    v70 = v11;
    v71 = v11;
    v68 = v11;
    v69 = v11;
    v66 = v11;
    v67 = v11;
    v64 = v11;
    v65 = v11;
    v62 = v11;
    v63 = v11;
    v60 = v11;
    v61 = v11;
    *&v58[16] = v11;
    v59 = v11;
    *v58 = v11;
    TLV8BufferInit(v58, v42);
    v40 = 0;
    v38 = 0;
    v39 = 0;
    if (!v10 || v9 < 1)
    {
      goto LABEL_34;
    }

    v12 = &v10[v9];
    while (1)
    {
      v41 = 0;
      v40 = 0;
      v38 = 0;
      v39 = 0;
      v13 = TLV8GetNext(v10, v12, &v40, &v39, &v38, &v41);
      if (v13)
      {
        break;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v47 = "_genericMFi_util_createTLVDescriptionForProperty";
        v48 = 1024;
        v49 = v44;
        v50 = 2048;
        v51 = v42;
        v52 = 1024;
        v53 = v40;
        v54 = 2048;
        v55 = v38;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: tlvType 0x%02x, tlvLen %zu, tlv2Type 0x%02x, tlv2Len %zu", buf, 0x2Cu);
      }

      v14 = [NSData dataWithBytes:v39 length:v38];
      v15 = v40;
      if (v44 == 17)
      {
        if (v40 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (!v44 && v40 <= 0x21u && ((1 << v40) & 0x300010000) != 0)
      {
LABEL_20:
        v16 = genericMFi_util_copyTLVTypeStringForProperty(v40, v44);
        v17 = v38;
        v18 = _dataToString(v14);
        v19 = _dataToUTF8(v14);
        [v2 appendFormat:@"    <T:0x%02x-%@> <L:%3zu> <V:%@ - '%@'> \n", v15, v16, v17, v18, v19];

        goto LABEL_23;
      }

      v20 = genericMFi_util_copyTLVTypeStringForProperty(v40, v44);
      v21 = v38;
      v18 = _dataToString(v14);
      [v2 appendFormat:@"    <T:0x%02x-%@> <L:%3zu> <V:%@> \n", v15, v20, v21, v18];
LABEL_23:

      v10 = v41;
      if (!v41 || v41 >= v12)
      {
        goto LABEL_34;
      }
    }

    v26 = v13;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      _genericMFi_util_createTLVDescriptionForProperty_cold_3(v56, v26, v57);
    }

LABEL_34:
    [v2 appendFormat:@"> \n"];
    v7 = v37;
LABEL_40:
    v4 = v45;
  }

  while (v45 && v45 < v7);
LABEL_55:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    _genericMFi_util_createTLVDescriptionForProperty_cold_4();
  }

  return v2;
}

id _genericMFi_util_createTLVDescriptionForMessage(void *a1)
{
  v2 = objc_alloc_init(NSMutableString);
  v3 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    _genericMFi_util_createTLVDescriptionForMessage_cold_1();
  }

  v4 = [v3 bytes];
  v5 = [v3 length];
  v40 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73[19] = v6;
  v73[20] = v6;
  v73[17] = v6;
  v73[18] = v6;
  v73[15] = v6;
  v73[16] = v6;
  v73[13] = v6;
  v73[14] = v6;
  v73[11] = v6;
  v73[12] = v6;
  v73[9] = v6;
  v73[10] = v6;
  v73[7] = v6;
  v73[8] = v6;
  v73[5] = v6;
  v73[6] = v6;
  v73[3] = v6;
  v73[4] = v6;
  v73[1] = v6;
  v73[2] = v6;
  v73[0] = v6;
  TLV8BufferInit(v73, v5);
  v39 = 0;
  v37 = 0;
  v38 = 0;
  if (v4 && v5 >= 1)
  {
    v7 = &v4[v5];
    while (1)
    {
      v40 = 0;
      v39 = 0;
      v37 = 0;
      v38 = 0;
      Next = TLV8GetNext(v4, v7, &v39, &v38, &v37, &v40);
      if (Next)
      {
        break;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *v53 = 136315650;
        *&v53[4] = "_genericMFi_util_createTLVDescriptionForMessage";
        *&v53[12] = 1024;
        *&v53[14] = v39;
        *&v53[18] = 2048;
        *&v53[20] = v37;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: tlvType 0x%02x, tlvLen %zu", v53, 0x1Cu);
      }

      if (v39 == 1)
      {
        [v2 appendFormat:@"<T:0x%02x-%@> <L:%3zu> <V: \n", 1, @"RequestAppLaunch", v37];
        v10 = v37;
        v9 = v38;
        v36 = 0;
        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v71 = v11;
        v72 = v11;
        v69 = v11;
        v70 = v11;
        v67 = v11;
        v68 = v11;
        v65 = v11;
        v66 = v11;
        v63 = v11;
        v64 = v11;
        v61 = v11;
        v62 = v11;
        v59 = v11;
        v60 = v11;
        v57 = v11;
        v58 = v11;
        v55 = v11;
        v56 = v11;
        *&v53[16] = v11;
        v54 = v11;
        *v53 = v11;
        TLV8BufferInit(v53, v37);
        v35 = 0;
        v33 = 0;
        v34 = 0;
        if (v9 && v10 >= 1)
        {
          v12 = &v9[v10];
          while (1)
          {
            v36 = 0;
            v35 = 0;
            v33 = 0;
            v34 = 0;
            v13 = TLV8GetNext(v9, v12, &v35, &v34, &v33, &v36);
            if (v13)
            {
              break;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v42 = "_genericMFi_util_createTLVDescriptionForMessage";
              v43 = 1024;
              v44 = v39;
              v45 = 2048;
              v46 = v37;
              v47 = 1024;
              v48 = v35;
              v49 = 2048;
              v50 = v33;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: tlvType 0x%02x, tlvLen %zu, tlv2Type 0x%02x, tlv2Len %zu", buf, 0x2Cu);
            }

            v14 = [NSData dataWithBytes:v34 length:v33];
            v15 = v35;
            if (v35 == 1 && v39 == 1)
            {
              v19 = genericMFi_util_copyTLVTypeStringForMessage(1u, 1);
              v20 = v33;
              v18 = _dataToString(v14);
              v21 = _dataToUTF8(v14);
              [v2 appendFormat:@"    <T:0x%02x-%@> <L:%3zu> <V: %@ - '%@'> \n", 1, v19, v20, v18, v21];
            }

            else
            {
              v16 = genericMFi_util_copyTLVTypeStringForMessage(v35, v39);
              v17 = v33;
              v18 = _dataToString(v14);
              [v2 appendFormat:@"    <T:0x%02x-%@> <L:%3zu> <V:%@> \n", v15, v16, v17, v18];
            }

            v9 = v36;
            if (!v36 || v36 >= v12)
            {
              goto LABEL_29;
            }
          }

          v26 = v13;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            _genericMFi_util_createTLVDescriptionForProperty_cold_3(v51, v26, v52);
          }
        }

LABEL_29:
        [v2 appendFormat:@"> \n"];
      }

      else
      {
        v22 = [NSData dataWithBytes:v38 length:v37];
        v23 = v22;
        v24 = v39;
        if (v39 == 128)
        {
          v25 = @"Sequence";
        }

        else if (v39 == 1)
        {
          v25 = @"RequestAppLaunch";
        }

        else if (v39)
        {
          v25 = 0;
        }

        else
        {
          v25 = @"Separator";
        }

        v27 = v37;
        v28 = _dataToString(v22);
        [v2 appendFormat:@"<T:0x%02x-%@> <L:%3zu> <V:%@> \n", v24, v25, v27, v28];
      }

      v4 = v40;
      if (!v40 || v40 >= v7)
      {
        goto LABEL_39;
      }
    }

    v29 = Next;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      _genericMFi_util_createTLVDescriptionForProperty_cold_2(v29, v30, v31);
    }
  }

LABEL_39:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    _genericMFi_util_createTLVDescriptionForMessage_cold_4();
  }

  return v2;
}