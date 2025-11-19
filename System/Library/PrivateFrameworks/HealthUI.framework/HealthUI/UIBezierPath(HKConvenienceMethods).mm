@interface UIBezierPath(HKConvenienceMethods)
- (id)hk_firstPoint;
- (void)hk_applyBlock:()HKConvenienceMethods;
@end

@implementation UIBezierPath(HKConvenienceMethods)

- (void)hk_applyBlock:()HKConvenienceMethods
{
  v5 = a1;
  info = a3;
  CGPathApply([a1 CGPath], info, _RunBlockForPointsInPath);
}

- (id)hk_firstPoint
{
  if ([a1 isEmpty])
  {
    v2 = 0;
  }

  else
  {
    v3 = objc_opt_new();
    CGPathApply([a1 CGPath], v3, _FindFirstPoint);
    v2 = [v3 lastObject];
  }

  return v2;
}

@end