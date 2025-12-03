@interface ICEncryptionObject
- (BOOL)isEqual:(id)equal;
- (BOOL)validate;
- (ICEncryptionObject)initWithCoder:(id)coder;
- (ICEncryptionObject)initWithMetadata:(id)metadata wrappedEncryptionKey:(id)key encryptedData:(id)data;
- (ICEncryptionObject)initWithSerializedData:(id)data;
- (id)description;
- (id)serialized;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICEncryptionObject

- (ICEncryptionObject)initWithMetadata:(id)metadata wrappedEncryptionKey:(id)key encryptedData:(id)data
{
  metadataCopy = metadata;
  keyCopy = key;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = ICEncryptionObject;
  v12 = [(ICEncryptionObject *)&v20 init];
  v13 = v12;
  if (v12 && (objc_storeStrong(&v12->_metadata, metadata), v14 = [keyCopy copy], wrappedEncryptionKey = v13->_wrappedEncryptionKey, v13->_wrappedEncryptionKey = v14, wrappedEncryptionKey, v16 = objc_msgSend(dataCopy, "copy"), encryptedData = v13->_encryptedData, v13->_encryptedData = v16, encryptedData, !-[ICEncryptionObject validate](v13, "validate")))
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
  metadata = [(ICEncryptionObject *)self metadata];
  wrappedEncryptionKey = [(ICEncryptionObject *)self wrappedEncryptionKey];
  ic_sha256 = [wrappedEncryptionKey ic_sha256];
  encryptedData = [(ICEncryptionObject *)self encryptedData];
  ic_sha2562 = [encryptedData ic_sha256];
  v11 = [v3 stringWithFormat:@"<%@: %p, metadata: %@, wrappedEncryptionKey.sha256: %@, encryptedData.sha256: %@>", v5, self, metadata, ic_sha256, ic_sha2562];

  return v11;
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

  metadata = [v5 metadata];
  metadata2 = [(ICEncryptionObject *)self metadata];
  if ([metadata isEqual:metadata2])
  {
    wrappedEncryptionKey = [v5 wrappedEncryptionKey];
    wrappedEncryptionKey2 = [(ICEncryptionObject *)self wrappedEncryptionKey];
    if ([wrappedEncryptionKey isEqual:wrappedEncryptionKey2])
    {
      encryptedData = [v5 encryptedData];
      encryptedData2 = [(ICEncryptionObject *)self encryptedData];
      v12 = [encryptedData isEqual:encryptedData2];
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
    metadata = [(ICEncryptionObject *)self metadata];
    v5 = [metadata hash];
    wrappedEncryptionKey = [(ICEncryptionObject *)self wrappedEncryptionKey];
    v7 = [wrappedEncryptionKey hash];
    encryptedData = [(ICEncryptionObject *)self encryptedData];
    [encryptedData hash];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v7);

    return self->_hash;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  metadata = [(ICEncryptionObject *)self metadata];
  serializedData = [metadata serializedData];
  [coderCopy encodeObject:serializedData forKey:@"unauthenticatedMetadata"];

  metadata2 = [(ICEncryptionObject *)self metadata];
  authenticatedData = [metadata2 authenticatedData];
  [coderCopy encodeObject:authenticatedData forKey:@"metadata"];

  wrappedEncryptionKey = [(ICEncryptionObject *)self wrappedEncryptionKey];
  [coderCopy encodeObject:wrappedEncryptionKey forKey:@"wrappedEncryptionKey"];

  encryptedData = [(ICEncryptionObject *)self encryptedData];
  [coderCopy encodeObject:encryptedData forKey:@"encryptedData"];
}

- (ICEncryptionObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unauthenticatedMetadata"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedEncryptionKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];

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
    selfCopy = 0;
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
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (ICEncryptionObject)initWithSerializedData:(id)data
{
  dataCopy = data;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICEncryptionObject_initWithSerializedData___block_invoke;
  block[3] = &unk_278194B00;
  selfCopy = self;
  v13 = selfCopy;
  if (initWithSerializedData__onceToken != -1)
  {
    dispatch_once(&initWithSerializedData__onceToken, block);
  }

  v11 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];
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
  metadata = [(ICEncryptionObject *)self metadata];
  if (metadata)
  {
    v4 = metadata;
    wrappedEncryptionKey = [(ICEncryptionObject *)self wrappedEncryptionKey];
    if ([wrappedEncryptionKey length])
    {
      encryptedData = [(ICEncryptionObject *)self encryptedData];
      v7 = [encryptedData length];

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