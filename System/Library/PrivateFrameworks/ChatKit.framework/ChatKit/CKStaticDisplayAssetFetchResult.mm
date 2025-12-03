@interface CKStaticDisplayAssetFetchResult
- (CKStaticDisplayAssetFetchResult)initWithAssets:(id)assets;
@end

@implementation CKStaticDisplayAssetFetchResult

- (CKStaticDisplayAssetFetchResult)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v9.receiver = self;
  v9.super_class = CKStaticDisplayAssetFetchResult;
  v5 = [(CKStaticDisplayAssetFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [assetsCopy copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end