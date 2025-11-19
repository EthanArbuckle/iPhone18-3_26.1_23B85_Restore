@interface IDSMMCSUploadResult
- (IDSMMCSUploadResult)initWithEncryptedResult:(id)a3 dataLength:(id)a4 fileCleanupBlock:(id)a5;
@end

@implementation IDSMMCSUploadResult

- (IDSMMCSUploadResult)initWithEncryptedResult:(id)a3 dataLength:(id)a4 fileCleanupBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = IDSMMCSUploadResult;
  v12 = [(IDSMMCSUploadResult *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encryptedResult, a3);
    objc_storeStrong(&v13->_dataLength, a4);
    v14 = objc_retainBlock(v11);
    fileCleanupBlock = v13->_fileCleanupBlock;
    v13->_fileCleanupBlock = v14;
  }

  return v13;
}

@end