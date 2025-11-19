@interface CAMPIPVideoPreviewView
+ (CGSize)sizeForViewportSize:(CGSize)a3;
+ (UIEdgeInsets)pipInsetForViewportSize:(CGSize)a3;
+ (UIEdgeInsets)pipOutsetForViewportSize:(CGSize)a3;
@end

@implementation CAMPIPVideoPreviewView

+ (CGSize)sizeForViewportSize:(CGSize)a3
{
  v3 = a3.width * 0.333333333;
  v4 = v3 * 4.0 / 3.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (UIEdgeInsets)pipInsetForViewportSize:(CGSize)a3
{
  v3 = a3.height / 1920.0 * 32.0;
  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (UIEdgeInsets)pipOutsetForViewportSize:(CGSize)a3
{
  [a1 pipInsetForViewportSize:{a3.width, a3.height}];
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