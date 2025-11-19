uint64_t sub_22E9EEAE4(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v1)
  {
    v2 = dispatch_semaphore_create(0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22E9EEF3C;
    v7[3] = &unk_27885A0B0;
    v10 = &v11;
    v8 = v1;
    v3 = v2;
    v9 = v3;
    objc_msgSend_fetchTermsWithAltDSID_reply_(CSCertOperations, v4, v8, v7);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v5 = *(v12 + 24);
  }

  else
  {
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5138(v3);
    }

    v5 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v5 & 1;
}

void sub_22E9EEC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22E9EECE4(void *a1)
{
  v1 = a1;
  if (sub_22E9EC6C4())
  {
    v3 = objc_msgSend_isEqualToString_(v1, v2, @"PROD") ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_22E9EED34(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = objc_msgSend_count(v1, v3, v4);
  v27 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v34, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = objc_alloc(MEMORY[0x277CBEBC0]);
        isDirectory = objc_msgSend_initFileURLWithPath_isDirectory_(v15, v16, v14, 0);
        v18 = CloudServicesLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = isDirectory;
          _os_log_impl(&dword_22E9CA000, v18, OS_LOG_TYPE_DEFAULT, "cert URL = %@", buf, 0xCu);
        }

        if (isDirectory)
        {
          v19 = objc_alloc(MEMORY[0x277CBEA90]);
          v21 = objc_msgSend_initWithContentsOfURL_(v19, v20, isDirectory);
          if (v21)
          {
            v23 = SecCertificateCreateWithData(v12, v21);
            if (v23)
            {
              objc_msgSend_addObject_(v27, v22, v23);
            }
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v24, &v28, v34, 16);
    }

    while (v10);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

void sub_22E9EEF3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (!a2 || v5)
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F517C(a1, v8, v12);
    }
  }

  else
  {
    v9 = objc_msgSend_firstObject(a2, v6, v7);
    v12 = v9;
    if (v9)
    {
      v13 = objc_msgSend_countryCode(v9, v10, v11);
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_isEqualToString_(v13, v14, @"CN");
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_22E9F0358(char *a1, ...)
{
  va_start(va, a1);
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  if (vasprintf(&v5, a1, va) != -1 && v5 != 0)
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = v5;
      _os_log_impl(&dword_22E9CA000, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    free(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_22E9F0430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E9F0448(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = &a9;
  v23 = 0;
  if (vasprintf(&v23, a2, &a9) != -1 && v23 != 0)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = objc_msgSend_initWithUTF8String_(v14, v15, v23, &a9);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v17, v16, *MEMORY[0x277CCA450]);

    free(v23);
  }

  v18 = *(*(*(a1 + 32) + 8) + 40);
  if (v18)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v18, *MEMORY[0x277CCA7E8]);
  }

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"EscrowServiceErrorDomain", 102, v11, v22);
  v20 = *(*(a1 + 32) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void sub_22E9F2BE8(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getAccountInfoWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2C60()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22E9DC7C0();
  sub_22E9DC7CC(&dword_22E9CA000, v0, v1, "fetchStingrayAccountStatus remote proxy error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2CC8(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "enableWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2D40(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2DB8(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverRecordContentsWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2E30(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "createICDPRecord remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2EA8(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "disableWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2F20(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "stashRecoveryDataWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F2F98(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "updateMetadata remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3010(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "cachePassphraseWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3088(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "uncachePassphraseWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3100(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "cacheRecoveryKeyWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3178(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "uncacheRecoveryKeyWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F31F0(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "startSMSChallengeWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3268(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getCountrySMSCodesWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F32E0(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "changeSMSTargetWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3358(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "backupWithInfo remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F33D0(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "backOffDateWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3448(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "setBackOffDateWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F34C0(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "notificationInfoWithReply remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3538(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "stateCaptureWithReply remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F35B0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3628(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F36A0(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "updateMetadataWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3718(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3790(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3808(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3880(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverWithCDPContext: remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F38F8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3970(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F39E8(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverSilentWithCDPContextAndRecords: remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3A60(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3AD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3B50(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "isRecoveryKeySet: remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3BC8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3C40(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "restoreKeychainAsyncWithPassword: remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3CB8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3D30(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "restoreKeychainWithBackupPassword: remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3DA8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3E20(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "verifyRecoveryKey: remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3E98(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3F10(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "removeRecoveryKeyFromBackup: remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F3F88(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4000(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4078(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F40F0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4168()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22E9DC7C0();
  sub_22E9DC7CC(&dword_22E9CA000, v0, v1, "backupForRecoveryKeyWithInfo remote proxy error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22E9F41D0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4248(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F42C0(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "prepareHSA2EscrowRecordContents remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F434C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  sub_22E9DC7CC(&dword_22E9CA000, a2, a3, "unknown passcode request state: %llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F43BC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4434(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "daemonPasscodeRequestOpinion remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F44AC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4524(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "beginHSA2PasscodeRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F459C(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getCertificatesWithRequest remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4614(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "saveTermsAcceptance remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F468C(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getAcceptedTermsForAltDSID remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F4704(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "moveToFederationAllowed remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F477C(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "knownICDPFederations remote proxy error: %ld", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9F484C()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = sub_22E9E0534(v0);
  sub_22E9E0558(&dword_22E9CA000, v2, v3, "invalid type for key %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  sub_22E9E745C();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v68 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = 0;
  v65 = v26;
  bzero(__src, 0x4000uLL);
  v62 = a23;
  __count = 0x4000;
  v59[0] = v40;
  memset(__n, 0, sizeof(__n));
  v59[1] = v38;
  v59[2] = v36;
  v59[3] = v34;
  v59[4] = v32;
  v59[5] = v30;
  v59[6] = v28;
  v60 = a21;
  v61 = a22;
  if (sub_22E9F4DB4(v59, &__n[1], __n) || (v66 = *&__n[1], v67 = __n[0], !a24))
  {
    sub_22E9E7474();
  }

  else
  {
    sub_22E9E7474();
    if (a25)
    {
      v41 = sub_22E9E7228();
      if (v41)
      {
        if (!sub_22E9E7424(v41, 0x9Fu, &v65, 3u, v42, v43, v44, v45, __src, &__count))
        {
          v46 = calloc(__count, 1uLL);
          *a24 = v46;
          if (v46)
          {
            v47 = __count;
            *a25 = __count;
            memcpy(v46, __src, v47);
          }
        }
      }

      else
      {
        v49 = *MEMORY[0x277D85E08];
        sub_22E9E7410();
        fprintf(v50, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v51, v52, v53, v54, v55, v56, v57, ":", 3201, &unk_22E9FB10B, &unk_22E9FB10B);
      }
    }
  }

  sub_22E9E7480(*&__n[1], __n[0]);
  free(*&__n[1]);
  sub_22E9E7480(__src, __count);
  v48 = *MEMORY[0x277D85DE8];
  sub_22E9E7444();
}

uint64_t sub_22E9F4B00(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_22E9F4F14);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_22E9F4CD0()
{
  result = sub_22E9E7630();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = sub_22E9E75E4();
    if (sub_22E9E7618(v6))
    {
      sub_22E9E75B4();
      v7 = ccder_blob_encode_body();
      if (v7 && (sub_22E9E75D8(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (sub_22E9E7544(), sub_22E9E7534(), sub_22E9E7590(), sub_22E9E7534(), v15 == v1) && (v16 = sub_22E9E7600()) != 0)
      {
        return sub_22E9E7518(v16);
      }

      else
      {
        sub_22E9E7570();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_22E9F4DB4(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], sub_22E9F4CD0()) || a1[2] && (v6 = a1[3], sub_22E9F4CD0()) || a1[4] && (v7 = a1[5], sub_22E9F4CD0()) || a1[6] && (v8 = a1[7], sub_22E9F4CD0()) || a1[8] && (v9 = a1[9], sub_22E9F4CD0()) || a1[10] && (v10 = a1[11], sub_22E9F4CD0()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = sub_22E9F4B00(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_22E9E75C8(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  sub_22E9E7498(&v23);
  return v3;
}

uint64_t sub_22E9F4F14(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

void sub_22E9F5054(NSObject *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __error();
  v3 = strerror(*v2);
  v4 = *__error();
  v6 = 136315394;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_22E9CA000, a1, OS_LOG_TYPE_ERROR, "No code for POSIX error: %s (%d)", &v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22E9F511C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_22E9F517C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138478083;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22E9CA000, log, OS_LOG_TYPE_ERROR, "failed to get terms for altDSID %{private}@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22E9F5208()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22E9F5278()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22E9F52E8()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5324(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  sub_22E9F2AE8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22E9F539C()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F53D8()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5414()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22E9F5484(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_22E9CA000, log, OS_LOG_TYPE_ERROR, "srp_challenge_process failed: %d, %@", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22E9F5514(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_22E9CA000, log, OS_LOG_TYPE_ERROR, "unknown reqVersion: %d", buf, 8u);
}

void sub_22E9F555C()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5598()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F55D4(void *a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_msgSend_length(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9F2B00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F5654()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22E9F56C4(void *a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_msgSend_reqVersion(a1, a2, a3);
  sub_22E9F2B00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9F5748()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5784()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F57C0()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F57FC()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5838()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}