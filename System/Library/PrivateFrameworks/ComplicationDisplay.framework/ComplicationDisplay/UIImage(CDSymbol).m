@interface UIImage(CDSymbol)
- (double)cd_baselineOffsetFromBottom;
@end

@implementation UIImage(CDSymbol)

- (double)cd_baselineOffsetFromBottom
{
  if (![a1 _hasBaseline])
  {
    return 0.0;
  }

  [a1 _baselineOffsetFromBottom];
  return result;
}

@end