@interface SecKeyP256Private
+ (id)compactPrivateKeyWithAccessControl:(id)a3;
+ (id)generate;
+ (id)generateWithAccessControl:(id)a3;
- (SecKeyP256Private)initWithData:(id)a3 error:(id *)a4;
- (SecKeyP256Public)publicKey;
- (id)getPrivateKeyRefWithError:(id *)a3;
- (id)keyAgreement:(id)a3 error:(id *)a4 isRetry:(BOOL)a5;
- (id)signData:(id)a3 error:(id *)a4;
@end

@implementation SecKeyP256Private

+ (id)generate
{
  v3 = [a1 defaultProtectionClassForPlatform];
  v4 = [a1 generateWithAccessControl:v3];

  return v4;
}

+ (id)compactPrivateKeyWithAccessControl:(id)a3
{
  v36[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  error = 0;
  v4 = *MEMORY[0x277CBECE8];
  v33 = v3;
  v5 = SecAccessControlCreateWithFlags(v4, v3, 0x40000000uLL, 0);
  v6 = *MEMORY[0x277CDC040];
  v7 = *MEMORY[0x277CDC018];
  v35[0] = *MEMORY[0x277CDC028];
  v35[1] = v7;
  v36[0] = v6;
  v36[1] = &unk_283F13BB0;
  v8 = *MEMORY[0x277CDBEC0];
  v35[2] = *MEMORY[0x277CDBFD0];
  v35[3] = v8;
  v36[2] = MEMORY[0x277CBEC28];
  v36[3] = v5;
  v32 = v5;
  v35[4] = *MEMORY[0x277CDC158];
  v36[4] = *MEMORY[0x277CDC160];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v10 = 1000;
  while (1)
  {
    v11 = SecKeyCreateRandomKey(v9, &error);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v13 = SecKeyCopyPublicKey(v11);
    if (!v13)
    {
      CFRelease(v12);
      v15 = MessageProtectionLog();
      v28 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      v26 = v33;
      if (v28)
      {
        +[SecKeyP256Private compactPrivateKeyWithAccessControl:];
      }

      goto LABEL_19;
    }

    v14 = v13;
    v15 = SecKeyCopyExternalRepresentation(v13, &error);
    CFRelease(v14);
    if (v15)
    {
      v16 = MEMORY[0x2318925A0]();
      v17 = (24 * *v16 + 31) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v16);
      v19 = (&v32 - v18);
      [v15 length];
      [v15 bytes];
      v20 = ccec_x963_import_pub();
      if (ccec_validate_pub())
      {
        v21 = v20 == 0;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        v22 = **v19;
        MEMORY[0x28223BE20](*v19);
        cczp_prime();
        v23 = **v19;
        ccn_sub();
        v24 = **v19;
        if ((ccn_cmp() & 0x80000000) == 0)
        {
          v29 = SecKeyCopyAttributes(v12);
          v25 = [(__CFDictionary *)v29 objectForKeyedSubscript:*MEMORY[0x277CDC178]];

          CFRelease(v12);
          goto LABEL_21;
        }
      }

      CFRelease(v12);
    }

    else
    {
      CFRelease(v12);
    }

    if (!--v10)
    {
      v25 = 0;
      v27 = v32;
      v26 = v33;
      goto LABEL_23;
    }
  }

  v15 = MessageProtectionLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v26 = v33;
    +[SecKeyP256Private compactPrivateKeyWithAccessControl:];
LABEL_19:
    v25 = 0;
    goto LABEL_22;
  }

  v25 = 0;
LABEL_21:
  v26 = v33;
LABEL_22:
  v27 = v32;

LABEL_23:
  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)generateWithAccessControl:(id)a3
{
  v3 = [a1 compactPrivateKeyWithAccessControl:a3];
  v4 = [[SecKeyP256Private alloc] initWithData:v3 error:0];

  return v4;
}

- (id)getPrivateKeyRefWithError:(id *)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CDC158];
  v17[0] = *MEMORY[0x277CDC160];
  v6 = *MEMORY[0x277CDC178];
  v16[0] = v5;
  v16[1] = v6;
  v7 = [(SecKeyP256Private *)self privateKeyBlob];
  v17[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  error = 0;
  v9 = [(SecKeyP256Private *)self privateKeyBlob];
  v10 = SecKeyCreateWithData(v9, v8, &error);

  if (error)
  {
    v11 = CFErrorCopyDescription(error);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deserialization of SecKey failed with description: %@", v11];
    MPLogAndAssignError(3, a3, v12);

    CFRelease(error);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)keyAgreement:(id)a3 error:(id *)a4 isRetry:(BOOL)a5
{
  v7 = a3;
  v8 = *MEMORY[0x277CDC280];
  if (SecKeyIsAlgorithmSupported(self->_privateKey, kSecKeyOperationTypeKeyExchange, *MEMORY[0x277CDC280]))
  {
    error = 0;
    v9 = [v7 dataRepresentation];
    if (v9)
    {
      v10 = [[SecKeyP256Public alloc] initWithData:v9 error:a4];
      v11 = v10;
      if (v10)
      {
        privateKey = self->_privateKey;
        v13 = [(SecKeyP256Public *)v10 publicKeyRef];
        v14 = SecKeyCopyKeyExchangeResult(privateKey, v8, v13, MEMORY[0x277CBEC10], &error);
        v15 = v14;
        if (v14)
        {
          v15 = v14;
          v16 = v15;
        }

        else
        {
          if (a4)
          {
            *a4 = error;
          }

          else
          {
            CFRelease(error);
          }

          v16 = 0;
        }
      }

      else
      {
        v15 = MessageProtectionLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(SecKeyP256Private *)a4 keyAgreement:v15 error:v17 isRetry:v18, v19, v20, v21, v22];
        }

        v16 = 0;
      }
    }

    else
    {
      MPLogAndAssignError(7, a4, @"Failed to obtain data for the public key.");
      v16 = 0;
    }
  }

  else
  {
    MPLogAndAssignError(3, a4, @"This key is not allowed to do a DH key agreement.");
    v16 = 0;
  }

  return v16;
}

- (SecKeyP256Public)publicKey
{
  publicKey = self->_publicKey;
  if (publicKey)
  {
    goto LABEL_4;
  }

  v4 = SecKeyCopyPublicKey(self->_privateKey);
  if (v4)
  {
    v5 = [[SecKeyP256Public alloc] initWithSecKeyRef:v4];
    v6 = self->_publicKey;
    self->_publicKey = v5;

    publicKey = self->_publicKey;
LABEL_4:
    v7 = publicKey;
    goto LABEL_5;
  }

  v9 = MessageProtectionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[SecKeyP256Private compactPrivateKeyWithAccessControl:];
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)signData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = *MEMORY[0x277CDC318];
  if (SecKeyIsAlgorithmSupported(self->_privateKey, kSecKeyOperationTypeSign, *MEMORY[0x277CDC318]))
  {
    error = 0;
    v8 = [MEMORY[0x277CBEB28] dataWithLength:32];
    CC_SHA256([v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v8, "bytes"));
    v9 = SecKeyCreateSignature(self->_privateKey, v7, v8, &error);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (a4)
    {
      *a4 = error;
    }
  }

  else
  {
    MPLogAndAssignError(2, a4, @"Attempting to sign with a key that doesn't support that operation.");
    v10 = 0;
  }

  return v10;
}

- (SecKeyP256Private)initWithData:(id)a3 error:(id *)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = SecKeyP256Private;
  v8 = [(SecKeyP256Private *)&v19 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    MPLogAndAssignError(1, a4, @"Attempting to initialize a key with missing OID data.");
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  objc_storeStrong(&v8->_privateKeyBlob, a3);
  v10 = [(SecKeyP256Private *)v9 getPrivateKeyRefWithError:a4];
  privateKey = v9->_privateKey;
  v9->_privateKey = v10;

  if (!v9->_privateKey)
  {
    v12 = MessageProtectionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SecKeyP256Private initWithData:a4 error:v12];
    }

    goto LABEL_14;
  }

  v12 = [@"Key Validation String" dataUsingEncoding:4];
  v13 = [(SecKeyP256Private *)v9 signData:v12 error:a4];
  if (!v13)
  {
    v17 = @"Failed to test sign with SecKeyP256 during initialization.";
LABEL_13:
    MPLogAndAssignError(407, a4, v17);

LABEL_14:
    goto LABEL_15;
  }

  v14 = [(SecKeyP256Private *)v9 publicKey];
  v15 = [v14 verifySignature:v13 data:v12];

  if (!v15)
  {
    v17 = @"Failed to verify signature with SecKeyP256 during initialization.";
    goto LABEL_13;
  }

LABEL_7:
  v16 = v9;
LABEL_16:

  return v16;
}

+ (void)compactPrivateKeyWithAccessControl:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)keyAgreement:(uint64_t)a3 error:(uint64_t)a4 isRetry:(uint64_t)a5 .cold.1(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = [*a1 description];
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_1_1(&dword_22B404000, a2, a3, "Failed to initialize the public key with error: %@", a5, a6, a7, a8, 2u);
  if (a1)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithData:(id *)a1 error:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to get a Private Key Ref with error while initializing SecKeyP256: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end