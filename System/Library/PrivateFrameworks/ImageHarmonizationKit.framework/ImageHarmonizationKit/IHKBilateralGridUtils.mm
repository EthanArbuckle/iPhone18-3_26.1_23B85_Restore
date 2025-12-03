@interface IHKBilateralGridUtils
+ (CGImage)autoApplyGridBufferWithGridBuffer:(vImage_Buffer *)buffer image:(CGImage *)image assume_BGRA_sRGB:(BOOL)b gridStrength:(float)strength;
- (_TtC21ImageHarmonizationKit21IHKBilateralGridUtils)init;
@end

@implementation IHKBilateralGridUtils

+ (CGImage)autoApplyGridBufferWithGridBuffer:(vImage_Buffer *)buffer image:(CGImage *)image assume_BGRA_sRGB:(BOOL)b gridStrength:(float)strength
{
  data = buffer->data;
  height = buffer->height;
  width = buffer->width;
  rowBytes = buffer->rowBytes;
  imageCopy = image;
  v13 = sub_254AE5050(data, height, width, rowBytes, imageCopy, b, strength);

  return v13;
}

- (_TtC21ImageHarmonizationKit21IHKBilateralGridUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IHKBilateralGridUtils();
  return [(IHKBilateralGridUtils *)&v3 init];
}

@end