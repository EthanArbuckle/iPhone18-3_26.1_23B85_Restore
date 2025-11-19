@interface UIView(MRUUtilities)
- (uint64_t)mr_tightBoundingRectOfFirstLine;
@end

@implementation UIView(MRUUtilities)

- (uint64_t)mr_tightBoundingRectOfFirstLine
{
  if (objc_opt_respondsToSelector())
  {
    return [a1 _tightBoundingRectOfFirstLine];
  }

  if (objc_opt_respondsToSelector())
  {
    return [a1 _deviceRectOfFirstLine];
  }

  return [a1 frame];
}

@end