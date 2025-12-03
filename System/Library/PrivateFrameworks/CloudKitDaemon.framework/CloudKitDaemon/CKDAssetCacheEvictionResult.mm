@interface CKDAssetCacheEvictionResult
- (CKDAssetCacheEvictionResult)initWithBytesCount:(unint64_t)count purgedBytesCount:(unint64_t)bytesCount purgeableByteCount:(unint64_t)byteCount filesCount:(unint64_t)filesCount purgedFilesCount:(unint64_t)purgedFilesCount purgeableFilesCount:(unint64_t)purgeableFilesCount;
@end

@implementation CKDAssetCacheEvictionResult

- (CKDAssetCacheEvictionResult)initWithBytesCount:(unint64_t)count purgedBytesCount:(unint64_t)bytesCount purgeableByteCount:(unint64_t)byteCount filesCount:(unint64_t)filesCount purgedFilesCount:(unint64_t)purgedFilesCount purgeableFilesCount:(unint64_t)purgeableFilesCount
{
  v15.receiver = self;
  v15.super_class = CKDAssetCacheEvictionResult;
  result = [(CKDAssetCacheEvictionResult *)&v15 init];
  if (result)
  {
    result->_bytesCount = count;
    result->_purgedBytesCount = bytesCount;
    result->_purgeableBytesCount = byteCount;
    result->_filesCount = filesCount;
    result->_purgedFilesCount = purgedFilesCount;
    result->_purgeableFilesCount = purgeableFilesCount;
  }

  return result;
}

@end