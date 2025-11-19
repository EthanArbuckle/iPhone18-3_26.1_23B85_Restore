@interface CKDSReadableStorage
- (CKDSReadableStorage)initWithFileURL:(id)a3;
@end

@implementation CKDSReadableStorage

- (CKDSReadableStorage)initWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [CKDSStorageFile alloc];
  isOwned = objc_msgSend_initWithURL_isOwned_(v5, v6, v4, 0, v7, v8, v9);

  v14 = objc_msgSend_initForWriting_withFile_orData_(self, v11, 0, isOwned, 0, v12, v13);
  return v14;
}

@end