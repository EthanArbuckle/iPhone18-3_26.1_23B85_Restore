@interface UIView(MRUUtilities)
- (uint64_t)mr_tightBoundingRectOfFirstLine;
@end

@implementation UIView(MRUUtilities)

- (uint64_t)mr_tightBoundingRectOfFirstLine
{
  if (objc_opt_respondsToSelector())
  {
    return [self _tightBoundingRectOfFirstLine];
  }

  if (objc_opt_respondsToSelector())
  {
    return [self _deviceRectOfFirstLine];
  }

  return [self frame];
}

@end