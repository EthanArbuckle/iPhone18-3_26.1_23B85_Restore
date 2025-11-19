@interface PlayerItem
- (_TtC11CloudAssets10PlayerItem)initWithAsset:(id)a3 automaticallyLoadedAssetKeys:(id)a4;
- (id)copyWithZone:(void *)a3;
@end

@implementation PlayerItem

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_243798AE8(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_2437ABE2C();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (_TtC11CloudAssets10PlayerItem)initWithAsset:(id)a3 automaticallyLoadedAssetKeys:(id)a4
{
  if (a4)
  {
    sub_2437ABB1C();
  }

  v5 = a3;
  PlayerItem.init(asset:automaticallyLoadedAssetKeys:)();
}

@end