@interface IDSDecryptionMetadata
- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)type usedLastResortCache:(BOOL)cache usedCachedData:(BOOL)data;
- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)type usedLastResortCache:(BOOL)cache usedCachedData:(BOOL)data additionalDecryptionResult:(id)result;
@end

@implementation IDSDecryptionMetadata

- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)type usedLastResortCache:(BOOL)cache usedCachedData:(BOOL)data
{
  v9.receiver = self;
  v9.super_class = IDSDecryptionMetadata;
  result = [(IDSDecryptionMetadata *)&v9 init];
  if (result)
  {
    result->_usedLastResortCache = cache;
    result->_encryptionType = type;
    result->_usedCachedData = data;
  }

  return result;
}

- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)type usedLastResortCache:(BOOL)cache usedCachedData:(BOOL)data additionalDecryptionResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = IDSDecryptionMetadata;
  v12 = [(IDSDecryptionMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_usedLastResortCache = cache;
    v12->_encryptionType = type;
    v12->_usedCachedData = data;
    objc_storeStrong(&v12->_additionalDecryptionResult, result);
  }

  return v13;
}

@end