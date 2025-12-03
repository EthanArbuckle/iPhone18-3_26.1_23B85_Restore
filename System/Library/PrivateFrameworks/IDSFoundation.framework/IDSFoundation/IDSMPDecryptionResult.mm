@interface IDSMPDecryptionResult
- (IDSMPDecryptionResult)initWithData:(id)data encryptedAttributes:(id)attributes withCommitState:(id)state additionalDecryptionResult:(id)result;
@end

@implementation IDSMPDecryptionResult

- (IDSMPDecryptionResult)initWithData:(id)data encryptedAttributes:(id)attributes withCommitState:(id)state additionalDecryptionResult:(id)result
{
  dataCopy = data;
  attributesCopy = attributes;
  stateCopy = state;
  resultCopy = result;
  v20.receiver = self;
  v20.super_class = IDSMPDecryptionResult;
  v15 = [(IDSMPDecryptionResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_decryptedData, data);
    objc_storeStrong(&v16->_encryptedAttributes, attributes);
    v17 = _Block_copy(stateCopy);
    commitBlock = v16->_commitBlock;
    v16->_commitBlock = v17;

    objc_storeStrong(&v16->_additionalDecryptionResult, result);
  }

  return v16;
}

@end