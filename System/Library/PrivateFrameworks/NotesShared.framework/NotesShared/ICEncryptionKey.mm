@interface ICEncryptionKey
- (BOOL)deserializeWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)serialize;
- (BOOL)validate;
- (ICEncryptionKey)initWithKeyData:(id)a3 metadata:(id)a4;
- (ICEncryptionKey)initWithSerializedData:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICEncryptionKey

- (ICEncryptionKey)initWithKeyData:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ICEncryptionKey;
  v8 = [(ICEncryptionKey *)&v13 init];
  if (!v8 || (v9 = [v6 copy], keyData = v8->_keyData, v8->_keyData = v9, keyData, objc_storeStrong(&v8->_metadata, a4), -[ICEncryptionKey validate](v8, "validate")) && -[ICEncryptionKey serialize](v8, "serialize"))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICEncryptionKey *)self keyData];
  v7 = [v6 ic_sha256];
  v8 = [(ICEncryptionKey *)self metadata];
  v9 = [v3 stringWithFormat:@"<%@: %p, keyData.sha256: %@, metadata: %@>", v5, self, v7, v8];

  return v9;
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

  v6 = [v5 keyData];
  v7 = [(ICEncryptionKey *)self keyData];
  if ([v6 isEqual:v7])
  {
    v8 = [v5 metadata];
    v9 = [(ICEncryptionKey *)self metadata];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICEncryptionKey *)self keyData];
    v5 = [v4 hash];
    v6 = [(ICEncryptionKey *)self metadata];
    v7 = [v6 hash];
    self->_hash = ICHashWithHashKeys(v5, v8, v9, v10, v11, v12, v13, v14, v7);

    return self->_hash;
  }

  return result;
}

- (ICEncryptionKey)initWithSerializedData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICEncryptionKey;
  v5 = [(ICEncryptionKey *)&v9 init];
  v6 = v5;
  if (!v5 || [(ICEncryptionKey *)v5 deserializeWithData:v4]&& [(ICEncryptionKey *)v6 validate])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)serialize
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 ic_setNonNilObject:self->_keyData forKey:@"key"];
  v4 = [(ICEncryptionMetadata *)self->_metadata serializedData];
  [v3 ic_setNonNilObject:v4 forKey:@"metadata"];

  v5 = [(ICEncryptionMetadata *)self->_metadata authenticatedData];
  [v3 ic_setNonNilObject:v5 forKey:@"authenticatedData"];

  v6 = MEMORY[0x277CCAC58];
  v7 = [v3 copy];
  v14 = 0;
  v8 = [v6 dataWithPropertyList:v7 format:200 options:0 error:&v14];
  v9 = v14;
  serializedData = self->_serializedData;
  self->_serializedData = v8;

  v11 = self->_serializedData;
  if (!v11)
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionKey serialize];
    }
  }

  return v11 != 0;
}

- (BOOL)deserializeWithData:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    objc_opt_class();
    v23 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v23];
    v7 = v23;
    v8 = ICCheckedDynamicCast();

    v9 = v8 != 0;
    if (v8)
    {
      objc_storeStrong(&self->_serializedData, a3);
      objc_opt_class();
      v10 = [v8 objectForKeyedSubscript:@"key"];
      v11 = ICCheckedDynamicCast();
      keyData = self->_keyData;
      self->_keyData = v11;

      objc_opt_class();
      v13 = [v8 objectForKeyedSubscript:@"metadata"];
      v14 = ICCheckedDynamicCast();

      objc_opt_class();
      v15 = [v8 objectForKeyedSubscript:@"authenticatedData"];
      v16 = ICCheckedDynamicCast();
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      v19 = v18;

      if (v14)
      {
        v20 = [[ICEncryptionMetadata alloc] initWithSerializedData:v14 authenticatedData:v19];
        metadata = self->_metadata;
        self->_metadata = v20;
      }
    }

    else
    {
      v14 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ICEncryptionKey deserializeWithData:];
      }
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionKey deserializeWithData:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)validate
{
  v3 = [(ICEncryptionKey *)self keyData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(ICEncryptionKey *)self metadata];

    if (v5)
    {
      return 1;
    }

    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionKey validate];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionKey validate];
    }
  }

  return 0;
}

@end