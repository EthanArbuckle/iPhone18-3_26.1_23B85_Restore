@interface MSCMSSignerInfo
+ (id)decodeSignerInfo:(SignerInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6;
- (BOOL)createRequiredAttributes:(id *)a3;
- (BOOL)encodeSignerInfo:(SignerInfo *)a3 error:(id *)a4;
- (BOOL)sign:(id *)a3;
- (BOOL)verifyContentTypeAttribute:(id *)a3;
- (BOOL)verifyCountersignatures:(id *)a3;
- (BOOL)verifyCountersignaturesAndCountersignersWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6;
- (BOOL)verifyMessageDigestAttribute:(id)a3 error:(id *)a4;
- (BOOL)verifySignature:(id *)a3;
- (BOOL)verifySignatureAndSignerWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6;
- (BOOL)verifyTimestamps:(BOOL)a3 error:(id *)a4;
- (MSCMSSignedData)containingSignedData;
- (MSCMSSignerInfo)initWithCertificate:(__SecCertificate *)a3 recipientsAlgorithmCapabilities:(id)a4 error:(id *)a5;
- (MSCMSSignerInfo)initWithCertificate:(__SecCertificate *)a3 signatureAlgorithm:(id)a4 error:(id *)a5;
- (MSCMSSignerInfo)initWithEmail:(id)a3 recipientsAlgorithmCapabilities:(id)a4 LAContext:(id)a5 error:(id *)a6;
- (MSCMSSignerInfo)initWithEmail:(id)a3 signatureAlgorithm:(id)a4 LAContext:(id)a5 error:(id *)a6;
- (MSCMSSignerInfo)initWithIdentity:(__SecIdentity *)a3 recipientsAlgorithmCapabilities:(id)a4 error:(id *)a5;
- (MSCMSSignerInfo)initWithIdentity:(__SecIdentity *)a3 signatureAlgorithm:(id)a4 error:(id *)a5;
- (NSArray)certificates;
- (__SecTrust)createTrustObjectWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6;
- (id)calculateSignatureDigestWithAlgorithm:(id)a3 error:(id *)a4;
- (id)calculateSignedAttributesDigest:(id *)a3;
- (id)calculateSignerInfoDigest:(id *)a3;
- (id)getAttributesWithType:(id)a3;
- (id)getAttributesWithType:(id)a3 protectedAttributes:(BOOL)a4;
- (id)verifyTime:(id)a3;
- (void)addCounterSignerAttribute:(id)a3;
- (void)addMultipleSignaturesAttribute;
- (void)addProtectedAttribute:(id)a3;
- (void)addSMIMECapabilitiesAttribute:(id)a3;
- (void)addSMIMEEncryptionKeyPreferenceAttribute:(id)a3;
- (void)dealloc;
@end

@implementation MSCMSSignerInfo

- (NSArray)certificates
{
  v3 = [(MSCMSSignerInfo *)self containingSignedData];

  if (v3)
  {
    v4 = [(MSCMSSignerInfo *)self containingSignedData];
    v5 = [v4 certificates];
    v6 = [v5 allObjects];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MSCMSSignedData)containingSignedData
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSignedData);

  return WeakRetained;
}

- (void)dealloc
{
  signerCertificate = self->_signerCertificate;
  if (signerCertificate)
  {
    self->_signerCertificate = 0;
    CFRelease(signerCertificate);
  }

  signerPrivKey = self->_signerPrivKey;
  if (signerPrivKey)
  {
    self->_signerPrivKey = 0;
    CFRelease(signerPrivKey);
  }

  if (self->_encodedSignerInfo)
  {
    free_SignerInfo();
    free(self->_encodedSignerInfo);
    self->_encodedSignerInfo = 0;
  }

  v5.receiver = self;
  v5.super_class = MSCMSSignerInfo;
  [(MSCMSSignerInfo *)&v5 dealloc];
}

- (MSCMSSignerInfo)initWithCertificate:(__SecCertificate *)a3 signatureAlgorithm:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v35.receiver = self;
  v35.super_class = MSCMSSignerInfo;
  v8 = [(MSCMSSignerInfo *)&v35 init];
  if (!v8)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8->_signerCertificate = a3;
  v9 = +[MSCMSMutableAttributeArray array];
  protectedAttributes = v8->_protectedAttributes;
  v8->_protectedAttributes = v9;

  v11 = +[MSCMSMutableAttributeArray array];
  unprotectedAttributes = v8->_unprotectedAttributes;
  v8->_unprotectedAttributes = v11;

  signature = v8->_signature;
  v8->_signature = 0;

  v8->_signatureCalculated = 0;
  v8->_signerPrivKey = 0;
  v8->_encodedSignerInfo = 0;
  if (!v7)
  {
    p_signatureAlgorithm = &v8->_signatureAlgorithm;
    goto LABEL_17;
  }

  KeyTypeForCertificate = getKeyTypeForCertificate(a3);
  if (KeyTypeForCertificate == 3)
  {
    if (initWithCertificate_signatureAlgorithm_error__onceToken_4 != -1)
    {
      [MSCMSSignerInfo initWithCertificate:signatureAlgorithm:error:];
    }

    v33 = initWithCertificate_signatureAlgorithm_error__sAllowedECSigAlgs;
    v34 = [v7 OIDString];
    LODWORD(v33) = [v33 containsObject:v34];

    if (!v33)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (KeyTypeForCertificate != 1)
    {
      goto LABEL_11;
    }

    if (initWithCertificate_signatureAlgorithm_error__onceToken != -1)
    {
      [MSCMSSignerInfo initWithCertificate:signatureAlgorithm:error:];
    }

    v15 = initWithCertificate_signatureAlgorithm_error__sAllowedRSASigAlgs;
    v16 = [v7 OIDString];
    LOBYTE(v15) = [v15 containsObject:v16];

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v17 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v7];
  signatureAlgorithm = v8->_signatureAlgorithm;
  v8->_signatureAlgorithm = v17;

LABEL_11:
  p_signatureAlgorithm = &v8->_signatureAlgorithm;
  if (v8->_signatureAlgorithm)
  {
    goto LABEL_19;
  }

  if (MS_DEFAULT_LOG_BLOCK != -1)
  {
    [MSCMSSignerInfo initWithCertificate:signatureAlgorithm:error:];
  }

  v20 = MS_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = [v7 OIDString];
    v23 = getKeyTypeForCertificate(a3);
    *buf = 138412546;
    v37 = v22;
    v38 = 2048;
    v39 = v23;
    _os_log_impl(&dword_258C80000, v21, OS_LOG_TYPE_DEFAULT, "MSCMSSignerInfo init signature aglorithm %@ not permitted for certificate key type %ld", buf, 0x16u);
  }

LABEL_17:
  if (!*p_signatureAlgorithm)
  {
    v24 = findBestMutuallySupportedSignatureAlgorithm(a3, 0);
    v25 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v24];
    v26 = *p_signatureAlgorithm;
    *p_signatureAlgorithm = v25;

    v27 = *p_signatureAlgorithm;
  }

LABEL_19:
  v28 = [MSAlgorithmIdentifier digestAlgorithmWithSignatureAlgorithm:"digestAlgorithmWithSignatureAlgorithm:error:" error:?];
  digestAlgorithm = v8->_digestAlgorithm;
  v8->_digestAlgorithm = v28;

  if (!v8->_digestAlgorithm)
  {
    v30 = 0;
    goto LABEL_22;
  }

LABEL_20:
  v30 = v8;
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void __64__MSCMSSignerInfo_initWithCertificate_signatureAlgorithm_error___block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"1.2.840.113549.1.1.4";
  v5[1] = @"1.2.840.113549.1.1.5";
  v5[2] = @"1.2.840.113549.1.1.14";
  v5[3] = @"1.2.840.113549.1.1.11";
  v5[4] = @"1.2.840.113549.1.1.12";
  v5[5] = @"1.2.840.113549.1.1.13";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCertificate_signatureAlgorithm_error__sAllowedRSASigAlgs;
  initWithCertificate_signatureAlgorithm_error__sAllowedRSASigAlgs = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __64__MSCMSSignerInfo_initWithCertificate_signatureAlgorithm_error___block_invoke_2()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"1.2.840.10045.4.1";
  v5[1] = @"1.2.840.10045.4.3.1";
  v5[2] = @"1.2.840.10045.4.3.2";
  v5[3] = @"1.2.840.10045.4.3.3";
  v5[4] = @"1.2.840.10045.4.3.4";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCertificate_signatureAlgorithm_error__sAllowedECSigAlgs;
  initWithCertificate_signatureAlgorithm_error__sAllowedECSigAlgs = v2;

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __64__MSCMSSignerInfo_initWithCertificate_signatureAlgorithm_error___block_invoke_3()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MSCMSSignerInfo)initWithEmail:(id)a3 signatureAlgorithm:(id)a4 LAContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 && *a6)
  {
    v13 = [*a6 copy];
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  IdentityByEmailAddress = findIdentityByEmailAddress(v10, v12, &v20);
  v15 = v20;

  if (IdentityByEmailAddress)
  {
    v19 = v15;
    self = [(MSCMSSignerInfo *)self initWithIdentity:IdentityByEmailAddress signatureAlgorithm:v11 error:&v19];
    v16 = v19;

    [(MSCMSSignerInfo *)self setLAContext:v12];
    if (!a6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 underlyingError:v15 description:@"unable to find identity matching %@", v10];

    if (!a6)
    {
      goto LABEL_11;
    }
  }

  if (v16)
  {
    v17 = v16;
    *a6 = v16;
  }

LABEL_11:
  if (IdentityByEmailAddress)
  {
    CFRelease(IdentityByEmailAddress);
  }

  return self;
}

- (MSCMSSignerInfo)initWithCertificate:(__SecCertificate *)a3 recipientsAlgorithmCapabilities:(id)a4 error:(id *)a5
{
  v8 = findBestMutuallySupportedSignatureAlgorithm(a3, a4);
  v9 = [(MSCMSSignerInfo *)self initWithCertificate:a3 signatureAlgorithm:v8 error:a5];

  return v9;
}

- (MSCMSSignerInfo)initWithEmail:(id)a3 recipientsAlgorithmCapabilities:(id)a4 LAContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 && *a6)
  {
    v13 = [*a6 copy];
  }

  else
  {
    v13 = 0;
  }

  IdentityByEmailAddress = findIdentityByEmailAddress(v10, v12, a6);
  if (IdentityByEmailAddress)
  {
    v18 = v13;
    self = [(MSCMSSignerInfo *)self initWithIdentity:IdentityByEmailAddress recipientsAlgorithmCapabilities:v11 error:&v18];
    v15 = v18;

    [(MSCMSSignerInfo *)self setLAContext:v12];
    if (!a6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 underlyingError:v13 description:@"unable to find identity matching %@", v10];

    if (!a6)
    {
      goto LABEL_11;
    }
  }

  if (v15)
  {
    v16 = v15;
    *a6 = v15;
  }

LABEL_11:
  if (IdentityByEmailAddress)
  {
    CFRelease(IdentityByEmailAddress);
  }

  return self;
}

- (void)addCounterSignerAttribute:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v4 = [(MSCMSSignerInfo *)self unprotectedAttributes];
    [v4 addObject:v11];

    [v11 setContainingSignerInfo:self];
    v5 = [(MSCMSSignerInfo *)self containingSignedData];

    if (v5)
    {
      v6 = [(MSCMSSignerInfo *)self containingSignedData];
      [v6 addCounterSignerCertificates:self mode:objc_msgSend(v11 error:{"chainMode"), 0}];

      v7 = [v11 additionalCertificates];

      if (v7)
      {
        v8 = [(MSCMSSignerInfo *)self containingSignedData];
        v9 = [v8 certificates];
        v10 = [v11 additionalCertificates];
        [v9 addObjectsFromArray:v10];
      }
    }
  }
}

- (void)addMultipleSignaturesAttribute
{
  v3 = [(MSCMSSignerInfo *)self containingSignedData];

  if (v3)
  {
    v4 = +[MSCMSMutableAttributeArray array];
    v5 = [(MSCMSSignerInfo *)self protectedAttributes];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__MSCMSSignerInfo_addMultipleSignaturesAttribute__block_invoke;
    v12[3] = &unk_2798BE6D8;
    v6 = v4;
    v13 = v6;
    [v5 enumerateObjectsUsingBlock:v12];

    [(MSCMSSignerInfo *)self setProtectedAttributes:v6];
    v7 = [(MSCMSSignerInfo *)self containingSignedData];
    v8 = [v7 signers];

    if ([v8 count] != 1)
    {
      v9 = 0;
      do
      {
        v10 = [MSCMSMultipleSignaturesAttribute alloc];
        [(MSCMSMultipleSignaturesAttribute *)v10 setSignedAttrsHashAlgorithm:self->_digestAlgorithm];
        v11 = [(MSCMSSignerInfo *)self protectedAttributes];
        [v11 addObject:v10];

        ++v9;
      }

      while (v9 < [v8 count] - 1);
    }
  }
}

void __49__MSCMSSignerInfo_addMultipleSignaturesAttribute__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 attributeType];
  v4 = [v3 isEqualToString:@"1.2.840.113549.1.9.2.51"];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)addSMIMECapabilitiesAttribute:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[MSCMSMutableAttributeArray array];
    v6 = [(MSCMSSignerInfo *)self protectedAttributes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__MSCMSSignerInfo_addSMIMECapabilitiesAttribute___block_invoke;
    v8[3] = &unk_2798BE6D8;
    v9 = v5;
    v7 = v5;
    [v6 enumerateObjectsUsingBlock:v8];

    [v7 addObject:v4];
    [(MSCMSSignerInfo *)self setProtectedAttributes:v7];
  }
}

void __49__MSCMSSignerInfo_addSMIMECapabilitiesAttribute___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 attributeType];
  v4 = [v3 isEqualToString:@"1.2.840.113549.1.9.15"];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)addSMIMEEncryptionKeyPreferenceAttribute:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[MSCMSMutableAttributeArray array];
    v6 = [(MSCMSSignerInfo *)self protectedAttributes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__MSCMSSignerInfo_addSMIMEEncryptionKeyPreferenceAttribute___block_invoke;
    v8[3] = &unk_2798BE6D8;
    v9 = v5;
    v7 = v5;
    [v6 enumerateObjectsUsingBlock:v8];

    [v7 addObject:v4];
    [(MSCMSSignerInfo *)self setProtectedAttributes:v7];
  }
}

void __60__MSCMSSignerInfo_addSMIMEEncryptionKeyPreferenceAttribute___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 attributeType];
  v4 = [v3 isEqualToString:@"1.2.840.113549.1.9.16.2.11"];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)addProtectedAttribute:(id)a3
{
  v4 = a3;
  v5 = [(MSCMSSignerInfo *)self protectedAttributes];
  [v5 addObject:v4];

  [(MSCMSSignerInfo *)self createRequiredAttributes:0];
}

- (id)calculateSignedAttributesDigest:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  if (!self->_digestAlgorithm)
  {
    signatureAlgorithm = self->_signatureAlgorithm;
    if (signatureAlgorithm)
    {
      v14[0] = v5;
      v7 = [MSAlgorithmIdentifier digestAlgorithmWithSignatureAlgorithm:signatureAlgorithm error:v14];
      v8 = v14[0];

      digestAlgorithm = self->_digestAlgorithm;
      self->_digestAlgorithm = v7;

      if (self->_digestAlgorithm)
      {
        v5 = v8;
        goto LABEL_9;
      }

      [MSCMSSignerInfo calculateSignedAttributesDigest:];
    }

    else
    {
      [MSCMSSignerInfo calculateSignedAttributesDigest:];
    }

    v10 = 0;
    v11 = v14[1];
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  v10 = [MSCMSMutableAttributeArray calculateAttributesWithDigest:"calculateAttributesWithDigest:error:" error:?];
  v11 = v5;

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (v11)
  {
    v12 = v11;
    *a3 = v11;
  }

LABEL_12:

  return v10;
}

- (BOOL)verifyContentTypeAttribute:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  v28 = v5;
  v6 = [MSOID OIDWithString:@"1.2.840.113549.1.9.3" error:&v28];
  v7 = v28;

  v8 = [(MSCMSSignerInfo *)self getAttributesWithType:v6];

  if (!v8 || [v8 count] != 1)
  {
    v22 = MSErrorCMSDomain[0];
    v23 = @"Missing or too many content-type attribute(s)";
    goto LABEL_16;
  }

  v9 = [v8 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [MSCMSContentTypeAttribute alloc];
    v12 = [v8 objectAtIndex:0];
    v27 = v7;
    v13 = [(MSCMSContentTypeAttribute *)v11 initWithAttribute:v12 error:&v27];
    v14 = v27;

    v7 = v14;
    if (!v13)
    {
LABEL_15:
      v22 = MSErrorCMSDomain[0];
      v23 = @"Could not decode content-type attribute";
LABEL_16:
      v24 = [MSError MSErrorWithDomain:v22 code:-26275 underlyingError:v7 description:v23];
      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = [v8 objectAtIndex:0];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      goto LABEL_15;
    }

    v13 = [v8 objectAtIndex:0];
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  v17 = [(MSCMSContentTypeAttribute *)v13 contentType];
  v18 = [(MSCMSSignerInfo *)self containingSignedData];
  v19 = [v18 contentType];
  v20 = [v17 isEqual:v19];

  if ((v20 & 1) == 0)
  {
    v24 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:v7 description:@"Signed content-type attribute does not match content-type in signedData"];
LABEL_17:

    v21 = 0;
    v7 = v24;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v21 = 1;
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v7)
  {
    v25 = v7;
    *a3 = v7;
  }

LABEL_20:

  return v21;
}

- (BOOL)verifyMessageDigestAttribute:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4 && *a4)
  {
    v7 = [*a4 copy];
  }

  else
  {
    v7 = 0;
  }

  v28 = v7;
  v8 = [MSOID OIDWithString:@"1.2.840.113549.1.9.4" error:&v28];
  v9 = v28;

  v10 = [(MSCMSSignerInfo *)self getAttributesWithType:v8];

  if (!v10 || [v10 count] != 1)
  {
    v22 = MSErrorCMSDomain[0];
    v23 = @"Missing or too many message-digest attribute(s)";
    goto LABEL_16;
  }

  v11 = [v10 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [MSCMSMessageDigestAttribute alloc];
    v14 = [v10 objectAtIndex:0];
    v27 = v9;
    v15 = [(MSCMSMessageDigestAttribute *)v13 initWithAttribute:v14 error:&v27];
    v16 = v27;

    v9 = v16;
    if (!v15)
    {
LABEL_15:
      v22 = MSErrorCMSDomain[0];
      v23 = @"Could not decode message-digest attribute";
LABEL_16:
      v24 = [MSError MSErrorWithDomain:v22 code:-26275 underlyingError:v9 description:v23];
      v15 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v17 = [v10 objectAtIndex:0];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if ((v18 & 1) == 0)
    {
      goto LABEL_15;
    }

    v15 = [v10 objectAtIndex:0];
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  v19 = [(MSCMSMessageDigestAttribute *)v15 messageDigest];
  v20 = [v19 isEqual:v6];

  if ((v20 & 1) == 0)
  {
    v24 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:v9 description:@"Message-digest attribute failed to verify"];
LABEL_17:

    v21 = 0;
    v9 = v24;
    if (!a4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v21 = 1;
  if (!a4)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v9)
  {
    v25 = v9;
    *a4 = v9;
  }

LABEL_20:

  return v21;
}

- (BOOL)verifySignature:(id *)a3
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  v37 = v5;
  cf = 0;
  v6 = [(MSCMSSignerInfo *)self calculateSignerInfoDigest:&v37];
  v7 = v37;

  if (!v6)
  {
    [(MSCMSSignerInfo *)v7 verifySignature:buf];
    v8 = 0;
LABEL_36:
    v25 = 0;
    v26 = *buf;
    goto LABEL_27;
  }

  v8 = SecCertificateCopyKey([(MSCMSSignerInfo *)self signerCertificate]);
  if (!v8)
  {
    [(MSCMSSignerInfo *)v7 verifySignature:buf];
    goto LABEL_36;
  }

  v9 = [(MSCMSSignerInfo *)self signature];

  if (!v9)
  {
    [(MSCMSSignerInfo *)v7 verifySignature:buf];
    goto LABEL_36;
  }

  v10 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm algorithm];
  v11 = [v10 secKeyAlgorithm];

  if (!v11)
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSSignerInfo verifySignature:];
    }

    v12 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      signatureAlgorithm = self->_signatureAlgorithm;
      log = v12;
      v35 = [(MSAlgorithmIdentifier *)signatureAlgorithm algorithm];
      v32 = [v35 OIDString];
      v33 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm algorithm];
      v14 = [v33 OIDString];
      v15 = [(MSCMSSignerInfo *)self digestAlgorithm];
      v16 = [v15 algorithm];
      v17 = [v16 OIDString];
      *buf = 138412802;
      *&buf[4] = v32;
      v40 = 2112;
      v41 = v14;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_258C80000, log, OS_LOG_TYPE_INFO, "Bad signature algorithm %@. Trying to compose signature algorithm from %@ and digest %@", buf, 0x20u);
    }

    v18 = self->_signatureAlgorithm;
    digestAlgorithm = self->_digestAlgorithm;
    v36 = v7;
    v20 = [(MSAlgorithmIdentifier *)v18 signatureAlgorithmWithDigestAlgorithm:digestAlgorithm error:&v36];
    v21 = v36;

    v11 = [v20 secKeyAlgorithm];
    if (!v11)
    {
      v27 = MSErrorCryptoDomain[0];
      v7 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm algorithm];
      v28 = [v7 OIDString];
      v26 = [MSError MSErrorWithDomain:v27 code:-4 underlyingError:v21 description:@"%@ is not a supported signature algorithm", v28];

      v25 = 0;
      goto LABEL_27;
    }

    v7 = v21;
  }

  if (self->_LAContext)
  {
    v22 = *MEMORY[0x277CDC5A0];
    if (!SecKeySetParameter())
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        [MSCMSSignerInfo verifySignature:];
      }

      v23 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = cf;
        _os_log_impl(&dword_258C80000, v23, OS_LOG_TYPE_ERROR, "failed to set credential reference on signer public key: %@", buf, 0xCu);
      }

      v24 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v24);
      }
    }
  }

  v25 = SecKeyVerifySignature(v8, v11, v6, [(MSCMSSignerInfo *)self signature], &cf) != 0;
  v26 = cf;
  if (!cf)
  {
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_27:

  v7 = v26;
  if (!a3)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (v7)
  {
    v29 = v7;
    *a3 = v7;
  }

LABEL_30:
  if (v8)
  {
    CFRelease(v8);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __35__MSCMSSignerInfo_verifySignature___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __35__MSCMSSignerInfo_verifySignature___block_invoke_62()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)verifyTime:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    goto LABEL_15;
  }

  v7 = [MSOID OIDWithString:@"1.2.840.113549.1.9.16.2.14" error:0];
  v8 = [(MSCMSSignerInfo *)self getAttributesWithType:v7];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [v8 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [MSCMSTimestampAttribute alloc];
    v12 = [v8 objectAtIndex:0];
    v13 = [(MSCMSTimestampAttribute *)v11 initWithAttribute:v12 error:0];

    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = [v8 objectAtIndex:0];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if ((v15 & 1) == 0)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v13 = [v8 objectAtIndex:0];
    if (!v13)
    {
LABEL_12:

LABEL_13:
      v6 = [MEMORY[0x277CBEAA8] date];
      goto LABEL_14;
    }
  }

  v16 = [(MSCMSTimestampAttribute *)v13 timestampTime];

  if (!v16)
  {
    goto LABEL_12;
  }

  v6 = [(MSCMSTimestampAttribute *)v13 timestampTime];

LABEL_14:
LABEL_15:

  return v6;
}

- (id)calculateSignatureDigestWithAlgorithm:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 ccdigest];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB28] dataWithLength:*v7];
    v9 = [(MSCMSSignerInfo *)self signature];
    [v9 length];
    v10 = [(MSCMSSignerInfo *)self signature];
    [v10 bytes];
    [v8 mutableBytes];
    ccdigest();

LABEL_5:
    goto LABEL_6;
  }

  if (a4)
  {
    v11 = MSErrorCryptoDomain[0];
    v12 = *a4;
    v9 = [v6 OIDString];
    [MSError MSErrorWithDomain:v11 code:-4 underlyingError:v12 description:@"%@ is not a supported digest algorithm", v9];
    *a4 = v8 = 0;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)verifyCountersignatures:(id *)a3
{
  v5 = [(MSCMSSignerInfo *)self unprotectedAttributes];
  v6 = [MSOID OIDWithString:@"1.2.840.113549.1.9.6" error:0];
  v7 = [v5 getAttributesWithType:v6];

  if (v7)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__4;
    v18 = __Block_byref_object_dispose__4;
    if (a3)
    {
      v8 = *a3;
      if (*a3)
      {
        v8 = [v8 copy];
      }
    }

    else
    {
      v8 = 0;
    }

    v19 = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__MSCMSSignerInfo_verifyCountersignatures___block_invoke_76;
    v13[3] = &unk_2798BE700;
    v13[4] = self;
    v13[5] = buf;
    v13[6] = &v20;
    [v7 enumerateObjectsUsingBlock:v13];
    if (a3)
    {
      v11 = *(v15 + 5);
      if (v11)
      {
        *a3 = v11;
      }
    }

    v10 = *(v21 + 24) ^ 1;
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSSignerInfo verifyCountersignatures:];
    }

    v9 = MS_DEFAULT_LOG_INTERNAL;
    v10 = 1;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258C80000, v9, OS_LOG_TYPE_INFO, "no countersignatures, returning successful verification", buf, 2u);
    }
  }

  return v10 & 1;
}

uint64_t __43__MSCMSSignerInfo_verifyCountersignatures___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __43__MSCMSSignerInfo_verifyCountersignatures___block_invoke_76(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MSCMSCountersignatureAttribute alloc];
    WeakRetained = objc_loadWeakRetained((a1[4] + 112));
    v10 = [WeakRetained certificates];
    v11 = [v10 allObjects];
    v12 = a1[4];
    v13 = *(v12 + 56);
    v14 = *(a1[5] + 8);
    obj = *(v14 + 40);
    v15 = [(MSCMSCountersignatureAttribute *)v8 initWithAttribute:v7 certificates:v11 LAContext:v13 containingSignerInfo:v12 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (!v15)
    {
LABEL_8:
      v19 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-108 underlyingError:*(*(a1[5] + 8) + 40) description:@"unable to create countersignature attribute for countersigner %lu", a3];
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v15 = v7;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v16 = *(a1[4] + 40);
  v17 = *(a1[5] + 8);
  v22 = *(v17 + 40);
  v18 = [(MSCMSCountersignatureAttribute *)v15 verifyCountersignatures:v16 error:&v22];
  objc_storeStrong((v17 + 40), v22);
  if (!v18)
  {
    v19 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[5] + 8) + 40) description:@"unable to verify countersignature(s) for countersigner %lu", a3];
LABEL_9:
    v20 = *(a1[5] + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)verifyCountersignaturesAndCountersignersWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MSCMSSignerInfo *)self unprotectedAttributes];
  v14 = [MSOID OIDWithString:@"1.2.840.113549.1.9.6" error:0];
  v15 = [v13 getAttributesWithType:v14];

  if (v15)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    *buf = 0;
    v28 = buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__4;
    v31 = __Block_byref_object_dispose__4;
    if (a6)
    {
      v16 = *a6;
      if (*a6)
      {
        v16 = [v16 copy];
      }
    }

    else
    {
      v16 = 0;
    }

    v32 = v16;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __108__MSCMSSignerInfo_verifyCountersignaturesAndCountersignersWithPolicies_verifyTime_anchorCertificates_error___block_invoke_86;
    v21[3] = &unk_2798BE728;
    v21[4] = self;
    v25 = buf;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v26 = &v33;
    [v15 enumerateObjectsUsingBlock:v21];
    if (a6)
    {
      v19 = *(v28 + 5);
      if (v19)
      {
        *a6 = v19;
      }
    }

    v18 = *(v34 + 24) ^ 1;

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSSignerInfo verifyCountersignaturesAndCountersignersWithPolicies:verifyTime:anchorCertificates:error:];
    }

    v17 = MS_DEFAULT_LOG_INTERNAL;
    v18 = 1;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258C80000, v17, OS_LOG_TYPE_INFO, "no countersignatures, returning successful verification", buf, 2u);
    }
  }

  return v18 & 1;
}

uint64_t __108__MSCMSSignerInfo_verifyCountersignaturesAndCountersignersWithPolicies_verifyTime_anchorCertificates_error___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __108__MSCMSSignerInfo_verifyCountersignaturesAndCountersignersWithPolicies_verifyTime_anchorCertificates_error___block_invoke_86(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MSCMSCountersignatureAttribute alloc];
    WeakRetained = objc_loadWeakRetained((a1[4] + 112));
    v10 = [WeakRetained certificates];
    v11 = [v10 allObjects];
    v12 = a1[4];
    v13 = *(v12 + 56);
    v14 = *(a1[8] + 8);
    obj = *(v14 + 40);
    v15 = [(MSCMSCountersignatureAttribute *)v8 initWithAttribute:v7 certificates:v11 LAContext:v13 containingSignerInfo:v12 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (!v15)
    {
LABEL_8:
      v21 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-108 underlyingError:*(*(a1[8] + 8) + 40) description:@"unable to create countersignature attribute for countersigner %lu", a3];
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v15 = v7;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v16 = a1[5];
  v17 = [a1[4] verifyTime:a1[6]];
  v18 = *(a1[4] + 40);
  v19 = a1[7];
  v20 = *(a1[8] + 8);
  v24 = *(v20 + 40);
  LOBYTE(v16) = [(MSCMSCountersignatureAttribute *)v15 verifyCountersignaturesAndCountersignersWithPolicies:v16 verifyTime:v17 anchorCertificates:v19 signature:v18 error:&v24];
  objc_storeStrong((v20 + 40), v24);

  if ((v16 & 1) == 0)
  {
    v21 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[8] + 8) + 40) description:@"unable to verify countersigner %lu", a3];
LABEL_9:
    v22 = *(a1[8] + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    *a4 = 1;
    *(*(a1[9] + 8) + 24) = 1;
  }
}

- (BOOL)verifyTimestamps:(BOOL)a3 error:(id *)a4
{
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__4;
  v27[4] = __Block_byref_object_dispose__4;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  if (a4)
  {
    v7 = *a4;
    if (*a4)
    {
      v7 = [v7 copy];
    }
  }

  else
  {
    v7 = 0;
  }

  v26 = v7;
  v8 = [MSOID OIDWithString:@"1.2.840.113549.1.9.16.2.14" error:0];
  v9 = [(MSCMSSignerInfo *)self getAttributesWithType:v8];

  if (v9)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:v22[5] description:@"unable to verify timestamp signature because there are no timestamps"];
    v11 = v22[5];
    v22[5] = v10;

LABEL_8:
    *buf = 0;
    v18 = buf;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__MSCMSSignerInfo_verifyTimestamps_error___block_invoke_95;
    v16[3] = &unk_2798BE750;
    v16[4] = self;
    v16[5] = &v21;
    v16[6] = v27;
    v16[7] = buf;
    [v9 enumerateObjectsUsingBlock:v16];
    if (a4)
    {
      v12 = v22[5];
      if (v12)
      {
        *a4 = v12;
      }
    }

    v13 = v18[24] ^ 1;
    _Block_object_dispose(buf, 8);
    goto LABEL_12;
  }

  if (MS_DEFAULT_LOG_BLOCK != -1)
  {
    [MSCMSSignerInfo verifyTimestamps:error:];
  }

  v15 = MS_DEFAULT_LOG_INTERNAL;
  v13 = 1;
  if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258C80000, v15, OS_LOG_TYPE_INFO, "no timestamps, returning successful verification", buf, 2u);
  }

LABEL_12:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v27, 8);

  return v13 & 1;
}

uint64_t __42__MSCMSSignerInfo_verifyTimestamps_error___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __42__MSCMSSignerInfo_verifyTimestamps_error___block_invoke_95(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MSCMSTimestampAttribute alloc];
    v9 = *(a1[5] + 8);
    obj = *(v9 + 40);
    v10 = [(MSCMSTimestampAttribute *)v8 initWithAttribute:v7 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    if (!v10)
    {
LABEL_8:
      v18 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-108 underlyingError:*(*(a1[5] + 8) + 40) description:@"unable to create timestamp attribute for timestamp %lu", a3];
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v10 = v7;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = a1[4];
  v12 = [v11[15] algorithm];
  v13 = [v11 calculateSignatureDigestWithAlgorithm:v12 error:0];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(a1[6] + 8) + 40);
  v17 = *(a1[5] + 8);
  v21 = *(v17 + 40);
  LOBYTE(v12) = [(MSCMSTimestampAttribute *)v10 verifyTimestamps:v16 error:&v21];
  objc_storeStrong((v17 + 40), v21);
  if ((v12 & 1) == 0)
  {
    v18 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[5] + 8) + 40) description:@"unable to verify timestamp signature for timestamp %lu", a3];
LABEL_9:
    v19 = *(a1[5] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *a4 = 1;
    *(*(a1[7] + 8) + 24) = 1;
  }
}

- (id)getAttributesWithType:(id)a3
{
  v4 = a3;
  v5 = [(MSCMSSignerInfo *)self getAttributesWithType:v4 protectedAttributes:1];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MSCMSSignerInfo *)self getAttributesWithType:v4 protectedAttributes:0];
  if (v7)
  {
    if (v6)
    {
      [v6 addObjectsFromArray:v7];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithArray:v7];
    }
  }

  return v6;
}

- (id)getAttributesWithType:(id)a3 protectedAttributes:(BOOL)a4
{
  v6 = a3;
  v7 = self->_protectedAttributes;
  if (!a4)
  {
    v8 = self->_unprotectedAttributes;

    v7 = v8;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__MSCMSSignerInfo_getAttributesWithType_protectedAttributes___block_invoke;
  v15[3] = &unk_2798BE778;
  v9 = v6;
  v16 = v9;
  v10 = [(MSCMSMutableAttributeArray *)v7 indexesOfObjectsPassingTest:v15];
  if ([v10 count])
  {
    v11 = MEMORY[0x277CBEB18];
    v12 = [(MSCMSMutableAttributeArray *)v7 objectsAtIndexes:v10];
    v13 = [v11 arrayWithArray:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __61__MSCMSSignerInfo_getAttributesWithType_protectedAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 encodeAttributeWithError:0];
  v4 = [v3 attributeType];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (__SecTrust)createTrustObjectWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277CBEB18];
  v14 = [(MSCMSSignerInfo *)self certificates];
  v15 = [v13 arrayWithArray:v14];

  trust = 0;
  if (a6 && *a6)
  {
    v16 = [*a6 copy];
  }

  else
  {
    v16 = 0;
  }

  if (![(MSCMSSignerInfo *)self signerCertificate])
  {
    [MSCMSSignerInfo createTrustObjectWithPolicies:verifyTime:anchorCertificates:error:];
LABEL_19:
    v16 = v25;
    goto LABEL_11;
  }

  [v15 insertObject:self->_signerCertificate atIndex:0];
  v17 = SecTrustCreateWithCertificates(v15, v10, &trust);
  if (v17)
  {
    v23 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:v17 underlyingError:v16 description:@"unable to create trust object due to security error"];

    trust = 0;
    v16 = v23;
    goto LABEL_11;
  }

  if (v11)
  {
    v18 = SecTrustSetVerifyDate(trust, v11);
    if (v18)
    {
      [MSCMSSignerInfo createTrustObjectWithPolicies:v18 verifyTime:v16 anchorCertificates:&v25 error:?];
      goto LABEL_19;
    }
  }

  if (v12)
  {
    v19 = SecTrustSetAnchorCertificates(trust, v12);
    if (v19)
    {
      [MSCMSSignerInfo createTrustObjectWithPolicies:v19 verifyTime:v16 anchorCertificates:&v25 error:?];
      goto LABEL_19;
    }
  }

LABEL_11:
  if (a6 && v16)
  {
    v20 = v16;
    *a6 = v16;
  }

  v21 = trust;

  return v21;
}

- (BOOL)sign:(id *)a3
{
  buf[3] = *MEMORY[0x277D85DE8];
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  cf = 0;
  if (!self->_signature || ![(MSCMSSignerInfo *)self verifySignature:0])
  {
    if (!self->_signatureAlgorithm)
    {
      [MSCMSSignerInfo sign:];
      goto LABEL_39;
    }

    v35 = v5;
    v7 = [(MSCMSSignerInfo *)self calculateSignerInfoDigest:&v35];
    v8 = v35;

    if (!v7)
    {
      [MSCMSSignerInfo sign:];
      goto LABEL_39;
    }

    if (!self->_signerPrivKey)
    {
      signerCertificate = self->_signerCertificate;
      if (!signerCertificate)
      {
        [MSCMSSignerInfo sign:];
        goto LABEL_39;
      }

      LAContext = self->_LAContext;
      v34 = v8;
      IdentityByCertificate = findIdentityByCertificate(signerCertificate, LAContext, &v34);
      v12 = v34;

      if (!IdentityByCertificate)
      {
        [MSCMSSignerInfo sign:];
        goto LABEL_39;
      }

      v33 = v12;
      v13 = MSSecIdentityCopyKeyWithError(IdentityByCertificate, &v33);
      v8 = v33;

      self->_signerPrivKey = v13;
      CFRelease(IdentityByCertificate);
      if (!self->_signerPrivKey)
      {
        [MSCMSSignerInfo sign:];
        goto LABEL_39;
      }
    }

    v14 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm algorithm];
    v15 = [v14 secKeyAlgorithm];

    if (!v15)
    {
      v27 = MSErrorCryptoDomain[0];
      v28 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm algorithm];
      v29 = [v28 OIDString];
      v5 = [MSError MSErrorWithDomain:v27 code:-4 underlyingError:v8 description:@"%@ is not a supported signature algorithm", v29];

      v6 = 0;
      if (!a3)
      {
LABEL_31:
        self->_signatureCalculated = v6;
        goto LABEL_32;
      }

LABEL_29:
      if (v5)
      {
        v30 = v5;
        *a3 = v5;
      }

      goto LABEL_31;
    }

    v16 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm algorithm];
    v17 = [v16 isEqualToString:@"1.2.840.113549.1.1.4"];

    if (!v17)
    {
      if (self->_LAContext)
      {
        signerPrivKey = self->_signerPrivKey;
        v19 = *MEMORY[0x277CDC5A0];
        if (!SecKeySetParameter())
        {
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            [MSCMSSignerInfo sign:];
          }

          v20 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0]) = 138412290;
            *(buf + 4) = cf;
            _os_log_impl(&dword_258C80000, v20, OS_LOG_TYPE_ERROR, "failed to set credential reference on signer private key: %@", buf, 0xCu);
          }

          v21 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v21);
          }
        }
      }

      v22 = self->_signerPrivKey;
      v23 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm algorithm];
      Signature = SecKeyCreateSignature(v22, [v23 secKeyAlgorithm], v7, &cf);
      v25 = self->_signature;
      self->_signature = Signature;

      v26 = cf;
      if (cf)
      {

        v8 = v26;
      }

      v6 = self->_signature != 0;

      v5 = v8;
      if (!a3)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    [MSCMSSignerInfo sign:];
LABEL_39:
    v6 = 0;
    v5 = buf[0];
    if (!a3)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v6 = 1;
LABEL_32:

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __24__MSCMSSignerInfo_sign___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)createRequiredAttributes:(id *)a3
{
  protectedAttributes = self->_protectedAttributes;
  if (!protectedAttributes || ![(MSCMSMutableAttributeArray *)protectedAttributes count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_containingSignedData);
    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_containingSignedData);
    v9 = [v8 contentType];
    v10 = [v9 isEqualToString:@"1.2.840.113549.1.7.1"];

    if (v10)
    {
LABEL_5:
      v11 = 0;
      v12 = 1;
      goto LABEL_23;
    }
  }

  v13 = objc_loadWeakRetained(&self->_containingSignedData);
  if (!v13 || (v14 = v13, v15 = objc_loadWeakRetained(&self->_containingSignedData), [v15 contentType], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, !v16))
  {
    [MSCMSSignerInfo createRequiredAttributes:?];
    v12 = 0;
    v11 = v44;
    goto LABEL_20;
  }

  v17 = objc_loadWeakRetained(&self->_containingSignedData);
  v18 = [(MSAlgorithmIdentifier *)self->_digestAlgorithm algorithm];
  v43 = 0;
  v19 = [v17 calculateContentDigestWithAlgorithm:v18 error:&v43];
  v20 = v43;

  v42 = v20;
  v21 = [MSOID OIDWithString:@"1.2.840.113549.1.9.3" error:&v42];
  v22 = v42;

  v23 = [(MSCMSSignerInfo *)self getAttributesWithType:v21];

  v41 = v22;
  v24 = [MSOID OIDWithString:@"1.2.840.113549.1.9.4" error:&v41];
  v11 = v41;

  v25 = [(MSCMSSignerInfo *)self getAttributesWithType:v24];

  if (!v23 || !v25)
  {
    goto LABEL_16;
  }

  v26 = objc_loadWeakRetained(&self->_containingSignedData);
  if (([v26 contentChanged] & 1) != 0 || -[MSCMSSignerInfo contentChanged](self, "contentChanged") || !-[MSCMSSignerInfo verifyContentTypeAttribute:](self, "verifyContentTypeAttribute:", 0))
  {

LABEL_16:
    v28 = self->_protectedAttributes;
    v40 = v11;
    v29 = [MSOID OIDWithString:@"1.2.840.113549.1.9.3" error:&v40];
    v30 = v40;

    [(MSCMSMutableAttributeArray *)v28 removeAttributes:v29];
    v31 = self->_protectedAttributes;
    v39 = v30;
    v32 = [MSOID OIDWithString:@"1.2.840.113549.1.9.4" error:&v39];
    v11 = v39;

    [(MSCMSMutableAttributeArray *)v31 removeAttributes:v32];
    v33 = objc_loadWeakRetained(&self->_containingSignedData);
    v34 = [v33 contentType];
    v35 = [MSCMSContentTypeAttribute contentTypeAttributeWithOID:v34];

    v36 = [MSCMSMessageDigestAttribute messageDigestAttributeWithDigest:v19];
    if (!v35 || ([(MSCMSMutableAttributeArray *)self->_protectedAttributes addObject:v35], !v36))
    {

      v12 = 0;
      goto LABEL_20;
    }

    [(MSCMSMutableAttributeArray *)self->_protectedAttributes addObject:v36];

    goto LABEL_19;
  }

  v27 = [(MSCMSSignerInfo *)self verifyMessageDigestAttribute:v19 error:0];

  if (!v27)
  {
    goto LABEL_16;
  }

LABEL_19:

  v12 = 1;
LABEL_20:
  if (a3 && v11)
  {
    v37 = v11;
    *a3 = v11;
  }

LABEL_23:

  return v12;
}

- (BOOL)encodeSignerInfo:(SignerInfo *)a3 error:(id *)a4
{
  if (a4 && *a4)
  {
    v7 = [*a4 copy];
  }

  else
  {
    v7 = 0;
  }

  if (!a3)
  {
    [MSCMSSignerInfo encodeSignerInfo:error:];
LABEL_47:
    v41 = 0;
    v9 = 0;
    v12 = 0;
LABEL_52:
    v7 = v47;
    goto LABEL_37;
  }

  a3->var6 = 0;
  *&a3->var4.var0.components = 0u;
  a3->var5 = 0u;
  *&a3->var2.var0.components = 0u;
  *&a3->var3 = 0u;
  *&a3->var0 = 0u;
  *&a3->var1.var1 = 0u;
  if (self->_encodedSignerInfo && !copy_SignerInfo() && [(MSCMSSignerInfo *)self verifySignature:0])
  {
    if (!self->_encodedSignerInfo->var6)
    {
      v8 = [(MSCMSSignerInfo *)self unprotectedAttributes];
      v9 = [v8 count];

      if (!v9)
      {
        goto LABEL_14;
      }
    }

    v10 = [(MSCMSSignerInfo *)self unprotectedAttributes];
    v11 = [v10 encodeImplicitAttributesWithError:0];

    if (v11 && [v11 length] == self->_encodedSignerInfo->var6->var0)
    {

      v9 = 0;
LABEL_14:
      v12 = 0;
      goto LABEL_41;
    }
  }

  free_SignerInfo();
  if (!self->_signerCertificate)
  {
    [MSCMSSignerInfo encodeSignerInfo:error:];
    goto LABEL_47;
  }

  v12 = SecCertificateGetSubjectKeyID();
  if (v12 && ![(MSCMSSignerInfo *)self useIssuerAndSerialNumber])
  {
    a3->var0 = 3;
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    version = self->_version;
    self->_version = v18;

    v9 = [[MSCMSIdentifier alloc] initWithSkid:v12];
  }

  else
  {
    a3->var0 = 1;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v14 = self->_version;
    self->_version = v13;

    v15 = SecCertificateCopySerialNumberData(self->_signerCertificate, 0);
    signerCertificate = self->_signerCertificate;
    v17 = SecCertificateCopyIssuerSequence();
    v9 = [[MSCMSIdentifier alloc] initWithIssuerName:v17 serialNumber:v15];
  }

  v52 = v7;
  v20 = [(MSCMSIdentifier *)v9 encodeMessageSecurityObject:&v52];
  v21 = v52;

  [(MSCMSSignerInfo *)self setIdentifierData:v20];
  v22 = [(MSCMSSignerInfo *)self identifierData];
  v51[1] = [v22 length];
  v23 = [(MSCMSSignerInfo *)self identifierData];
  v51[2] = [v23 bytes];

  copy_SignerIdentifier();
  signatureAlgorithm = self->_signatureAlgorithm;
  if (!signatureAlgorithm)
  {
    [MSCMSSignerInfo encodeSignerInfo:error:];
LABEL_51:
    v41 = 0;
    goto LABEL_52;
  }

  [(MSAlgorithmIdentifier *)signatureAlgorithm asn1AlgId];
  copy_AlgorithmIdentifier();
  digestAlgorithm = self->_digestAlgorithm;
  if (!digestAlgorithm)
  {
    v26 = self->_signatureAlgorithm;
    if (v26)
    {
      v51[0] = v21;
      v27 = [MSAlgorithmIdentifier digestAlgorithmWithSignatureAlgorithm:v26 error:v51];
      v28 = v51[0];

      v29 = self->_digestAlgorithm;
      self->_digestAlgorithm = v27;

      digestAlgorithm = self->_digestAlgorithm;
      if (digestAlgorithm)
      {
        v21 = v28;
        goto LABEL_26;
      }

      [MSCMSSignerInfo calculateSignedAttributesDigest:];
    }

    else
    {
      [MSCMSSignerInfo encodeSignerInfo:error:];
    }

    goto LABEL_51;
  }

LABEL_26:
  [(MSAlgorithmIdentifier *)digestAlgorithm asn1AlgId];
  copy_AlgorithmIdentifier();
  v50 = v21;
  v30 = [(MSCMSSignerInfo *)self createRequiredAttributes:&v50];
  v7 = v50;

  if (!v30)
  {
    goto LABEL_44;
  }

  protectedAttributes = self->_protectedAttributes;
  if (protectedAttributes && [(MSCMSMutableAttributeArray *)protectedAttributes count])
  {
    a3->var3 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
    v32 = self->_protectedAttributes;
    v49 = v7;
    v33 = [(MSCMSMutableAttributeArray *)v32 encodeImplicitAttributesWithError:&v49];
    v34 = v49;

    [(MSCMSSignerInfo *)self setSignedAttrsData:v33];
    v47 = [v33 length];
    v48 = [v33 bytes];
    MEMORY[0x259C98450](&v47, a3->var3);

    v7 = v34;
  }

  v35 = v7;
  v46 = v7;
  v36 = [(MSCMSSignerInfo *)self sign:&v46];
  v7 = v46;

  if (v36)
  {
    v45[1] = [(NSData *)self->_signature length];
    v45[2] = [(NSData *)self->_signature bytes];
    copy_SignatureValue();
    unprotectedAttributes = self->_unprotectedAttributes;
    if (unprotectedAttributes && [(MSCMSMutableAttributeArray *)unprotectedAttributes count])
    {
      a3->var6 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
      v38 = self->_unprotectedAttributes;
      v45[0] = v7;
      v39 = [(MSCMSMutableAttributeArray *)v38 encodeImplicitAttributesWithError:v45];
      v40 = v45[0];

      [(MSCMSSignerInfo *)self setUnsignedAttrsData:v39];
      v47 = [v39 length];
      v48 = [v39 bytes];
      MEMORY[0x259C98450](&v47, a3->var6);

      v41 = 1;
      v7 = v40;
    }

    else
    {
      if (a3->var6)
      {
        a3->var6 = 0;
      }

      v41 = 1;
    }
  }

  else
  {
LABEL_44:
    v41 = 0;
  }

LABEL_37:
  if (a4 && v7)
  {
    v42 = v7;
    *a4 = v7;
  }

  if ((v41 & 1) == 0)
  {
    free_SignerInfo();
    v43 = 0;
    a3->var6 = 0;
    *&a3->var4.var0.components = 0u;
    a3->var5 = 0u;
    *&a3->var2.var0.components = 0u;
    *&a3->var3 = 0u;
    *&a3->var0 = 0u;
    *&a3->var1.var1 = 0u;
    goto LABEL_43;
  }

LABEL_41:
  v43 = 1;
LABEL_43:

  return v43;
}

- (MSCMSSignerInfo)initWithIdentity:(__SecIdentity *)a3 signatureAlgorithm:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a5 && *a5)
  {
    v9 = [*a5 copy];
  }

  else
  {
    v9 = 0;
  }

  v18 = v9;
  v10 = MSSecIdentityCopyCertificateWithError(a3, &v18);
  v11 = v18;

  if (!v10)
  {
    v13 = 0;
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v17 = v11;
  self = [(MSCMSSignerInfo *)self initWithCertificate:v10 signatureAlgorithm:v8 error:&v17];
  v12 = v17;

  if (!self)
  {
    v13 = 0;
    v11 = v12;
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v16 = v12;
  v13 = MSSecIdentityCopyKeyWithError(a3, &v16);
  v11 = v16;

  if (v13)
  {
    CFRetain(v13);
  }

  self->_signerPrivKey = v13;
  if (a5)
  {
LABEL_12:
    if (v11)
    {
      v14 = v11;
      *a5 = v11;
    }
  }

LABEL_14:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return self;
}

- (MSCMSSignerInfo)initWithIdentity:(__SecIdentity *)a3 recipientsAlgorithmCapabilities:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a5 && *a5)
  {
    v9 = [*a5 copy];
  }

  else
  {
    v9 = 0;
  }

  v19 = v9;
  v10 = MSSecIdentityCopyCertificateWithError(a3, &v19);
  v11 = v19;

  if (!v10)
  {
    v14 = 0;
    v12 = 0;
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v12 = findBestMutuallySupportedSignatureAlgorithm(v10, v8);
  v18 = v11;
  self = [(MSCMSSignerInfo *)self initWithCertificate:v10 signatureAlgorithm:v12 error:&v18];
  v13 = v18;

  if (!self)
  {
    v14 = 0;
    v11 = v13;
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v17 = v13;
  v14 = MSSecIdentityCopyKeyWithError(a3, &v17);
  v11 = v17;

  if (v14)
  {
    CFRetain(v14);
  }

  self->_signerPrivKey = v14;
  if (a5)
  {
LABEL_12:
    if (v11)
    {
      v15 = v11;
      *a5 = v11;
    }
  }

LABEL_14:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return self;
}

- (id)calculateSignerInfoDigest:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containingSignedData);
  if (!WeakRetained || (v7 = WeakRetained, v8 = objc_loadWeakRetained(&self->_containingSignedData), [v8 dataContent], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    v22 = MSErrorCMSDomain[0];
    v23 = @"signer has no reference to a signedData with content";
LABEL_19:
    v17 = [MSError MSErrorWithDomain:v22 code:-50 underlyingError:v5 description:v23];

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  if (self->_digestAlgorithm)
  {
    goto LABEL_11;
  }

  signatureAlgorithm = self->_signatureAlgorithm;
  if (!signatureAlgorithm)
  {
    v22 = MSErrorCMSDomain[0];
    v23 = @"signer has no signature algorithm";
    goto LABEL_19;
  }

  v30 = v5;
  v11 = [MSAlgorithmIdentifier digestAlgorithmWithSignatureAlgorithm:signatureAlgorithm error:&v30];
  v12 = v30;

  digestAlgorithm = self->_digestAlgorithm;
  self->_digestAlgorithm = v11;

  if (!self->_digestAlgorithm)
  {
    v17 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v12 description:@"No digest algorithm specified"];

    goto LABEL_20;
  }

  v5 = v12;
LABEL_11:
  v14 = objc_loadWeakRetained(&self->_containingSignedData);
  v15 = [(MSAlgorithmIdentifier *)self->_digestAlgorithm algorithm];
  v29 = v5;
  v16 = [v14 calculateContentDigestWithAlgorithm:v15 error:&v29];
  v17 = v29;

  if (!v16)
  {
    goto LABEL_21;
  }

  if ([(MSCMSMutableAttributeArray *)self->_protectedAttributes count])
  {
    v28 = v17;
    v18 = [(MSCMSSignerInfo *)self verifyContentTypeAttribute:&v28];
    v19 = v28;

    if (!v18)
    {
      v21 = 0;
LABEL_16:
      v17 = v19;
      if (!a3)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v27 = v19;
    v20 = [(MSCMSSignerInfo *)self verifyMessageDigestAttribute:v16 error:&v27];
    v17 = v27;

    if (v20)
    {
      v26 = v17;
      v21 = [(MSCMSSignerInfo *)self calculateSignedAttributesDigest:&v26];
      v19 = v26;

      goto LABEL_16;
    }

LABEL_21:
    v21 = 0;
    if (!a3)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v16 = v16;
  v21 = v16;
  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v17)
  {
    v24 = v17;
    *a3 = v17;
  }

LABEL_26:

  return v21;
}

- (BOOL)verifySignatureAndSignerWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 && *a6)
  {
    v13 = [*a6 copy];
  }

  else
  {
    v13 = 0;
  }

  v27 = v13;
  error = 0;
  v14 = [(MSCMSSignerInfo *)self verifySignature:&v27];
  v15 = v27;

  if (!v14)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v16 = [(MSCMSSignerInfo *)self verifyTime:v11];
  v17 = [(MSCMSSignerInfo *)self createTrustObjectWithPolicies:v10 verifyTime:v16 anchorCertificates:v12 error:a6];

  if (!v17)
  {
LABEL_18:
    v20 = 0;
    goto LABEL_11;
  }

  if (SecTrustEvaluateWithError(v17, &error))
  {
    v26 = v15;
    v18 = [(MSCMSSignerInfo *)self verifyCountersignaturesAndCountersignersWithPolicies:v10 verifyTime:v11 anchorCertificates:v12 error:&v26];
    v19 = v26;

    if (!v18)
    {
      v20 = 0;
      v15 = v19;
      goto LABEL_11;
    }

    v25 = v19;
    v20 = [(MSCMSSignerInfo *)self verifyTimestamps:&v25];
    v21 = v25;
  }

  else
  {
    if (error)
    {
      Code = CFErrorGetCode(error);
      v19 = error;
    }

    else
    {
      v19 = 0;
      Code = -1;
    }

    v21 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:Code underlyingError:v19 description:@"trust evaluation of signer failed"];

    v20 = 0;
  }

  v15 = v21;
LABEL_11:
  if (a6 && v15)
  {
    v22 = v15;
    *a6 = v15;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v20;
}

+ (id)decodeSignerInfo:(SignerInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6
{
  v11 = a4;
  v12 = a5;
  if (a6 && *a6)
  {
    v13 = [*a6 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:a3->var0];
  v15 = [MSCMSIdentifier decodeIdentifier:&a3->var1 error:a6];
  v16 = v15;
  v41 = v14;
  v42 = v12;
  if (v15)
  {
    v17 = [v15 type];
    if (v17 == 1)
    {
      if ([v14 intValue] == 1)
      {
LABEL_9:
        v47 = v13;
        CertificateForIdentifier = findCertificateForIdentifier(&a3->var1, v11, v12, &v47);
        v19 = v47;

        if (CertificateForIdentifier)
        {
          v39 = v11;
          v20 = [a1 alloc];
          [v20 setSignerCertificate:CertificateForIdentifier];
          v46 = v19;
          v40 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:&a3->var2 error:&v46];
          v21 = v46;

          var3 = a3->var3;
          v23 = 0x2798BD000uLL;
          if (var3)
          {
            v45 = v21;
            v6 = [MSCMSMutableAttributeArray createAttributeArrayFromAttributeSetRaw:var3 error:&v45];
            v13 = v45;

            if (v6)
            {
              v24 = [MSOID OIDWithString:@"1.2.840.113549.1.9.15" error:0];
              v25 = [v6 getAttributesWithType:v24];

              if ([v25 count] >= 2)
              {
              }

              else
              {
                v26 = [MSOID OIDWithString:@"1.2.840.113549.1.9.16.2.11" error:0];
                v27 = [v6 getAttributesWithType:v26];

                if ([v27 count] <= 1)
                {

                  v21 = v13;
                  v23 = 0x2798BD000;
LABEL_19:
                  v44 = v21;
                  a1 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:&a3->var4 error:&v44];
                  v13 = v44;

                  CertificateForIdentifier = NSDataFromOctetString(&a3->var5.var0);
                  var6 = a3->var6;
                  if (var6)
                  {
                    v32 = *(v23 + 3224);
                    v43 = v13;
                    v30 = [v32 createAttributeArrayFromAttributeSetRaw:var6 error:&v43];
                    v33 = v43;

                    if (!v30)
                    {

                      v20 = 0;
                      v13 = v33;
                      goto LABEL_27;
                    }

                    v13 = v33;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  [v20 setVersion:v41];
                  [v20 setDigestAlgorithm:v40];
                  [v20 setProtectedAttributes:v6];
                  [v20 setSignatureAlgorithm:a1];
                  [v20 setUnprotectedAttributes:v30];
                  [v20 setSignature:CertificateForIdentifier];
                  [v20 setLAContext:v42];
                  v34 = malloc_type_malloc(0x68uLL, 0x10B00404EF9CE24uLL);
                  if (v34)
                  {
                    v35 = v34;
                    v34[12] = 0;
                    *(v34 + 4) = 0u;
                    *(v34 + 5) = 0u;
                    *(v34 + 2) = 0u;
                    *(v34 + 3) = 0u;
                    *v34 = 0u;
                    *(v34 + 1) = 0u;
                    copy_SignerInfo();
                    if ([v20 encodedSignerInfo])
                    {
                      [v20 encodedSignerInfo];
                      free_SignerInfo();
                      free([v20 encodedSignerInfo]);
                      [v20 setEncodedSignerInfo:0];
                    }

                    [v20 setEncodedSignerInfo:v35];
                  }

LABEL_27:
                  v11 = v39;
                  if (!a6)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_28;
                }
              }
            }

            else
            {
            }

            a1 = 0;
            CertificateForIdentifier = 0;
            v30 = 0;
            v20 = 0;
            goto LABEL_27;
          }

          v6 = 0;
          goto LABEL_19;
        }

        v13 = [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 underlyingError:v19 description:@"unable to find a certificate matching the signer"];

        OUTLINED_FUNCTION_2_2();
        goto LABEL_33;
      }
    }

    else if (v17 == 2 && [v14 intValue] == 3)
    {
      goto LABEL_9;
    }

    [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v13 description:@"decode failed for signerInfo due to RFC 5652 violation (version)"];
    v29 = v28 = v11;

    OUTLINED_FUNCTION_2_2();
    CertificateForIdentifier = 0;
    v30 = 0;
    v20 = 0;
    v13 = v29;
    v11 = v28;
    if (!a6)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_2();
  CertificateForIdentifier = 0;
LABEL_33:
  v30 = 0;
  v20 = 0;
  if (!a6)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (v13)
  {
    v36 = v13;
    *a6 = v13;
  }

LABEL_30:
  v37 = v20;

  return v20;
}

- (void)calculateSignedAttributesDigest:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

- (void)calculateSignedAttributesDigest:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
  v8 = OUTLINED_FUNCTION_3_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

- (uint64_t)verifySignature:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t *a2)
{
  result = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:a1 description:@"signer is missing signature"];
  *a2 = result;
  return result;
}

- (uint64_t)verifySignature:(uint64_t)a1 .cold.4(uint64_t a1, uint64_t *a2)
{
  result = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-26275 underlyingError:a1 description:@"failed to get public key from certificate"];
  *a2 = result;
  return result;
}

- (uint64_t)verifySignature:(uint64_t)a1 .cold.5(uint64_t a1, uint64_t *a2)
{
  result = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-26276 underlyingError:a1 description:@"unable to compute digest for signature"];
  *a2 = result;
  return result;
}

- (void)createTrustObjectWithPolicies:(uint64_t *)a3 verifyTime:anchorCertificates:error:.cold.1(int a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:a1 underlyingError:a2 description:@"failed to set verification time"];
}

- (void)createTrustObjectWithPolicies:(uint64_t *)a3 verifyTime:anchorCertificates:error:.cold.2(int a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:a1 underlyingError:a2 description:@"failed to set anchor certificates"];
}

- (void)createTrustObjectWithPolicies:verifyTime:anchorCertificates:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
  v8 = OUTLINED_FUNCTION_3_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

- (void)sign:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  *v0 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-50 underlyingError:v2 description:@"MD5 is not supported for signing"];
}

- (void)sign:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  *v0 = [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 underlyingError:v2 description:@"Could not sign data: no private key"];
}

- (void)sign:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  *v0 = [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 underlyingError:v2 description:@"Could not sign data: no identity in keychain for certificate"];
}

- (void)sign:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  *v0 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v2 description:@"Could not sign data: no key or certificate specified"];
}

- (void)sign:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

- (void)sign:.cold.7()
{
  OUTLINED_FUNCTION_0();
  v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
  v8 = OUTLINED_FUNCTION_3_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

- (uint64_t)createRequiredAttributes:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  result = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:0 description:@"Cannot encode signed attributes: no SignedData"];
  *a1 = result;
  return result;
}

- (void)encodeSignerInfo:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

- (void)encodeSignerInfo:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

- (void)encodeSignerInfo:error:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
  v8 = OUTLINED_FUNCTION_3_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

- (void)encodeSignerInfo:error:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorAllocationDomain[0] underlyingError:-50 description:?];
  v8 = OUTLINED_FUNCTION_3_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

@end