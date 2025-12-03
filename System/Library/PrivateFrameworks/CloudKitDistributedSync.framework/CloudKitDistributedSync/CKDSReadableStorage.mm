@interface CKDSReadableStorage
- (CKDSReadableStorage)initWithFileURL:(id)l;
@end

@implementation CKDSReadableStorage

- (CKDSReadableStorage)initWithFileURL:(id)l
{
  lCopy = l;
  v5 = [CKDSStorageFile alloc];
  isOwned = objc_msgSend_initWithURL_isOwned_(v5, v6, lCopy, 0, v7, v8, v9);

  v14 = objc_msgSend_initForWriting_withFile_orData_(self, v11, 0, isOwned, 0, v12, v13);
  return v14;
}

@end