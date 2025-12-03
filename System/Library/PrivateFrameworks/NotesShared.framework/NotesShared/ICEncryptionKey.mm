@interface ICEncryptionKey
- (BOOL)deserializeWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)serialize;
- (BOOL)validate;
- (ICEncryptionKey)initWithKeyData:(id)data metadata:(id)metadata;
- (ICEncryptionKey)initWithSerializedData:(id)data;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICEncryptionKey

- (ICEncryptionKey)initWithKeyData:(id)data metadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = ICEncryptionKey;
  v8 = [(ICEncryptionKey *)&v13 init];
  if (!v8 || (v9 = [dataCopy copy], keyData = v8->_keyData, v8->_keyData = v9, keyData, objc_storeStrong(&v8->_metadata, metadata), -[ICEncryptionKey validate](v8, "validate")) && -[ICEncryptionKey serialize](v8, "serialize"))
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
  keyData = [(ICEncryptionKey *)self keyData];
  ic_sha256 = [keyData ic_sha256];
  metadata = [(ICEncryptionKey *)self metadata];
  v9 = [v3 stringWithFormat:@"<%@: %p, keyData.sha256: %@, metadata: %@>", v5, self, ic_sha256, metadata];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  keyData = [v5 keyData];
  keyData2 = [(ICEncryptionKey *)self keyData];
  if ([keyData isEqual:keyData2])
  {
    metadata = [v5 metadata];
    metadata2 = [(ICEncryptionKey *)self metadata];
    v10 = [metadata isEqual:metadata2];
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
    keyData = [(ICEncryptionKey *)self keyData];
    v5 = [keyData hash];
    metadata = [(ICEncryptionKey *)self metadata];
    v7 = [metadata hash];
    self->_hash = ICHashWithHashKeys(v5, v8, v9, v10, v11, v12, v13, v14, v7);

    return self->_hash;
  }

  return result;
}

- (ICEncryptionKey)initWithSerializedData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ICEncryptionKey;
  v5 = [(ICEncryptionKey *)&v9 init];
  v6 = v5;
  if (!v5 || [(ICEncryptionKey *)v5 deserializeWithData:dataCopy]&& [(ICEncryptionKey *)v6 validate])
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary ic_setNonNilObject:self->_keyData forKey:@"key"];
  serializedData = [(ICEncryptionMetadata *)self->_metadata serializedData];
  [dictionary ic_setNonNilObject:serializedData forKey:@"metadata"];

  authenticatedData = [(ICEncryptionMetadata *)self->_metadata authenticatedData];
  [dictionary ic_setNonNilObject:authenticatedData forKey:@"authenticatedData"];

  v6 = MEMORY[0x277CCAC58];
  v7 = [dictionary copy];
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

- (BOOL)deserializeWithData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    objc_opt_class();
    v23 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v23];
    v7 = v23;
    v8 = ICCheckedDynamicCast();

    v9 = v8 != 0;
    if (v8)
    {
      objc_storeStrong(&self->_serializedData, data);
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
  keyData = [(ICEncryptionKey *)self keyData];
  v4 = [keyData length];

  if (v4)
  {
    metadata = [(ICEncryptionKey *)self metadata];

    if (metadata)
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