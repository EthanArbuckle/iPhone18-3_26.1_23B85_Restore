@interface MSCMSSignedData
+ (id)decodeMessageSecurityObject:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)addCertificatesForSigner:(id)a3 mode:(unint64_t)a4 error:(id *)a5;
- (BOOL)addSigner:(id)a3 withChainMode:(unint64_t)a4 error:(id *)a5;
- (BOOL)checkSignedPerRFC5652:(id *)a3;
- (BOOL)verifySignatures:(id *)a3;
- (BOOL)verifySignaturesAndSignersWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6;
- (BOOL)verifySignaturesAndSignersWithPolicies:(id)a3 verifyTime:(id)a4 error:(id *)a5;
- (MSCMSSignedData)initWithDataContent:(id)a3 isDetached:(BOOL)a4 signer:(id)a5 error:(id *)a6;
- (MSCMSSignedData)initWithEmbeddedContent:(id)a3 signer:(id)a4 additionalCertificates:(id)a5 error:(id *)a6;
- (MSCMSSignedData)initWithEmbeddedContent:(id)a3 signer:(id)a4 error:(id *)a5;
- (MSCMSSignedData)initWithEmbeddedContent:(id)a3 signer:(id)a4 signerChainMode:(unint64_t)a5 error:(id *)a6;
- (__SecCertificate)getSignerCertificate:(unint64_t)a3 error:(id *)a4;
- (id)calculateContentDigestWithAlgorithm:(id)a3 error:(id *)a4;
- (id)encodeMessageSecurityObject:(id *)a3;
- (id)initCertsOnlyWithCertificates:(id)a3 error:(id *)a4;
- (void)addCounterSignerCertificates:(id)a3 mode:(unint64_t)a4 error:(id *)a5;
- (void)addDigestAlgorithmFromSigner:(id)a3;
- (void)addSigner:(id)a3;
- (void)addSigner:(id)a3 withCertificates:(id)a4;
- (void)removeSignerCertificatesWithIndexes:(id)a3;
- (void)removeSignersWithCertificate:(__SecCertificate *)a3 error:(id *)a4;
- (void)removeSignersWithEmailAddress:(id)a3 error:(id *)a4;
- (void)removeSignersWithIdentity:(__SecIdentity *)a3 error:(id *)a4;
- (void)removeSignersWithIndexes:(id)a3 error:(id *)a4;
- (void)setContentType:(id)a3;
- (void)setDataContent:(id)a3;
- (void)setEmbeddedContent:(id)a3;
@end

@implementation MSCMSSignedData

- (void)setDataContent:(id)a3
{
  v5 = a3;
  dataContent = self->_dataContent;
  if (dataContent != v5)
  {
    self->_dataContent = 0;
    v7 = v5;

    objc_storeStrong(&self->_dataContent, a3);
    v5 = v7;
    self->_contentChanged = 1;
  }
}

- (void)setEmbeddedContent:(id)a3
{
  v5 = a3;
  embeddedContent = self->_embeddedContent;
  if (embeddedContent != v5)
  {
    self->_embeddedContent = 0;
    v7 = v5;

    objc_storeStrong(&self->_embeddedContent, a3);
    v5 = v7;
    self->_contentChanged = 1;
  }
}

- (void)setContentType:(id)a3
{
  v5 = a3;
  contentType = self->_contentType;
  if (contentType != v5)
  {
    self->_contentType = 0;
    v7 = v5;

    objc_storeStrong(&self->_contentType, a3);
    v5 = v7;
    self->_contentChanged = 1;
  }
}

- (void)addCounterSignerCertificates:(id)a3 mode:(unint64_t)a4 error:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = [a3 unprotectedAttributes];
  v9 = [MSOID OIDWithString:@"1.2.840.113549.1.9.6" error:0];
  v10 = [v8 getAttributesWithType:v9];

  if (v10)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v10;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = v11;
    v13 = *v39;
    v14 = 0x2798BD000uLL;
    v15 = 0x2798BD000uLL;
    v31 = *v39;
    while (1)
    {
      v16 = 0;
      v32 = v12;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        v18 = *(v14 + 3152);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [objc_alloc(*(v15 + 3184)) initWithAttribute:v17 certificates:0 LAContext:0 containingSignerInfo:0 error:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_23;
          }

          v19 = v17;
        }

        v20 = v19;
        if (v19)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v21 = [v19 signers];
          v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v35;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v35 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v34 + 1) + 8 * i);
                v27 = [v20 chainMode];
                if (v27 <= a4)
                {
                  v28 = a4;
                }

                else
                {
                  v28 = v27;
                }

                [(MSCMSSignedData *)self addCertificatesForSigner:v26 mode:v28 error:a5];
              }

              v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v23);
          }

          v13 = v31;
          v12 = v32;
          v14 = 0x2798BD000;
          v15 = 0x2798BD000;
        }

LABEL_23:
        ++v16;
      }

      while (v16 != v12);
      v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v12)
      {
LABEL_25:

        v10 = v30;
        break;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)addCertificatesForSigner:(id)a3 mode:(unint64_t)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5 && *a5)
  {
    v9 = [*a5 copy];
  }

  else
  {
    v9 = 0;
  }

  if (a4 - 2 < 2)
  {
    if (v8 && [v8 signerCertificate])
    {
      v26 = v9;
      v10 = MSSecTrustCreateWithError([v8 signerCertificate], 0, 0, 0, &v26);
      v12 = v26;

      if (v10)
      {
        err = 0;
        if (!SecTrustEvaluateWithError(v10, &err))
        {
          if (err)
          {
            v13 = CFErrorCopyDescription(err);
          }

          else
          {
            v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "Error Unavailable", 0x8000100u);
          }

          v14 = v13;
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            [MSCMSSignedData addCertificatesForSigner:mode:error:];
          }

          v15 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v14;
            _os_log_impl(&dword_258C80000, v15, OS_LOG_TYPE_DEFAULT, "MSCMSChainMode with chain specified, but no trusted chain found (%@), continuing with untrusted chain", buf, 0xCu);
          }

          v16 = err;
          if (err)
          {
            err = 0;
            CFRelease(v16);
          }
        }

        v17 = SecTrustCopyCertificateChain(v10);
        v18 = [(__CFArray *)v17 mutableCopy];

        v19 = [v18 count];
        v20 = v19 - 1;
        if (v19 <= 1)
        {
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            [MSCMSSignedData addCertificatesForSigner:mode:error:];
          }

          v21 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258C80000, v21, OS_LOG_TYPE_DEFAULT, "MSCMSChainMode with chain specified, but could not build chain beyond leaf, continuing with single certificate", buf, 2u);
          }
        }

        if (a4 == 2)
        {
          [v18 objectAtIndexedSubscript:v20];

          buf[0] = 0;
          if (!SecCertificateIsSelfSigned())
          {
            if (buf[0])
            {
              [v18 removeLastObject];
            }
          }
        }

        [(NSMutableSet *)self->_certificates addObjectsFromArray:v18];

        v11 = 1;
        if (!a5)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      [MSCMSSignedData addCertificatesForSigner:v12 mode:buf error:?];
      goto LABEL_48;
    }

    [MSCMSSignedData addCertificatesForSigner:mode:error:];
LABEL_46:
    v10 = 0;
LABEL_48:
    v11 = 0;
    v12 = *buf;
    if (!a5)
    {
      goto LABEL_40;
    }

LABEL_38:
    if (v12)
    {
      v22 = v12;
      *a5 = v12;
    }

    goto LABEL_40;
  }

  if (!a4)
  {
    v11 = 1;
    goto LABEL_43;
  }

  if (a4 == 1)
  {
    if (v8 && [v8 signerCertificate])
    {
      -[NSMutableSet addObject:](self->_certificates, "addObject:", [v8 signerCertificate]);
      v10 = 0;
      v11 = 1;
      goto LABEL_19;
    }

    [MSCMSSignedData addCertificatesForSigner:mode:error:];
    goto LABEL_46;
  }

  v10 = 0;
  v11 = 0;
LABEL_19:
  v12 = v9;
  if (a5)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v10)
  {
    CFRelease(v10);
  }

  v9 = v12;
LABEL_43:

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __55__MSCMSSignedData_addCertificatesForSigner_mode_error___block_invoke()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __55__MSCMSSignedData_addCertificatesForSigner_mode_error___block_invoke_14()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

- (MSCMSSignedData)initWithDataContent:(id)a3 isDetached:(BOOL)a4 signer:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  v30.receiver = self;
  v30.super_class = MSCMSSignedData;
  v13 = [(MSCMSSignedData *)&v30 init];
  if (v13)
  {
    v14 = [v12 signatureAlgorithm];
    v15 = [v14 algorithm];
    v16 = [MSOID digestOIDWithSignatureAlgorithm:v15 error:a6];

    if (!v16)
    {
      goto LABEL_6;
    }

    v17 = MEMORY[0x277CBEB98];
    v18 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v16];
    v19 = [v17 setWithObject:v18];
    digestAlgorithms = v13->_digestAlgorithms;
    v13->_digestAlgorithms = v19;

    objc_storeStrong(&v13->_dataContent, a3);
    v13->_contentChanged = 1;
    embeddedContent = v13->_embeddedContent;
    v13->_embeddedContent = 0;

    v13->_detached = a4;
    v22 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
    signers = v13->_signers;
    v13->_signers = v22;

    [v12 setContainingSignedData:v13];
    v24 = [MSOID OIDWithString:@"1.2.840.113549.1.7.1" error:a6];
    contentType = v13->_contentType;
    v13->_contentType = v24;

    if (![v12 signerCertificate])
    {
LABEL_6:

      v28 = 0;
      goto LABEL_7;
    }

    v26 = [MEMORY[0x277CBEB58] setWithObject:{objc_msgSend(v12, "signerCertificate")}];
    certificates = v13->_certificates;
    v13->_certificates = v26;

    [(MSCMSSignedData *)v13 addCounterSignerCertificates:v12 mode:1 error:0];
  }

  v28 = v13;
LABEL_7:

  return v28;
}

- (MSCMSSignedData)initWithEmbeddedContent:(id)a3 signer:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = MSCMSSignedData;
  v11 = [(MSCMSSignedData *)&v27 init];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = [v10 signatureAlgorithm];
  v13 = [v12 algorithm];
  v14 = [MSOID digestOIDWithSignatureAlgorithm:v13 error:a5];

  if (v14)
  {
    v15 = MEMORY[0x277CBEB98];
    v16 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v14];
    v17 = [v15 setWithObject:v16];
    digestAlgorithms = v11->_digestAlgorithms;
    v11->_digestAlgorithms = v17;

    dataContent = v11->_dataContent;
    v11->_dataContent = 0;

    objc_storeStrong(&v11->_embeddedContent, a3);
    v11->_detached = 0;
    v20 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
    signers = v11->_signers;
    v11->_signers = v20;

    [v10 setContainingSignedData:v11];
    v22 = [v9 type];
    contentType = v11->_contentType;
    v11->_contentType = v22;

    v24 = [MEMORY[0x277CBEB58] setWithObject:{objc_msgSend(v10, "signerCertificate")}];
    certificates = v11->_certificates;
    v11->_certificates = v24;

    [(MSCMSSignedData *)v11 addCounterSignerCertificates:v10 mode:1 error:0];
LABEL_4:
    v14 = v11;
  }

  return v14;
}

- (MSCMSSignedData)initWithEmbeddedContent:(id)a3 signer:(id)a4 additionalCertificates:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [(MSCMSSignedData *)self initWithEmbeddedContent:a3 signer:a4 error:a6];
  v12 = v11;
  if (v10 && v11)
  {
    [(NSMutableSet *)v11->_certificates addObjectsFromArray:v10];
  }

  return v12;
}

- (MSCMSSignedData)initWithEmbeddedContent:(id)a3 signer:(id)a4 signerChainMode:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(MSCMSSignedData *)self initWithEmbeddedContent:a3 signer:v10 error:a6];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  if (!a5)
  {
    [(NSMutableSet *)v11->_certificates removeAllObjects];
    goto LABEL_6;
  }

  if ([(MSCMSSignedData *)v11 addCertificatesForSigner:v10 mode:a5 error:a6])
  {
LABEL_6:
    [(MSCMSSignedData *)v12 addCounterSignerCertificates:v10 mode:a5 error:0];
LABEL_7:
    v13 = v12;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)initCertsOnlyWithCertificates:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = MSCMSSignedData;
  v7 = [(MSCMSSignedData *)&v20 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] set];
    digestAlgorithms = v7->_digestAlgorithms;
    v7->_digestAlgorithms = v8;

    dataContent = v7->_dataContent;
    v7->_dataContent = 0;

    embeddedContent = v7->_embeddedContent;
    v7->_embeddedContent = 0;

    v7->_detached = 1;
    v12 = [MEMORY[0x277CBEA60] array];
    signers = v7->_signers;
    v7->_signers = v12;

    v14 = [MSOID OIDWithString:@"1.2.840.113549.1.7.1" error:a4];
    contentType = v7->_contentType;
    v7->_contentType = v14;

    if (!v7->_contentType)
    {
      v18 = 0;
      goto LABEL_6;
    }

    v16 = [MEMORY[0x277CBEB58] setWithArray:v6];
    certificates = v7->_certificates;
    v7->_certificates = v16;
  }

  v18 = v7;
LABEL_6:

  return v18;
}

- (void)addSigner:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB18];
    signers = self->_signers;
    v8 = a3;
    v6 = [v4 arrayWithArray:signers];
    [(NSArray *)v6 addObject:v8];
    [(MSCMSSignedData *)self addDigestAlgorithmFromSigner:v8];
    -[NSMutableSet addObject:](self->_certificates, "addObject:", [v8 signerCertificate]);
    v7 = self->_signers;
    self->_signers = v6;

    [v8 setContainingSignedData:self];
    [(MSCMSSignedData *)self addCounterSignerCertificates:v8 mode:1 error:0];
  }
}

- (void)addSigner:(id)a3 withCertificates:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(MSCMSSignedData *)self addSigner:v7];
    if (v6)
    {
      [(NSMutableSet *)self->_certificates addObjectsFromArray:v6];
    }

    [(MSCMSSignedData *)self addCounterSignerCertificates:v7 mode:1 error:0];
  }
}

- (BOOL)addSigner:(id)a3 withChainMode:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithArray:self->_signers];
    [v9 addObject:v8];
    [(MSCMSSignedData *)self addDigestAlgorithmFromSigner:v8];
    v10 = [(MSCMSSignedData *)self addCertificatesForSigner:v8 mode:a4 error:a5];
    if (v10)
    {
      [(MSCMSSignedData *)self addCounterSignerCertificates:v8 mode:a4 error:0];
      objc_storeStrong(&self->_signers, v9);
      [v8 setContainingSignedData:self];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)removeSignerCertificatesWithIndexes:(id)a3
{
  signers = self->_signers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__MSCMSSignedData_removeSignerCertificatesWithIndexes___block_invoke;
  v4[3] = &unk_2798BE1F8;
  v4[4] = self;
  [(NSArray *)signers enumerateObjectsAtIndexes:a3 options:0 usingBlock:v4];
}

uint64_t __55__MSCMSSignedData_removeSignerCertificatesWithIndexes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setContainingSignedData:0];
  v4 = *(*(a1 + 32) + 56);
  v5 = [v3 signerCertificate];

  return [v4 removeObject:v5];
}

- (void)removeSignersWithIndexes:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithArray:self->_signers];
    [v7 removeObjectsAtIndexes:v6];
    [(MSCMSSignedData *)self removeSignerCertificatesWithIndexes:v6];
    objc_storeStrong(&self->_signers, v7);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = [MEMORY[0x277CBEB58] set];
    signers = self->_signers;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__MSCMSSignedData_removeSignersWithIndexes_error___block_invoke;
    v12[3] = &unk_2798BE220;
    v12[4] = &v13;
    [(NSArray *)signers enumerateObjectsUsingBlock:v12];
    objc_storeStrong(&self->_digestAlgorithms, v14[5]);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    if (a4 && *a4)
    {
      v9 = [*a4 copy];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v9 description:@"no signer with input certificate hash"];

    if (a4 && v10)
    {
      v11 = v10;
      *a4 = v10;
    }
  }
}

uint64_t __50__MSCMSSignedData_removeSignersWithIndexes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 digestAlgorithm];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)removeSignersWithCertificate:(__SecCertificate *)a3 error:(id *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = [MEMORY[0x277CCAB58] indexSet];
  signers = self->_signers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MSCMSSignedData_removeSignersWithCertificate_error___block_invoke;
  v8[3] = &unk_2798BE248;
  v8[4] = &v9;
  v8[5] = a3;
  [(NSArray *)signers enumerateObjectsUsingBlock:v8];
  [(MSCMSSignedData *)self removeSignersWithIndexes:v10[5] error:a4];
  _Block_object_dispose(&v9, 8);
}

uint64_t __54__MSCMSSignedData_removeSignersWithCertificate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = CFEqual(*(a1 + 40), [a2 signerCertificate]);
  if (result)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

- (void)removeSignersWithEmailAddress:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = [MEMORY[0x277CCAB58] indexSet];
  signers = self->_signers;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke;
  v12 = &unk_2798BE298;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [(NSArray *)signers enumerateObjectsUsingBlock:&v9];
  [(MSCMSSignedData *)self removeSignersWithIndexes:v16[5] error:a4, v9, v10, v11, v12];

  _Block_object_dispose(&v15, 8);
}

void __55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 signerCertificate];
  v5 = SecCertificateCopyRFC822Names();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke_2;
  v8[3] = &unk_2798BE270;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  v11 = a3;
  [v5 enumerateObjectsUsingBlock:v8];
}

uint64_t __55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (!result)
  {
    v4 = *(a1 + 48);
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

- (__SecCertificate)getSignerCertificate:(unint64_t)a3 error:(id *)a4
{
  if ([(NSArray *)self->_signers count]- 1 >= a3)
  {
    v8 = [(NSArray *)self->_signers objectAtIndex:a3];
    v9 = [v8 signerCertificate];

    return v9;
  }

  else
  {
    if (a4)
    {
      *a4 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:*a4 description:@"signer index, %lu, out of range of signer count, %lu", a3, [(NSArray *)self->_signers count]];
    }

    return 0;
  }
}

- (BOOL)verifySignatures:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v5 = [v5 copy];
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = v5;
  signers = self->_signers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__MSCMSSignedData_verifySignatures___block_invoke;
  v12[3] = &unk_2798BE1F8;
  v12[4] = self;
  [(NSArray *)signers enumerateObjectsUsingBlock:v12];
  v7 = self->_signers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__MSCMSSignedData_verifySignatures___block_invoke_3;
  v11[3] = &unk_2798BE2E8;
  v11[4] = &v13;
  v11[5] = &v19;
  v11[6] = a3;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v11];
  if (a3)
  {
    v8 = v14[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return (v9 & 1) == 0;
}

void __36__MSCMSSignedData_verifySignatures___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 protectedAttributes];
  v5 = [MSOID OIDWithString:@"1.2.840.113549.1.9.2.51" error:0];
  v6 = [v4 getAttributesWithType:v5];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = [v6 count];
  v7 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__MSCMSSignedData_verifySignatures___block_invoke_2;
  v10[3] = &unk_2798BE2C0;
  v8 = v3;
  v11 = v8;
  v13 = v14;
  v9 = v6;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

void __36__MSCMSSignedData_verifySignatures___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4] != v3)
  {
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      v9 = v3;
      v6 = a1[5];
      *(v4 + 24) = v5 - 1;
      v7 = [v6 objectAtIndex:?];
      v8 = [v9 calculateSignedAttributesDigest:0];
      [v7 setSignedAttrsHash:v8];

      v3 = v9;
    }
  }
}

void __36__MSCMSSignedData_verifySignatures___block_invoke_3(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if (([v16 verifySignature:a1[6]] & 1) == 0)
  {
    v7 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"signature verification failed for signer %lu", a3];
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if (([v16 verifyCountersignatures:a1[6]] & 1) == 0)
    {
      v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"countersignature verification failed for signer %lu", a3];
      v11 = *(a1[4] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *a4 = 1;
      *(*(a1[5] + 8) + 24) = 1;
    }

    if ((*(*(a1[5] + 8) + 24) & 1) == 0 && ([v16 verifyTimestamps:a1[6]] & 1) == 0)
    {
      v13 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"timestamp verification failed for signer %lu", a3];
      v14 = *(a1[4] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a4 = 1;
      *(*(a1[5] + 8) + 24) = 1;
    }
  }
}

- (BOOL)verifySignaturesAndSignersWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  if (a6)
  {
    v13 = *a6;
    if (*a6)
    {
      v13 = [v13 copy];
    }
  }

  else
  {
    v13 = 0;
  }

  v33 = v13;
  signers = self->_signers;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__MSCMSSignedData_verifySignaturesAndSignersWithPolicies_verifyTime_anchorCertificates_error___block_invoke;
  v21[3] = &unk_2798BE310;
  v15 = v10;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  v25 = &v28;
  v26 = &v34;
  v27 = a6;
  [(NSArray *)signers enumerateObjectsUsingBlock:v21];
  if (a6)
  {
    v18 = v29[5];
    if (v18)
    {
      *a6 = v18;
    }
  }

  v19 = *(v35 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return (v19 & 1) == 0;
}

void __94__MSCMSSignedData_verifySignaturesAndSignersWithPolicies_verifyTime_anchorCertificates_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if (([v16 verifySignatureAndSignerWithPolicies:a1[4] verifyTime:a1[5] anchorCertificates:a1[6] error:a1[9]] & 1) == 0)
  {
    v7 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[7] + 8) + 40) description:@"signer verification failed for signer %lu", a3];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
    *(*(a1[8] + 8) + 24) = 1;
  }

  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    if (([v16 verifyCountersignaturesAndCountersignersWithPolicies:a1[4] verifyTime:a1[5] anchorCertificates:a1[6] error:a1[9]] & 1) == 0)
    {
      v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[7] + 8) + 40) description:@"countersigner verification failed for signer %lu", a3];
      v11 = *(a1[7] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *a4 = 1;
      *(*(a1[8] + 8) + 24) = 1;
    }

    if ((*(*(a1[8] + 8) + 24) & 1) == 0 && ([v16 verifyTimestamps:a1[9]] & 1) == 0)
    {
      v13 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[7] + 8) + 40) description:@"countersignature verification failed for signer %lu", a3];
      v14 = *(a1[7] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a4 = 1;
      *(*(a1[8] + 8) + 24) = 1;
    }
  }
}

- (BOOL)verifySignaturesAndSignersWithPolicies:(id)a3 verifyTime:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(MSCMSSignedData *)self options];
    v11 = [v12 verifyTime];
  }

  v13 = [(MSCMSSignedData *)self options];
  v14 = [v13 anchorCertificates];
  v15 = [(MSCMSSignedData *)self verifySignaturesAndSignersWithPolicies:v8 verifyTime:v11 anchorCertificates:v14 error:a5];

  return v15;
}

- (BOOL)checkSignedPerRFC5652:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  if (![(NSArray *)self->_signers count]&& (![(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"]|| (dataContent = self->_dataContent) != 0 && [(NSData *)dataContent length]))
  {
    [MSCMSSignedData checkSignedPerRFC5652:];
    v7 = 0;
    v5 = v10;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (![(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"])
  {
    [(NSArray *)self->_signers enumerateObjectsUsingBlock:&__block_literal_global_50];
  }

  v7 = 1;
  if (a3)
  {
LABEL_12:
    if (v5)
    {
      v8 = v5;
      *a3 = v5;
    }
  }

LABEL_14:

  return v7;
}

void __41__MSCMSSignedData_checkSignedPerRFC5652___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a2 protectedAttributes];
  v5 = [v4 count];

  if (!v5)
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      __41__MSCMSSignedData_checkSignedPerRFC5652___block_invoke_cold_1();
    }

    v6 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&dword_258C80000, v6, OS_LOG_TYPE_DEFAULT, "signedData contains embedded content but signer %lu does not have signed attributes.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __41__MSCMSSignedData_checkSignedPerRFC5652___block_invoke_2()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)addDigestAlgorithmFromSigner:(id)a3
{
  v4 = [a3 digestAlgorithm];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB58];
    v8 = v4;
    v6 = [(MSCMSSignedData *)self digestAlgorithms];
    v7 = [v5 setWithSet:v6];

    [v7 addObject:v8];
    [(MSCMSSignedData *)self setDigestAlgorithms:v7];

    v4 = v8;
  }
}

- (id)calculateContentDigestWithAlgorithm:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 ccdigest];
  if (v7)
  {
    a4 = [MEMORY[0x277CBEB28] dataWithLength:*v7];
    [(NSData *)self->_dataContent length];
    [(NSData *)self->_dataContent bytes];
    [a4 mutableBytes];
    ccdigest();
  }

  else if (a4)
  {
    v8 = MSErrorCryptoDomain[0];
    v9 = *a4;
    v10 = [v6 OIDString];
    *a4 = [MSError MSErrorWithDomain:v8 code:-4 underlyingError:v9 description:@"%@ is not a supported digest algorithm", v10];

    a4 = 0;
  }

  return a4;
}

- (id)encodeMessageSecurityObject:(id *)a3
{
  v98[1] = *MEMORY[0x277D85DE8];
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__0;
  v95 = __Block_byref_object_dispose__0;
  v70 = a3;
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v4 = [v4 copy];
    }
  }

  else
  {
    v4 = 0;
  }

  v96 = v4;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  digestAlgorithms = self->_digestAlgorithms;
  if (!digestAlgorithms)
  {
    v54 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: missing digest algorithms"];
    v55 = v92[5];
    v92[5] = v54;

    goto LABEL_76;
  }

  if ([(NSSet *)digestAlgorithms count])
  {
    v6 = [(NSSet *)self->_digestAlgorithms count];
    v7 = malloc_type_malloc(24 * [(NSSet *)self->_digestAlgorithms count], 0x10300406712BA52uLL);
    if (v7)
    {
      v8 = self->_digestAlgorithms;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke;
      v76[3] = &unk_2798BE358;
      v76[4] = v77;
      v76[5] = v7;
      [(NSSet *)v8 enumerateObjectsUsingBlock:v76];
      goto LABEL_13;
    }

    v58 = [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-67672 underlyingError:v92[5] description:@"Unable to encode signedData: unable to allocate digest algorithm array"];
    v59 = v92[5];
    v92[5] = v58;

LABEL_76:
    v7 = 0;
    goto LABEL_77;
  }

  if ([(NSArray *)self->_signers count]|| self->_dataContent || self->_embeddedContent)
  {
    v50 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: missing digest algorithm and not certs-only message", v70];
    v51 = v92[5];
    v92[5] = v50;

    goto LABEL_76;
  }

  v6 = 0;
  v7 = 0;
LABEL_13:
  contentType = self->_contentType;
  if (!contentType)
  {
    v56 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: missing content type"];
    v57 = v92[5];
    v92[5] = v56;

    goto LABEL_77;
  }

  if (!self->_detached && !self->_dataContent && !self->_embeddedContent)
  {
    v66 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: content is not detached and no content specified"];
    v67 = v92[5];
    v92[5] = v66;

    goto LABEL_77;
  }

  v10 = [(MSOID *)contentType Asn1OID];
  v12 = v11;
  if (self->_detached)
  {
    v13 = 0;
  }

  else
  {
    if ([(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"])
    {
      dataContent = self->_dataContent;
      if (!dataContent)
      {
        v15 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: id-data content type and no data content"];
        v16 = v92[5];
        v92[5] = v15;

        goto LABEL_77;
      }
    }

    else if (self->_contentType)
    {
      embeddedContent = self->_embeddedContent;
      if (!embeddedContent)
      {
        v68 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: embedded content type specified and no embedded content"];
        v69 = v92[5];
        v92[5] = v68;

        goto LABEL_77;
      }

      v18 = v92;
      obj = v92[5];
      v19 = [(MSCMSMessage *)embeddedContent encodeMessageSecurityObject:&obj];
      objc_storeStrong(v18 + 5, obj);
      v20 = self->_dataContent;
      self->_dataContent = v19;

      self->_contentChanged = 1;
      dataContent = self->_dataContent;
      if (!dataContent)
      {
        goto LABEL_77;
      }
    }

    else
    {
      dataContent = self->_dataContent;
    }

    v85 = [(NSData *)dataContent bytes];
    v84 = [(NSData *)self->_dataContent length];
    v13 = &v84;
  }

  certificates = self->_certificates;
  if (certificates)
  {
    certificates = [(NSMutableSet *)certificates count];
    if (certificates)
    {
      v22 = malloc_type_malloc(24 * [(NSMutableSet *)self->_certificates count], 0x10800404ACF7207uLL);
      if (v22)
      {
        v23 = [(NSMutableSet *)self->_certificates allObjects];
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_2;
        v74[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
        v74[4] = v22;
        [v23 enumerateObjectsUsingBlock:v74];

        LODWORD(certificates) = [(NSMutableSet *)self->_certificates count];
        goto LABEL_33;
      }

      v64 = [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-67672 underlyingError:v92[5] description:@"Unable to encode signedData: unable to allocate certificates array"];
      v65 = v92[5];
      v92[5] = v64;

LABEL_77:
      v22 = 0;
LABEL_78:
      v24 = 0;
      goto LABEL_79;
    }
  }

  v22 = 0;
LABEL_33:
  LODWORD(v82) = certificates;
  v83 = v22;
  if (![(NSArray *)self->_signers count])
  {
    if (![(NSSet *)self->_digestAlgorithms count]&& !self->_embeddedContent && !self->_dataContent)
    {
      v27 = 0;
      v24 = 0;
LABEL_41:
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      if ([(NSArray *)self->_signers indexOfObjectPassingTest:&__block_literal_global_93]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"];
        if (v28)
        {
          v29 = 1;
        }

        else
        {
          v29 = 3;
        }

        if (v28)
        {
          v30 = 1;
        }

        else
        {
          v30 = 3;
        }
      }

      else
      {
        v29 = 3;
        v30 = 3;
      }

      LODWORD(v86) = v29;
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
      version = self->_version;
      self->_version = v31;

      *(&v86 + 1) = v6;
      *&v87 = v7;
      *(&v87 + 1) = v10;
      *&v88 = v12;
      *(&v88 + 1) = v13;
      *&v89 = &v82;
      *&v90 = v27;
      *(&v90 + 1) = v24;
      v71 = 0;
      v33 = length_CMSSignedData(&v86);
      v34 = [MEMORY[0x277CBEB28] dataWithLength:v33];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
        v37 = encode_CMSSignedData([v35 mutableBytes] + v33 - 1, v33, &v86, &v71);
        if (!v37)
        {
          if (v33 != v71)
          {
            result = asn1_abort();
            __break(1u);
            return result;
          }

          goto LABEL_55;
        }

        v38 = v37;
      }

      else
      {
        v38 = 12;
      }

      v39 = MEMORY[0x277CCA9B8];
      v97 = *MEMORY[0x277CCA450];
      v98[0] = @"Failed encoding type CMSSignedData";
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];
      v41 = [v39 errorWithDomain:@"com.apple.HeimASN1" code:v38 userInfo:v40];
      v42 = v92[5];
      v92[5] = v41;

      v35 = 0;
LABEL_55:
      self->_contentChanged = 0;
      goto LABEL_56;
    }

    v52 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: no signers and not certs-only message"];
    v53 = v92[5];
    v92[5] = v52;

    goto LABEL_78;
  }

  v24 = malloc_type_malloc(104 * [(NSArray *)self->_signers count], 0x10B00404EF9CE24uLL);
  if (!v24)
  {
    v60 = [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-67672 underlyingError:v92[5] description:@"Unable to encode signedData: unable to allocate signerInfos array"];
    v61 = v92[5];
    v92[5] = v60;

    goto LABEL_78;
  }

  signers = self->_signers;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_3;
  v73[3] = &unk_2798BE1F8;
  v73[4] = self;
  [(NSArray *)signers enumerateObjectsUsingBlock:v73];
  v26 = self->_signers;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_5;
  v72[3] = &unk_2798BE2E8;
  v72[4] = &v91;
  v72[5] = &v78;
  v72[6] = v24;
  [(NSArray *)v26 enumerateObjectsUsingBlock:v72];
  if (*(v79 + 24) != 1)
  {
    v27 = [(NSArray *)self->_signers count];
    goto LABEL_41;
  }

  v62 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v92[5] description:@"Unable to encode signedData: failed to encode a SignerInfo"];
  v63 = v92[5];
  v92[5] = v62;

LABEL_79:
  v35 = 0;
LABEL_56:
  if (v70)
  {
    v43 = v92[5];
    if (v43)
    {
      *v70 = v43;
    }
  }

  if (v7)
  {
    free(v7);
  }

  if (v22)
  {
    free(v22);
  }

  if (v24)
  {
    v44 = 0;
    for (i = v24; ; i += 104)
    {
      v46 = [(MSCMSSignedData *)self signers];
      v47 = v44 < [v46 count];

      if (!v47)
      {
        break;
      }

      free_SignerInfo();
      ++v44;
    }

    free(v24);
  }

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v91, 8);

  v48 = *MEMORY[0x277D85DE8];

  return v35;
}

__n128 __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 40) + 24 * *(*(*(a1 + 32) + 8) + 24));
  v4 = [a2 asn1AlgId];
  result = *v4;
  v3[1].n128_u64[0] = v4[1].n128_u64[0];
  *v3 = result;
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = 3 * a3;
  *(*(a1 + 32) + 24 * a3) = 1;
  v5 = a2;
  *(*(a1 + 32) + 8 * v4 + 16) = SecCertificateGetBytePtr();
  Length = SecCertificateGetLength();

  *(*(a1 + 32) + 8 * v4 + 8) = Length;
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 protectedAttributes];
  v5 = [MSOID OIDWithString:@"1.2.840.113549.1.9.2.51" error:0];
  v6 = [v4 getAttributesWithType:v5];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = [v6 count];
  v7 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_4;
  v10[3] = &unk_2798BE2C0;
  v8 = v3;
  v11 = v8;
  v13 = v14;
  v9 = v6;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4] != v3)
  {
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      v9 = v3;
      v6 = a1[5];
      *(v4 + 24) = v5 - 1;
      v7 = [v6 objectAtIndex:?];
      v8 = [v9 calculateSignedAttributesDigest:0];
      [v7 setSignedAttrsHash:v8];

      v3 = v9;
    }
  }
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_5(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[6] + 104 * a3;
  v7 = *(a1[4] + 8);
  obj = *(v7 + 40);
  v8 = [a2 encodeSignerInfo:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }
}

BOOL __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 version];
  v3 = [v2 integerValue] > 1;

  return v3;
}

+ (id)decodeMessageSecurityObject:(id)a3 options:(id)a4 error:(id *)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v68 = a4;
  v63 = a5;
  if (a5 && *a5)
  {
    v8 = [*a5 copy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MSCMSSignedData alloc];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v65 = v7;
  v10 = nsheim_decode_CMSSignedData(v7);
  if (v10)
  {
    v11 = MSErrorASN1Domain[0];
    if (v7)
    {
      v12 = [v7 length];
    }

    else
    {
      v12 = -1;
    }

    v19 = [MSError MSErrorWithDomain:v11 code:v10 underlyingError:v8 description:@"unable to decode signedData (%ld bytes)", v12];

    dumpNSData("CMSSignedData", v7);
    v20 = 0;
    v66 = 0;
    v67 = 0;
    v62 = 0;
    v64 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v77];
  [(MSCMSSignedData *)v9 setVersion:v13];

  v66 = [MEMORY[0x277CBEB58] setWithCapacity:DWORD2(v77)];
  if (DWORD2(v77))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      memset(buf, 0, sizeof(buf));
      v83 = 0;
      v16 = *(v78 + v14 + 16);
      *buf = *(v78 + v14);
      v83 = v16;
      v76 = v8;
      v17 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:buf error:&v76];
      v18 = v76;

      if (v17)
      {
        [v66 addObject:v17];
      }

      ++v15;
      v14 += 24;
      v8 = v18;
    }

    while (v15 < DWORD2(v77));
  }

  else
  {
    v18 = v8;
  }

  [(MSCMSSignedData *)v9 setDigestAlgorithms:v66];
  v75 = v18;
  v64 = [MSOID OIDWithAsn1OID:&v78 + 8 error:&v75];
  v25 = v75;

  if (!v64)
  {
    [MSCMSSignedData decodeMessageSecurityObject:v25 options:v9 error:buf];
    v20 = 0;
    v67 = 0;
    v62 = 0;
    v64 = 0;
LABEL_78:
    v9 = 0;
    v19 = *buf;
    goto LABEL_16;
  }

  [(MSCMSSignedData *)v9 setContentType:?];
  v26 = *(&v79 + 1);
  if (*(&v79 + 1))
  {
    v27 = NSDataFromAny(*(&v79 + 1));
    [(MSCMSSignedData *)v9 setDataContent:v27];
  }

  [(MSCMSSignedData *)v9 setDetached:v26 == 0];
  if ([v64 isEqualToString:@"1.2.840.113549.1.7.1"])
  {
    v62 = 0;
  }

  else
  {
    v28 = [(MSCMSSignedData *)v9 dataContent];
    v74 = v25;
    v62 = decodeEmbeddedCMSContent(v64, v28, v68, &v74);
    v29 = v74;

    if (v62)
    {
      [(MSCMSSignedData *)v9 setEmbeddedContent:?];
    }

    else
    {
      v62 = 0;
    }

    v25 = v29;
  }

  [(MSCMSSignedData *)v9 setContentChanged:0];
  if (v80)
  {
    v20 = [MEMORY[0x277CBEB58] setWithCapacity:*v80];
    v30 = v80;
    if (*v80)
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v33 = *(v30 + 8);
        if (*(v33 + v31) != 1)
        {
          break;
        }

        v34 = v33 + v31;
        v36 = *(v34 + 8);
        v35 = *(v34 + 16);
        v37 = SecCertificateCreateWithBytes();
        if (!v37)
        {
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            +[MSCMSSignedData decodeMessageSecurityObject:options:error:];
          }

          v41 = MS_DEFAULT_LOG_INTERNAL;
          if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_47;
          }

          *buf = 67109120;
          *&buf[4] = v32;
          v39 = v41;
          v40 = "unable to parse certificate at %u";
          goto LABEL_46;
        }

        [v20 addObject:v37];

LABEL_47:
        ++v32;
        v30 = v80;
        v31 += 24;
        if (v32 >= *v80)
        {
          goto LABEL_54;
        }
      }

      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        +[MSCMSSignedData decodeMessageSecurityObject:options:error:];
      }

      v38 = MS_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      *buf = 67109120;
      *&buf[4] = v32;
      v39 = v38;
      v40 = "skipping non-certificate CertificateChoice at %u";
LABEL_46:
      _os_log_impl(&dword_258C80000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 8u);
      goto LABEL_47;
    }
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      +[MSCMSSignedData decodeMessageSecurityObject:options:error:];
    }

    v42 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258C80000, v42, OS_LOG_TYPE_INFO, "No certificates in SignedData", buf, 2u);
    }

    v20 = [MEMORY[0x277CBEB58] set];
  }

LABEL_54:
  v43 = [v68 additionalCertificates];

  if (v43)
  {
    v44 = [v68 additionalCertificates];
    [v20 addObjectsFromArray:v44];
  }

  [(MSCMSSignedData *)v9 setCertificates:v20];
  v67 = [MEMORY[0x277CBEB18] arrayWithCapacity:v81];
  if (v81)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = *(&v81 + 1);
      v48 = [v20 allObjects];
      v49 = [v68 LAContext];
      v73 = v25;
      v50 = [MSCMSSignerInfo decodeSignerInfo:v47 + v45 certificates:v48 LAContext:v49 error:&v73];
      v51 = v73;

      if (v50)
      {
        [v50 setContainingSignedData:v9];
        [v67 addObject:v50];
        [(MSCMSSignedData *)v9 addDigestAlgorithmFromSigner:v50];
        v25 = v51;
      }

      else
      {
        v25 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 errorLevel:2 underlyingError:v51 description:@"failed to create signerInfo object for signer %u", v46];
      }

      ++v46;
      v45 += 104;
    }

    while (v46 < v81);
  }

  [(MSCMSSignedData *)v9 setSigners:v67];
  v72 = v25;
  v52 = [(MSCMSSignedData *)v9 checkSignedPerRFC5652:&v72];
  v53 = v72;

  if (!v52)
  {
    [MSCMSSignedData decodeMessageSecurityObject:v53 options:v9 error:buf];
    goto LABEL_78;
  }

  [(MSCMSSignedData *)v9 setOptions:v68];
  if ([v68 verifySigners])
  {
    v54 = [v68 signerPolicies];
    v55 = [v68 verifyTime];
    v56 = [v68 anchorCertificates];
    v71 = v53;
    v57 = [(MSCMSSignedData *)v9 verifySignaturesAndSignersWithPolicies:v54 verifyTime:v55 anchorCertificates:v56 error:&v71];
    v19 = v71;

    if (!v57)
    {
      v58 = [MSError MSErrorWithDomain:MSErrorTrustDomain code:-67808 underlyingError:v19 description:@"decode failed due to signer verification failure"];

      v9 = 0;
      v19 = v58;
    }
  }

  else if (([v68 verifySignatures] & 1) != 0 || objc_msgSend(v68, "verifyTimestamps"))
  {
    v70 = v53;
    v59 = [(MSCMSSignedData *)v9 verifySignatures:&v70];
    v19 = v70;

    if (!v59)
    {
      v60 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-67808 underlyingError:v19 description:@"decode failed due to signature verification failure"];

      v9 = 0;
      v19 = v60;
    }

    if ([v68 verifyTimestamps])
    {
      *buf = 0;
      *&buf[8] = buf;
      v83 = 0x3032000000;
      v84 = __Block_byref_object_copy__0;
      v85 = __Block_byref_object_dispose__0;
      v86 = 0;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_133;
      v69[3] = &unk_2798BE220;
      v69[4] = buf;
      [v67 enumerateObjectsUsingBlock:v69];
      if (*(*&buf[8] + 40) || ![v67 count])
      {
        v61 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-67808 underlyingError:v19 description:@"decode failed due to timestamp verification failure"];

        v9 = 0;
        v19 = v61;
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v19 = v53;
  }

LABEL_16:
  if (v63 && v19)
  {
    v21 = v19;
    *v63 = v19;
  }

  free_CMSSignedData();
  v22 = v9;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_114()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_117()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

void __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_133(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [a2 verifyTimestamps:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0)
  {
    *a4 = 1;
  }
}

- (void)removeSignersWithIdentity:(__SecIdentity *)a3 error:(id *)a4
{
  if (a4 && *a4)
  {
    v7 = [*a4 copy];
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  v8 = MSSecIdentityCopyCertificateWithError(a3, &v13);
  v9 = v13;

  if (v8)
  {
    v12 = v9;
    [(MSCMSSignedData *)self removeSignersWithCertificate:v8 error:&v12];
    v10 = v12;

    v9 = v10;
  }

  if (a4 && v9)
  {
    v11 = v9;
    *a4 = v9;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)addCertificatesForSigner:(void *)a1 mode:(uint64_t *)a2 error:.cold.3(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorTrustDomain code:-25245 underlyingError:a1 description:@"unable to build chain according to mode could not evaluate trust"];;
}

- (void)addCertificatesForSigner:mode:error:.cold.4()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
}

- (void)addCertificatesForSigner:mode:error:.cold.5()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
}

- (void)checkSignedPerRFC5652:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-26275 description:?];
}

+ (void)decodeMessageSecurityObject:(void *)a1 options:(void *)a2 error:(uint64_t *)a3 .cold.4(void *a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:a1 description:@"decode failed for signedData due to RFC 5652 violation"];
}

+ (void)decodeMessageSecurityObject:(void *)a1 options:(void *)a2 error:(uint64_t *)a3 .cold.5(void *a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:a1 description:@"unable to get contentType from signedData"];
}

@end