CFTypeRef iap2_accAuthentication_copyCertificate(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0);
  if (!Feature)
  {
    return 0;
  }

  v2 = *(Feature + 16);
  if (!v2)
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef iap2_accAuthentication_copyCertificateSerial(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0);
  if (!Feature)
  {
    return 0;
  }

  if (*(Feature + 24))
  {
    v2 = *(Feature + 24);

    return CFRetain(v2);
  }

  v4 = *(Feature + 16);
  if (!v4)
  {
    return 0;
  }

  return platform_auth_createCertificateSerialNumber(v4);
}

CFTypeRef iap2_accAuthentication_copyCertificateSerialString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0);
  if (!Feature)
  {
    return 0;
  }

  if (Feature[6])
  {
    v2 = Feature[6];

    return CFRetain(v2);
  }

  if (!Feature[3])
  {
    v5 = Feature[2];
    if (v5)
    {
      CertificateSerialNumber = platform_auth_createCertificateSerialNumber(v5);
      SerialNumberStringFromData = platform_auth_createSerialNumberStringFromData();
      if (CertificateSerialNumber)
      {
        CFRelease(CertificateSerialNumber);
      }

      return SerialNumberStringFromData;
    }

    return 0;
  }

  v4 = Feature[3];

  return platform_auth_createSerialNumberStringFromData();
}

_DWORD *_createFeature_1(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (qword_100245EA0 != -1)
  {
    dispatch_once(&qword_100245EA0, &__block_literal_global_0);
  }

  v1 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E004064C94EADuLL);
  v2 = v1;
  if (v1)
  {
    *v1 = 0;
    CertificateCache = platform_auth_createCertificateCache(@"com.apple.accessoryd.iap2d");
    *(v2 + 2) = 0;
    *(v2 + 3) = 0;
    *(v2 + 1) = CertificateCache;
    v2[8] = 0;
    *(v2 + 10) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 72) = _MergedGlobals;
    *(v2 + 10) = 0;
    *(v2 + 11) = 0;
  }

  return v2;
}

uint64_t _destroyFeature_1(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = *(v2 + 8);
      platform_auth_deallocCertificateCache();
      v4 = *(v2 + 64);
      platform_auth_deallocAuthCertCaps();
      *(v2 + 64) = 0;
      *(v2 + 32) = 0;
      v5 = *(v2 + 16);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 16) = 0;
      }

      v6 = *(v2 + 40);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 40) = 0;
      }

      v7 = *(v2 + 24);
      if (v7)
      {
        CFRelease(v7);
        *(v2 + 24) = 0;
      }

      v8 = *(v2 + 48);
      if (v8)
      {
        CFRelease(v8);
        *(v2 + 48) = 0;
      }

      v9 = *(v2 + 56);
      if (v9)
      {
        CFRelease(v9);
        *(v2 + 56) = 0;
      }

      if (*v1)
      {
        free(*v1);
        *v1 = 0;
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

void _setAuthState(uint64_t **a1, int a2)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = *v3;
      if (*v3)
      {
        Feature = iap2_feature_getFeature(a1, 0);
        if (Feature)
        {
          v7 = Feature;
          *Feature = a2;
          v8 = gLogObjects;
          v9 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 25)
          {
            v10 = *(gLogObjects + 192);
          }

          else
          {
            v10 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v21 = 134218240;
              *v22 = v8;
              *&v22[8] = 1024;
              *&v22[10] = v9;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v21);
            }
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = a1[1];
            v21 = 67109378;
            *v22 = a2;
            *&v22[4] = 2112;
            *&v22[6] = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Authentication state changed: %{coreacc:iAP2Feature_AccAuthentication_State_t}d for endpoint: %@", &v21, 0x12u);
          }

          if (a2 == 2 || !acc_connection_isAuthenticated(v4, 0))
          {
            if (!acc_connection_isAuthenticated(v4, 0))
            {
              if (a2 == 1)
              {
                v18 = 1;
                kdebug_trace();
                v19 = *(v7 + 1);
                v20 = *(v7 + 6);
                platform_auth_removeCertDataEntryFromCache();
              }

              else if (a2 == 2)
              {
                kdebug_trace();
                if (*(v7 + 72) == 1)
                {
                  platform_auth_addCertDataEntryToCache(*(v7 + 1), *(v7 + 2));
                }

                acc_connection_setAuthCertData(v4, *(v7 + 2));
                v18 = 2;
              }

              else
              {
                v18 = 0;
              }

              acc_connection_setAuthStatus(v4, 1, v18);
            }
          }

          else
          {
            AuthInfo = acc_connection_getAuthInfo(v4);
            if (AuthInfo)
            {
              v14 = AuthInfo;
              v15 = *(v7 + 2);
              if (v15)
              {
                CFRelease(v15);
                *(v7 + 2) = 0;
              }

              *(v7 + 2) = acc_authInfo_copyCertData(v14);
              v16 = *(v7 + 3);
              if (v16)
              {
                CFRelease(v16);
                *(v7 + 3) = 0;
              }

              *(v7 + 3) = acc_authInfo_copyCertSerial(v14);
              v17 = *(v7 + 6);
              if (v17)
              {
                CFRelease(v17);
                *(v7 + 6) = 0;
              }

              *(v7 + 6) = acc_authInfo_copyCertSerialString(v14);
            }
          }

          iap2_sessionControl_accAuthenticationStateChanged(a1, a2);
        }
      }
    }
  }
}

void __iap2_accAuthentication_certificate_block_invoke_2_cold_2(unsigned __int8 *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 2048;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "iAP2 auth failed bCertValid:%d, pkNonceBytes:%04lX, nonceLen:%02lX\n", v6, 0x1Cu);
}

void __iap2_accAuthentication_certSerial_block_invoke_cold_1(const __CFData *a1, CFDataRef *a2, uint64_t *a3, uint64_t a4)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(*a2);
  iAP2MsgInit(a4, 43521, *(*a3 + 192), 0xFFFF, 0, 0);
  iAP2MsgAddDataParam(a4, 0, 0, BytePtr, Length);
  iap2_accAuthentication_certificate(*a3, a4);
  v9 = *a2;

  CFRelease(v9);
}

uint64_t iap2_destinationSharing_StartDestinationInformation(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (iAP2MsgGetMsgID(a2) != 4314)
  {
    return 0;
  }

  v54 = a1;
  v5 = OUTLINED_FUNCTION_22();
  FirstParam = iAP2MsgGetFirstParam(v5, v6);
  if (FirstParam)
  {
    NextParam = FirstParam;
    v10 = 0;
    *&v8 = 67109376;
    v53 = v8;
    *&v8 = 134218240;
    v52 = v8;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      if (ParamID)
      {
        v12 = ParamID;
        v13 = gLogObjects;
        v14 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 45)
        {
          v15 = *(gLogObjects + 352);
        }

        else
        {
          v15 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = v52;
            *v56 = v13;
            *&v56[8] = 1024;
            v57 = v14;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v15 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          MsgID = iAP2MsgGetMsgID(a2);
          *buf = v53;
          *v56 = v12;
          *&v56[4] = 1024;
          *&v56[6] = MsgID;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        if (!iAP2MsgIsDataVoid(NextParam))
        {
          v37 = logObjectForModule_2(44);
          result = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

          goto LABEL_45;
        }

        if (v10)
        {
          v38 = logObjectForModule_2(44);
          result = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

LABEL_45:
          v39 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_12_2(v39, v40, v41, v42, v43, v44, v45, v46, v52, *(&v52 + 1), v53);
          OUTLINED_FUNCTION_15_2();
          _os_log_debug_impl(v47, v48, OS_LOG_TYPE_DEBUG, v49, v50, 0xEu);
          return 0;
        }

        v10 = 1;
      }

      v16 = OUTLINED_FUNCTION_22();
      NextParam = iAP2MsgGetNextParam(v16, v17, NextParam);
      if (!NextParam)
      {
        goto LABEL_20;
      }
    }
  }

  v10 = 0;
LABEL_20:
  v19 = gLogObjects;
  v20 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 45)
  {
    v21 = *(gLogObjects + 352);
  }

  else
  {
    v21 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      *v56 = v19;
      *&v56[8] = 1024;
      v57 = v20;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = *(v54 + 8);
    *buf = 138412290;
    *v56 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "iAP2DestinationSharing StartDestinationInformation: %@", buf, 0xCu);
  }

  result = iap2_feature_getFeature(v54, 0x17u);
  if (!result)
  {
    return result;
  }

  v24 = result;
  if (*result != 1 || *(result + 1))
  {
    v51 = logObjectForModule_2(44);
    result = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
LABEL_39:
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_5_4();
    _os_log_impl(v26, v27, v28, v29, v30, v31);
    return 0;
  }

  *(result + 2) = v10 & 1;
  if (platform_destinationSharing_startDestinationInformation(*(v54 + 8), v10 & 1))
  {
    result = 1;
    *(v24 + 1) = 1;
    return result;
  }

  if (gLogObjects && gNumLogObjects >= 45)
  {
    v25 = *(gLogObjects + 352);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_10(v32, v33, v34, v35, v36);
  }

  result = OUTLINED_FUNCTION_24();
  if (result)
  {
    *buf = 0;
    goto LABEL_39;
  }

  return result;
}

uint64_t iap2_destinationSharing_StopDestinationInformation(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (iAP2MsgGetMsgID(a2) != 4316)
    {
      return 0;
    }

    v33 = a1;
    v4 = OUTLINED_FUNCTION_22();
    FirstParam = iAP2MsgGetFirstParam(v4, v5);
    if (FirstParam)
    {
      NextParam = FirstParam;
      do
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 45)
        {
          v11 = *(gLogObjects + 352);
        }

        else
        {
          v11 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = 134218240;
            v35 = v9;
            v36 = 1024;
            v37 = v10;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v11 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v35) = ParamID;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
        }

        v12 = OUTLINED_FUNCTION_22();
        NextParam = iAP2MsgGetNextParam(v12, v13, NextParam);
      }

      while (NextParam);
    }

    result = iap2_feature_getFeature(v33, 0x17u);
    if (result)
    {
      v14 = result;
      if (*(result + 1) == 1)
      {
        if (platform_destinationSharing_stopDestinationInformation(*(v33 + 8)))
        {
          *(v14 + 1) = 0;
          return 1;
        }

        if (gLogObjects && gNumLogObjects >= 45)
        {
          v16 = *(gLogObjects + 352);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_3_8();
          OUTLINED_FUNCTION_15_2();
          OUTLINED_FUNCTION_10(v28, v29, v30, v31, v32);
        }

        result = OUTLINED_FUNCTION_24();
        if (result)
        {
          *buf = 0;
          goto LABEL_32;
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 45)
        {
          v15 = *(gLogObjects + 352);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_3_8();
          OUTLINED_FUNCTION_15_2();
          OUTLINED_FUNCTION_10(v23, v24, v25, v26, v27);
        }

        result = OUTLINED_FUNCTION_24();
        if (result)
        {
          *buf = 0;
LABEL_32:
          OUTLINED_FUNCTION_15_2();
          OUTLINED_FUNCTION_5_4();
          _os_log_impl(v17, v18, v19, v20, v21, v22);
          return 0;
        }
      }
    }
  }

  return result;
}

id iap2_destinationSharing_DestinationInformationStatus(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (iAP2MsgGetMsgID(a2) != 4317)
  {
    return 0;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (FirstParam)
  {
    v6 = FirstParam;
    Mutable = 0;
    v31 = 0;
    v30 = 0;
    do
    {
      ParamID = iAP2MsgGetParamID(v6);
      v32 = -1431655766;
      if (ParamID == 2)
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        }

        v13 = iAP2MsgGetFirstParam(a2, v6);
        if (v13)
        {
          NextParam = v13;
          while (1)
          {
            v15 = iAP2MsgGetParamID(NextParam);
            v16 = gLogObjects;
            if (gLogObjects && gNumLogObjects >= 45)
            {
              v17 = *(gLogObjects + 352);
            }

            else
            {
              v17 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v34 = v16;
                OUTLINED_FUNCTION_23_1();
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v18, 0x12u);
                v17 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *v34 = v15;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "msgSubParamID: %d", buf, 8u);
            }

            if (!iAP2MsgIsDataVoid(NextParam))
            {
              break;
            }

            if ((v15 - 2) <= 2)
            {
              CFArrayAppendValue(Mutable, **(&off_100225C78 + (v15 - 2)));
            }

            NextParam = iAP2MsgGetNextParam(a2, v6, NextParam);
            if (!NextParam)
            {
              goto LABEL_37;
            }
          }

          v24 = gLogObjects;
          v25 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 45)
          {
            v26 = *(gLogObjects + 352);
          }

          else
          {
            v26 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              *buf = 134218240;
              *v34 = v24;
              *&v34[8] = 1024;
              v35[0] = v25;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (OUTLINED_FUNCTION_21())
          {
            MsgID = iAP2MsgGetMsgID(a2);
            *buf = 67109632;
            *v34 = v15;
            *&v34[4] = 1024;
            *&v34[6] = 2;
            LOWORD(v35[0]) = 1024;
            *(v35 + 2) = MsgID;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message", buf, 0x14u);
          }

          return 0;
        }
      }

      else
      {
        v9 = ParamID;
        if (ParamID == 1)
        {
          v11 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 45)
          {
            v12 = *(gLogObjects + 352);
          }

          else
          {
            v12 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v34 = v11;
              OUTLINED_FUNCTION_23_1();
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v20, 0x12u);
              v12 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "accessory returned a failure param!", buf, 2u);
          }

          v31 = 1;
        }

        else if (ParamID)
        {
          v19 = iAP2MsgGetMsgID(a2);
          printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v9, v19);
        }

        else
        {
          DataAsString = iAP2MsgGetDataAsString(v6, &v32);
          if (v32)
          {
            v29 = iAP2MsgGetMsgID(a2);
            printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, v29);
            return 0;
          }

          if (DataAsString)
          {
            v30 = CFStringCreateWithCString(kCFAllocatorDefault, DataAsString, 0x8000100u);
          }
        }
      }

LABEL_37:
      v6 = iAP2MsgGetNextParam(a2, 0, v6);
    }

    while (v6);
    v21 = v31 ^ 1;
    v22 = v30;
    if (!v30)
    {
      goto LABEL_41;
    }

    v2 = platform_destinationSharing_destinationInformationStatus(*(a1 + 8), v30, (v31 ^ 1) & 1, Mutable);
  }

  else
  {
    Mutable = 0;
    v21 = 1;
LABEL_41:
    v22 = CFStringCreateWithCString(kCFAllocatorDefault, "", 0x8000100u);
    v2 = platform_destinationSharing_destinationInformationStatus(*(a1 + 8), v22, v21 & 1, Mutable);
    if (!v22)
    {
      goto LABEL_43;
    }
  }

  CFRelease(v22);
LABEL_43:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t iap2_destinationSharing_DestinationInformationUpdateHandler(uint64_t *a1, const __CFDictionary *a2)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  v6 = a2;
  if (!a2)
  {
    return result;
  }

  result = iap2_feature_getFeature(a1, 0x17u);
  if (!result)
  {
    return result;
  }

  v7 = &audioProductCerts_endpoint_publish_onceToken;
  if (*(result + 1) != 1)
  {
    OUTLINED_FUNCTION_16_1();
    if (v2 && v3 >= 45)
    {
      v12 = *(v2 + 352);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_0_3();
      LODWORD(v294) = v3;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v192, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    result = OUTLINED_FUNCTION_24();
    if (result)
    {
      *buf = 0;
      OUTLINED_FUNCTION_5_4();
      _os_log_impl(v13, v14, v15, v16, v17, v18);
      return 0;
    }

    return result;
  }

  v285 = result;
  iAP2MsgInit((a1 + 15), 4315, a1[24], 0xFFFF, 0, 0);
  if (CFDictionaryGetValue(v6, kCFACCDestinationSharing_IdentifierKey))
  {
    v8 = OUTLINED_FUNCTION_8();
    if (!iAP2MsgAddCFStringParam(v8, v9, 0, v10))
    {
      OUTLINED_FUNCTION_16_1();
      if (v2 && v3 >= 45)
      {
        v11 = *(v2 + 352);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_0_3();
        LODWORD(v294) = v3;
        OUTLINED_FUNCTION_7_3(&_mh_execute_header, v229, v230, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v231, v232, v233, v234, v284, *(&v284 + 1), v285, theDict, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }

      if (OUTLINED_FUNCTION_26())
      {
        *buf = 0;
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_5_4();
        _os_log_impl(v19, v20, v21, v22, v23, v24);
      }
    }
  }

  if (CFDictionaryGetValue(v6, kCFACCDestinationSharingParameter_DisplayName))
  {
    v25 = OUTLINED_FUNCTION_8();
    if (!iAP2MsgAddCFStringParam(v25, v26, 1, v27))
    {
      OUTLINED_FUNCTION_16_1();
      if (v2 && v3 >= 45)
      {
        v28 = *(v2 + 352);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_0_3();
        LODWORD(v294) = v3;
        OUTLINED_FUNCTION_7_3(&_mh_execute_header, v235, v236, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v237, v238, v239, v240, v284, *(&v284 + 1), v285, theDict, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }

      if (OUTLINED_FUNCTION_26())
      {
        *buf = 0;
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_5_4();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
      }
    }
  }

  Value = CFDictionaryGetValue(v6, kCFACCDestinationSharingParameter_Address);
  theDicta = v6;
  if (Value)
  {
    v36 = Value;
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    Count = CFArrayGetCount(v36);
    OUTLINED_FUNCTION_16_1();
    if (v2 && v3 >= 45)
    {
      v39 = *(v2 + 352);
    }

    else
    {
      v39 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_3();
        LODWORD(v294) = v3;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v198, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v292 = v36;
      v293 = 2048;
      v294 = Count;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "addressStrings = %@, addressStringsCount = %ld", buf, 0x16u);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v36, i);
        if (ValueAtIndex)
        {
          CFStringAppend(Mutable, ValueAtIndex);
        }

        CFStringAppendCString(Mutable, "\n", 0x8000100u);
      }
    }

    v42 = gLogObjects;
    v7 = &audioProductCerts_endpoint_publish_onceToken;
    v43 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 45)
    {
      v44 = *(gLogObjects + 352);
      v6 = theDicta;
    }

    else
    {
      v44 = &_os_log_default;
      v6 = theDicta;
      if (OUTLINED_FUNCTION_18())
      {
        OUTLINED_FUNCTION_0_3();
        LODWORD(v294) = v43;
        OUTLINED_FUNCTION_2_9(&_mh_execute_header, v199, v200, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v201, v202, v203, v204, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v292 = Mutable;
      OUTLINED_FUNCTION_4_5();
      _os_log_debug_impl(v180, v181, OS_LOG_TYPE_DEBUG, v182, v183, 0xCu);
    }

    if (!iAP2MsgAddCFStringParam((a1 + 15), 0, 3, Mutable))
    {
      OUTLINED_FUNCTION_16_1();
      if (v42 && v43 >= 45)
      {
        v45 = *(v42 + 352);
      }

      else
      {
        v45 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          OUTLINED_FUNCTION_0_3();
          LODWORD(v294) = v43;
          OUTLINED_FUNCTION_2_9(&_mh_execute_header, v241, v242, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v243, v244, v245, v246, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
        }
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_5();
        OUTLINED_FUNCTION_5_4();
        _os_log_impl(v46, v47, v48, v49, v50, v51);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v52 = CFDictionaryGetValue(v6, kCFACCDestinationSharingParameter_CenterCoordinate);
  if (v52)
  {
    v53 = v52;
    v54 = CFArrayGetCount(v52);
    if (v54 == 2)
    {
      goto LABEL_70;
    }

    v55 = v54;
    v56 = *(v7 + 984);
    if (gLogObjects && v56 >= 45)
    {
      v57 = *(gLogObjects + 352);
    }

    else
    {
      v57 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_1_4();
        LODWORD(v294) = v56;
        OUTLINED_FUNCTION_6_4(&_mh_execute_header, v223, v224, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v225, v226, v227, v228, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v292 = v55;
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v58, v59, OS_LOG_TYPE_DEFAULT, v60, v61, 0xCu);
    }

    v7 = &audioProductCerts_endpoint_publish_onceToken;
    v6 = theDicta;
    if (v55 >= 2)
    {
LABEL_70:
      v62 = iAP2MsgAddGroupParam((a1 + 15), 2);
      v63 = CFArrayGetValueAtIndex(v53, 0);
      v64 = CFArrayGetValueAtIndex(v53, 1);
      v289 = 0;
      valuePtr = 0;
      if (CFNumberGetValue(v63, kCFNumberDoubleType, &valuePtr))
      {
        if (fabs(*&valuePtr) > 90.0)
        {
          v65 = *(v7 + 984);
          if (gLogObjects && v65 >= 45)
          {
            v66 = *(gLogObjects + 352);
          }

          else
          {
            v66 = &_os_log_default;
            if (OUTLINED_FUNCTION_19_0())
            {
              OUTLINED_FUNCTION_1_4();
              LODWORD(v294) = v65;
              OUTLINED_FUNCTION_6_4(&_mh_execute_header, v271, v272, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v273, v274, v275, v276, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
            }
          }

          v7 = &audioProductCerts_endpoint_publish_onceToken;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_14_1();
            OUTLINED_FUNCTION_9_2();
            v71 = OS_LOG_TYPE_DEFAULT;
            v74 = 12;
            goto LABEL_86;
          }
        }
      }

      else
      {
        v67 = *(v7 + 984);
        if (gLogObjects && v67 >= 45)
        {
          v68 = *(gLogObjects + 352);
        }

        else
        {
          v68 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            OUTLINED_FUNCTION_1_4();
            LODWORD(v294) = v67;
            OUTLINED_FUNCTION_6_4(&_mh_execute_header, v259, v260, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v261, v262, v263, v264, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
          }
        }

        v7 = &audioProductCerts_endpoint_publish_onceToken;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_5_4();
LABEL_86:
          _os_log_impl(v69, v70, v71, v72, v73, v74);
        }
      }

      if (CFNumberGetValue(v64, kCFNumberDoubleType, &v289))
      {
        if (fabs(*&v289) <= 180.0)
        {
          goto LABEL_104;
        }

        v75 = *(v7 + 984);
        if (gLogObjects && v75 >= 45)
        {
          v76 = *(gLogObjects + 352);
        }

        else
        {
          v76 = &_os_log_default;
          if (OUTLINED_FUNCTION_18())
          {
            OUTLINED_FUNCTION_1_4();
            LODWORD(v294) = v75;
            OUTLINED_FUNCTION_2_9(&_mh_execute_header, v277, v278, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v279, v280, v281, v282, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
          }
        }

        if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_104;
        }

        OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_4_5();
        v81 = OS_LOG_TYPE_DEFAULT;
        v84 = 12;
      }

      else
      {
        v77 = *(v7 + 984);
        if (gLogObjects && v77 >= 45)
        {
          v78 = *(gLogObjects + 352);
        }

        else
        {
          v78 = &_os_log_default;
          if (OUTLINED_FUNCTION_18())
          {
            OUTLINED_FUNCTION_1_4();
            LODWORD(v294) = v77;
            OUTLINED_FUNCTION_2_9(&_mh_execute_header, v265, v266, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v267, v268, v269, v270, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
          }
        }

        if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_104;
        }

        *buf = 0;
        OUTLINED_FUNCTION_4_5();
        OUTLINED_FUNCTION_5_4();
      }

      _os_log_impl(v79, v80, v81, v82, v83, v84);
LABEL_104:
      v85 = *(v7 + 984);
      if (gLogObjects && v85 >= 45)
      {
        v86 = *(gLogObjects + 352);
      }

      else
      {
        v86 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          OUTLINED_FUNCTION_1_4();
          LODWORD(v294) = v85;
          OUTLINED_FUNCTION_2_9(&_mh_execute_header, v217, v218, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v219, v220, v221, v222, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
        }
      }

      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_14_1();
        v293 = 2048;
        v294 = v193;
        OUTLINED_FUNCTION_4_5();
        _os_log_debug_impl(v194, v195, OS_LOG_TYPE_DEBUG, v196, v197, 0x16u);
      }

      v87 = vcvtd_n_s64_f64(*&v289, 0x16uLL);
      iAP2MsgAddI32Param((a1 + 15), v62, 0, vcvtd_n_s64_f64(*&valuePtr, 0x16uLL));
      iAP2MsgAddI32Param((a1 + 15), v62, 1, v87);
      v6 = theDicta;
    }
  }

  if (CFDictionaryGetValue(v6, kCFACCDestinationSharingParameter_CoordinateThreshold))
  {
    v88 = OUTLINED_FUNCTION_8();
    if (!iAP2MsgAddCFU32Param(v88, v89, 5, v90))
    {
      v91 = *(v7 + 984);
      if (gLogObjects && v91 >= 45)
      {
        v92 = *(gLogObjects + 352);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_1_4();
        LODWORD(v294) = v91;
        OUTLINED_FUNCTION_7_3(&_mh_execute_header, v247, v248, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v249, v250, v251, v252, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }

      if (OUTLINED_FUNCTION_26())
      {
        *buf = 0;
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_5_4();
        _os_log_impl(v93, v94, v95, v96, v97, v98);
      }
    }
  }

  v99 = CFDictionaryGetValue(v6, kCFACCDestinationSharingParameter_EntryPoints);
  if (v99)
  {
    v100 = v99;
    v101 = CFArrayGetCount(v99);
    v102 = *(v7 + 984);
    if (gLogObjects && v102 >= 45)
    {
      v103 = *(gLogObjects + 352);
    }

    else
    {
      v103 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_1_4();
        LODWORD(v294) = v102;
        OUTLINED_FUNCTION_6_4(&_mh_execute_header, v205, v206, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v207, v208, v209, v210, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }
    }

    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v292 = v101;
      OUTLINED_FUNCTION_9_2();
      _os_log_debug_impl(v184, v185, OS_LOG_TYPE_DEBUG, v186, v187, 0xCu);
    }

    v7 = &audioProductCerts_endpoint_publish_onceToken;
    if (v101 >= 1)
    {
      v105 = 0;
      *&v104 = 134218240;
      v284 = v104;
      *&v104 = 134217984;
      v288 = v104;
      do
      {
        v106 = CFArrayGetValueAtIndex(v100, v105);
        v107 = CFArrayGetCount(v106);
        if (v107 < 2)
        {
          v113 = v107;
          v114 = *(v7 + 984);
          if (gLogObjects && v114 >= 45)
          {
            v115 = *(gLogObjects + 352);
          }

          else
          {
            v115 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_0_3();
              LODWORD(v294) = v114;
              OUTLINED_FUNCTION_9_1();
              _os_log_error_impl(v132, v133, v134, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v135, 0x12u);
              v115 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v288;
            v292 = v113;
            _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "entry point count is unexpected: not 2, it's %ld", buf, 0xCu);
          }

          goto LABEL_181;
        }

        v108 = iAP2MsgAddGroupParam((a1 + 15), 4);
        v109 = CFArrayGetValueAtIndex(v106, 0);
        v110 = CFArrayGetValueAtIndex(v106, 1);
        v289 = 0;
        valuePtr = 0;
        if (CFNumberGetValue(v109, kCFNumberDoubleType, &valuePtr))
        {
          if (fabs(*&valuePtr) > 90.0)
          {
            v111 = *(v7 + 984);
            if (gLogObjects && v111 >= 45)
            {
              v112 = *(gLogObjects + 352);
            }

            else
            {
              v112 = &_os_log_default;
              if (OUTLINED_FUNCTION_17())
              {
                OUTLINED_FUNCTION_0_3();
                OUTLINED_FUNCTION_17_4();
                OUTLINED_FUNCTION_9_1();
                _os_log_error_impl(v148, v149, v150, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v151, 0x12u);
                v112 = &_os_log_default;
              }
            }

            v7 = &audioProductCerts_endpoint_publish_onceToken;
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_14_1();
              v118 = v112;
              v119 = "unsupported dEntryPointsLatitude value %f";
              v120 = 12;
              goto LABEL_155;
            }
          }
        }

        else
        {
          v116 = *(v7 + 984);
          if (gLogObjects && v116 >= 45)
          {
            v117 = *(gLogObjects + 352);
          }

          else
          {
            v117 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_0_3();
              OUTLINED_FUNCTION_17_4();
              OUTLINED_FUNCTION_9_1();
              _os_log_error_impl(v140, v141, v142, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v143, 0x12u);
              v117 = &_os_log_default;
            }
          }

          v7 = &audioProductCerts_endpoint_publish_onceToken;
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v118 = v117;
            v119 = "failed to get entry points latitude";
            v120 = 2;
LABEL_155:
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, v119, buf, v120);
          }
        }

        if (CFNumberGetValue(v110, kCFNumberDoubleType, &v289))
        {
          if (fabs(*&v289) <= 180.0)
          {
            goto LABEL_173;
          }

          v121 = *(v7 + 984);
          if (gLogObjects && v121 >= 45)
          {
            v122 = *(gLogObjects + 352);
          }

          else
          {
            v122 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_0_3();
              OUTLINED_FUNCTION_17_4();
              OUTLINED_FUNCTION_9_1();
              _os_log_error_impl(v152, v153, v154, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v155, 0x12u);
              v122 = &_os_log_default;
            }
          }

          v7 = &audioProductCerts_endpoint_publish_onceToken;
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_173;
          }

          OUTLINED_FUNCTION_14_1();
          v125 = v122;
          v126 = "unsupported dEntryPointsLongitude value %f";
          v127 = 12;
        }

        else
        {
          v123 = *(v7 + 984);
          if (gLogObjects && v123 >= 45)
          {
            v124 = *(gLogObjects + 352);
          }

          else
          {
            v124 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_0_3();
              OUTLINED_FUNCTION_17_4();
              OUTLINED_FUNCTION_9_1();
              _os_log_error_impl(v144, v145, v146, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v147, 0x12u);
              v124 = &_os_log_default;
            }
          }

          v7 = &audioProductCerts_endpoint_publish_onceToken;
          if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_173;
          }

          *buf = 0;
          v125 = v124;
          v126 = "failed to get entry points longitude";
          v127 = 2;
        }

        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, v126, buf, v127);
LABEL_173:
        v128 = *(v7 + 984);
        if (gLogObjects && v128 >= 45)
        {
          v129 = *(gLogObjects + 352);
        }

        else
        {
          v129 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_0_3();
            OUTLINED_FUNCTION_17_4();
            OUTLINED_FUNCTION_9_1();
            _os_log_error_impl(v136, v137, v138, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v139, 0x12u);
            v129 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_14_1();
          v293 = 2048;
          v294 = v131;
          _os_log_debug_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEBUG, "entryPointsLatitude = %f, entryPointsLongitude = %f", buf, 0x16u);
        }

        v130 = vcvtd_n_s64_f64(*&v289, 0x16uLL);
        iAP2MsgAddI32Param((a1 + 15), v108, 0, vcvtd_n_s64_f64(*&valuePtr, 0x16uLL));
        iAP2MsgAddI32Param((a1 + 15), v108, 1, v130);
        v7 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_181:
        ++v105;
      }

      while (v101 != v105);
    }
  }

  v156 = theDicta;
  v157 = CFDictionaryGetValue(theDicta, kCFACCDestinationSharingParameter_Locale);
  if (v157)
  {
    v158 = v157;
    v159 = *(v7 + 984);
    if (gLogObjects && v159 >= 45)
    {
      v160 = *(gLogObjects + 352);
    }

    else
    {
      v160 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        OUTLINED_FUNCTION_0_3();
        LODWORD(v294) = v159;
        OUTLINED_FUNCTION_2_9(&_mh_execute_header, v211, v212, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v213, v214, v215, v216, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }
    }

    if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v292 = v158;
      OUTLINED_FUNCTION_4_5();
      _os_log_debug_impl(v188, v189, OS_LOG_TYPE_DEBUG, v190, v191, 0xCu);
    }

    if (!iAP2MsgAddCFStringParam((a1 + 15), 0, 6, v158))
    {
      v161 = *(v7 + 984);
      if (gLogObjects && v161 >= 45)
      {
        v162 = *(gLogObjects + 352);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_0_3();
        LODWORD(v294) = v161;
        OUTLINED_FUNCTION_7_3(&_mh_execute_header, v253, v254, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v255, v256, v257, v258, v284, *(&v284 + 1), v285, theDicta, v288, *(&v288 + 1), v289, valuePtr, buf[0]);
      }

      if (OUTLINED_FUNCTION_26())
      {
        *buf = 0;
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_5_4();
        _os_log_impl(v163, v164, v165, v166, v167, v168);
      }
    }
  }

  if (*(v285 + 2) == 1)
  {
    if (CFDictionaryGetValue(v156, kCFACCDestinationSharingParameter_SourceName))
    {
      v169 = OUTLINED_FUNCTION_8();
      if (!iAP2MsgAddCFStringParam(v169, v170, 7, v171))
      {
        v172 = *(v7 + 984);
        if (gLogObjects && v172 >= 45)
        {
          v173 = *(gLogObjects + 352);
        }

        else
        {
          v173 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_1_4();
            LODWORD(v294) = v172;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v283, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          OUTLINED_FUNCTION_5_4();
          _os_log_impl(v174, v175, v176, v177, v178, v179);
        }
      }
    }
  }

  return iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
}

_BYTE *_createFeature_2(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 3uLL, 0x100004033FC2DF1uLL);
    if (result)
    {
      *result = 0;
      result[2] = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_2(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t _checkIdentificationInfo_15(uint64_t a1)
{
  v10 = -86;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_kMsgDestinationSharingList, 4u, &v10);
  if (!v2)
  {
    v3 = v10;
    if (v10 == 1)
    {
      iap2_features_createFeature(a1, 0x17u);
      iap2_identification_setIdentifiedForFeature(a1);
    }

    Feature = iap2_feature_getFeature(a1, 0x17u);
    if (Feature)
    {
      *Feature = v3;
      Feature[1] = 0;
    }

    if (v3)
    {
      v5 = gLogObjects;
      v6 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 39)
      {
        v7 = *(gLogObjects + 304);
      }

      else
      {
        v7 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *buf = 134218240;
          v12 = v5;
          v13 = 1024;
          v14 = v6;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Identified for Destination Sharing", buf, 2u);
      }
    }
  }

  return v2;
}

void logObjectForModule_cold_1_0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, a3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v3);
}

unint64_t iAP2LinkDataReadyCB(uint64_t a1, UInt8 *a2, unsigned __int16 a3, uint64_t a4, int a5)
{
  v7 = *(*(a1 + 176) + 16);
  SessionInfo = iAP2LinkGetSessionInfo(a1, a5);
  if (!SessionInfo)
  {
    return 0;
  }

  v9 = SessionInfo;
  v10 = HIDWORD(gLogObjects);
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
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v32) = v10;
      v33 = 1024;
      v34 = v11;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, 0);
    }

    v19 = &_os_log_default;
    v18 = &_os_log_default;
  }

  else
  {
    v19 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Processing session data...", &v31, 2u);
  }

  v20 = iap2_sessionRouter_processSessionData(v7, v9, a2, a3);
  v21 = HIDWORD(gLogObjects);
  v22 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 20)
  {
    v23 = *(gLogObjects + 152);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v32) = v21;
      v33 = 1024;
      v34 = v22;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v25, v26, v27, v28, 0);
    }

    v23 = &_os_log_default;
    v29 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Finished processing session data!", &v31, 2u);
  }

  return v20;
}

void iAP2LinkSendDetectCB(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = *(a1 + 176);
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        if (a2)
        {
          v10 = HIDWORD(gLogObjects);
          v11 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v12 = *(gLogObjects + 152);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v20 = v10;
              v21 = 1024;
              v22 = v11;
              OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, 0);
            }

            v12 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "-------------------------------------------------------\n  BadParameter or RequestIdentify response to DETECT:  \n    must be iAP1 only device!                          \n-------------------------------------------------------", &v19, 2u);
          }
        }

        else
        {
          acc_platform_packetLogging_logEvent(*v9, "DETECT", "Send DETECT packet", a4, a5, a6, a7, a8, v19);

          iap2_endpoint_sendOutgoingData(v9, kIap2PacketDetectData, kIap2PacketDetectDataLen);
        }
      }
    }
  }
}

_WORD *oobPairing_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040975FC6C2uLL);
    v3 = v2;
    if (v2)
    {
      *v2 = a1;
      v2[8] = 514;
      *(v2 + 18) = 0;
      *(v2 + 4) = 0;
      *bytes = CFHash(*(a1 + 16));
      *(v3 + 1) = CFDataCreate(kCFAllocatorDefault, bytes, 8);
      platform_blePairing_incrementUserCount();
    }
  }

  else
  {
    v5 = logObjectForModule_3(10);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      OUTLINED_FUNCTION_1_5();
      _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
    }

    return 0;
  }

  return v3;
}

uint64_t oobPairing_endpoint_publish(uint64_t result, __int128 *a2)
{
  if (result)
  {
    v2 = result;
    result = *result;
    if (result)
    {
      isPublished = acc_endpoint_isPublished(result);
      if (acc_endpoint_getProtocol(*v2) == 8)
      {
        _oobPairing_endpoint_init(*v2);
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
        v6 = Mutable;
        if (*v2)
        {
          v7 = *(*v2 + 16);
        }

        else
        {
          v7 = 0;
        }

        CFArrayAppendValue(Mutable, v7);
        v8 = acc_accInfo_copyAccessoryInfoDictionary(a2);
        if (v8)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v8);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v10 = MutableCopy;
        v11 = _oobPairing_copySupportedTypes((v2 + 16), 2);
        if (v11)
        {
          CFDictionaryAddValue(v10, @"SupportedTypes", v11);
        }

        valuePtr = *(v2 + 18);
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v10, @"Supports2Way", v12);
        v13 = gLogObjects;
        v14 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 11)
        {
          v15 = *(gLogObjects + 80);
        }

        else
        {
          v15 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v25 = v13;
            OUTLINED_FUNCTION_2_1();
            *v26 = v14;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v2 + 16);
          v17 = *(v2 + 17);
          *buf = 67110146;
          *v25 = isPublished;
          *&v25[4] = 1024;
          *&v25[6] = v16;
          *v26 = 1024;
          *&v26[2] = v17;
          v27 = 2112;
          v28 = v11;
          v29 = 2112;
          v30 = v10;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "oobPairing publish: wasPublished = %d, supportedTypes { %d, %d } = %@, accInfoDict = %@", buf, 0x28u);
        }

        v18 = *v2;
        if (isPublished)
        {
          if (v18)
          {
            v19 = *(v18 + 16);
          }

          else
          {
            v19 = 0;
          }

          v21 = (v2 + 8);
          platform_blePairing_accessoryDetached(v19, *(v2 + 8));
          if (*v2)
          {
            v20 = *(*v2 + 16);
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          if (v18)
          {
            v20 = *(v18 + 16);
          }

          else
          {
            v20 = 0;
          }

          v21 = (v2 + 8);
        }

        platform_blePairing_accessoryAttached(v20, *v21, v10, v11);
        if (v8)
        {
          CFRelease(v8);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (v6)
        {
          CFRelease(v6);
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

BOOL oobPairing_endpoint_destroy(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = v2 != 0;
  if (v2)
  {
    if (*v2)
    {
      Protocol = acc_endpoint_getProtocol(*v2);
      v2 = *a1;
      if (Protocol == 8)
      {
        if (v2)
        {
          v5 = *v2;
          if (*v2)
          {
            v5 = *(v5 + 16);
          }
        }

        else
        {
          v5 = 0;
        }

        platform_blePairing_accessoryDetached(v5, *(v2 + 8));
        v2 = *a1;
      }
    }

    if (*(v2 + 32))
    {
      CFRelease(*(v2 + 32));
      *(*a1 + 32) = 0;
      v2 = *a1;
    }

    if (!*(v2 + 8) || (CFRelease(*(v2 + 8)), *(*a1 + 8) = 0, (v2 = *a1) != 0))
    {
      free(v2);
      *a1 = 0;
    }
  }

  platform_blePairing_decrementUserCount();
  return v3;
}

BOOL oobPairing_endpoint_processIncomingData(uint64_t a1, CFDataRef theData)
{
  result = 0;
  if (a1)
  {
    if (theData)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      result = 0;
      if (BytePtr)
      {
        v7 = Length - 4;
        if (Length >= 4)
        {
          v8 = *(BytePtr + 1);
          v9 = *BytePtr;
          v10 = *(BytePtr + 1);
          v11 = gLogObjects;
          v12 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 11)
          {
            v13 = *(gLogObjects + 80);
          }

          else
          {
            v13 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&v75 = v11;
              OUTLINED_FUNCTION_2_1();
              *(&v75 + 10) = v12;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 16);
            v15 = *(a1 + 17);
            *buf = 67110402;
            LODWORD(v75) = v9;
            WORD2(v75) = 1024;
            *(&v75 + 6) = v10;
            WORD5(v75) = 1024;
            HIDWORD(v75) = v8 >> 15;
            v76 = 1024;
            v77 = v14;
            v78 = 1024;
            v79 = v15;
            v80 = 2112;
            v81 = theData;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IncomingOOBPairingInfo/Data: messageID %d, pairingType %d, supports2way %d, supportedTypes[%d %d], dataIn %@", buf, 0x2Au);
          }

          if (*(a1 + 16) != v8 && *(a1 + 17) != v8)
          {
            return 0;
          }

          if (v9 == 5)
          {
            v20 = CFDataCreate(kCFAllocatorDefault, BytePtr + 4, v7);
            v21 = gLogObjects;
            v22 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 11)
            {
              v23 = *(gLogObjects + 80);
            }

            else
            {
              v23 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&v75 = v21;
                OUTLINED_FUNCTION_2_1();
                *(&v75 + 10) = v22;
                OUTLINED_FUNCTION_4();
                OUTLINED_FUNCTION_10(v58, v59, v60, v61, v62);
              }
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              LODWORD(v75) = v10;
              WORD2(v75) = 2112;
              *(&v75 + 6) = v20;
              OUTLINED_FUNCTION_4();
              _os_log_impl(v33, v34, OS_LOG_TYPE_DEFAULT, v35, v36, 0x12u);
            }

            v37 = *(a1 + 32);
            if (v37)
            {
              CFRelease(v37);
              *(a1 + 32) = 0;
            }

            *(a1 + 32) = CFDataCreateCopy(kCFAllocatorDefault, v20);
            if (*a1)
            {
              v38 = *(*a1 + 16);
            }

            else
            {
              v38 = 0;
            }

            v46 = *(a1 + 8);
            v47 = oobPairing_bleToOobPairingType(v10);
            platform_blePairing_accessoryPairingCFData(v38, v46, v47, v20);
            if (v20)
            {
              CFRelease(v20);
            }

            if (*a1)
            {
              v48 = *(*a1 + 16);
            }

            else
            {
              v48 = 0;
            }

            platform_blePairing_finishedNegotiation(v48, *(a1 + 8));
            v49 = gLogObjects;
            v50 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 14)
            {
              v51 = *(gLogObjects + 104);
            }

            else
            {
              v51 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&v75 = v49;
                OUTLINED_FUNCTION_2_1();
                *(&v75 + 10) = v50;
                OUTLINED_FUNCTION_1_5();
                _os_log_error_impl(v63, v64, v65, v66, v67, 0x12u);
              }
            }

            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "oobPairing_endpoint_processIncomingData: call acc_manager_checkForWirelessCTA", buf, 2u);
            }

            acc_manager_checkForWirelessCTA();
            return 1;
          }

          if (v9 == 4)
          {
            values = CFDataCreate(kCFAllocatorDefault, BytePtr + 4, v7);
            v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
            v17 = gLogObjects;
            v18 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 11)
            {
              v19 = *(gLogObjects + 80);
            }

            else
            {
              v19 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&v75 = v17;
                OUTLINED_FUNCTION_2_1();
                *(&v75 + 10) = v18;
                OUTLINED_FUNCTION_4();
                OUTLINED_FUNCTION_10(v53, v54, v55, v56, v57);
              }
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              LODWORD(v75) = v10;
              WORD2(v75) = 2112;
              *(&v75 + 6) = values;
              OUTLINED_FUNCTION_4();
              _os_log_impl(v27, v28, OS_LOG_TYPE_DEFAULT, v29, v30, 0x12u);
            }

            v31 = *(a1 + 24);
            if (v31)
            {
              CFRelease(v31);
              *(a1 + 24) = 0;
            }

            *(a1 + 24) = CFDataCreateCopy(kCFAllocatorDefault, values);
            acc_connection_setProperty(**a1, kCFACCProperties_Connection_AWC_OOBPairingInfo);
            if (*a1)
            {
              v32 = *(*a1 + 16);
            }

            else
            {
              v32 = 0;
            }

            v44 = *(a1 + 8);
            v45 = oobPairing_bleToOobPairingType(v10);
            platform_blePairing_accessoryPairingInfo(v32, v44, v45, v16);
            if (values)
            {
              CFRelease(values);
              values = 0;
            }

            if (v16)
            {
              CFRelease(v16);
            }

            return 1;
          }

          v24 = gLogObjects;
          v25 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 11)
          {
            v26 = *(gLogObjects + 80);
          }

          else
          {
            v26 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&v75 = v24;
              OUTLINED_FUNCTION_2_1();
              *(&v75 + 10) = v25;
              OUTLINED_FUNCTION_1_5();
              _os_log_error_impl(v68, v69, v70, v71, v72, 0x12u);
            }
          }

          result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 67109120;
            LODWORD(v75) = v9;
            OUTLINED_FUNCTION_1_5();
            _os_log_error_impl(v39, v40, v41, v42, v43, 8u);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

CFDataRef oobPairing_endpoint_copyCachedOOBPairingInfo(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return CFDataCreateCopy(kCFAllocatorDefault, v1);
  }

  else
  {
    return 0;
  }
}

CFDataRef oobPairing_endpoint_copyCachedOOBPairingData(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return CFDataCreateCopy(kCFAllocatorDefault, v1);
  }

  else
  {
    return 0;
  }
}

void _invokeFeatureHandlerIterator_cold_5(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 28);
  v5 = *(a2 + 16);
  v6[0] = 67109634;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Skipping invokeHandler (handlerType: %d) for %{coreacc:ACCEndpoint_Protocol_t}d endpoint %@!", v6, 0x18u);
}

void mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_9()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t mfi4Auth_endpoint_setAccessoryUserName()
{
  OUTLINED_FUNCTION_18_3(__stack_chk_guard);
  v17 = 0x2000000000;
  v18 = 0;
  if (v0)
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v8 = *(gLogObjects + 440);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = 134218240;
        v20 = v6;
        v21 = 1024;
        v22 = v7;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v19);
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      OUTLINED_FUNCTION_9(&_mh_execute_header, v8, v10, "mfi4Auth_endpoint_setAccessoryUserName", &v19);
    }

    v11 = *(v5 + 16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = __mfi4Auth_endpoint_setAccessoryUserName_block_invoke;
    v14[3] = &unk_100225FB8;
    v14[6] = v5;
    v14[7] = v4;
    v14[4] = v3;
    v14[5] = v15;
    dispatch_sync(v11, v14);
    v12 = *(v16 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(v15, 8);
  return v12 & 1;
}

uint64_t mfi4Auth_endpoint_getAccessoryUserName()
{
  OUTLINED_FUNCTION_18_3(__stack_chk_guard);
  v29 = 0x2000000000;
  v30 = 0;
  if (v0)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v1 = *(gLogObjects + 440);
    }

    else
    {
      v1 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_20_0(3.8521e-34);
        OUTLINED_FUNCTION_22_1();
        OUTLINED_FUNCTION_10(v17, v18, v19, v20, v21);
      }
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_9(v2, v3, v4, v5, v6);
    }

    v7 = OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_26_3(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, 0x40000000, __mfi4Auth_endpoint_getAccessoryUserName_block_invoke, &unk_100225FE0, v24, v25, v26, v27[0]);
    v15 = *(v28 + 24);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(v27, 8);
  return v15 & 1;
}

uint64_t mfi4Auth_endpoint_provisionPairing()
{
  OUTLINED_FUNCTION_18_3(__stack_chk_guard);
  v29 = 0x2000000000;
  v30 = 0;
  if (v0)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v1 = *(gLogObjects + 440);
    }

    else
    {
      v1 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_20_0(3.8521e-34);
        OUTLINED_FUNCTION_22_1();
        OUTLINED_FUNCTION_10(v17, v18, v19, v20, v21);
      }
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_9(v2, v3, v4, v5, v6);
    }

    v7 = OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_26_3(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, 0x40000000, __mfi4Auth_endpoint_provisionPairing_block_invoke, &unk_100226008, v24, v25, v26, v27[0]);
    v15 = *(v28 + 24);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(v27, 8);
  return v15 & 1;
}

BOOL _mfi4Auth_endpoint_setNvmKeyValues(_BOOL8 result, uint64_t a2, const void *a3, int a4)
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_25();
  if (_mfi4Auth_endpoint_waitSessionClosed(v8))
  {
    Count = CFDictionaryGetCount(v5);
    v10 = Count;
    v11 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v12 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    result = 0;
    if (!v11)
    {
      return result;
    }

    if (!v12)
    {
      return result;
    }

    CFDictionaryGetKeysAndValues(v5, v11, v12);
    v13 = malloc_type_calloc(Count, 2uLL, 0x1000040BDFB0063uLL);
    v14 = malloc_type_calloc(Count, 8uLL, 0x10040436913F5uLL);
    v15 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
    result = 0;
    v111 = v13;
    if (!v13 || !v14 || !v15)
    {
      return result;
    }

    v107 = Count;
    v108 = a3;
    v109 = v4;
    v16 = gLogObjects;
    v17 = gNumLogObjects;
    v110 = v15;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v18 = *(gLogObjects + 440);
    }

    else
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        v114 = v17;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      OUTLINED_FUNCTION_9(&_mh_execute_header, v18, v20, "mfi4Auth_endpoint_setNvmKeyValues", buf);
    }

    if (!v10)
    {
      v69 = 0;
LABEL_58:
      v70 = v109[1];
      *(v70 + 32) = 6;
      *(v70 + 36) = v69;
      *(v70 + 40) = v111;
      *(v70 + 48) = v14;
      *(v70 + 56) = v110;
      *(v109[1] + 64) = _Block_copy(v108);
      if (acc_endpoint_getTransportType(*v109) == 13)
      {
        acc_endpoint_setProperty(*v109, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
      }

      return 1;
    }

    *&v21 = 134218240;
    v106 = v21;
    v23 = v14;
    v22 = v110;
    v24 = v111;
    while (1)
    {
      valuePtr = 0;
      v25 = CFGetTypeID(*v11);
      TypeID = CFStringGetTypeID();
      v27 = *v11;
      if (v25 == TypeID)
      {
        valuePtr = CFStringGetIntValue(v27);
      }

      else
      {
        v28 = CFGetTypeID(v27);
        if (v28 != CFNumberGetTypeID())
        {
          v71 = gLogObjects;
          v72 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v73 = *(gLogObjects + 440);
          }

          else
          {
            v73 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v106;
              *&buf[4] = v71;
              *&buf[12] = 1024;
              v114 = v72;
              OUTLINED_FUNCTION_23_0();
              OUTLINED_FUNCTION_10(v88, v89, v90, v91, v92);
            }
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
LABEL_74:
            OUTLINED_FUNCTION_23_0();
            OUTLINED_FUNCTION_9(v83, v84, v85, v86, v87);
          }

          return 0;
        }

        CFNumberGetValue(*v11, kCFNumberSInt16Type, &valuePtr);
      }

      if (gLogObjects && gNumLogObjects >= 56)
      {
        v29 = *(gLogObjects + 440);
      }

      else
      {
        v29 = &_os_log_default;
        v30 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v30)
        {
          OUTLINED_FUNCTION_8_3(v30, v31, v32, v33, v34, v35, v36, v37, usedBufLen, v105, v106);
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v67, 0x12u);
        }
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = a4;
        *&buf[8] = 1024;
        *&buf[10] = valuePtr;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_setNvmKeyValues: public:%d, 0x%x", buf, 0xEu);
      }

      if (a4)
      {
        if (valuePtr - 21328 < 0xFFFFFFB1)
        {
          return 0;
        }
      }

      else if (valuePtr - 21504 < 0xFFFFFF50)
      {
        return 0;
      }

      *v24 = valuePtr;
      v38 = CFGetTypeID(*v12);
      if (v38 == CFStringGetTypeID())
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v39 = *(gLogObjects + 440);
        }

        else
        {
          v39 = &_os_log_default;
          v45 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v45)
          {
            OUTLINED_FUNCTION_8_3(v45, v46, v47, v48, v49, v50, v51, v52, usedBufLen, v105, v106);
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v68, 0x12u);
          }
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_setNvmKeyValues: string value", buf, 2u);
        }

        Length = CFStringGetLength(*v12);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        *buf = 0;
        v55 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0x703D748BuLL);
        *v23 = v55;
        v115.location = 0;
        v115.length = Length;
        CFStringGetBytes(*v12, v115, 0x8000100u, 0, 0, v55, MaximumSizeForEncoding, buf);
        *v22 = *buf + 1;
      }

      else
      {
        v40 = CFGetTypeID(*v12);
        v41 = CFDataGetTypeID();
        if (gLogObjects)
        {
          v42 = gNumLogObjects <= 55;
        }

        else
        {
          v42 = 1;
        }

        v43 = !v42;
        if (v40 != v41)
        {
          if (v43)
          {
            v74 = *(gLogObjects + 440);
          }

          else
          {
            v74 = &_os_log_default;
            v75 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            if (v75)
            {
              OUTLINED_FUNCTION_14_2(v75, v76, v77, v78, v79, v80, v81, v82, usedBufLen, v105, v106);
              OUTLINED_FUNCTION_23_0();
              OUTLINED_FUNCTION_10(v93, v94, v95, v96, v97);
            }
          }

          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            goto LABEL_74;
          }

          return 0;
        }

        if (v43)
        {
          v44 = *(gLogObjects + 440);
        }

        else
        {
          v44 = &_os_log_default;
          v56 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v56)
          {
            OUTLINED_FUNCTION_14_2(v56, v57, v58, v59, v60, v61, v62, v63, usedBufLen, v105, v106);
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_setNvmKeyValues: data value", buf, 2u);
        }

        v64 = CFDataGetLength(*v12);
        v65 = malloc_type_calloc(v64, 1uLL, 0x530B9A8BuLL);
        *v23 = v65;
        BytePtr = CFDataGetBytePtr(*v12);
        memcpy(v65, BytePtr, v64);
        *v22 = v64;
      }

      ++v12;
      ++v11;
      ++v24;
      ++v23;
      ++v22;
      if (!--v10)
      {
        v69 = v107;
        goto LABEL_58;
      }
    }
  }

  v98 = logObjectForModule_5();
  result = OUTLINED_FUNCTION_16(v98);
  if (result)
  {
    *buf = 0;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_10_7(v99, v100, v101, v102, v103);
    return 0;
  }

  return result;
}

uint64_t mfi4Auth_endpoint_getPrivateNvmKeyValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    v3 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = __mfi4Auth_endpoint_getPrivateNvmKeyValues_block_invoke;
    v6[3] = &unk_1002260A8;
    v6[6] = a1;
    v6[7] = a2;
    v6[4] = a3;
    v6[5] = &v7;
    dispatch_sync(v3, v6);
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

uint64_t __mfi4Auth_endpoint_setPrivateNvmKeyValues_block_invoke(uint64_t a1)
{
  result = _mfi4Auth_endpoint_setNvmKeyValues(*(a1 + 48), *(a1 + 56), *(a1 + 32), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_4();
    CFErrorCreate(v3, v4, v5, v6);
    v7 = OUTLINED_FUNCTION_17_5();

    return v8(v7);
  }

  return result;
}

uint64_t __mfi4Auth_endpoint_cancelVendorKeyErase_block_invoke(uint64_t a1)
{
  if (acc_endpoint_getTransportType(**(a1 + 48)) != 13)
  {
    goto LABEL_9;
  }

  v2 = OUTLINED_FUNCTION_24_0();
  v3 = acc_endpoint_copyProperty(v2);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID() && v4 == kCFBooleanTrue)
    {
      v7 = *(*(a1 + 48) + 32);
      OUTLINED_FUNCTION_7_4();
      dispatch_source_set_timer(v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_24_0();
      acc_endpoint_setProperty(v12, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanFalse);
LABEL_9:
      v13 = 1;
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_10:
  OUTLINED_FUNCTION_15_3(v13);
  if ((v14 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_4();
    CFErrorCreate(v15, v16, v17, v18);
  }

  v19 = OUTLINED_FUNCTION_17_5();

  return v20(v19);
}

uint64_t __mfi4Auth_endpoint_cancelUserKeyErase_block_invoke(uint64_t a1)
{
  if (acc_endpoint_getTransportType(**(a1 + 48)) != 13)
  {
    goto LABEL_9;
  }

  v2 = OUTLINED_FUNCTION_24_0();
  v3 = acc_endpoint_copyProperty(v2);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID() && v4 == kCFBooleanTrue)
    {
      v7 = *(*(a1 + 48) + 32);
      OUTLINED_FUNCTION_7_4();
      dispatch_source_set_timer(v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_24_0();
      acc_endpoint_setProperty(v12, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanFalse);
LABEL_9:
      v13 = 1;
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_10:
  OUTLINED_FUNCTION_15_3(v13);
  if ((v14 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_4();
    CFErrorCreate(v15, v16, v17, v18);
  }

  v19 = OUTLINED_FUNCTION_17_5();

  return v20(v19);
}

void __mfi4Auth_endpoint_setAccessoryUserName_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "setAccessoryUserName: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void _mfi4Auth_endpoint_waitSessionClosed_cold_1(_BYTE *a1)
{
  v2 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "waitSessionClosed: RequestSessionOpen not a BOOL", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void _mfi4Auth_endpoint_waitSessionClosed_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "waitSessionClosed: RequestSessionOpen != false", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void _mfi4Auth_endpoint_waitSessionClosed_cold_3(_BYTE *a1)
{
  v2 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "waitSessionClosed: SessionOpen not a BOOL", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void _mfi4Auth_endpoint_waitSessionClosed_cold_4(_BYTE *a1)
{
  v2 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "waitSessionClosed: no SessionOpen property", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void _mfi4Auth_endpoint_waitSessionClosed_cold_5(_BYTE *a1)
{
  v2 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "waitSessionClosed: no RequestSessionOpen property", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void __mfi4Auth_endpoint_getAccessoryUserName_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "getAccessoryUserName: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void __mfi4Auth_endpoint_provisionPairing_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "provisionPairing: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void mfi4Auth_endpoint_erasePairing_cold_2()
{
  v0 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_18_2(v0))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "mfi4Auth_endpoint_erasePairing: !pProtocolEndpoint", v3, v4, v5, v6, 0);
  }
}

void __mfi4Auth_endpoint_erasePairing_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "erasePairing: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void __mfi4Auth_endpoint_getPublicNvmKeyValues_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "getPublicNvmKeyValues: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void __mfi4Auth_endpoint_getPrivateNvmKeyValues_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "getPrivateNvmKeyValues: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void mfi4Auth_endpoint_beginVendorKeyErase_cold_2()
{
  v0 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_18_2(v0))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "mfi4Auth_endpoint_beginVendorKeyErase: !pProtocolEndpoint", v3, v4, v5, v6, 0);
  }
}

void __mfi4Auth_endpoint_beginVendorKeyErase_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "beginVendorKeyErase: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void mfi4Auth_endpoint_continueVendorKeyErase_cold_2()
{
  v0 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_18_2(v0))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "mfi4Auth_endpoint_continueVendorKeyErase: !pProtocolEndpoint", v3, v4, v5, v6, 0);
  }
}

void __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v2, v3, "continueVendorKeyErase: !CFBooleanGetTypeID", v4, v5, v6, v7, 0);
  }
}

void __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v2, v3, "continueVendorKeyErase: !kCFBooleanTrue", v4, v5, v6, v7, 0);
  }
}

void __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke_cold_3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v2, v3, "continueVendorKeyErase: !propertyValue", v4, v5, v6, v7, 0);
  }
}

uint64_t _mfi4Auth_endpoint_requestNvmErasePublicKey_cold_6()
{
  v0 = logObjectForModule_5();
  if (!OUTLINED_FUNCTION_18_2(v0))
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "!pProtocolEndpoint", v3, v4, v5, v6, 0);
  return 0;
}

void mfi4Auth_endpoint_cancelVendorKeyErase_cold_2()
{
  v0 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_18_2(v0))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "mfi4Auth_endpoint_cancelVendorKeyErase: !pProtocolEndpoint", v3, v4, v5, v6, 0);
  }
}

void mfi4Auth_endpoint_beginUserKeyErase_cold_2()
{
  v0 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_18_2(v0))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "mfi4Auth_endpoint_beginUserKeyErase: !pProtocolEndpoint", v3, v4, v5, v6, 0);
  }
}

void __mfi4Auth_endpoint_beginUserKeyErase_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v2, v3, "beginUserKeyErase: !sessionClosed", v4, v5, v6, v7, 0);
  }
}

void mfi4Auth_endpoint_continueUserKeyErase_cold_2()
{
  v0 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_18_2(v0))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "mfi4Auth_endpoint_continueUserKeyErase: !pProtocolEndpoint", v3, v4, v5, v6, 0);
  }
}

void __mfi4Auth_endpoint_continueUserKeyErase_block_invoke_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v2, v3, "mfi4Auth_endpoint_continueUserKeyErase: !CFBooleanGetTypeID", v4, v5, v6, v7, 0);
  }
}

void __mfi4Auth_endpoint_continueUserKeyErase_block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v2, v3, "mfi4Auth_endpoint_continueUserKeyErase: !kCFBooleanTrue", v4, v5, v6, v7, 0);
  }
}

void __mfi4Auth_endpoint_continueUserKeyErase_block_invoke_cold_3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_9(a1);
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v2, v3, "mfi4Auth_endpoint_continueUserKeyErase: !propertyValue", v4, v5, v6, v7, 0);
  }
}

void mfi4Auth_endpoint_cancelUserKeyErase_cold_2()
{
  v0 = logObjectForModule_5();
  if (OUTLINED_FUNCTION_18_2(v0))
  {
    OUTLINED_FUNCTION_1_6(&_mh_execute_header, v1, v2, "mfi4Auth_endpoint_cancelUserKeyErase: !pProtocolEndpoint", v3, v4, v5, v6, 0);
  }
}

uint64_t mfi4Auth_endpoint_copyUserPrivateKey_cold_1()
{
  OUTLINED_FUNCTION_25();
  v0 = logObjectForModule_5();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_12_3(&_mh_execute_header, v1, v2, "copyUserPrivateKey: error:%d", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_7_4();
  v11 = CFErrorCreate(v7, v8, v9, v10);
  return OUTLINED_FUNCTION_19_1(v11);
}

uint64_t mfi4Auth_endpoint_copyUserPrivateKey_cold_2()
{
  OUTLINED_FUNCTION_25();
  v0 = logObjectForModule_5();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_12_3(&_mh_execute_header, v1, v2, "copyUserPrivateKey: error:%d", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_7_4();
  v11 = CFErrorCreate(v7, v8, v9, v10);
  return OUTLINED_FUNCTION_19_1(v11);
}

uint64_t mfi4Auth_endpoint_copyUserPrivateKey_cold_3()
{
  OUTLINED_FUNCTION_25();
  v0 = logObjectForModule_5();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_12_3(&_mh_execute_header, v1, v2, "copyUserPrivateKey: error:%d", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_7_4();
  v11 = CFErrorCreate(v7, v8, v9, v10);
  return OUTLINED_FUNCTION_19_1(v11);
}

void **acc_endpoint_destroy(void **result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *result;
  if (!*result || !*v3)
  {
    return 0;
  }

  *(v3 + 120) = 1;
  v4 = acc_endpoint_copyDescription(v3);
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  v6 = &audioProductCerts_endpoint_publish_onceToken;
  v7 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 15)
  {
    v8 = *(gLogObjects + 112);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    *&v94[10] = v7;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v9, v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11, v12, v13, v14, v93);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79_0(v15, v16, v17, v18, v19);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (acc_endpoint_isTransportRestricted(v3))
  {
    v20 = gLogObjects;
    v21 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 15)
    {
      v22 = *(gLogObjects + 112);
    }

    else
    {
      v22 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        v93 = 134218240;
        *v94 = v20;
        *&v94[8] = 1024;
        *&v94[10] = v21;
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v88, v89, v90, v91, v92, 0x12u);
      }
    }

    if (OUTLINED_FUNCTION_93())
    {
      v24 = *(v3 + 8);
      v23 = *(v3 + 16);
      OUTLINED_FUNCTION_9_0();
      *&v94[10] = v25;
      OUTLINED_FUNCTION_78(&_mh_execute_header, v22, v26, "Destroying endpoint with restricted transport...  (endpointUUID: %@, connectionUUID: %@)", &v93);
    }
  }

  if (*(v3 + 121) == 1 && acc_policies_isTransportSupervised(*(v3 + 24), *(*v3 + 8)))
  {
    acc_restrictedMode_accessoryDetached();
  }

  v27 = *(v3 + 28);
  if ((v27 | 2) == 7)
  {
    platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(*(v3 + 16));
    v27 = *(v3 + 28);
  }

  if (v27 == 1)
  {
    platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(*(v3 + 16));
  }

  OUTLINED_FUNCTION_41();
  if (v35)
  {
    platform_analytics_endpointWillBeDestroyed();
    if (*(v3 + 89))
    {
      v36 = *(v3 + 8);
      v37 = *(v3 + 16);
      platform_connectionInfo_accessoryEndpointDetached();
    }
  }

  v38 = *(v3 + 16);
  if (v38)
  {
    v39 = CFRetain(v38);
  }

  else
  {
    v39 = 0;
  }

  v40 = *v3;
  if (*v3)
  {
    v41 = *(v3 + 16);
    if (acc_connection_containsEndpointUUID(*v3))
    {
      v42 = *(v3 + 16);
      acc_connection_removeEndpointUUID(v40);
    }

    if (acc_connection_isPublished(v40))
    {
      acc_connection_publish(v40);
    }
  }

  acc_protocolRouter_destroyProtocolLayer(v3, v28, v29, v30, v31, v32, v33, v34);
  acc_protocolParser_destroy(v3 + 48, v43);
  if (*v40)
  {
    v44 = CFRetain(*(v3 + 8));
  }

  else
  {
    v44 = 0;
  }

  v45 = *(v3 + 112);
  if (v45)
  {
    CFRelease(v45);
    *(v3 + 112) = 0;
  }

  v46 = *(v3 + 16);
  if (v46)
  {
    CFRelease(v46);
    *(v3 + 16) = 0;
  }

  v47 = *(v3 + 8);
  if (v47)
  {
    CFRelease(v47);
    *(v3 + 8) = 0;
  }

  v48 = *(v3 + 32);
  if (v48)
  {
    CFRelease(v48);
    *(v3 + 32) = 0;
  }

  acc_accInfo_destroy((v3 + 64));
  v49 = *(v3 + 72);
  if (v49)
  {
    CFRelease(v49);
    *(v3 + 72) = 0;
  }

  pthread_mutex_lock((v3 + 128));
  v50 = *(v3 + 80);
  if (v50)
  {
    CFRelease(v50);
    *(v3 + 80) = 0;
  }

  pthread_mutex_unlock((v3 + 128));
  pthread_mutex_destroy((v3 + 128));
  if (*v2)
  {
    free(*v2);
    *v2 = 0;
  }

  OUTLINED_FUNCTION_85();
  if (&audioProductCerts_endpoint_publish_onceToken && &audioProductCerts_endpoint_publish_onceToken >= 3)
  {
    v51 = systemInfo_isInternalBuild_onceToken;
    if (!&audioProductCerts_endpoint_publish_onceToken)
    {
LABEL_66:
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_0_4();
        *&v94[6] = v5;
        OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_18_0();
        _os_log_error_impl(v73, v74, v75, v76, v77, 0x18u);
      }

      goto LABEL_68;
    }
  }

  else
  {
    v51 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_0_4();
      *&v94[6] = &audioProductCerts_endpoint_publish_onceToken;
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_12_4();
      _os_log_error_impl(v53, v54, v55, v56, v57, 0x18u);
      v5 = (&_mh_execute_header + 1);
      LODWORD(v6) = *(v1 + 3960);
    }

    else if (!&audioProductCerts_endpoint_publish_onceToken)
    {
      goto LABEL_66;
    }
  }

  if (v6 < 3)
  {
    goto LABEL_66;
  }

  v52 = v5[2];
LABEL_68:
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_69();
  if (!(!v35 & v59))
  {
    v60 = v58;
    if (os_signpost_enabled(v51))
    {
      OUTLINED_FUNCTION_83();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v60, "Endpoint", "Destroy endpoint %@", &v93, 0xCu);
    }
  }

  if (gLogObjects && gNumLogObjects >= 15)
  {
    v61 = *(gLogObjects + 112);
  }

  else
  {
    v61 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_10(v78, v79, v80, v81, v82);
    }
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_83();
    *&v94[8] = 2112;
    *&v94[10] = v44;
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_78(v62, v63, v64, v65, v66);
  }

  if (gLogObjects && gNumLogObjects >= 15)
  {
    v67 = *(gLogObjects + 112);
  }

  else
  {
    v67 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_10(v83, v84, v85, v86, v87);
    }
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    NumEndpoints = acc_connection_getNumEndpoints(v40);
    v93 = 134218242;
    *v94 = NumEndpoints;
    *&v94[8] = 2112;
    *&v94[10] = v44;
    OUTLINED_FUNCTION_88();
    _os_log_impl(v69, v70, OS_LOG_TYPE_INFO, v71, v72, 0x16u);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  return 1;
}

CFStringRef acc_endpoint_copyDescription(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50(a1);
  if (!v2)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 128));
  v22 = *(v1 + 16);
  v21 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = &kACCEndpoint_TransportType_Strings[18];
  if (v3 < 0x11)
  {
    v4 = &kACCEndpoint_TransportType_Strings[v3];
  }

  v20 = *v4;
  if (*(v1 + 28) >= 0x13u)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v1 + 28);
  }

  v19 = kACCEndpoint_Protocol_Strings[v5];
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
  v9 = *(v1 + 40);
  if (*(v1 + 56))
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (*(v1 + 64))
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  v12 = *(v1 + 72);
  if (v12)
  {
    Count = CFDictionaryGetCount(v12);
  }

  else
  {
    Count = 0;
  }

  v14 = CurrentUnixTimeMS - v9;
  v15 = *(v1 + 80);
  if (v15)
  {
    v15 = CFDictionaryGetCount(v15);
  }

  if (*(v1 + 89))
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<ACCEndpoint_t: %@; parentConnectionUUID: %@; transportType: [%s]; protocol: [%s]; identifier: %@; creationTimestampMS: %llu; durationMS: %llu; protocolEndpoint: %s; accessoryInfo: %s; numAccessoryInfoOverrides: %ld; numProperties: %ld, published: %s>", v22, v21, v20, v19, v6, v7, v14, v10, v11, Count, v15, v16);
  pthread_mutex_unlock((v1 + 128));
  return v17;
}

uint64_t acc_endpoint_setAccessoryInfo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 15;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9, v39);
    }
  }

  else
  {
    v10 = *(gLogObjects + 112);
  }

  if (OUTLINED_FUNCTION_81())
  {
    v11 = *(v1 + 16);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79_0(v12, v13, v14, v15, v16);
  }

  v17 = *(v1 + 64);
  if (!v17)
  {
    v19 = acc_accInfo_create();
    v18 = 0;
    *(v1 + 64) = v19;
    if (v19)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v18 = acc_accInfo_copyAccessoryInfoDictionary(v17);
  v19 = *(v1 + 64);
  if (!v19)
  {
    return 0;
  }

LABEL_13:
  v20 = acc_accInfo_setAccessoryInfo(v19, v2);
  v21 = _processAccessoryInfoOverrides(v1);
  v22 = acc_accInfo_copyAccessoryInfoDictionary(*(v1 + 64));
  OUTLINED_FUNCTION_41();
  if (v23)
  {
    platform_analytics_endpointAccessoryInfoDidChange();
    acc_connection_updateAcccessoryInfoIfNeeded(*v1, *(v1 + 16));
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v24 = acc_accInfo_copyAccessoryInfoDescription(*(v1 + 64));
  if (gLogObjects && gNumLogObjects >= 15)
  {
    v25 = *(gLogObjects + 112);
  }

  else
  {
    v25 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_6_6();
      OUTLINED_FUNCTION_12_4();
      _os_log_error_impl(v34, v35, v36, v37, v38, 0x12u);
    }
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v1 + 16);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_78(v27, v28, v29, v30, v31);
  }

  v32 = v20 & v21;
  if (v24)
  {
    CFRelease(v24);
  }

  acc_connection_mapAccessoryInfo(*v1);
  return v32;
}

BOOL _processAccessoryInfoOverrides(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      if (CFDictionaryGetCount(v2) >= 1)
      {
        v3 = *(a1 + 64);
        if (v3 || (v3 = acc_accInfo_create(), (*(a1 + 64) = v3) != 0))
        {
          acc_accInfo_updateAccessoryInfoWithDictionary(v3, *(a1 + 72));
        }
      }
    }

    platform_externalAccessory_updateEAAccessoryInfoForEndpointWithUUID(*(a1 + 16));
    OUTLINED_FUNCTION_41();
    if (v4 && *a1)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      platform_connectionInfo_accessoryEndpointInfoPropertyChanged();
    }

    else
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 15)
      {
        v9 = *(gLogObjects + 112);
      }

      else
      {
        v9 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          valuePtr = 134218240;
          v26 = v7;
          OUTLINED_FUNCTION_2_1();
          LODWORD(v28) = v8;
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v22, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
        }
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 16);
        valuePtr = 136315394;
        v26 = "_processAccessoryInfoOverrides";
        v27 = 2112;
        v28 = v16;
        OUTLINED_FUNCTION_59_1();
        OUTLINED_FUNCTION_63(v17, v18, v19, v20, v21);
      }
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = *(v10 + 88);
      if (v11)
      {
        v12 = *(v10 + 96);
        if (v12)
        {
          if (*(*a1 + 8) == 3)
          {
            v24 = 0;
            valuePtr = 0;
            v13 = CFGetTypeID(v11);
            if (v13 == CFNumberGetTypeID())
            {
              v14 = CFGetTypeID(v12);
              if (v14 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
                CFNumberGetValue(v12, kCFNumberIntType, &v24);
                if (valuePtr == 1452 && (v24 & 0xFFFFFFFE) == 0x456)
                {
                  platform_sleepAssertion_destroy(**a1);
                }
              }
            }
          }
        }
      }
    }
  }

  return a1 != 0;
}

uint64_t acc_endpoint_setAccessoryInfoWithDictionary(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25();
  v4 = *(v3 + 64);
  if (!v4)
  {
    v6 = acc_accInfo_create();
    v5 = 0;
    *(v1 + 64) = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v5 = acc_accInfo_copyAccessoryInfoDictionary(v4);
  v6 = *(v1 + 64);
  if (!v6)
  {
    return 0;
  }

LABEL_4:
  v7 = acc_accInfo_setAccessoryInfoWithDictionary(v6, v2);
  v8 = _processAccessoryInfoOverrides(v1);
  v9 = acc_accInfo_copyAccessoryInfoDictionary(*(v1 + 64));
  OUTLINED_FUNCTION_41();
  if (v10)
  {
    platform_analytics_endpointAccessoryInfoDidChange();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v11 = acc_accInfo_copyAccessoryInfoDescription(*(v1 + 64));
  if (gLogObjects && gNumLogObjects >= 15)
  {
    v12 = *(gLogObjects + 112);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_12_4();
      _os_log_error_impl(v21, v22, v23, v24, v25, 0x12u);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v1 + 16);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_78(v14, v15, v16, v17, v18);
  }

  v19 = v7 & v8;
  if (v11)
  {
    CFRelease(v11);
  }

  acc_connection_mapAccessoryInfo(*v1);
  return v19;
}

BOOL acc_endpoint_setAccessoryInfoOverridesWithDictionary(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25();
  v3 = gNumLogObjects;
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
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      LODWORD(v45) = v3;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v7, v8, v9, v10, v43[0]);
    }
  }

  else
  {
    v11 = *(gLogObjects + 112);
  }

  if (OUTLINED_FUNCTION_81())
  {
    v12 = *(v1 + 16);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79_0(v13, v14, v15, v16, v17);
  }

  v18 = HIDWORD(gLogObjects);
  v19 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 15)
  {
    v20 = *(gLogObjects + 112);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    v43[2] = v18;
    v44 = 1024;
    LODWORD(v45) = v19;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v21, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v23, v24, v25, v26, 0);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v27, v28, OS_LOG_TYPE_INFO, v29, v30, 0xCu);
  }

  v31 = acc_accInfo_copyAccessoryInfoDictionary(*(v1 + 64));
  v32 = *(v1 + 72);
  if (v32)
  {
    CFRelease(v32);
    *(v1 + 72) = 0;
  }

  if (v2)
  {
    *(v1 + 72) = CFRetain(v2);
  }

  v33 = _processAccessoryInfoOverrides(v1);
  v34 = acc_accInfo_copyAccessoryInfoDictionary(*(v1 + 64));
  OUTLINED_FUNCTION_41();
  if (v35)
  {
    platform_analytics_endpointAccessoryInfoDidChange();
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v36 = acc_accInfo_copyAccessoryInfoDescription(*(v1 + 64));
  if (gLogObjects && gNumLogObjects >= 15)
  {
    v37 = *(gLogObjects + 112);
  }

  else
  {
    v37 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_39(&_mh_execute_header, v41, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v43);
    }
  }

  if (OUTLINED_FUNCTION_26())
  {
    v38 = *(v1 + 16);
    OUTLINED_FUNCTION_9_0();
    v45 = v36;
    OUTLINED_FUNCTION_78(&_mh_execute_header, v37, v39, "[#Events] Accessory info for endpoint %@ did change: %@", v43);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  acc_connection_mapAccessoryInfo(*v1);
  return v33;
}

uint64_t acc_endpoint_clearAccessoryInfo(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = (a1 + 64);
    v3 = acc_accInfo_copyAccessoryInfoDictionary(*(a1 + 64));
    v4 = acc_accInfo_destroy((v1 + 64));
    v5 = _processAccessoryInfoOverrides(v1);
    v6 = acc_accInfo_copyAccessoryInfoDictionary(*v2);
    if (*(v1 + 89) == 1)
    {
      platform_analytics_endpointAccessoryInfoDidChange();
    }

    v1 = v4 & v5;
    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v1;
}

uint64_t acc_endpoint_publish(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 89);
    if ((v2 & 1) == 0)
    {
      platform_analytics_endpointWillBePublished(result);
    }

    switch(*(v1 + 7))
    {
      case 7:
        ea_endpoint_publish(v1[7]);
        goto LABEL_18;
      case 8:
        oobPairing_endpoint_publish(v1[7], v1[8]);
        goto LABEL_18;
      case 0xA:
        if (accAuthProtocol_endpoint_publish(v1[7], v1[8]))
        {
          goto LABEL_18;
        }

        return 0;
      case 0xD:
        audioProductCerts_endpoint_publish(v1[7], v1[8]);
        goto LABEL_18;
      case 0xE:
        mfi4Auth_endpoint_publish(v1[7]);
        goto LABEL_18;
      case 0xF:
        v3 = v1[8];
        if (accSNTPTimeSync_endpoint_publish(v1[7]))
        {
          goto LABEL_18;
        }

        return 0;
      case 0x10:
        if (platform_systemInfo_supportsQiAuth())
        {
          qiAuth_endpoint_publish(v1[7]);
        }

        goto LABEL_18;
      case 0x11:
        if (t56_endpoint_publish(v1[7]))
        {
          goto LABEL_18;
        }

        return 0;
      case 0x12:
        result = genericMFi_endpoint_publish(v1[7], v1[8]);
        if (result)
        {
          goto LABEL_18;
        }

        return result;
      default:
LABEL_18:
        if (!acc_accInfo_isConsideredEmpty(v1[8]))
        {
          goto LABEL_36;
        }

        if (*(v1 + 7) != 5)
        {
          goto LABEL_36;
        }

        v4 = *v1;
        if (!*v1 || *(v4 + 2) != 6)
        {
          goto LABEL_36;
        }

        AccessoryInfo = acc_connection_getAccessoryInfo(v4);
        Copy = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
        v7 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v8 = *(gLogObjects + 112);
        }

        else
        {
          v8 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_46();
            LODWORD(v182) = v7;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v36, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v34 = v1[2];
          v180 = "acc_endpoint_publish";
          v181 = 2112;
          v182 = v34;
          v183 = 2112;
          v184 = Copy;
          OUTLINED_FUNCTION_91(&_mh_execute_header, v9, v10, "%s: endpoint %@, accInfoDict %@", v11, v12, v13, v14, allocator, v170, v172, theDict, 2u);
          if (!Copy)
          {
LABEL_29:
            if (gLogObjects && gNumLogObjects >= 15)
            {
              v15 = *(gLogObjects + 112);
            }

            else if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_71();
              OUTLINED_FUNCTION_26_2(&_mh_execute_header, v133, v134, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            if (OUTLINED_FUNCTION_93())
            {
              v16 = **v1;
              v17 = v1[2];
              *buf = 136315650;
              v180 = "acc_endpoint_publish";
              OUTLINED_FUNCTION_31();
              OUTLINED_FUNCTION_62();
              _os_log_impl(v18, v19, v20, v21, v22, 0x20u);
            }

LABEL_36:
            if (v2)
            {
              goto LABEL_37;
            }

            goto LABEL_110;
          }
        }

        else if (!Copy)
        {
          goto LABEL_29;
        }

        theDicta = acc_connection_copyProperty(*v1, @"AID Info");
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v35 = *(gLogObjects + 112);
        }

        else
        {
          LODWORD(v172) = gNumLogObjects;
          v35 = &_os_log_default;
          if (OUTLINED_FUNCTION_18())
          {
            OUTLINED_FUNCTION_45_0();
            LODWORD(v182) = v172;
            OUTLINED_FUNCTION_28();
            _os_log_error_impl(v38, v39, v40, v41, v42, 0x12u);
          }
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v43 = v1[2];
          *buf = 136315650;
          OUTLINED_FUNCTION_19_2();
          v182 = v44;
          v183 = v45;
          v184 = theDicta;
          _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%s: endpoint %@, aidInfo %@", buf, 0x20u);
        }

        if (theDicta)
        {
          theDictb = CFDictionaryGetValue(theDicta, @"MikeyBus Info");
        }

        else
        {
          theDictb = 0;
        }

        if (gLogObjects && gNumLogObjects >= 15)
        {
          v46 = *(gLogObjects + 112);
        }

        else
        {
          LODWORD(v172) = gNumLogObjects;
          v46 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_46();
            LODWORD(v182) = v172;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        v49 = theDictb;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v50 = v1[2];
          *buf = 136315650;
          OUTLINED_FUNCTION_19_2();
          v182 = v51;
          v183 = v52;
          v184 = theDictb;
          OUTLINED_FUNCTION_91(&_mh_execute_header, v53, v54, "%s: endpoint %@, mikeyBusInfoDict %@", v55, v56, v57, v58, allocator, v170, v172, theDictb, buf[0]);
        }

        if (v49)
        {
          allocatora = CFDictionaryGetValue(v49, @"Product Name");
          Value = CFDictionaryGetValue(v49, @"Product Model Number");
          v171 = CFDictionaryGetValue(v49, @"Product Hardware Revision");
          theDictc = CFDictionaryGetValue(v49, @"Product Firmware Revision");
        }

        else
        {
          Value = 0;
          theDictc = 0;
          allocatora = 0;
          v171 = 0;
        }

        v59 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v60 = *(gLogObjects + 112);
        }

        else
        {
          v60 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_46();
            LODWORD(v182) = v59;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v61, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        v62 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);
        v70 = theDictc;
        if (v62)
        {
          v71 = v1[2];
          v72 = v1[4];
          *buf = 136316674;
          v180 = "acc_endpoint_publish";
          OUTLINED_FUNCTION_31();
          v185 = v73;
          v186 = allocatora;
          v187 = v73;
          v188 = Value;
          v189 = v73;
          v190 = v171;
          v191 = v73;
          v192 = theDictc;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s: endpoint %@, identifier %@, mikeyBusName %@, mikeyBusModel %@, mikeyBusHWRev %@, mikeyBusFWRev %@", buf, 0x48u);
        }

        if (!v1[4])
        {
          goto LABEL_102;
        }

        if (v171)
        {
          allocatora = kCFAllocatorDefault;
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Copy);
          v75 = kCFACCInfo_HardwareVersion;
          v76 = MutableCopy;
          CFDictionarySetValue(MutableCopy, kCFACCInfo_HardwareVersion, v171);
          CFRelease(Copy);
          v77 = logObjectForModule_4();
          if (OUTLINED_FUNCTION_80(v77))
          {
            v78 = v1[2];
            v171 = *(AccessoryInfo + 32);
            CFDictionaryGetValue(v76, v75);
            v79 = v1[4];
            *buf = 136316162;
            OUTLINED_FUNCTION_19_2();
            v182 = v78;
            v70 = theDictc;
            v183 = v80;
            v184 = v171;
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_30_0();
            _os_log_impl(v81, v82, v83, v84, v85, 0x34u);
          }

          Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v76);
          CFRelease(v76);
        }

        if (v70)
        {
          v86 = OUTLINED_FUNCTION_42_0(v62, v63, v64, v65, v66, v67, v68, v69, allocatora, v171, Value, theDictc);
          v87 = v70;
          v88 = v86;
          v89 = kCFACCInfo_FirmwareVersionActive;
          CFDictionarySetValue(v86, kCFACCInfo_FirmwareVersionActive, v87);
          CFRelease(Copy);
          v90 = logObjectForModule_4();
          if (OUTLINED_FUNCTION_80(v90))
          {
            v91 = v1[2];
            v171 = *(AccessoryInfo + 32);
            CFDictionaryGetValue(v88, v89);
            v92 = v1[4];
            *buf = 136316162;
            OUTLINED_FUNCTION_19_2();
            v182 = v91;
            v183 = v93;
            v184 = v171;
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_30_0();
            _os_log_impl(v94, v95, v96, v97, v98, 0x34u);
          }

          Copy = CFDictionaryCreateCopy(theDictc, v88);
          CFRelease(v88);
        }

        v99 = Value;
        if (Value)
        {
          v126 = OUTLINED_FUNCTION_42_0(v62, v63, v64, v65, v66, v67, v68, v69, allocatora, v171, Value, theDictc);
          v135 = kCFACCInfo_Model;
          CFDictionarySetValue(v126, kCFACCInfo_Model, v99);
          CFRelease(Copy);
          v136 = logObjectForModule_4();
          if (OUTLINED_FUNCTION_80(v136))
          {
            v137 = v1[2];
            v138 = *(AccessoryInfo + 16);
            CFDictionaryGetValue(v126, v135);
            v139 = v1[4];
            *buf = 136316162;
            OUTLINED_FUNCTION_19_2();
            v182 = v137;
            v183 = v140;
            v184 = v138;
            OUTLINED_FUNCTION_17_6();
            goto LABEL_100;
          }

LABEL_101:
          Copy = CFDictionaryCreateCopy(theDictd, v126);
          CFRelease(v126);
          goto LABEL_102;
        }

        if ((acc_policies_shouldHideAccessoryWithModelNumber(*(AccessoryInfo + 16)) & 1) == 0)
        {
          isEAProtocolContainedInAllowList = platform_externalAccessory_isEAProtocolContainedInAllowList(v1[4]);
          if (isEAProtocolContainedInAllowList)
          {
            v108 = OUTLINED_FUNCTION_42_0(isEAProtocolContainedInAllowList, v101, v102, v103, v104, v105, v106, v107, allocatora, v171, 0, theDictc);
            v109 = kCFACCInfo_Model;
            CFDictionarySetValue(v108, kCFACCInfo_Model, @"X90");
            CFRelease(Copy);
            v110 = logObjectForModule_4();
            if (OUTLINED_FUNCTION_80(v110))
            {
              v171 = v1[2];
              Value = *(AccessoryInfo + 16);
              CFDictionaryGetValue(v108, v109);
              v111 = v1[4];
              *buf = 136316162;
              OUTLINED_FUNCTION_19_2();
              v182 = v171;
              v183 = v112;
              v184 = Value;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_30_0();
              _os_log_impl(v113, v114, v115, v116, v117, 0x34u);
            }

            Copy = CFDictionaryCreateCopy(theDictc, v108);
            CFRelease(v108);
          }
        }

        if (acc_policies_shouldHideAccessoryWithModelNumber(*(AccessoryInfo + 16)))
        {
          v118 = platform_externalAccessory_isEAProtocolContainedInAllowList(v1[4]);
          if ((v118 & 1) == 0)
          {
            v126 = OUTLINED_FUNCTION_42_0(v118, v119, v120, v121, v122, v123, v124, v125, allocatora, v171, Value, theDictc);
            v127 = kCFACCInfo_Model;
            CFDictionarySetValue(v126, kCFACCInfo_Model, *AccessoryInfo);
            CFRelease(Copy);
            v128 = logObjectForModule_4();
            if (OUTLINED_FUNCTION_80(v128))
            {
              v129 = v1[2];
              v130 = *(AccessoryInfo + 16);
              CFDictionaryGetValue(v126, v127);
              v131 = v1[4];
              *buf = 136316162;
              OUTLINED_FUNCTION_19_2();
              v182 = v129;
              v183 = v132;
              v184 = v130;
              OUTLINED_FUNCTION_17_6();
LABEL_100:
              OUTLINED_FUNCTION_30_0();
              _os_log_impl(v141, v142, v143, v144, v145, 0x34u);
              goto LABEL_101;
            }

            goto LABEL_101;
          }
        }

LABEL_102:
        v146 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v147 = *(gLogObjects + 112);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_45_0();
          LODWORD(v182) = v146;
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v148, v149, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v150 = **v1;
          v151 = v1[2];
          *buf = 136315906;
          v180 = "acc_endpoint_publish";
          OUTLINED_FUNCTION_31();
          v185 = v152;
          v186 = Copy;
          OUTLINED_FUNCTION_62();
          _os_log_impl(v153, v154, v155, v156, v157, 0x2Au);
        }

        acc_endpoint_setAccessoryInfoWithDictionary(v1);
        CFRelease(Copy);
        if (v2)
        {
LABEL_37:
          *(v1 + 89) = 1;
          if (*(v1 + 7) == 1)
          {
            platform_externalAccessory_updateEAAccessoryInfoForEndpointWithUUID(v1[2]);
          }

          if (gLogObjects && gNumLogObjects >= 15)
          {
            v23 = *(gLogObjects + 112);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_71();
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v32, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          if (OUTLINED_FUNCTION_93())
          {
            v24 = v1[2];
            *buf = 138412290;
            v180 = v24;
            OUTLINED_FUNCTION_62();
            _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
          }

          goto LABEL_46;
        }

LABEL_110:
        v158 = *(v1 + 7);
        if (*v1)
        {
          platform_connectionInfo_accessoryEndpointAttached(v1[1], v1[2], *(v1 + 6), v158);
          LODWORD(v158) = *(v1 + 7);
        }

        *(v1 + 89) = 1;
        if (v158 == 1)
        {
          platform_externalAccessory_addEAAccessoryForPrimaryEndpoint(v1[2]);
        }

        v159 = acc_endpoint_copyDescription(v1);
        v160 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v161 = *(gLogObjects + 112);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_45_0();
          LODWORD(v182) = v160;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v167, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_81())
        {
          *buf = 138412290;
          v180 = v159;
          OUTLINED_FUNCTION_30_0();
          _os_log_impl(v162, v163, v164, v165, v166, 0xCu);
        }

        if (v159)
        {
          CFRelease(v159);
        }

LABEL_46:
        v30 = v1[8];
        if (v30)
        {
          v31 = acc_accInfo_copyAccessoryInfoDictionary(v30);
          platform_analytics_endpointAccessoryInfoDidChange();
          if (v31)
          {
            CFRelease(v31);
          }
        }

        result = 1;
        break;
    }
  }

  return result;
}

const void *acc_endpoint_copyProperty(const void *result)
{
  if (result)
  {
    OUTLINED_FUNCTION_25();
    pthread_mutex_lock(v3 + 2);
    v4 = acc_properties_copyProperty(*(v1 + 80), v2);
    pthread_mutex_unlock((v1 + 128));
    return v4;
  }

  return result;
}

unint64_t acc_endpoint_getDurationMS(unint64_t result)
{
  if (result)
  {
    return systemInfo_getCurrentUnixTimeMS() - *(result + 40);
  }

  return result;
}

uint64_t acc_endpoint_getAccessoryInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t acc_endpoint_getParentConnection(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t acc_endpoint_getTransportType(uint64_t a1)
{
  result = 18;
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3 <= 0x10)
    {
      return v3;
    }

    else
    {
      return 18;
    }
  }

  return result;
}

uint64_t acc_endpoint_getProtocol(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 28);
    if (v1 <= 0x12)
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef acc_endpoint_copyIdentifier(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

void *acc_endpoint_isWireless(void *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      return (acc_connection_getType(result) == 2 || *(v1 + 6) == 4);
    }
  }

  return result;
}

uint64_t acc_endpoint_isPublished(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 89);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t acc_endpoint_getCreationTimestampMS(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void acc_endpoint_supervisedTransportsRestrictedDidChange(uint64_t *a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50(a1);
    if (v2)
    {
      if (acc_policies_isTransportSupervised(*(v1 + 24), *(v2 + 8)))
      {
        acc_endpoint_isTransportRestricted(v1);
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v3 = *(gLogObjects + 112);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
        }

        if (OUTLINED_FUNCTION_76())
        {
          v9 = *(v1 + 8);
          v10 = *(*v1 + 8);
          v11 = *(v1 + 16);
          v17 = *(v1 + 24);
          v18 = *(v1 + 28);
          OUTLINED_FUNCTION_67();
          OUTLINED_FUNCTION_24_1();
          _os_log_impl(v12, v13, v14, v15, v16, 0x3Cu);
        }

        if (!acc_endpoint_isTransportRestricted(v1))
        {
          if (*(*v1 + 8) == 1)
          {
            if (acc_policies_shouldResetLightningBusWhenTransportIsNoLongerRestricted(*(v1 + 24), *(v1 + 28)))
            {
              platform_system_resetLightningBusForEndpointWithUUID(*(v1 + 16));
            }
          }

          *(v1 + 121) = 1;
          acc_restrictedMode_accessoryAttached();
        }
      }
    }
  }
}

BOOL acc_endpoint_setParentEndpointUUID(uint64_t a1, CFStringRef theString)
{
  if (a1)
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 112) = 0;
    }

    if (theString)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, theString);
      *(a1 + 112) = Copy;
      acc_endpoint_setProperty(a1, kCFACCProperties_Endpoint_ParentEndpointUUID, Copy);
    }

    else
    {
      acc_endpoint_removeProperty(a1, kCFACCProperties_Endpoint_ParentEndpointUUID);
      v5 = *(a1 + 112);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 112) = 0;
      }
    }
  }

  return a1 != 0;
}

CFStringRef acc_endpoint_copyParentEndpointUUID(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 112)) != 0)
  {
    return CFStringCreateCopy(kCFAllocatorDefault, v1);
  }

  else
  {
    return 0;
  }
}

void __acc_endpoint_setupPassthroughPair_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_84_0(a1, __stack_chk_guard);
  v2 = *(v1 + 96);
  v3 = *(v1 + 92);
  OUTLINED_FUNCTION_38();
  v8 = 1024;
  v9 = v4;
  v10 = 1024;
  v11 = v5;
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "setupPassthroughPair for endpoint %@, validPassthroughPair=%d passthroughMode=%d", v7, 0x18u);
}

void __acc_endpoint_setupPassthroughPair_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_84_0(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_38();
  v4 = 2048;
  v5 = v1;
  OUTLINED_FUNCTION_63(&_mh_execute_header, v2, v2, "setupPassthroughPair (Accessory) for endpoint %@, endpointCount=%ld", v3);
}

void __acc_endpoint_setupPassthroughPair_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_84_0(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_38();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "endpoint %@ is not a passthrough endpoint", v2, 0xCu);
}

void __acc_endpoint_setupPassthroughPair_cold_8(uint64_t a1)
{
  OUTLINED_FUNCTION_84_0(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_38();
  v4 = 2048;
  v5 = v1;
  OUTLINED_FUNCTION_63(&_mh_execute_header, v2, v2, "setupPassthroughPair (Device) for endpoint %@, endpointCount=%ld", v3);
}

void acc_endpoint_sendOutgoingData_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  v4 = v0;
  OUTLINED_FUNCTION_34();
  v5 = v1;
  OUTLINED_FUNCTION_53(&_mh_execute_header, &_os_log_default, v2, "Make sure you have called init_logging_signposts() / init_logging()!\n module %d, gLogSignpostObjects: %p, gNumLogSignpostObjects: %d", v3);
}

void acc_endpoint_sendOutgoingData_cold_5(_BYTE *a1)
{
  v2 = logObjectForModule_4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = 0;
}

void acc_endpoint_sendOutgoingData_cold_6(_BYTE *a1)
{
  v2 = logObjectForModule_4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = 0;
}

uint64_t iap2_btConnectionStatus_btComponentInfoHandler(uint64_t a1, uint64_t a2)
{
  v179 = a2;
  v162 = a1;
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 44)
  {
    v4 = *(gLogObjects + 344);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      *v182 = v2;
      *&v182[8] = 1024;
      v183[0] = v3;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    OUTLINED_FUNCTION_12(&_mh_execute_header, v4, v6, "iAP2BTConnectionStatus BTComponentInfo Handler", buf);
  }

  v7 = 0;
  v8 = v179;
  if (!v162 || !v179)
  {
    return v7;
  }

  v9 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v9, v10);
  v180 = 0;
  v7 = 1;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
  if (!FirstParam)
  {
    goto LABEL_65;
  }

  theArray = Mutable;
  HIDWORD(v173) = 0;
  *&v13 = 67109376;
  v165 = v13;
  *&v13 = 134218240;
  v154 = v13;
  *&v13 = 67109632;
  v176 = v13;
  do
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    if (ParamID)
    {
      v15 = ParamID;
      v8 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 44)
      {
        v16 = *(gLogObjects + 344);
      }

      else
      {
        v16 = &_os_log_default;
        v55 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v55)
        {
          OUTLINED_FUNCTION_0_5(v55, v56, v57, v58, v59, v60, v61, v62, v154);
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v124, 0x12u);
        }
      }

      v63 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v63)
      {
        v71 = OUTLINED_FUNCTION_18_4(v63, v64, v65, v66, v67, v68, v69, v70, v154, *(&v154 + 1), theArray, v162, v165, *(&v165 + 1), v170, v173, v176, *(&v176 + 1), v179);
        *buf = v165;
        *v182 = v15;
        *&v182[4] = 1024;
        *&v182[6] = v71;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v17 = iAP2MsgGetFirstParam(v8, FirstParam);
    if (!v17)
    {
      v152 = logObjectForModule_6();
      if (!OUTLINED_FUNCTION_18_2(v152))
      {
        goto LABEL_74;
      }

      MsgID = iAP2MsgGetMsgID(v8);
      *buf = v165;
      *v182 = 0;
      *&v182[4] = 1024;
      *&v182[6] = MsgID;
      OUTLINED_FUNCTION_10_1();
      v151 = 14;
      goto LABEL_73;
    }

    NextParam = v17;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    ++HIDWORD(v173);
    do
    {
      v23 = iAP2MsgGetParamID(NextParam);
      if (v23 == 1)
      {
        DataAsBool = iAP2MsgGetDataAsBool(NextParam, &v180);
        if (v180)
        {
          v137 = logObjectForModule_6();
          if (OUTLINED_FUNCTION_18_2(v137))
          {
            v138 = iAP2MsgGetMsgID(v8);
            OUTLINED_FUNCTION_16_3(v138, v139, v140, v141, v142, v143, v144, v145, v154, *(&v154 + 1), theArray, v162, v165, *(&v165 + 1), v170, v173, v176);
            *v182 = 1;
            OUTLINED_FUNCTION_4_7();
            goto LABEL_72;
          }

LABEL_74:
          v7 = 0;
LABEL_62:
          Mutable = theArray;
          if (theArray)
          {
            goto LABEL_66;
          }

          return v7;
        }

        v21 = DataAsBool;
        v22 = 1;
      }

      else
      {
        v24 = v23;
        if (!v23)
        {
          DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v180);
          if (!v180)
          {
            v19 = DataAsU16;
            v20 = 1;
            goto LABEL_32;
          }

          v128 = logObjectForModule_6();
          if (OUTLINED_FUNCTION_18_2(v128))
          {
            v129 = iAP2MsgGetMsgID(v8);
            OUTLINED_FUNCTION_16_3(v129, v130, v131, v132, v133, v134, v135, v136, v154, *(&v154 + 1), theArray, v162, v165, *(&v165 + 1), v170, v173, v176);
            *v182 = 0;
            OUTLINED_FUNCTION_4_7();
LABEL_72:
            OUTLINED_FUNCTION_10_1();
            v151 = 20;
LABEL_73:
            _os_log_impl(v146, v147, v148, v149, v150, v151);
            goto LABEL_74;
          }

          goto LABEL_74;
        }

        v8 = gLogObjects;
        if (gLogObjects && gNumLogObjects >= 44)
        {
          v27 = *(gLogObjects + 344);
        }

        else
        {
          v27 = &_os_log_default;
          v28 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v28)
          {
            OUTLINED_FUNCTION_0_5(v28, v29, v30, v31, v32, v33, v34, v35, v154);
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, 0x12u);
          }
        }

        v36 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v36)
        {
          v44 = OUTLINED_FUNCTION_18_4(v36, v37, v38, v39, v40, v41, v42, v43, v154, *(&v154 + 1), theArray, v162, v165, *(&v165 + 1), v170, v173, v176, *(&v176 + 1), v179);
          OUTLINED_FUNCTION_16_3(v44, v45, v46, v47, v48, v49, v50, v51, v155, v157, theArraya, v163, v166, v168, v171, v174, v177);
          *v182 = v24;
          OUTLINED_FUNCTION_4_7();
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", buf, 0x14u);
        }

        else
        {
          v8 = v179;
        }
      }

LABEL_32:
      NextParam = iAP2MsgGetNextParam(v8, FirstParam, NextParam);
    }

    while (NextParam);
    if ((v20 & v22 & 1) == 0)
    {
      v8 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 44)
      {
        v72 = *(gLogObjects + 344);
      }

      else
      {
        v72 = &_os_log_default;
        v73 = OUTLINED_FUNCTION_13();
        if (v73)
        {
          OUTLINED_FUNCTION_0_5(v73, v74, v75, v76, v77, v78, v79, v80, v154);
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v125, 0x12u);
        }
      }

      v81 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
      if (v81)
      {
        v89 = OUTLINED_FUNCTION_18_4(v81, v82, v83, v84, v85, v86, v87, v88, v154, *(&v154 + 1), theArray, v162, v165, *(&v165 + 1), v170, v173, v176, *(&v176 + 1), v179);
        OUTLINED_FUNCTION_16_3(v89, v90, v91, v92, v93, v94, v95, v96, v156, v158, theArrayb, v164, v167, v169, v172, v175, v178);
        *v182 = v97;
        *&v182[4] = 1024;
        *&v182[6] = v20 & 1;
        LOWORD(v183[0]) = 1024;
        *(v183 + 2) = v22 & 1;
        OUTLINED_FUNCTION_10_1();
        v102 = "Ignore message (0x%04X), both componentID(valid=%d) and enabled(valid=%d) flag required";
        v103 = 20;
LABEL_55:
        _os_log_impl(v98, v99, v100, v102, v101, v103);
        HIDWORD(v173) = 0;
        goto LABEL_58;
      }

LABEL_56:
      HIDWORD(v173) = 0;
LABEL_57:
      v8 = v179;
      goto LABEL_58;
    }

    ComponentForID = _findComponentForID(v162, v19);
    if (!ComponentForID)
    {
      v8 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 44)
      {
        v104 = *(gLogObjects + 344);
      }

      else
      {
        v104 = &_os_log_default;
        v105 = OUTLINED_FUNCTION_13();
        if (v105)
        {
          OUTLINED_FUNCTION_0_5(v105, v106, v107, v108, v109, v110, v111, v112, v154);
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v126, 0x12u);
        }
      }

      v113 = os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
      if (v113)
      {
        v121 = OUTLINED_FUNCTION_18_4(v113, v114, v115, v116, v117, v118, v119, v120, v154, *(&v154 + 1), theArray, v162, v165, *(&v165 + 1), v170, v173, v176, *(&v176 + 1), v179);
        *buf = v165;
        *v182 = v121;
        *&v182[4] = 1024;
        *&v182[6] = v19;
        OUTLINED_FUNCTION_10_1();
        v102 = "Ignore message (0x%04X), Unknown componentID %d";
        v103 = 14;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    ComponentInfoDict = platform_btComponentStatus_createComponentInfoDict(*(v162 + 8), *(ComponentForID + 1), *(ComponentForID + 2), ComponentForID + 24, v21);
    CFArrayAppendValue(theArray, ComponentInfoDict);
    if (ComponentInfoDict)
    {
      CFRelease(ComponentInfoDict);
    }

LABEL_58:
    v122 = OUTLINED_FUNCTION_21_1();
    FirstParam = iAP2MsgGetNextParam(v122, v123, FirstParam);
  }

  while (FirstParam);
  if (!HIDWORD(v173) || acc_endpoint_getTransportType(*v162) == 2)
  {
    v7 = 1;
    goto LABEL_62;
  }

  platform_btComponentStatus_btComponentInfo(*(v162 + 8), theArray);
  Mutable = theArray;
  v7 = 1;
LABEL_65:
  if (Mutable)
  {
LABEL_66:
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t iap2_btConnectionStatus_startBTConnectionUpdateHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 44)
  {
    v6 = *(gLogObjects + 344);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      *&buf[4] = v4;
      *&buf[12] = 1024;
      v46 = v5;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    OUTLINED_FUNCTION_12(&_mh_execute_header, v6, v8, "iAP2BTConnectionStatus StartBTConnectionUpdate Handler", buf);
  }

  v9 = 0;
  if (!a1 || !a2)
  {
    return v9;
  }

  v10 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v10, v11);
  v44 = 0;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  if (FirstParam)
  {
    *&v14 = 67109376;
    v42 = v14;
    *&v14 = 134218240;
    v41 = v14;
    do
    {
      ParamID = iAP2MsgGetParamID(FirstParam);
      if (ParamID)
      {
        v16 = ParamID;
        v17 = gLogObjects;
        v18 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 44)
        {
          v19 = *(gLogObjects + 344);
        }

        else
        {
          v19 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v41;
            *&buf[4] = v17;
            *&buf[12] = 1024;
            v46 = v18;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v19 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          MsgID = iAP2MsgGetMsgID(a2);
          *buf = v42;
          *&buf[4] = v16;
          *&buf[8] = 1024;
          *&buf[10] = MsgID;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        valuePtr = iAP2MsgGetDataAsU16(FirstParam, &v44);
        if (v44)
        {
          v39 = logObjectForModule_6();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = iAP2MsgGetMsgID(a2);
            *buf = v42;
            *&buf[8] = 1024;
            *&buf[10] = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
          }

LABEL_47:
          v9 = 0;
          if (!Mutable)
          {
            return v9;
          }

LABEL_43:
          CFRelease(Mutable);
          return v9;
        }

        v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
        CFSetSetValue(Mutable, v20);
        if (v20)
        {
          CFRelease(v20);
        }
      }

      v22 = OUTLINED_FUNCTION_21_1();
      FirstParam = iAP2MsgGetNextParam(v22, v23, FirstParam);
    }

    while (FirstParam);
  }

  if (CFSetGetCount(Mutable) < 1)
  {
    v33 = gLogObjects;
    v34 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 44)
    {
      v35 = *(gLogObjects + 344);
    }

    else
    {
      v35 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v33;
        *&buf[12] = 1024;
        v46 = v34;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      Count = CFSetGetCount(Mutable);
      *buf = 134217984;
      *&buf[4] = Count;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "iAP2BTConnectionStatus StartBTConnectionUpdate: no components, componentIDSet.count=%ld, skip processing", buf, 0xCu);
    }
  }

  else
  {
    Feature = iap2_feature_getFeature(a1, 5u);
    if (!Feature)
    {
      goto LABEL_47;
    }

    *(Feature + 16) = 1;
    v25 = CFSetGetCount(Mutable);
    v26 = __chkstk_darwin(v25);
    v28 = (&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v26)
    {
      memset(&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v27);
      CFSetGetValues(Mutable, v28);
      if (v25 >= 1)
      {
        do
        {
          v29 = *v28;
          *buf = -21846;
          CFNumberGetValue(v29, kCFNumberSInt16Type, buf);
          ComponentForID = _findComponentForID(a1, *buf);
          if (ComponentForID)
          {
            v31 = ComponentForID;
            v32 = CFDataCreate(kCFAllocatorDefault, ComponentForID + 24, 6);
            platform_btConnectionStatus_accessoryStartConnectionUpdates(*(a1 + 8), *(v31 + 1), *(v31 + 2), v32);
            if (v32)
            {
              CFRelease(v32);
            }
          }

          ++v28;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      CFSetGetValues(Mutable, (&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0)));
    }
  }

  v9 = 1;
  if (Mutable)
  {
    goto LABEL_43;
  }

  return v9;
}

uint64_t iap2_btConnectionStatus_stopBTConnectionUpdateHandler(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 44)
  {
    v4 = *(gLogObjects + 344);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
  }

  v5 = OUTLINED_FUNCTION_9_3();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12(v7, v8, v9, v10, v11);
  }

  result = 0;
  if (a1 && a2)
  {
    result = iap2_feature_getFeature(a1, 5u);
    if (result)
    {
      *(result + 16) = 0;
      platform_btConnectionStatus_accessoryStopAllConnectionUpdates(*(a1 + 8));
      return 1;
    }
  }

  return result;
}

BOOL iap2_btConnectionStatus_connectionUpdateHandler(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    Feature = iap2_feature_getFeature(result, 5u);
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 44)
    {
      v7 = *(gLogObjects + 344);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v95 = 134218240;
        v96 = v5;
        OUTLINED_FUNCTION_3();
        LODWORD(v98) = v6;
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v56, v57, v58, v59, v60);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v3[1];
      v9 = "exists";
      if (!Feature)
      {
        v9 = "missing!!";
      }

      v95 = 138412546;
      v96 = v8;
      v97 = 2080;
      v98 = v9;
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v10, v11, OS_LOG_TYPE_INFO, v12, v13, 0x16u);
    }

    result = 0;
    if (a2)
    {
      if (Feature)
      {
        if ((*(Feature + 16) & 1) == 0)
        {
          v94 = logObjectForModule_6();
          result = OUTLINED_FUNCTION_18_2(v94);
          if (!result)
          {
            return result;
          }

          LOWORD(v95) = 0;
          OUTLINED_FUNCTION_10_1();
          v39 = 2;
          goto LABEL_48;
        }

        if (*a2)
        {
          return 0;
        }

        v14 = *(a2 + 8);
        if (v14)
        {
          v15 = iap2_feature_getFeature(v3, 5u);
          v16 = gLogObjects;
          v17 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 44)
          {
            v18 = *(gLogObjects + 344);
          }

          else
          {
            v18 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v95 = 134218240;
              v96 = v16;
              OUTLINED_FUNCTION_3();
              LODWORD(v98) = v17;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v95);
            }
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = v3[1];
            OUTLINED_FUNCTION_9_0();
            v98 = v14;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "_findComponentForUID %@, componentUID=%@", &v95, 0x16u);
          }

          if (v15 && *(v15 + 8) >= 1)
          {
            v21 = 0;
            v22 = 0;
            while (CFStringCompare(*(*v15 + v21 + 8), v14, 0))
            {
              ++v22;
              v21 += 32;
              if (v22 >= *(v15 + 8))
              {
                goto LABEL_40;
              }
            }

            v26 = *v15;
            if (v26)
            {
              v27 = gLogObjects;
              v28 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 44)
              {
                v29 = *(gLogObjects + 344);
              }

              else if (OUTLINED_FUNCTION_17())
              {
                v95 = 134218240;
                v96 = v27;
                OUTLINED_FUNCTION_3();
                LODWORD(v98) = v28;
                OUTLINED_FUNCTION_21_2(&_mh_execute_header, v83, v84, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v85, v86, v87, v88, v95);
              }

              v40 = OUTLINED_FUNCTION_9_3();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = v3[1];
                v95 = 138412290;
                v96 = v42;
                OUTLINED_FUNCTION_6_0();
                _os_log_impl(v43, v44, OS_LOG_TYPE_INFO, v45, v46, 0xCu);
              }

              v47 = iAP2MsgInit((v3 + 15), 19972, v3[24], 0xFFFF, 0, 0);
              v48 = iAP2MsgAddU16Param(v47, 0, 0, *(v26 + v21));
              v49 = OUTLINED_FUNCTION_9_3();
              v51 = iAP2MsgAddGroupParam(v49, v50);
              if (v51)
              {
                v52 = *(a2 + 16);
                if (v52)
                {
                  v53 = v51;
                  v54 = 0;
                  do
                  {
                    if (v52)
                    {
                      iAP2MsgAddVoidParam(v47, v53, v54);
                    }

                    ++v54;
                    v55 = v52 >= 2;
                    v52 >>= 1;
                  }

                  while (v55);
                }

                goto LABEL_63;
              }

              if (v48)
              {
LABEL_63:
                v61 = gLogObjects;
                v62 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 44)
                {
                  v63 = *(gLogObjects + 344);
                }

                else
                {
                  v63 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v95 = 134218240;
                    v96 = v61;
                    OUTLINED_FUNCTION_3();
                    LODWORD(v98) = v62;
                    OUTLINED_FUNCTION_14_3();
                    OUTLINED_FUNCTION_10(v89, v90, v91, v92, v93);
                  }
                }

                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  v64 = v3[1];
                  iAP2MsgGetMsgID(v47);
                  v95 = 138412546;
                  v96 = v64;
                  OUTLINED_FUNCTION_3();
                  LODWORD(v98) = v65;
                  OUTLINED_FUNCTION_14_3();
                  _os_log_impl(v66, v67, OS_LOG_TYPE_INFO, v68, v69, 0x12u);
                }

                iap2_sessionControl_sendOutgoingMessage(v3, v47);
                platform_btConnectionStatus_deleteParams(a2);
                return 1;
              }

              return 0;
            }
          }

LABEL_40:
          if (gLogObjects && gNumLogObjects >= 44)
          {
            v30 = *(gLogObjects + 344);
          }

          else
          {
            v30 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_21_2(&_mh_execute_header, v71, v72, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v73, v74, v75, v76, v95);
            }
          }

          result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v31 = v3[1];
          v32 = *(a2 + 8);
          OUTLINED_FUNCTION_9_0();
          v98 = v33;
          goto LABEL_47;
        }

        if (gLogObjects && gNumLogObjects >= 44)
        {
          v19 = *(gLogObjects + 344);
        }

        else
        {
          v19 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v77, v78, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v79, v80, v81, v82, v95);
          }
        }

        result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v23 = v3[1];
          v24 = *(a2 + 8);
          OUTLINED_FUNCTION_9_0();
          v98 = v25;
LABEL_47:
          OUTLINED_FUNCTION_6_0();
          v38 = OS_LOG_TYPE_DEFAULT;
          v39 = 22;
LABEL_48:
          _os_log_impl(v34, v35, v38, v36, v37, v39);
          return 0;
        }
      }
    }
  }

  return result;
}

void *_createFeature_3(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 44)
  {
    v2 = *(gLogObjects + 344);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_10(v9, v10, v11, v12, v13);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_12(v3, v4, v5, v6, v7);
  }

  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040545B2139uLL);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t _destroyFeature_3(void **a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 44)
  {
    v4 = *(gLogObjects + 344);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32, v39);
  }

  v5 = OUTLINED_FUNCTION_9_3();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12(v7, v8, v9, v10, v11);
  }

  result = 0;
  if (a1 && a2)
  {
    v13 = *a1;
    if (*a1)
    {
      platform_btConnectionStatus_accessoryStopAllConnectionUpdates(*(a2 + 8));
      platform_btConnectionStatus_accessoryDetached(*(a2 + 8));
      v14 = *a1;
      if (gLogObjects && gNumLogObjects >= 44)
      {
        v15 = *(gLogObjects + 344);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v33, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, v36, v37, v38, 0);
      }

      v16 = OUTLINED_FUNCTION_9_3();
      if (os_log_type_enabled(v16, v17))
      {
        v40 = *(a2 + 8);
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 0xCu);
      }

      if (v14)
      {
        if (v14[2] >= 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = *v14;
          do
          {
            v25 = *(v24 + v22 + 8);
            if (v25)
            {
              CFRelease(v25);
              v24 = *v14;
              *(*v14 + v22 + 8) = 0;
            }

            v26 = *(v24 + v22 + 16);
            if (v26)
            {
              CFRelease(v26);
              v24 = *v14;
              *(*v14 + v22 + 16) = 0;
            }

            ++v23;
            v22 += 32;
          }

          while (v23 < v14[2]);
        }

        v14[2] = 0;
      }

      if (*v13)
      {
        free(*v13);
        *v13 = 0;
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
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

BOOL _startFeatureFromDevice_1(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 44)
  {
    v2 = *(gLogObjects + 344);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_10(v11, v12, v13, v14, v15);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_12(v3, v4, v5, v6, v7);
  }

  Feature = iap2_feature_getFeature(a1, 5u);
  if (Feature && iap2_btConnectionStatus_isSupportedOnConnection(a1))
  {
    if (!a1 || (v9 = *(a1 + 8)) == 0)
    {
      v9 = 0;
    }

    platform_btConnectionStatus_accessoryAttached(v9);
    _setupComponentList(a1);
  }

  return Feature != 0;
}

void _setupComponentList_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_setupComponentList: transportComponents contains %ld entries", &v2, 0xCu);
}

void _setupComponentList_cold_3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "_setupComponentList: transportComponent is NULL", buf, 2u);
}

BOOL acc_authInfo_init(_BOOL8 result)
{
  if (result)
  {
    return acc_authInfo_cleanup(result, 1);
  }

  return result;
}

BOOL acc_authInfo_cleanup(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *(a1 + 20) = 0;
    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 24) = 0;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 32) = 0;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 48) = 0;
    }

    *(a1 + 56) = 255;
    *(a1 + 60) = 0;
  }

  return a1 != 0;
}

BOOL acc_authInfo_setCertData(uint64_t a1, const void *a2)
{
  if (a1)
  {
    acc_authInfo_cleanup(a1, 0);
    *(a1 + 56) = 255;
    if (a2)
    {
      CFRetain(a2);
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 24) = a2;
    if (a2)
    {
      *(a1 + 20) = 0;
      v5 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 18)
      {
        v6 = *(gLogObjects + 136);
      }

      else
      {
        v6 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_1_7();
          LODWORD(v75) = v5;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v47, v48, v49, v50, v51, 0x12u);
        }
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v73) = 0;
        OUTLINED_FUNCTION_3_3();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
      }

      v12 = *(a1 + 24);
      v13 = platform_auth_certificateAuthVersionNumber();
      if ((v13 - 2) > 3u)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_1001C3480[(v13 - 2)];
      }

      *(a1 + 20) = v14;
      v15 = gLogObjects;
      v16 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 18)
      {
        v17 = *(gLogObjects + 136);
      }

      else
      {
        v17 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v73 = 134218240;
          *v74 = v15;
          *&v74[8] = 1024;
          LODWORD(v75) = v16;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v73, 0x12u);
        }
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 20);
        v73 = 67109376;
        *v74 = v18;
        *&v74[4] = 1024;
        *&v74[6] = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "pAuthInfo->authVersion: %{coreacc:ACCAuthInfo_Version_t}d, authVersionNum: %d", &v73, 0xEu);
      }

      v19 = *(a1 + 32);
      if (v19)
      {
        CFRelease(v19);
        *(a1 + 32) = 0;
      }

      CertificateSerialNumber = platform_auth_createCertificateSerialNumber(*(a1 + 24));
      *(a1 + 32) = CertificateSerialNumber;
      if (*(a1 + 40))
      {
        CFRelease(*(a1 + 40));
        *(a1 + 40) = 0;
        CertificateSerialNumber = *(a1 + 32);
      }

      *(a1 + 40) = CFStringCreateFromCFData(CertificateSerialNumber, @"%02X");
      v21 = *(a1 + 24);
      CapsFromAuthCert = platform_auth_createCapsFromAuthCert();
      v23 = *(a1 + 48);
      if (v23)
      {
        CFRelease(v23);
        *(a1 + 48) = 0;
      }

      if (CapsFromAuthCert)
      {
        *(a1 + 48) = CFDataCreate(kCFAllocatorDefault, CapsFromAuthCert, 32);
      }

      platform_auth_deallocAuthCertCaps();
      v24 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 18)
      {
        v25 = *(gLogObjects + 136);
      }

      else
      {
        v25 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_1_7();
          LODWORD(v75) = v24;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v52, v53, v54, v55, v56, 0x12u);
        }
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 32);
        v26 = *(a1 + 40);
        v28 = *(a1 + 48);
        v73 = 138412802;
        *v74 = v26;
        *&v74[8] = 2112;
        v75 = v27;
        v76 = 2112;
        v77 = v28;
        OUTLINED_FUNCTION_3_3();
        _os_log_impl(v29, v30, v31, v32, v33, 0x20u);
      }

      v34 = *(a1 + 20);
      if ((v34 - 3) >= 2)
      {
        if (v34 == 2)
        {
          v35 = *(a1 + 32);
          if (v35 && CFDataGetLength(v35) >= 7)
          {
            *(a1 + 56) = CFDataGetBytePtr(*(a1 + 32))[7];
          }

          v36 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 18)
          {
            v37 = *(gLogObjects + 136);
          }

          else
          {
            v37 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_1_7();
              LODWORD(v75) = v36;
              OUTLINED_FUNCTION_14();
              _os_log_error_impl(v63, v64, v65, v66, v67, 0x12u);
            }
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *(a1 + 56);
            v73 = 67109120;
            *v74 = v40;
            OUTLINED_FUNCTION_3_3();
            _os_log_impl(v41, v42, v43, v44, v45, 8u);
          }
        }

        else
        {
          v38 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 18)
          {
            v39 = *(gLogObjects + 136);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_1_7();
            LODWORD(v75) = v38;
            OUTLINED_FUNCTION_14();
            _os_log_error_impl(v68, v69, v70, v71, v72, 0x12u);
          }

          if (OUTLINED_FUNCTION_21())
          {
            v57 = *(a1 + 20);
            v73 = 67109120;
            *v74 = v57;
            OUTLINED_FUNCTION_14();
            _os_log_error_impl(v58, v59, v60, v61, v62, 8u);
          }
        }
      }
    }
  }

  return a1 != 0;
}

uint64_t acc_authInfo_setStatus(uint64_t result, unsigned int a2, int a3)
{
  if (result)
  {
    if (a2 >= 5)
    {
      v3 = logObjectForModule_7();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
        return 0;
      }
    }

    else
    {
      *(result + 4 * a2) = a3;
      return 1;
    }
  }

  return result;
}

BOOL acc_authInfo_setCTAAllowed(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 60) = a2;
  }

  return a1 != 0;
}

uint64_t acc_authInfo_getStatus(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 >= 5)
    {
      v2 = logObjectForModule_7();
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (result)
      {
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
        return 0;
      }
    }

    else
    {
      return *(result + 4 * a2);
    }
  }

  return result;
}

BOOL acc_authInfo_isAuthenticated(_BOOL8 result, unsigned int a2)
{
  if (result)
  {
    if (a2 == 5 || a2 >= 7)
    {
      v5 = logObjectForModule_7();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v6, v7, v8, v9, v10, 8u);
        return 0;
      }
    }

    else if (a2 == 6)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if (*(result + v3) == 2)
        {
          ++v4;
        }

        v3 += 4;
      }

      while (v3 != 20);
      return v4 != 0;
    }

    else
    {
      return *(result + 4 * a2) == 2;
    }
  }

  return result;
}

uint64_t acc_authInfo_isCTAAllowed(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 60);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *acc_authInfo_isAppleAccessory(void *result)
{
  if (result)
  {
    v1 = result[3];
    CapsFromAuthCert = platform_auth_createCapsFromAuthCert();
    v3 = platform_auth_isAppleAccessory(CapsFromAuthCert);
    platform_auth_deallocAuthCertCaps();
    return v3;
  }

  return result;
}

CFDataRef acc_authInfo_copyCertData(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return CFDataCreateCopy(kCFAllocatorDefault, v1);
  }

  else
  {
    return OUTLINED_FUNCTION_2_12();
  }
}

CFDataRef acc_authInfo_copyCertSerial(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return CFDataCreateCopy(kCFAllocatorDefault, v1);
  }

  else
  {
    return OUTLINED_FUNCTION_2_12();
  }
}

CFStringRef acc_authInfo_copyCertSerialString(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 40)) != 0)
  {
    return CFStringCreateCopy(kCFAllocatorDefault, v1);
  }

  else
  {
    return OUTLINED_FUNCTION_2_12();
  }
}

CFDataRef acc_authInfo_copyCertCapabilities(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 48)) != 0)
  {
    return CFDataCreateCopy(kCFAllocatorDefault, v1);
  }

  else
  {
    return OUTLINED_FUNCTION_2_12();
  }
}

uint64_t iap2_MatchedDigitalCarKeys(uint64_t *a1, const __CFArray *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v7 = *(gLogObjects + 408);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v13 = 134218240;
        v14 = v5;
        v15 = 1024;
        LODWORD(v16) = v6;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v13);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[1];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iap2_MatchedDigitalCarKeys: %@, matchedKeys: %@", &v13, 0x16u);
    }

    iAP2MsgInit((a1 + 15), 17155, a1[24], 0xFFFF, 0, 0);
    if (CFArrayGetCount(a2) < 1)
    {
      return iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
    }

    else
    {
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 != CFStringGetTypeID())
        {
          break;
        }

        iAP2MsgAddCFStringParam((a1 + 15), 0, 0, ValueAtIndex);
        if (++v10 >= CFArrayGetCount(a2))
        {
          return iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
        }
      }

      return 0;
    }
  }

  return result;
}

_BYTE *_createFeature_4(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      *result = 1;
    }
  }

  return result;
}

uint64_t _destroyFeature_4(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t _checkIdentificationInfo_16(uint64_t a1)
{
  v13 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &kMsgDigitalCarKeyMatchingList, 2u, &v13);
  if (v2)
  {
    return v2;
  }

  if (v13 != 1)
  {
    return 0;
  }

  if (*(*a1 + 24) == 4)
  {
    iap2_features_createFeature(a1, 0x1Cu);
    iap2_identification_setIdentifiedForFeature(a1);
    v3 = gLogObjects;
    v4 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v5 = *(gLogObjects + 408);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v15 = v3;
        v16 = 1024;
        v17 = v4;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Identified for Digital Car Key Matching", buf, 2u);
    }

    return 0;
  }

  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v8 = *(gLogObjects + 408);
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "digital car key matching is only available on the AirPlay transport", buf, 2u);
  }

  v10 = 13;
  iap2_identification_rejectAllMsgIDsForList(a1, &kMsgDigitalCarKeyMatchingList, 2u, 0xDu);
  return v10;
}

void iap2_AvailableDigitalCarKeys_cold_2(uint64_t a1, _BYTE *a2)
{
  v4 = logObjectForModule_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109376;
    v5[1] = 0;
    v6 = 1024;
    MsgID = iAP2MsgGetMsgID(a1);
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", v5, 0xEu);
  }

  *a2 = 0;
}

uint64_t acc_manager_newEndpointForConnectionWithUUID(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);

  return acc_manager_newEndpointForConnection(ConnectionWithUUID, a2, a3, a4);
}

const void *acc_manager_getConnectionWithUUID(const void *Value)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v5, v6, v7, v8, v16);
    }
  }

  else
  {
    v9 = *(gLogObjects + 96);
  }

  if (OUTLINED_FUNCTION_65())
  {
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_21_3();
    _os_log_debug_impl(v11, v12, v13, v14, v15, 0x1Cu);
  }

  pthread_rwlock_rdlock(&_gAccManagerLock);
  if (Value)
  {
    if (qword_100245F10)
    {
      Value = CFDictionaryGetValue(qword_100245F10, Value);
    }

    else
    {
      Value = 0;
    }
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  return Value;
}

uint64_t acc_manager_publishConnectionWithUUID(const void *a1)
{
  ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);

  return acc_connection_publish(ConnectionWithUUID);
}

void **acc_manager_removeEndpointWithUUID(void **a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29);
    }
  }

  else
  {
    v5 = *(gLogObjects + 96);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_25_0();
    _os_log_impl(v6, v7, v8, v9, v10, v11);
  }

  _tryWRLock("acc_manager_removeEndpointWithUUID", 424);
  if (a1)
  {
    if (qword_100245F18)
    {
      Value = CFDictionaryGetValue(qword_100245F18, a1);
      v28 = Value;
      if (Value)
      {
        v13 = Value;
        if (CFDictionaryGetValueIfPresent(qword_100245F18, Value[2], 0))
        {
          CFDictionaryRemoveValue(qword_100245F18, v13[2]);
        }

        pthread_rwlock_unlock(&_gAccManagerLock);
        a1 = acc_endpoint_destroy(&v28);
        pthread_rwlock_rdlock(&_gAccManagerLock);
        v14 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 13)
        {
          v15 = *(gLogObjects + 96);
        }

        else
        {
          v15 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_2_1();
            v30 = v14;
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v18, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29);
          }
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          CFDictionaryGetCount(qword_100245F18);
          OUTLINED_FUNCTION_40_0();
          OUTLINED_FUNCTION_73_0(&_mh_execute_header, v15, v16, "There are now %ld endpoint(s).", v29);
        }

        goto LABEL_22;
      }

      v27 = logObjectForModule_1(12);
      if (OUTLINED_FUNCTION_76_0(v27))
      {
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_25_0();
        goto LABEL_27;
      }
    }

    else
    {
      v20 = logObjectForModule_1(12);
      if (OUTLINED_FUNCTION_18_2(v20))
      {
        *v29 = 0;
        OUTLINED_FUNCTION_8_5();
        v26 = 2;
LABEL_27:
        _os_log_impl(v21, v22, v23, v24, v25, v26);
      }
    }

    a1 = 0;
  }

LABEL_22:
  pthread_rwlock_unlock(&_gAccManagerLock);
  return a1;
}

CFIndex acc_manager_iterateAllConnections(unsigned int (*a1)(const void *, uint64_t), uint64_t a2, int a3)
{
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 13;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v67 = v7;
      OUTLINED_FUNCTION_49_1();
      v69 = v8;
      OUTLINED_FUNCTION_39(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  else
  {
    v12 = *(gLogObjects + 96);
  }

  if (OUTLINED_FUNCTION_79())
  {
    OUTLINED_FUNCTION_69_0();
    *buf = v13;
    v67 = "acc_manager_iterateAllConnections";
    v68 = 1024;
    OUTLINED_FUNCTION_52_0(v14);
    OUTLINED_FUNCTION_97(&_mh_execute_header, v15, v16, "%s:%d iteratorCB %d, context %d, forWrite %d ");
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else if (a3)
  {
LABEL_10:
    _tryWRLock("acc_manager_iterateAllConnections", 540);
    goto LABEL_13;
  }

  pthread_rwlock_rdlock(&_gAccManagerLock);
LABEL_13:
  if (!a1)
  {
LABEL_42:
    v25 = 0;
    goto LABEL_32;
  }

  if (!qword_100245F10)
  {
    v56 = logObjectForModule_1(12);
    if (OUTLINED_FUNCTION_18_2(v56))
    {
      *buf = 0;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v57, v58, v59, v60, v61, v62);
    }

    goto LABEL_42;
  }

  Count = CFDictionaryGetCount(qword_100245F10);
  v25 = Count;
  if (Count)
  {
    OUTLINED_FUNCTION_90_0(Count, v18, v19, v20, v21, v22, v23, v24, v63);
    v27 = __chkstk_darwin(v26);
    OUTLINED_FUNCTION_56_0(v27, v28, v29, v30, v31, v32, v33, v34, v64);
    CFDictionaryGetKeysAndValues(qword_100245F10, 0, v7);
    OUTLINED_FUNCTION_89_0();
    if (v35 == v36)
    {
      OUTLINED_FUNCTION_88_0();
      do
      {
        v37 = gLogObjects;
        v38 = gNumLogObjects;
        if (gLogObjects)
        {
          v39 = gNumLogObjects < 13;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          v40 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = 134218240;
            v67 = v37;
            OUTLINED_FUNCTION_49_1();
            v69 = v38;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v40 = &_os_log_default;
          }
        }

        else
        {
          v40 = *(gLogObjects + 96);
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v43 = *v7[v3];
          *buf = 136316418;
          v67 = "acc_manager_iterateAllConnections";
          v68 = 1024;
          OUTLINED_FUNCTION_34_0(v43);
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%s:%d [%ld / %ld], call iteratorCB, %@, context %d ", v44, 0x36u);
        }

        if (a1(v7[v3++], a2))
        {
          v42 = v3 < v25;
        }

        else
        {
          v42 = 0;
        }
      }

      while (v42);
    }

    v25 = v65;
  }

LABEL_32:
  pthread_rwlock_unlock(&_gAccManagerLock);
  v45 = gLogObjects;
  v46 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 13)
  {
    v47 = *(gLogObjects + 96);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    v67 = v45;
    OUTLINED_FUNCTION_49_1();
    v69 = v46;
    OUTLINED_FUNCTION_32(&_mh_execute_header, v54, v55, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  v48 = OUTLINED_FUNCTION_80_0();
  if (os_log_type_enabled(v48, v49))
  {
    *buf = 136315650;
    v67 = "acc_manager_iterateAllConnections";
    OUTLINED_FUNCTION_49_1();
    v69 = 570;
    v70 = v51;
    v71 = v25;
    OUTLINED_FUNCTION_98(&_mh_execute_header, v52, v53, "%s:%d iteratorCalled %d ");
  }

  return v25;
}

CFIndex acc_manager_iterateAllEndpoints(unsigned int (*a1)(const void *, uint64_t), uint64_t a2, int a3)
{
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 13;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v66 = v7;
      OUTLINED_FUNCTION_49_1();
      v68 = v8;
      OUTLINED_FUNCTION_39(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  else
  {
    v12 = *(gLogObjects + 96);
  }

  if (OUTLINED_FUNCTION_79())
  {
    OUTLINED_FUNCTION_69_0();
    *buf = v13;
    v66 = "acc_manager_iterateAllEndpoints";
    v67 = 1024;
    OUTLINED_FUNCTION_52_0(v14);
    OUTLINED_FUNCTION_97(&_mh_execute_header, v15, v16, "%s:%d iteratorCB %d, context %d, forWrite %d ");
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else if (a3)
  {
LABEL_10:
    _tryWRLock("acc_manager_iterateAllEndpoints", 585);
    goto LABEL_13;
  }

  pthread_rwlock_rdlock(&_gAccManagerLock);
LABEL_13:
  if (!a1)
  {
LABEL_42:
    v25 = 0;
    goto LABEL_32;
  }

  if (!qword_100245F18)
  {
    v55 = logObjectForModule_1(12);
    if (OUTLINED_FUNCTION_18_2(v55))
    {
      *buf = 0;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v56, v57, v58, v59, v60, v61);
    }

    goto LABEL_42;
  }

  Count = CFDictionaryGetCount(qword_100245F18);
  v25 = Count;
  if (Count)
  {
    OUTLINED_FUNCTION_90_0(Count, v18, v19, v20, v21, v22, v23, v24, v62);
    v26 = __chkstk_darwin();
    OUTLINED_FUNCTION_56_0(v26, v27, v28, v29, v30, v31, v32, v33, v63);
    CFDictionaryGetKeysAndValues(qword_100245F18, 0, v7);
    OUTLINED_FUNCTION_89_0();
    if (v34 == v35)
    {
      OUTLINED_FUNCTION_88_0();
      do
      {
        v36 = gLogObjects;
        v37 = gNumLogObjects;
        if (gLogObjects)
        {
          v38 = gNumLogObjects < 13;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          v39 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = 134218240;
            v66 = v36;
            OUTLINED_FUNCTION_49_1();
            v68 = v37;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v39 = &_os_log_default;
          }
        }

        else
        {
          v39 = *(gLogObjects + 96);
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(v7[v3] + 2);
          *buf = 136316418;
          v66 = "acc_manager_iterateAllEndpoints";
          v67 = 1024;
          OUTLINED_FUNCTION_34_0(v42);
          _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s:%d [%ld / %ld], call iteratorCB, %@, context %d ", v43, 0x36u);
        }

        if (a1(v7[v3++], a2))
        {
          v41 = v3 < v25;
        }

        else
        {
          v41 = 0;
        }
      }

      while (v41);
    }

    v25 = v64;
  }

LABEL_32:
  pthread_rwlock_unlock(&_gAccManagerLock);
  v44 = gLogObjects;
  v45 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 13)
  {
    v46 = *(gLogObjects + 96);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    v66 = v44;
    OUTLINED_FUNCTION_49_1();
    v68 = v45;
    OUTLINED_FUNCTION_32(&_mh_execute_header, v53, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  v47 = OUTLINED_FUNCTION_80_0();
  if (os_log_type_enabled(v47, v48))
  {
    *buf = 136315650;
    v66 = "acc_manager_iterateAllEndpoints";
    OUTLINED_FUNCTION_49_1();
    v68 = 615;
    v69 = v50;
    v70 = v25;
    OUTLINED_FUNCTION_98(&_mh_execute_header, v51, v52, "%s:%d iteratorCalled %d ");
  }

  return v25;
}

CFSetRef acc_manager_copyEndpointUUIDsForConnection(const void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v5, v6, v7, v8, v28);
    }
  }

  else
  {
    v9 = *(gLogObjects + 96);
  }

  if (OUTLINED_FUNCTION_65())
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_21_3();
    _os_log_debug_impl(v10, v11, v12, v13, v14, 0x1Cu);
  }

  pthread_rwlock_rdlock(&_gAccManagerLock);
  ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);
  if (ConnectionWithUUID)
  {
    v16 = acc_connection_copyEndpointUUIDs(ConnectionWithUUID);
  }

  else
  {
    v16 = 0;
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  if (gLogObjects && gNumLogObjects >= 13)
  {
    v17 = *(gLogObjects + 96);
  }

  else
  {
    v17 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_10(v23, v24, v25, v26, v27);
    }
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_6_0();
    _os_log_debug_impl(v19, v20, OS_LOG_TYPE_DEBUG, v21, v22, 0x26u);
  }

  return v16;
}

const void *acc_manager_getEndpointWithUUID(const void *Value)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v5, v6, v7, v8, v16);
    }
  }

  else
  {
    v9 = *(gLogObjects + 96);
  }

  if (OUTLINED_FUNCTION_65())
  {
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_21_3();
    _os_log_debug_impl(v11, v12, v13, v14, v15, 0x1Cu);
  }

  pthread_rwlock_rdlock(&_gAccManagerLock);
  if (Value)
  {
    if (qword_100245F18)
    {
      Value = CFDictionaryGetValue(qword_100245F18, Value);
    }

    else
    {
      Value = 0;
    }
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  return Value;
}

CFTypeRef acc_manager_copyDeviceUUID()
{
  pthread_rwlock_rdlock(&_gAccManagerLock);
  if (qword_100245F08 != -1)
  {
    dispatch_once(&qword_100245F08, &__block_literal_global_23);
  }

  if (qword_100245F20)
  {
    v0 = CFRetain(qword_100245F20);
  }

  else
  {
    v0 = 0;
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  return v0;
}

void *acc_manager_copyConnectionUUIDForEndpointUUID(const void *a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  pthread_rwlock_rdlock(&_gAccManagerLock);
  if (EndpointWithUUID)
  {
    if (*EndpointWithUUID && (v2 = EndpointWithUUID[1]) != 0)
    {
      EndpointWithUUID = CFRetain(v2);
    }

    else
    {
      EndpointWithUUID = 0;
    }
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  return EndpointWithUUID;
}

uint64_t _acc_manager_checkForWirelessCTA_checkMatch(const __CFDictionary *a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, kCFWirelessCTAConnectionUUID);
    v5 = CFDictionaryGetValue(a1, kCFWirelessCTAOOBPairingData);
    cf1 = CFDictionaryGetValue(a1, kCFWirelessCTAIdentifier);
    OUTLINED_FUNCTION_37();
    acc_connection_endpointIterateForConnection(a2);
    v35 = Value;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v7 = *(gLogObjects + 104);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_45_1();
        *v39 = v6;
        OUTLINED_FUNCTION_86();
        OUTLINED_FUNCTION_10(v24, v25, v26, v27, v28);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v37 = "_acc_manager_checkForWirelessCTA_checkMatch";
      v38 = 1024;
      *v39 = 0;
      *&v39[4] = 1024;
      *&v39[6] = 0;
      OUTLINED_FUNCTION_86();
      _os_log_impl(v8, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 0x18u);
    }

    v12 = gNumLogObjects;
    if (gLogObjects)
    {
      v13 = gNumLogObjects <= 13;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v15 = *(gLogObjects + 104);
    }

    else
    {
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_45_1();
        *v39 = v12;
        OUTLINED_FUNCTION_86();
        OUTLINED_FUNCTION_10(v29, v30, v31, v32, v33);
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a2;
      v17 = OUTLINED_FUNCTION_80_0();
      *buf = 138413826;
      v37 = v35;
      v38 = 2112;
      *v39 = v16;
      *&v39[8] = 2112;
      v40 = v5;
      v41 = 2112;
      v42 = cf1;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = 0;
      v47 = 1024;
      AuthStatus = acc_connection_getAuthStatus(v17, v18);
      OUTLINED_FUNCTION_86();
      _os_log_impl(v19, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 0x44u);
    }
  }

  return 0;
}

void _CFDictionaryApplierFunction_findOOBPairingEndpoint(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    Protocol = acc_endpoint_getProtocol(a2);
    v6 = gNumLogObjects;
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 14;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7();
        v18 = v6;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17);
      }
    }

    else
    {
      v10 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_79())
    {
      v11 = *(a2 + 16);
      v17[0] = 138412546;
      OUTLINED_FUNCTION_17_8();
      v18 = Protocol;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_100(v12, v13, v14, v15, v16);
    }

    if (Protocol == 8 && !*a3)
    {
      *a3 = *(a2 + 16);
    }
  }
}

const void *_acc_manager_getEndpointWithUUID_unsafe(const void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v5, v6, v7, v8, v16);
    }
  }

  else
  {
    v9 = *(gLogObjects + 96);
  }

  if (OUTLINED_FUNCTION_65())
  {
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_21_3();
    _os_log_debug_impl(v11, v12, v13, v14, v15, 0x1Cu);
  }

  result = qword_100245F18;
  if (qword_100245F18)
  {
    return CFDictionaryGetValue(qword_100245F18, a1);
  }

  return result;
}

void acc_manager_checkForWirelessCTA()
{
  if ((acc_userDefaults_BOOLForKey(@"DisableWirelessCTA") & 1) == 0)
  {
    v0 = gLogObjects;
    v1 = gNumLogObjects;
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
      if (OUTLINED_FUNCTION_13())
      {
        v12 = 134218240;
        v13 = v0;
        OUTLINED_FUNCTION_3();
        v14 = v1;
        OUTLINED_FUNCTION_32(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v12);
      }
    }

    else
    {
      v5 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_24())
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }

    if (qword_100245F00 != -1)
    {
      dispatch_once(&qword_100245F00, &__block_literal_global_19);
    }

    dispatch_async(_MergedGlobals_0[0], &__block_literal_global_4);
  }
}

void __acc_manager_checkForWirelessCTA_block_invoke(id a1)
{
  pthread_rwlock_rdlock(&_gAccManagerLock);
  theArray = 0;
  v52 = 0;
  acc_manager_iterateAllConnections(__findWirelessCTADonorCapableConnection, &theArray, 0);
  acc_manager_iterateAllConnections(__findWirelessCTAReceiverCapableConnection, &v52, 0);
  OUTLINED_FUNCTION_68_0();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 < 14;
  }

  if (v6)
  {
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      v54 = v3;
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_28_0(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v9, v10, v11, v12, theArray, v52, buf[0]);
    }
  }

  else
  {
    v13 = *(v3 + 104);
  }

  if (OUTLINED_FUNCTION_24())
  {
    if (theArray)
    {
      CFArrayGetCount(theArray);
    }

    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_85_0();
    v55 = v14;
    OUTLINED_FUNCTION_8_5();
    _os_log_impl(v15, v16, v17, v18, v19, 0x12u);
  }

  v20 = *(v1 + 3928);
  if (v20 && *(v2 + 3936) >= 14)
  {
    v21 = *(v20 + 104);
  }

  else
  {
    v21 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      v54 = v20;
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_28_0(&_mh_execute_header, v39, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41, v42, v43, v44, theArray, v52, buf[0]);
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_73_0(&_mh_execute_header, v21, v22, "Check for WirelessCTA: donorConnectionsFound %@", buf);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v24 = v52;
    if (Count && v52)
    {
      v25 = 0;
      do
      {
        if (v25 >= CFArrayGetCount(theArray))
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v25++);
      }

      while ((_acc_manager_checkForWirelessCTA_checkMatch(ValueAtIndex, v52) & 1) == 0);
      goto LABEL_35;
    }
  }

  else
  {
    v24 = v52;
  }

  if (v24)
  {
    v27 = *(v1 + 3928);
    v28 = *(v2 + 3936);
    if (v27 && v28 >= 14)
    {
      v29 = *(v27 + 104);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_5_8();
      v55 = v28;
      OUTLINED_FUNCTION_28_0(&_mh_execute_header, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, v48, v49, v50, theArray, v52, buf[0]);
    }

    if (OUTLINED_FUNCTION_24())
    {
      v30 = *v52;
      AuthStatus = acc_connection_getAuthStatus(v52, 2u);
      acc_connection_getAuthStatus(v52, 6u);
      OUTLINED_FUNCTION_5_8();
      v55 = AuthStatus;
      v56 = v32;
      v57 = v33;
      OUTLINED_FUNCTION_8_5();
      _os_log_impl(v34, v35, v36, v37, v38, 0x18u);
    }
  }

LABEL_35:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
}

uint64_t __findWirelessCTADonorCapableConnection(uint64_t a1, __CFArray **a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  v4 = *a2;
  Type = acc_connection_getType(a1);
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 14;
  }

  else
  {
    v6 = 1;
  }

  v7 = &off_1001C3000;
  if (v6)
  {
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_10_8(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, v74, v75, buf[0]);
    }
  }

  else
  {
    v14 = *(gLogObjects + 104);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    ParentConnection = acc_endpoint_getParentConnection(a1);
    OUTLINED_FUNCTION_75_1();
    v46 = *(a1 + 16);
    *buf = 138413058;
    v78 = ParentConnection;
    OUTLINED_FUNCTION_85_0();
    v79 = Type;
    v80 = v47;
    *v81 = v48;
    *&v81[4] = 2112;
    *&v81[6] = v49;
    OUTLINED_FUNCTION_48_1();
    _os_log_debug_impl(v50, v51, OS_LOG_TYPE_DEBUG, v52, v53, 0x22u);
  }

  if (Type == 2 && OUTLINED_FUNCTION_75_1())
  {
    v15 = acc_connection_copyProperty(a1, kCFACCProperties_Endpoint_OOBPairingData);
    v16 = *(a1 + 16);
    v76 = v4;
    if (v16 && CFStringGetLength(v16) == 17)
    {
      v17 = v15;
      memset(buffer, 170, 18);
      CFStringGetCString(v16, buffer, 18, 0x600u);
      v22 = buffer[2] == 58 && buffer[5] == 58 && buffer[8] == 58 && buffer[11] == 58 && buffer[14] == 58;
    }

    else
    {
      v17 = v15;
      v22 = 0;
    }

    v23 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v24 = *(gLogObjects + 104);
    }

    else if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_13_4();
      v79 = v23;
      OUTLINED_FUNCTION_39_0(&_mh_execute_header, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, v65, v66, v67, v74, v76, buf[0]);
    }

    if (OUTLINED_FUNCTION_99())
    {
      *buf = 136315906;
      v78 = "_IsBdAddrFormatString";
      OUTLINED_FUNCTION_2_1();
      v79 = 2047;
      v80 = 2112;
      *v81 = v16;
      *&v81[8] = v57;
      *&v81[10] = v22;
      OUTLINED_FUNCTION_48_2();
      _os_log_debug_impl(v58, v59, OS_LOG_TYPE_DEBUG, v60, v61, 0x22u);
    }

    if (v17 == 0 && !v22)
    {
      v7 = &off_1001C3000;
      goto LABEL_57;
    }

    v25 = v17;
    v26 = gNumLogObjects;
    v27 = v76;
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v28 = *(gLogObjects + 104);
    }

    else if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2_14();
      v79 = v26;
      OUTLINED_FUNCTION_10_8(&_mh_execute_header, v68, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v70, v71, v72, v73, v74, v76, buf[0]);
    }

    if (OUTLINED_FUNCTION_67_0())
    {
      v29 = acc_endpoint_getParentConnection(a1);
      OUTLINED_FUNCTION_75_1();
      v30 = *(a1 + 16);
      *buf = 138413570;
      v78 = v29;
      OUTLINED_FUNCTION_85_0();
      v79 = 2;
      v80 = v31;
      *v81 = v32;
      *&v81[4] = v31;
      *&v81[6] = v22;
      *&v81[10] = 2112;
      *&v81[12] = v25;
      v82 = 2112;
      v83 = v33;
      OUTLINED_FUNCTION_18_5();
      _os_log_impl(v34, v35, v36, v37, v38, 0x32u);
    }

    if (v27 || (v27 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (*a2 = v27) != 0))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v7 = &off_1001C3000;
      if (Mutable)
      {
        v40 = Mutable;
        CFDictionaryAddValue(Mutable, kCFWirelessCTAConnectionUUID, *a1);
        v41 = *(a1 + 16);
        if (v41)
        {
          CFDictionaryAddValue(v40, kCFWirelessCTAIdentifier, v41);
        }

        if (v25)
        {
          CFDictionaryAddValue(v40, kCFWirelessCTAOOBPairingData, v25);
        }

        CFArrayAppendValue(v27, v40);
        CFRelease(v40);
      }

      if (!v25)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    v7 = &off_1001C3000;
    if (v25)
    {
LABEL_56:
      CFRelease(v25);
    }
  }

LABEL_57:
  v42 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 14)
  {
    v43 = *(gLogObjects + 104);
  }

  else
  {
    v43 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v54 = *(v7 + 71);
      OUTLINED_FUNCTION_5_8();
      v79 = v42;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_65())
  {
    OUTLINED_FUNCTION_58_0();
    _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "findWirelessCTADonorCapableConnection: donorConnectionsFound %@", buf, 0xCu);
  }

  return 1;
}

uint64_t __findWirelessCTAReceiverCapableConnection(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    Type = acc_connection_getType(a1);
    OUTLINED_FUNCTION_70_1();
    if (v15 || v3 < 14)
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_14_5();
        v20 = v3;
        OUTLINED_FUNCTION_32_0(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, v17, v18, v19[0]);
      }
    }

    else
    {
      v14 = *(v2 + 104);
    }

    if (OUTLINED_FUNCTION_79())
    {
      acc_endpoint_getParentConnection(a1);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_2_1();
      v20 = Type;
      OUTLINED_FUNCTION_100(&_mh_execute_header, v14, v16, "findWirelessCTAReceiverCapableConnection: %@ type %{coreacc:ACCConnection_Type_t}d", v19);
    }

    v15 = Type == 8 || Type == 6;
    if (v15)
    {
      OUTLINED_FUNCTION_37();
      acc_connection_endpointIterateForConnection(a1);
    }

    return 1;
  }

  return result;
}

uint64_t _acc_manager_checkForInductiveCTA_checkMatch(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v109 = 0;
  v4 = acc_userDefaults_BOOLForKey(@"Disable1WayNFCForInductive") ^ 1;
  acc_connection_endpointIterateForConnection(a2);
  v5 = kCFACCProperties_Connection_Inductive_RxID;
  v6 = acc_connection_copyProperty(a1, kCFACCProperties_Connection_Inductive_RxID);
  v7 = acc_connection_copyProperty(a2, v5);
  v8 = v7;
  v9 = v4;
  if (v6)
  {
    v9 = v4;
    if (v7)
    {
      v9 = CFEqual(v6, v7) != 0;
    }
  }

  HIDWORD(v108) = v4;
  if (v6 && !v9 && acc_userDefaults_BOOLForKey(@"InductiveAuthPretendMatchRxID"))
  {
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v10 = *(gLogObjects + 104);
    }

    else if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_10_8(&_mh_execute_header, v91, v92, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v93, v94, v95, v96, v108, 0, buf);
    }

    if (OUTLINED_FUNCTION_67_0())
    {
      buf = 2;
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_18_5();
      _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
    }

    v9 = 1;
  }

  if ((acc_userDefaults_BOOLForKey(@"PretendNFCAuthFailed") & 1) != 0 || acc_userDefaults_BOOLForKey(@"PretendNFCAuthTimeout"))
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v16 = *(gLogObjects + 440);
    }

    else
    {
      v16 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_39_0(&_mh_execute_header, v58, v59, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60, v61, v62, v63, v108, v109, buf);
      }
    }

    v17 = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      acc_userDefaults_BOOLForKey(@"PretendNFCAuthFailed");
      acc_userDefaults_BOOLForKey(@"PretendNFCAuthTimeout");
      buf = 2;
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_48_2();
      _os_log_impl(v18, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 0x24u);
      v17 = 0;
    }
  }

  else
  {
    v17 = v9;
  }

  if (gLogObjects && gNumLogObjects >= 14)
  {
    v22 = *(gLogObjects + 104);
  }

  else if (OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_10_8(&_mh_execute_header, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57, v108, v109, buf);
  }

  if (OUTLINED_FUNCTION_67_0())
  {
    OUTLINED_FUNCTION_93_0();
    buf = 2;
    OUTLINED_FUNCTION_18_5();
    _os_log_impl(v23, v24, v25, v26, v27, 0x4Au);
  }

  if (gLogObjects)
  {
    v28 = gNumLogObjects <= 13;
  }

  else
  {
    v28 = 1;
  }

  v29 = !v28;
  if (!v17)
  {
    if (v29)
    {
      v31 = *(gLogObjects + 104);
    }

    else if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_10_8(&_mh_execute_header, v70, v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v72, v73, v74, v75, v108, v109, 0);
    }

    if (!OUTLINED_FUNCTION_67_0())
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_18_5();
    v43 = 42;
    goto LABEL_64;
  }

  if (v29)
  {
    v30 = *(gLogObjects + 104);
  }

  else if (OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_10_8(&_mh_execute_header, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v66, v67, v68, v69, v108, v109, 0);
  }

  if (OUTLINED_FUNCTION_67_0())
  {
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_18_5();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
  }

  if (acc_connection_getAuthStatus(a2, 4u) != 2)
  {
    v44 = acc_authInfo_copyCertData(a1 + 48);
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v45 = *(gLogObjects + 104);
    }

    else
    {
      v45 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_39_0(&_mh_execute_header, v85, v86, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v87, v88, v89, v90, v108, v109, buf);
      }
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_93_0();
      buf = 2;
      OUTLINED_FUNCTION_48_2();
      _os_log_impl(v47, v48, OS_LOG_TYPE_DEFAULT, v49, v50, 0x2Au);
    }

    acc_authInfo_setCertData((a2 + 6), v44);
    acc_connection_setAuthStatus(a2, 4, 2);
    if (v109)
    {
      EndpointWithUUID_unsafe = _acc_manager_getEndpointWithUUID_unsafe(v109);
      if (EndpointWithUUID_unsafe)
      {
        v77 = EndpointWithUUID_unsafe;
        if (EndpointWithUUID_unsafe[7])
        {
          if (gLogObjects && gNumLogObjects >= 14)
          {
            v78 = *(gLogObjects + 104);
          }

          else if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_4_8();
            OUTLINED_FUNCTION_32_0(&_mh_execute_header, v102, v103, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v104, v105, v106, v107, v108, v109, buf);
          }

          if (OUTLINED_FUNCTION_26())
          {
            OUTLINED_FUNCTION_22_3();
            _os_log_impl(v97, v98, v99, v100, v101, 8u);
          }

          accAuthProtocol_endpoint_notifyAuthStatus(v77[7], 2);
        }
      }
    }

    goto LABEL_70;
  }

  if (gLogObjects && gNumLogObjects >= 14)
  {
    v37 = *(gLogObjects + 104);
  }

  else if (OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_0(&_mh_execute_header, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v81, v82, v83, v84, v108, v109, buf);
  }

  if (OUTLINED_FUNCTION_26())
  {
    v46 = *a2;
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_22_3();
    v43 = 18;
LABEL_64:
    _os_log_impl(v38, v39, v40, v41, v42, v43);
  }

LABEL_70:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

void _CFDictionaryApplierFunction_findInductiveAuthEndpoint(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    Protocol = acc_endpoint_getProtocol(a2);
    v6 = gNumLogObjects;
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 14;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7();
        v18 = v6;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17);
      }
    }

    else
    {
      v10 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_79())
    {
      v11 = *(a2 + 16);
      v17[0] = 138412546;
      OUTLINED_FUNCTION_17_8();
      v18 = Protocol;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_100(v12, v13, v14, v15, v16);
    }

    if (Protocol == 10 && !*a3)
    {
      *a3 = *(a2 + 16);
    }
  }
}

void acc_manager_checkForInductiveCTA()
{
  if ((acc_userDefaults_BOOLForKey(@"DisableWirelessCTA") & 1) == 0)
  {
    v0 = gLogObjects;
    v1 = gNumLogObjects;
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
      if (OUTLINED_FUNCTION_13())
      {
        v12 = 134218240;
        v13 = v0;
        OUTLINED_FUNCTION_3();
        v14 = v1;
        OUTLINED_FUNCTION_32(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v12);
      }
    }

    else
    {
      v5 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_24())
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }

    if (qword_100245F00 != -1)
    {
      dispatch_once(&qword_100245F00, &__block_literal_global_19);
    }

    dispatch_async(_MergedGlobals_0[0], &__block_literal_global_16);
  }
}

void __acc_manager_checkForInductiveCTA_block_invoke(id a1)
{
  pthread_rwlock_rdlock(&_gAccManagerLock);
  v37 = 0;
  v38 = 0;
  acc_manager_iterateAllConnections(&__findInductiveCTADonorCapableConnection, &v38, 0);
  acc_manager_iterateAllConnections(__findInductiveCTAReceiverCapableConnection, &v37, 0);
  OUTLINED_FUNCTION_68_0();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 < 14;
  }

  if (v6)
  {
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      *v40 = v3;
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_28_0(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v9, v10, v11, v12, v37, v38, buf[0]);
    }
  }

  else
  {
    v13 = *(v3 + 104);
  }

  if (OUTLINED_FUNCTION_24())
  {
    *buf = 67109376;
    *v40 = v38 != 0;
    *&v40[4] = 1024;
    *&v40[6] = v37 != 0;
    OUTLINED_FUNCTION_8_5();
    _os_log_impl(v14, v15, v16, v17, v18, 0xEu);
  }

  if (v38 && v37)
  {
    _acc_manager_checkForInductiveCTA_checkMatch(v38, v37);
  }

  else if (v37)
  {
    v19 = *(v1 + 3928);
    v20 = *(v2 + 3936);
    if (v19 && v20 >= 14)
    {
      v21 = *(v19 + 104);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_5_8();
      v41 = v20;
      OUTLINED_FUNCTION_28_0(&_mh_execute_header, v31, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v33, v34, v35, v36, v37, v38, buf[0]);
    }

    if (OUTLINED_FUNCTION_24())
    {
      v22 = *v37;
      AuthStatus = acc_connection_getAuthStatus(v37, 4u);
      acc_connection_getAuthStatus(v37, 6u);
      OUTLINED_FUNCTION_5_8();
      v41 = AuthStatus;
      v42 = v24;
      v43 = v25;
      OUTLINED_FUNCTION_8_5();
      _os_log_impl(v26, v27, v28, v29, v30, 0x18u);
    }
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
}

BOOL _findAdapterForConnection(uint64_t a1, uint64_t a2)
{
  if (!a1 || (*(a1 + 142) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_44_0();
    goto LABEL_16;
  }

  v6 = *(a1 + 8);
  OUTLINED_FUNCTION_44_0();
  if (v8 != 6)
  {
    goto LABEL_16;
  }

  v2 = 0;
  if (!*v7 || (v9 = *(v7 + 8)) == 0)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_16;
  }

  ConnectionWithUUID = acc_manager_getConnectionWithUUID(*v7);
  v2 = ConnectionWithUUID;
  if (!ConnectionWithUUID)
  {
LABEL_34:
    v3 = 0;
LABEL_14:
    v4 = 0;
    goto LABEL_16;
  }

  if ((*(ConnectionWithUUID + 142) & 1) != 0 || *(ConnectionWithUUID + 2) != 6 || CFStringCompare(*ConnectionWithUUID, *a1, 0) == kCFCompareEqualTo)
  {
LABEL_33:
    v2 = 0;
    goto LABEL_34;
  }

  v11 = kCFACCProperties_Connection_ManagerParent;
  v3 = acc_connection_copyProperty(v2, kCFACCProperties_Connection_ManagerParent);
  v12 = acc_connection_copyProperty(a1, v11);
  v2 = v12;
  v4 = 0;
  if (!v3 || !v12)
  {
    goto LABEL_16;
  }

  v13 = OUTLINED_FUNCTION_92();
  if (CFStringCompare(v13, v14, 0))
  {
    goto LABEL_14;
  }

  v4 = *a1;
  CFStringReplaceAll(v9, *a1);
LABEL_16:
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 14;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_10(v16, v17, v18, v19, v20);
    }
  }

  else
  {
    v21 = *(gLogObjects + 104);
  }

  if (!OUTLINED_FUNCTION_99())
  {
    if (!v3)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (a1)
  {
    v23 = *a1;
  }

  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_40();
  _os_log_debug_impl(v24, v25, OS_LOG_TYPE_DEBUG, v26, v27, 0x44u);
  if (v3)
  {
LABEL_25:
    CFRelease(v3);
  }

LABEL_26:
  if (v2)
  {
    CFRelease(v2);
  }

  return v4 == 0;
}

uint64_t _findConnectionsThroughAdapter(uint64_t a1, uint64_t a2)
{
  if (!a1 || (*(a1 + 142) & 1) != 0)
  {
    goto LABEL_32;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_44_0();
    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  OUTLINED_FUNCTION_44_0();
  if (v7 != 6)
  {
    goto LABEL_15;
  }

  v2 = 0;
  if (!*v6 || (v8 = *(v6 + 8)) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  ConnectionWithUUID = acc_manager_getConnectionWithUUID(*v6);
  v2 = ConnectionWithUUID;
  if (!ConnectionWithUUID)
  {
LABEL_33:
    v3 = 0;
    goto LABEL_15;
  }

  if ((*(ConnectionWithUUID + 142) & 1) != 0 || *(ConnectionWithUUID + 2) != 6 || CFStringCompare(*ConnectionWithUUID, *a1, 0) == kCFCompareEqualTo)
  {
LABEL_32:
    v2 = 0;
    goto LABEL_33;
  }

  v10 = kCFACCProperties_Connection_ManagerParent;
  v2 = acc_connection_copyProperty(v2, kCFACCProperties_Connection_ManagerParent);
  v3 = acc_connection_copyProperty(a1, v10);
  if (v3)
  {
    if (v2)
    {
      v11 = OUTLINED_FUNCTION_92();
      if (CFStringCompare(v11, v12, 0) == kCFCompareEqualTo)
      {
        CFArrayAppendValue(v8, *a1);
      }
    }
  }

LABEL_15:
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 14;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_10(v14, v15, v16, v17, v18);
    }
  }

  else
  {
    v19 = *(gLogObjects + 104);
  }

  if (!OUTLINED_FUNCTION_99())
  {
    if (!v3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a1)
  {
    v21 = *a1;
  }

  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_40();
  _os_log_debug_impl(v22, v23, OS_LOG_TYPE_DEBUG, v24, v25, 0x44u);
  if (v3)
  {
LABEL_24:
    CFRelease(v3);
  }

LABEL_25:
  if (v2)
  {
    CFRelease(v2);
  }

  return 1;
}

void acc_manager_enableLockoutForTransportType_cold_2(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid transport type: %{coreacc:ACCEndpoint_TransportType_t}d or timeout value: %u!", v3, 0xEu);
}

void acc_manager_isLockoutActiveForTransportType_cold_2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid transport type: %{coreacc:ACCEndpoint_TransportType_t}d!", v2, 8u);
}

void acc_manager_findAdapterForConnection_cold_1(const void *a1, void *a2, CFStringRef *a3)
{
  CFRetain(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  *a2 = a1;
  a2[1] = Mutable;
  acc_manager_iterateAllConnections(_findAdapterForConnection, a2, 0);
  if (!CFStringGetLength(Mutable))
  {
    Copy = 0;
    if (!Mutable)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

LABEL_4:
  *a3 = Copy;
}

void acc_manager_findConnectionsThroughAdapter_cold_1(const void *a1, void *a2, CFArrayRef *a3)
{
  CFRetain(a1);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *a2 = a1;
  a2[1] = Mutable;
  acc_manager_iterateAllConnections(_findConnectionsThroughAdapter, a2, 0);
  if (!CFArrayGetCount(Mutable))
  {
    Copy = 0;
    if (!Mutable)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Copy = CFArrayCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

LABEL_4:
  *a3 = Copy;
}

BOOL iap2_sessionFileTransfer_init(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    BuffSize = iAP2ListArrayGetBuffSize(128, 24);
    v3 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
    *(v1 + 432) = v3;
    v4 = malloc_type_malloc(BuffSize, 0xC772888DuLL);
    *v3 = v4;
    LODWORD(v1) = iAP2ListArrayInit(v4, 128, 0x18u);
    v5 = malloc_type_malloc(BuffSize, 0xD6562240uLL);
    v3[1] = v5;
    v6 = iAP2ListArrayInit(v5, 128, 0x18u);
    v7 = malloc_type_malloc(BuffSize, 0xB7DE34D2uLL);
    v3[2] = v7;
    return (iAP2ListArrayInit(v7, 128, 0x18u) | v6 | v1) == 0;
  }

  return result;
}

uint64_t iap2_sessionFileTransfer_cleanup(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 432);
    if (v2)
    {
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
        v10 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9, v31);
        }
      }

      else
      {
        v10 = *(gLogObjects + 184);
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(v1 + 8);
        iAP2ListArrayGetCount(*v2);
        iAP2ListArrayGetCount(v2[1]);
        iAP2ListArrayGetCount(v2[2]);
        v31 = 2;
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_15_1();
        _os_log_impl(v12, v13, OS_LOG_TYPE_INFO, v14, v15, 0x1Eu);
      }

      iap2_sessionFileTransfer_cleanUpRemoveTransferList(v1);
      if (iAP2ListArrayGetCount(*v2) || iAP2ListArrayGetCount(v2[1]) || iAP2ListArrayGetCount(v2[2]))
      {
        if (gLogObjects && gNumLogObjects >= 24)
        {
          v16 = *(gLogObjects + 184);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30, v31);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v17 = *(v1 + 8);
          iAP2ListArrayGetCount(*v2);
          iAP2ListArrayGetCount(v2[1]);
          iAP2ListArrayGetCount(v2[2]);
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_15_5();
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v18, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 0x1Eu);
        }
      }

      if (*v2)
      {
        free(*v2);
        *v2 = 0;
      }

      v22 = v2[1];
      if (v22)
      {
        free(v22);
        v2[1] = 0;
      }

      v23 = v2[2];
      if (v23)
      {
        free(v23);
        v2[2] = 0;
      }

      v24 = *(v1 + 432);
      if (v24)
      {
        free(v24);
        *(v1 + 432) = 0;
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

void iap2_sessionFileTransfer_cleanUpRemoveTransferList(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 432);
    if (v2)
    {
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
        v10 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9, 0);
        }
      }

      else
      {
        v10 = *(gLogObjects + 184);
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 8);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v20, v21, OS_LOG_TYPE_DEBUG, v22, v23, 0xCu);
      }

      v11 = *(v2 + 16);
      LastItemIndex = iAP2ListArrayGetLastItemIndex(v11);
      if (LastItemIndex != 255)
      {
        v13 = LastItemIndex;
        v14 = 0;
        do
        {
          v15 = iAP2ListArrayItemForIndex(v11, v13);
          iAP2FileTransferRelease(*(v15 + 8));
          v16 = *(v15 + 16);
          if (v16)
          {
            free(v16);
            *(v15 + 16) = 0;
          }

          iAP2ListArrayDeleteItem(v11, v13, 0);
          ++v14;
          v17 = iAP2ListArrayGetLastItemIndex(v11);
          v13 = v17;
        }

        while (v17 != 255);
      }

      if (gLogObjects && gNumLogObjects >= 24)
      {
        v18 = *(gLogObjects + 184);
      }

      else
      {
        v18 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v31, v32, v33, v34, 0);
        }
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a1 + 8);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v25, v26, OS_LOG_TYPE_DEBUG, v27, v28, 0x12u);
      }
    }
  }
}

uint64_t iap2_sessionFileTransfer_start(unsigned __int8 *a1)
{
  if (a1)
  {
    iap2_sessionFileTransfer_getVersion(a1);
    if (gLogObjects)
    {
      v1 = gNumLogObjects < 24;
    }

    else
    {
      v1 = 1;
    }

    if (v1)
    {
      v8 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v2, v3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v4, v5, v6, v7, v14);
      }
    }

    else
    {
      v8 = *(gLogObjects + 184);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 8u);
    }
  }

  return 0;
}

unsigned __int8 *iap2_sessionFileTransfer_getVersion(unsigned __int8 *result)
{
  if (result)
  {
    v1 = *(result + 4);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {
        SessionForService = iAP2LinkGetSessionForService(*(v1 + 24), 1);
        result = iAP2LinkGetSessionInfo(v2, SessionForService);
        if (result)
        {
          return result[2];
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t iap2_sessionFileTransfer_handleDatagram(unint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v7 = *a2;
      result = iap2_sessionFileTransfer_findTransferEntry(a1, v7);
      if (result)
      {
        v8 = *(result + 8);
        if (v8)
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v11 = *(gLogObjects + 184);
          }

          else
          {
            v11 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v16 = 134218240;
              v17 = v9;
              OUTLINED_FUNCTION_3();
              v19 = v10;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v16);
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1 + 8);
            v14 = *(v8 + 16);
            v15 = *(v8 + 109);
            v16 = 136316674;
            v17 = "iap2_sessionFileTransfer_handleDatagram";
            v18 = 1024;
            v19 = 158;
            v20 = 2112;
            v21 = v13;
            v22 = 2048;
            v23 = v8;
            v24 = 2048;
            v25 = v14;
            v26 = 1024;
            v27 = v15;
            v28 = 1024;
            v29 = v7;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s:%d pEndpoint %@, fileXfer %p (buffer %p, id 0x%x), bufferID 0x%x", &v16, 0x3Cu);
          }

          iAP2FileTransferHandleRecv(v8, a2, a3);
          iap2_sessionFileTransfer_cleanUpRemoveTransferList(a1);
          return 1;
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

unint64_t iap2_sessionFileTransfer_findTransferEntry(unint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 432);
    if (v3)
    {
      if ((a2 & 0x80) != 0)
      {
        if (*v3)
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v11 = *(gLogObjects + 184);
          }

          else
          {
            v11 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v40 = 134218240;
              v41 = v9;
              OUTLINED_FUNCTION_5_0();
              v42 = v10;
              OUTLINED_FUNCTION_13_5();
              OUTLINED_FUNCTION_10(v32, v33, v34, v35, v36);
            }
          }

          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

LABEL_30:
          v22 = *(v2 + 8);
          OUTLINED_FUNCTION_1_9();
          v42 = a2;
          OUTLINED_FUNCTION_13_5();
          _os_log_debug_impl(v23, v24, OS_LOG_TYPE_DEBUG, v25, v26, 0x12u);
LABEL_19:
          v12 = *v3;
          v39[0] = 0xAAAAAAAAAAAAAAAALL;
          v39[1] = 0;
          LOBYTE(v39[0]) = a2;
          v39[2] = 0;
          Item = iAP2ListArrayFindItem(v12, v39, _compareBufferID);
          if (Item != 255)
          {
            return iAP2ListArrayItemForIndex(v12, Item);
          }

          v14 = gLogObjects;
          v15 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v16 = *(gLogObjects + 184);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            v40 = 134218240;
            v41 = v14;
            OUTLINED_FUNCTION_5_0();
            v42 = v15;
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v40);
          }

          if (OUTLINED_FUNCTION_93())
          {
            v40 = 67109120;
            LODWORD(v41) = a2;
            OUTLINED_FUNCTION_62();
            _os_log_impl(v17, v18, v19, v20, v21, 8u);
          }
        }
      }

      else
      {
        v5 = *(v3 + 8);
        v3 += 8;
        if (v5)
        {
          v6 = gLogObjects;
          v7 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v8 = *(gLogObjects + 184);
          }

          else
          {
            v8 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v40 = 134218240;
              v41 = v6;
              OUTLINED_FUNCTION_5_0();
              v42 = v7;
              OUTLINED_FUNCTION_13_5();
              OUTLINED_FUNCTION_10(v27, v28, v29, v30, v31);
            }
          }

          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

          goto LABEL_30;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL iap2_sessionFileTransfer_addTransferForFeature(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (!a1 || !a3)
  {
    return result;
  }

  v7 = *(a1 + 432);
  if (!v7)
  {
    return 0;
  }

  v10 = &audioProductCerts_endpoint_publish_onceToken;
  if ((*(a3 + 109) & 0x80000000) == 0)
  {
    v11 = v7 + 1;
    if (v7[1])
    {
      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 24)
      {
        v14 = *(gLogObjects + 184);
      }

      else if (OUTLINED_FUNCTION_18())
      {
        v69 = 134218240;
        *v70 = v12;
        OUTLINED_FUNCTION_5_0();
        v71 = v13;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_10(v48, v49, v50, v51, v52);
      }

      if (OUTLINED_FUNCTION_78_0())
      {
        OUTLINED_FUNCTION_16_5();
        OUTLINED_FUNCTION_0_6();
        v72 = v36;
        v73 = v37;
        OUTLINED_FUNCTION_17_1();
        _os_log_debug_impl(v38, v39, OS_LOG_TYPE_DEBUG, v40, v41, 0x1Eu);
      }

      v10 = &audioProductCerts_endpoint_publish_onceToken;
      goto LABEL_22;
    }

    return 0;
  }

  if (!*v7)
  {
    return 0;
  }

  v15 = gLogObjects;
  v16 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 24)
  {
    v17 = *(gLogObjects + 184);
  }

  else if (OUTLINED_FUNCTION_18())
  {
    v69 = 134218240;
    *v70 = v15;
    OUTLINED_FUNCTION_5_0();
    v71 = v16;
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_10(v58, v59, v60, v61, v62);
  }

  v11 = v7;
  if (OUTLINED_FUNCTION_78_0())
  {
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_0_6();
    v72 = v42;
    v73 = v43;
    OUTLINED_FUNCTION_17_1();
    _os_log_debug_impl(v44, v45, OS_LOG_TYPE_DEBUG, v46, v47, 0x1Eu);
    v11 = v7;
  }

LABEL_22:
  v18 = *v11;
  OUTLINED_FUNCTION_4_9();
  if (iAP2ListArrayFindItem(v18, v19, v20) == 255)
  {
    __src[0] = *(a3 + 109);
    v66 = a2;
    v67 = a3;
    v68 = a4;
    LastItemIndex = iAP2ListArrayGetLastItemIndex(v18);
    if (iAP2ListArrayAddItemAfter(v18, LastItemIndex, __src) != 255)
    {
      return 1;
    }

    v32 = v10[491];
    v33 = gNumLogObjects;
    if (v32 && gNumLogObjects >= 24)
    {
      v34 = *(v32 + 184);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      v69 = 134218240;
      *v70 = v32;
      OUTLINED_FUNCTION_5_0();
      v71 = v33;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v63, v64, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v69);
    }

    result = OUTLINED_FUNCTION_93();
    if (result)
    {
      v35 = *(a3 + 109);
      *v7;
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_62();
      v31 = 18;
      goto LABEL_32;
    }
  }

  else
  {
    v21 = v10[491];
    v22 = gNumLogObjects;
    if (v21 && gNumLogObjects >= 24)
    {
      v23 = *(v21 + 184);
    }

    else
    {
      v23 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v69 = 134218240;
        *v70 = v21;
        OUTLINED_FUNCTION_5_0();
        v71 = v22;
        OUTLINED_FUNCTION_13_5();
        OUTLINED_FUNCTION_10(v53, v54, v55, v56, v57);
      }
    }

    result = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v25 = *(a3 + 109);
      v69 = 67109376;
      *v70 = v25;
      *&v70[4] = 1024;
      *&v70[6] = a2;
      OUTLINED_FUNCTION_13_5();
      v30 = OS_LOG_TYPE_DEFAULT;
      v31 = 14;
LABEL_32:
      _os_log_impl(v26, v27, v30, v28, v29, v31);
      return 0;
    }
  }

  return result;
}

BOOL iap2_sessionFileTransfer_removeTransferForFeature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (!a1 || !a3)
  {
    return result;
  }

  v6 = *(a1 + 432);
  if (!v6)
  {
    return 0;
  }

  if ((*(a3 + 109) & 0x80000000) == 0)
  {
    v7 = (v6 + 1);
    if (v6[1])
    {
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 24)
      {
        v10 = *(gLogObjects + 184);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v55 = 134218240;
          v56 = v8;
          OUTLINED_FUNCTION_5_0();
          v57 = v9;
          OUTLINED_FUNCTION_18_6();
          OUTLINED_FUNCTION_10(v43, v44, v45, v46, v47);
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 8);
        v15 = *(a3 + 109);
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_18_6();
        _os_log_debug_impl(v16, v17, OS_LOG_TYPE_DEBUG, v18, v19, 0x18u);
      }

      goto LABEL_21;
    }

    return 0;
  }

  if (!*v6)
  {
    return 0;
  }

  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 24)
  {
    v13 = *(gLogObjects + 184);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v55 = 134218240;
      v56 = v11;
      OUTLINED_FUNCTION_5_0();
      v57 = v12;
      OUTLINED_FUNCTION_18_6();
      OUTLINED_FUNCTION_10(v48, v49, v50, v51, v52);
    }
  }

  v7 = v6;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 8);
    v38 = *(a3 + 109);
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_18_6();
    _os_log_debug_impl(v39, v40, OS_LOG_TYPE_DEBUG, v41, v42, 0x18u);
    v7 = v6;
  }

LABEL_21:
  v20 = *v7;
  v21 = v6[2];
  OUTLINED_FUNCTION_4_9();
  Item = iAP2ListArrayFindItem(v20, v22, v23);
  if (Item != 255)
  {
    v25 = Item;
    LastItemIndex = iAP2ListArrayGetLastItemIndex(v21);
    v27 = iAP2ListArrayItemForIndex(v20, v25);
    iAP2ListArrayAddItemAfter(v21, LastItemIndex, v27);
    iAP2ListArrayDeleteItem(v20, v25, 0);
    return 1;
  }

  v28 = gLogObjects;
  v29 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 24)
  {
    v30 = *(gLogObjects + 184);
  }

  else if (OUTLINED_FUNCTION_21())
  {
    v55 = 134218240;
    v56 = v28;
    OUTLINED_FUNCTION_5_0();
    v57 = v29;
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v53, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v55);
  }

  result = OUTLINED_FUNCTION_93();
  if (result)
  {
    v31 = *(a3 + 109);
    if (v20 != *v6)
    {
      v6[1];
    }

    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_62();
    _os_log_impl(v32, v33, v34, v35, v36, 0x12u);
    return 0;
  }

  return result;
}