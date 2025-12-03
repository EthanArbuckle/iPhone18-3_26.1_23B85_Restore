@interface IDSEncryptedData
- (IDSEncryptedData)initWithData:(id)data encryptionType:(int64_t)type payloadMetadata:(id)metadata;
- (id)description;
@end

@implementation IDSEncryptedData

- (id)description
{
  v3 = objc_opt_class();
  v4 = IDSEncryptionTypeStringFromEncryptionType();
  v5 = [NSString stringWithFormat:@"<%@: %p encryptionType: %@, dataLength: %lu>", v3, self, v4, [(NSData *)self->_data length]];

  return v5;
}

- (IDSEncryptedData)initWithData:(id)data encryptionType:(int64_t)type payloadMetadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = IDSEncryptedData;
  v11 = [(IDSEncryptedData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_data, data);
    v12->_encryptionType = type;
    objc_storeStrong(&v12->_payloadMetadata, metadata);
  }

  return v12;
}

@end