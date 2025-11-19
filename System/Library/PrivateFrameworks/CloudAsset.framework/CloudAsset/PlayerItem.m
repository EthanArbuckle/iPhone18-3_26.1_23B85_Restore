@interface PlayerItem
- (_TtC10CloudAsset10PlayerItem)initWithAsset:(id)a3 automaticallyLoadedAssetKeys:(id)a4;
- (id)copyWithZone:(void *)a3;
@end

@implementation PlayerItem

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_22E71CA1C(v6);

  sub_22E6CF214(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_22E6CF2F4(v6);
  return v4;
}

- (_TtC10CloudAsset10PlayerItem)initWithAsset:(id)a3 automaticallyLoadedAssetKeys:(id)a4
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a3;
  PlayerItem.init(asset:automaticallyLoadedAssetKeys:)();
}

@end