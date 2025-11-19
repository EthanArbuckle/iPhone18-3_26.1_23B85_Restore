@interface MSCMSRecipientInfo
+ (id)decodeKeyAgreeRecipientInfo:(RecipientInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6;
+ (id)decodeKeyTransRecipientInfo:(RecipientInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6;
+ (id)decodeRecipientInfo:(RecipientInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6;
- (BOOL)encodeKeyAgreeRecipientInfo:(id)a3 recipientInfo:(RecipientInfo *)a4 error:(id *)a5;
- (BOOL)encodeKeyTransRecipientInfo:(id)a3 recipientInfo:(RecipientInfo *)a4 error:(id *)a5;
- (BOOL)encodeRecipientInfo:(id)a3 recipientInfo:(RecipientInfo *)a4 error:(id *)a5;
- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 algorithmCapabilities:(id)a4;
- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 algorithmCapabilities:(id)a4 originator:(__SecIdentity *)a5;
- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 keyEncryptionAlgorithm:(id)a4 keyWrapAlgorithm:(id)a5 originator:(__SecIdentity *)a6;
- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 legacyKeyWrapAlgorithm:(BOOL)a4;
- (MSCMSRecipientInfo)initWithEmail:(id)a3;
- (MSCMSRecipientInfo)initWithEmail:(id)a3 algorithmCapabilities:(id)a4;
- (MSCMSRecipientInfo)initWithEmail:(id)a3 keyEncryptionAlgorithm:(id)a4;
- (__CFData)createSecCMSSharedInfo:(id)a3;
- (__CFData)createSharedInfo:(id)a3;
- (__CFData)keyEncryptionKey:(id)a3 forEncryption:(BOOL)a4 secCMSCompatibility:(BOOL)a5;
- (__SecCertificate)recipientCertificate;
- (id)decryptWrappedKey:(id)a3 kek:(id)a4 iv:(heim_base_data *)a5;
- (id)encryptBulkKey:(id)a3;
- (void)dealloc;
- (void)freeKeyTransRecipientInfo:(const RecipientInfo *)a3;
- (void)freeRecipientInfo:(const RecipientInfo *)a3;
- (void)setOriginator:(__SecCertificate *)a3;
- (void)setOriginatorIdentity:(__SecIdentity *)a3;
@end

@implementation MSCMSRecipientInfo

- (void)setOriginator:(__SecCertificate *)a3
{
  originator = self->_originator;
  if (originator)
  {
    self->_originator = 0;
    CFRelease(originator);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  self->_originator = a3;
}

- (void)setOriginatorIdentity:(__SecIdentity *)a3
{
  originatorIdentity = self->_originatorIdentity;
  if (originatorIdentity)
  {
    self->_originatorIdentity = 0;
    CFRelease(originatorIdentity);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  self->_originatorIdentity = a3;
}

- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 legacyKeyWrapAlgorithm:(BOOL)a4
{
  if (a4)
  {
    v6 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.42" error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MSCMSRecipientInfo *)self initWithCertificate:a3 keyEncryptionAlgorithm:0 keyWrapAlgorithm:v6 originator:0];

  return v7;
}

- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 algorithmCapabilities:(id)a4
{
  v6 = a4;
  v7 = findBestMutuallySupportedKeyEncryptionAlgorithm(v6);
  v8 = [(MSCMSRecipientInfo *)self initWithCertificate:a3 keyEncryptionAlgorithm:0 keyWrapAlgorithm:v7 originator:0];
  v9 = v8;
  if (v8)
  {
    [(MSCMSRecipientInfo *)v8 setAlgorithmCapabilities:v6];
  }

  return v9;
}

- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 algorithmCapabilities:(id)a4 originator:(__SecIdentity *)a5
{
  v8 = a4;
  v9 = findBestMutuallySupportedKeyEncryptionAlgorithm(v8);
  v10 = [(MSCMSRecipientInfo *)self initWithCertificate:a3 keyEncryptionAlgorithm:0 keyWrapAlgorithm:v9 originator:a5];
  v11 = v10;
  if (v10)
  {
    [(MSCMSRecipientInfo *)v10 setAlgorithmCapabilities:v8];
  }

  return v11;
}

- (MSCMSRecipientInfo)initWithCertificate:(__SecCertificate *)a3 keyEncryptionAlgorithm:(id)a4 keyWrapAlgorithm:(id)a5 originator:(__SecIdentity *)a6
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v64.receiver = self;
  v64.super_class = MSCMSRecipientInfo;
  v12 = [(MSCMSRecipientInfo *)&v64 init];
  v13 = v12;
  v14 = 0;
  if (!a3 || !v12)
  {
    goto LABEL_60;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v15 addObject:a3];
  objc_storeStrong(&v13->_recipientCertificates, v15);
  KeyTypeForCertificate = getKeyTypeForCertificate(a3);
  if (KeyTypeForCertificate != 3)
  {
    if (KeyTypeForCertificate != 1)
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        [MSCMSRecipientInfo initWithCertificate:keyEncryptionAlgorithm:keyWrapAlgorithm:originator:];
      }

      v21 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[MSCMSRecipientInfo initWithCertificate:keyEncryptionAlgorithm:keyWrapAlgorithm:originator:]";
        _os_log_impl(&dword_258C80000, v21, OS_LOG_TYPE_ERROR, "MSCMSRecipientInfo %s: Unsupported certificate key type", buf, 0xCu);
      }

      v14 = 0;
      goto LABEL_59;
    }

    if (initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__onceToken != -1)
    {
      [MSCMSRecipientInfo initWithCertificate:keyEncryptionAlgorithm:keyWrapAlgorithm:originator:];
    }

    if (v10)
    {
      v17 = initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedRSAEncAlgs;
      v18 = [v10 OIDString];
      LODWORD(v17) = [v17 containsObject:v18];

      if (v17)
      {
        v19 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v10];
        keyEncryptionAlgorithm = v13->_keyEncryptionAlgorithm;
        v13->_keyEncryptionAlgorithm = v19;
LABEL_58:

        v14 = v13;
LABEL_59:

LABEL_60:
        v60 = *MEMORY[0x277D85DE8];
        return v14;
      }

      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        [MSCMSRecipientInfo initWithCertificate:keyEncryptionAlgorithm:keyWrapAlgorithm:originator:];
      }

      v25 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v10 OIDString];
        *buf = 138412546;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = 1;
        _os_log_impl(&dword_258C80000, v26, OS_LOG_TYPE_DEFAULT, "MSCMSRecipientInfo init encryption algorithm %@ not permitted for certificate key type %ld", buf, 0x16u);
      }
    }

    v28 = [initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedRSAEncAlgs allObjects];
    keyEncryptionAlgorithm = [v28 objectAtIndex:0];

    v29 = [[MSOID alloc] initWithString:keyEncryptionAlgorithm error:0];
    v30 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v29];
    v31 = v13->_keyEncryptionAlgorithm;
    v13->_keyEncryptionAlgorithm = v30;

LABEL_57:
    goto LABEL_58;
  }

  if (a6)
  {
    CFRetain(a6);
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSRecipientInfo initWithCertificate:keyEncryptionAlgorithm:keyWrapAlgorithm:originator:];
    }

    v22 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258C80000, v22, OS_LOG_TYPE_DEFAULT, "MSCMSRecipientInfo requires an originator identity for an EC recipient. Encode will fail if not set.", buf, 2u);
    }
  }

  v13->_originatorIdentity = a6;
  if (initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__onceToken_12 != -1)
  {
    [MSCMSRecipientInfo initWithCertificate:keyEncryptionAlgorithm:keyWrapAlgorithm:originator:];
  }

  if (v10)
  {
    v23 = initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedECEncAlgs;
    v24 = [v10 OIDString];
    LODWORD(v23) = [v23 containsObject:v24];

    if (v23)
    {
      keyEncryptionAlgorithm = v10;
      if (!v11)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSRecipientInfo initWithCertificate:keyEncryptionAlgorithm:keyWrapAlgorithm:originator:];
    }

    v32 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = [v10 OIDString];
      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = 3;
      _os_log_impl(&dword_258C80000, v33, OS_LOG_TYPE_DEFAULT, "MSCMSRecipientInfo init encryption algorithm %@ not permitted for certificate key type %ld", buf, 0x16u);
    }
  }

  v35 = [initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedECEncAlgs allObjects];
  v36 = [v35 objectAtIndex:0];

  keyEncryptionAlgorithm = [[MSOID alloc] initWithString:v36 error:0];
  if (!v11)
  {
LABEL_37:
    v11 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.45" error:0];
  }

LABEL_38:
  if (([v11 isEqualToString:@"2.16.840.1.101.3.4.1.42"] & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", @"2.16.840.1.101.3.4.1.22") & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", @"2.16.840.1.101.3.4.1.2") & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", @"1.2.840.113549.3.7") & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", @"1.2.840.113549.3.2"))
  {
    v29 = 0;
    goto LABEL_50;
  }

  v37 = [[MSAlgorithmIdentifier alloc] initWithOID:v11];
  v38 = [(MSAlgorithmIdentifier *)v37 blockSize:0];

  v39 = malloc_type_malloc(v38, 0x6170FDAAuLL);
  SecRandomCopyBytes(*MEMORY[0x277CDC540], v38, v39);
  *buf = v38;
  *&buf[8] = v39;
  v63 = 0;
  v40 = length_DataContent(buf);
  v41 = [MEMORY[0x277CBEB28] dataWithLength:v40];
  if (v41)
  {
    v29 = v41;
    v42 = encode_DataContent([(MSOID *)v41 mutableBytes]+ v40 - 1, v40, buf, &v63);
    if (!v42)
    {
      if (v40 != v63)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v43 = v42;

    v44 = v43;
  }

  else
  {
    v44 = 12;
  }

  v45 = MEMORY[0x277CCA9B8];
  v67 = *MEMORY[0x277CCA450];
  v68 = @"Failed encoding type DataContent";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v47 = [v45 errorWithDomain:@"com.apple.HeimASN1" code:v44 userInfo:v46];

  v29 = 0;
LABEL_49:
  free(v39);
LABEL_50:
  v48 = [[MSAlgorithmIdentifier alloc] initWithOID:v11 parameters:v29];
  *buf = 0;
  v49 = length_AlgorithmIdentifier([(MSAlgorithmIdentifier *)v48 asn1AlgId]);
  v50 = [MEMORY[0x277CBEB28] dataWithLength:v49];
  if (!v50)
  {
    v54 = 12;
    goto LABEL_54;
  }

  v51 = v50;
  v52 = encode_AlgorithmIdentifier([v50 mutableBytes] + v49 - 1, v49, -[MSAlgorithmIdentifier asn1AlgId](v48, "asn1AlgId"), buf);
  if (v52)
  {
    v53 = v52;

    v54 = v53;
LABEL_54:
    v55 = MEMORY[0x277CCA9B8];
    v65 = *MEMORY[0x277CCA450];
    v66 = @"Failed encoding type AlgorithmIdentifier";
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v57 = [v55 errorWithDomain:@"com.apple.HeimASN1" code:v54 userInfo:v56];

    v51 = 0;
LABEL_56:
    v58 = [[MSAlgorithmIdentifier alloc] initWithOID:keyEncryptionAlgorithm parameters:v51];
    v59 = v13->_keyEncryptionAlgorithm;
    v13->_keyEncryptionAlgorithm = v58;

    goto LABEL_57;
  }

  if (v49 == *buf)
  {
    goto LABEL_56;
  }

LABEL_62:
  v62 = asn1_abort();
  return __93__MSCMSRecipientInfo_initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator___block_invoke(v62);
}

void __93__MSCMSRecipientInfo_initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"1.2.840.113549.1.1.1";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedRSAEncAlgs;
  initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedRSAEncAlgs = v2;

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __93__MSCMSRecipientInfo_initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator___block_invoke_2()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __93__MSCMSRecipientInfo_initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator___block_invoke_9()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

void __93__MSCMSRecipientInfo_initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator___block_invoke_13()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"1.3.133.16.840.63.0.2";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedECEncAlgs;
  initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator__sAllowedECEncAlgs = v2;

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __93__MSCMSRecipientInfo_initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator___block_invoke_2_16()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __93__MSCMSRecipientInfo_initWithCertificate_keyEncryptionAlgorithm_keyWrapAlgorithm_originator___block_invoke_30()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

- (MSCMSRecipientInfo)initWithEmail:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MSCMSRecipientInfo;
  v5 = [(MSCMSRecipientInfo *)&v7 init];
  if (v5)
  {
    v5 = [(MSCMSRecipientInfo *)v5 initWithCertificate:findCertificateByEmailAddress(v4, 0, 0)];
  }

  return v5;
}

- (MSCMSRecipientInfo)initWithEmail:(id)a3 algorithmCapabilities:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = findBestMutuallySupportedKeyEncryptionAlgorithm(v6);
  v9 = [(MSCMSRecipientInfo *)self initWithEmail:v7 keyEncryptionAlgorithm:v8];

  v10 = v9;
  v11 = v10;
  if (v10)
  {
    [(MSCMSRecipientInfo *)v10 setAlgorithmCapabilities:v6];
  }

  return v11;
}

- (MSCMSRecipientInfo)initWithEmail:(id)a3 keyEncryptionAlgorithm:(id)a4
{
  v5.receiver = self;
  v5.super_class = MSCMSRecipientInfo;

  return 0;
}

- (BOOL)encodeKeyTransRecipientInfo:(id)a3 recipientInfo:(RecipientInfo *)a4 error:(id *)a5
{
  v8 = a3;
  if (a5 && *a5)
  {
    v9 = [*a5 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm algorithm];
  v11 = [v10 isEqualToString:@"1.2.840.113549.1.1.1"];

  if (!v11)
  {
    v19 = 0;
    v15 = 0;
    v18 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v12 = a4 != 0;
  if (!a4)
  {
    [MSCMSRecipientInfo encodeKeyTransRecipientInfo:recipientInfo:error:];
    v19 = 0;
    v15 = 0;
    v18 = 0;
    v9 = v29[1];
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  *&a4->var1.var1.var3.var0.components = 0u;
  a4->var1.var1.var4 = 0u;
  a4->var1.var1.var1.var1.var2.var1 = 0u;
  *&a4->var1.var1.var2 = 0u;
  *&a4->var1.var1.var1.var0 = 0u;
  *&a4->var1.var1.var1.var1.var2.var0.var0.components = 0u;
  *&a4->var0 = 0u;
  a4->var0 = 1;
  v13 = [(NSArray *)self->_recipientCertificates objectAtIndex:0];
  v14 = [MSCMSIdentifier alloc];
  v15 = SecCertificateGetSubjectKeyID();
  if (v15)
  {
    a4->var1.var0.var0 = 2;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:2];
    version = self->_version;
    self->_version = v16;

    v18 = [[MSCMSIdentifier alloc] initWithSkid:v15];
  }

  else
  {
    a4->var1.var0.var0 = 0;
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    v21 = self->_version;
    self->_version = v20;

    v22 = SecCertificateCopySerialNumberData(v13, 0);
    v23 = SecCertificateCopyIssuerSequence();
    v18 = [[MSCMSIdentifier alloc] initWithIssuerName:v23 serialNumber:v22];

    v14 = v22;
    v12 = a4 != 0;
  }

  v29[0] = v9;
  v19 = [(MSCMSIdentifier *)v18 encodeMessageSecurityObject:v29];
  v24 = v29[0];

  v25 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm asn1AlgId];
  var1 = v25->var1;
  *&a4->var1.var1.var1.var1.var2.var0.var0.components = v25->var0;
  a4->var1.var1.var1.var1.var2.var1.var0 = var1;
  a4->var1.var0.var3.var1 = [v8 bytes];
  a4->var1.var0.var3.var0 = [v8 length];
  a4->var1.var1.var1.var1.var0.var0.var0 = [v19 bytes];
  a4->var1.var0.var1.var0 = [v19 length];
  v9 = v24;
  if (a5)
  {
LABEL_12:
    if (v9)
    {
      v27 = v9;
      *a5 = v9;
    }
  }

LABEL_14:

  return v12;
}

- (BOOL)encodeKeyAgreeRecipientInfo:(id)a3 recipientInfo:(RecipientInfo *)a4 error:(id *)a5
{
  v8 = a3;
  if (a5 && *a5)
  {
    v9 = [*a5 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm algorithm];
  v11 = [v10 isEqualToString:@"1.3.133.16.840.63.0.2"];

  if (v11)
  {
    v12 = a4 != 0;
    v29 = a5;
    v30 = v8;
    if (a4)
    {
      *&a4->var1.var1.var3.var0.components = 0u;
      a4->var1.var1.var4 = 0u;
      a4->var1.var1.var1.var1.var2.var1 = 0u;
      *&a4->var1.var1.var2 = 0u;
      *&a4->var1.var1.var1.var0 = 0u;
      *&a4->var1.var1.var1.var1.var2.var0.var0.components = 0u;
      *&a4->var0 = 0u;
      a4->var0 = 2;
      a4->var1.var0.var0 = 3;
      originator = self->_originator;
      originatorIdentity = self->_originatorIdentity;
      if (originatorIdentity)
      {
        if (originator)
        {
          self->_originator = 0;
          CFRelease(originator);
          originatorIdentity = self->_originatorIdentity;
        }

        v32[0] = v9;
        originator = MSSecIdentityCopyCertificateWithError(originatorIdentity, v32);
        v15 = v32[0];

        self->_originator = originator;
        v9 = v15;
      }

      if (originator)
      {
        a4->var1.var1.var1.var0 = 1;
        v16 = self->_originator;
        v17 = SecCertificateCopyIssuerSequence();
        a4->var1.var1.var1.var1.var0.var0.var0 = [v17 length];
        a4->var1.var0.var2.var0.length = [v17 bytes];
        v18 = SecCertificateCopySerialNumberData(self->_originator, 0);
        a4->var1.var1.var1.var1.var2.var1.var0 = [(__CFData *)v18 bytes];
        a4->var1.var1.var1.var1.var0.var1.var0 = [(__CFData *)v18 length];
        a4->var1.var1.var1.var1.var0.var1.var2 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      a4->var1.var0.var3.var1 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
      *a4->var1.var0.var3.var1 = [(NSData *)self->_userKeyingMaterial length];
      *(a4->var1.var0.var3.var1 + 1) = [(NSData *)self->_userKeyingMaterial bytes];
      v23 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm asn1AlgId];
      var1 = v23->var1;
      a4->var1.var1.var3.var0 = v23->var0;
      a4->var1.var1.var3.var1 = var1;
      a4->var1.var1.var4.var0 = 1;
      v25 = malloc_type_malloc(0x20uLL, 0x10800403AF1B36BuLL);
      v21 = SecCertificateCopySerialNumberData([(NSArray *)self->_recipientCertificates objectAtIndex:0], 0);
      v19 = SecCertificateCopyIssuerSequence();
      v22 = [[MSCMSIdentifier alloc] initWithIssuerName:v19 serialNumber:v21];
      v31 = v9;
      v20 = [(MSCMSIdentifier *)v22 encodeMessageSecurityObject:&v31];
      v26 = v31;

      *(v25 + 1) = [v20 bytes];
      *v25 = [v20 length];
      *(v25 + 3) = [v30 bytes];
      *(v25 + 2) = [v30 length];
      a4->var1.var1.var4.var1 = v25;
      v9 = v26;
      v12 = 1;
    }

    else
    {
      [MSCMSRecipientInfo encodeKeyTransRecipientInfo:recipientInfo:error:];
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v17 = 0;
      v18 = 0;
      v9 = v32[1];
    }

    if (v29)
    {
      v8 = v30;
      if (v9)
      {
        v27 = v9;
        *v29 = v9;
      }
    }

    else
    {
      v8 = v30;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0;
  }

  return v12;
}

- (void)freeKeyTransRecipientInfo:(const RecipientInfo *)a3
{
  free(a3->var1.var0.var3.var1);
  var1 = a3->var1.var1.var4.var1;

  free(var1);
}

- (BOOL)encodeRecipientInfo:(id)a3 recipientInfo:(RecipientInfo *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm algorithm];
  v10 = [v9 isEqualToString:@"1.2.840.113549.1.1.1"];

  if (v10)
  {
    v11 = [(MSCMSRecipientInfo *)self encodeKeyTransRecipientInfo:v8 recipientInfo:a4 error:a5];
  }

  else
  {
    v12 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm algorithm];
    v13 = [v12 isEqualToString:@"1.3.133.16.840.63.0.2"];

    if (!v13)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v11 = [(MSCMSRecipientInfo *)self encodeKeyAgreeRecipientInfo:v8 recipientInfo:a4 error:a5];
  }

  v14 = v11;
LABEL_7:

  return v14;
}

- (void)freeRecipientInfo:(const RecipientInfo *)a3
{
  v5 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm algorithm];
  v6 = [v5 isEqualToString:@"1.3.133.16.840.63.0.2"];

  if (v6)
  {

    [(MSCMSRecipientInfo *)self freeKeyTransRecipientInfo:a3];
  }
}

+ (id)decodeKeyTransRecipientInfo:(RecipientInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (a6 && *a6)
  {
    v11 = [*a6 copy];
  }

  else
  {
    v11 = 0;
  }

  if (a3->var0 != 1)
  {
    v25 = 0;
    goto LABEL_26;
  }

  v31 = v11;
  v12 = [MSCMSIdentifier decodeIdentifier:&a3->var1.var1.var1 error:&v31];
  v13 = v31;

  v27 = v10;
  v28 = v9;
  if (v12)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:a3->var1.var0.var0];
    v15 = [v12 type];
    if (v15 == 1)
    {
      if (![v14 intValue])
      {
LABEL_10:
        v30 = v13;
        CertificateForIdentifier = findCertificateForIdentifier(&a3->var1.var0.var1, v9, v10, &v30);
        v17 = v30;

        if (CertificateForIdentifier)
        {
          if ([v12 type] == 1 && SecCertificateVersion() == 3 && getKeyTypeForCertificate(CertificateForIdentifier) == 1 && (SecCertificateGetKeyUsage() & 4) == 0)
          {
            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              +[MSCMSRecipientInfo decodeKeyTransRecipientInfo:certificates:LAContext:error:];
            }

            v18 = MS_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_258C80000, v18, OS_LOG_TYPE_DEFAULT, "recipientInfo violates RFC 5652 (key usage)", buf, 2u);
            }
          }

          v29 = v17;
          v19 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:&a3->var1.var1.var1.var1.var2.var0.var0.components error:&v29];
          v11 = v29;

          v20 = NSDataFromOctetString(&a3->var1.var0.var3.var0);
          v21 = [MSCMSRecipientInfo alloc];
          v22 = v21;
          if (v21)
          {
            [(MSCMSRecipientInfo *)v21 setVersion:v14];
            v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v23 addObject:CertificateForIdentifier];

            [(MSCMSRecipientInfo *)v22 setRecipientCertificates:v23];
            [(MSCMSRecipientInfo *)v22 setKeyEncryptionAlgorithm:v19];
            CertificateForIdentifier = objc_alloc_init(MEMORY[0x277CBEB18]);
            [(__SecCertificate *)CertificateForIdentifier addObject:v20];
            [(MSCMSRecipientInfo *)v22 setEncryptedKeys:CertificateForIdentifier];
          }

          else
          {
            v23 = 0;
            CertificateForIdentifier = 0;
          }

          goto LABEL_21;
        }

        +[MSCMSRecipientInfo decodeKeyTransRecipientInfo:certificates:LAContext:error:];
        v23 = 0;
        v19 = 0;
        v20 = 0;
        goto LABEL_31;
      }
    }

    else if (v15 == 2 && [v14 intValue] == 2)
    {
      goto LABEL_10;
    }

    +[MSCMSRecipientInfo decodeKeyTransRecipientInfo:certificates:LAContext:error:];
    v23 = 0;
    v19 = 0;
    v20 = 0;
    CertificateForIdentifier = 0;
LABEL_31:
    v22 = 0;
    v11 = *buf;
    goto LABEL_21;
  }

  v14 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  CertificateForIdentifier = 0;
  v22 = 0;
  v11 = v13;
LABEL_21:
  if (a6 && v11)
  {
    v24 = v11;
    *a6 = v11;
  }

  v25 = v22;

  v10 = v27;
  v9 = v28;
LABEL_26:

  return v25;
}

uint64_t __79__MSCMSRecipientInfo_decodeKeyTransRecipientInfo_certificates_LAContext_error___block_invoke()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

+ (id)decodeKeyAgreeRecipientInfo:(RecipientInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6
{
  v48 = a4;
  v9 = a5;
  if (a6 && *a6)
  {
    v10 = [*a6 copy];
  }

  else
  {
    v10 = 0;
  }

  if (a3->var0 != 2)
  {
    v18 = 0;
    goto LABEL_41;
  }

  v11 = *&a3->var1.var0.var0;
  v12 = *&a3->var1.var1.var1.var1.var2.var1.var1;
  v13 = *&a3->var1.var1.var3.var1;
  var0 = a3->var1.var1.var3.var0;
  v59 = v13;
  var1 = a3->var1.var1.var4.var1;
  v14 = a3->var1.var1.var1.var1.var0.var0;
  v54 = v11;
  v55 = v14;
  v56 = *&a3->var1.var1.var1.var1.var2.var0.var1;
  v57 = v12;
  if (v11 != 3)
  {
    +[MSCMSRecipientInfo decodeKeyAgreeRecipientInfo:certificates:LAContext:error:];
    v23 = 0;
    v28 = 0;
    v26 = 0;
    v25 = 0;
    v47 = 0;
    v22 = 0;
    v21 = 0;
    v15 = 0;
    v10 = v61;
    if (!a6)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:3];
  if (DWORD2(v54) != 3)
  {
    if (DWORD2(v54) == 2)
    {
      v52 = v10;
      v16 = &v52;
      CertificateBySubjectKeyID = findCertificateBySubjectKeyID(&v55, v48, v9, &v52);
      goto LABEL_13;
    }

    if (DWORD2(v54) == 1)
    {
      v53 = v10;
      v16 = &v53;
      CertificateBySubjectKeyID = findCertificateByIssuerAndSerialNumber(&v55, v48, v9, &v53);
LABEL_13:
      v19 = CertificateBySubjectKeyID;
      v20 = *v16;

      v21 = 0;
      goto LABEL_14;
    }

    v21 = 0;
    v20 = v10;
LABEL_36:
    v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v20 description:@"decode failed for recipientInfo (originator)"];

    v23 = 0;
    v28 = 0;
    v26 = 0;
    v25 = 0;
    v47 = 0;
    v22 = 0;
    goto LABEL_37;
  }

  v21 = NSDataFromBitString(&v56 + 1);
  v51 = v10;
  v34 = [MSOID OIDWithAsn1OID:&v55 error:&v51];
  v20 = v51;

  if (!v21 || !v34)
  {

    goto LABEL_36;
  }

  v35 = v21;
  v36 = [v34 OIDString];
  v37 = [v36 isEqualToString:@"1.2.840.10045.2.1"];

  if ((v37 & 1) == 0)
  {
    v21 = v35;
    goto LABEL_36;
  }

  v19 = 0;
  v21 = v35;
LABEL_14:
  v22 = NSDataFromOctetString(*(&v57 + 1));
  v50 = v20;
  v23 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:&var0 error:&v50];
  v10 = v50;

  cf = v19;
  v47 = v23;
  if (v23)
  {
    v24 = [MSCMSRecipientInfo alloc];
    v25 = v24;
    if (v24)
    {
      v44 = v15;
      v45 = a6;
      [(MSCMSRecipientInfo *)v24 setVersion:v15];
      [(MSCMSRecipientInfo *)v25 setOriginator:v19];
      v43 = v21;
      [(MSCMSRecipientInfo *)v25 setOriginatorPubKey:v21];
      v42 = v22;
      [(MSCMSRecipientInfo *)v25 setUserKeyingMaterial:v22];
      v41 = v25;
      [(MSCMSRecipientInfo *)v25 setKeyEncryptionAlgorithm:v23];
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (DWORD2(v59))
      {
        v27 = 0;
        v28 = 0;
        v29 = 16;
        v30 = v10;
        do
        {
          v31 = (var1 + v29);
          v49 = v30;
          CertificateForIdentifier = findCertificateForIdentifier(var1 + v29 - 16, v48, v9, &v49);
          v10 = v49;

          if (CertificateForIdentifier)
          {
            [(MSCMSRecipientInfo *)v25 addObject:CertificateForIdentifier];

            v33 = NSDataFromOctetString(v31);

            [v26 addObject:v33];
            v28 = v33;
          }

          ++v27;
          v29 += 32;
          v30 = v10;
        }

        while (v27 < DWORD2(v59));
      }

      else
      {
        v28 = 0;
      }

      if ([(MSCMSRecipientInfo *)v25 count])
      {
        v23 = v41;
        [(MSCMSRecipientInfo *)v41 setRecipientCertificates:v25];
        v38 = [(MSCMSRecipientInfo *)v25 count];
        v15 = v44;
        a6 = v45;
        if (v38 == [v26 count])
        {
          [(MSCMSRecipientInfo *)v41 setEncryptedKeys:v26];
        }

        else
        {
          +[MSCMSRecipientInfo decodeKeyAgreeRecipientInfo:certificates:LAContext:error:];
          v10 = v61;
        }

        v22 = v42;
        v21 = v43;
      }

      else
      {
        +[MSCMSRecipientInfo decodeKeyAgreeRecipientInfo:certificates:LAContext:error:];
        v10 = v61;
        v15 = v44;
        a6 = v45;
        v22 = v42;
        v21 = v43;
        v23 = v41;
      }
    }

    else
    {
      v26 = 0;
      v28 = 0;
      v23 = 0;
    }
  }

  else
  {
    +[MSCMSRecipientInfo decodeKeyAgreeRecipientInfo:certificates:LAContext:error:];
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v10 = v61;
  }

  if (cf)
  {
    CFRelease(cf);
    if (!a6)
    {
      goto LABEL_40;
    }

LABEL_38:
    if (v10)
    {
      v39 = v10;
      *a6 = v10;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (a6)
  {
    goto LABEL_38;
  }

LABEL_40:
  v18 = v23;

LABEL_41:

  return v18;
}

+ (id)decodeRecipientInfo:(RecipientInfo *)a3 certificates:(id)a4 LAContext:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (a3->var0 == 2)
  {
    v11 = [MSCMSRecipientInfo decodeKeyAgreeRecipientInfo:a3 certificates:v9 LAContext:v10 error:a6];
    goto LABEL_5;
  }

  if (a3->var0 == 1)
  {
    v11 = [MSCMSRecipientInfo decodeKeyTransRecipientInfo:a3 certificates:v9 LAContext:v10 error:a6];
LABEL_5:
    v12 = v11;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (__SecCertificate)recipientCertificate
{
  result = [(NSArray *)self->_recipientCertificates count];
  if (result)
  {
    recipientCertificates = self->_recipientCertificates;

    return [(NSArray *)recipientCertificates objectAtIndex:0];
  }

  return result;
}

- (id)decryptWrappedKey:(id)a3 kek:(id)a4 iv:(heim_base_data *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSArray *)self->_encryptedKeys objectAtIndex:0];
  cryptorRef = 0;
  v11 = [v8 algorithm];
  if ([v11 isEqualToString:@"2.16.840.1.101.3.4.1.5"])
  {
    goto LABEL_4;
  }

  v12 = [v8 algorithm];
  if ([v12 isEqualToString:@"2.16.840.1.101.3.4.1.25"])
  {

LABEL_4:
LABEL_5:
    dataOutMoved = CCSymmetricUnwrappedSize([v8 ccAlgorithm:0], objc_msgSend(v10, "length"));
    v13 = [MEMORY[0x277CBEB28] dataWithLength:dataOutMoved];
    v14 = [v8 ccAlgorithm:0];
    if (!CCSymmetricKeyUnwrap(v14, *MEMORY[0x277D85C18], *MEMORY[0x277D85C20], [v9 bytes], objc_msgSend(v9, "length"), objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), objc_msgSend(v13, "mutableBytes"), &dataOutMoved))
    {
      [v13 setLength:dataOutMoved];
LABEL_7:
      v15 = [MEMORY[0x277CBEA90] dataWithData:v13];
      goto LABEL_8;
    }

    v15 = 0;
    goto LABEL_8;
  }

  v17 = [v8 algorithm];
  v18 = [v17 isEqualToString:@"2.16.840.1.101.3.4.1.45"];

  if (v18)
  {
    goto LABEL_5;
  }

  v29 = 0;
  v19 = [v8 ccAlgorithm:&v29];
  v20 = v29;
  if (v20 || (v21 = v10, v22 = [v9 bytes], v23 = objc_msgSend(v9, "length"), v24 = v22, v10 = v21, CCCryptorCreate(1u, v19, 1u, v24, v23, a5->var1, &cryptorRef)))
  {

    v15 = 0;
    v13 = 0;
  }

  else
  {
    OutputLength = CCCryptorGetOutputLength(cryptorRef, [v21 length], 1);
    v13 = [MEMORY[0x277CBEB28] dataWithLength:OutputLength];
    dataOutMoved = 0;
    if (!CCCryptorUpdate(cryptorRef, [v21 bytes], objc_msgSend(v21, "length"), objc_msgSend(v13, "mutableBytes"), OutputLength, &dataOutMoved))
    {
      v28 = 0;
      v26 = cryptorRef;
      v27 = [v13 mutableBytes];
      if (!CCCryptorFinal(v26, (v27 + dataOutMoved), OutputLength - dataOutMoved, &v28))
      {
        [v13 setLength:v28 + dataOutMoved];
        v10 = v21;
        goto LABEL_7;
      }
    }

    v15 = 0;
    v10 = v21;
  }

LABEL_8:
  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

  return v15;
}

- (void)dealloc
{
  originator = self->_originator;
  if (originator)
  {
    self->_originator = 0;
    CFRelease(originator);
  }

  originatorIdentity = self->_originatorIdentity;
  if (originatorIdentity)
  {
    self->_originatorIdentity = 0;
    CFRelease(originatorIdentity);
  }

  v5.receiver = self;
  v5.super_class = MSCMSRecipientInfo;
  [(MSCMSRecipientInfo *)&v5 dealloc];
}

- (id)encryptBulkKey:(id)a3
{
  v4 = a3;
  v48 = 0;
  v49 = 0;
  cryptorRef = 0;
  v5 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm algorithm];
  v6 = [v5 isEqualToString:@"1.2.840.113549.1.1.1"];

  if (v6)
  {
    recipientCertificates = self->_recipientCertificates;
    if (recipientCertificates)
    {
      if ([(NSArray *)recipientCertificates count])
      {
        v8 = SecCertificateCopyKey([(NSArray *)self->_recipientCertificates objectAtIndex:0]);
        if (v8)
        {
          EncryptedData = SecKeyCreateEncryptedData(v8, *MEMORY[0x277CDC368], v4, 0);
          v10 = 0;
          goto LABEL_24;
        }
      }
    }

    goto LABEL_14;
  }

  v11 = [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm algorithm];
  v12 = [v11 isEqualToString:@"1.3.133.16.840.63.0.2"];

  if (!v12 || (v13 = [MSAlgorithmIdentifier alloc], [(MSAlgorithmIdentifier *)self->_keyEncryptionAlgorithm parameters], v14 = objc_claimAutoreleasedReturnValue(), [(MSAlgorithmIdentifier *)v13 decode:v14 error:0], v15 = objc_claimAutoreleasedReturnValue(), v14, v13, !v15))
  {
LABEL_14:
    v10 = 0;
LABEL_23:
    EncryptedData = 0;
    goto LABEL_24;
  }

  v16 = [v15 parameters];

  if (v16)
  {
    v17 = [v15 parameters];
    v18 = v17;
    if (!v17 || ![v17 length] || (dataOutMoved = 0, objc_msgSend(v18, "bytes"), objc_msgSend(v18, "length"), der_get_octet_string_ber(), objc_msgSend(v18, "length")))
    {
      v10 = 0;
LABEL_40:
      v19 = 0;
LABEL_41:
      EncryptedData = 0;
      goto LABEL_38;
    }

    v10 = 0;
    v19 = 0;
    if (v48 != [OUTLINED_FUNCTION_3() blockSize:?])
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0;
  }

  v10 = [(MSCMSRecipientInfo *)self keyEncryptionKey:v15 forEncryption:1 secCMSCompatibility:0];
  if (!v10)
  {
    goto LABEL_40;
  }

  v20 = [v15 algorithm];
  if ([v20 isEqualToString:@"2.16.840.1.101.3.4.1.5"])
  {
LABEL_20:

    goto LABEL_21;
  }

  v21 = [v15 algorithm];
  if ([v21 isEqualToString:@"2.16.840.1.101.3.4.1.25"])
  {

    goto LABEL_20;
  }

  v34 = [v15 algorithm];
  v35 = [v34 isEqualToString:@"2.16.840.1.101.3.4.1.45"];

  if (v35)
  {
LABEL_21:
    v22 = [OUTLINED_FUNCTION_3() ccAlgorithm:?];
    v19 = [MEMORY[0x277CBEB28] dataWithLength:{CCSymmetricWrappedSize(v22, -[__CFData length](v4, "length"))}];
    dataOutMoved = [v19 length];
    algorithm = [OUTLINED_FUNCTION_3() ccAlgorithm:?];
    iv = *MEMORY[0x277D85C18];
    v23 = *MEMORY[0x277D85C20];
    v24 = v15;
    BytePtr = CFDataGetBytePtr(v10);
    v26 = v18;
    Length = CFDataGetLength(v10);
    v28 = [(__CFData *)v4 bytes];
    v29 = [(__CFData *)v4 length];
    v30 = [v19 mutableBytes];
    v31 = BytePtr;
    v15 = v24;
    v32 = Length;
    v18 = v26;
    LODWORD(v29) = CCSymmetricKeyWrap(algorithm, iv, v23, v31, v32, v28, v29, v30, &dataOutMoved);
    [v19 setLength:dataOutMoved];
    if (v29)
    {
LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_37;
  }

  v36 = [OUTLINED_FUNCTION_3() ccAlgorithm:?];
  v37 = CFDataGetBytePtr(v10);
  v38 = CFDataGetLength(v10);
  if (CCCryptorCreate(0, v36, 1u, v37, v38, v49, &cryptorRef))
  {
    goto LABEL_40;
  }

  v39 = v4;
  OutputLength = CCCryptorGetOutputLength(cryptorRef, [(__CFData *)v39 length], 1);
  v19 = [MEMORY[0x277CBEB28] dataWithLength:OutputLength];
  if (!v19 || (dataOutMoved = 0, CCCryptorUpdate(cryptorRef, -[__CFData bytes](v39, "bytes"), -[__CFData length](v39, "length"), [v19 mutableBytes], OutputLength, &dataOutMoved)) || (v45 = 0, v41 = cryptorRef, v42 = objc_msgSend(v19, "mutableBytes"), CCCryptorFinal(v41, (v42 + dataOutMoved), OutputLength - dataOutMoved, &v45)))
  {

    goto LABEL_41;
  }

  [v19 setLength:v45 + dataOutMoved];

LABEL_37:
  v19 = v19;
  EncryptedData = v19;
LABEL_38:

LABEL_24:
  der_free_octet_string();
  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return EncryptedData;
}

- (__CFData)createSecCMSSharedInfo:(id)a3
{
  uint32ToNetworkByteOrder(8 * [a3 keySize:0], v11, 4);
  v12[1] = 4;
  v12[2] = v11;
  v10[0] = [(NSData *)self->_userKeyingMaterial length];
  v10[1] = [(NSData *)self->_userKeyingMaterial bytes];
  v12[0] = v10;
  v4 = length_SecCMS_ECC_CMS_SharedInfo(v12);
  v5 = [MEMORY[0x277CBEB28] dataWithLength:v4];
  v6 = v5;
  if (!v5 || (v9 = 0, encode_SecCMS_ECC_CMS_SharedInfo([v5 bytes] + v4 - 1, v4, v12, &v9)))
  {
    v7 = 0;
  }

  else
  {
    v7 = CFDataCreate(0, [v6 bytes], objc_msgSend(v6, "length"));
  }

  return v7;
}

- (__CFData)createSharedInfo:(id)a3
{
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v4 = a3;
  v5 = [v4 asn1AlgId];
  v6 = *(v5 + 16);
  v17 = *v5;
  v18 = v6;
  v7 = [v4 keySize:0];

  uint32ToNetworkByteOrder((8 * v7), v14, 4);
  v20 = 4;
  v21 = v14;
  if ([(NSData *)self->_userKeyingMaterial length])
  {
    v15 = [(NSData *)self->_userKeyingMaterial length];
    v16 = [(NSData *)self->_userKeyingMaterial bytes];
    v19 = &v15;
  }

  v8 = length_ECC_CMS_SharedInfo(&v17);
  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8];
  v10 = v9;
  if (!v9 || (v13 = 0, encode_ECC_CMS_SharedInfo([v9 bytes] + v8 - 1, v8, &v17, &v13)))
  {
    v11 = 0;
  }

  else
  {
    v11 = CFDataCreate(0, [v10 bytes], objc_msgSend(v10, "length"));
  }

  return v11;
}

- (__CFData)keyEncryptionKey:(id)a3 forEncryption:(BOOL)a4 secCMSCompatibility:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  keys[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  privateKeyRef = 0;
  if (!v6)
  {
    recipientCertificates = self->_recipientCertificates;
    if (recipientCertificates && [(NSArray *)recipientCertificates count])
    {
      IdentityByCertificate = findIdentityByCertificate([(NSArray *)self->_recipientCertificates objectAtIndex:0], 0, 0);
      originatorPubKey = self->_originatorPubKey;
      if (originatorPubKey)
      {
        v13 = [(NSData *)originatorPubKey length];
        v14 = v13;
        valuePtr = 8 * v13;
        if ((v13 - 223) <= 0x21 && ((1 << (v13 + 33)) & 0x300000003) != 0 || (v13 - 191) < 2 || (v13 - 520) < 2 || (v13 - 383) <= 1)
        {
          valuePtr = v13;
          v14 = (v13 + 7) >> 3;
        }

        v15 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
        v16 = v15;
        if (v15)
        {
          v17 = *MEMORY[0x277CDBFE0];
          keys[0] = *MEMORY[0x277CDC028];
          keys[1] = v17;
          keys[2] = *MEMORY[0x277CDC018];
          v18 = *MEMORY[0x277CDC000];
          values[0] = *MEMORY[0x277CDC040];
          values[1] = v18;
          values[2] = v15;
          v19 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v19)
          {
            v20 = v19;
            v21 = CFDataCreate(0, [(NSData *)self->_originatorPubKey bytes], v14);
            v22 = SecKeyCreateWithData(v21, v20, 0);
            goto LABEL_23;
          }
        }

LABEL_55:
        v24 = 0;
        v22 = 0;
        v20 = 0;
        v21 = 0;
        v26 = 0;
        v28 = 0;
        v30 = 0;
        if (!IdentityByCertificate)
        {
          goto LABEL_39;
        }

        goto LABEL_35;
      }

LABEL_54:
      v16 = 0;
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  originator = self->_originator;
  IdentityByCertificate = self->_originatorIdentity;
  if (!originator)
  {
    if (IdentityByCertificate)
    {
      goto LABEL_19;
    }

LABEL_57:
    v24 = 0;
    goto LABEL_51;
  }

  if (IdentityByCertificate)
  {
LABEL_19:
    CFRetain(self->_originatorIdentity);
    goto LABEL_20;
  }

  IdentityByCertificate = findIdentityByCertificate(originator, 0, 0);
LABEL_20:
  v23 = self->_recipientCertificates;
  if (!v23 || ![(NSArray *)v23 count])
  {
    goto LABEL_54;
  }

  v22 = SecCertificateCopyKey([(NSArray *)self->_recipientCertificates objectAtIndex:0]);
  v21 = 0;
  v20 = 0;
  v16 = 0;
LABEL_23:
  if (!IdentityByCertificate)
  {
    v30 = 0;
    v28 = 0;
    v26 = 0;
    v24 = 0;
    if (!v22)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v24 = 0;
  if (SecIdentityCopyPrivateKey(IdentityByCertificate, &privateKeyRef) || !privateKeyRef || !v22)
  {
    v26 = 0;
    v28 = 0;
    v30 = 0;
    goto LABEL_35;
  }

  if (v5)
  {
    v25 = [(MSCMSRecipientInfo *)self createSecCMSSharedInfo:v8];
  }

  else
  {
    v25 = [(MSCMSRecipientInfo *)self createSharedInfo:v8];
  }

  v26 = v25;
  if (!v25 || (v34 = [v8 keySize:0], (v34 - 0x7FFFFFFF) < 0xFFFFFFFF80000002))
  {
    v24 = 0;
    v28 = 0;
LABEL_61:
    v30 = 0;
    goto LABEL_35;
  }

  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v34);
  v28 = v27;
  if (!v27)
  {
    v24 = 0;
    goto LABEL_61;
  }

  v29 = *MEMORY[0x277CDC400];
  v38[0] = *MEMORY[0x277CDC3F8];
  v38[1] = v29;
  v37[0] = v27;
  v37[1] = v26;
  v30 = CFDictionaryCreate(0, v38, v37, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v30)
  {
    v24 = SecKeyCopyKeyExchangeResult(privateKeyRef, *MEMORY[0x277CDC290], v22, v30, 0);
  }

  else
  {
    v24 = 0;
  }

LABEL_35:
  CFRelease(IdentityByCertificate);
  v31 = privateKeyRef;
  if (privateKeyRef)
  {
    privateKeyRef = 0;
    CFRelease(v31);
  }

  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_38:
  CFRelease(v22);
LABEL_39:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

LABEL_51:

  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)encodeKeyTransRecipientInfo:recipientInfo:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorAllocationDomain[0] underlyingError:-50 description:?];
}

+ (void)decodeKeyTransRecipientInfo:certificates:LAContext:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

+ (void)decodeKeyTransRecipientInfo:certificates:LAContext:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

+ (void)decodeKeyAgreeRecipientInfo:certificates:LAContext:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-26275 description:?];
}

+ (void)decodeKeyAgreeRecipientInfo:certificates:LAContext:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

+ (void)decodeKeyAgreeRecipientInfo:certificates:LAContext:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

+ (void)decodeKeyAgreeRecipientInfo:certificates:LAContext:error:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  *v0 = [v2 MSErrorWithDomain:? code:? underlyingError:? description:?];
}

@end