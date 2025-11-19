@interface CertUITrustManager
+ (id)defaultTrustManager;
- (BOOL)_hasExceptionsForSMIMETrust:(__SecTrust *)a3 sender:(id)a4;
- (CertUITrustManager)initWithAccessGroup:(id)a3;
- (id)_getExceptionsForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5;
- (int)_actionForTrust:(__SecTrust *)a3 exceptions:(id)a4;
- (int)actionForSMIMETrust:(__SecTrust *)a3 sender:(id)a4;
- (int)actionForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5;
- (unsigned)_rawTrustResultForTrust:(__SecTrust *)a3 exceptions:(id)a4;
- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5;
- (void)addSMIMETrust:(__SecTrust *)a3 sender:(id)a4;
- (void)addSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5;
- (void)removeAllTrusts;
- (void)removeSMIMETrust:(__SecTrust *)a3 sender:(id)a4;
- (void)removeSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5;
@end

@implementation CertUITrustManager

+ (id)defaultTrustManager
{
  if (defaultTrustManager_onceToken != -1)
  {
    +[CertUITrustManager defaultTrustManager];
  }

  v3 = defaultTrustManager_sDefaultManager;

  return v3;
}

uint64_t __41__CertUITrustManager_defaultTrustManager__block_invoke()
{
  defaultTrustManager_sDefaultManager = objc_alloc_init(CertUITrustManager);

  return MEMORY[0x2821F96F8]();
}

- (CertUITrustManager)initWithAccessGroup:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CertUITrustManager;
  v5 = [(CertUITrustManager *)&v9 init];
  if (v5)
  {
    CertUILoggingInitialize();
    v6 = [v4 copy];
    access = v5->_access;
    v5->_access = v6;
  }

  return v5;
}

- (int)_actionForTrust:(__SecTrust *)a3 exceptions:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  SecTrustSetExceptions(a3, a4);
  v15 = 0;
  if (MEMORY[0x245D32EE0](a3, &v15))
  {
    goto LABEL_2;
  }

  if (v15 <= 3)
  {
    if (v15 != 1)
    {
      if (v15 == 3)
      {
        v8 = _CertUILogObjects;
        if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v17 = v15;
          v9 = "Got SecTrustEvaluate result %u. Denying.";
          v10 = v8;
          v11 = OS_LOG_TYPE_INFO;
LABEL_15:
          _os_log_impl(&dword_2433D3000, v10, v11, v9, buf, 8u);
          goto LABEL_2;
        }

        goto LABEL_2;
      }

LABEL_13:
      v13 = _CertUILogObjects;
      if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v17 = v15;
        v9 = "Don't know how to handle SecTrustEvaluate result %u. Denying";
        v10 = v13;
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_15;
      }

LABEL_2:
      v5 = 0;
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (v15 != 5)
  {
    if (v15 != 4)
    {
      goto LABEL_13;
    }

LABEL_11:
    v12 = _CertUILogObjects;
    v5 = 1;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = v15;
      _os_log_impl(&dword_2433D3000, v12, OS_LOG_TYPE_INFO, "Got SecTrustEvaluate result %u. Allowing.", buf, 8u);
    }

    goto LABEL_3;
  }

  v14 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v17 = v15;
    _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_INFO, "Got SecTrustEvaluate result %u. Need to prompt.", buf, 8u);
  }

  v5 = 2;
LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)_rawTrustResultForTrust:(__SecTrust *)a3 exceptions:(id)a4
{
  SecTrustSetExceptions(a3, a4);
  v6 = 3;
  if (MEMORY[0x245D32EE0](a3, &v6))
  {
    return 3;
  }

  else
  {
    return v6;
  }
}

- (id)_getExceptionsForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (!a3 || !v9 || SecTrustGetCertificateCount(a3) <= 0)
  {
    v17 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = NSStringFromSelector(a2);
      v22 = 138412802;
      v23 = v19;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = a3;
      _os_log_impl(&dword_2433D3000, v18, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v22, 0x20u);
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  SecTrustGetCertificateAtIndex(a3, 0);
  SHA1Digest = SecCertificateGetSHA1Digest();
  DictionaryForDigestHostService = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, v9, v10);
  if (!DictionaryForDigestHostService || (v13 = DictionaryForDigestHostService, v14 = _CopyExceptionsForMutableQuery(DictionaryForDigestHostService), CFRelease(v13), !v14))
  {
    v15 = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, v9, 0);
    if (v15)
    {
      v16 = v15;
      v14 = _CopyExceptionsForMutableQuery(v15);
      CFRelease(v16);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (int)actionForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a3 && v9 && SecTrustGetCertificateCount(a3) > 0)
  {
    v11 = [(CertUITrustManager *)self _getExceptionsForSSLTrust:a3 hostname:v9 service:v10];
    v12 = [(CertUITrustManager *)self _actionForTrust:a3 exceptions:v11];
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = a3;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v18, 0x20u);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a3 && v9 && SecTrustGetCertificateCount(a3) > 0)
  {
    v11 = [(CertUITrustManager *)self _getExceptionsForSSLTrust:a3 hostname:v9 service:v10];
    v12 = [(CertUITrustManager *)self _rawTrustResultForTrust:a3 exceptions:v11];
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = a3;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v18, 0x20u);
    }

    v12 = 3;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)actionForSMIMETrust:(__SecTrust *)a3 sender:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a3 && v7 && SecTrustGetCertificateCount(a3) > 0)
  {
    SecTrustGetCertificateAtIndex(a3, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
    if (DictionaryForDigestSender)
    {
      v11 = DictionaryForDigestSender;
      v12 = _CopyExceptionsForMutableQuery(DictionaryForDigestSender);
      CFRelease(v11);
    }

    else
    {
      v12 = 0;
    }

    v16 = [(CertUITrustManager *)self _actionForTrust:a3 exceptions:v12];
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v19 = 138412802;
      v20 = v15;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = a3;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", &v19, 0x20u);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)addSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a3 && v9 && SecTrustGetCertificateCount(a3) > 0)
  {
    v11 = SecTrustCopyExceptions(a3);
    SecTrustGetCertificateAtIndex(a3, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestHostService = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, v9, v10);
    if (DictionaryForDigestHostService)
    {
      v14 = DictionaryForDigestHostService;
      _SaveExceptionsForMutableQuery(DictionaryForDigestHostService, v11, *MEMORY[0x277CDBEF0]);
      CFRelease(v14);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v15 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = NSStringFromSelector(a2);
      v19 = 138412802;
      v20 = v17;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = a3;
      _os_log_impl(&dword_2433D3000, v16, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addSMIMETrust:(__SecTrust *)a3 sender:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a3 && v7 && SecTrustGetCertificateCount(a3) > 0)
  {
    v9 = SecTrustCopyExceptions(a3);
    SecTrustGetCertificateAtIndex(a3, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
    if (DictionaryForDigestSender)
    {
      v12 = DictionaryForDigestSender;
      _SaveExceptionsForMutableQuery(DictionaryForDigestSender, v9, 0);
      CFRelease(v12);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = a3;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", &v17, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a3 && v9 && SecTrustGetCertificateCount(a3) > 0)
  {
    SecTrustGetCertificateAtIndex(a3, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestHostService = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, v9, v10);
    _DeleteExceptionsForQuery(DictionaryForDigestHostService);
    if (DictionaryForDigestHostService)
    {
      CFRelease(DictionaryForDigestHostService);
    }
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = a3;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v17, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeSMIMETrust:(__SecTrust *)a3 sender:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a3 && v7 && SecTrustGetCertificateCount(a3) > 0)
  {
    SecTrustGetCertificateAtIndex(a3, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
    _DeleteExceptionsForQuery(DictionaryForDigestSender);
    if (DictionaryForDigestSender)
    {
      CFRelease(DictionaryForDigestSender);
    }
  }

  else
  {
    v11 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = a3;
      _os_log_impl(&dword_2433D3000, v12, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeAllTrusts
{
  DictionaryForDigest = _CopyVersion2QueryDictionaryForDigest(self->_access, 0);
  _DeleteExceptionsForQuery(DictionaryForDigest);
  if (DictionaryForDigest)
  {

    CFRelease(DictionaryForDigest);
  }
}

- (BOOL)_hasExceptionsForSMIMETrust:(__SecTrust *)a3 sender:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (!a3 || !v7 || SecTrustGetCertificateCount(a3) <= 0)
  {
    v24 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = NSStringFromSelector(a2);
      *buf = 138412802;
      v40 = v26;
      v41 = 2112;
      v42 = v8;
      v43 = 2112;
      v44 = a3;
      _os_log_impl(&dword_2433D3000, v25, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  SecTrustGetCertificateAtIndex(a3, 0);
  SHA1Digest = SecCertificateGetSHA1Digest();
  DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
  v11 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v12 = *MEMORY[0x277CDBF20];
    v13 = v11;
    Value = CFDictionaryGetValue(DictionaryForDigestSender, v12);
    v15 = *MEMORY[0x277CDBEC8];
    v16 = Value;
    v17 = CFDictionaryGetValue(DictionaryForDigestSender, v15);
    v18 = @"global";
    if (v17)
    {
      v18 = v17;
    }

    *buf = 138412546;
    v40 = Value;
    v41 = 2112;
    v42 = v18;
    _os_log_impl(&dword_2433D3000, v13, OS_LOG_TYPE_INFO, "Finding exceptions for %@ in %@ access group", buf, 0x16u);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, DictionaryForDigestSender);
  CFDictionaryAddValue(MutableCopy, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  result = 0;
  v20 = SecItemCopyMatching(MutableCopy, &result);
  CFRelease(MutableCopy);
  if (v20 != -25300 && v20 != 0)
  {
    v29 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v31 = *MEMORY[0x277CDBF20];
      v32 = v29;
      v33 = CFDictionaryGetValue(DictionaryForDigestSender, v31);
      v34 = *MEMORY[0x277CDBEC8];
      v35 = v33;
      v36 = CFDictionaryGetValue(DictionaryForDigestSender, v34);
      v37 = @"global";
      *buf = 138412802;
      v40 = v33;
      if (v36)
      {
        v37 = v36;
      }

      v41 = 2112;
      v42 = v37;
      v43 = 1024;
      LODWORD(v44) = v20;
      _os_log_impl(&dword_2433D3000, v32, OS_LOG_TYPE_ERROR, "Couldn't find trust settings for %@ in %@ access group (%d)", buf, 0x1Cu);
    }
  }

  v22 = result;
  if (DictionaryForDigestSender)
  {
    CFRelease(DictionaryForDigestSender);
  }

  if (!v22)
  {
LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  CFRelease(v22);
  v23 = 1;
LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

@end