@interface NEFeedNavImageAssetHandle
- (NEFeedNavImageAssetHandle)init;
- (NEFeedNavImageAssetHandle)initWithIdentifier:(id)a3 feedNavImage:(id)a4 feedNavImageSize:(CGSize)a5 feedNavImageStyler:(id)a6 scale:(double)a7;
- (NEFeedNavImageAssetHandle)initWithTag:(id)a3 feedNavImageSize:(CGSize)a4 feedNavImageStyler:(id)a5 scale:(double)a6 overrideFallbackColor:(id)a7;
@end

@implementation NEFeedNavImageAssetHandle

- (NEFeedNavImageAssetHandle)initWithIdentifier:(id)a3 feedNavImage:(id)a4 feedNavImageSize:(CGSize)a5 feedNavImageStyler:(id)a6 scale:(double)a7
{
  height = a5.height;
  width = a5.width;
  v12 = sub_219BF5414();
  v14 = v13;
  v15 = a4;
  swift_unknownObjectRetain();
  return FeedNavImageAssetHandle.init(identifier:feedNavImage:feedNavImageSize:feedNavImageStyler:scale:)(v12, v14, v15, a6, width, height, a7);
}

- (NEFeedNavImageAssetHandle)initWithTag:(id)a3 feedNavImageSize:(CGSize)a4 feedNavImageStyler:(id)a5 scale:(double)a6 overrideFallbackColor:(id)a7
{
  height = a4.height;
  width = a4.width;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a7;
  v14 = sub_219352F04(a3, a5, a7, width, height, a6);
  swift_unknownObjectRelease();
  return v14;
}

- (NEFeedNavImageAssetHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end