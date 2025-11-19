@interface IDSEncryptionMetadata
- (IDSEncryptionMetadata)initWithAdditionalEncryptionResult:(id)a3;
- (IDSEncryptionMetadata)initWithEncryptionType:(int64_t)a3;
- (IDSEncryptionMetadata)initWithMPIdentityIdentifier:(id)a3;
@end

@implementation IDSEncryptionMetadata

- (IDSEncryptionMetadata)initWithEncryptionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSEncryptionMetadata;
  result = [(IDSEncryptionMetadata *)&v5 init];
  if (result)
  {
    result->_encryptionType = a3;
  }

  return result;
}

- (IDSEncryptionMetadata)initWithMPIdentityIdentifier:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = IDSEncryptionMetadata;
  v5 = [(IDSEncryptionMetadata *)&v7 init];
  if (v5)
  {
    v5->_encryptionType = sub_1005C25FC(v4);
  }

  return v5;
}

- (IDSEncryptionMetadata)initWithAdditionalEncryptionResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSEncryptionMetadata;
  v6 = [(IDSEncryptionMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_additionalEncryptionResult, a3);
  }

  return v7;
}

@end