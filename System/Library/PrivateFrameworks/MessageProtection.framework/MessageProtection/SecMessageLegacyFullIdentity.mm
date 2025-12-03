@interface SecMessageLegacyFullIdentity
+ (id)identity;
+ (id)identityFromV2Bytes:(const char *)bytes size:(unint64_t *)size error:(id *)error;
+ (id)identityWithDataRepresentation:(id)representation error:(id *)error;
+ (id)populateIdentity:(id)identity withEncryptionKeyFromPersistentRef:(const char *)ref size:(unint64_t *)size;
+ (id)populateIdentity:(id)identity withSigningKeyFromPersistentRef:(const char *)ref size:(unint64_t *)size;
- (SecMessageLegacyFullIdentity)initWithEncryptionKey:(id)key signingKey:(id)signingKey;
- (SecMessageLegacyFullIdentity)initWithEncryptionKeyData:(id)data signingKeyData:(id)keyData;
- (SecMessageLegacyFullIdentity)initWithEncryptionSecKey:(__SecKey *)key signingSecKey:(__SecKey *)secKey;
- (SecMessageLegacyFullIdentity)initWithProtobufData:(id)data;
- (_SecMPFullIdentity)asRef;
- (__SecKey)privateSigningKeyForTerminusMigration;
- (id)dataRepresentationWithError:(id *)error;
- (id)decryptMessage:(id)message error:(id *)error;
- (id)publicIdentity;
- (id)signData:(id)data error:(id *)error;
- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error;
- (unint64_t)encryptionSize;
- (void)deleteItemWithPersistentRef:(id)ref;
- (void)deleteMigratedKeys;
@end

@implementation SecMessageLegacyFullIdentity

- (id)publicIdentity
{
  v3 = [SecMessageLegacyPublicIdentity alloc];
  encryptionKey = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  publicKey = [encryptionKey publicKey];
  signingKey = [(SecMessageLegacyFullIdentity *)self signingKey];
  publicKey2 = [signingKey publicKey];
  v8 = [(SecMessageLegacyPublicIdentity *)v3 initWithEncryptionKey:publicKey signingKey:publicKey2];

  return v8;
}

+ (id)populateIdentity:(id)identity withSigningKeyFromPersistentRef:(const char *)ref size:(unint64_t *)size
{
  v23 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (!identityCopy)
  {
    v8 = 0;
    goto LABEL_3;
  }

  error = 0;
  key = 0;
  v18 = 0;
  v11 = SecMPFICreatePrivateAndPublicKeyReadPersistentRef(&v18, ref, size, &key, &error);
  v12 = v18;
  if (v11)
  {
    v13 = MessageProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v22 = v11;
      _os_log_impl(&dword_22B404000, v13, OS_LOG_TYPE_INFO, "Failed to lookup legacy persistent reference for signing key: %i", buf, 8u);
    }
  }

  else
  {
    [identityCopy setSigningKeyPersistentRef:v12];
    v13 = SecKeyCopyExternalRepresentation(key, &error);
    if (v13)
    {
      v17 = 0;
      v14 = [[LegacySigningKeyPrivate alloc] initWithData:v13 error:&v17];
      [identityCopy setSigningKey:v14];

      memset_s([v13 mutableBytes], [v13 length], 0, [v13 length]);
      signingKey = [identityCopy signingKey];
      if (signingKey)
      {
        v16 = identityCopy;
      }

      else
      {
        v16 = 0;
      }

      v8 = v16;

      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_15:

LABEL_3:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)populateIdentity:(id)identity withEncryptionKeyFromPersistentRef:(const char *)ref size:(unint64_t *)size
{
  v23 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (!identityCopy)
  {
    v8 = 0;
    goto LABEL_3;
  }

  error = 0;
  key = 0;
  v18 = 0;
  v11 = SecMPFICreatePrivateAndPublicKeyReadPersistentRef(&v18, ref, size, &key, &error);
  v12 = v18;
  if (v11)
  {
    v13 = MessageProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v22 = v11;
      _os_log_impl(&dword_22B404000, v13, OS_LOG_TYPE_INFO, "Failed to lookup legacy persistent reference for encryption key: %i", buf, 8u);
    }
  }

  else
  {
    [identityCopy setEncryptionKeyPersistentRef:v12];
    v13 = SecKeyCopyExternalRepresentation(key, &error);
    if (v13)
    {
      v17 = 0;
      v14 = [[SecKeyRSAPrivate alloc] initWithData:v13 error:&v17];
      [identityCopy setEncryptionKey:v14];

      memset_s([v13 mutableBytes], [v13 length], 0, [v13 length]);
      encryptionKey = [identityCopy encryptionKey];
      if (encryptionKey)
      {
        v16 = identityCopy;
      }

      else
      {
        v16 = 0;
      }

      v8 = v16;

      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_15:

LABEL_3:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)identityFromV2Bytes:(const char *)bytes size:(unint64_t *)size error:(id *)error
{
  v9 = [[SecMessageLegacyFullIdentity alloc] initWithEncryptionKey:0 signingKey:0];
  [(SecMessageLegacyFullIdentity *)v9 setIsMigratedV2Key:1];
  v10 = [self populateIdentity:v9 withSigningKeyFromPersistentRef:bytes size:size];

  v11 = [self populateIdentity:v10 withEncryptionKeyFromPersistentRef:bytes size:size];

  if (!v11)
  {
    MPLogAndAssignError(-101, error, @"Looking up the persistent reference failed.");
  }

  return v11;
}

- (void)deleteItemWithPersistentRef:(id)ref
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC5F0];
  v11[0] = *MEMORY[0x277CDC228];
  v11[1] = v3;
  v12[0] = *MEMORY[0x277CDC250];
  v12[1] = ref;
  v4 = MEMORY[0x277CBEAC0];
  refCopy = ref;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:v11 count:2];

  v7 = SecItemDelete(v6);
  if (v7)
  {
    v8 = v7;
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SecMessageLegacyFullIdentity(Migration) *)v8 deleteItemWithPersistentRef:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deleteMigratedKeys
{
  encryptionKeyPersistentRef = [(SecMessageLegacyFullIdentity *)self encryptionKeyPersistentRef];
  [(SecMessageLegacyFullIdentity *)self deleteItemWithPersistentRef:encryptionKeyPersistentRef];

  signingKeyPersistentRef = [(SecMessageLegacyFullIdentity *)self signingKeyPersistentRef];
  [(SecMessageLegacyFullIdentity *)self deleteItemWithPersistentRef:signingKeyPersistentRef];

  [(SecMessageLegacyFullIdentity *)self setEncryptionKeyPersistentRef:0];
  [(SecMessageLegacyFullIdentity *)self setSigningKeyPersistentRef:0];
  [(SecMessageLegacyFullIdentity *)self setIsMigratedV2Key:0];
  v5 = MessageProtectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B404000, v5, OS_LOG_TYPE_INFO, "Migration of a legacy key has completed and previous keys have been deleted.", v6, 2u);
  }
}

- (SecMessageLegacyFullIdentity)initWithEncryptionSecKey:(__SecKey *)key signingSecKey:(__SecKey *)secKey
{
  v6 = SecKeyCopyExternalRepresentation(key, 0);
  v7 = [[SecKeyRSAPrivate alloc] initWithData:v6 error:0];
  v8 = SecKeyCopyExternalRepresentation(secKey, 0);
  v9 = [[LegacySigningKeyPrivate alloc] initWithData:v8 error:0];
  v10 = [(SecMessageLegacyFullIdentity *)self initWithEncryptionKey:v7 signingKey:v9];

  return v10;
}

- (SecMessageLegacyFullIdentity)initWithProtobufData:(id)data
{
  dataCopy = data;
  v5 = [[NGMPBLegacyKey alloc] initWithData:dataCopy];

  if (v5)
  {
    encryptionKey = [(NGMPBLegacyKey *)v5 encryptionKey];
    signingKey = [(NGMPBLegacyKey *)v5 signingKey];
    self = [(SecMessageLegacyFullIdentity *)self initWithEncryptionKeyData:encryptionKey signingKeyData:signingKey];

    selfCopy = self;
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SecMessageLegacyFullIdentity *)v9 initWithProtobufData:v10, v11, v12, v13, v14, v15, v16];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SecMessageLegacyFullIdentity)initWithEncryptionKey:(id)key signingKey:(id)signingKey
{
  keyCopy = key;
  signingKeyCopy = signingKey;
  v12.receiver = self;
  v12.super_class = SecMessageLegacyFullIdentity;
  v9 = [(SecMessageLegacyFullIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptionKey, key);
    objc_storeStrong(&v10->_signingKey, signingKey);
    v10->_isMigratedV2Key = 0;
  }

  return v10;
}

- (SecMessageLegacyFullIdentity)initWithEncryptionKeyData:(id)data signingKeyData:(id)keyData
{
  dataCopy = data;
  keyDataCopy = keyData;
  v8 = [[LegacySigningKeyPrivate alloc] initWithData:keyDataCopy error:0];

  if (v8)
  {
    v14 = 0;
    v9 = [[SecKeyRSAPrivate alloc] initWithData:dataCopy error:&v14];
    v10 = v14;
    if (v9)
    {
      self = [(SecMessageLegacyFullIdentity *)self initWithEncryptionKey:v9 signingKey:v8];
      selfCopy = self;
    }

    else
    {
      v12 = MessageProtectionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SecMessageLegacyFullIdentity initWithEncryptionKeyData:v10 signingKeyData:?];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = MessageProtectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SecMessageLegacyFullIdentity initWithEncryptionKeyData:signingKeyData:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)identity
{
  v2 = objc_alloc_init(SecMessageLegacyFullIdentity);
  v3 = objc_alloc_init(LegacySigningKeyPrivate);
  [(SecMessageLegacyFullIdentity *)v2 setSigningKey:v3];

  signingKey = [(SecMessageLegacyFullIdentity *)v2 signingKey];

  if (signingKey)
  {
    v5 = objc_alloc_init(SecKeyRSAPrivate);
    [(SecMessageLegacyFullIdentity *)v2 setEncryptionKey:v5];

    encryptionKey = [(SecMessageLegacyFullIdentity *)v2 encryptionKey];

    if (encryptionKey)
    {
      v7 = v2;
      goto LABEL_9;
    }

    v8 = MessageProtectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SecMessageLegacyFullIdentity *)v8 identity:v16];
    }
  }

  else
  {
    v8 = MessageProtectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SecMessageLegacyFullIdentity *)v8 identity:v9];
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

+ (id)identityWithDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  if (![representationCopy length])
  {
    MPLogAndAssignError(-100, error, @"The passed legacy key representation is of incorrect size.");
    v11 = 0;
    goto LABEL_14;
  }

  bytes = [representationCopy bytes];
  v7 = [representationCopy subdataWithRange:{1, objc_msgSend(representationCopy, "length") - 1}];
  v16 = [v7 length];
  bytes2 = [v7 bytes];
  v8 = *bytes;
  if (v8 == 2)
  {
    v12 = MessageProtectionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22B404000, v12, OS_LOG_TYPE_INFO, "Parsing a legacy key of version 2.", v14, 2u);
    }

    v10 = [SecMessageLegacyFullIdentity identityFromV2Bytes:&bytes2 size:&v16 error:error];
  }

  else
  {
    if (v8 != 3)
    {
      MPLogAndAssignError(-100, error, @"Failed to parse legacy key format.");
      v11 = 0;
      goto LABEL_13;
    }

    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22B404000, v9, OS_LOG_TYPE_INFO, "Parsing a legacy key of version 3.", v14, 2u);
    }

    v10 = [[SecMessageLegacyFullIdentity alloc] initWithProtobufData:v7];
  }

  v11 = v10;
LABEL_13:

LABEL_14:

  return v11;
}

- (id)signData:(id)data error:(id *)error
{
  dataCopy = data;
  signingKey = [(SecMessageLegacyFullIdentity *)self signingKey];
  v8 = [signingKey signData:dataCopy error:error];

  return v8;
}

- (id)decryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  encryptionKey = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  v8 = [encryptionKey decryptData:messageCopy error:error];

  return v8;
}

- (id)dataRepresentationWithError:(id *)error
{
  v4 = objc_alloc_init(NGMPBLegacyKey);
  encryptionKey = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  dataRepresentation = [encryptionKey dataRepresentation];
  [(NGMPBLegacyKey *)v4 setEncryptionKey:dataRepresentation];

  signingKey = [(SecMessageLegacyFullIdentity *)self signingKey];
  dataRepresentation2 = [signingKey dataRepresentation];
  [(NGMPBLegacyKey *)v4 setSigningKey:dataRepresentation2];

  v12 = 3;
  v9 = [MEMORY[0x277CBEB28] dataWithBytes:&v12 length:1];
  data = [(NGMPBLegacyKey *)v4 data];
  [v9 appendData:data];

  if ([(SecMessageLegacyFullIdentity *)self isMigratedV2Key])
  {
    [(SecMessageLegacyFullIdentity *)self deleteMigratedKeys];
  }

  return v9;
}

- (unint64_t)encryptionSize
{
  publicIdentity = [(SecMessageLegacyFullIdentity *)self publicIdentity];
  encryptionSize = [publicIdentity encryptionSize];

  return encryptionSize;
}

- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error
{
  v17 = 0;
  v8 = MEMORY[0x277CBEB28];
  identityCopy = identity;
  messageCopy = message;
  data = [v8 data];
  asRef = [identityCopy asRef];

  asRef2 = [(SecMessageLegacyFullIdentity *)self asRef];
  v14 = SecMPVerifyAndExposeMessage(messageCopy, asRef, asRef2, data, &v17);

  if (asRef)
  {
    CFRelease(asRef);
  }

  if (asRef2)
  {
    CFRelease(asRef2);
  }

  if (v14)
  {
    v15 = data;
  }

  else
  {
    v15 = 0;
    if (error)
    {
      *error = v17;
    }
  }

  return v15;
}

- (__SecKey)privateSigningKeyForTerminusMigration
{
  signingKey = [(SecMessageLegacyFullIdentity *)self signingKey];
  secKeyRef = [signingKey secKeyRef];

  return secKeyRef;
}

- (_SecMPFullIdentity)asRef
{
  v3 = *MEMORY[0x277CBECE8];
  SecMPFullIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance->var5 = CFRetain(self);
  signingKey = [(SecMessageLegacyFullIdentity *)self signingKey];
  secKeyRef = [signingKey secKeyRef];
  Instance->var2 = secKeyRef;

  encryptionKey = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  secKeyRef2 = [encryptionKey secKeyRef];
  Instance->var4 = secKeyRef2;

  Instance->var1 = 0;
  Instance->var3 = 0;
  return Instance;
}

- (void)initWithEncryptionKeyData:(void *)a1 signingKeyData:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to initialize encryption key: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithEncryptionKeyData:signingKeyData:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [0 description];
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v1, v2, "Failed to initialize signing key: %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end