@interface IDSDecryptionMetadata
- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)a3 usedLastResortCache:(BOOL)a4 usedCachedData:(BOOL)a5;
- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)a3 usedLastResortCache:(BOOL)a4 usedCachedData:(BOOL)a5 additionalDecryptionResult:(id)a6;
@end

@implementation IDSDecryptionMetadata

- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)a3 usedLastResortCache:(BOOL)a4 usedCachedData:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = IDSDecryptionMetadata;
  result = [(IDSDecryptionMetadata *)&v9 init];
  if (result)
  {
    result->_usedLastResortCache = a4;
    result->_encryptionType = a3;
    result->_usedCachedData = a5;
  }

  return result;
}

- (IDSDecryptionMetadata)initWithEncryptionType:(int64_t)a3 usedLastResortCache:(BOOL)a4 usedCachedData:(BOOL)a5 additionalDecryptionResult:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = IDSDecryptionMetadata;
  v12 = [(IDSDecryptionMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_usedLastResortCache = a4;
    v12->_encryptionType = a3;
    v12->_usedCachedData = a5;
    objc_storeStrong(&v12->_additionalDecryptionResult, a6);
  }

  return v13;
}

@end