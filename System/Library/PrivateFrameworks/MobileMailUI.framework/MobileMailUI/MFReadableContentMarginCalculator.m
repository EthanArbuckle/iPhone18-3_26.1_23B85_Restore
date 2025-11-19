@interface MFReadableContentMarginCalculator
+ (UIEdgeInsets)readableContentMarginsForWidth:(double)a3 minMargins:(UIEdgeInsets)a4 safeAreaInsets:(UIEdgeInsets)a5;
@end

@implementation MFReadableContentMarginCalculator

+ (UIEdgeInsets)readableContentMarginsForWidth:(double)a3 minMargins:(UIEdgeInsets)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  [MEMORY[0x277D74300] _readableWidth];
  UIRoundToViewScale();
  if (v9 >= left)
  {
    v10 = v9;
  }

  else
  {
    v10 = left;
  }

  if (v9 >= right)
  {
    v11 = v9;
  }

  else
  {
    v11 = right;
  }

  v12 = fmax(top, 0.0);
  v13 = fmax(bottom, 0.0);
  result.right = v11;
  result.bottom = v13;
  result.left = v10;
  result.top = v12;
  return result;
}

@end