@interface _FBSCDHashCacheInfo
+ (_FBSCDHashCacheInfo)cacheInfoWithData:(id)a3 hashType:(unsigned int)a4;
@end

@implementation _FBSCDHashCacheInfo

+ (_FBSCDHashCacheInfo)cacheInfoWithData:(id)a3 hashType:(unsigned int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_FBSCDHashCacheInfo);
  cachedCodeDirectoryHash = v6->_cachedCodeDirectoryHash;
  v6->_cachedCodeDirectoryHash = v5;

  v6->_cachedCodeDirectoryHashType = a4;

  return v6;
}

@end