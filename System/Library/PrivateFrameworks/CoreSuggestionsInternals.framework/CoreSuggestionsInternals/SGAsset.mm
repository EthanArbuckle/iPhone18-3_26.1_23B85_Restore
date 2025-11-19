@interface SGAsset
+ (id)asset;
@end

@implementation SGAsset

+ (id)asset
{
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_42520);
  }

  v3 = assetInstance;

  return v3;
}

@end