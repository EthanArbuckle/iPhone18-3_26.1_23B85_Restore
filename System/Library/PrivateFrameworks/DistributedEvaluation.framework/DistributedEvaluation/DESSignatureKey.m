@interface DESSignatureKey
+ (__SecKey)keyFromCertificateChain:(id)a3;
+ (id)keyFromData:(id)a3;
- (BOOL)validateBase64Signature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5;
- (BOOL)validateSignature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5;
- (DESSignatureKey)initWithKey:(__SecKey *)a3;
- (void)dealloc;
@end

@implementation DESSignatureKey

+ (id)keyFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [DESSignatureKey keyFromCertificateChain:v3];
    if (v4)
    {
      v4 = [[DESSignatureKey alloc] initWithKey:v4];
    }
  }

  else
  {
    v5 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[DESSignatureKey keyFromData:];
    }

    v4 = 0;
  }

  return v4;
}

+ (__SecKey)keyFromCertificateChain:(id)a3
{
  v33 = a3;
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v33 encoding:4];
  v4 = objc_opt_new();
  if ([v3 length])
  {
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [MEMORY[0x277CCAC80] scannerWithString:v3];
      v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\n"];
      [v6 setCharactersToBeSkipped:v7];

      [v6 scanUpToString:@"-----BEGIN CERTIFICATE-----" intoString:0];
      [v6 scanString:@"-----BEGIN CERTIFICATE-----" intoString:0];
      v37 = 0;
      [v6 scanUpToString:@"-----END CERTIFICATE-----" intoString:&v37];
      v8 = v37;
      if (!v8)
      {

        objc_autoreleasePoolPop(v5);
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:1];
      if (!v10)
      {
        break;
      }

      v11 = SecCertificateCreateWithData(0, v10);
      if (!v11)
      {
        v26 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[DESSignatureKey keyFromCertificateChain:];
        }

        goto LABEL_26;
      }

      v12 = v11;
      [v4 addObject:v11];

      [v6 scanString:@"-----END CERTIFICATE-----" intoString:0];
      v13 = [v6 string];
      v14 = [v13 substringFromIndex:{objc_msgSend(v6, "scanLocation")}];

      objc_autoreleasePoolPop(v5);
      v3 = v14;
      if (![v14 length])
      {
        goto LABEL_9;
      }
    }

    v26 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[DESSignatureKey keyFromCertificateChain:];
    }

LABEL_26:

    objc_autoreleasePoolPop(v5);
    v20 = 0;
    goto LABEL_27;
  }

LABEL_8:
  v14 = v3;
LABEL_9:
  if ([v4 count])
  {
    commonName = 0;
    v15 = [v4 objectAtIndexedSubscript:0];
    v16 = SecCertificateCopyCommonName(v15, &commonName);

    if (v16)
    {
      v17 = +[DESLogging coreChannel];
      v18 = v33;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        +[DESSignatureKey keyFromCertificateChain:];
      }

LABEL_31:
      v20 = 0;
LABEL_32:

      v3 = v14;
      goto LABEL_33;
    }

    v17 = commonName;
    if (![(__CFString *)commonName isEqualToString:@"DoDML"]|| (ApplePinned = SecPolicyCreateApplePinned()) == 0)
    {
      v27 = +[DESLogging coreChannel];
      v18 = v33;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        +[DESSignatureKey keyFromCertificateChain:];
      }

      goto LABEL_31;
    }

    v22 = ApplePinned;
    trust = 0;
    v23 = SecTrustCreateWithCertificates(v4, ApplePinned, &trust);
    if (v23)
    {
      v24 = v23;
      v25 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(DESSignatureKey *)v24 keyFromCertificateChain:v25];
      }

      v20 = 0;
      v18 = v33;
      goto LABEL_42;
    }

    error = 0;
    if (SecTrustEvaluateWithError(trust, &error))
    {
      v29 = [v4 objectAtIndexedSubscript:0];
      v20 = SecCertificateCopyKey(v29);

      v18 = v33;
      if (v20)
      {
LABEL_42:
        if (trust)
        {
          CFRelease(trust);
        }

        CFRelease(v22);
        if (v20)
        {
          v32 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            +[DESSignatureKey keyFromCertificateChain:];
          }
        }

        goto LABEL_32;
      }

      v30 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        +[DESSignatureKey keyFromCertificateChain:];
      }
    }

    else
    {
      v30 = error;
      v31 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[DESSignatureKey keyFromCertificateChain:];
      }

      v18 = v33;
    }

    v20 = 0;
    goto LABEL_42;
  }

  v19 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    +[DESSignatureKey keyFromCertificateChain:];
  }

  v20 = 0;
  v3 = v14;
LABEL_27:
  v18 = v33;
LABEL_33:

  return v20;
}

- (DESSignatureKey)initWithKey:(__SecKey *)a3
{
  v5.receiver = self;
  v5.super_class = DESSignatureKey;
  result = [(DESSignatureKey *)&v5 init];
  if (result)
  {
    result->_key = a3;
  }

  return result;
}

- (void)dealloc
{
  key = self->_key;
  if (key)
  {
    CFRelease(key);
  }

  v4.receiver = self;
  v4.super_class = DESSignatureKey;
  [(DESSignatureKey *)&v4 dealloc];
}

- (BOOL)validateBase64Signature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = a3;
    a3 = [[v9 alloc] initWithBase64EncodedString:v10 options:1];
  }

  v11 = [(DESSignatureKey *)self validateSignature:a3 data:v8 algorithm:a5];

  return v11;
}

- (BOOL)validateSignature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    key = self->_key;
    if (!key)
    {
      [(DESSignatureKey *)a2 validateSignature:&self->_key data:&error algorithm:?];
      key = error;
    }

    if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeVerify, a5))
    {
      error = 0;
      v14 = SecKeyVerifySignature(self->_key, a5, v11, v9, &error);
      v12 = v14 != 0;
      if (!v14)
      {
        v15 = error;
        v16 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [DESSignatureKey validateSignature:data:algorithm:];
        }
      }
    }

    else
    {
      v17 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [DESSignatureKey validateSignature:data:algorithm:];
      }

      v12 = 0;
    }
  }

  return v12;
}

+ (void)keyFromCertificateChain:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)keyFromCertificateChain:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)keyFromCertificateChain:(OSStatus)a1 .cold.4(OSStatus a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SecCopyErrorMessageString(a1, 0);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "DESSignatureKey: trust creation for the certificate chain failed with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)keyFromCertificateChain:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateSignature:(void *)a3 data:(void *)a4 algorithm:.cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"DESSignatureKey.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"_key"}];

  *a4 = *a3;
}

- (void)validateSignature:data:algorithm:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end