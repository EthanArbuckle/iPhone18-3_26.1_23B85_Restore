@interface SecMessageLegacyPublicIdentity
+ (id)identityWithIdentityData:(id)data error:(id *)error;
- (BOOL)verifySignature:(id)signature ofData:(id)data;
- (SecMessageLegacyPublicIdentity)initWithEncryptionKey:(id)key signingKey:(id)signingKey;
- (_SecMPPublicIdentity)asRef;
- (__SecKey)publicSigningKeyForTerminusMigration;
- (id)encryptData:(id)data;
- (id)identityData;
- (id)publicIDCanonicalHash;
- (id)publicIDHash;
- (id)sealMessage:(id)message signedByFullIdentity:(id)identity error:(id *)error;
- (unint64_t)encryptionSize;
@end

@implementation SecMessageLegacyPublicIdentity

- (_SecMPPublicIdentity)asRef
{
  v3 = *MEMORY[0x277CBECE8];
  SecMPPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance->var3 = CFRetain(self);
  encryptionKey = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  secKeyRef = [encryptionKey secKeyRef];
  Instance->var2 = secKeyRef;

  signingKey = [(SecMessageLegacyPublicIdentity *)self signingKey];
  secKeyRef2 = [signingKey secKeyRef];
  Instance->var1 = secKeyRef2;

  return Instance;
}

- (id)identityData
{
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  signingKey = [(SecMessageLegacyPublicIdentity *)self signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  [data appendDataAndSize:dataRepresentation];

  encryptionKey = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  dataRepresentation2 = [encryptionKey dataRepresentation];
  [data2 appendDataAndSize:dataRepresentation2];

  [data length];
  ccder_sizeof();
  [data2 length];
  ccder_sizeof();
  v9 = [MEMORY[0x277CBEB28] dataWithLength:ccder_sizeof()];
  mutableBytes = [v9 mutableBytes];
  [data length];
  [data bytes];
  [data2 length];
  [data2 bytes];
  ccder_encode_implicit_raw_octet_string();
  ccder_encode_implicit_raw_octet_string();
  if (ccder_encode_constructed_tl() == mutableBytes)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SecMessageLegacyPublicIdentity)initWithEncryptionKey:(id)key signingKey:(id)signingKey
{
  keyCopy = key;
  signingKeyCopy = signingKey;
  v12.receiver = self;
  v12.super_class = SecMessageLegacyPublicIdentity;
  v9 = [(SecMessageLegacyPublicIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingKey, signingKey);
    objc_storeStrong(&v10->_encryptionKey, key);
  }

  return v10;
}

+ (id)identityWithIdentityData:(id)data error:(id *)error
{
  dataCopy = data;
  [dataCopy length];
  [dataCopy bytes];

  if (ccder_decode_sequence_tl() && (v6 = ccder_decode_tl()) != 0)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:0];
    lengthValidatedBuffer = [v7 lengthValidatedBuffer];

    v9 = [[LegacySigningKeyPublic alloc] initWithData:lengthValidatedBuffer error:error];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:ccder_decode_tl() length:0];
      v11 = [SecKeyRSAPublic alloc];
      lengthValidatedBuffer2 = [v10 lengthValidatedBuffer];
      v13 = [(SecKeyRSAPublic *)v11 initWithData:lengthValidatedBuffer2 error:error];

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

- (id)encryptData:(id)data
{
  dataCopy = data;
  encryptionKey = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  v6 = [encryptionKey encryptData:dataCopy error:0];

  return v6;
}

- (id)sealMessage:(id)message signedByFullIdentity:(id)identity error:(id *)error
{
  v16 = 0;
  v8 = MEMORY[0x277CBEB28];
  identityCopy = identity;
  messageCopy = message;
  data = [v8 data];
  asRef = [(SecMessageLegacyPublicIdentity *)self asRef];
  asRef2 = [identityCopy asRef];

  LODWORD(identityCopy) = SecMPSignAndProtectMessage(messageCopy, asRef2, asRef, data, &v16);
  CFRelease(asRef);
  CFRelease(asRef2);
  if (identityCopy)
  {
    v14 = data;
  }

  else
  {
    v14 = 0;
    if (error)
    {
      *error = v16;
    }
  }

  return v14;
}

- (id)publicIDHash
{
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:20];
  identityData = [(SecMessageLegacyPublicIdentity *)self identityData];
  CC_SHA1([identityData bytes], objc_msgSend(identityData, "length"), objc_msgSend(v3, "mutableBytes"));

  return v3;
}

- (id)publicIDCanonicalHash
{
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  data = [MEMORY[0x277CBEB28] data];
  signingKey = [(SecMessageLegacyPublicIdentity *)self signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  [data appendDataAndSize:dataRepresentation];

  encryptionKey = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  dataRepresentation2 = [encryptionKey dataRepresentation];
  [data appendDataAndSize:dataRepresentation2];

  CC_SHA256([data bytes], objc_msgSend(data, "length"), objc_msgSend(v3, "mutableBytes"));

  return v3;
}

- (unint64_t)encryptionSize
{
  encryptionKey = [(SecMessageLegacyPublicIdentity *)self encryptionKey];
  secKeyRef = [encryptionKey secKeyRef];
  Size = SecKeyGetSize();

  return Size;
}

- (BOOL)verifySignature:(id)signature ofData:(id)data
{
  dataCopy = data;
  signatureCopy = signature;
  signingKey = [(SecMessageLegacyPublicIdentity *)self signingKey];
  v9 = [signingKey verifySignature:signatureCopy ofData:dataCopy];

  return v9;
}

- (__SecKey)publicSigningKeyForTerminusMigration
{
  signingKey = [(SecMessageLegacyPublicIdentity *)self signingKey];
  secKeyRef = [signingKey secKeyRef];

  return secKeyRef;
}

@end