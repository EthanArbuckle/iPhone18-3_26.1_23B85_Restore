@interface CKStaticDisplayAssetFetchResult
- (CKStaticDisplayAssetFetchResult)initWithAssets:(id)a3;
@end

@implementation CKStaticDisplayAssetFetchResult

- (CKStaticDisplayAssetFetchResult)initWithAssets:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKStaticDisplayAssetFetchResult;
  v5 = [(CKStaticDisplayAssetFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end