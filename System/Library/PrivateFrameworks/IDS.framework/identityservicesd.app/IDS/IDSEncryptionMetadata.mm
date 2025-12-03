@interface IDSEncryptionMetadata
- (IDSEncryptionMetadata)initWithAdditionalEncryptionResult:(id)result;
- (IDSEncryptionMetadata)initWithEncryptionType:(int64_t)type;
- (IDSEncryptionMetadata)initWithMPIdentityIdentifier:(id)identifier;
@end

@implementation IDSEncryptionMetadata

- (IDSEncryptionMetadata)initWithEncryptionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = IDSEncryptionMetadata;
  result = [(IDSEncryptionMetadata *)&v5 init];
  if (result)
  {
    result->_encryptionType = type;
  }

  return result;
}

- (IDSEncryptionMetadata)initWithMPIdentityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7.receiver = self;
  v7.super_class = IDSEncryptionMetadata;
  v5 = [(IDSEncryptionMetadata *)&v7 init];
  if (v5)
  {
    v5->_encryptionType = sub_1005C25FC(identifierCopy);
  }

  return v5;
}

- (IDSEncryptionMetadata)initWithAdditionalEncryptionResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = IDSEncryptionMetadata;
  v6 = [(IDSEncryptionMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_additionalEncryptionResult, result);
  }

  return v7;
}

@end