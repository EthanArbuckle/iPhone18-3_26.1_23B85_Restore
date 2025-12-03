@interface DDSMAAsset
- (BOOL)isEqual:(id)equal;
- (DDSMAAsset)initWithMAAsset:(id)asset;
@end

@implementation DDSMAAsset

- (DDSMAAsset)initWithMAAsset:(id)asset
{
  assetCopy = asset;
  attributes = [assetCopy attributes];
  v7 = [attributes mutableCopy];

  assetType2 = [v7 objectForKey:@"AssetType"];
  if (!assetType2)
  {
    assetType = [assetCopy assetType];

    if (!assetType)
    {
      goto LABEL_5;
    }

    assetType2 = [assetCopy assetType];
    [v7 setObject:assetType2 forKey:@"AssetType"];
  }

LABEL_5:
  getLocalUrl = [assetCopy getLocalUrl];
  v13.receiver = self;
  v13.super_class = DDSMAAsset;
  v11 = [(DDSAsset *)&v13 initWithAttributes:v7 localURL:getLocalUrl];

  if (v11)
  {
    objc_storeStrong(&v11->_maAsset, asset);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v11.receiver = self, v11.super_class = DDSMAAsset, [(DDSAsset *)&v11 isEqual:equalCopy]))
  {
    maAsset = [(DDSMAAsset *)self maAsset];
    maAsset2 = [v6 maAsset];
    v9 = DDSObjectsAreEqualOrNil(maAsset, maAsset2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end