uint64_t GetConnectionToAuthDaemon()
{
  if (!__iapauthd_connection)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.iapauthd.xpc", 0, 0);
    __iapauthd_connection = mach_service;
    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &__block_literal_global);
      xpc_connection_resume(__iapauthd_connection);
    }

    else
    {
      syslog(4, "No connection made!\n");
    }
  }

  return __iapauthd_connection;
}

void __GetConnectionToAuthDaemon_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x259C17760](a2);
  v4 = MEMORY[0x277D86480];
  if (v3 == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    syslog(4, "Got unexpected error: %s");
  }

  else if (MEMORY[0x259C17760](a2) == v4)
  {
    syslog(4, "%s:%s-%d xpc error\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "_xpc_auth_handle_message", 107);
    if ((a2 == MEMORY[0x277D863F8] || a2 == MEMORY[0x277D863F0]) && __iapauthd_connection != 0)
    {
      xpc_connection_cancel(__iapauthd_connection);
      xpc_release(__iapauthd_connection);
      __iapauthd_connection = 0;
    }
  }

  else if (a2)
  {
    syslog(4, "%s:%s-%d getting data from authd\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "_xpc_auth_handle_message", 124);
    length = 0;
    if (xpc_dictionary_get_data(a2, "certData", &length) && length)
    {
      syslog(4, "%s:%s-%d got data from authd, len=%d\n");
    }

    else
    {
      syslog(4, "len is 0!\n");
    }
  }
}

_DWORD *InitSigningContext(int a1)
{
  v2 = malloc_type_malloc(0x64uLL, 0x100004093FC706DuLL);
  v3 = v2;
  if (v2)
  {
    CC_SHA1_Init((v2 + 4));
    *v3 = a1;
  }

  return v3;
}

void EraseSigningContext(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

BOOL UpdateSigningContext(uint64_t a1, void *data, unint64_t len)
{
  if (a1)
  {
    v4 = len;
    if (HIDWORD(len))
    {
      syslog(3, "%s:%s-%d losing integer precision on inLen 0x08%lx", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "UpdateSigningContext", 190, len);
    }

    CC_SHA1_Update((a1 + 4), data, v4);
  }

  return a1 != 0;
}

uint64_t IapAuthGetAppCert(unsigned int a1, UInt8 **a2, CFIndex *a3)
{
  if (a2 && a3)
  {
    CertForApplicationSync = GetCertForApplicationSync(a1);
    if (CertForApplicationSync)
    {
      v6 = CertForApplicationSync;
      v7 = SecCertificateCopyData(CertForApplicationSync);
      if (v7)
      {
        v8 = v7;
        Length = CFDataGetLength(v7);
        v10 = Length;
        v11 = *a2;
        if (*a2)
        {
          if (*a3 < Length)
          {
            v14 = *a3;
            syslog(3, "%s ERROR: Cert serial number output buffer size too small, outLen:%04lX < certSerLen:%04lX\n");
LABEL_16:
            v12 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          v11 = malloc_type_malloc(Length, 0x183FBD9AuLL);
          *a2 = v11;
          if (!v11)
          {
            syslog(3, "%s Application auth cert output buffer malloc fail *ppOutBuf:NULL\n");
            goto LABEL_16;
          }
        }

        v15.location = 0;
        v15.length = v10;
        CFDataGetBytes(v8, v15, v11);
        *a3 = v10;
        v12 = 1;
LABEL_17:
        CFRelease(v6);
        CFRelease(v8);
        return v12;
      }

      syslog(3, "%s SecCertificateCopyData returned pCertData:NULL\n", "IapAuthGetAppCert");
      CFRelease(v6);
    }

    else
    {
      syslog(3, "%s GetCertForApplicationSync for appID:%02X returned pCertApp:NULL\n");
    }
  }

  else
  {
    syslog(3, "%s ERROR: Bad input parameter(s): ppOutbuf:%hhx, pOutLen:%hhx\n");
  }

  return 0;
}

uint64_t GetCertForApplicationSync(unsigned int a1)
{
  ConnectionToAuthDaemon = GetConnectionToAuthDaemon();
  if (ConnectionToAuthDaemon)
  {
    v3 = ConnectionToAuthDaemon;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "application", a1);
    xpc_dictionary_set_string(v4, "requestType", "cert");
    v5 = xpc_connection_send_message_with_reply_sync(v3, v4);
    if (!v5)
    {
      v7 = 0;
LABEL_14:
      xpc_release(v4);
      return v7;
    }

    v6 = v5;
    if (xpc_dictionary_get_BOOL(v5, "isValid"))
    {
      length = 0;
      xpc_dictionary_get_data(v6, "certData", &length);
      if (length)
      {
        syslog(4, "%s:%s-%d got data from authd, len=%d\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "GetCertForApplicationSync", 245, length);
        v7 = SecCertificateCreateWithBytes();
        if (v7)
        {
          syslog(4, "cert created!\n");
        }

        else
        {
          syslog(4, "cert FAILED!\n");
        }

        goto LABEL_13;
      }

      syslog(4, "%s:%s-%d len is 0!\n");
    }

    else
    {
      syslog(4, "cert FAILED!\n");
    }

    v7 = 0;
LABEL_13:
    xpc_release(v6);
    goto LABEL_14;
  }

  return 0;
}

uint64_t IapAuthGetAppCertP7Sync(unsigned int a1, UInt8 **a2, CFIndex *a3)
{
  if (a2 && a3)
  {
    CertForApplicationSync = GetCertForApplicationSync(a1);
    if (CertForApplicationSync)
    {
      v6 = CertForApplicationSync;
      v7 = SecCMSCreateCertificatesOnlyMessageIAP();
      if (v7)
      {
        v8 = v7;
        Length = CFDataGetLength(v7);
        v10 = Length;
        v11 = *a2;
        if (*a2)
        {
          if (*a3 < Length)
          {
            v14 = *a3;
            syslog(3, "%s ERROR: Application P7 cert output buffer size too small, outLen:%04lX < certAppLen:%04lX\n");
LABEL_16:
            v12 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          v11 = malloc_type_malloc(Length, 0x6DE93576uLL);
          *a2 = v11;
          if (!v11)
          {
            syslog(3, "%s Application auth P7 cert output buffer malloc fail *ppOutBuf:NULL\n");
            goto LABEL_16;
          }
        }

        v15.location = 0;
        v15.length = v10;
        CFDataGetBytes(v8, v15, v11);
        *a3 = v10;
        v12 = 1;
LABEL_17:
        CFRelease(v6);
        CFRelease(v8);
        return v12;
      }

      syslog(3, "%s SecCMSCreateCertificatesOnlyMessageIAP returned pCertData:NULL\n", "IapAuthGetAppCertP7Sync");
      CFRelease(v6);
    }

    else
    {
      syslog(3, "%s GetCertForApplicationSync for appID:%02X returned pCertApp:NULL\n");
    }
  }

  else
  {
    syslog(3, "%s ERROR: Bad input parameter(s): ppOutbuf:%hhx, pOutLen:%hhx\n");
  }

  return 0;
}

void IapAuthGetAppCertP7(unsigned int a1, NSObject *a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __IapAuthGetAppCertP7_block_invoke;
  v8[3] = &unk_2797817D0;
  v8[4] = a3;
  v8[5] = a2;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  ConnectionToAuthDaemon = GetConnectionToAuthDaemon();
  if (ConnectionToAuthDaemon)
  {
    v6 = ConnectionToAuthDaemon;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "application", a1);
    xpc_dictionary_set_string(v7, "requestType", "cert");
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___GetCertForApplication_block_invoke;
    handler[3] = &unk_279781870;
    handler[4] = v8;
    handler[5] = v10;
    handler[6] = a2;
    handler[7] = v7;
    xpc_connection_send_message_with_reply(v6, v7, a2, handler);
  }

  _Block_object_dispose(v10, 8);
}

void __IapAuthGetAppCertP7_block_invoke(uint64_t a1, uint64_t a2)
{
  syslog(4, "%s:%s-%d got reply from authd\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "IapAuthGetAppCertP7_block_invoke", 472);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a2)
  {
    v4 = SecCMSCreateCertificatesOnlyMessageIAP();
    v9[3] = v4;
    CFRetain(v4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __IapAuthGetAppCertP7_block_invoke_2;
  block[3] = &unk_2797817A8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = &v8;
  dispatch_async(v5, block);
  v6 = v9[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v8, 8);
}

void __IapAuthGetAppCertP7_block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t IapAuthChallengeRespondSync(const void *a1, size_t a2, void **a3, size_t *a4)
{
  ConnectionToAuthDaemon = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          ConnectionToAuthDaemon = GetConnectionToAuthDaemon();
          if (ConnectionToAuthDaemon)
          {
            v9 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_string(v9, "requestType", "key");
            xpc_dictionary_set_data(v9, "inData", a1, a2);
            v10 = xpc_connection_send_message_with_reply_sync(ConnectionToAuthDaemon, v9);
            if (!v10)
            {
              ConnectionToAuthDaemon = 0;
LABEL_17:
              xpc_release(v9);
              return ConnectionToAuthDaemon;
            }

            v11 = v10;
            length = 0;
            if (xpc_dictionary_get_BOOL(v10, "isValid"))
            {
              syslog(6, "%s:%s-%d got valid key output from authd\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "GetAuthChallengeResponseSync", 515);
              data = xpc_dictionary_get_data(v11, "outData", &length);
              v13 = *a3;
              if (*a3)
              {
                v14 = length;
                if (*a4 >= length)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v13 = malloc_type_malloc(length, 0x8BBCD2AEuLL);
                *a3 = v13;
                v14 = length;
                *a4 = length;
                if (v13)
                {
LABEL_15:
                  memcpy(v13, data, v14);
                  *a4 = length;
                  ConnectionToAuthDaemon = 1;
                  goto LABEL_16;
                }
              }
            }

            else
            {
              syslog(4, "%s:%s-%d isValid from authd is false!\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "GetAuthChallengeResponseSync", 533);
            }

            ConnectionToAuthDaemon = 0;
LABEL_16:
            xpc_release(v11);
            goto LABEL_17;
          }
        }
      }
    }
  }

  return ConnectionToAuthDaemon;
}

void IapAuthChallengeRespond(const void *a1, size_t a2, NSObject *a3, uint64_t a4)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __IapAuthChallengeRespond_block_invoke;
  v10[3] = &unk_279781820;
  v10[4] = a4;
  v10[5] = a3;
  ConnectionToAuthDaemon = GetConnectionToAuthDaemon();
  if (ConnectionToAuthDaemon)
  {
    v8 = ConnectionToAuthDaemon;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, "requestType", "key");
    xpc_dictionary_set_data(v9, "inData", a1, a2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___GetAuthChallengeResponse_block_invoke;
    handler[3] = &unk_2797818C0;
    handler[4] = v10;
    handler[5] = a3;
    handler[6] = v9;
    xpc_connection_send_message_with_reply(v8, v9, a3, handler);
  }
}

void __IapAuthChallengeRespond_block_invoke(uint64_t a1, const void *a2)
{
  syslog(4, "%s:%s-%d got reply from authd\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "IapAuthChallengeRespond_block_invoke", 627);
  if (a2)
  {
    CFRetain(a2);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __IapAuthChallengeRespond_block_invoke_2;
  block[3] = &unk_2797817F8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = a2;
  dispatch_async(v4, block);
}

void __IapAuthChallengeRespond_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t IapAuthRandomNumber(int *a1)
{
  bytes = -1431655766;
  v2 = SecRandomCopyBytes(*MEMORY[0x277CDC540], 4uLL, &bytes);
  if (a1)
  {
    *a1 = v2;
  }

  return bytes;
}

uint64_t IapAuthChallengeVerify(UInt8 *a1, CFIndex a2, const UInt8 *a3, CFIndex a4, const UInt8 *a5, CFIndex a6, int a7)
{
  trust = 0;
  v41 = -1431655766;
  CertRef = GetCertRef(a1, a2);
  if (!CertRef)
  {
    syslog(3, "%s ERROR: GetCertRef returned pCertRef:NULL\n", "IapAuthChallengeVerify");
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    goto LABEL_45;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v16 = Mutable;
  if (!Mutable)
  {
    syslog(3, "%s ERROR: CFArrayCreateMutable returned pCertArray:NULL\n");
LABEL_13:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_45;
  }

  CFArrayAppendValue(Mutable, CertRef);
  CFRelease(CertRef);
  CertRef = SecPolicyCreateiAP();
  if (!CertRef)
  {
    syslog(3, "%s ERROR: SecPolicyCreateiAP returned piAPPolicy:NULL\n");
    goto LABEL_13;
  }

  SecTrustCreateWithCertificates(v16, CertRef, &trust);
  if (!trust)
  {
    syslog(3, "%s ERROR: SecTrustCreateWithCertificates returned piAPTrust:NULL\n");
LABEL_40:
    v18 = 0;
LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

  v17 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v17)
  {
    syslog(3, "%s ERROR: CFArrayCreateMutable returned pCertAnchors:NULL\n", "IapAuthChallengeVerify");
    v18 = 0;
    goto LABEL_42;
  }

  v39 = a7;
  if (a7 == 2)
  {
    v18 = SecCertificateCreateWithBytes();
    if (!v18)
    {
      syslog(3, "%s ERROR: SecCertificateCreateWithBytes returned pCertSubCA1:NULL\n");
      goto LABEL_42;
    }

    CFArrayAppendValue(v17, v18);
    CFRelease(v18);
    v18 = SecCertificateCreateWithBytes();
    if (!v18)
    {
      syslog(3, "%s ERROR: SecCertificateCreateWithBytes returned pCertSubCA2:NULL\n");
LABEL_42:
      v21 = 0;
      v20 = 0;
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  if (a7 == 3)
  {
    v22 = GetCertRef(kiPodAccessoryTestAuth3CA, 667);
    if (v22)
    {
      v23 = v22;
      CFArrayAppendValue(v17, v22);
      CFRelease(v23);
    }

    else
    {
      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kiPodAccessoryTestAuth3CA\n", "IapAuthChallengeVerify");
    }

    v24 = GetCertRef(kAuth3ECSSubCADev, 667);
    if (v24)
    {
      v25 = v24;
      CFArrayAppendValue(v17, v24);
      CFRelease(v25);
    }

    else
    {
      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kAuth3ECSSubCADev\n", "IapAuthChallengeVerify");
    }

    v26 = GetCertRef(kAuth3ECSSubCAProd, 667);
    if (v26)
    {
      v27 = v26;
      CFArrayAppendValue(v17, v26);
      CFRelease(v27);
    }

    else
    {
      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kAuth3ECSSubCAProd\n", "IapAuthChallengeVerify");
    }

    if (_findDeviceProperties_onceToken != -1)
    {
      IapAuthChallengeVerify_cold_1();
    }

    if (((__isInternalBuild & 1) != 0 || __isDesenseBuild == 1) && __isInternalDeveloperDevice == 1)
    {
      v28 = GetCertRef(kiPodAccessoryTestCAProto, 637);
      if (v28)
      {
        v29 = v28;
        CFArrayAppendValue(v17, v28);
        CFRelease(v29);
      }

      else
      {
        syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kiPodAccessoryTestCAProto\n", "IapAuthChallengeVerify");
      }

      v30 = GetCertRef(kAuth3ECSSubCASimu, 667);
      if (v30)
      {
        v18 = v30;
LABEL_37:
        CFArrayAppendValue(v17, v18);
        CFRelease(v18);
        goto LABEL_38;
      }

      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kAuth3ECSSubCASimu\n", "IapAuthChallengeVerify");
    }
  }

LABEL_38:
  SecTrustSetAnchorCertificates(trust, v17);
  CFRelease(v17);
  if (MEMORY[0x259C175B0](trust, &v41))
  {
    syslog(3, "%s ERROR: SecTrustEvaluate returned status rcOS:%02X\n");
    goto LABEL_40;
  }

  if (v41 != 1 && v41 != 4)
  {
    if (v41 != 5)
    {
      syslog(3, "%s ERROR: SecTrustEvaluate wrong result, expect:%02X or %02X, actual:%02X\n");
      goto LABEL_40;
    }

    syslog(3, "%s ERROR: SecTrustEvaluate wrong result, expect:%02X or %02X, actual:%02X, ignore\n", "IapAuthChallengeVerify", 4, 1, 5);
  }

  v18 = MEMORY[0x259C17590](trust);
  if (!v18)
  {
    syslog(3, "%s ERROR: SecTrustCopyPublicKey returned pAccCertKey:NULL\n", "IapAuthChallengeVerify");
    goto LABEL_41;
  }

  v38 = CertRef;
  error = 0;
  v32 = *MEMORY[0x277CBECE8];
  v33 = *MEMORY[0x277CBED00];
  v21 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a3, a4, *MEMORY[0x277CBED00]);
  v34 = CFDataCreateWithBytesNoCopy(v32, a5, a6, v33);
  v20 = v34;
  if (!v21)
  {
    syslog(3, "%s ERROR: Unable to create CFDataRef for challenge", "IapAuthChallengeVerify");
    v17 = 0;
    v19 = 0;
    CertRef = v38;
    goto LABEL_44;
  }

  CertRef = v38;
  if (v34)
  {
    if ((v39 & 0xFFFFFFFE) == 2)
    {
      v35 = MEMORY[0x277CDC378];
      if (v39 != 2)
      {
        v35 = MEMORY[0x277CDC318];
      }

      if (SecKeyVerifySignature(v18, *v35, v21, v34, &error))
      {
        v17 = 0;
        v19 = 1;
        goto LABEL_44;
      }

      if (error && (v36 = CFCopyDescription(error)) != 0)
      {
        v37 = v36;
        CFStringGetCStringPtr(v36, 0x8000100u);
        syslog(3, "%s ERROR: SecKeyVerifySignature returned false for auth version %d\n", "IapAuthChallengeVerify", v39);
        CFRelease(v37);
      }

      else
      {
        syslog(3, "%s ERROR: SecKeyVerifySignature returned false for auth version %d\n");
      }
    }

    else
    {
      syslog(3, "%s ERROR: Unsupported authVersion %d");
    }
  }

  else
  {
    syslog(3, "%s ERROR: Unable to create CFDataRef for response");
  }

  v17 = 0;
LABEL_43:
  v19 = 0;
LABEL_44:
  CFRelease(CertRef);
  CertRef = 0;
LABEL_45:
  if (trust)
  {
    CFRelease(trust);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (CertRef)
  {
    CFRelease(CertRef);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if ((v19 & 1) == 0)
  {
    PrintCertSerialNumber(a1, a2);
  }

  return v19;
}

const void *GetCertRef(UInt8 *bytes, CFIndex length)
{
  v2 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBED00]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecCMSCertificatesOnlyMessageCopyCertificates();
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) < 1)
    {
      v7 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v7 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

void PrintCertSerialNumber(UInt8 *a1, CFIndex a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v2;
  v6[1] = v2;
  v5 = 32;
  v4 = v6;
  if (IapAuthCertSerial(a1, a2, &v4, &v5))
  {
    PrintSerialNumberBytes(v4, v5);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t IapAuthCertVerifyAuthVersion(UInt8 *a1, CFIndex a2, int a3)
{
  trust = 0;
  v21 = -1431655766;
  CertRef = GetCertRef(a1, a2);
  if (!CertRef)
  {
    syslog(3, "%s ERROR: GetCertRef returned pCertRef:NULL\n", "IapAuthCertVerifyAuthVersion");
    v9 = 0;
    v8 = 0;
LABEL_15:
    v10 = 0;
    goto LABEL_44;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v8 = Mutable;
  if (!Mutable)
  {
    syslog(3, "%s ERROR: CFArrayCreateMutable returned pCertArray:NULL\n");
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  CFArrayAppendValue(Mutable, CertRef);
  CFRelease(CertRef);
  CertRef = SecPolicyCreateiAP();
  if (!CertRef)
  {
    syslog(3, "%s ERROR: SecPolicyCreateiAP returned piAPPolicy:NULL\n");
    goto LABEL_14;
  }

  SecTrustCreateWithCertificates(v8, CertRef, &trust);
  if (!trust)
  {
    syslog(3, "%s ERROR: SecTrustCreateWithCertificates returned piAPTrust:NULL\n");
    goto LABEL_41;
  }

  v9 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v9)
  {
    syslog(3, "%s ERROR: CFArrayCreateMutable returned pCertAnchors:NULL\n", "IapAuthCertVerifyAuthVersion");
    v10 = 0;
    goto LABEL_43;
  }

  if (a3 == 3)
  {
    v11 = GetCertRef(kiPodAccessoryTestAuth3CA, 667);
    if (v11)
    {
      v12 = v11;
      CFArrayAppendValue(v9, v11);
      CFRelease(v12);
    }

    else
    {
      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kiPodAccessoryTestAuth3CA\n", "IapAuthCertVerifyAuthVersion");
    }

    v13 = GetCertRef(kAuth3ECSSubCADev, 667);
    if (v13)
    {
      v14 = v13;
      CFArrayAppendValue(v9, v13);
      CFRelease(v14);
    }

    else
    {
      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kAuth3ECSSubCADev\n", "IapAuthCertVerifyAuthVersion");
    }

    v15 = GetCertRef(kAuth3ECSSubCAProd, 667);
    if (v15)
    {
      v16 = v15;
      CFArrayAppendValue(v9, v15);
      CFRelease(v16);
    }

    else
    {
      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kAuth3ECSSubCAProd\n", "IapAuthCertVerifyAuthVersion");
    }

    if (_findDeviceProperties_onceToken != -1)
    {
      IapAuthChallengeVerify_cold_1();
    }

    if (((__isInternalBuild & 1) != 0 || __isDesenseBuild == 1) && __isInternalDeveloperDevice == 1)
    {
      v17 = GetCertRef(kiPodAccessoryTestCAProto, 637);
      if (v17)
      {
        v18 = v17;
        CFArrayAppendValue(v9, v17);
        CFRelease(v18);
      }

      else
      {
        syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kiPodAccessoryTestCAProto\n", "IapAuthCertVerifyAuthVersion");
      }

      v19 = GetCertRef(kAuth3ECSSubCASimu, 667);
      if (v19)
      {
        v10 = v19;
LABEL_38:
        CFArrayAppendValue(v9, v10);
        CFRelease(v10);
        goto LABEL_39;
      }

      syslog(3, "%s ERROR: GetCertRef returned rcert:NULL for kAuth3ECSSubCASimu\n", "IapAuthCertVerifyAuthVersion");
    }

LABEL_39:
    SecTrustSetAnchorCertificates(trust, v9);
    CFRelease(v9);
    if (MEMORY[0x259C175B0](trust, &v21))
    {
      syslog(3, "%s ERROR: SecTrustEvaluate returned status rcOS:%02X\n");
    }

    else
    {
      v9 = 0;
      v10 = 1;
      if (v21 == 1 || v21 == 4)
      {
        goto LABEL_43;
      }

      if (v21 == 5)
      {
        v10 = 1;
        syslog(3, "%s ERROR: SecTrustEvaluate wrong result, expect:%02X or %02X, actual:%02X, ignore\n", "IapAuthCertVerifyAuthVersion", 4, 1, 5);
        goto LABEL_42;
      }

      syslog(3, "%s ERROR: SecTrustEvaluate wrong result, expect:%02X or %02X, actual:%02X\n");
    }

LABEL_41:
    v10 = 0;
LABEL_42:
    v9 = 0;
    goto LABEL_43;
  }

  if (a3 != 2)
  {
    goto LABEL_39;
  }

  v10 = SecCertificateCreateWithBytes();
  if (!v10)
  {
    syslog(3, "%s ERROR: SecCertificateCreateWithBytes returned pCertSubCA1:NULL\n");
    goto LABEL_43;
  }

  CFArrayAppendValue(v9, v10);
  CFRelease(v10);
  v10 = SecCertificateCreateWithBytes();
  if (v10)
  {
    goto LABEL_38;
  }

  syslog(3, "%s ERROR: SecCertificateCreateWithBytes returned pCertSubCA2:NULL\n");
LABEL_43:
  CFRelease(CertRef);
  CertRef = 0;
LABEL_44:
  if (trust)
  {
    CFRelease(trust);
  }

  if (CertRef)
  {
    CFRelease(CertRef);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if ((v10 & 1) == 0)
  {
    PrintCertSerialNumber(a1, a2);
  }

  return v10;
}

uint64_t IapAuthCertSerial(UInt8 *a1, CFIndex a2, uint64_t a3, unint64_t *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    syslog(3, "%s ERROR: Invalid parameter(s) pCert:%hhx, certLen:%04lX, ppOutBuf:%hhx, pOutLen:%hhx\n");
    return 0;
  }

  CertRef = GetCertRef(a1, a2);
  if (!CertRef)
  {
    syslog(3, "%s ERROR: GetCertRef returned pCertRef:NULL\n");
    return 0;
  }

  v7 = CertRef;
  v8 = SecCertificateCopySerialNumber(CertRef);
  if (!v8)
  {
    syslog(3, "%s ERROR: SecCertificateCopySerialNumber returned certificate pSerialNum:NULL\n", "IapAuthCertSerial");
    CFRelease(v7);
    return 0;
  }

  v9 = v8;
  Length = CFDataGetLength(v8);
  v11 = Length;
  if (*a4 < Length)
  {
    syslog(3, "%s ERROR: Cert serial number output buffer size too small, outLen:%04lX < certSerLen:%04lX\n", "IapAuthCertSerial", *a4, Length);
LABEL_9:
    BytePtr = CFDataGetBytePtr(v9);
    PrintSerialNumberBytes(BytePtr, v11);
    goto LABEL_10;
  }

  v15 = *a3;
  if (*a3)
  {
    v16 = CFDataGetBytePtr(v9);
    memcpy(v15, v16, v11);
    *a4 = v11;
    if (_findDeviceProperties_onceToken != -1)
    {
      IapAuthCertSerial_cold_1();
    }

    if (__isInternalBuild == 1 && (__isInternalDeveloperDevice & 1) != 0 || __isDeveloperBuild == 1)
    {
      v17 = SecCertificateGetiAuthVersion();
      v13 = 1;
      if (v11 == 15 && v17 == 2)
      {
        *(*a3 + 7) &= ~0x80u;
      }
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_11;
  }

  syslog(3, "%s ERROR: *outBuf pointer is NULL\n", "IapAuthCertSerial");
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  CFRelease(v7);
  CFRelease(v9);
  return v13;
}

void PrintSerialNumberBytes(unsigned __int8 *a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *v7 = 0u;
  if (a2 > 0x7D)
  {
    PrintSerialNumberBytes_cold_1();
  }

  v2 = a2;
  if (a2)
  {
    v4 = v7;
    while (1)
    {
      v5 = sprintf(v4, "%02X", *a1);
      if (v5 < 1)
      {
        break;
      }

      ++a1;
      v4 += v5;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    syslog(3, "%s ERROR: sprintf status:%02X\n", "PrintSerialNumberBytes", v5);
  }

LABEL_8:
  syslog(3, "Certificate serial number: [%s]\n", v7);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL IapAuthVerifyCertSerialNumber(UInt8 *a1, CFIndex a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v3;
  v9[1] = v3;
  v8 = v9;
  v7 = 32;
  if (a3 == 2)
  {
    v4 = 15;
  }

  else
  {
    v4 = 16;
  }

  if (!IapAuthCertSerial(a1, a2, &v8, &v7))
  {
    syslog(3, "%s AuthVer:%1X IapAuthCertSerial call fail bSerNumValid:%d\n");
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (v7 != v4)
  {
    syslog(3, "%s AuthVer:%1X serial number wrong length, expect:%02lX, actual:%02lX\n");
    goto LABEL_9;
  }

  result = MFiVerifyCertificateSerialNumber(v8, v4) == 0;
LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MFiVerifyCertificateSerialNumber(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    syslog(3, "%s:%d ERROR NULL serial number pointer\n");
    return 4294967246;
  }

  if (a2 == 16)
  {
    v19 = *a1;
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = (v19 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
      NumRevokedAuth3Wafers = getNumRevokedAuth3Wafers();
      RevokedAuth3Wafers = getRevokedAuth3Wafers();
      for (i = 0; ; NumRevokedAuth3Wafers = (v24 + i) >> 1)
      {
        v24 = NumRevokedAuth3Wafers - 1;
        while (1)
        {
          if (i >= NumRevokedAuth3Wafers)
          {
            return 0;
          }

          v25 = (v24 + i) >> 1;
          v26 = RevokedAuth3Wafers[v25];
          if (v26 > v20)
          {
            break;
          }

          i = v25 + 1;
          if (v26 >= v20)
          {
            v18 = 4294899610;
            syslog(3, "%s:%d ERROR: Revoked wafer match found !\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", 1429);
            v28 = a1;
            v29 = 16;
LABEL_32:
            PrintSerialNumberBytes(v28, v29);
            return v18;
          }
        }
      }
    }

    syslog(3, "%s:%d ERROR Invalid WaferID MSB byte:%02X\n");
    return 4294967246;
  }

  if (a2 != 15)
  {
    syslog(3, "%s:%d ERROR Unsupported serial number length: %02X\n");
    return 4294967246;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[7];
  v9 = a1[9];
  v10 = a1[10];
  v38 = a1[13];
  v39 = a1[12];
  v37 = a1[14];
  NumRevokedAuthICBatches = getNumRevokedAuthICBatches();
  RevokedAuthICBatches = getRevokedAuthICBatches();
  v13 = NumRevokedAuthICBatches - 1;
  if (NumRevokedAuthICBatches < 1)
  {
    return 0;
  }

  v14 = 0;
  v15 = ((v3 << 56) | (v4 << 48) | (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8)) + v10;
  while (1)
  {
    v16 = (v13 + v14) >> 1;
    v17 = &RevokedAuthICBatches[24 * v16];
    if (*v17 <= v15)
    {
      break;
    }

    v13 = v16 - 1;
LABEL_10:
    if (v14 > v13)
    {
      return 0;
    }
  }

  if (*v17 < v15)
  {
    v14 = v16 + 1;
    goto LABEL_10;
  }

  v30 = 0;
  v31 = (v39 << 16) | (v38 << 8) | v37;
  v32 = *(v17 + 2);
  v33 = *(v17 + 2);
LABEL_26:
  v34 = v33 - 1;
  while (v30 < v33)
  {
    v35 = (v32 + 3 * ((v34 + v30) >> 1));
    v36 = (*v35 << 16) | (v35[1] << 8) | v35[2];
    if (v36 > v31)
    {
      v33 = (v34 + v30) >> 1;
      goto LABEL_26;
    }

    v30 = ((v34 + v30) >> 1) + 1;
    if (v36 >= v31)
    {
      v18 = 4294899610;
      syslog(3, "%s:%d ERROR: Auth:%02X Revoked certificate match found !\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", 1403, 2);
      v28 = a1;
      v29 = 15;
      goto LABEL_32;
    }
  }

  return 0;
}

uint64_t IapAuthGetCertClassAuthV2(UInt8 *a1, CFIndex a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = 16;
  v4 = v6;
  if (IapAuthCertSerial(a1, a2, &v4, &v5) && v5 == 15)
  {
    result = v4[7];
    if (result < 0x11)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v5 != 15)
  {
    syslog(3, "%s:%d ERROR (if auth v2, not v3): Certificate serial number size invalid, expect:%02lX, actual:%02lX\n");
    goto LABEL_9;
  }

  if (v4[7] >= 0x11u)
  {
LABEL_7:
    syslog(3, "%s:%d ERROR (if auth v2, not v3): Certificate serial number class invalid, actual:%02X > maximum:%02X\n");
LABEL_9:
    PrintSerialNumberBytes(v4, v5);
  }

  result = 0x7FFFFFFFLL;
LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ___findDeviceProperties_block_invoke()
{
  __isInternalBuild = 0;
  __isDesenseBuild = 0;
  __isDeveloperBuild = 0;
  __isInternalDeveloperDevice = 0;
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    __isInternalBuild = CFEqual(v0, @"Internal") != 0;
    __isDesenseBuild = CFEqual(v1, @"Desense") != 0;
    __isDeveloperBuild = CFEqual(v1, @"Beta") != 0;
    CFRelease(v1);
  }

  else
  {
    __isInternalBuild = 0;
    __isDesenseBuild = 0;
    __isDeveloperBuild = 0;
  }

  v2 = MGCopyAnswer();
  __isInternalDeveloperDevice = CFBooleanGetValue(v2) == 0;

  CFRelease(v2);
}

BOOL VerifyCertSerialNumber(const void *a1)
{
  CFRetain(a1);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  SecCertRef = GetSecCertRef(BytePtr, Length);
  if (SecCertRef)
  {
    v5 = SecCertRef;
    v6 = SecCertificateGetiAuthVersion();
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = IapAuthVerifyCertSerialNumber(BytePtr, Length, v6);
  CFRelease(a1);
  return v7;
}

const void *GetSecCertRef(UInt8 *bytes, CFIndex length)
{
  v2 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBED00]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecCMSCertificatesOnlyMessageCopyCertificates();
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) < 1)
    {
      v7 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v7 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

uint64_t VerifyCertAuthority(const void *a1)
{
  CFRetain(a1);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  SecCertRef = GetSecCertRef(BytePtr, Length);
  if (SecCertRef)
  {
    v5 = SecCertRef;
    v6 = SecCertificateGetiAuthVersion();
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = IapAuthCertVerifyAuthVersion(BytePtr, Length, v6);
  CFRelease(a1);
  return v7;
}

const __CFData *VerifyCertAuthorityDictionary(const void *a1)
{
  CFRetain(a1);
  Value = CFDictionaryGetValue(a1, @"kAuthCertBufferKey");
  if (Value)
  {
    v3 = CFDictionaryGetValue(a1, @"kAuthVersionKey");
    v4 = 2;
    if (v3)
    {
      valuePtr = 2;
      v5 = CFNumberGetValue(v3, kCFNumberCharType, &valuePtr);
      v6 = valuePtr;
      if (!v5)
      {
        v6 = 2;
      }

      v4 = v6;
    }

    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(Value);
    if (IapAuthCertVerifyAuthVersion(BytePtr, Length, v4))
    {
      Value = VerifyCertSerialNumber(Value);
    }

    else
    {
      Value = 0;
    }
  }

  CFRelease(a1);
  return Value;
}

uint64_t VerifyNonceSigned(const void *a1)
{
  CFRetain(a1);
  Value = CFDictionaryGetValue(a1, @"kAuthCertBufferKey");
  if (Value && (v3 = Value, (v4 = CFDictionaryGetValue(a1, @"kAuthNonceBufferKey")) != 0))
  {
    v5 = v4;
    v6 = CFDictionaryGetValue(a1, @"kAuthVersionKey");
    v7 = 2;
    if (v6)
    {
      valuePtr = 2;
      v8 = CFNumberGetValue(v6, kCFNumberCharType, &valuePtr);
      v9 = valuePtr;
      if (!v8)
      {
        v9 = 2;
      }

      v7 = v9;
    }

    v10 = CFDictionaryGetValue(a1, @"kAuthResponseBufferKey");
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v3);
    v13 = CFDataGetBytePtr(v5);
    v14 = CFDataGetLength(v5);
    v15 = CFDataGetBytePtr(v10);
    v16 = CFDataGetLength(v10);
    v17 = IapAuthChallengeVerify(BytePtr, Length, v13, v14, v15, v16, v7);
  }

  else
  {
    v17 = 0;
  }

  CFRelease(a1);
  return v17;
}

uint64_t GetCertClass(const void *a1)
{
  CFRetain(a1);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  CertClassAuthV2 = IapAuthGetCertClassAuthV2(BytePtr, Length);
  CFRelease(a1);
  return CertClassAuthV2;
}

void GetRandomDigest(size_t a1, CFDataRef *a2)
{
  v4 = malloc_type_malloc(a1, 0xE4AFAA54uLL);
  arc4random_buf(v4, a1);
  *a2 = CFDataCreate(*MEMORY[0x277CBECE8], v4, a1);

  free(v4);
}

unint64_t *AllocCapsFromAuthCert(const __CFData *a1, int a2, uint64_t *a3)
{
  v6 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = 0u;
    *(v6 + 1) = 0u;
    if (a1)
    {
      Length = CFDataGetLength(a1);
      BytePtr = CFDataGetBytePtr(a1);
      SecCertRef = GetSecCertRef(BytePtr, Length);
      if (SecCertRef)
      {
        v11 = SecCertRef;
        if (!a2)
        {
          a2 = SecCertificateGetiAuthVersion();
        }

        if (a2 == 3)
        {
          v13 = SecCertificateCopyiAPAuthCapabilities();
          if (v13)
          {
            v14 = v13;
            v15 = CFDataGetBytePtr(v13);
            if (CFDataGetLength(v14) == 32)
            {
              v16 = bswap64(*v15);
              v17 = bswap64(v15[1]);
              v18 = bswap64(v15[2]);
              v19 = bswap64(v15[3]);
              v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
              if ((v19 & 4) != 0)
              {
                v20 = v19 & 0xFFFFFFFFFFFFF0FELL | 0xF00;
              }

              if ((v19 & 2) != 0)
              {
                v21 = v19 & 0xFFFFFFFFFFFFF0FELL | 0xF00;
              }

              else
              {
                v21 = v20;
              }

              CFRelease(v14);
              *v7 = v21;
              v7[1] = v18;
              v7[2] = v17;
              v7[3] = v16;
              syslog(4, "%s AuthV3 orig authCertCaps0:%08llX -> final authCertCaps0:%08llX\n");
LABEL_21:
              CFRelease(v11);
              v22 = 32;
              if (!a3)
              {
                return v7;
              }

              goto LABEL_28;
            }

            CFRelease(v14);
          }

          else
          {
            syslog(3, "%s No AuthV3 Caps found in cert !\n");
          }
        }

        else if (a2 == 2)
        {
          CertClass = GetCertClass(a1);
          if (CertClass < 0xD)
          {
            *v7 = GetAccessoryCaps_kCertAccessoryCaps[CertClass];
            v7[1] = 0;
            v7[2] = 0;
            v7[3] = 0;
            syslog(4, "%s AuthV2 authCertClass:%02X -> authCertCaps0:%08llX\n");
            goto LABEL_21;
          }
        }

        else
        {
          syslog(3, "%s Unrecognized/unsupported authVerMajor:%02X (pSecCertRef:%04X)\n");
        }

        CFRelease(v11);
      }

      else
      {
        syslog(3, "%s NULL cert reference\n");
      }
    }

    else
    {
      syslog(3, "%s NULL cert data\n");
    }

    syslog(3, "%s GetAccessoryCaps failed bStatus:%d\n", "AllocCapsFromAuthCert", 0);
    free(v7);
    v7 = 0;
  }

  else
  {
    syslog(3, "%s Object allocation failed pAccCaps:%hhx\n", "AllocCapsFromAuthCert", 0);
  }

  v22 = 0;
  if (a3)
  {
LABEL_28:
    *a3 = v22;
  }

  return v7;
}

unsigned __int8 *IsAppleHWModule(unsigned __int8 *result)
{
  if (result)
  {
    return ((*result >> 3) & 1);
  }

  return result;
}

unsigned __int8 *IsAppleMFiAccessory(unsigned __int8 *result)
{
  if (result)
  {
    return ((*result >> 4) & 1);
  }

  return result;
}

uint64_t CanChargeHighVoltage(uint64_t result)
{
  if (result)
  {
    return *(result + 1) & 1;
  }

  return result;
}

uint64_t CanChargeInductive(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 1) & 1;
  }

  return result;
}

uint64_t CanUseAccPwrUHPM(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 2) & 1;
  }

  return result;
}

uint64_t CanUseAccPwrLoV(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 3) & 1;
  }

  return result;
}

_BYTE *IsAppleAccessory(_BYTE *result)
{
  if (result)
  {
    return ((*result & 0x18) == 0);
  }

  return result;
}

void PrintSerialNumberBytes_cold_1()
{
  _os_assert_log();
  v0 = _os_crash();
  __break(1u);
  CC_SHA1_Init(v0);
}