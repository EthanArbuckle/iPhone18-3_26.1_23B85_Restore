@interface SecMessageLegacyPublicIdentity
+ (id)identityWithIdentityData:(id)a3 error:(id *)a4;
- (BOOL)verifySignature:(id)a3 ofData:(id)a4;
- (SecMessageLegacyPublicIdentity)initWithEncryptionKey:(id)a3 signingKey:(id)a4;
- (_SecMPPublicIdentity)asRef;
- (__SecKey)publicSigningKeyForTerminusMigration;
- (id)encryptData:(id)a3;
- (id)identityData;
- (id)publicIDCanonicalHash;
- (id)publicIDHash;
- (id)sealMessage:(id)a3 signedByFullIdentity:(id)a4 error:(id *)a5;
- (unint64_t)encryptionSize;
@end

@implementation SecMessageLegacyPublicIdentity

- (_SecMPPublicIdentity)asRef
{
  v3 = *MEMORY[0x277CBECE8];
  SecMPPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance->var3 = CFRetain(self);
  v5 = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  v6 = [v5 secKeyRef];
  Instance->var2 = v6;

  v7 = [(SecMessageLegacyPublicIdentity *)self signingKey];
  v8 = [v7 secKeyRef];
  Instance->var1 = v8;

  return Instance;
}

- (id)identityData
{
  v3 = [MEMORY[0x277CBEB28] data];
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = [(SecMessageLegacyPublicIdentity *)self signingKey];
  v6 = [v5 dataRepresentation];
  [v3 appendDataAndSize:v6];

  v7 = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  v8 = [v7 dataRepresentation];
  [v4 appendDataAndSize:v8];

  [v3 length];
  ccder_sizeof();
  [v4 length];
  ccder_sizeof();
  v9 = [MEMORY[0x277CBEB28] dataWithLength:ccder_sizeof()];
  v10 = [v9 mutableBytes];
  [v3 length];
  [v3 bytes];
  [v4 length];
  [v4 bytes];
  ccder_encode_implicit_raw_octet_string();
  ccder_encode_implicit_raw_octet_string();
  if (ccder_encode_constructed_tl() == v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SecMessageLegacyPublicIdentity)initWithEncryptionKey:(id)a3 signingKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SecMessageLegacyPublicIdentity;
  v9 = [(SecMessageLegacyPublicIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingKey, a4);
    objc_storeStrong(&v10->_encryptionKey, a3);
  }

  return v10;
}

+ (id)identityWithIdentityData:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 length];
  [v5 bytes];

  if (ccder_decode_sequence_tl() && (v6 = ccder_decode_tl()) != 0)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:0];
    v8 = [v7 lengthValidatedBuffer];

    v9 = [[LegacySigningKeyPublic alloc] initWithData:v8 error:a4];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:ccder_decode_tl() length:0];
      v11 = [SecKeyRSAPublic alloc];
      v12 = [v10 lengthValidatedBuffer];
      v13 = [(SecKeyRSAPublic *)v11 initWithData:v12 error:a4];

      if (v13)
      {
        v14 = [[SecMessageLegacyPublicIdentity alloc] initWithEncryptionKey:v13 signingKey:v9];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)encryptData:(id)a3
{
  v4 = a3;
  v5 = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  v6 = [v5 encryptData:v4 error:0];

  return v6;
}

- (id)sealMessage:(id)a3 signedByFullIdentity:(id)a4 error:(id *)a5
{
  v16 = 0;
  v8 = MEMORY[0x277CBEB28];
  v9 = a4;
  v10 = a3;
  v11 = [v8 data];
  v12 = [(SecMessageLegacyPublicIdentity *)self asRef];
  v13 = [v9 asRef];

  LODWORD(v9) = SecMPSignAndProtectMessage(v10, v13, v12, v11, &v16);
  CFRelease(v12);
  CFRelease(v13);
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
    if (a5)
    {
      *a5 = v16;
    }
  }

  return v14;
}

- (id)publicIDHash
{
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:20];
  v4 = [(SecMessageLegacyPublicIdentity *)self identityData];
  CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(v3, "mutableBytes"));

  return v3;
}

- (id)publicIDCanonicalHash
{
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = [(SecMessageLegacyPublicIdentity *)self signingKey];
  v6 = [v5 dataRepresentation];
  [v4 appendDataAndSize:v6];

  v7 = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  v8 = [v7 dataRepresentation];
  [v4 appendDataAndSize:v8];

  CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(v3, "mutableBytes"));

  return v3;
}

- (unint64_t)encryptionSize
{
  v2 = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  v3 = [v2 secKeyRef];
  Size = SecKeyGetSize();

  return Size;
}

- (BOOL)verifySignature:(id)a3 ofData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SecMessageLegacyPublicIdentity *)self signingKey];
  v9 = [v8 verifySignature:v7 ofData:v6];

  return v9;
}

- (__SecKey)publicSigningKeyForTerminusMigration
{
  v2 = [(SecMessageLegacyPublicIdentity *)self signingKey];
  v3 = [v2 secKeyRef];

  return v3;
}

@end