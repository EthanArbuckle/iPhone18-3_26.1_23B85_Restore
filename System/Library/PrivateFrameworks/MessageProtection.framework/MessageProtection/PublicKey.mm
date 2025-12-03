@interface PublicKey
- (BOOL)isEqual:(id)equal;
- (PublicKey)initWithData:(id)data error:(id *)error;
- (PublicKey)initWithKey:(id)key;
- (id)description;
@end

@implementation PublicKey

- (PublicKey)initWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = PublicKey;
  v6 = [(PublicKey *)&v9 init];
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
    v5 = equalCopy;
    v6 = [(PublicKey *)self key];
    dataRepresentation = [v6 dataRepresentation];
    v8 = [v5 key];

    dataRepresentation2 = [v8 dataRepresentation];
    v10 = [dataRepresentation isEqualToData:dataRepresentation2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PublicKey)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[SecKeyP256Public alloc] initWithData:dataCopy error:error];
  if (v7)
  {
    self = [(PublicKey *)self initWithKey:v7];
    selfCopy = self;
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PublicKey *)dataCopy initWithData:error error:v9];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dataRepresentation = [(PublicKey *)self dataRepresentation];
  v4 = [v2 stringWithFormat:@"PublicKey with data representation: %@", dataRepresentation];

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