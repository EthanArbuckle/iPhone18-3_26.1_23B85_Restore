@interface _FBSCDHashCacheInfo
+ (_FBSCDHashCacheInfo)cacheInfoWithData:(id)data hashType:(unsigned int)type;
@end

@implementation _FBSCDHashCacheInfo

+ (_FBSCDHashCacheInfo)cacheInfoWithData:(id)data hashType:(unsigned int)type
{
  dataCopy = data;
  v6 = objc_alloc_init(_FBSCDHashCacheInfo);
  cachedCodeDirectoryHash = v6->_cachedCodeDirectoryHash;
  v6->_cachedCodeDirectoryHash = dataCopy;

  v6->_cachedCodeDirectoryHashType = type;

  return v6;
}

@end