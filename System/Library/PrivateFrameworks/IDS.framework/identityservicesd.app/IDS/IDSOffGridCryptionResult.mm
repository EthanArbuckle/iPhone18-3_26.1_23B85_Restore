@interface IDSOffGridCryptionResult
- (IDSOffGridCryptionResult)initWithDecryptedData:(id)data key:(id)key originalRecipientURI:(id)i error:(id)error;
- (IDSOffGridCryptionResult)initWithEncryptedData:(id)data keyIndex:(unsigned int)index key:(id)key keyID:(id)d authTag:(id)tag error:(id)error;
@end

@implementation IDSOffGridCryptionResult

- (IDSOffGridCryptionResult)initWithEncryptedData:(id)data keyIndex:(unsigned int)index key:(id)key keyID:(id)d authTag:(id)tag error:(id)error
{
  dataCopy = data;
  keyCopy = key;
  dCopy = d;
  tagCopy = tag;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = IDSOffGridCryptionResult;
  v18 = [(IDSOffGridCryptionResult *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_encryptedData, data);
    v19->_keyIndex = index;
    objc_storeStrong(&v19->_key, key);
    objc_storeStrong(&v19->_keyID, d);
    objc_storeStrong(&v19->_authTag, tag);
    objc_storeStrong(&v19->_error, error);
  }

  return v19;
}

- (IDSOffGridCryptionResult)initWithDecryptedData:(id)data key:(id)key originalRecipientURI:(id)i error:(id)error
{
  dataCopy = data;
  keyCopy = key;
  iCopy = i;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = IDSOffGridCryptionResult;
  v15 = [(IDSOffGridCryptionResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_decryptedData, data);
    objc_storeStrong(&v16->_key, key);
    objc_storeStrong(&v16->_originalRecipientURI, i);
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

@end