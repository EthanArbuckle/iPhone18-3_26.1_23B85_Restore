@interface ENCypher_AES128
+ (id)_decryptData:(id)data withKey:(id)key;
+ (id)_encryptData:(id)data withKey:(id)key;
+ (id)_randomDataWithLength:(int64_t)length;
- (BOOL)isEqual:(id)equal;
- (ENCypher_AES128)initWithCoder:(id)coder;
- (ENCypher_AES128)initWithKey:(id)key;
- (ENCypher_AES128)initWithRandomKey;
- (id)cypherData:(id)data withAccountIdentity:(id)identity identifier:(id *)identifier error:(id *)error;
- (id)decypherData:(id)data withAccountIdentity:(id)identity signingDevicePublicKey:(id)key identifier:(id)identifier error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENCypher_AES128

- (ENCypher_AES128)initWithRandomKey
{
  v3 = [objc_opt_class() _randomDataWithLength:32];
  v4 = [(ENCypher_AES128 *)self initWithKey:v3];

  return v4;
}

- (ENCypher_AES128)initWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = ENCypher_AES128;
  v6 = [(ENCypher_AES128 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy key];
    v6 = [(ENCypher_AES128 *)self key];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(ENCypher_AES128 *)self key];
  v3 = [v2 hash];

  return v3;
}

- (ENCypher_AES128)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ENCypher_AES128KeyKey"];

  v6 = [(ENCypher_AES128 *)self initWithKey:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ENCypher_AES128 *)self key];
  [coderCopy encodeObject:v5 forKey:@"ENCypher_AES128KeyKey"];
}

- (id)cypherData:(id)data withAccountIdentity:(id)identity identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  identityCopy = identity;
  if (!identifier)
  {
    goto LABEL_5;
  }

  v12 = *identifier;
  if (!*identifier || (-[ENCypher_AES128 identifier](self, "identifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqualToString:v13], v13, v14))
  {
    *identifier = [(ENCypher_AES128 *)self identifier];
LABEL_5:
    v15 = objc_opt_class();
    v16 = [(ENCypher_AES128 *)self key];
    v17 = [v15 _encryptData:dataCopy withKey:v16];

    goto LABEL_6;
  }

  if (error)
  {
    v19 = +[ENLog groupContext];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_24A059728(identifier, self, v19);
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"ENCypherErrorDomain" code:-1001 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_6:

  return v17;
}

- (id)decypherData:(id)data withAccountIdentity:(id)identity signingDevicePublicKey:(id)key identifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identityCopy = identity;
  keyCopy = key;
  identifierCopy = identifier;
  if (identifierCopy && (-[ENCypher_AES128 identifier](self, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [identifierCopy isEqualToString:v16], v16, !v17))
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ENCypherErrorDomain" code:-1001 userInfo:0];
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v18 = objc_opt_class();
    v19 = [(ENCypher_AES128 *)self key];
    v20 = [v18 _decryptData:dataCopy withKey:v19];
  }

  return v20;
}

+ (id)_randomDataWithLength:(int64_t)length
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:length];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], length, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

+ (id)_encryptData:(id)data withKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  memset(key, 0, sizeof(key));
  keyCopy = key;
  dataCopy = data;
  [keyCopy bytes];
  [keyCopy length];

  __memcpy_chk();
  v7 = [dataCopy length];
  dataOut = malloc_type_malloc(v7 + 16, 0x238D3D26uLL);
  v13 = 0;
  bytes = [dataCopy bytes];

  if (CCCrypt(0, 0, 3u, key, 0x10uLL, 0, bytes, v7, dataOut, v7 + 16, &v13))
  {
    free(dataOut);
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:dataOut length:v13];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_decryptData:(id)data withKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  memset(key, 0, sizeof(key));
  keyCopy = key;
  dataCopy = data;
  [keyCopy bytes];
  [keyCopy length];

  __memcpy_chk();
  v7 = [dataCopy length];
  dataOut = malloc_type_malloc(v7 + 16, 0x3B692598uLL);
  v13 = 0;
  bytes = [dataCopy bytes];

  if (CCCrypt(1u, 0, 3u, key, 0x10uLL, 0, bytes, v7, dataOut, v7 + 16, &v13))
  {
    free(dataOut);
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:dataOut length:v13];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end