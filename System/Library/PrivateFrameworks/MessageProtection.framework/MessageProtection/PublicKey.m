@interface PublicKey
- (BOOL)isEqual:(id)a3;
- (PublicKey)initWithData:(id)a3 error:(id *)a4;
- (PublicKey)initWithKey:(id)a3;
- (id)description;
@end

@implementation PublicKey

- (PublicKey)initWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PublicKey;
  v6 = [(PublicKey *)&v9 init];
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
    v5 = v4;
    v6 = [(PublicKey *)self key];
    v7 = [v6 dataRepresentation];
    v8 = [v5 key];

    v9 = [v8 dataRepresentation];
    v10 = [v7 isEqualToData:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PublicKey)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[SecKeyP256Public alloc] initWithData:v6 error:a4];
  if (v7)
  {
    self = [(PublicKey *)self initWithKey:v7];
    v8 = self;
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PublicKey *)v6 initWithData:a4 error:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PublicKey *)self dataRepresentation];
  v4 = [v2 stringWithFormat:@"PublicKey with data representation: %@", v3];

  return v4;
}

- (void)initWithData:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_22B404000, log, OS_LOG_TYPE_ERROR, "Attempting to initialize public key with invalid format: %@ and error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end