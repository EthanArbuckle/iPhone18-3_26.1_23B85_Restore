@interface NEFeedNavImageAssetHandle
- (NEFeedNavImageAssetHandle)init;
- (NEFeedNavImageAssetHandle)initWithIdentifier:(id)identifier feedNavImage:(id)image feedNavImageSize:(CGSize)size feedNavImageStyler:(id)styler scale:(double)scale;
- (NEFeedNavImageAssetHandle)initWithTag:(id)tag feedNavImageSize:(CGSize)size feedNavImageStyler:(id)styler scale:(double)scale overrideFallbackColor:(id)color;
@end

@implementation NEFeedNavImageAssetHandle

- (NEFeedNavImageAssetHandle)initWithIdentifier:(id)identifier feedNavImage:(id)image feedNavImageSize:(CGSize)size feedNavImageStyler:(id)styler scale:(double)scale
{
  height = size.height;
  width = size.width;
  v12 = sub_219BF5414();
  v14 = v13;
  imageCopy = image;
  swift_unknownObjectRetain();
  return FeedNavImageAssetHandle.init(identifier:feedNavImage:feedNavImageSize:feedNavImageStyler:scale:)(v12, v14, imageCopy, styler, width, height, scale);
}

- (NEFeedNavImageAssetHandle)initWithTag:(id)tag feedNavImageSize:(CGSize)size feedNavImageStyler:(id)styler scale:(double)scale overrideFallbackColor:(id)color
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  colorCopy = color;
  v14 = sub_219352F04(tag, styler, color, width, height, scale);
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