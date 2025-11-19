@interface DDSAssetDownloadAnalytic
- (DDSAssetDownloadAnalytic)initWithAsset:(id)a3;
@end

@implementation DDSAssetDownloadAnalytic

- (DDSAssetDownloadAnalytic)initWithAsset:(id)a3
{
  v5 = a3;
  v6 = [v5 uniqueIdentifier];
  v9.receiver = self;
  v9.super_class = DDSAssetDownloadAnalytic;
  v7 = [(DDSTimedAnalytic *)&v9 initWithIdentifier:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_asset, a3);
  }

  return v7;
}

@end