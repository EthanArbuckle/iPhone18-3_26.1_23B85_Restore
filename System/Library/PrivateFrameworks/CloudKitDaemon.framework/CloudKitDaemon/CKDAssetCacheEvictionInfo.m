@interface CKDAssetCacheEvictionInfo
- (CKDAssetCacheEvictionInfo)initWithForced:(BOOL)a3;
@end

@implementation CKDAssetCacheEvictionInfo

- (CKDAssetCacheEvictionInfo)initWithForced:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = CKDAssetCacheEvictionInfo;
  v4 = [(CKDAssetCacheEvictionInfo *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_forced = a3;
    v6 = objc_opt_new();
    itemIDsToUnregister = v5->_itemIDsToUnregister;
    v5->_itemIDsToUnregister = v6;

    v8 = objc_opt_new();
    assetHandleItemIDsToDelete = v5->_assetHandleItemIDsToDelete;
    v5->_assetHandleItemIDsToDelete = v8;
  }

  return v5;
}

@end