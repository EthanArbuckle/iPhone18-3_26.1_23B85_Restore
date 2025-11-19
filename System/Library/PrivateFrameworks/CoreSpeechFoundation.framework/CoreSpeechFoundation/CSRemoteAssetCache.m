@interface CSRemoteAssetCache
- (CSRemoteAssetCache)initWithAsset:(id)a3 languageCode:(id)a4;
@end

@implementation CSRemoteAssetCache

- (CSRemoteAssetCache)initWithAsset:(id)a3 languageCode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CSRemoteAssetCache;
  v9 = [(CSRemoteAssetCache *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v7 && v8)
  {
    objc_storeStrong(&v9->_asset, a3);
    objc_storeStrong(p_isa + 2, a4);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

@end