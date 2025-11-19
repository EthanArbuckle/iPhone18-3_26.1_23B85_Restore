@interface SecMessageLegacyFullIdentity
+ (id)identity;
+ (id)identityFromV2Bytes:(const char *)a3 size:(unint64_t *)a4 error:(id *)a5;
+ (id)identityWithDataRepresentation:(id)a3 error:(id *)a4;
+ (id)populateIdentity:(id)a3 withEncryptionKeyFromPersistentRef:(const char *)a4 size:(unint64_t *)a5;
+ (id)populateIdentity:(id)a3 withSigningKeyFromPersistentRef:(const char *)a4 size:(unint64_t *)a5;
- (SecMessageLegacyFullIdentity)initWithEncryptionKey:(id)a3 signingKey:(id)a4;
- (SecMessageLegacyFullIdentity)initWithEncryptionKeyData:(id)a3 signingKeyData:(id)a4;
- (SecMessageLegacyFullIdentity)initWithEncryptionSecKey:(__SecKey *)a3 signingSecKey:(__SecKey *)a4;
- (SecMessageLegacyFullIdentity)initWithProtobufData:(id)a3;
- (_SecMPFullIdentity)asRef;
- (__SecKey)privateSigningKeyForTerminusMigration;
- (id)dataRepresentationWithError:(id *)a3;
- (id)decryptMessage:(id)a3 error:(id *)a4;
- (id)publicIdentity;
- (id)signData:(id)a3 error:(id *)a4;
- (id)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5;
- (unint64_t)encryptionSize;
- (void)deleteItemWithPersistentRef:(id)a3;
- (void)deleteMigratedKeys;
@end

@implementation SecMessageLegacyFullIdentity

- (id)publicIdentity
{
  v3 = [SecMessageLegacyPublicIdentity alloc];
  v4 = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  v5 = [v4 publicKey];
  v6 = [(SecMessageLegacyFullIdentity *)self signingKey];
  v7 = [v6 publicKey];
  v8 = [(SecMessageLegacyPublicIdentity *)v3 initWithEncryptionKey:v5 signingKey:v7];

  return v8;
}

+ (id)populateIdentity:(id)a3 withSigningKeyFromPersistentRef:(const char *)a4 size:(unint64_t *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_3;
  }

  error = 0;
  key = 0;
  v18 = 0;
  v11 = SecMPFICreatePrivateAndPublicKeyReadPersistentRef(&v18, a4, a5, &key, &error);
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
    [v7 setSigningKeyPersistentRef:v12];
    v13 = SecKeyCopyExternalRepresentation(key, &error);
    if (v13)
    {
      v17 = 0;
      v14 = [[LegacySigningKeyPrivate alloc] initWithData:v13 error:&v17];
      [v7 setSigningKey:v14];

      memset_s([v13 mutableBytes], [v13 length], 0, [v13 length]);
      v15 = [v7 signingKey];
      if (v15)
      {
        v16 = v7;
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

+ (id)populateIdentity:(id)a3 withEncryptionKeyFromPersistentRef:(const char *)a4 size:(unint64_t *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_3;
  }

  error = 0;
  key = 0;
  v18 = 0;
  v11 = SecMPFICreatePrivateAndPublicKeyReadPersistentRef(&v18, a4, a5, &key, &error);
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
    [v7 setEncryptionKeyPersistentRef:v12];
    v13 = SecKeyCopyExternalRepresentation(key, &error);
    if (v13)
    {
      v17 = 0;
      v14 = [[SecKeyRSAPrivate alloc] initWithData:v13 error:&v17];
      [v7 setEncryptionKey:v14];

      memset_s([v13 mutableBytes], [v13 length], 0, [v13 length]);
      v15 = [v7 encryptionKey];
      if (v15)
      {
        v16 = v7;
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

+ (id)identityFromV2Bytes:(const char *)a3 size:(unint64_t *)a4 error:(id *)a5
{
  v9 = [[SecMessageLegacyFullIdentity alloc] initWithEncryptionKey:0 signingKey:0];
  [(SecMessageLegacyFullIdentity *)v9 setIsMigratedV2Key:1];
  v10 = [a1 populateIdentity:v9 withSigningKeyFromPersistentRef:a3 size:a4];

  v11 = [a1 populateIdentity:v10 withEncryptionKeyFromPersistentRef:a3 size:a4];

  if (!v11)
  {
    MPLogAndAssignError(-101, a5, @"Looking up the persistent reference failed.");
  }

  return v11;
}

- (void)deleteItemWithPersistentRef:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC5F0];
  v11[0] = *MEMORY[0x277CDC228];
  v11[1] = v3;
  v12[0] = *MEMORY[0x277CDC250];
  v12[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
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
  v3 = [(SecMessageLegacyFullIdentity *)self encryptionKeyPersistentRef];
  [(SecMessageLegacyFullIdentity *)self deleteItemWithPersistentRef:v3];

  v4 = [(SecMessageLegacyFullIdentity *)self signingKeyPersistentRef];
  [(SecMessageLegacyFullIdentity *)self deleteItemWithPersistentRef:v4];

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

- (SecMessageLegacyFullIdentity)initWithEncryptionSecKey:(__SecKey *)a3 signingSecKey:(__SecKey *)a4
{
  v6 = SecKeyCopyExternalRepresentation(a3, 0);
  v7 = [[SecKeyRSAPrivate alloc] initWithData:v6 error:0];
  v8 = SecKeyCopyExternalRepresentation(a4, 0);
  v9 = [[LegacySigningKeyPrivate alloc] initWithData:v8 error:0];
  v10 = [(SecMessageLegacyFullIdentity *)self initWithEncryptionKey:v7 signingKey:v9];

  return v10;
}

- (SecMessageLegacyFullIdentity)initWithProtobufData:(id)a3
{
  v4 = a3;
  v5 = [[NGMPBLegacyKey alloc] initWithData:v4];

  if (v5)
  {
    v6 = [(NGMPBLegacyKey *)v5 encryptionKey];
    v7 = [(NGMPBLegacyKey *)v5 signingKey];
    self = [(SecMessageLegacyFullIdentity *)self initWithEncryptionKeyData:v6 signingKeyData:v7];

    v8 = self;
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SecMessageLegacyFullIdentity *)v9 initWithProtobufData:v10, v11, v12, v13, v14, v15, v16];
    }

    v8 = 0;
  }

  return v8;
}

- (SecMessageLegacyFullIdentity)initWithEncryptionKey:(id)a3 signingKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SecMessageLegacyFullIdentity;
  v9 = [(SecMessageLegacyFullIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptionKey, a3);
    objc_storeStrong(&v10->_signingKey, a4);
    v10->_isMigratedV2Key = 0;
  }

  return v10;
}

- (SecMessageLegacyFullIdentity)initWithEncryptionKeyData:(id)a3 signingKeyData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[LegacySigningKeyPrivate alloc] initWithData:v7 error:0];

  if (v8)
  {
    v14 = 0;
    v9 = [[SecKeyRSAPrivate alloc] initWithData:v6 error:&v14];
    v10 = v14;
    if (v9)
    {
      self = [(SecMessageLegacyFullIdentity *)self initWithEncryptionKey:v9 signingKey:v8];
      v11 = self;
    }

    else
    {
      v12 = MessageProtectionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SecMessageLegacyFullIdentity initWithEncryptionKeyData:v10 signingKeyData:?];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = MessageProtectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SecMessageLegacyFullIdentity initWithEncryptionKeyData:signingKeyData:];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)identity
{
  v2 = objc_alloc_init(SecMessageLegacyFullIdentity);
  v3 = objc_alloc_init(LegacySigningKeyPrivate);
  [(SecMessageLegacyFullIdentity *)v2 setSigningKey:v3];

  v4 = [(SecMessageLegacyFullIdentity *)v2 signingKey];

  if (v4)
  {
    v5 = objc_alloc_init(SecKeyRSAPrivate);
    [(SecMessageLegacyFullIdentity *)v2 setEncryptionKey:v5];

    v6 = [(SecMessageLegacyFullIdentity *)v2 encryptionKey];

    if (v6)
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

+ (id)identityWithDataRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![v5 length])
  {
    MPLogAndAssignError(-100, a4, @"The passed legacy key representation is of incorrect size.");
    v11 = 0;
    goto LABEL_14;
  }

  v6 = [v5 bytes];
  v7 = [v5 subdataWithRange:{1, objc_msgSend(v5, "length") - 1}];
  v16 = [v7 length];
  v15 = [v7 bytes];
  v8 = *v6;
  if (v8 == 2)
  {
    v12 = MessageProtectionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22B404000, v12, OS_LOG_TYPE_INFO, "Parsing a legacy key of version 2.", v14, 2u);
    }

    v10 = [SecMessageLegacyFullIdentity identityFromV2Bytes:&v15 size:&v16 error:a4];
  }

  else
  {
    if (v8 != 3)
    {
      MPLogAndAssignError(-100, a4, @"Failed to parse legacy key format.");
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

- (id)signData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SecMessageLegacyFullIdentity *)self signingKey];
  v8 = [v7 signData:v6 error:a4];

  return v8;
}

- (id)decryptMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  v8 = [v7 decryptData:v6 error:a4];

  return v8;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v4 = objc_alloc_init(NGMPBLegacyKey);
  v5 = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  v6 = [v5 dataRepresentation];
  [(NGMPBLegacyKey *)v4 setEncryptionKey:v6];

  v7 = [(SecMessageLegacyFullIdentity *)self signingKey];
  v8 = [v7 dataRepresentation];
  [(NGMPBLegacyKey *)v4 setSigningKey:v8];

  v12 = 3;
  v9 = [MEMORY[0x277CBEB28] dataWithBytes:&v12 length:1];
  v10 = [(NGMPBLegacyKey *)v4 data];
  [v9 appendData:v10];

  if ([(SecMessageLegacyFullIdentity *)self isMigratedV2Key])
  {
    [(SecMessageLegacyFullIdentity *)self deleteMigratedKeys];
  }

  return v9;
}

- (unint64_t)encryptionSize
{
  v2 = [(SecMessageLegacyFullIdentity *)self publicIdentity];
  v3 = [v2 encryptionSize];

  return v3;
}

- (id)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5
{
  v17 = 0;
  v8 = MEMORY[0x277CBEB28];
  v9 = a4;
  v10 = a3;
  v11 = [v8 data];
  v12 = [v9 asRef];

  v13 = [(SecMessageLegacyFullIdentity *)self asRef];
  v14 = SecMPVerifyAndExposeMessage(v10, v12, v13, v11, &v17);

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
    if (a5)
    {
      *a5 = v17;
    }
  }

  return v15;
}

- (__SecKey)privateSigningKeyForTerminusMigration
{
  v2 = [(SecMessageLegacyFullIdentity *)self signingKey];
  v3 = [v2 secKeyRef];

  return v3;
}

- (_SecMPFullIdentity)asRef
{
  v3 = *MEMORY[0x277CBECE8];
  SecMPFullIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance->var5 = CFRetain(self);
  v5 = [(SecMessageLegacyFullIdentity *)self signingKey];
  v6 = [v5 secKeyRef];
  Instance->var2 = v6;

  v7 = [(SecMessageLegacyFullIdentity *)self encryptionKey];
  v8 = [v7 secKeyRef];
  Instance->var4 = v8;

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