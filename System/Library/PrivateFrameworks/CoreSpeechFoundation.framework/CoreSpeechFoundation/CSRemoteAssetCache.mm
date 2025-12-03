@interface CSRemoteAssetCache
- (CSRemoteAssetCache)initWithAsset:(id)asset languageCode:(id)code;
@end

@implementation CSRemoteAssetCache

- (CSRemoteAssetCache)initWithAsset:(id)asset languageCode:(id)code
{
  assetCopy = asset;
  codeCopy = code;
  v13.receiver = self;
  v13.super_class = CSRemoteAssetCache;
  v9 = [(CSRemoteAssetCache *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (assetCopy && codeCopy)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(p_isa + 2, code);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

@end