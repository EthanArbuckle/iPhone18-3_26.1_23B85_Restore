@interface CAMPIPVideoPreviewView
+ (CGSize)sizeForViewportSize:(CGSize)size;
+ (UIEdgeInsets)pipInsetForViewportSize:(CGSize)size;
+ (UIEdgeInsets)pipOutsetForViewportSize:(CGSize)size;
@end

@implementation CAMPIPVideoPreviewView

+ (CGSize)sizeForViewportSize:(CGSize)size
{
  v3 = size.width * 0.333333333;
  v4 = v3 * 4.0 / 3.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (UIEdgeInsets)pipInsetForViewportSize:(CGSize)size
{
  v3 = size.height / 1920.0 * 32.0;
  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (UIEdgeInsets)pipOutsetForViewportSize:(CGSize)size
{
  [self pipInsetForViewportSize:{size.width, size.height}];
  v4 = -v3;
  v6 = -v5;
  v8 = -v7;
  v10 = -v9;
  result.right = v6;
  result.bottom = v10;
  result.left = v4;
  result.top = v8;
  return result;
}

@end