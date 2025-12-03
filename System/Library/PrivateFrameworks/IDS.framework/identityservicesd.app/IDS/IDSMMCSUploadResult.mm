@interface IDSMMCSUploadResult
- (IDSMMCSUploadResult)initWithEncryptedResult:(id)result dataLength:(id)length fileCleanupBlock:(id)block;
@end

@implementation IDSMMCSUploadResult

- (IDSMMCSUploadResult)initWithEncryptedResult:(id)result dataLength:(id)length fileCleanupBlock:(id)block
{
  resultCopy = result;
  lengthCopy = length;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = IDSMMCSUploadResult;
  v12 = [(IDSMMCSUploadResult *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encryptedResult, result);
    objc_storeStrong(&v13->_dataLength, length);
    v14 = objc_retainBlock(blockCopy);
    fileCleanupBlock = v13->_fileCleanupBlock;
    v13->_fileCleanupBlock = v14;
  }

  return v13;
}

@end