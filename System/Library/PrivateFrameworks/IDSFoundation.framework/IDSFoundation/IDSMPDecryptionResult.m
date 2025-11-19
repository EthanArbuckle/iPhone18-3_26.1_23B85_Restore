@interface IDSMPDecryptionResult
- (IDSMPDecryptionResult)initWithData:(id)a3 encryptedAttributes:(id)a4 withCommitState:(id)a5 additionalDecryptionResult:(id)a6;
@end

@implementation IDSMPDecryptionResult

- (IDSMPDecryptionResult)initWithData:(id)a3 encryptedAttributes:(id)a4 withCommitState:(id)a5 additionalDecryptionResult:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = IDSMPDecryptionResult;
  v15 = [(IDSMPDecryptionResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_decryptedData, a3);
    objc_storeStrong(&v16->_encryptedAttributes, a4);
    v17 = _Block_copy(v13);
    commitBlock = v16->_commitBlock;
    v16->_commitBlock = v17;

    objc_storeStrong(&v16->_additionalDecryptionResult, a6);
  }

  return v16;
}

@end