@interface StyleSupport
+ (CGSize)appDefaultSize;
+ (CGSize)appMaxSize;
+ (CGSize)appMinSize;
+ (CGSize)compactAppDefaultSize;
+ (CGSize)compactAppMaxSize;
+ (CGSize)compactAppMinSize;
+ (CGSize)effectCellImageSize;
+ (CGSize)quickLookSceneDefaultSize;
- (_TtC7ChatKit12StyleSupport)init;
@end

@implementation StyleSupport

+ (CGSize)appMinSize
{
  v2 = 820.0;
  v3 = 540.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)appMaxSize
{
  v2 = 1100.0;
  v3 = 1080.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)appDefaultSize
{
  v2 = 880.0;
  v3 = 720.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)compactAppMinSize
{
  v2 = 440.0;
  v3 = 540.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)compactAppMaxSize
{
  v2 = 720.0;
  v3 = 1080.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)compactAppDefaultSize
{
  v2 = 500.0;
  v3 = 720.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)quickLookSceneDefaultSize
{
  v2 = 392.0;
  v3 = 720.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)effectCellImageSize
{
  v2 = 107.0;
  v3 = 107.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC7ChatKit12StyleSupport)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StyleSupport();
  return [(StyleSupport *)&v3 init];
}

@end