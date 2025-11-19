@interface ENCypher_AES128
+ (id)_decryptData:(id)a3 withKey:(id)a4;
+ (id)_encryptData:(id)a3 withKey:(id)a4;
+ (id)_randomDataWithLength:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (ENCypher_AES128)initWithCoder:(id)a3;
- (ENCypher_AES128)initWithKey:(id)a3;
- (ENCypher_AES128)initWithRandomKey;
- (id)cypherData:(id)a3 withAccountIdentity:(id)a4 identifier:(id *)a5 error:(id *)a6;
- (id)decypherData:(id)a3 withAccountIdentity:(id)a4 signingDevicePublicKey:(id)a5 identifier:(id)a6 error:(id *)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENCypher_AES128

- (ENCypher_AES128)initWithRandomKey
{
  v3 = [objc_opt_class() _randomDataWithLength:32];
  v4 = [(ENCypher_AES128 *)self initWithKey:v3];

  return v4;
}

- (ENCypher_AES128)initWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ENCypher_AES128;
  v6 = [(ENCypher_AES128 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 key];
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

- (ENCypher_AES128)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ENCypher_AES128KeyKey"];

  v6 = [(ENCypher_AES128 *)self initWithKey:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENCypher_AES128 *)self key];
  [v4 encodeObject:v5 forKey:@"ENCypher_AES128KeyKey"];
}

- (id)cypherData:(id)a3 withAccountIdentity:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (!a5)
  {
    goto LABEL_5;
  }

  v12 = *a5;
  if (!*a5 || (-[ENCypher_AES128 identifier](self, "identifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqualToString:v13], v13, v14))
  {
    *a5 = [(ENCypher_AES128 *)self identifier];
LABEL_5:
    v15 = objc_opt_class();
    v16 = [(ENCypher_AES128 *)self key];
    v17 = [v15 _encryptData:v10 withKey:v16];

    goto LABEL_6;
  }

  if (a6)
  {
    v19 = +[ENLog groupContext];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_24A059728(a5, self, v19);
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"ENCypherErrorDomain" code:-1001 userInfo:0];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_6:

  return v17;
}

- (id)decypherData:(id)a3 withAccountIdentity:(id)a4 signingDevicePublicKey:(id)a5 identifier:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15 && (-[ENCypher_AES128 identifier](self, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 isEqualToString:v16], v16, !v17))
  {
    if (a7)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ENCypherErrorDomain" code:-1001 userInfo:0];
      *a7 = v20 = 0;
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
    v20 = [v18 _decryptData:v12 withKey:v19];
  }

  return v20;
}

+ (id)_randomDataWithLength:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a3];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], a3, [v4 mutableBytes]))
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

+ (id)_encryptData:(id)a3 withKey:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  memset(key, 0, sizeof(key));
  v5 = a4;
  v6 = a3;
  [v5 bytes];
  [v5 length];

  __memcpy_chk();
  v7 = [v6 length];
  dataOut = malloc_type_malloc(v7 + 16, 0x238D3D26uLL);
  v13 = 0;
  v9 = [v6 bytes];

  if (CCCrypt(0, 0, 3u, key, 0x10uLL, 0, v9, v7, dataOut, v7 + 16, &v13))
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

+ (id)_decryptData:(id)a3 withKey:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  memset(key, 0, sizeof(key));
  v5 = a4;
  v6 = a3;
  [v5 bytes];
  [v5 length];

  __memcpy_chk();
  v7 = [v6 length];
  dataOut = malloc_type_malloc(v7 + 16, 0x3B692598uLL);
  v13 = 0;
  v9 = [v6 bytes];

  if (CCCrypt(1u, 0, 3u, key, 0x10uLL, 0, v9, v7, dataOut, v7 + 16, &v13))
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