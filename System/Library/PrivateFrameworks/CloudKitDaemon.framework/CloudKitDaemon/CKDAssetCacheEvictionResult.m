@interface CKDAssetCacheEvictionResult
- (CKDAssetCacheEvictionResult)initWithBytesCount:(unint64_t)a3 purgedBytesCount:(unint64_t)a4 purgeableByteCount:(unint64_t)a5 filesCount:(unint64_t)a6 purgedFilesCount:(unint64_t)a7 purgeableFilesCount:(unint64_t)a8;
@end

@implementation CKDAssetCacheEvictionResult

- (CKDAssetCacheEvictionResult)initWithBytesCount:(unint64_t)a3 purgedBytesCount:(unint64_t)a4 purgeableByteCount:(unint64_t)a5 filesCount:(unint64_t)a6 purgedFilesCount:(unint64_t)a7 purgeableFilesCount:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = CKDAssetCacheEvictionResult;
  result = [(CKDAssetCacheEvictionResult *)&v15 init];
  if (result)
  {
    result->_bytesCount = a3;
    result->_purgedBytesCount = a4;
    result->_purgeableBytesCount = a5;
    result->_filesCount = a6;
    result->_purgedFilesCount = a7;
    result->_purgeableFilesCount = a8;
  }

  return result;
}

@end