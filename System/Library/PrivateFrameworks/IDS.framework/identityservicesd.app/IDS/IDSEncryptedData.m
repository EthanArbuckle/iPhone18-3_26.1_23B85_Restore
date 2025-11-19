@interface IDSEncryptedData
- (IDSEncryptedData)initWithData:(id)a3 encryptionType:(int64_t)a4 payloadMetadata:(id)a5;
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

- (IDSEncryptedData)initWithData:(id)a3 encryptionType:(int64_t)a4 payloadMetadata:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSEncryptedData;
  v11 = [(IDSEncryptedData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_data, a3);
    v12->_encryptionType = a4;
    objc_storeStrong(&v12->_payloadMetadata, a5);
  }

  return v12;
}

@end