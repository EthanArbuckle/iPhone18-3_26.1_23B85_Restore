@interface MFReadableContentMarginCalculator
+ (UIEdgeInsets)readableContentMarginsForWidth:(double)width minMargins:(UIEdgeInsets)margins safeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation MFReadableContentMarginCalculator

+ (UIEdgeInsets)readableContentMarginsForWidth:(double)width minMargins:(UIEdgeInsets)margins safeAreaInsets:(UIEdgeInsets)insets
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
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