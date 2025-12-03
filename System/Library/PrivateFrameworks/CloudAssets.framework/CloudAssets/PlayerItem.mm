@interface PlayerItem
- (_TtC11CloudAssets10PlayerItem)initWithAsset:(id)asset automaticallyLoadedAssetKeys:(id)keys;
- (id)copyWithZone:(void *)zone;
@end

@implementation PlayerItem

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_243798AE8(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_2437ABE2C();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (_TtC11CloudAssets10PlayerItem)initWithAsset:(id)asset automaticallyLoadedAssetKeys:(id)keys
{
  if (keys)
  {
    sub_2437ABB1C();
  }

  assetCopy = asset;
  PlayerItem.init(asset:automaticallyLoadedAssetKeys:)();
}

@end