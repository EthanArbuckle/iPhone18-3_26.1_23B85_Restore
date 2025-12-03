@interface FullKey
+ (id)generateNewKeyWithAccess:(id)access forceNoSEP:(BOOL)p error:(id *)error;
- (FullKey)initWithCTKTokenOID:(id)d error:(id *)error;
- (FullKey)initWithKey:(id)key error:(id *)error;
- (FullKey)initWithKeychainTag:(id)tag error:(id *)error;
- (FullKey)initWithProtobufferData:(id)data error:(id *)error;
- (id)description;
- (id)keyIdentifier;
- (id)protobuffer;
@end

@implementation FullKey

+ (id)generateNewKeyWithAccess:(id)access forceNoSEP:(BOOL)p error:(id *)error
{
  pCopy = p;
  accessCopy = access;
  v9 = [self alloc];
  if (pCopy)
  {
    +[CoreCryptoP256Private generate];
  }

  else
  {
    [SecKeyP256Private generateWithAccessControl:accessCopy];
  }
  v10 = ;
  v11 = [v9 initWithKey:v10 error:error];

  return v11;
}

- (FullKey)initWithKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (keyCopy)
  {
    v15.receiver = self;
    v15.super_class = FullKey;
    v8 = [(FullKey *)&v15 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_key, key);
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
    MPLogAndAssignError(4, error, v12);

    v9 = 0;
  }

  return v9;
}

- (FullKey)initWithProtobufferData:(id)data error:(id *)error
{
  dataCopy = data;
  keystore = [dataCopy keystore];
  if (keystore != 4)
  {
    if (keystore == 3)
    {
      keychainTag = [dataCopy keychainTag];
      v9 = [(FullKey *)self initWithKeychainTag:keychainTag error:error];
      goto LABEL_4;
    }

    v13 = MessageProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [FullKey initWithProtobufferData:dataCopy error:v13];
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_14;
  }

  if (([dataCopy hasKeyData] & 1) == 0)
  {
    v13 = MessageProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FullKey initWithProtobufferData:v13 error:?];
    }

    goto LABEL_13;
  }

  keyData = [dataCopy keyData];
  v9 = [(FullKey *)self initWithCTKTokenOID:keyData error:error];

  if (![dataCopy hasKeychainTag])
  {
    goto LABEL_5;
  }

  keychainTag = [dataCopy keychainTag];
  keychainTag = v9->_keychainTag;
  v9->_keychainTag = keychainTag;
LABEL_4:

LABEL_5:
  self = v9;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (FullKey)initWithCTKTokenOID:(id)d error:(id *)error
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = FullKey;
  v7 = [(FullKey *)&v11 init];
  if (v7)
  {
    v8 = [[SecKeyP256Private alloc] initWithData:dCopy error:error];
    key = v7->_key;
    v7->_key = v8;

    v7->_keyStore = 4;
  }

  return v7;
}

- (FullKey)initWithKeychainTag:(id)tag error:(id *)error
{
  v27[4] = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  v8 = *MEMORY[0x277CDC238];
  v9 = *MEMORY[0x277CDC120];
  v26[0] = *MEMORY[0x277CDC228];
  v26[1] = v9;
  v27[0] = v8;
  v27[1] = @"com.apple.messageprotection";
  v10 = *MEMORY[0x277CDC558];
  v26[2] = *MEMORY[0x277CDBF20];
  v26[3] = v10;
  v27[2] = tagCopy;
  v27[3] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  if (v12)
  {
    MPLogAndAssignError(v12, error, @"Failed to initiate a full key from the passed serialization.");
    selfCopy = 0;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBEA90]);
    v15 = [v14 initWithData:result];
    v16 = [[SecKeyP256Private alloc] initWithData:v15 error:error];
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
        objc_storeStrong(&v18->_keychainTag, tag);
      }

      self = v18;
      selfCopy = self;
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [*error description];
      v21 = [v19 stringWithFormat:@"We failed to initialize a key with error: %@", v20];
      MPLogAndAssignError(406, error, v21);

      selfCopy = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
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
    publicKey = [v4 publicKey];
    dataRepresentation = [publicKey dataRepresentation];
    v3 = [dataRepresentation base64EncodedStringWithOptions:0];
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(FullKey *)self key];
  publicKey = [v3 publicKey];
  dataRepresentation = [publicKey dataRepresentation];
  v6 = [v2 stringWithFormat:@"FullKey with public data representation: %@", dataRepresentation];

  return v6;
}

- (id)protobuffer
{
  v3 = objc_alloc_init(NGMPBP256Key);
  keychainTag = [(FullKey *)self keychainTag];
  [(NGMPBP256Key *)v3 setKeychainTag:keychainTag];

  v5 = [(FullKey *)self key];
  keychainData = [v5 keychainData];
  [(NGMPBP256Key *)v3 setKeyData:keychainData];

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