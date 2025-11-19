@interface ECDKIMCryptoUtil
+ (BOOL)verifySignedData:(id)a3 withSignatureData:(id)a4 publicKeyData:(id)a5 hashingAlgorithm:(unint64_t)a6 error:(id *)a7;
@end

@implementation ECDKIMCryptoUtil

uint64_t ___ef_log_ECDKIMCryptoUtil_block_invoke()
{
  _ef_log_ECDKIMCryptoUtil_log = os_log_create("com.apple.email", "ECDKIMCryptoUtil");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)verifySignedData:(id)a3 withSignatureData:(id)a4 publicKeyData:(id)a5 hashingAlgorithm:(unint64_t)a6 error:(id *)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v12)
  {
    error = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v15 = Mutable;
    if (!Mutable)
    {
      v19 = 0;
LABEL_28:
      if (error)
      {
        if (a7)
        {
          v45 = error;
          *a7 = v45;
        }

        else
        {
          CFRelease(error);
        }
      }

      v28 = v19 == 1;
      goto LABEL_33;
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC060]);
    CFDictionaryAddValue(v15, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDC000]);
    CFDictionaryAddValue(v15, *MEMORY[0x277CDC560], *MEMORY[0x277CBED28]);
    v16 = SecKeyCreateWithData(v13, v15, &error);
    if (v16)
    {
      if (a6 == 1)
      {
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *md = v36;
        *&md[16] = v36;
        v37 = v11;
        CC_SHA256([v11 bytes], objc_msgSend(v11, "length"), md);
        v18 = CFDataCreate(0, md, 32);
        v19 = SecKeyVerifySignature(v16, *MEMORY[0x277CDC388], v18, v12, &error);
        if (!v19)
        {
          v38 = _ef_log_ECDKIMCryptoUtil();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [(ECDKIMCryptoUtil *)&error verifySignedData:v38 withSignatureData:v39 publicKeyData:v40 hashingAlgorithm:v41 error:v42, v43, v44];
          }
        }

        goto LABEL_25;
      }

      if (!a6)
      {
        memset(md, 170, 20);
        v17 = v11;
        CC_SHA1([v11 bytes], objc_msgSend(v11, "length"), md);
        v18 = CFDataCreate(0, md, 20);
        v19 = SecKeyVerifySignature(v16, *MEMORY[0x277CDC378], v18, v12, &error);
        if (!v19)
        {
          v20 = _ef_log_ECDKIMCryptoUtil();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [(ECDKIMCryptoUtil *)&error verifySignedData:v20 withSignatureData:v21 publicKeyData:v22 hashingAlgorithm:v23 error:v24, v25, v26];
          }
        }

LABEL_25:
        CFRelease(v18);
LABEL_26:
        CFRelease(v15);
        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v29 = _ef_log_ECDKIMCryptoUtil();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(ECDKIMCryptoUtil *)&error verifySignedData:v29 withSignatureData:v30 publicKeyData:v31 hashingAlgorithm:v32 error:v33, v34, v35];
      }
    }

    v19 = 0;
    goto LABEL_26;
  }

  v27 = _ef_log_ECDKIMCryptoUtil();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [ECDKIMCryptoUtil verifySignedData:v27 withSignatureData:? publicKeyData:? hashingAlgorithm:? error:?];
  }

  if (a7)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-67688 userInfo:0];
    *a7 = v28 = 0;
  }

  else
  {
    v28 = 0;
  }

LABEL_33:

  v46 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (void)verifySignedData:(uint64_t)a3 withSignatureData:(uint64_t)a4 publicKeyData:(uint64_t)a5 hashingAlgorithm:(uint64_t)a6 error:(uint64_t)a7 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_22D092000, a2, a3, "Unable to verify signature with error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)verifySignedData:(uint64_t)a3 withSignatureData:(uint64_t)a4 publicKeyData:(uint64_t)a5 hashingAlgorithm:(uint64_t)a6 error:(uint64_t)a7 .cold.3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_22D092000, a2, a3, "Unable to get SecKeyRef with error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end