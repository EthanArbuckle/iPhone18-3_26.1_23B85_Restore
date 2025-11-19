@interface ICEncryptionObject
- (BOOL)isEqual:(id)a3;
- (BOOL)validate;
- (ICEncryptionObject)initWithCoder:(id)a3;
- (ICEncryptionObject)initWithMetadata:(id)a3 wrappedEncryptionKey:(id)a4 encryptedData:(id)a5;
- (ICEncryptionObject)initWithSerializedData:(id)a3;
- (id)description;
- (id)serialized;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICEncryptionObject

- (ICEncryptionObject)initWithMetadata:(id)a3 wrappedEncryptionKey:(id)a4 encryptedData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = ICEncryptionObject;
  v12 = [(ICEncryptionObject *)&v20 init];
  v13 = v12;
  if (v12 && (objc_storeStrong(&v12->_metadata, a3), v14 = [v10 copy], wrappedEncryptionKey = v13->_wrappedEncryptionKey, v13->_wrappedEncryptionKey = v14, wrappedEncryptionKey, v16 = objc_msgSend(v11, "copy"), encryptedData = v13->_encryptedData, v13->_encryptedData = v16, encryptedData, !-[ICEncryptionObject validate](v13, "validate")))
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICEncryptionObject *)self metadata];
  v7 = [(ICEncryptionObject *)self wrappedEncryptionKey];
  v8 = [v7 ic_sha256];
  v9 = [(ICEncryptionObject *)self encryptedData];
  v10 = [v9 ic_sha256];
  v11 = [v3 stringWithFormat:@"<%@: %p, metadata: %@, wrappedEncryptionKey.sha256: %@, encryptedData.sha256: %@>", v5, self, v6, v8, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v6 = [v5 metadata];
  v7 = [(ICEncryptionObject *)self metadata];
  if ([v6 isEqual:v7])
  {
    v8 = [v5 wrappedEncryptionKey];
    v9 = [(ICEncryptionObject *)self wrappedEncryptionKey];
    if ([v8 isEqual:v9])
    {
      v10 = [v5 encryptedData];
      v11 = [(ICEncryptionObject *)self encryptedData];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICEncryptionObject *)self metadata];
    v5 = [v4 hash];
    v6 = [(ICEncryptionObject *)self wrappedEncryptionKey];
    v7 = [v6 hash];
    v8 = [(ICEncryptionObject *)self encryptedData];
    [v8 hash];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v7);

    return self->_hash;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICEncryptionObject *)self metadata];
  v6 = [v5 serializedData];
  [v4 encodeObject:v6 forKey:@"unauthenticatedMetadata"];

  v7 = [(ICEncryptionObject *)self metadata];
  v8 = [v7 authenticatedData];
  [v4 encodeObject:v8 forKey:@"metadata"];

  v9 = [(ICEncryptionObject *)self wrappedEncryptionKey];
  [v4 encodeObject:v9 forKey:@"wrappedEncryptionKey"];

  v10 = [(ICEncryptionObject *)self encryptedData];
  [v4 encodeObject:v10 forKey:@"encryptedData"];
}

- (ICEncryptionObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unauthenticatedMetadata"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedEncryptionKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    p_super = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionObject initWithCoder:];
    }

    goto LABEL_18;
  }

  v12 = [[ICEncryptionMetadata alloc] initWithSerializedData:v5 authenticatedData:v6];
  p_super = &v12->super;
  if (!v12)
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionObject initWithCoder:];
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v18.receiver = self;
  v18.super_class = ICEncryptionObject;
  v13 = [(ICEncryptionObject *)&v18 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    objc_storeStrong(&v13->_metadata, p_super);
    objc_storeStrong(p_isa + 3, v7);
    objc_storeStrong(p_isa + 4, v8);
  }

  self = p_isa;
  v15 = self;
LABEL_19:

  return v15;
}

- (ICEncryptionObject)initWithSerializedData:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICEncryptionObject_initWithSerializedData___block_invoke;
  block[3] = &unk_278194B00;
  v5 = self;
  v13 = v5;
  if (initWithSerializedData__onceToken != -1)
  {
    dispatch_once(&initWithSerializedData__onceToken, block);
  }

  v11 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v11];
  v7 = v11;
  if (v7 || ([v6 validate] & 1) == 0)
  {
    if ([v7 code] != 4864)
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICEncryptionObject initWithSerializedData:];
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

uint64_t __45__ICEncryptionObject_initWithSerializedData___block_invoke()
{
  v0 = MEMORY[0x277CCAAC8];
  v1 = objc_opt_class();

  return [v0 setClass:v1 forClassName:@"ICCryptoEncryptionObject"];
}

- (id)serialized
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ICEncryptionObject_serialized__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  if (serialized_onceToken != -1)
  {
    dispatch_once(&serialized_onceToken, block);
  }

  v8 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionObject serialized];
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t __32__ICEncryptionObject_serialized__block_invoke()
{
  v0 = MEMORY[0x277CCAAB0];
  v1 = objc_opt_class();

  return [v0 setClassName:@"ICCryptoEncryptionObject" forClass:v1];
}

- (BOOL)validate
{
  v3 = [(ICEncryptionObject *)self metadata];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICEncryptionObject *)self wrappedEncryptionKey];
    if ([v5 length])
    {
      v6 = [(ICEncryptionObject *)self encryptedData];
      v7 = [v6 length];

      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v9 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ICEncryptionObject validate];
  }

  return 0;
}

@end