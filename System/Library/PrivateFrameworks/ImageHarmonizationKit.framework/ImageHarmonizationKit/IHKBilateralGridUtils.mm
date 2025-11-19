@interface IHKBilateralGridUtils
+ (CGImage)autoApplyGridBufferWithGridBuffer:(vImage_Buffer *)a3 image:(CGImage *)a4 assume_BGRA_sRGB:(BOOL)a5 gridStrength:(float)a6;
- (_TtC21ImageHarmonizationKit21IHKBilateralGridUtils)init;
@end

@implementation IHKBilateralGridUtils

+ (CGImage)autoApplyGridBufferWithGridBuffer:(vImage_Buffer *)a3 image:(CGImage *)a4 assume_BGRA_sRGB:(BOOL)a5 gridStrength:(float)a6
{
  data = a3->data;
  height = a3->height;
  width = a3->width;
  rowBytes = a3->rowBytes;
  v12 = a4;
  v13 = sub_254AE5050(data, height, width, rowBytes, v12, a5, a6);

  return v13;
}

- (_TtC21ImageHarmonizationKit21IHKBilateralGridUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IHKBilateralGridUtils();
  return [(IHKBilateralGridUtils *)&v3 init];
}

@end