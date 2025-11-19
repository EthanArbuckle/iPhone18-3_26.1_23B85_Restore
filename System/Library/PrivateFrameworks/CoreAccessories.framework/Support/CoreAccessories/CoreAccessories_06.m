uint64_t _acc_auth_protocol_decompressCert(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (a1 && a2)
  {
    if (!acc_auth_protocol_negotiatedMFi4Cert(a1))
    {
      goto LABEL_20;
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

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _acc_auth_protocol_decompressCert_cold_2(a2);
    }

    if ((v4, platform_systemInfo_isInternalBuild()) && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0 || (v6 = *(a2 + 8), (v6 - 1) > 0x18E))
    {
LABEL_20:
      v3 = 0;
      goto LABEL_21;
    }

    v7 = *a2;
    v8 = *(a2 + 48);
    if (v8)
    {
      if (*(a2 + 56))
      {
        v9 = *a2;
LABEL_18:
        v10 = [NSData dataWithBytes:v9 length:v6];
        if (!v10)
        {
          v3 = 12;
          goto LABEL_21;
        }

        v11 = v10;
        [0 addObject:v10];

        goto LABEL_20;
      }

      size = 0;
      free(v8);
      *(a2 + 48) = 0;
    }

    else
    {
      size = 0;
    }

    *(a2 + 56) = 0;
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

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 68157954;
      v25 = v6;
      v26 = 2096;
      *v27 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[AccAuth] _decompressCert: _certData <%{coreacc:bytes}.*P> \n", buf, 0x12u);
    }

    v18 = CTDecompressComputeBufferSize(v7, v6, &size);
    if (v18)
    {
      v3 = v18;
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
        v22 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        _acc_auth_protocol_decompressCert_cold_5();
      }
    }

    else
    {
      v20 = malloc_type_malloc(size, 0xA071D159uLL);
      if (v20)
      {
        v9 = v20;
        v21 = CTDecompress(v7, v6, v20, size);
        if (!v21)
        {
          LODWORD(v6) = size;
          *(a2 + 48) = *a2;
          *(a2 + 56) = *(a2 + 8);
          *a2 = v9;
          *(a2 + 8) = v6;
          goto LABEL_18;
        }

        v3 = v21;
        v19 = logObjectForModule_28();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          _acc_auth_protocol_decompressCert_cold_6();
        }
      }

      else
      {
        v19 = logObjectForModule_28();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          _acc_auth_protocol_decompressCert_cold_7(&size);
        }

        v3 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_21:
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
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = -1;
    }

    *buf = 67109632;
    v25 = v14;
    v26 = 1024;
    *v27 = v3;
    *&v27[4] = 1024;
    *&v27[6] = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[AccAuth] _decompressCert: certificateDataLen %d, errorNo %d/0x%x \n", buf, 0x14u);
  }

  return v3;
}

uint64_t _acc_auth_protocol_generateChallenge(uint64_t a1, uint64_t a2, void *__buf, size_t __nbytes)
{
  v4 = __nbytes;
  v5 = 1;
  if (a1 && a2 && __buf && __nbytes)
  {
    arc4random_buf(__buf, __nbytes);
    v5 = 0;
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
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[AccAuth] _generateChallenge: outChallengeLen %d, errorNo %d \n", v9, 0xEu);
  }

  return v5;
}

uint64_t _acc_auth_protocol_verifyChallengeResponse(uint64_t a1, const UInt8 *a2, unsigned int a3, const UInt8 *a4, unsigned int a5, const UInt8 *a6, unsigned int a7)
{
  v9 = 1;
  if (!a1 || !a2 || !a3 || !a6 || !a7 || acc_auth_protocol_negotiatedMFi4Cert(a1) && (!a4 || !a5))
  {
    goto LABEL_50;
  }

  v15 = *(a1 + 1408);
  if (!v15)
  {
    goto LABEL_50;
  }

  if (!*(v15 + 352))
  {
    goto LABEL_50;
  }

  if (!*v15)
  {
    goto LABEL_50;
  }

  v16 = *(v15 + 8);
  if (!v16)
  {
    goto LABEL_50;
  }

  v26 = CFDataCreate(kCFAllocatorDefault, *v15, v16);
  v17 = CFDataCreate(kCFAllocatorDefault, a2, a3);
  v18 = CFDataCreate(kCFAllocatorDefault, a6, a7);
  if (a4)
  {
    a4 = CFDataCreate(kCFAllocatorDefault, a4, a5);
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

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    *v28 = "_acc_auth_protocol_verifyChallengeResponse";
    *&v28[8] = 1024;
    *v29 = 2308;
    *&v29[4] = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v26;
    v35 = 2112;
    v36 = a4;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[AccAuth] %s:%d challenge %@, response %@, peerCertObj %@, accessoryNonceObj %@ \n", buf, 0x3Au);
  }

  if (!v26 || !v17 || !v18)
  {
    v9 = 12;
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
  {
    v9 = 0;
    goto LABEL_38;
  }

  if (!acc_auth_protocol_negotiatedMFi4Cert(a1))
  {
    v21 = MFAAVerifyNonceSignature();
LABEL_35:
    if (v21)
    {
      v9 = 0;
    }

    else
    {
      v9 = 80;
    }

LABEL_38:
    if (acc_userDefaults_BOOLForKey(@"ForceAuthFail"))
    {
      v22 = logObjectForModule_28();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 67109888;
        *v28 = a3;
        *&v28[4] = 1024;
        *&v28[6] = a7;
        *v29 = 1024;
        *&v29[2] = v9;
        LOWORD(v30) = 1024;
        *(&v30 + 2) = 80;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[AccAuth] _verifyChallengeResponse: challengeLen %d, responseLen %d, override errorNo %d -> %d \n", buf, 0x1Au);
      }

      v9 = 80;
    }

    goto LABEL_43;
  }

  if (a4)
  {
    v21 = MFAAVerifyNonceSignatureMFi4();
    goto LABEL_35;
  }

  v9 = 12;
LABEL_43:
  CFRelease(v26);
LABEL_44:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (a4)
  {
    CFRelease(a4);
  }

LABEL_50:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v23 = *(gLogObjects + 432);
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

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *v28 = a3;
    *&v28[4] = 1024;
    *&v28[6] = a7;
    *v29 = 1024;
    *&v29[2] = v9;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[AccAuth] _verifyChallengeResponse: challengeLen %d, responseLen %d, errorNo %d \n", buf, 0x14u);
  }

  return v9;
}

uint64_t _acc_auth_protocol_certificateCacheGetCert(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  CertificateDataWithHash = 1;
  if (a1 && a2 && a3 >= 0x20 && a4)
  {
    v9 = *(a1 + 1408);
    if (!v9)
    {
      goto LABEL_15;
    }

    if (platform_systemInfo_isInternalBuild() && (acc_userDefaults_BOOLForKey(@"ACCAuthProtocolPretendAuth") & 1) != 0)
    {
      if (*(v9 + 352) >= 3u)
      {
        _acc_auth_protocol_getCertificate(a1, a2, a3, 0, 0, a4);
        CertificateDataWithHash = 0;
        goto LABEL_19;
      }

LABEL_15:
      CertificateDataWithHash = 1;
      goto LABEL_19;
    }

    if (__getCerCacheObj_onceToken != -1)
    {
      _acc_auth_protocol_certificateCacheSaveCert_cold_1();
    }

    v10 = CFStringCreateWithBytes(kCFAllocatorDefault, a2, a3, 0x8000100u, 0);
    if (v10)
    {
      v11 = v10;
      v12 = MFAACreateCertDataFromSerialNumber();
      if (v12)
      {
        v13 = v12;
        BytePtr = CFDataGetBytePtr(v12);
        Length = CFDataGetLength(v13);
        v16 = acc_auth_protocol_negotiatedMFi4Cert(a1);
        CertificateDataWithHash = _acc_auth_protocol_createCertificateDataWithHash(BytePtr, Length, a2, a3, v16, a4);
        CFRelease(v13);
      }

      else
      {
        CertificateDataWithHash = 2;
      }

      CFRelease(v11);
    }

    else
    {
      CertificateDataWithHash = 2;
    }
  }

LABEL_19:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v17 = *(gLogObjects + 432);
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
    if (a4)
    {
      v19 = *(a4 + 8);
      v20 = *(a4 + 24);
    }

    else
    {
      v19 = -1;
      v20 = -1;
    }

    v22[0] = 67109888;
    v22[1] = a3;
    v23 = 1024;
    v24 = v19;
    v25 = 1024;
    v26 = v20;
    v27 = 1024;
    v28 = CertificateDataWithHash;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[AccAuth] _certificateCacheGetCert: inCertificateHashLen %d, certificateDataLen %d, certificateHashLen %d, errorNo %d \n", v22, 0x1Au);
  }

  return CertificateDataWithHash;
}

uint64_t _checkIdentificationInfo_9(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgAssistiveTouchList, 5u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_features_createFeature(a1, 3u);
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return iap2_feature_getFeature(v0, 3u);
}

void OUTLINED_FUNCTION_15_17(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x2Cu);
}

void mfi4Auth_relay_cleanup(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 168;
  do
  {
    v3 = *(v2 + v1);
    *(v2 + v1) = 0;

    v1 += 8;
  }

  while (v1 != 24);
}

uint64_t mfi4Auth_protocol_processIncomingMessageRelay(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v15 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageRelay_cold_23();
    }

    goto LABEL_23;
  }

  if (a3)
  {
    MsgID = iAP2MsgGetMsgID(a3);
    if (gLogObjects)
    {
      v11 = gNumLogObjects <= 55;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (MsgID)
    {
      v13 = MsgID;
      if (v12)
      {
        v14 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v14 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 28);
        v60 = 67109376;
        *v61 = v19;
        *&v61[4] = 1024;
        *&v61[6] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: cmd:0x%x  rsp:0x%x", &v60, 0xEu);
      }

      if (v13 != 21094)
      {
        if (v13 == 21093)
        {
          if (!a2)
          {
            goto LABEL_159;
          }

          mfi4Auth_relay_handle_iAP2RelayFailed(a1, a3);
        }

        else
        {
          if (v13 == 21092)
          {
            if (!a2)
            {
              goto LABEL_159;
            }

            if (mfi4Auth_relay_handle_iAP2RelayRemote(a1, a3, a4))
            {
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v15 = *(gLogObjects + 440);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
                }

                v15 = &_os_log_default;
                v56 = &_os_log_default;
              }

              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_processIncomingMessageRelay_cold_5();
              }

LABEL_23:

              goto LABEL_159;
            }

LABEL_67:
            v22 = 1;
            goto LABEL_68;
          }

          if (gLogObjects && gNumLogObjects >= 56)
          {
            v24 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
            }

            v24 = &_os_log_default;
            v25 = &_os_log_default;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_processIncomingMessageRelay_cold_7();
          }
        }

        v22 = 0;
LABEL_68:
        v23 = 1;
        goto LABEL_69;
      }

      if (!a2)
      {
        goto LABEL_159;
      }

      if (mfi4Auth_relay_handle_iAP2RelaySucceeded(a1, a3, a4))
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v15 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }

          v15 = &_os_log_default;
          v55 = &_os_log_default;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_processIncomingMessageRelay_cold_3();
        }

        goto LABEL_23;
      }

      goto LABEL_67;
    }

    if (v12)
    {
      v16 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v16 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageRelay_cold_9();
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v16 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v16 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageRelay_cold_11();
    }
  }

  v22 = 0;
  v23 = 0;
LABEL_69:
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v26 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v26 = &_os_log_default;
    v27 = &_os_log_default;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = *(a1 + 32);
    v60 = 67109120;
    *v61 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "processIncomingMessageRelay: action %d", &v60, 8u);
  }

  v29 = *(a1 + 72);
  if (acc_userDefaults_BOOLForKey(@"ForceAccInfoUpdateRelaySupport"))
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v30 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v30 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v60 = 134218240;
      *v61 = v29;
      *&v61[8] = 1024;
      LODWORD(v62) = 1;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: override supportedSecureTunnelCapabilitiesMask 0x%llx |= 0x%x", &v60, 0x12u);
    }

    v29 |= 1uLL;
  }

  if (acc_userDefaults_BOOLForKey(@"IgnoreAccInfoUpdateRelaySupport"))
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v32 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v32 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v60 = 134218240;
      *v61 = v29;
      *&v61[8] = 1024;
      LODWORD(v62) = -2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: override supportedSecureTunnelCapabilitiesMask 0x%llx &= 0x%x", &v60, 0x12u);
    }

    v29 &= ~1uLL;
  }

  if (acc_userDefaults_BOOLForKey(@"ForceT56RelaySupport"))
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v34 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v34 = &_os_log_default;
      v35 = &_os_log_default;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v60 = 134218240;
      *v61 = v29;
      *&v61[8] = 1024;
      LODWORD(v62) = 4;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: override supportedSecureTunnelCapabilitiesMask 0x%llx |= 0x%x", &v60, 0x12u);
    }

    v29 |= 4uLL;
  }

  if (acc_userDefaults_BOOLForKey(@"DisableT56Support"))
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v36 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v36 = &_os_log_default;
      v37 = &_os_log_default;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v60 = 134218240;
      *v61 = v29;
      *&v61[8] = 1024;
      LODWORD(v62) = -5;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: override supportedSecureTunnelCapabilitiesMask 0x%llx &= 0x%x", &v60, 0x12u);
    }

    v29 &= ~4uLL;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v38 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v38 = &_os_log_default;
    v39 = &_os_log_default;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(a1 + 80);
    v60 = 134218240;
    *v61 = v29;
    *&v61[8] = 2048;
    v62 = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: supportedSecureTunnelCapabilitiesMask 0x%llx, processed 0x%llx", &v60, 0x16u);
  }

  if (!*(a1 + 32) && v29 && v29 != *(a1 + 80))
  {
    EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
    if (EndpointWithUUID)
    {
      v42 = EndpointWithUUID;
      if (EndpointWithUUID[7])
      {
        if (v29 & 1) == 0 || (v43 = *(a1 + 80), (v43))
        {
          if ((v29 & 0xFFFFFFFFFFFFFFFCLL) != 0)
          {
            v47 = gLogObjects;
            v48 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v49 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v60 = 134218240;
                *v61 = v47;
                *&v61[8] = 1024;
                LODWORD(v62) = v48;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v60, 0x12u);
              }

              v49 = &_os_log_default;
              v57 = &_os_log_default;
            }

            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v58 = v42[2];
              v60 = 138413058;
              *v61 = v58;
              *&v61[8] = 2048;
              v62 = v29 & 0xFFFFFFFFFFFFFFFCLL;
              v63 = 1024;
              v64 = 2;
              v65 = 2048;
              v66 = 4;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: %@, supportedSecureTunnelCapabilitiesMask 0x%llx, currentType/Mask %d/0x%llx", &v60, 0x26u);
            }

            if ((v29 & 4) != 0)
            {
              v59 = *(a1 + 80);
              if ((v59 & 4) == 0)
              {
                *(a1 + 80) = v59 | 4;
                mfi4Auth_relay_StartRelayForType(a1, 2u, a4, a5);
              }
            }
          }
        }

        else
        {
          *(a1 + 80) = v43 | 1;
          v44 = logObjectForModule_29();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v42[2];
            v60 = 138412290;
            *v61 = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "processIncomingMessageRelay: %@, initMessage RequestAccessoryInfoUpdate", &v60, 0xCu);
          }

          *(a1 + 32) = 14;
          mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_RequestAccessoryInfoUpdate(a1, a4);
        }

        result = 1;
        if (v22)
        {
          goto LABEL_168;
        }

        return result;
      }

      if (gLogObjects && gNumLogObjects >= 56)
      {
        v46 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v46 = &_os_log_default;
        v51 = &_os_log_default;
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_155;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v46 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v46 = &_os_log_default;
        v50 = &_os_log_default;
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_155;
      }
    }

    mfi4Auth_protocol_processIncomingMessageRelay_cold_19();
LABEL_155:
  }

  if (v23)
  {
    result = 1;
    if (!v22)
    {
      return result;
    }

    goto LABEL_168;
  }

LABEL_159:
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v53 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v53 = &_os_log_default;
    v54 = &_os_log_default;
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    mfi4Auth_protocol_processIncomingMessageRelay_cold_25();
  }

  result = 0;
  if (a5)
  {
LABEL_168:
    *a5 = result;
  }

  return result;
}

id logObjectForModule_29()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v0 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_4();
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  return v0;
}

uint64_t mfi4Auth_relay_handle_iAP2RelayRemote(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = 1;
  v48 = 0;
  v47 = 0;
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelayRemote_cold_21();
    }

    goto LABEL_123;
  }

  if (*(a1 + 30) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelayRemote_cold_19();
    }

    goto LABEL_123;
  }

  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 55;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!a2)
  {
    if (v7)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelayRemote_cold_17();
    }

    goto LABEL_123;
  }

  if (v7)
  {
    v9 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v9 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = iAP2MsgGetMsgID(a2);
    *&buf[8] = 1024;
    *&buf[10] = iAP2MsgGetMsgLen(a2);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_iAP2RelayRemote: msgID 0x%04x, len %d", buf, 0xEu);
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (FirstParam)
  {
    v14 = FirstParam;
    DataAsData = iAP2MsgGetDataAsData(FirstParam, &v49);
    ParamValueLen = iAP2MsgGetParamValueLen(v14);
    v4 = [NSData dataWithBytes:DataAsData length:ParamValueLen];
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v17 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v17 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      ParamID = iAP2MsgGetParamID(v14);
      *buf = 67109376;
      *&buf[4] = ParamID;
      *&buf[8] = 1024;
      *&buf[10] = ParamValueLen;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_iAP2RelayRemote: paramID %d, dataLen %d", buf, 0xEu);
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v21 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v21 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_iAP2RelayRemote: %@", buf, 0xCu);
    }

    v23 = mfi4Auth_util_unpackFromTunnelDataiAP2Msg(v4, &v48, &v47);
    if (!v23)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v31 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v31 = &_os_log_default;
        v33 = &_os_log_default;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_relay_handle_iAP2RelayRemote_cold_13();
      }

      goto LABEL_123;
    }

    v24 = v23;
    Length = CFDataGetLength(v23);
    v26 = Length;
    if (gLogObjects)
    {
      v27 = gNumLogObjects <= 55;
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    if (Length <= 5)
    {
      if (v28)
      {
        v32 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v32 = &_os_log_default;
        v38 = &_os_log_default;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_relay_handle_iAP2RelayRemote_cold_5();
      }
    }

    else
    {
      if (v28)
      {
        v29 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v29 = &_os_log_default;
        v34 = &_os_log_default;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v47;
        *&buf[8] = 2048;
        *&buf[10] = v26;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "mfi4Auth_relay_handle_iAP2RelayRemote: msgID 0x%04x, len %zu", buf, 0x12u);
      }

      if (v47 == 21763)
      {
        v53 = 0xAAAAAAAAAAAAAAAALL;
        *&v40 = 0xAAAAAAAAAAAAAAAALL;
        *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v51 = v40;
        v52 = v40;
        *buf = v40;
        *&buf[16] = v40;
        v41 = malloc_type_calloc(1uLL, 0x1001FuLL, 0x1090040DAA7631AuLL);
        if (v41)
        {
          v42 = v41;
          v43 = mfi4Auth_util_parseMessage(v41, buf, v24, 16448);
          if (v43)
          {
            v49 = _mfi4Auth_relay_handle_AccessoryInformationUpdate(a1, v43);
            free(v42);
LABEL_108:
            CFRelease(v24);

            return v49;
          }

          v45 = logObjectForModule_29();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_relay_handle_iAP2RelayRemote_cold_7();
          }

          free(v42);
        }

        else
        {
          v44 = logObjectForModule_29();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_relay_handle_iAP2RelayRemote_cold_8();
          }
        }

LABEL_122:
        CFRelease(v24);
LABEL_123:

        return -1;
      }

      if (v47 == 21761)
      {
        if (v48 >= 3uLL)
        {
          v32 = logObjectForModule_29();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_relay_handle_iAP2RelayRemote_cold_9();
          }
        }

        else
        {
          v35 = *(a1 + 168 + 8 * v48);
          v36 = logObjectForModule_29();
          v32 = v36;
          if (v35)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              *&buf[4] = v48;
              *&buf[8] = 2112;
              *&buf[10] = v24;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "mfi4Auth_relay_handle_iAP2RelayRemote: type %d, data %@", buf, 0x12u);
            }

            v37 = *a1;
            (*(*(a1 + 168 + 8 * v48) + 16))();
            v49 = 0;
            goto LABEL_108;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_relay_handle_iAP2RelayRemote_cold_10(&v48);
          }
        }
      }

      else
      {
        v32 = logObjectForModule_29();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_relay_handle_iAP2RelayRemote_cold_11(&v47);
        }
      }
    }

    goto LABEL_122;
  }

  if (!acc_userDefaults_BOOLForKey(@"MFi4RelayReadRetryDelayMs"))
  {
    return -1;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v18 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v18 = &_os_log_default;
    v39 = &_os_log_default;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    mfi4Auth_relay_handle_iAP2RelayRemote_cold_15();
  }

  usleep(0x3E8u);
  return mfi4Auth_relay_initMessage_RequestiAP2RelayRead(a1, a3);
}

uint64_t mfi4Auth_relay_handle_iAP2RelaySucceeded(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v3 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v3 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_6();
    }

    goto LABEL_31;
  }

  if (*(a1 + 30) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v3 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v3 = &_os_log_default;
      v6 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_4();
    }

LABEL_31:

    return 1;
  }

  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v3 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v3 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_2();
    }

    goto LABEL_31;
  }

  return mfi4Auth_relay_initMessage_RequestiAP2RelayRead(a1, a3);
}

uint64_t mfi4Auth_relay_handle_iAP2RelayFailed(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v2 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v2 = &_os_log_default;
      v3 = &_os_log_default;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelayFailed_cold_6();
    }

    goto LABEL_29;
  }

  if (*(a1 + 30) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v2 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v2 = &_os_log_default;
      v4 = &_os_log_default;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelayFailed_cold_4();
    }

LABEL_29:

    return 0;
  }

  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v2 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v2 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_handle_iAP2RelayFailed_cold_2();
    }

    goto LABEL_29;
  }

  mfi4Auth_protocol_handle_AuthState(a1);
  return 0;
}

uint64_t mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_RequestAccessoryInfoUpdate(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
  if (!v4)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v9 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v9 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_RequestAccessoryInfoUpdate_cold_4();
    }

    goto LABEL_24;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0xFFFFuLL, 0x314638A9uLL);
  if (!v6)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v9 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v9 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_RequestAccessoryInfoUpdate_cold_2();
    }

LABEL_24:

    return 1;
  }

  iAP2MsgInit(v5, 21762, v6, 0xFFFF, 0, 0);
  mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote(a1, a2, v5);
  *(a1 + 28) = 20836;
  iAP2MsgCleanup(v5);
  v7 = v5[3];
  if (v7)
  {
    free(v7);
  }

  free(v5);
  return 0;
}

uint64_t mfi4Auth_relay_StartRelayForType(const void **a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v13 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_6();
    }

    goto LABEL_73;
  }

  if (!a3)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v13 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v13 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_StartRelayForType_cold_13();
    }

    goto LABEL_73;
  }

  if (a2 < 3)
  {
    EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
    if (EndpointWithUUID)
    {
      v9 = EndpointWithUUID;
      if (acc_endpoint_getParentConnection(EndpointWithUUID))
      {
        if (gLogObjects)
        {
          v10 = gNumLogObjects <= 55;
        }

        else
        {
          v10 = 1;
        }

        v11 = !v10;
        if (*(v9 + 56))
        {
          if (v11)
          {
            v12 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
            }

            v12 = &_os_log_default;
            v19 = &_os_log_default;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(v9 + 16);
            v25 = 136315650;
            v26 = "mfi4Auth_relay_StartRelayForType";
            v27 = 2112;
            v28 = v20;
            v29 = 1024;
            v30 = a2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %@, secureTunnelType %d", &v25, 0x1Cu);
          }

          if (a2 == 2)
          {
            result = mfi4Auth_relay_StartRelayForT56(a1, a3, a4);
            goto LABEL_75;
          }

          if (gLogObjects && gNumLogObjects >= 56)
          {
            v14 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
            }

            v14 = &_os_log_default;
            v24 = &_os_log_default;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_relay_StartRelayForType_cold_5();
          }

          goto LABEL_39;
        }

        if (v11)
        {
          v13 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }

          v13 = &_os_log_default;
          v23 = &_os_log_default;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_relay_StartRelayForType_cold_7();
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v13 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }

          v13 = &_os_log_default;
          v22 = &_os_log_default;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_relay_StartRelayForType_cold_9(v9);
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v13 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v13 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_processIncomingMessageRelay_cold_19();
      }
    }

LABEL_73:

    goto LABEL_74;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v14 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v14 = &_os_log_default;
    v17 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    mfi4Auth_relay_StartRelayForType_cold_2();
  }

LABEL_39:

LABEL_74:
  result = 0;
LABEL_75:
  if (a4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t mfi4Auth_relay_StartRelayForT56(const void **a1, uint64_t a2, _BYTE *a3)
{
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v11 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_6();
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v11 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_StartRelayForType_cold_13();
    }

    goto LABEL_43;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
  if (!EndpointWithUUID)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v11 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageRelay_cold_19();
    }

    goto LABEL_43;
  }

  v5 = EndpointWithUUID;
  ParentConnection = acc_endpoint_getParentConnection(EndpointWithUUID);
  if (!ParentConnection)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v11 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_StartRelayForType_cold_9(v5);
    }

LABEL_43:
    v12 = 0;
LABEL_44:

    return v12;
  }

  v7 = acc_manager_newEndpointForConnection(ParentConnection, 15, 17, *(v5 + 16));
  if (v7)
  {
    v8 = v7;
    v10 = (v7 + 16);
    v9 = *(v7 + 16);
    if (v9)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = __mfi4Auth_relay_StartRelayForT56_block_invoke;
      v20[3] = &unk_100229398;
      v11 = CFStringCreateCopy(kCFAllocatorDefault, v9);
      v21 = v11;
      acc_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler(v5, 2, v20);
      acc_endpoint_setParentEndpointUUID(v8, *(v5 + 16));
      v12 = acc_endpoint_publish(v8);
      if (v12)
      {
        if (a3)
        {
          *a3 = 1;
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v18 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }

          v18 = &_os_log_default;
          v19 = &_os_log_default;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_relay_StartRelayForT56_cold_2(v10);
        }
      }

      goto LABEL_44;
    }
  }

  return 0;
}

uint64_t mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v10 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v10 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_6();
    }

    goto LABEL_24;
  }

  if (!v5)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v10 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v10 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler_cold_4();
    }

LABEL_24:

    goto LABEL_31;
  }

  if (a2 >= 3)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v11 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler_cold_2();
    }
  }

  else
  {
    v7 = objc_retainBlock(v5);
    v8 = a1 + 8 * a2;
    v9 = *(v8 + 168);
    *(v8 + 168) = v7;
  }

LABEL_31:

  return 0;
}

uint64_t mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient(uint64_t a1, unsigned int a2, const __CFData *a3)
{
  v25 = 0;
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_15();
    }

    goto LABEL_75;
  }

  if (*(a1 + 30) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_13();
    }

LABEL_75:

LABEL_76:
    v19 = 0;
    goto LABEL_77;
  }

  if (!a3)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_11();
    }

    goto LABEL_75;
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 55;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (a2 >= 3)
  {
    if (v8)
    {
      v12 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v12 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler_cold_2();
    }

    goto LABEL_76;
  }

  if (v8)
  {
    v9 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v9 = &_os_log_default;
    v14 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 200);
    *buf = 67109634;
    v27 = v24;
    v28 = 1024;
    v29 = a2;
    v30 = 2112;
    v31 = a3;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "processOutgoingSecureTunnelDataForClient: sessionID %x, type %d, dataOut %@", buf, 0x18u);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
  if (!EndpointWithUUID)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageRelay_cold_19();
    }

    goto LABEL_75;
  }

  v16 = *(EndpointWithUUID + 7);
  if (!v16)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v4 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_relay_StartRelayForType_cold_7();
    }

    goto LABEL_75;
  }

  if (!*(a1 + 8 * a2 + 168))
  {
    v4 = logObjectForModule_29();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_5();
    }

    goto LABEL_75;
  }

  mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_TypeData(a1, &v25, a2, a3);
  if (*(a1 + 192))
  {
    v17 = logObjectForModule_29();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_4();
    }

    v18 = *a1;
    (*(*(a1 + 192) + 16))();
    v19 = 1;
  }

  else
  {
    v19 = mfi4Auth_endpoint_sendOutgoingData(v16, v25);
  }

LABEL_77:
  if (v25)
  {
    free(v25);
  }

  return v19;
}

uint64_t mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_TypeData(uint64_t a1, uint64_t *a2, char a3, CFDataRef theData)
{
  result = 1;
  if (a2 && theData)
  {
    v7 = mfi4Auth_util_packIntoTunnelDataiAP2Msg(a3, theData, 0);
    if (v7)
    {
      v8 = v7;
      mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote(a1, a2, v7);
      *(a1 + 28) = 20836;
      iAP2MsgCleanup(v8);
      v9 = v8[3];
      if (v9)
      {
        free(v9);
      }

      free(v8);
      return 0;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v10 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v10 = &_os_log_default;
        v11 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_TypeData_cold_2();
      }

      return 1;
    }
  }

  return result;
}

uint64_t mfi4Auth_relay_initMessage_RequestiAP2RelayRead(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = *(a1 + 200);
  v5 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
  *a2 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  iAP2MsgInitWithSom(v5, v4, 20835, *(a1 + 16), *(a1 + 24), 0, 0);
  result = 0;
  *(a1 + 28) = 20835;
  return result;
}

uint64_t _mfi4Auth_relay_handle_AccessoryInformationUpdate(uint64_t a1, uint64_t a2)
{
  v64 = 1;
  v63 = 0;
  v57 = objc_alloc_init(NSMutableDictionary);
  v4 = &audioProductCerts_endpoint_publish_onceToken;
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v6 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v6 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _mfi4Auth_relay_handle_AccessoryInformationUpdate_cold_14();
    }

    goto LABEL_79;
  }

  if (*(a1 + 30) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v6 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v6 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _mfi4Auth_relay_handle_AccessoryInformationUpdate_cold_12();
    }

LABEL_79:

    v59 = 0;
    v60 = 0;
    v8 = 0;
    v58 = 0;
    v61 = 0;
    v62 = 0;
    goto LABEL_80;
  }

  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v6 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v6 = &_os_log_default;
      v25 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _mfi4Auth_relay_handle_AccessoryInformationUpdate_cold_10();
    }

    goto LABEL_79;
  }

  if (iAP2MsgGetMsgID(a2) != 21763)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v6 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v6 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _mfi4Auth_relay_handle_AccessoryInformationUpdate_cold_2();
    }

    goto LABEL_79;
  }

  *(a1 + 32) = 0;
  v64 = 94;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v59 = 0;
  v60 = 0;
  v8 = 0;
  v58 = 0;
  v61 = 0;
  v62 = 0;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v10 = v4;
    v11 = v4[491];
    v12 = v5;
    v13 = *(v5 + 984);
    if (v11 && v13 >= 56)
    {
      v14 = *(v11 + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v66 = v11;
        v67 = 1024;
        v68 = v13;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v15 = &_os_log_default;
      v14 = &_os_log_default;
    }

    v5 = v12;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v66 = "_mfi4Auth_relay_handle_AccessoryInformationUpdate";
      v67 = 1024;
      v68 = ParamID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: paramID: %d", buf, 0x12u);
    }

    if (ParamID >= 6)
    {
      v4 = v10;
      if (ParamID == 242)
      {
        iAP2MsgGetDataAsU64(FirstParam, &v64);
      }

      goto LABEL_40;
    }

    ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
    DataAsString = iAP2MsgGetDataAsString(FirstParam, &v64);
    if (!v64)
    {
      if (!*(DataAsString + ParamValueLen - 1))
      {
        v21 = [NSString stringWithUTF8String:DataAsString];
        if (ParamID > 2)
        {
          v4 = v10;
          if (ParamID == 3)
          {

            v59 = v21;
          }

          else if (ParamID == 4)
          {

            v8 = v21;
          }

          else
          {

            v60 = v21;
          }
        }

        else
        {
          v4 = v10;
          if (ParamID)
          {
            if (ParamID == 1)
            {

              v62 = v21;
            }

            else
            {

              v58 = v21;
            }
          }

          else
          {

            v61 = v21;
          }
        }

        goto LABEL_40;
      }

      v18 = v10[491];
      v19 = *(v12 + 984);
      if (v18 && v19 >= 56)
      {
        v20 = *(v18 + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v66 = v18;
          v67 = 1024;
          v68 = v19;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v22 = &_os_log_default;
        v20 = &_os_log_default;
      }

      v5 = v12;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v66 = "_mfi4Auth_relay_handle_AccessoryInformationUpdate";
        v67 = 1024;
        v68 = ParamID;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: string parameter not NUL terminated! (paramID %d)", buf, 0x12u);
      }
    }

    v4 = v10;
LABEL_40:
    FirstParam = iAP2MsgGetNextParamWithError(a2, 0, FirstParam, &v63);
    if (v63)
    {
      goto LABEL_80;
    }
  }

  if (v61)
  {
    v26 = v4[491];
    if (v26 && *(v5 + 984) >= 56)
    {
      v27 = *(v26 + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v27 = &_os_log_default;
      v37 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v61;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "vendor nameString %@", buf, 0xCu);
    }

    [v57 setObject:v61 forKey:kACCInfo_Name];
  }

  if (v62)
  {
    v38 = v4[491];
    if (v38 && *(v5 + 984) >= 56)
    {
      v39 = *(v38 + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v39 = &_os_log_default;
      v40 = &_os_log_default;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v62;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "modelIdentifierString %@", buf, 0xCu);
    }

    [v57 setObject:v62 forKey:kACCInfo_Model];
  }

  if (v58)
  {
    v41 = v4[491];
    if (v41 && *(v5 + 984) >= 56)
    {
      v42 = *(v41 + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v42 = &_os_log_default;
      v43 = &_os_log_default;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v58;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "manufacturerString %@", buf, 0xCu);
    }

    [v57 setObject:v58 forKey:kACCInfo_Manufacturer];
  }

  if (v59)
  {
    v44 = v4[491];
    if (v44 && *(v5 + 984) >= 56)
    {
      v45 = *(v44 + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v45 = &_os_log_default;
      v46 = &_os_log_default;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v59;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "serialNumberString %@", buf, 0xCu);
    }

    [v57 setObject:v59 forKey:kACCInfo_SerialNumber];
  }

  if (v8)
  {
    v47 = v4[491];
    if (v47 && *(v5 + 984) >= 56)
    {
      v48 = *(v47 + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v48 = &_os_log_default;
      v49 = &_os_log_default;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v8;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "firmwareVersionString %@", buf, 0xCu);
    }

    [v57 setObject:v8 forKey:kACCInfo_FirmwareVersionActive];
  }

  if (!v60)
  {
    if (v8 || v59 || v58 || v62 || v61)
    {
      goto LABEL_151;
    }

LABEL_155:
    v64 = 0;
    goto LABEL_80;
  }

  v50 = v4[491];
  if (v50 && *(v5 + 984) >= 56)
  {
    v51 = *(v50 + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v51 = &_os_log_default;
    v52 = &_os_log_default;
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v66 = v60;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "hardwareVersionString %@", buf, 0xCu);
  }

  [v57 setObject:v60 forKey:kACCInfo_HardwareVersion];
LABEL_151:
  v53 = *a1;
  if (!*a1)
  {
    goto LABEL_155;
  }

  v64 = 12;
  Copy = CFStringCreateCopy(kCFAllocatorDefault, v53);
  if (Copy)
  {
    v55 = Copy;
    v64 = 1;
    EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
    if (EndpointWithUUID)
    {
      acc_endpoint_setAccessoryInfoOverridesWithDictionary(EndpointWithUUID);
      CFRelease(v55);
      goto LABEL_155;
    }

    CFRelease(v55);
  }

LABEL_80:
  v29 = v4[491];
  if (v29 && *(v5 + 984) >= 56)
  {
    v30 = *(v29 + 440);
    v31 = v57;
    v32 = v58;
    v33 = v59;
  }

  else
  {
    v32 = v58;
    v33 = v59;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v30 = &_os_log_default;
    v34 = &_os_log_default;
    v31 = v57;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "_mfi4Auth_relay_handle_AccessoryInformationUpdate: finish", buf, 2u);
  }

  v35 = v64;
  return v35;
}

uint64_t mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = 1;
  if (a2 && a3)
  {
    v7 = *(a1 + 200);
    v8 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
    *a2 = v8;
    if (v8)
    {
      iAP2MsgInitWithSom(v8, v7, 20836, *(a1 + 16), *(a1 + 24), 0, 0);
      v9 = *a2;
      v10 = *(a3 + 24);
      MsgLen = iAP2MsgGetMsgLen(a3);
      iAP2MsgAddDataParam(v9, 0, 0, v10, MsgLen);
      result = 0;
      *(a1 + 28) = 20836;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

id getLogWriter()
{
  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketToFile)
  {
    openLogFileWriter();
  }

  v0 = _logFileWriter;

  return v0;
}

void acc_platform_packetLogging_logEAData(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v9 = objc_alloc_init(NSDate);
    v10 = __referenceDate;
    __referenceDate = v9;
  }

  v11 = +[NSDate date];
  v12 = a3;
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  v14 = [v12 length];
  [v11 timeIntervalSinceDate:__referenceDate];
  *&v15 = v15;
  v16 = *&v15;
  if (a1)
  {
    v17 = *(a1 + 16);
  }

  else
  {
    v17 = @"unknown";
  }

  v18 = "unknown";
  v19 = @"Acc-EA";
  if (TransportTypeString)
  {
    v18 = TransportTypeString;
  }

  if (!a4)
  {
    v19 = @"iPod-EA";
  }

  v20 = [NSString stringWithFormat:@"LOG %.6f; %@; %s; %@%@; sessionUUID %@; data(len=%d)=", *&v16, v17, v18, v19, &stru_10022D360, a2, v14];;
  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    goto LABEL_20;
  }

  v21 = _logPacketDataSizeLimit;
  if (!_logPacketDataSizeLimit)
  {
    v21 = 0x10000;
  }

  if (v21 >= v14)
  {
LABEL_20:
    v22 = "";
  }

  else
  {
    if (_logPacketDataSizeLimit)
    {
      LODWORD(v14) = _logPacketDataSizeLimit;
    }

    else
    {
      LODWORD(v14) = 0x10000;
    }

    v22 = "...";
  }

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v23 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v23 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v35 = v20;
      v36 = 1040;
      v37 = v14;
      v38 = 2098;
      v39 = [v12 bytes];
      v40 = 2080;
      v41 = v22;
      v28 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v29 = v23;
      v30 = OS_LOG_TYPE_DEFAULT;
LABEL_46:
      _os_log_impl(&_mh_execute_header, v29, v30, v28, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v25 = gNumLogObjects <= 21;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    if (isInternalBuild)
    {
      if (v26)
      {
        v23 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v23 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v35 = v20;
        v36 = 1040;
        v37 = v14;
        v38 = 2096;
        v39 = [v12 bytes];
        v40 = 2080;
        v41 = v22;
        v28 = "%@<%{coreacc:bytes}.*P> %s";
        v29 = v23;
        v30 = OS_LOG_TYPE_INFO;
        goto LABEL_46;
      }
    }

    else
    {
      if (v26)
      {
        v23 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v23 = &_os_log_default;
        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v35 = v20;
        v36 = 1040;
        v37 = v14;
        v38 = 2096;
        v39 = [v12 bytes];
        v40 = 2080;
        v41 = v22;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v33 = getLogWriter();
    [v33 log:v20 data:v12 limit:v14];
  }

  objc_autoreleasePoolPop(v8);
}

void acc_platform_packetLogging_logAccAuthProtocolMsg(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  context = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v7 = objc_alloc_init(NSDate);
    v8 = __referenceDate;
    __referenceDate = v7;
  }

  v9 = +[NSDate date];
  v10 = a3;
  v11 = [v10 bytes];
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  v43 = 0;
  v13 = [v10 length];
  v14 = acc_auth_protocol_sizeofMessage(v11, v13, &v43 + 1, &v43);
  [v9 timeIntervalSinceDate:__referenceDate];
  *&v15 = v15;
  v16 = *&v15;
  v17 = "unknown";
  v18 = @"Acc-AccAuth";
  if (v14)
  {
    if (a1)
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = @"unknown";
    }

    if (TransportTypeString)
    {
      v17 = TransportTypeString;
    }

    if (!a4)
    {
      v18 = @"iPod-AccAuth";
    }

    [NSString stringWithFormat:@"LOG; %.6f; %@; %s; %@%@; sessionID %u; msgID %#04x; ctl0 %#04x; ctl1 %#04x; payloadLen %d; data(len=%d)=", *&v16, v19, v17, v18, &stru_10022D360, a2, *v11, v11[1], v11[2], v43, v13];
  }

  else
  {
    if (a1)
    {
      v20 = *(a1 + 16);
    }

    else
    {
      v20 = @"unknown";
    }

    if (TransportTypeString)
    {
      v17 = TransportTypeString;
    }

    if (!a4)
    {
      v18 = @"iPod-AccAuth";
    }

    [NSString stringWithFormat:@"LOG; %.6f; %@; %s; %@%@; sessionID %u; %s; data(len=%d)=", *&v16, v20, v17, v18, &stru_10022D360, a2, "Unknown Message", v13, v38, v39, v40];
  }
  v21 = ;
  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    goto LABEL_30;
  }

  v22 = _logPacketDataSizeLimit;
  if (!_logPacketDataSizeLimit)
  {
    v22 = 0x10000;
  }

  if (v22 >= v13)
  {
LABEL_30:
    v23 = "";
  }

  else
  {
    if (_logPacketDataSizeLimit)
    {
      LODWORD(v13) = _logPacketDataSizeLimit;
    }

    else
    {
      LODWORD(v13) = 0x10000;
    }

    v23 = "...";
  }

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v24 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v24 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v10 bytes];
      *buf = 138544130;
      v45 = v21;
      v46 = 1040;
      v47 = v13;
      v48 = 2098;
      v49 = v29;
      v50 = 2080;
      v51 = v23;
      v30 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v31 = v24;
      v32 = OS_LOG_TYPE_DEFAULT;
LABEL_56:
      _os_log_impl(&_mh_execute_header, v31, v32, v30, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v26 = gNumLogObjects <= 21;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if (isInternalBuild)
    {
      if (v27)
      {
        v24 = *(gLogObjects + 168);
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

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v34 = [v10 bytes];
        *buf = 138413058;
        v45 = v21;
        v46 = 1040;
        v47 = v13;
        v48 = 2096;
        v49 = v34;
        v50 = 2080;
        v51 = v23;
        v30 = "%@<%{coreacc:bytes}.*P> %s";
        v31 = v24;
        v32 = OS_LOG_TYPE_INFO;
        goto LABEL_56;
      }
    }

    else
    {
      if (v27)
      {
        v24 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v24 = &_os_log_default;
        v35 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v10 bytes];
        *buf = 138413058;
        v45 = v21;
        v46 = 1040;
        v47 = v13;
        v48 = 2096;
        v49 = v37;
        v50 = 2080;
        v51 = v23;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v36 = getLogWriter();
    [v36 log:v21 data:v10 limit:v13];
  }

  objc_autoreleasePoolPop(context);
}

void acc_platform_packetLogging_logMFi4AuthProtocolMsg(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v11 = objc_alloc_init(NSDate);
    v12 = __referenceDate;
    __referenceDate = v11;
  }

  v13 = +[NSDate date];
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  MsgLen = iAP2MsgGetMsgLen(a3);
  v41 = a3;
  if (MsgLen)
  {
    v16 = *(a3 + 24);
    v17 = MsgLen;
    v18 = [NSData dataWithBytes:v16 length:MsgLen];
    [v13 timeIntervalSinceDate:__referenceDate];
    *&v19 = v19;
    v20 = *&v19;
    if (a1)
    {
      v21 = *(a1 + 16);
    }

    else
    {
      v21 = @"unknown";
    }

    v23 = "unknown";
    if (TransportTypeString)
    {
      v23 = TransportTypeString;
    }

    v24 = @"Acc-MFi4Auth";
    if (!a4)
    {
      v24 = @"iPod-MFi4Auth";
    }

    v25 = @"plain";
    if (a5)
    {
      v25 = @"raw";
    }

    v22 = [NSString stringWithFormat:@"LOG %.6f; %@; %s; %@ %@; session=0x%02x; payload(len=%d)=", *&v20, v21, v23, v24, v25, a2, v17];;
  }

  else
  {
    LODWORD(v17) = 0;
    v18 = 0;
    v22 = 0;
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    v26 = "";
  }

  else
  {
    v26 = "";
    if (_logPacketDataSizeLimit && _logPacketDataSizeLimit < v17)
    {
      if (_logPacketDataSizeLimit)
      {
        LODWORD(v17) = _logPacketDataSizeLimit;
      }

      else
      {
        LODWORD(v17) = 0x10000;
      }

      v26 = "...";
    }
  }

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v27 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v27 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(v41 + 24);
      *buf = 138544130;
      v43 = v22;
      v44 = 1040;
      v45 = v17;
      v46 = 2098;
      v47 = v32;
      v48 = 2080;
      v49 = v26;
      v33 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v34 = v27;
      v35 = OS_LOG_TYPE_DEFAULT;
LABEL_50:
      _os_log_impl(&_mh_execute_header, v34, v35, v33, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v29 = gNumLogObjects <= 21;
    }

    else
    {
      v29 = 1;
    }

    v30 = !v29;
    if (isInternalBuild)
    {
      if (v30)
      {
        v27 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v27 = &_os_log_default;
        v36 = &_os_log_default;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v37 = *(v41 + 24);
        *buf = 138413058;
        v43 = v22;
        v44 = 1040;
        v45 = v17;
        v46 = 2096;
        v47 = v37;
        v48 = 2080;
        v49 = v26;
        v33 = "%@<%{coreacc:bytes}.*P> %s";
        v34 = v27;
        v35 = OS_LOG_TYPE_INFO;
        goto LABEL_50;
      }
    }

    else
    {
      if (v30)
      {
        v27 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v27 = &_os_log_default;
        v38 = &_os_log_default;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(v41 + 24);
        *buf = 138413058;
        v43 = v22;
        v44 = 1040;
        v45 = v17;
        v46 = 2096;
        v47 = v40;
        v48 = 2080;
        v49 = v26;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v39 = getLogWriter();
    [v39 log:v22 data:v18 limit:v17];
  }

  objc_autoreleasePoolPop(v10);
}

void acc_platform_packetLogging_logParsedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v11 = objc_alloc_init(NSDate);
    v12 = __referenceDate;
    __referenceDate = v11;
  }

  v13 = +[NSDate date];
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  if (a5)
  {
    v15 = @"Acc-%@";
  }

  else
  {
    v15 = @"iPod-%@";
  }

  v16 = [NSString stringWithFormat:v15, a3];
  [v13 timeIntervalSinceDate:__referenceDate];
  *&v17 = v17;
  v18 = *&v17;
  if (a1)
  {
    v19 = *(a1 + 16);
  }

  else
  {
    v19 = @"unknown";
  }

  v20 = "unknown";
  if (TransportTypeString)
  {
    v20 = TransportTypeString;
  }

  v21 = [NSString stringWithFormat:@"LOG %.6f; %@; %s; %@; %@; data=%@", *&v18, v19, v20, v16, a2, a4];;
  if (!acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v24 = gNumLogObjects <= 21;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    if (isInternalBuild)
    {
      if (v25)
      {
        v22 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v22 = &_os_log_default;
        v29 = &_os_log_default;
      }

      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      *buf = 138543362;
      v33 = v21;
    }

    else
    {
      if (v25)
      {
        v22 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v22 = &_os_log_default;
        v30 = &_os_log_default;
      }

      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      *buf = 138543362;
      v33 = v21;
    }

    v27 = v22;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_42;
  }

  if (gLogObjects && gNumLogObjects >= 22)
  {
    v22 = *(gLogObjects + 168);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v22 = &_os_log_default;
    v26 = &_os_log_default;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v21;
    v27 = v22;
    v28 = OS_LOG_TYPE_DEFAULT;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}@", buf, 0xCu);
  }

LABEL_43:

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v31 = getLogWriter();
    [v31 log:v21];
  }

  objc_autoreleasePoolPop(v10);
}

void acc_platform_packetLogging_logData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v10 = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v11 = objc_alloc_init(NSDate);
    v12 = __referenceDate;
    __referenceDate = v11;
  }

  v13 = +[NSDate date];
  v14 = a4;
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  if (a5)
  {
    v16 = @"Acc-%@";
  }

  else
  {
    v16 = @"iPod-%@";
  }

  v17 = [NSString stringWithFormat:v16, a3];
  v18 = [v14 length];
  [v13 timeIntervalSinceDate:__referenceDate];
  *&v19 = v19;
  v20 = *&v19;
  if (a1)
  {
    v21 = *(a1 + 16);
  }

  else
  {
    v21 = @"unknown";
  }

  v22 = "unknown";
  if (TransportTypeString)
  {
    v22 = TransportTypeString;
  }

  v23 = [NSString stringWithFormat:@"LOG %.6f; %@; %s; %@; %@; data(len=%d)=", *&v20, v21, v22, v17, a2, v18];;
  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    goto LABEL_21;
  }

  v24 = _logPacketDataSizeLimit;
  if (!_logPacketDataSizeLimit)
  {
    v24 = 0x10000;
  }

  if (v24 >= v18)
  {
LABEL_21:
    v25 = "";
  }

  else
  {
    if (_logPacketDataSizeLimit)
    {
      LODWORD(v18) = _logPacketDataSizeLimit;
    }

    else
    {
      LODWORD(v18) = 0x10000;
    }

    v25 = "...";
  }

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v26 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v26 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v38 = v23;
      v39 = 1040;
      v40 = v18;
      v41 = 2098;
      v42 = [v14 bytes];
      v43 = 2080;
      v44 = v25;
      v31 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v32 = v26;
      v33 = OS_LOG_TYPE_DEFAULT;
LABEL_47:
      _os_log_impl(&_mh_execute_header, v32, v33, v31, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v28 = gNumLogObjects <= 21;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    if (isInternalBuild)
    {
      if (v29)
      {
        v26 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v26 = &_os_log_default;
        v34 = &_os_log_default;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v38 = v23;
        v39 = 1040;
        v40 = v18;
        v41 = 2096;
        v42 = [v14 bytes];
        v43 = 2080;
        v44 = v25;
        v31 = "%@<%{coreacc:bytes}.*P> %s";
        v32 = v26;
        v33 = OS_LOG_TYPE_INFO;
        goto LABEL_47;
      }
    }

    else
    {
      if (v29)
      {
        v26 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v26 = &_os_log_default;
        v35 = &_os_log_default;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v38 = v23;
        v39 = 1040;
        v40 = v18;
        v41 = 2096;
        v42 = [v14 bytes];
        v43 = 2080;
        v44 = v25;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v36 = getLogWriter();
    [v36 log:v23 data:v14 limit:v18];
  }

  objc_autoreleasePoolPop(v10);
}

void acc_platform_packetLogging_logEventVA(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (__referenceDate)
  {
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = objc_alloc_init(NSDate);
    v10 = __referenceDate;
    __referenceDate = v9;

    if (!a1)
    {
LABEL_15:
      if (gLogObjects)
      {
        v22 = gNumLogObjects < 22;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v11 = &_os_log_default;
        v23 = &_os_log_default;
      }

      else
      {
        v11 = *(gLogObjects + 168);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        acc_platform_packetLogging_logEventVA_cold_7(v11);
      }

      goto LABEL_57;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v11 = +[NSDate date];
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  [v11 timeIntervalSinceDate:__referenceDate];
  *&v13 = v13;
  v14 = *&v13;
  v15 = *(a1 + 16);
  if (!TransportTypeString)
  {
    TransportTypeString = "unknown";
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = "null";
  }

  v17 = [NSString alloc];
  v18 = [NSString stringWithUTF8String:a3];
  v19 = [v17 initWithFormat:v18 arguments:a4];
  v20 = [NSString stringWithFormat:@"LOG %.6f; %@; %s; Event; %s; %@", *&v14, v15, TransportTypeString, v16, v19];;

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v21 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 138543362;
    v35 = v20;
    v28 = "%{public}@";
    v29 = v21;
    v30 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_46;
  }

  isInternalBuild = platform_systemInfo_isInternalBuild();
  if (gLogObjects)
  {
    v25 = gNumLogObjects <= 21;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  if (!isInternalBuild)
  {
    if (v26)
    {
      v21 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      acc_platform_packetLogging_logEventVA_cold_2(v20, v21);
    }

    goto LABEL_52;
  }

  if (v26)
  {
    v21 = *(gLogObjects + 168);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v21 = &_os_log_default;
    v31 = &_os_log_default;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v20;
    v28 = "%@";
    v29 = v21;
    v30 = OS_LOG_TYPE_INFO;
LABEL_46:
    _os_log_impl(&_mh_execute_header, v29, v30, v28, buf, 0xCu);
  }

LABEL_52:

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v33 = getLogWriter();
    [v33 log:v20];
  }

LABEL_57:
  objc_autoreleasePoolPop(v8);
}

void acc_platform_packetLogging_logSNTPTimeSyncMsg(uint64_t a1, void *a2, int a3)
{
  context = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v6 = objc_alloc_init(NSDate);
    v7 = __referenceDate;
    __referenceDate = v6;
  }

  v8 = +[NSDate date];
  v9 = a2;
  v10 = [v9 bytes];
  v11 = *v10;
  v12 = v10[1];
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  v14 = [v9 length];
  [v8 timeIntervalSinceDate:__referenceDate];
  *&v15 = v15;
  v16 = "unknown";
  v17 = @"Time-FromAcc";
  v18 = *&v15;
  if (v11 < 2)
  {
    if (a1)
    {
      v20 = *(a1 + 16);
    }

    else
    {
      v20 = @"unknown";
    }

    if (TransportTypeString)
    {
      v16 = TransportTypeString;
    }

    if (!a3)
    {
      v17 = @"Time-ToAcc";
    }

    [NSString stringWithFormat:@"LOG; %.6f; %@; %s; %@%@; %s; data(len=%d)=", *&v18, v20, v16, v17, &stru_10022D360, "Unknown Message", v14, v35];
  }

  else
  {
    if (a1)
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = @"unknown";
    }

    if (TransportTypeString)
    {
      v16 = TransportTypeString;
    }

    if (!a3)
    {
      v17 = @"Time-ToAcc";
    }

    [NSString stringWithFormat:@"LOG; %.6f; %@; %s; %@%@; SNTP BD Cmd %#04x; packetLen %#04x; data(len=%d)=", *&v18, v19, v16, v17, &stru_10022D360, v12, v11, v14];
  }
  v21 = ;
  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    goto LABEL_30;
  }

  v22 = _logPacketDataSizeLimit;
  if (!_logPacketDataSizeLimit)
  {
    v22 = 0x10000;
  }

  if (v22 >= v14)
  {
LABEL_30:
    v23 = "";
  }

  else
  {
    if (_logPacketDataSizeLimit)
    {
      LODWORD(v14) = _logPacketDataSizeLimit;
    }

    else
    {
      LODWORD(v14) = 0x10000;
    }

    v23 = "...";
  }

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v24 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v24 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v38 = v21;
      v39 = 1040;
      v40 = v14;
      v41 = 2098;
      v42 = [v9 bytes];
      v43 = 2080;
      v44 = v23;
      v29 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v30 = v24;
      v31 = OS_LOG_TYPE_DEFAULT;
LABEL_56:
      _os_log_impl(&_mh_execute_header, v30, v31, v29, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v26 = gNumLogObjects <= 21;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if (isInternalBuild)
    {
      if (v27)
      {
        v24 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v24 = &_os_log_default;
        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v38 = v21;
        v39 = 1040;
        v40 = v14;
        v41 = 2096;
        v42 = [v9 bytes];
        v43 = 2080;
        v44 = v23;
        v29 = "%@<%{coreacc:bytes}.*P> %s";
        v30 = v24;
        v31 = OS_LOG_TYPE_INFO;
        goto LABEL_56;
      }
    }

    else
    {
      if (v27)
      {
        v24 = *(gLogObjects + 168);
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

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v38 = v21;
        v39 = 1040;
        v40 = v14;
        v41 = 2096;
        v42 = [v9 bytes];
        v43 = 2080;
        v44 = v23;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v34 = getLogWriter();
    [v34 log:v21 data:v9 limit:v14];
  }

  objc_autoreleasePoolPop(context);
}

void acc_platform_packetLogging_logQiAuthMsg(uint64_t a1, void *a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v7 = objc_alloc_init(NSDate);
    v8 = __referenceDate;
    __referenceDate = v7;
  }

  v9 = +[NSDate date];
  v10 = a2;
  v11 = [v10 length];
  v12 = *[v10 bytes];
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  v14 = qiAuth_protocol_msgTypeString(v12 & 0xF);
  if (a2 && (v15 = v14, [v10 length]))
  {
    [v9 timeIntervalSinceDate:__referenceDate];
    v17 = v16;
    if (a1)
    {
      v18 = *(a1 + 16);
    }

    else
    {
      v18 = @"unknown";
    }

    if (!TransportTypeString)
    {
      TransportTypeString = "unknown";
    }

    if (a3)
    {
      v20 = @"Acc-QiAuth";
    }

    else
    {
      v20 = @"iPod-QiAuth";
    }

    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"LOG %.6f; %@; %s; %@; msg %d(%s); ver %d; payload(len=%u)=", v17, v18, TransportTypeString, v20, *[v10 bytes] & 0xF, v15, *objc_msgSend(v10, "bytes") >> 4, v11);;
  }

  else
  {
    v19 = 0;
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    goto LABEL_25;
  }

  v21 = _logPacketDataSizeLimit;
  if (!_logPacketDataSizeLimit)
  {
    v21 = 0x10000;
  }

  if (v21 >= v11)
  {
LABEL_25:
    v22 = "";
  }

  else
  {
    if (_logPacketDataSizeLimit)
    {
      LODWORD(v11) = _logPacketDataSizeLimit;
    }

    else
    {
      LODWORD(v11) = 0x10000;
    }

    v22 = "...";
  }

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v23 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v23 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v35 = v19;
      v36 = 1040;
      v37 = v11;
      v38 = 2098;
      v39 = [v10 bytes];
      v40 = 2080;
      v41 = v22;
      v28 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v29 = v23;
      v30 = OS_LOG_TYPE_DEFAULT;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v29, v30, v28, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v25 = gNumLogObjects <= 21;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    if (isInternalBuild)
    {
      if (v26)
      {
        v23 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v23 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v35 = v19;
        v36 = 1040;
        v37 = v11;
        v38 = 2096;
        v39 = [v10 bytes];
        v40 = 2080;
        v41 = v22;
        v28 = "%@<%{coreacc:bytes}.*P> %s";
        v29 = v23;
        v30 = OS_LOG_TYPE_INFO;
        goto LABEL_51;
      }
    }

    else
    {
      if (v26)
      {
        v23 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v23 = &_os_log_default;
        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v35 = v19;
        v36 = 1040;
        v37 = v11;
        v38 = 2096;
        v39 = [v10 bytes];
        v40 = 2080;
        v41 = v22;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v33 = getLogWriter();
    [v33 log:v19 data:v10 limit:v11];
  }

  objc_autoreleasePoolPop(v6);
}

void acc_platform_packetLogging_logT56Msg(uint64_t a1, void *a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v7 = objc_alloc_init(NSDate);
    v8 = __referenceDate;
    __referenceDate = v7;
  }

  v9 = +[NSDate date];
  v10 = a2;
  v11 = [v10 length];
  v12 = *[v10 bytes];
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  v14 = t56_protocol_msgTypeString(v12);
  if (a2 && (v15 = v14, [v10 length]))
  {
    [v9 timeIntervalSinceDate:__referenceDate];
    v17 = v16;
    if (a1)
    {
      v18 = *(a1 + 16);
    }

    else
    {
      v18 = @"unknown";
    }

    if (!TransportTypeString)
    {
      TransportTypeString = "unknown";
    }

    if (a3)
    {
      v20 = @"Acc-T56";
    }

    else
    {
      v20 = @"iPod-T56";
    }

    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"LOG %.6f; %@; %s; %@; msg %d(%s); payload(len=%u)=", v17, v18, TransportTypeString, v20, *[v10 bytes], v15, v11);;
  }

  else
  {
    v19 = 0;
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_isLogPacketDataAsMsg_cold_1();
  }

  if (_logPacketDataSizeLimit < 0)
  {
    goto LABEL_25;
  }

  v21 = _logPacketDataSizeLimit;
  if (!_logPacketDataSizeLimit)
  {
    v21 = 0x10000;
  }

  if (v21 >= v11)
  {
LABEL_25:
    v22 = "";
  }

  else
  {
    if (_logPacketDataSizeLimit)
    {
      LODWORD(v11) = _logPacketDataSizeLimit;
    }

    else
    {
      LODWORD(v11) = 0x10000;
    }

    v22 = "...";
  }

  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v23 = *(gLogObjects + 168);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v23 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v35 = v19;
      v36 = 1040;
      v37 = v11;
      v38 = 2098;
      v39 = [v10 bytes];
      v40 = 2080;
      v41 = v22;
      v28 = "%{public}@<%{public,coreacc:bytes}.*P> %s";
      v29 = v23;
      v30 = OS_LOG_TYPE_DEFAULT;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v29, v30, v28, buf, 0x26u);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v25 = gNumLogObjects <= 21;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    if (isInternalBuild)
    {
      if (v26)
      {
        v23 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v23 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v35 = v19;
        v36 = 1040;
        v37 = v11;
        v38 = 2096;
        v39 = [v10 bytes];
        v40 = 2080;
        v41 = v22;
        v28 = "%@<%{coreacc:bytes}.*P> %s";
        v29 = v23;
        v30 = OS_LOG_TYPE_INFO;
        goto LABEL_51;
      }
    }

    else
    {
      if (v26)
      {
        v23 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v23 = &_os_log_default;
        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v35 = v19;
        v36 = 1040;
        v37 = v11;
        v38 = 2096;
        v39 = [v10 bytes];
        v40 = 2080;
        v41 = v22;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%@<%{coreacc:bytes}.*P> %s", buf, 0x26u);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v33 = getLogWriter();
    [v33 log:v19 data:v10 limit:v11];
  }

  objc_autoreleasePoolPop(v6);
}

void acc_platform_packetLogging_logGenericMFiTLV(uint64_t a1, void *a2, void *a3, int a4)
{
  context = objc_autoreleasePoolPush();
  if (!__referenceDate)
  {
    v7 = objc_alloc_init(NSDate);
    v8 = __referenceDate;
    __referenceDate = v7;
  }

  v9 = +[NSDate date];
  v35 = a3;
  v32 = [v35 length];
  v10 = a2;
  TransportTypeString = acc_endpoint_getTransportTypeString(a1);
  if (a2)
  {
    v12 = v10;
    v13 = [NSString stringWithFormat:@"TLV8-Property-%@", v10];
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = v10;
    v13 = @"TLV8-Message";
    if (!a3)
    {
LABEL_10:
      TLVDescription = 0;
      v18 = 0;
      goto LABEL_17;
    }
  }

  if (![v35 length])
  {
    goto LABEL_10;
  }

  TLVDescription = genericMFi_util_createTLVDescription(v35, a2 != 0);
  [v9 timeIntervalSinceDate:__referenceDate];
  *&v15 = v15;
  v16 = *&v15;
  if (a1)
  {
    v17 = *(a1 + 16);
  }

  else
  {
    v17 = @"unknown";
  }

  v19 = "unknown";
  if (TransportTypeString)
  {
    v19 = TransportTypeString;
  }

  v20 = @"Acc-GenericMFi";
  if (!a4)
  {
    v20 = @"iPod-GenericMFi";
  }

  v18 = [NSString stringWithFormat:@"LOG %.6f; %@; %s; %@; %@; tlv(len=%u)=\n%@", *&v16, v17, v19, v20, v13, v32, TLVDescription];;
LABEL_17:
  if (acc_platform_packetLogging_isLogPacketDataAsMsg())
  {
    if (gLogObjects && gNumLogObjects >= 22)
    {
      v21 = *(gLogObjects + 168);
      v22 = v35;
    }

    else
    {
      v22 = v35;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v18;
      v27 = v21;
      v28 = OS_LOG_TYPE_DEFAULT;
LABEL_42:
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    isInternalBuild = platform_systemInfo_isInternalBuild();
    if (gLogObjects)
    {
      v24 = gNumLogObjects <= 21;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    if (isInternalBuild)
    {
      v22 = v35;
      if (v25)
      {
        v21 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v21 = &_os_log_default;
        v29 = &_os_log_default;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v37 = v18;
        v27 = v21;
        v28 = OS_LOG_TYPE_INFO;
        goto LABEL_42;
      }
    }

    else
    {
      v22 = v35;
      if (v25)
      {
        v21 = *(gLogObjects + 168);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v21 = &_os_log_default;
        v30 = &_os_log_default;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        acc_platform_packetLogging_logGenericMFiTLV_cold_2(v18, v21);
      }
    }
  }

  if (__registerForLoggingPrefsNotification_onceToken != -1)
  {
    acc_platform_packetLogging_logiAP2Packet_cold_5();
  }

  if (_logPacketToFile)
  {
    v31 = getLogWriter();
    [v31 log:v18];
  }

  objc_autoreleasePoolPop(context);
}

void ____registerForLoggingPrefsNotification_block_invoke(id a1)
{
  readLoggingPrefs();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, receivedNotification, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void readLoggingPrefs()
{
  _logPacketDataAsInfo = CFPreferencesGetAppBooleanValue(@"IAPLogging", @"com.apple.Preferences", 0);
  _logPacketToFile = CFPreferencesGetAppBooleanValue(@"PrintIapPackets", @"com.apple.iapd", 0);
  _logPacketDataSizeLimit = CFPreferencesGetAppIntegerValue(@"PacketLoggingDataSizeLimit", @"com.apple.iapd", 0);
  if (gLogObjects && gNumLogObjects >= 22)
  {
    v0 = *(gLogObjects + 168);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315650;
    v4 = "readLoggingPrefs";
    v5 = 1024;
    v6 = 73;
    v7 = 2048;
    v8 = _logPacketDataSizeLimit;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s:%d _logPacketDataSizeLimit %ld", &v3, 0x1Cu);
  }

  if (_logPacketToFile)
  {
    openLogFileWriter();
  }

  else if (_logFileWriter)
  {
    [_logFileWriter flush];
    v2 = _logFileWriter;
    _logFileWriter = 0;
  }
}

void receivedNotification()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 15;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 112);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Logging preferences changed!", v3, 2u);
  }

  readLoggingPrefs();
}

void openLogFileWriter()
{
  if (!_logFileWriter)
  {
    v0 = [[LogFileWriter alloc] initFor:@"accessoryd"];
    v1 = _logFileWriter;
    _logFileWriter = v0;

    if (!__referenceDate)
    {
      __referenceDate = objc_alloc_init(NSDate);

      _objc_release_x1();
    }
  }
}

uint64_t iAP2BuffPoolGetBuffSize(unsigned int a1)
{
  if (a1 >= 3)
  {
    iAP2BuffPoolGetBuffSize_cold_1();
  }

  return (iAP2MsgPreSendCtlProcess() + 27) & 0xFFFFFFFC;
}

uint64_t iAP2BuffPoolInit(unsigned int a1, uint64_t a2, int a3, __int16 a4, uint64_t a5)
{
  if (a1 >= 3)
  {
    iAP2BuffPoolInit_cold_1();
  }

  *a5 = a1;
  *(a5 + 4) = a3;
  *(a5 + 2) = a4;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  __iAP2BuffPoolInitBuffList(a5);
  return a5;
}

uint64_t iAP2BuffPoolCleanup(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    iAP2BuffPoolCleanup_cold_1();
  }

  result = iAP2LinkRunLoopInitImplementation(a1);
  *a1 = 3;
  *(a1 + 1) = 0;
  *(a1 + 1) = 0;
  *(a1 + 1) = 0;
  return result;
}

void sub_1000A2628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void *logObjectForModule_30()
{
  if (gLogObjects && gNumLogObjects >= 32)
  {
    return *(gLogObjects + 248);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_5();
  }

  return v0;
}

BOOL _isSubscribingForMediaItemAttribute(_BOOL8 result)
{
  if (result)
  {
    if (*(result + 16))
    {
      v1 = *(result + 8);
      v2.length = CFArrayGetCount(v1);
      v2.location = 0;
      return CFArrayContainsValue(v1, v2, 0x1A) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _artworkFileTransferIDSent(void *a1, int a2)
{
  if (a1)
  {
    v4 = a1[6];
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v5 = *(gLogObjects + 248);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_5();
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

      v11 = 134219266;
      v12 = v6;
      v13 = 1024;
      v14 = v7;
      v15 = 1024;
      v16 = a2;
      v17 = 1024;
      MsgID = iAP2MsgGetMsgID(a1);
      v19 = 1024;
      MsgLen = iAP2MsgGetMsgLen(a1);
      v21 = 2080;
      label = dispatch_queue_get_label(0);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Artwork File transfer ID sent callback fired! context=%p (type=%d) needDelete=%d msgID=%xh msgLen=%d currentDispatchQueue: %s", &v11, 0x2Eu);
    }

    if (v4)
    {
      if (*(v4 + 12) == 2)
      {
        if (*v4)
        {
          Feature = iap2_feature_getFeature(*v4, 0xEu);
          if (Feature)
          {
            _handleFileTransferIDSent(@"#Artwork", v4, (Feature + 64), _artworkFileTransferEndHandler);
          }
        }
      }
    }

    if (a2)
    {
      v9 = a1[6];
      if (v9)
      {
        free(v9);
        a1[6] = 0;
      }

      v10 = a1[3];
      if (v10)
      {
        free(v10);
      }

      free(a1);
    }
  }
}

void _checkMoveWindowAndRequestPBQList(int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v22 = -1431655766;
  started = _calculateStartIndex(a4, a2, *(a4 + 88), *(a4 + 28), *(a4 + 32), &v22);
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v9 = *(gLogObjects + 248);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_5();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a3 + 8);
    v11 = *(a4 + 83);
    v12 = *(a4 + 84);
    v13 = *(a4 + 88);
    v14 = *(a4 + 28);
    v15 = *(a4 + 32);
    *buf = 138414594;
    v24 = v10;
    v25 = 1024;
    v26 = a1;
    v27 = 1024;
    v28 = v11;
    v29 = 1024;
    v30 = a2;
    v31 = 1024;
    v32 = v12;
    v33 = 1024;
    v34 = v13;
    v35 = 1024;
    v36 = v14;
    v37 = 1024;
    v38 = v15;
    v39 = 1024;
    v40 = started;
    v41 = 1024;
    v42 = v22;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_checkMoveWindowAndRequestPBQList: %@, forceListRequest=%d autoChoosePBQListStartIndex=%d startIndexOverride=%u startIndex=%u contentSize=%u trackIndex=%u trackCount=%u -> newIndex=%u actualCount=%u", buf, 0x42u);
  }

  if ((a1 & 1) != 0 || started != *(a4 + 84))
  {
    *(a4 + 84) = started;
    v16 = *(a4 + 96);
    if (v16)
    {
      if (!a3 || (v17 = *(a3 + 8)) == 0)
      {
        v17 = 0;
      }

      platform_nowPlaying_cancelRequestPlaybackQueueListInfo(v17, v16);
      v18 = *(a4 + 96);
      if (v18)
      {
        CFRelease(v18);
        *(a4 + 96) = 0;
      }
    }

    v19 = CFUUIDCreate(kCFAllocatorDefault);
    v20 = CFUUIDCreateString(kCFAllocatorDefault, v19);
    *(a4 + 96) = v20;
    if (!a3 || (v21 = *(a3 + 8)) == 0)
    {
      v21 = 0;
    }

    platform_nowPlaying_requestPlaybackQueueListInfo(v21, v20, *(a4 + 84), *(a4 + 88), *(a4 + 92));
    if (v19)
    {
      CFRelease(v19);
    }
  }
}

uint64_t _calculateStartIndex(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int *a6)
{
  if (a3 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (!a3)
  {
    v6 = a5;
  }

  if (v7 >= a5 || *(a1 + 83) != 0)
  {
    v9 = a4 - (v6 >> 1);
    if (a4 < v6 >> 1)
    {
      v9 = 0;
    }

    v10 = v9 - v7;
    if (v7 > v9)
    {
      v10 = v7 - v9;
    }

    if (v10 > v6 >> 2)
    {
      v7 = v9;
    }

    if (!*(a1 + 83))
    {
      v7 = v9;
    }
  }

  if (v7 + v6 <= a5)
  {
    result = v7;
  }

  else
  {
    result = a5 - v6;
  }

  if (a6)
  {
    if (a5 - result < v6)
    {
      v6 = a5 - result;
    }

    *a6 = v6;
  }

  return result;
}

uint64_t _checkIdentificationInfo_10(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgNowPlayingList, 4u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_features_createFeature(a1, 0xEu);
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

BOOL _isSubscribingForPlaybackAttribute(_BOOL8 result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v4.length = CFArrayGetCount(*(result + 16));
      v4.location = 0;
      return CFArrayContainsValue(v2, v4, a2) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _calculateStrParamSize(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  CStringFromCFString = createCStringFromCFString(a1, 0x8000100u);
  if (!CStringFromCFString)
  {
    return 5;
  }

  v2 = CStringFromCFString;
  v3 = strlen(CStringFromCFString) + 5;
  free(v2);
  return v3;
}

uint64_t OUTLINED_FUNCTION_35_5()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

void OUTLINED_FUNCTION_50_4(float a1)
{
  *(v2 - 144) = a1;
  *(v2 - 140) = v1;
  *(v2 - 132) = 1024;
}

void *OUTLINED_FUNCTION_51_2()
{

  return malloc_type_malloc(0x10uLL, 0x102004075F474C6uLL);
}

void OUTLINED_FUNCTION_74_2(float a1)
{
  *(v3 - 112) = a1;
  *(v3 - 108) = v1;
  *(v3 - 100) = 1024;
  *(v3 - 98) = v2;
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  a11 = v12;

  return iAP2MsgGetDataAsU32(v11, &a11);
}

BOOL OUTLINED_FUNCTION_80_2()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_84_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x14u);
}

uint64_t OUTLINED_FUNCTION_97_2()
{
  *(v1 - 144) = 0;

  return CFNumberGetValue(v0, kCFNumberSInt32Type, (v1 - 144));
}

const void *OUTLINED_FUNCTION_98_1@<X0>(const void **a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(v6 + 82);
  v8 = *a1;

  return CFDictionaryGetValue(v5, v8);
}

void OUTLINED_FUNCTION_101_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x12u);
}

void __iAP2FileTransferDataSentCB(uint64_t *a1, uint64_t **a2)
{
  v4 = *(a2 + 111);
  LOBYTE(v5) = v4;
  if ((_iAP2LogEnableMask & 4) != 0)
  {
    v6 = gLogObjects;
    v7 = gNumLogObjects;
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
      v5 = *(a2 + 111);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v24 = 134218240;
        v25 = v6;
        v26 = 1024;
        v27 = v7;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v24, 0x12u);
        v5 = *(a2 + 111);
      }
    }

    else
    {
      v9 = *(gLogObjects + 152);
      v5 = *(a2 + 111);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 109);
      v18 = *(a2 + 26);
      v19 = *a2;
      v20 = **a2;
      v21 = *(*a2 + 96);
      v24 = 136317698;
      v25 = "__iAP2FileTransferDataSentCB";
      v26 = 1024;
      v27 = 476;
      v28 = 2048;
      *v29 = a1;
      *&v29[8] = 2048;
      v30 = a2;
      v31 = 1024;
      v32 = v17;
      v33 = 1024;
      v34 = v18;
      v35 = 1024;
      v36 = (v5 >> 3) & 1;
      v37 = 1024;
      v38 = 0;
      v39 = 2048;
      v40 = v19;
      v41 = 2048;
      v42 = v20;
      v43 = 1024;
      v44 = v21;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s:%d link %p, fileXfer %p->(buffID %u, state %u, bDataSendQueued %d->%d, link %p->(linkBuffer %p, maxOutPacketSize %d))", &v24, 0x58u);
      LOBYTE(v5) = *(a2 + 111);
    }
  }

  *(a2 + 111) = v5 & 0xF7;
  if (a1 && *a2 == a1)
  {
    v11 = *(a2 + 26);
    if (v11 > 9)
    {
      goto LABEL_38;
    }

    if (((1 << v11) & 0x32A) != 0)
    {
      return;
    }

    if (v11 == 2)
    {
      __iAP2FileTransferSendBufferPacket(a2, 0, 0);
      return;
    }

    if (v11 == 4)
    {
      if ((v4 & 8) != 0)
      {
        v12 = a2[7];
        if (v12)
        {
          (v12)(a2, a2[8]);
        }
      }
    }

    else
    {
LABEL_38:
      if (_iAP2LogEnableMask)
      {
        v22 = logObjectForModule_31();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a2 + 26);
          v24 = 136315650;
          v25 = "__iAP2FileTransferDataSentCB";
          v26 = 1024;
          v27 = 521;
          v28 = 1024;
          *v29 = v23;
          v14 = "ERROR: %s:%d Data send callback with invalid state(%u)!";
          v15 = v22;
          v16 = 24;
          goto LABEL_30;
        }
      }
    }
  }

  else if (_iAP2LogEnableMask)
  {
    if (!gLogObjects || gNumLogObjects < 20)
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
      v24 = 136315906;
      v25 = "__iAP2FileTransferDataSentCB";
      v26 = 1024;
      v27 = 528;
      v28 = 1024;
      *v29 = a1;
      *&v29[4] = 1024;
      *&v29[6] = a2;
      v14 = "ERROR: %s:%d Data send callback with invalid link(%hx)/context(%hx) combo";
      v15 = v13;
      v16 = 30;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);
    }
  }
}

void *logObjectForModule_31()
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
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v1;
}

uint64_t __iAP2FileTransferSendBufferPacket(uint64_t a1, int a2, int a3)
{
  if ((_iAP2LogEnableMask & 4) == 0)
  {
    goto LABEL_10;
  }

  if (!gLogObjects || gNumLogObjects < 20)
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 108);
    v17 = *(a1 + 109);
    v18 = *(a1 + 16);
    v19 = *(a1 + 40);
    v20 = *(a1 + 8);
    *v96 = 136317442;
    *&v96[4] = "__iAP2FileTransferSendBufferPacket";
    *&v96[12] = 1024;
    *&v96[14] = 155;
    *&v96[18] = 1024;
    *&v96[20] = a1;
    *&v96[24] = 1024;
    *v97 = v16;
    *&v97[4] = 1024;
    *&v97[6] = v17;
    *&v97[10] = 1024;
    *&v97[12] = a2;
    *&v97[16] = 1024;
    *&v97[18] = a3;
    *&v97[22] = 1024;
    *&v97[24] = v18;
    *&v97[28] = 2048;
    *&v97[30] = v19;
    *&v97[38] = 1024;
    *&v97[40] = v20;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s:%d fileXfer=%hx session=%d buffID=%d pckType=%d controlOnly=%d pBuffer=%hx buffSize=%lu curPos=%hx", v96, 0x46u);
    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_10:
    if (a3)
    {
LABEL_11:
      v96[0] = *(a1 + 109);
      v96[1] = a2;
      v8 = *a1;
      v9 = *(a1 + 108);
      v10 = 2;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      return iAP2LinkQueueSendData(v8, v96, v10, v9, v11, v12, v13, 0);
    }
  }

  v21 = *(a1 + 104);
  if (v21 != 5)
  {
    if (v21 != 2)
    {
      if (v21 == 1)
      {
        *&v97[46] = 0xAAAAAAAAAAAAAAAALL;
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v97[32] = v22;
        *&v97[16] = v22;
        *v97 = v22;
        *&v96[10] = v22;
        v23 = *(a1 + 110);
        v96[0] = *(a1 + 109);
        v96[1] = 4;
        *&v96[2] = bswap64(*(a1 + 32));
        if (v23 < 2)
        {
          if ((_iAP2LogEnableMask & 4) != 0)
          {
            if (gLogObjects && gNumLogObjects >= 20)
            {
              v51 = *(gLogObjects + 152);
            }

            else
            {
              v51 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              __iAP2FileTransferSendBufferPacket_cold_4(a1, (a1 + 110));
            }
          }

          v25 = 10;
          goto LABEL_91;
        }

        v24 = *(a1 + 120);
        if (v24 >= 0x45)
        {
          __iAP2FileTransferSendBufferPacket_cold_7();
        }

        v25 = v24 + 12;
        v26 = *(a1 + 112);
        *&v96[10] = __rev16(v26);
        if (v26 > 6)
        {
          if (v26 == 8)
          {
            __memcpy_chk();
            if ((_iAP2LogEnableMask & 4) == 0)
            {
              goto LABEL_91;
            }

            v27 = logObjectForModule_31();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_91;
            }

            v61 = *(a1 + 108);
            v62 = *(a1 + 110);
            v63 = *(a1 + 112);
            v64 = *(a1 + 120);
            *buf = 136316674;
            v99 = "__iAP2FileTransferSendBufferPacket";
            v100 = 1024;
            v101 = 235;
            v102 = 1024;
            v103 = v25;
            v104 = 1024;
            v105 = v61;
            v106 = 1024;
            v107 = v62;
            v108 = 1024;
            v109 = v63;
            v110 = 1024;
            v111 = v64;
            v32 = "%s:%d Send Buffer Setup, V2 appIcon, payloadLen=%u fileXfer: session=%u version=%u type=%u typeDataLen=%u";
LABEL_112:
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, v32, buf, 0x30u);
            goto LABEL_91;
          }

          if (v26 != 7)
          {
LABEL_109:
            if ((_iAP2LogEnableMask & 4) == 0)
            {
              goto LABEL_91;
            }

            v27 = logObjectForModule_31();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_91;
            }

            v65 = *(a1 + 108);
            v66 = *(a1 + 110);
            v67 = *(a1 + 112);
            v68 = *(a1 + 120);
            *buf = 136316674;
            v99 = "__iAP2FileTransferSendBufferPacket";
            v100 = 1024;
            v101 = 244;
            v102 = 1024;
            v103 = v25;
            v104 = 1024;
            v105 = v65;
            v106 = 1024;
            v107 = v66;
            v108 = 1024;
            v109 = v67;
            v110 = 1024;
            v111 = v68;
            v32 = "%s:%d Send Buffer Setup, V2 No typeData, payloadLen=%u fileXfer: session=%u version=%u type=%u typeDataLen=%u";
            goto LABEL_112;
          }
        }

        else if ((v26 - 4) >= 2)
        {
          if (v26 == 1)
          {
            __memcpy_chk();
            if ((_iAP2LogEnableMask & 4) == 0)
            {
              goto LABEL_91;
            }

            v27 = logObjectForModule_31();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_91;
            }

            v28 = *(a1 + 108);
            v29 = *(a1 + 110);
            v30 = *(a1 + 112);
            v31 = *(a1 + 120);
            *buf = 136316674;
            v99 = "__iAP2FileTransferSendBufferPacket";
            v100 = 1024;
            v101 = 224;
            v102 = 1024;
            v103 = v25;
            v104 = 1024;
            v105 = v28;
            v106 = 1024;
            v107 = v29;
            v108 = 1024;
            v109 = v30;
            v110 = 1024;
            v111 = v31;
            v32 = "%s:%d Send Buffer Setup, V2 callUUID, payloadLen=%u fileXfer: session=%u version=%u type=%u typeDataLen=%u";
            goto LABEL_112;
          }

          goto LABEL_109;
        }

        if (v24 >= 9)
        {
          *&v96[12] = bswap64(*(a1 + 128));
          __memcpy_chk();
        }

        if ((_iAP2LogEnableMask & 4) != 0 && (v56 = logObjectForModule_31(), os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG)))
        {
          v87 = *(a1 + 108);
          v88 = *(a1 + 110);
          v89 = *(a1 + 112);
          v90 = *(a1 + 120);
          *buf = 136316674;
          v99 = "__iAP2FileTransferSendBufferPacket";
          v100 = 1024;
          v101 = 213;
          v102 = 1024;
          v103 = v24 + 12;
          v104 = 1024;
          v105 = v87;
          v106 = 1024;
          v107 = v88;
          v108 = 1024;
          v109 = v89;
          v110 = 1024;
          v111 = v90;
          _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%s:%d Send Buffer Setup, V2 pid+libUID, payloadLen=%u fileXfer: session=%u version=%u type=%u typeDataLen=%u", buf, 0x30u);
          if (v24 > 8)
          {
            goto LABEL_91;
          }
        }

        else if (v24 >= 9)
        {
LABEL_91:
          if ((_iAP2LogEnableMask & 4) != 0)
          {
            if (gLogObjects && gNumLogObjects >= 20)
            {
              v60 = *(gLogObjects + 152);
            }

            else
            {
              v60 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v73 = *(a1 + 108);
              v74 = *(a1 + 110);
              v75 = *(a1 + 112);
              v76 = *(a1 + 120);
              *buf = 136316674;
              v99 = "__iAP2FileTransferSendBufferPacket";
              v100 = 1024;
              v101 = 261;
              v102 = 1024;
              v103 = v25;
              v104 = 1024;
              v105 = v73;
              v106 = 1024;
              v107 = v74;
              v108 = 1024;
              v109 = v75;
              v110 = 1024;
              v111 = v76;
              _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%s:%d Send Buffer Setup, QueueSendData payloadLen=%u fileXfer: session=%u version=%u type=%u typeDataLen=%u", buf, 0x30u);
            }
          }

          *(a1 + 104) = 3;
          iAP2LinkEventNotify(*a1, 1, a1);
          iAP2FileTransferRetain(a1);
          v8 = *a1;
          v9 = *(a1 + 108);
          v12 = __iAP2FileTransferDataSentCB;
          v13 = __iAP2FileTransferContextCleanupCB;
          v10 = v25;
          v11 = a1;
          return iAP2LinkQueueSendData(v8, v96, v10, v9, v11, v12, v13, 0);
        }

        if (_iAP2LogEnableMask)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v57 = *(gLogObjects + 152);
          }

          else
          {
            v57 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v69 = *(a1 + 108);
            v70 = *(a1 + 110);
            v71 = *(a1 + 112);
            v72 = *(a1 + 120);
            *buf = 136316674;
            v99 = "__iAP2FileTransferSendBufferPacket";
            v100 = 1024;
            v101 = 284;
            v102 = 1024;
            v103 = v25;
            v104 = 1024;
            v105 = v69;
            v106 = 1024;
            v107 = v70;
            v108 = 1024;
            v109 = v71;
            v110 = 1024;
            v111 = v72;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Send Buffer Setup FAILED, invalid setup data, payloadLen=%u fileXfer: session=%u version=%u type=%u typeDataLen=%u", buf, 0x30u);
          }
        }
      }

      return 0;
    }

    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    MaxPayloadSize = iAP2LinkGetMaxPayloadSize(*a1, 0);
    v36 = v33 - v34;
    v37 = v33 - v34 + 2;
    if (v37 >= MaxPayloadSize)
    {
      v38 = MaxPayloadSize;
    }

    else
    {
      v38 = v33 - v34 + 2;
    }

    *buf = v38;
    EmptySendPacket = iAP2PacketCreateEmptySendPacket(*a1, buf);
    v41 = *(EmptySendPacket + 8);
    v40 = *(EmptySendPacket + 9);
    v42 = iAP2LinkCurPckHdrSize(*a1);
    v43 = iAP2LinkCurPckChksumSize(*a1);
    *(v41 + 4) = 64;
    *(v41 + 7) = *(a1 + 108);
    v44 = v43 + v42 + *buf;
    *(EmptySendPacket + 27) = v44;
    *(EmptySendPacket + 11) = v44;
    *v40 = *(a1 + 109);
    v40[1] = a2;
    if (!*(a1 + 24))
    {
      v40[1] = a2 | 0x80;
    }

    if (v37 <= iAP2LinkGetMaxPayloadSize(*a1, EmptySendPacket))
    {
      v48 = *(a1 + 32);
      if (*(a1 + 24) + v36 >= v48 && (v48 || (*(a1 + 111) & 2) == 0))
      {
        v40[1] |= 0x40u;
        if (v33 != v34)
        {
          memcpy(v40 + 2, *(a1 + 8), v36);
        }

        if ((_iAP2LogEnableMask & 4) != 0)
        {
          v52 = logObjectForModule_31();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v91 = *(a1 + 108);
            v92 = *(a1 + 24);
            v93 = *(a1 + 32);
            v94 = *(a1 + 56);
            v95 = *(a1 + 64);
            *v96 = 136317442;
            *&v96[4] = "__iAP2FileTransferSendBufferPacket";
            *&v96[12] = 1024;
            *&v96[14] = 426;
            *&v96[18] = 1024;
            *&v96[20] = v40;
            *&v96[24] = 2048;
            *v97 = *buf;
            *&v97[8] = 1024;
            *&v97[10] = a1;
            *&v97[14] = 1024;
            *&v97[16] = v91;
            *&v97[20] = 2048;
            *&v97[22] = v92;
            *&v97[30] = 2048;
            *&v97[32] = v93;
            *&v97[40] = 1024;
            *&v97[42] = v94;
            *&v97[46] = 1024;
            *&v97[48] = v95;
            _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%s:%d Send Buffer Data (final), QueueSendData payload=%hx payloadLen=%lu fileXfer=%hx session=%u sentSize=%lu totalSize=%lu (endCB=%hx userInfo=%hx)", v96, 0x4Eu);
          }
        }

        *(a1 + 292) = iAP2TimeGetCurTimeMs();
        v53 = *(a1 + 88);
        if (v53)
        {
          v53(a1, 4, *(a1 + 96));
        }

        iAP2FileTransferRetain(a1);
        if (iAP2LinkQueueSendDataPacket(*a1, EmptySendPacket, *(a1 + 108), a1, __iAP2FileTransferDataSentCB, __iAP2FileTransferContextCleanupCB, 0))
        {
          *(a1 + 111) |= 8u;
          v54 = *a1;
          *(a1 + 8) += v36;
          *(a1 + 24) += v36;
          *(a1 + 48) += v36;
          *(a1 + 104) = 5;
          v14 = 1;
          iAP2LinkEventNotify(v54, 1, a1);
          v55 = *(a1 + 56);
          if (v55)
          {
            v55(a1, *(a1 + 64));
          }

          goto LABEL_105;
        }

        if ((_iAP2LogEnableMask & 1) == 0)
        {
          goto LABEL_104;
        }

        v58 = logObjectForModule_31();
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_104;
        }

        *v96 = 136315650;
        *&v96[4] = "__iAP2FileTransferSendBufferPacket";
        *&v96[12] = 1024;
        *&v96[14] = 455;
        *&v96[18] = 1024;
        *&v96[20] = EmptySendPacket;
        v59 = "ERROR: %s:%d Failed to iAP2LinkQueueSendDataPAcket, delete packet=%hx";
        goto LABEL_103;
      }

      memcpy(v40 + 2, *(a1 + 8), v36);
      if ((_iAP2LogEnableMask & 4) != 0)
      {
        v49 = logObjectForModule_31();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v81 = *(a1 + 108);
          v82 = *(a1 + 109);
          v83 = *(a1 + 24);
          v84 = *(a1 + 32);
          v85 = *(a1 + 56);
          v86 = *(a1 + 64);
          *v96 = 136317698;
          *&v96[4] = "__iAP2FileTransferSendBufferPacket";
          *&v96[12] = 1024;
          *&v96[14] = 383;
          *&v96[18] = 1024;
          *&v96[20] = v40;
          *&v96[24] = 2048;
          *v97 = *buf;
          *&v97[8] = 1024;
          *&v97[10] = a1;
          *&v97[14] = 1024;
          *&v97[16] = v81;
          *&v97[20] = 1024;
          *&v97[22] = v82;
          *&v97[26] = 2048;
          *&v97[28] = v83;
          *&v97[36] = 2048;
          *&v97[38] = v84;
          *&v97[46] = 1024;
          *&v97[48] = v85;
          *&v97[52] = 1024;
          *&v97[54] = v86;
          _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%s:%d Send Buffer Data (end current buffer), QueueSendData payload=%hx payloadLen=%lu fileXfer=%hx session=%u buffID=%u sentSize=%lu totalSize=%lu (endCB=%hx userInfo=%hx)", v96, 0x54u);
        }
      }

      iAP2FileTransferRetain(a1);
      if (iAP2LinkQueueSendDataPacket(*a1, EmptySendPacket, *(a1 + 108), a1, __iAP2FileTransferDataSentCB, __iAP2FileTransferContextCleanupCB, 0))
      {
        *(a1 + 111) |= 8u;
        *(a1 + 8) += v36;
        *(a1 + 24) += v36;
        v50 = *(a1 + 56);
        *(a1 + 48) += v36;
        if (v50)
        {
          v50(a1, *(a1 + 64));
        }

        goto LABEL_82;
      }

      if (_iAP2LogEnableMask)
      {
        v58 = logObjectForModule_31();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *v96 = 136315650;
          *&v96[4] = "__iAP2FileTransferSendBufferPacket";
          *&v96[12] = 1024;
          *&v96[14] = 407;
          *&v96[18] = 1024;
          *&v96[20] = EmptySendPacket;
          v59 = "ERROR: %s:%d Failed to iAP2LinkQueueSendDataPAcket, delete packet=%hx";
LABEL_103:
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v59, v96, 0x18u);
        }
      }
    }

    else
    {
      v45 = (*buf - 2);
      memcpy(v40 + 2, *(a1 + 8), v45);
      if ((_iAP2LogEnableMask & 4) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v46 = *(gLogObjects + 152);
        }

        else
        {
          v46 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v77 = *(EmptySendPacket + 27);
          v78 = *(a1 + 108);
          v79 = *(a1 + 24);
          v80 = *(a1 + 32);
          *v96 = 136317442;
          *&v96[4] = "__iAP2FileTransferSendBufferPacket";
          *&v96[12] = 1024;
          *&v96[14] = 339;
          *&v96[18] = 1024;
          *&v96[20] = a1;
          *&v96[24] = 2048;
          *v97 = *buf;
          *&v97[8] = 2048;
          *&v97[10] = v45;
          *&v97[18] = 1024;
          *&v97[20] = EmptySendPacket;
          *&v97[24] = 1024;
          *&v97[26] = v77;
          *&v97[30] = 1024;
          *&v97[32] = v78;
          *&v97[36] = 2048;
          *&v97[38] = v79;
          *&v97[46] = 2048;
          *&v97[48] = v80;
          _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%s:%d Send Buffer Data Packet, QueueSendDataPacket fileXfer=%hx payloadLen/dataLen=%lu/%lu packet=%hx packet->packetLen=%u session=%u sentSize=%lu totalSize=%lu", v96, 0x52u);
        }
      }

      iAP2FileTransferRetain(a1);
      if (iAP2LinkQueueSendDataPacket(*a1, EmptySendPacket, *(a1 + 108), a1, __iAP2FileTransferDataSentCB, __iAP2FileTransferContextCleanupCB, 0))
      {
        *(a1 + 111) |= 8u;
        *(a1 + 8) += v45;
        *(a1 + 24) += v45;
        *(a1 + 48) += v45;
LABEL_82:
        v14 = 1;
LABEL_105:
        iAP2PacketRelease(EmptySendPacket);
        return v14;
      }

      if (_iAP2LogEnableMask)
      {
        v58 = logObjectForModule_31();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *v96 = 136315650;
          *&v96[4] = "__iAP2FileTransferSendBufferPacket";
          *&v96[12] = 1024;
          *&v96[14] = 359;
          *&v96[18] = 1024;
          *&v96[20] = EmptySendPacket;
          v59 = "ERROR: %s:%d Failed to iAP2LinkQueueSendDataPacket, delete packet=%hx";
          goto LABEL_103;
        }
      }
    }

LABEL_104:
    EmptySendPacket = 0;
    v14 = 0;
    goto LABEL_105;
  }

  *(a1 + 104) = 6;
  iAP2LinkEventNotify(*a1, 1, a1);
  v47 = *(a1 + 56);
  if (v47)
  {
    v47(a1, *(a1 + 64));
  }

  iAP2FileTransferCleanup(a1);
  return 1;
}

uint64_t __iAP2FileTransferContextCleanupCB(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return iAP2FileTransferRelease(a2);
  }

  return result;
}

uint64_t iAP2FileTransferRelease(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 296) - 1;
    if (v2 > 0xC7u)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects)
        {
          v3 = gNumLogObjects < 20;
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
          v4 = *(gLogObjects + 152);
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(v1 + 109);
          v6 = *(v1 + 296);
          v8 = 136316162;
          v9 = "iAP2FileTransferRelease";
          v10 = 1024;
          v11 = 2206;
          v12 = 1024;
          v13 = v1;
          v14 = 1024;
          v15 = v5;
          v16 = 1024;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d fileXfer=%hx buffID=0x%X, ERROR!!! retainCount at %d before decrement!", &v8, 0x24u);
        }
      }
    }

    else
    {
      *(a1 + 296) = v2;
      if (!v2)
      {
        iAP2FileTransferDelete(a1);
        return 0;
      }
    }
  }

  return v1;
}

BOOL iAP2FileTransferAllocateBufferID(uint64_t a1, int a2, _BYTE *a3)
{
  result = 0;
  if (!a1 || !a3)
  {
    return result;
  }

  SessionInfo = iAP2LinkGetSessionInfo(a1, a2);
  if (!SessionInfo || SessionInfo[1] != 1)
  {
    if (_iAP2LogEnableMask)
    {
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

      result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v19 = 136315650;
      v20 = "iAP2FileTransferAllocateBufferID";
      v21 = 1024;
      v22 = 610;
      v23 = 1024;
      v24 = a2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Attempting to allocate buffer ID for non-buffer transfer session (%d)", &v19, 0x18u);
    }

    return 0;
  }

  v8 = a1 + 217;
  LODWORD(v9) = *(a1 + 216);
  LODWORD(v10) = v9 >> 3;
  v11 = v9 & 7;
  v12 = -128;
  while (1)
  {
    v13 = *(v8 + v10);
    v14 = 1 << v11;
    if ((v14 & v13) == 0)
    {
      break;
    }

    v15 = v9 + 1;
    v9 = (v9 + 1) & 0x7F;
    v10 = v9 >> 3;
    v11 = v15 & 7;
    if (__CFADD__(v12++, 1))
    {
      v13 = *(v8 + v10);
      v14 = 1 << v11;
      goto LABEL_19;
    }
  }

  v10 = v10;
LABEL_19:
  if ((v14 & v13) == 0)
  {
    *(v8 + v10) = v13 | v14;
    *(a1 + 216) = (v9 + 1) & 0x7F;
    *a3 = v9 | ((*(a1 + 184) != 0) << 7);
    return 1;
  }

  if ((_iAP2LogEnableMask & 4) == 0)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 20)
  {
    v18 = *(gLogObjects + 152);
  }

  else
  {
    v18 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  result = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    iAP2FileTransferAllocateBufferID_cold_2();
    return 0;
  }

  return result;
}

void iAP2FileTransferReleaseBufferID(unsigned __int8 *a1, int a2, unint64_t a3)
{
  if (a1)
  {
    SessionInfo = iAP2LinkGetSessionInfo(a1, a2);
    if (SessionInfo && SessionInfo[1] == 1)
    {
      a1[((a3 >> 3) & 0xF) + 217] &= ~(1 << (a3 & 7));

      iAP2LinkEventNotify(a1, 0, a3);
    }

    else if (_iAP2LogEnableMask)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v7 = *(gLogObjects + 152);
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
        v8 = 136315650;
        v9 = "iAP2FileTransferReleaseBufferID";
        v10 = 1024;
        v11 = 661;
        v12 = 1024;
        v13 = a2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Attempting to release buffer ID for non-buffer transfer session (%d)", &v8, 0x18u);
      }
    }
  }
}

uint64_t iAP2FileTransferCreate(unsigned __int8 *a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  SessionForService = iAP2LinkGetSessionForService(a1, 1);
  SessionInfo = iAP2LinkGetSessionInfo(a1, SessionForService);
  if (!a7)
  {
    iAP2FileTransferCreate_cold_2();
  }

  v18 = SessionInfo;
  if ((_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects)
    {
      v19 = gNumLogObjects < 20;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v21 = &_os_log_default;
      if (v20)
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
        v21 = &_os_log_default;
      }
    }

    else
    {
      v21 = *(gLogObjects + 152);
    }

    log = v21;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = v18[2];
      *buf = 136317186;
      v27 = "iAP2FileTransferCreate";
      v28 = 1024;
      v29 = 811;
      v30 = 1024;
      v31 = a1;
      v32 = 1024;
      v33 = a2;
      v34 = 1024;
      v35 = v24;
      v36 = 1024;
      v37 = a3;
      v38 = 1024;
      v39 = a4;
      v40 = 1024;
      v41 = a5;
      v42 = 1024;
      v43 = a6;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:%d link=%hx session=%u version=%d bufferID=%xh callback=%hx userInfo=%hx bRecvAsStream=%d", buf, 0x3Cu);
    }
  }

  *(a7 + 110) = v18[2];
  *(a7 + 104) = 0;
  *a7 = a1;
  *(a7 + 108) = a2;
  *(a7 + 109) = a3;
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  if (((a4 != 0) & a6) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  *(a7 + 111) = *(a7 + 111) & 0xF0 | v22;
  *(a7 + 112) = 0;
  *(a7 + 120) = 0;
  *(a7 + 288) = 0;
  *(a7 + 88) = 0;
  *(a7 + 96) = 0;
  *(a7 + 296) = 1;
  *(a7 + 304) = a8;
  return a7;
}

uint64_t iAP2FileTransferTypeData(uint64_t a1, unsigned int a2, unsigned __int16 *a3)
{
  if (a2 <= 8)
  {
    if (((1 << a2) & 0x4C) != 0)
    {
      goto LABEL_16;
    }

    if (((1 << a2) & 0xB0) != 0)
    {
      if (a3)
      {
        v6 = *a3;
        if (v6 >= 9)
        {
          *(a1 + 112) = a2;
          *(a1 + 120) = v6;
          *(a1 + 128) = *(a3 + 1);
          v7 = *(a3 + 1);
          v8 = *(a3 + 2);
          v9 = *(a3 + 3);
          *(a1 + 180) = *(a3 + 30);
          *(a1 + 168) = v9;
          *(a1 + 152) = v8;
          *(a1 + 136) = v7;
          return a1;
        }
      }

      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v10 = *(gLogObjects + 152);
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
          v21 = *(a1 + 109);
          if (a3)
          {
            v22 = *a3;
          }

          else
          {
            v22 = -1;
          }

          v34 = 136316162;
          v35 = "iAP2FileTransferTypeData";
          v36 = 1024;
          v37 = 928;
          v38 = 1024;
          v39 = v21;
          v40 = 1024;
          v41 = a2;
          v42 = 1024;
          v43 = v22;
          v25 = "ERROR: %s:%d buffID=0x%X type=%d typeData.len=%d WARNING: Invalid typeData.len!";
          goto LABEL_68;
        }
      }

      return a1;
    }

    if (a2 == 8)
    {
      if (a3 && *a3 >= 2u)
      {
        v11 = 8;
LABEL_27:
        *(a1 + 112) = v11;
        v12 = *a3;
        v13 = *(a3 + 1);
        *(a1 + 152) = *(a3 + 2);
        *(a1 + 136) = v13;
        *(a1 + 120) = v12;
        v14 = *(a3 + 3);
        v15 = *(a3 + 4);
        v16 = *(a3 + 5);
        *(a1 + 216) = *(a3 + 6);
        *(a1 + 200) = v16;
        *(a1 + 184) = v15;
        *(a1 + 168) = v14;
        v17 = *(a3 + 7);
        v18 = *(a3 + 8);
        v19 = *(a3 + 9);
        *(a1 + 280) = *(a3 + 20);
        *(a1 + 264) = v19;
        *(a1 + 248) = v18;
        *(a1 + 232) = v17;
        return a1;
      }

      if ((_iAP2LogEnableMask & 1) == 0)
      {
        return a1;
      }

      if (gLogObjects && gNumLogObjects >= 20)
      {
        v20 = *(gLogObjects + 152);
      }

      else
      {
        v20 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return a1;
      }

      v30 = *(a1 + 109);
      if (a3)
      {
        v31 = *a3;
      }

      else
      {
        v31 = -1;
      }

      v34 = 136316162;
      v35 = "iAP2FileTransferTypeData";
      v36 = 1024;
      v37 = 904;
      v38 = 1024;
      v39 = v30;
      v40 = 1024;
      v41 = 8;
      v42 = 1024;
      v43 = v31;
      v25 = "ERROR: %s:%d buffID=0x%X type=%d typeData.len=%d WARNING: Invalid typeData.len!";
      goto LABEL_73;
    }
  }

  if (a2 - 65534 >= 2)
  {
    if (a2 != 1)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v10 = *(gLogObjects + 152);
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
          v26 = *(a1 + 109);
          if (a3)
          {
            v27 = *a3;
          }

          else
          {
            v27 = -1;
          }

          v34 = 136316162;
          v35 = "iAP2FileTransferTypeData";
          v36 = 1024;
          v37 = 962;
          v38 = 1024;
          v39 = v26;
          v40 = 1024;
          v41 = a2;
          v42 = 1024;
          v43 = v27;
          v25 = "ERROR: %s:%d buffID=0x%X type=%d typeData.len=%d ERROR: Invalid type!";
          goto LABEL_68;
        }
      }

      return a1;
    }

    if (a3 && *a3 >= 0x20u)
    {
      v11 = 1;
      goto LABEL_27;
    }

    if ((_iAP2LogEnableMask & 1) == 0)
    {
      return a1;
    }

    if (gLogObjects && gNumLogObjects >= 20)
    {
      v20 = *(gLogObjects + 152);
    }

    else
    {
      v20 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    v28 = *(a1 + 109);
    if (a3)
    {
      v29 = *a3;
    }

    else
    {
      v29 = -1;
    }

    v34 = 136316162;
    v35 = "iAP2FileTransferTypeData";
    v36 = 1024;
    v37 = 884;
    v38 = 1024;
    v39 = v28;
    v40 = 1024;
    v41 = 1;
    v42 = 1024;
    v43 = v29;
    v25 = "ERROR: %s:%d buffID=0x%X type=%d typeData.len=%d WARNING: Invalid typeData.len!";
LABEL_73:
    v32 = v20;
    goto LABEL_74;
  }

LABEL_16:
  if (!a3 || !*a3)
  {
    *(a1 + 112) = a2;
    *(a1 + 120) = 0;
    return a1;
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v10 = *(gLogObjects + 152);
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
      v23 = *(a1 + 109);
      v24 = *a3;
      v34 = 136316162;
      v35 = "iAP2FileTransferTypeData";
      v36 = 1024;
      v37 = 952;
      v38 = 1024;
      v39 = v23;
      v40 = 1024;
      v41 = a2;
      v42 = 1024;
      v43 = v24;
      v25 = "ERROR: %s:%d buffID=0x%X type=%d typeData.len=%d WARNING: Type does not require typeData!";
LABEL_68:
      v32 = v10;
LABEL_74:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v25, &v34, 0x24u);
    }
  }

  return a1;
}

void iAP2FileTransferDelete(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 4) == 0)
  {
    goto LABEL_10;
  }

  if (!gLogObjects || gNumLogObjects < 20)
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    iAP2FileTransferDelete_cold_2(a1);
  }

  else
  {
LABEL_10:
    if (!a1)
    {
      return;
    }
  }

  v4 = *a1;
  v5 = *(a1 + 108);
  v6 = *(a1 + 109);
  iAP2FileTransferCleanup(a1);
  iAP2FileTransferReleaseBufferID(v4, v5, v6);
  *(a1 + 109) = ~v6 & 0x80;
  v7 = *(a1 + 304);
  if (v7)
  {
    v7(a1, v6, v5);
  }
}

void iAP2FileTransferCleanup(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 4) != 0)
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

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      iAP2FileTransferCleanup_cold_2(a1);
    }
  }

  *(a1 + 104) = 0;
  v4 = *(a1 + 16);
  if (v4 && ((*(a1 + 111) & 4) != 0 || (*(a1 + 111) & 1) != 0))
  {
    free(v4);
  }

  v5 = *(a1 + 88);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 111) &= ~4u;
  *(a1 + 110) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 288) = 0;
  if (v5)
  {
    v5(a1, 1, *(a1 + 96));
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }
}

uint64_t iAP2FileTransferStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if ((_iAP2LogEnableMask & 2) == 0)
  {
    goto LABEL_11;
  }

  if (!gLogObjects || gNumLogObjects < 20)
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v16 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 104);
    v18 = *(a1 + 108);
    *buf = 136317954;
    v33 = "iAP2FileTransferStart";
    v34 = 1024;
    v35 = 1120;
    v36 = 1024;
    v37 = a1;
    v38 = 1024;
    v39 = v17;
    v40 = 1024;
    v41 = v18;
    v42 = 1024;
    v43 = a2;
    v44 = 2048;
    *v45 = a3;
    *&v45[8] = 2048;
    v46 = a4;
    *v47 = 1024;
    *&v47[2] = a5;
    *v48 = 1024;
    *&v48[2] = a6;
    v49 = 1024;
    v50 = a7;
    v51 = 1024;
    v52 = a8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx state=%d session=%u buff=%hx buffLen=%lu totalLen=%lu callback=%hx userInfo=%hx bSendAsStream=%d bDeleteBuffOnFinish=%d", buf, 0x56u);
  }

  else
  {
LABEL_11:
    if (!a1)
    {
      return 0;
    }
  }

  if (*(a1 + 104))
  {
    return 0;
  }

  if (*(a1 + 110) > 1u)
  {
    v20 = 10;
  }

  else
  {
    v20 = *(a1 + 120) + 12;
  }

  if (v20 > iAP2LinkGetMaxPayloadSize(*a1, 0))
  {
    iAP2FileTransferStart_cold_3();
  }

  *(a1 + 104) = 1;
  iAP2LinkEventNotify(*a1, 1, a1);
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  if (((a5 != 0) & a7) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 111) = v21 | a8 | *(a1 + 111) & 0xF8;
  *(a1 + 288) = iAP2TimeGetCurTimeMs();
  v22 = *(a1 + 88);
  if (v22)
  {
    v22(a1, 2, *(a1 + 96));
  }

  if ((_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v23 = *(gLogObjects + 152);
    }

    else
    {
      v23 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 109);
      v25 = *(a1 + 16);
      v26 = *(a1 + 40);
      v27 = *(a1 + 32);
      v28 = *(a1 + 111);
      v29 = *(a1 + 112);
      v30 = *(a1 + 120);
      *buf = 136317698;
      v33 = "iAP2FileTransferStart";
      v34 = 1024;
      v35 = 1159;
      v36 = 1024;
      v37 = a1;
      v38 = 1024;
      v39 = v24;
      v40 = 1024;
      v41 = v25;
      v42 = 1024;
      v43 = v26;
      v44 = 1024;
      *v45 = v27;
      *&v45[4] = 1024;
      *&v45[6] = (v28 >> 1) & 1;
      LOWORD(v46) = 1024;
      *(&v46 + 2) = v28 & 1;
      HIWORD(v46) = 1024;
      *v47 = v29;
      *&v47[4] = 1024;
      *v48 = v30;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s:%d fileXfer=%hx buffID=0x%X Start, send Setup, buff=%hx len=%u totalSize=%u bStream=%d bDeleteBuffOnFinish=%d type=%d typeData.len=%u", buf, 0x48u);
    }
  }

  return __iAP2FileTransferSendBufferPacket(a1, 4, 0);
}

uint64_t iAP2FileTransferHandleRecv(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  v6 = a3 - 2;
  if (a3 < 2)
  {
    return v3;
  }

  v8 = *(a2 + 1);
  v9 = v8 & 0xF;
  if (v9 <= 2)
  {
    if ((v8 & 0xF) != 0)
    {
      if (v9 == 1)
      {
        if ((_iAP2LogEnableMask & 2) != 0)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v27 = *(gLogObjects + 152);
          }

          else
          {
            v27 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v51 = *(a1 + 109);
            v52 = *(a1 + 104);
            v112 = 136316162;
            v113 = "iAP2FileTransferHandleRecv";
            v114 = 1024;
            v115 = 1598;
            v116 = 1024;
            v117 = a1;
            v118 = 1024;
            v119 = v51;
            v120 = 1024;
            *v121 = v52;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx buffID=0x%X Control Start curState=%d", &v112, 0x24u);
          }
        }

        *(a1 + 288) = 0;
        v53 = *(a1 + 88);
        if (v53)
        {
          v53(a1, 3, *(a1 + 96));
        }

        v54 = *(a1 + 104);
        if (v54 != 1 && v54 != 3)
        {
          if (v54 == 9)
          {
            v37 = 8;
            goto LABEL_99;
          }

          if ((_iAP2LogEnableMask & 1) == 0)
          {
            return 0;
          }

          v38 = logObjectForModule_31();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v55 = *(a1 + 109);
          v56 = *(a1 + 104);
          v112 = 136316162;
          v113 = "iAP2FileTransferHandleRecv";
          v114 = 1024;
          v115 = 1626;
          v116 = 1024;
          v117 = a1;
          v118 = 1024;
          v119 = v55;
          v120 = 1024;
          *v121 = v56;
          v31 = "ERROR: %s:%d Wrong state for Start! fileXfer=%hx buffID=0x%X state=%d";
LABEL_153:
          v32 = v38;
          v33 = 36;
LABEL_154:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, &v112, v33);
          return 0;
        }

        *(a1 + 104) = 2;
        iAP2LinkEventNotify(*a1, 1, a1);
        if ((__iAP2FileTransferSendBufferPacket(a1, 0, 0) & 1) == 0)
        {
          *(a1 + 104) = 7;
          v3 = 1;
          iAP2LinkEventNotify(*a1, 1, a1);
          return v3;
        }

        return 0;
      }

      if (v9 != 2)
      {
        goto LABEL_41;
      }

      if ((_iAP2LogEnableMask & 2) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v18 = *(gLogObjects + 152);
        }

        else
        {
          v18 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v41 = *(a1 + 109);
          v42 = *(a1 + 104);
          v43 = *(a1 + 56);
          v44 = *(a1 + 64);
          v45 = *(a1 + 16);
          v46 = *(a1 + 40);
          v112 = 136317186;
          v113 = "iAP2FileTransferHandleRecv";
          v114 = 1024;
          v115 = 1665;
          v116 = 1024;
          v117 = a1;
          v118 = 1024;
          v119 = v41;
          v120 = 1024;
          *v121 = v42;
          *&v121[4] = 1024;
          *&v121[6] = v43;
          *&v121[10] = 1024;
          *&v121[12] = v44;
          *&v121[16] = 1024;
          *&v121[18] = v45;
          *&v121[22] = 2048;
          *&v121[24] = v46;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx buffID=0x%X Control Cancel curState=%d (endCB=%hx userInfo=%hx) pBuffer=%hx buffSize=%lu", &v112, 0x40u);
        }
      }

      v47 = *(a1 + 104);
      if ((v47 - 8) >= 2)
      {
        if ((v47 - 2) > 1)
        {
          if ((_iAP2LogEnableMask & 1) == 0)
          {
            return 0;
          }

          v38 = logObjectForModule_31();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v82 = *(a1 + 109);
          v83 = *(a1 + 104);
          v112 = 136316162;
          v113 = "iAP2FileTransferHandleRecv";
          v114 = 1024;
          v115 = 1704;
          v116 = 1024;
          v117 = a1;
          v118 = 1024;
          v119 = v82;
          v120 = 1024;
          *v121 = v83;
          v31 = "ERROR: %s:%d Wrong state for Cancel! fileXfer=%hx buffID=0x%X state=%d";
          goto LABEL_153;
        }

        *(a1 + 288) = 0;
        v48 = *(a1 + 88);
        if (v48)
        {
          v48(a1, 5, *(a1 + 96));
        }

        v3 = 1;
        __iAP2FileTransferSendBufferPacket(a1, 2, 1);
        *(a1 + 104) = 4;
        iAP2LinkEventNotify(*a1, 1, a1);
        v49 = *(a1 + 56);
        if (!v49 || (*(a1 + 111) & 8) != 0)
        {
          return v3;
        }

LABEL_88:
        v49(a1, *(a1 + 64));
        return v3;
      }

      *(a1 + 288) = 0;
      v50 = *(a1 + 88);
      if (v50)
      {
        v50(a1, 5, *(a1 + 96));
      }

      v20 = 10;
      goto LABEL_87;
    }

    if (*(a1 + 109) < 0)
    {
      return 0;
    }

    *(a1 + 288) = 0;
    v21 = *(a1 + 88);
    if (v21)
    {
      v21(a1, 3, *(a1 + 96));
    }

    if (v8 < 0)
    {
      if ((_iAP2LogEnableMask & 2) != 0)
      {
        v57 = logObjectForModule_31();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = *(a1 + 109);
          v59 = (*(a1 + 111) >> 1) & 1;
          v60 = *(a1 + 32);
          v112 = 136316418;
          v113 = "iAP2FileTransferHandleRecv";
          v114 = 1024;
          v115 = 1317;
          v116 = 1024;
          v117 = a1;
          v118 = 1024;
          v119 = v58;
          v120 = 1024;
          *v121 = v59;
          *&v121[4] = 2048;
          *&v121[6] = v60;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx buffID=0x%X First packet, bStream=%d totalSize=%lu", &v112, 0x2Eu);
        }
      }

      *(a1 + 24) = 0;
      v61 = *(a1 + 16);
      if (v61)
      {
        free(v61);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      if (*(a1 + 32) - 1 < v6 || (*(a1 + 111) & 2) == 0)
      {
        v63 = *(a1 + 32);
      }

      else
      {
        v63 = v6;
      }

      *(a1 + 40) = v63;
      v23 = malloc_type_calloc(1uLL, v63, 0x100004077774924uLL);
      *(a1 + 16) = v23;
    }

    else
    {
      if ((*(a1 + 111) & 2) == 0 || *(a1 + 32) - 1 < v6)
      {
LABEL_118:
        v64 = *(a1 + 32);
        if (v64)
        {
          v65 = *(a1 + 24);
          if (v64 - v65 < v6)
          {
            if (_iAP2LogEnableMask)
            {
              v66 = logObjectForModule_31();
              v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
              v65 = *(a1 + 24);
              v64 = *(a1 + 32);
              if (v67)
              {
                v68 = *(a1 + 109);
                v112 = 136316418;
                v113 = "iAP2FileTransferHandleRecv";
                v114 = 1024;
                v115 = 1370;
                v116 = 1024;
                v117 = a1;
                v118 = 1024;
                v119 = v68;
                v120 = 2048;
                *v121 = v64;
                *&v121[8] = 2048;
                *&v121[10] = v65 + a3 - 2;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Got too much data for fileXfer=%hx, buffID=0x%X expected %lu bytes, got %lu", &v112, 0x32u);
                v65 = *(a1 + 24);
                v64 = *(a1 + 32);
              }
            }

            v6 = v64 - v65;
          }
        }

        if (v6 && *(a1 + 40) - *(a1 + 48) >= v6)
        {
          memcpy(*(a1 + 8), (a2 + 2), v6);
          *(a1 + 8) += v6;
          *(a1 + 24) += v6;
          *(a1 + 48) += v6;
        }

        if ((_iAP2LogEnableMask & 2) != 0)
        {
          v69 = logObjectForModule_31();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = *(a1 + 109);
            v71 = *(a1 + 24);
            v72 = *(a1 + 32);
            v112 = 136316418;
            v113 = "iAP2FileTransferHandleRecv";
            v114 = 1024;
            v115 = 1390;
            v116 = 1024;
            v117 = a1;
            v118 = 1024;
            v119 = v70;
            v120 = 2048;
            *v121 = v71;
            *&v121[8] = 2048;
            *&v121[10] = v72;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx buffID=0x%X Recv'd bytes %lu/%lu", &v112, 0x32u);
          }
        }

        if ((v8 & 0x40) == 0)
        {
          if ((*(a1 + 111) & 2) == 0)
          {
            return 0;
          }

          v73 = *(a1 + 72);
          if (!v73 || !v73(a1, *(a1 + 80)))
          {
            return 0;
          }

          free(*(a1 + 16));
          v3 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
LABEL_143:
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          return v3;
        }

        if ((_iAP2LogEnableMask & 2) != 0)
        {
          v74 = logObjectForModule_31();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            v75 = *(a1 + 109);
            v76 = *(a1 + 72);
            v77 = *(a1 + 80);
            v78 = *(a1 + 16);
            v79 = *(a1 + 40);
            v112 = 136316930;
            v113 = "iAP2FileTransferHandleRecv";
            v114 = 1024;
            v115 = 1399;
            v116 = 1024;
            v117 = a1;
            v118 = 1024;
            v119 = v75;
            v120 = 1024;
            *v121 = v76;
            *&v121[4] = 1024;
            *&v121[6] = v77;
            *&v121[10] = 1024;
            *&v121[12] = v78;
            *&v121[16] = 2048;
            *&v121[18] = v79;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx buffID=0x%X Last packet (gotCB=%hx userInfo=%hx) pBuffer=%hx buffSize=%lu", &v112, 0x3Au);
          }
        }

        *(a1 + 104) = 11;
        iAP2LinkEventNotify(*a1, 1, a1);
        v80 = *(a1 + 72);
        if (v80)
        {
          if (v80(a1, *(a1 + 80)))
          {
            v81 = *(a1 + 16);
            if (v81)
            {
              free(v81);
            }

            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            v3 = 1;
            goto LABEL_143;
          }
        }

        else
        {
          iAP2FileTransferSuccess(a1);
        }

        return 1;
      }

      v22 = *(a1 + 16);
      if (v22)
      {
        free(v22);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      v23 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
      *(a1 + 16) = v23;
      *(a1 + 40) = v6;
    }

    *(a1 + 8) = v23;
    goto LABEL_118;
  }

  if ((v8 & 0xFu) > 4)
  {
    if (v9 != 5)
    {
      if (v9 == 6)
      {
        if ((*(a1 + 109) & 0x80000000) == 0)
        {
          return 0;
        }

        if (*(a1 + 104) != 5)
        {
          if ((_iAP2LogEnableMask & 1) == 0)
          {
            return 0;
          }

          v38 = logObjectForModule_31();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v86 = *(a1 + 109);
          v87 = *(a1 + 104);
          v112 = 136316162;
          v113 = "iAP2FileTransferHandleRecv";
          v114 = 1024;
          v115 = 1774;
          v116 = 1024;
          v117 = a1;
          v118 = 1024;
          v119 = v86;
          v120 = 1024;
          *v121 = v87;
          v31 = "ERROR: %s:%d Wrong state for Failure! fileXfer=%hx buffID=0x%X state=%d";
          goto LABEL_153;
        }

        *(a1 + 288) = 0;
        v19 = *(a1 + 88);
        if (v19)
        {
          v19(a1, 5, *(a1 + 96));
        }

        v20 = 7;
        goto LABEL_87;
      }

LABEL_41:
      if ((_iAP2LogEnableMask & 1) == 0)
      {
        return 0;
      }

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

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v28 = *(a1 + 109);
      v29 = *(a1 + 16);
      v30 = *(a1 + 40);
      v112 = 136316930;
      v113 = "iAP2FileTransferHandleRecv";
      v114 = 1024;
      v115 = 1782;
      v116 = 1024;
      v117 = a1;
      v118 = 1024;
      v119 = v28;
      v120 = 1024;
      *v121 = v8 & 0xF;
      *&v121[4] = 1024;
      *&v121[6] = *v121;
      *&v121[10] = 1024;
      *&v121[12] = v29;
      *&v121[16] = 2048;
      *&v121[18] = v30;
      v31 = "ERROR: %s:%d fileXfer=%hx buffID=0x%X Invalid packet type! %u(0x%x) pBuffer=%hx buffSize=%lu";
      v32 = v24;
      v33 = 58;
      goto LABEL_154;
    }

    if ((*(a1 + 109) & 0x80000000) == 0)
    {
      return 0;
    }

    if (*(a1 + 104) != 5)
    {
      if ((_iAP2LogEnableMask & 1) == 0)
      {
        return 0;
      }

      v38 = logObjectForModule_31();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v84 = *(a1 + 109);
      v85 = *(a1 + 104);
      v112 = 136316162;
      v113 = "iAP2FileTransferHandleRecv";
      v114 = 1024;
      v115 = 1739;
      v116 = 1024;
      v117 = a1;
      v118 = 1024;
      v119 = v84;
      v120 = 1024;
      *v121 = v85;
      v31 = "ERROR: %s:%d Wrong state for Success! fileXfer=%hx buffID=0x%X state=%d";
      goto LABEL_153;
    }

    *(a1 + 288) = 0;
    v26 = *(a1 + 88);
    if (v26)
    {
      v26(a1, 5, *(a1 + 96));
    }

    v20 = 6;
LABEL_87:
    *(a1 + 104) = v20;
    v3 = 1;
    iAP2LinkEventNotify(*a1, 1, a1);
    v49 = *(a1 + 56);
    if (!v49)
    {
      return v3;
    }

    goto LABEL_88;
  }

  if (v9 == 3)
  {
    if ((_iAP2LogEnableMask & 2) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v25 = *(gLogObjects + 152);
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
        v34 = *(a1 + 109);
        v35 = *(a1 + 104);
        v112 = 136316162;
        v113 = "iAP2FileTransferHandleRecv";
        v114 = 1024;
        v115 = 1635;
        v116 = 1024;
        v117 = a1;
        v118 = 1024;
        v119 = v34;
        v120 = 1024;
        *v121 = v35;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx buffID=0x%X Control Pause curState=%d", &v112, 0x24u);
      }
    }

    v36 = *(a1 + 104);
    if (v36 != 2)
    {
      if (v36 == 8)
      {
        v37 = 9;
LABEL_99:
        *(a1 + 104) = v37;
        iAP2LinkEventNotify(*a1, 1, a1);
        return 0;
      }

      if ((_iAP2LogEnableMask & 1) == 0)
      {
        return 0;
      }

      v38 = logObjectForModule_31();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v39 = *(a1 + 109);
      v40 = *(a1 + 104);
      v112 = 136316162;
      v113 = "iAP2FileTransferHandleRecv";
      v114 = 1024;
      v115 = 1654;
      v116 = 1024;
      v117 = a1;
      v118 = 1024;
      v119 = v39;
      v120 = 1024;
      *v121 = v40;
      v31 = "ERROR: %s:%d Wrong state for Pause! fileXfer=%hx buffID=0x%X state=%d";
      goto LABEL_153;
    }

    *(a1 + 104) = 3;
    iAP2LinkEventNotify(*a1, 1, a1);
    __iAP2FileTransferSendBufferPacket(a1, 3, 1);
    return 0;
  }

  if (v9 != 4)
  {
    goto LABEL_41;
  }

  v3 = 0;
  if (a3 >= 0xA && (*(a1 + 109) & 0x80000000) == 0)
  {
    SessionForService = iAP2LinkGetSessionForService(*a1, 1);
    SessionInfo = iAP2LinkGetSessionInfo(*a1, SessionForService);
    *(a1 + 111) |= 4u;
    iAP2FileTransferCleanup(a1);
    v12 = SessionInfo[2];
    v13 = *(a2 + 6);
    *(a1 + 110) = v12;
    *(a1 + 32) = bswap32(v13);
    if (v12 < 2)
    {
      goto LABEL_171;
    }

    v14 = __rev16(*(a2 + 10));
    *(a1 + 112) = v14;
    if (v14 <= 8)
    {
      if (((1 << v14) & 0x4C) != 0)
      {
LABEL_163:
        *(a1 + 120) = 0;
LABEL_171:
        if ((_iAP2LogEnableMask & 2) != 0)
        {
          v98 = logObjectForModule_31();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
          {
            v99 = SessionInfo[2];
            v100 = *(a1 + 109);
            v101 = *(a1 + 32);
            v102 = *(a1 + 112);
            v103 = *(a1 + 120);
            v112 = 136316930;
            v113 = "iAP2FileTransferHandleRecv";
            v114 = 1024;
            v115 = 1577;
            v116 = 1024;
            v117 = a1;
            v118 = 1024;
            v119 = v99;
            v120 = 1024;
            *v121 = v100;
            *&v121[4] = 2048;
            *&v121[6] = v101;
            *&v121[14] = 1024;
            *&v121[16] = v102;
            *&v121[20] = 1024;
            *&v121[22] = v103;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "%s:%d fileXfer=%hx ver=%u buffID=0x%X Setup size=%lu type=%u typeData.len=%u, send Resume", &v112, 0x3Au);
          }
        }

        *(a1 + 104) = 9;
        iAP2LinkEventNotify(*a1, 1, a1);
        *(a1 + 288) = iAP2TimeGetCurTimeMs();
        v104 = *(a1 + 88);
        if (v104)
        {
          v104(a1, 2, *(a1 + 96));
        }

        iAP2FileTransferResume(a1);
        return 0;
      }

      if (((1 << v14) & 0xB0) != 0)
      {
        v15 = 0;
        v16 = 8;
        *(a1 + 120) = 8;
        *(a1 + 128) = bswap64(*(a2 + 12));
        v17 = a2 + 20;
        do
        {
          *(a1 + 136 + v15) = *(v17 + v15);
          *(a1 + 120) = ++v16;
          if (!*(v17 + v15))
          {
            break;
          }

          ++v15;
        }

        while (v15 != 60);
        goto LABEL_171;
      }

      if (v14 == 8)
      {
        v88 = 0;
        *(a1 + 120) = 0;
        v89 = (a1 + 129);
        v90 = a2 + 12;
        while (1)
        {
          v91 = v89;
          *(v89 - 1) = *(v90 + v88);
          v92 = v88 + 1;
          *(a1 + 120) = v88 + 1;
          if (!*(v90 + v88))
          {
            goto LABEL_169;
          }

          ++v89;
          ++v88;
          if (v92 == 68)
          {
            goto LABEL_168;
          }
        }
      }
    }

    if (v14 - 65534 >= 2)
    {
      if (v14 != 1)
      {
        if (_iAP2LogEnableMask)
        {
          v106 = logObjectForModule_31();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v107 = SessionInfo[2];
            v108 = *(a1 + 109);
            v109 = *(a1 + 32);
            v110 = *(a1 + 112);
            v111 = *(a1 + 120);
            v112 = 136316674;
            v113 = "iAP2FileTransferHandleRecv";
            v114 = 1024;
            v115 = 1569;
            v116 = 1024;
            v117 = v107;
            v118 = 1024;
            v119 = v108;
            v120 = 2048;
            *v121 = v109;
            *&v121[8] = 1024;
            *&v121[10] = v110;
            *&v121[14] = 1024;
            *&v121[16] = v111;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d fileXfer ver=%u buffID=0x%X Setup size=%lu type=%d typeData.len=%u, ERROR: Invalid type!", &v112, 0x34u);
          }
        }

        goto LABEL_171;
      }

      v93 = 0;
      *(a1 + 120) = 0;
      v94 = (a1 + 129);
      v95 = a2 + 12;
      while (1)
      {
        v91 = v94;
        *(v94 - 1) = *(v95 + v93);
        v96 = v93 + 1;
        *(a1 + 120) = v93 + 1;
        if (!*(v95 + v93))
        {
          break;
        }

        ++v94;
        ++v93;
        if (v96 == 68)
        {
LABEL_168:
          v97 = *(a2 + 80);
          goto LABEL_170;
        }
      }

LABEL_169:
      v97 = 0;
LABEL_170:
      *v91 = v97;
      goto LABEL_171;
    }

    goto LABEL_163;
  }

  return v3;
}

void iAP2FileTransferSuccess(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 4) == 0)
  {
    goto LABEL_10;
  }

  if (!gLogObjects || gNumLogObjects < 20)
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    iAP2FileTransferSuccess_cold_2(a1);
  }

  else
  {
LABEL_10:
    if (!a1)
    {
      return;
    }
  }

  if (*(a1 + 104) == 11)
  {
    if ((_iAP2LogEnableMask & 4) != 0)
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

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        iAP2FileTransferSuccess_cold_4(a1);
      }
    }

    *(a1 + 288) = 0;
    v5 = *(a1 + 88);
    if (v5)
    {
      v5(a1, 5, *(a1 + 96));
    }

    __iAP2FileTransferSendBufferPacket(a1, 5, 1);
  }
}

void iAP2FileTransferResume(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 4) == 0)
  {
    goto LABEL_10;
  }

  if (!gLogObjects || gNumLogObjects < 20)
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    iAP2FileTransferResume_cold_2(a1);
  }

  else
  {
LABEL_10:
    if (!a1)
    {
      return;
    }
  }

  v4 = *(a1 + 104);
  if (v4 == 9)
  {
    if ((_iAP2LogEnableMask & 4) != 0)
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

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        iAP2FileTransferResume_cold_4(a1);
      }
    }

    *(a1 + 104) = 8;
    iAP2LinkEventNotify(*a1, 1, a1);
    v7 = a1;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    if (v4 != 3)
    {
      return;
    }

    if ((_iAP2LogEnableMask & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v5 = *(gLogObjects + 152);
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
        iAP2FileTransferResume_cold_6(a1);
      }
    }

    *(a1 + 104) = 2;
    iAP2LinkEventNotify(*a1, 1, a1);
    v7 = a1;
    v8 = 0;
    v9 = 0;
  }

  __iAP2FileTransferSendBufferPacket(v7, v8, v9);
}

void iAP2FileTransferCancel(uint64_t a1)
{
  if (a1)
  {
    if ((_iAP2LogEnableMask & 4) != 0)
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

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        iAP2FileTransferCancel_cold_2(a1);
      }
    }

    if ((_iAP2LogEnableMask & 2) != 0)
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

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 104);
        v7 = *(a1 + 108);
        v8 = *(a1 + 24);
        v9 = *(a1 + 32);
        v10 = *(a1 + 56) != 0;
        v11 = *(a1 + 64) != 0;
        v20 = 136316930;
        v21 = "iAP2FileTransferCancel";
        v22 = 1024;
        v23 = 1819;
        v24 = 1024;
        v25 = v6;
        v26 = 1024;
        v27 = v7;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v9;
        v32 = 1024;
        v33 = v10;
        v34 = 1024;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d fileXfer state=%d session=%u sentSize=%lu totalSize=%lu endCB(%d) userInfo(%d)", &v20, 0x3Eu);
      }
    }

    v12 = *(a1 + 104);
    v2 = v12 > 9;
    v13 = (1 << v12) & 0x32C;
    if (v2 || v13 == 0)
    {
      if ((_iAP2LogEnableMask & 4) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v19 = *(gLogObjects + 152);
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
          iAP2FileTransferCancel_cold_7(a1, (a1 + 104));
        }
      }
    }

    else
    {
      if ((_iAP2LogEnableMask & 4) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v15 = *(gLogObjects + 152);
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
          iAP2FileTransferCancel_cold_5(a1);
        }
      }

      *(a1 + 288) = 0;
      v16 = *(a1 + 88);
      if (v16)
      {
        v16(a1, 5, *(a1 + 96));
      }

      __iAP2FileTransferSendBufferPacket(a1, 2, 1);
      if (*(a1 + 109) < 0)
      {
        v17 = 4;
      }

      else
      {
        v17 = 10;
      }

      *(a1 + 104) = v17;
      iAP2LinkEventNotify(*a1, 1, a1);
      v18 = *(a1 + 56);
      if (v18)
      {
        v18(a1, *(a1 + 64));
      }
    }
  }
}

uint64_t iAP2FileTransferRetain(uint64_t a1)
{
  if (a1)
  {
    v2 = ++*(a1 + 296);
    if (v2 >= 0xC9 && (_iAP2LogEnableMask & 1) != 0)
    {
      if (gLogObjects)
      {
        v3 = gNumLogObjects < 20;
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
        v4 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 109);
        v6 = *(a1 + 296);
        v8 = 136316162;
        v9 = "iAP2FileTransferRetain";
        v10 = 1024;
        v11 = 2166;
        v12 = 1024;
        v13 = a1;
        v14 = 1024;
        v15 = v5;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d fileXfer=%hx buffID=0x%X, ERROR!!! retainCount at %d after increment!", &v8, 0x24u);
      }
    }
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_1_28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 104);
  v4 = *(result + 108);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v7 = *(result + 56);
  v8 = *(result + 64);
  return result;
}

id logObjectForModule_32()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 9;
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
    v10 = *(gLogObjects + 64);
  }

  return v10;
}

void OUTLINED_FUNCTION_9_21(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_10_18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id platform_usb_setUSBHostHIDInterface(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109634;
    v14[1] = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 2112;
    v18 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[#USB] Setting USB Host HID interface: %d with hidFuntionType: %d for connection %@", v14, 0x18u);
  }

  v9 = _getUSBHostPluginInstance();
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 setUSBHostHIDInterface:a2 withHIDFunction:a3 forConnectionUUID:a1];
  }

  else
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      platform_usb_setUSBHostHIDInterface_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

id _getUSBHostPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBHostPluginProtocol fallbackToTransportPlugins:1];

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
      _getUSBHostPluginInstance_cold_2(v4);
    }
  }

  return v1;
}

id platform_usb_clearUSBHostHIDInterfaces(uint64_t a1)
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
    v10 = 138412290;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#USB] Clearing USB Host HID interfaces for connection %@", &v10, 0xCu);
  }

  v5 = _getUSBHostPluginInstance();
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 clearUSBHostHIDInterfacesForConnectionUUID:a1];
  }

  else
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      platform_usb_clearUSBHostHIDInterfaces_cold_3();
    }

    v6 = 0;
  }

  return v6;
}

id platform_usb_configureUSBHostNCMInterface(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109378;
    v14[1] = a2;
    v15 = 2112;
    v16 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[#USB] Setting USB Host NCM interface to %u for connection %@", v14, 0x12u);
  }

  v9 = _getUSBHostPluginInstance();
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 configureUSBHostNCMInterface:a2 asCarPlay:a3 forConnectionUUID:a1];
  }

  else
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      platform_usb_configureUSBHostNCMInterface_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

void platform_usb_unlockUSBHostInterfaces(uint64_t a1)
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
    v7 = 138412290;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#USB] Unlocking USB interfaces for connection %@...", &v7, 0xCu);
  }

  v5 = _getUSBHostPluginInstance();
  v6 = v5;
  if (v5)
  {
    [v5 unlockUSBHostInterfacesForConnectionUUID:a1];
  }
}

id platform_usb_lockUSBHostInterfaces(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#USB] Locking USB interfaces for connection %@...", &v9, 0xCu);
  }

  v5 = _getUSBHostPluginInstance();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 lockUSBHostInterfacesForConnectionUUID:a1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id platform_usb_setNeedOutZlp(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109634;
    v14[1] = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 2112;
    v18 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[#USB] Setting USB Host need Out ZLP %d (max %d) for connection %@", v14, 0x18u);
  }

  v9 = _getUSBHostPluginInstance();
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 setNeedOutZLP:a2 maxOutLength:a3 forConnectionUUID:a1];
  }

  else
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      platform_usb_setNeedOutZlp_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

void sub_1000ACAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ACEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AD290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AD730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ADC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ADFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AE430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AE8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AED0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AF1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AF4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AF7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AFFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B02BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B0528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B0B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B0E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B12C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_21@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  v4 = *(result + 40);
  return result;
}

void *logObjectForModule_33()
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    return *(gLogObjects + 488);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

void __genericMFi_appLaunch_requestAppLaunch_block_invoke(uint64_t a1)
{
  if (!platform_system_isAppInstalledWithBundleID(*(a1 + 32)))
  {
    goto LABEL_66;
  }

  if (*(a1 + 48) == 1)
  {
    v2 = platform_system_isLockScreenUIDisplayed();
    if (v2)
    {
      v3 = *(a1 + 52) ^ 1;
    }

    else
    {
      v3 = 0;
    }

    if (gLogObjects && gNumLogObjects >= 62)
    {
      v18 = *(gLogObjects + 488);
    }

    else
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = "NO";
      if (v3)
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      *&buf[4] = "genericMFi_appLaunch_requestAppLaunch_block_invoke";
      v21 = *(a1 + 52);
      *buf = 136315906;
      if (v2)
      {
        v22 = "YES";
      }

      else
      {
        v22 = "NO";
      }

      *&buf[14] = v20;
      *&buf[12] = 2080;
      *&buf[22] = 2080;
      if (v21)
      {
        v19 = "YES";
      }

      v41 = v22;
      LOWORD(v42) = 2080;
      *(&v42 + 2) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: launchToBackground: %s (lockScreenDisplayed: %s, alreadyInForeground: %s)", buf, 0x2Au);
    }

    if (v3)
    {
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v23 = *(gLogObjects + 488);
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
        v24 = *(a1 + 32);
        *buf = 136315394;
        *&buf[4] = "genericMFi_appLaunch_requestAppLaunch_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Launching application to background (without dialog): %@", buf, 0x16u);
      }

      platform_system_launchApplicationToBackground(*(a1 + 32));
    }

    else if ((*(a1 + 52) & 1) == 0)
    {
      _genericMFi_appLaunch_LaunchApp(*(a1 + 32), *(a1 + 53));
    }

    goto LABEL_66;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 53);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 0x40000000;
  v38[2] = __genericMFi_appLaunch_requestAppLaunch_block_invoke_3;
  v38[3] = &__block_descriptor_tmp_17;
  v38[4] = v4;
  v39 = v6;
  v7 = *(v5 + 8);
  if (!v7)
  {
    goto LABEL_66;
  }

  v8 = CFRetain(v7);
  if (!v8)
  {
    goto LABEL_66;
  }

  v9 = v8;
  EndpointWithUUID = acc_manager_getEndpointWithUUID(v8);
  if (!EndpointWithUUID)
  {
    v32 = v9;
LABEL_65:
    CFRelease(v32);
    goto LABEL_66;
  }

  AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);
  v12 = platform_system_copyAppNameForBundleID(v4);
  v13 = acc_strings_copyPlaceholder_Unknown();
  v14 = acc_accInfo_retainedProperty(AccessoryInfo, 1, v13);
  v15 = acc_strings_copyPlaceholder_Unknown();
  v16 = acc_accInfo_retainedProperty(AccessoryInfo, 0, v15);
  if (v12)
  {
    v17 = CFRetain(v12);
  }

  else
  {
    v17 = 0;
  }

  v25 = acc_strings_bundleCF();
  v26 = CFBundleCopyLocalizedString(v25, @"%@ would like to communicate with the %@ %@.", @"%@ would like to communicate with the %@ %@.", 0);
  cf = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v26, v12, v14, v16);
  v27 = acc_strings_bundleCF();
  v36 = CFBundleCopyLocalizedString(v27, @"Allow", @"Allow", 0);
  v28 = acc_strings_bundleCF();
  v29 = CFBundleCopyLocalizedString(v28, @"Ignore", @"Ignore", 0);
  Identifier = acc_userNotifications_createIdentifier(@"app-launch", *(v5 + 8));
  if (v12)
  {
    v34 = v14;
    v30 = ACCUNCreate(1, v17, cf, v36, v29, 0, 1, Identifier, 0.0, *(v5 + 16));
    CFRetain(v4);
    CFRetain(v9);
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v31 = *(gLogObjects + 488);
    }

    else
    {
      v31 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "_genericMFi_appLaunch_RequestUserForAppLaunch";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s: Prompting user to launch application: %@...", buf, 0x16u);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = ___genericMFi_appLaunch_RequestUserForAppLaunch_block_invoke;
    v41 = &unk_1002297A0;
    *&v42 = v38;
    *(&v42 + 1) = v9;
    v43 = v4;
    ACCUNManagerPresentNotification(v30, buf);
    v14 = v34;
    if (v30)
    {
      CFRelease(v30);
    }
  }

  CFRelease(v9);
  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v32 = Identifier;
  if (Identifier)
  {
    goto LABEL_65;
  }

LABEL_66:
  v33 = *(a1 + 32);
  if (v33)
  {
    CFRelease(v33);
  }
}