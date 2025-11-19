@interface FullKey
+ (id)generateNewKeyWithAccess:(id)a3 forceNoSEP:(BOOL)a4 error:(id *)a5;
- (FullKey)initWithCTKTokenOID:(id)a3 error:(id *)a4;
- (FullKey)initWithKey:(id)a3 error:(id *)a4;
- (FullKey)initWithKeychainTag:(id)a3 error:(id *)a4;
- (FullKey)initWithProtobufferData:(id)a3 error:(id *)a4;
- (id)description;
- (id)keyIdentifier;
- (id)protobuffer;
@end

@implementation FullKey

+ (id)generateNewKeyWithAccess:(id)a3 forceNoSEP:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [a1 alloc];
  if (v6)
  {
    +[CoreCryptoP256Private generate];
  }

  else
  {
    [SecKeyP256Private generateWithAccessControl:v8];
  }
  v10 = ;
  v11 = [v9 initWithKey:v10 error:a5];

  return v11;
}

- (FullKey)initWithKey:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    v15.receiver = self;
    v15.super_class = FullKey;
    v8 = [(FullKey *)&v15 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_key, a3);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9->_keyStore = 4;
      }

      else if (objc_opt_class())
      {
        v9->_keyStore = 0;
      }

      else
      {
        v13 = MessageProtectionLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [FullKey initWithKey:v9 error:v13];
        }
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [0 description];
    v12 = [v10 stringWithFormat:@"Failed to initialize a full key: %@", v11];
    MPLogAndAssignError(4, a4, v12);

    v9 = 0;
  }

  return v9;
}

- (FullKey)initWithProtobufferData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 keystore];
  if (v7 != 4)
  {
    if (v7 == 3)
    {
      keychainTag = [v6 keychainTag];
      v9 = [(FullKey *)self initWithKeychainTag:keychainTag error:a4];
      goto LABEL_4;
    }

    v13 = MessageProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [FullKey initWithProtobufferData:v6 error:v13];
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  if (([v6 hasKeyData] & 1) == 0)
  {
    v13 = MessageProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FullKey initWithProtobufferData:v13 error:?];
    }

    goto LABEL_13;
  }

  v11 = [v6 keyData];
  v9 = [(FullKey *)self initWithCTKTokenOID:v11 error:a4];

  if (![v6 hasKeychainTag])
  {
    goto LABEL_5;
  }

  v12 = [v6 keychainTag];
  keychainTag = v9->_keychainTag;
  v9->_keychainTag = v12;
LABEL_4:

LABEL_5:
  self = v9;
  v10 = self;
LABEL_14:

  return v10;
}

- (FullKey)initWithCTKTokenOID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FullKey;
  v7 = [(FullKey *)&v11 init];
  if (v7)
  {
    v8 = [[SecKeyP256Private alloc] initWithData:v6 error:a4];
    key = v7->_key;
    v7->_key = v8;

    v7->_keyStore = 4;
  }

  return v7;
}

- (FullKey)initWithKeychainTag:(id)a3 error:(id *)a4
{
  v27[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *MEMORY[0x277CDC238];
  v9 = *MEMORY[0x277CDC120];
  v26[0] = *MEMORY[0x277CDC228];
  v26[1] = v9;
  v27[0] = v8;
  v27[1] = @"com.apple.messageprotection";
  v10 = *MEMORY[0x277CDC558];
  v26[2] = *MEMORY[0x277CDBF20];
  v26[3] = v10;
  v27[2] = v7;
  v27[3] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  if (v12)
  {
    MPLogAndAssignError(v12, a4, @"Failed to initiate a full key from the passed serialization.");
    v13 = 0;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBEA90]);
    v15 = [v14 initWithData:result];
    v16 = [[SecKeyP256Private alloc] initWithData:v15 error:a4];
    if (v16)
    {
      v24.receiver = self;
      v24.super_class = FullKey;
      v17 = [(FullKey *)&v24 init];
      v18 = v17;
      if (v17)
      {
        objc_storeStrong(&v17->_key, v16);
        v18->_keyStore = 3;
        objc_storeStrong(&v18->_keychainTag, a3);
      }

      self = v18;
      v13 = self;
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [*a4 description];
      v21 = [v19 stringWithFormat:@"We failed to initialize a key with error: %@", v20];
      MPLogAndAssignError(406, a4, v21);

      v13 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)keyIdentifier
{
  keychainTag = self->_keychainTag;
  if (keychainTag)
  {
    v3 = keychainTag;
  }

  else
  {
    v4 = [(FullKey *)self key];
    v5 = [v4 publicKey];
    v6 = [v5 dataRepresentation];
    v3 = [v6 base64EncodedStringWithOptions:0];
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(FullKey *)self key];
  v4 = [v3 publicKey];
  v5 = [v4 dataRepresentation];
  v6 = [v2 stringWithFormat:@"FullKey with public data representation: %@", v5];

  return v6;
}

- (id)protobuffer
{
  v3 = objc_alloc_init(NGMPBP256Key);
  v4 = [(FullKey *)self keychainTag];
  [(NGMPBP256Key *)v3 setKeychainTag:v4];

  v5 = [(FullKey *)self key];
  v6 = [v5 keychainData];
  [(NGMPBP256Key *)v3 setKeyData:v6];

  [(NGMPBP256Key *)v3 setKeystore:4];

  return v3;
}

- (void)initWithKey:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_22B404000, a2, OS_LOG_TYPE_FAULT, "Unsupported key store: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithProtobufferData:(void *)a1 error:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = [a1 keystore];
  _os_log_fault_impl(&dword_22B404000, a2, OS_LOG_TYPE_FAULT, "Unsupported key store: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end