@interface PlayerItem
- (_TtC10CloudAsset10PlayerItem)initWithAsset:(id)asset automaticallyLoadedAssetKeys:(id)keys;
- (id)copyWithZone:(void *)zone;
@end

@implementation PlayerItem

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_22E71CA1C(v6);

  sub_22E6CF214(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_22E6CF2F4(v6);
  return v4;
}

- (_TtC10CloudAsset10PlayerItem)initWithAsset:(id)asset automaticallyLoadedAssetKeys:(id)keys
{
  if (keys)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  assetCopy = asset;
  PlayerItem.init(asset:automaticallyLoadedAssetKeys:)();
}

@end