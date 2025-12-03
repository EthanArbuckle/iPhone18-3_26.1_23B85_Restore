@interface UIImage(CDSymbol)
- (double)cd_baselineOffsetFromBottom;
@end

@implementation UIImage(CDSymbol)

- (double)cd_baselineOffsetFromBottom
{
  if (![self _hasBaseline])
  {
    return 0.0;
  }

  [self _baselineOffsetFromBottom];
  return result;
}

@end