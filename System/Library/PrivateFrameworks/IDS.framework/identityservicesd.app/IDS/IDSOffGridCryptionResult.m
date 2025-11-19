@interface IDSOffGridCryptionResult
- (IDSOffGridCryptionResult)initWithDecryptedData:(id)a3 key:(id)a4 originalRecipientURI:(id)a5 error:(id)a6;
- (IDSOffGridCryptionResult)initWithEncryptedData:(id)a3 keyIndex:(unsigned int)a4 key:(id)a5 keyID:(id)a6 authTag:(id)a7 error:(id)a8;
@end

@implementation IDSOffGridCryptionResult

- (IDSOffGridCryptionResult)initWithEncryptedData:(id)a3 keyIndex:(unsigned int)a4 key:(id)a5 keyID:(id)a6 authTag:(id)a7 error:(id)a8
{
  v22 = a3;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = IDSOffGridCryptionResult;
  v18 = [(IDSOffGridCryptionResult *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_encryptedData, a3);
    v19->_keyIndex = a4;
    objc_storeStrong(&v19->_key, a5);
    objc_storeStrong(&v19->_keyID, a6);
    objc_storeStrong(&v19->_authTag, a7);
    objc_storeStrong(&v19->_error, a8);
  }

  return v19;
}

- (IDSOffGridCryptionResult)initWithDecryptedData:(id)a3 key:(id)a4 originalRecipientURI:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSOffGridCryptionResult;
  v15 = [(IDSOffGridCryptionResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_decryptedData, a3);
    objc_storeStrong(&v16->_key, a4);
    objc_storeStrong(&v16->_originalRecipientURI, a5);
    objc_storeStrong(&v16->_error, a6);
  }

  return v16;
}

@end