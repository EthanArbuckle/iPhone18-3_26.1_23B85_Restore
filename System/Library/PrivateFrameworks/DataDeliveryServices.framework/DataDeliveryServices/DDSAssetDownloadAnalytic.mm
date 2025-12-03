@interface DDSAssetDownloadAnalytic
- (DDSAssetDownloadAnalytic)initWithAsset:(id)asset;
@end

@implementation DDSAssetDownloadAnalytic

- (DDSAssetDownloadAnalytic)initWithAsset:(id)asset
{
  assetCopy = asset;
  uniqueIdentifier = [assetCopy uniqueIdentifier];
  v9.receiver = self;
  v9.super_class = DDSAssetDownloadAnalytic;
  v7 = [(DDSTimedAnalytic *)&v9 initWithIdentifier:uniqueIdentifier];

  if (v7)
  {
    objc_storeStrong(&v7->_asset, asset);
  }

  return v7;
}

@end