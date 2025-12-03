@interface UIBezierPath(HKConvenienceMethods)
- (id)hk_firstPoint;
- (void)hk_applyBlock:()HKConvenienceMethods;
@end

@implementation UIBezierPath(HKConvenienceMethods)

- (void)hk_applyBlock:()HKConvenienceMethods
{
  selfCopy = self;
  info = a3;
  CGPathApply([self CGPath], info, _RunBlockForPointsInPath);
}

- (id)hk_firstPoint
{
  if ([self isEmpty])
  {
    lastObject = 0;
  }

  else
  {
    v3 = objc_opt_new();
    CGPathApply([self CGPath], v3, _FindFirstPoint);
    lastObject = [v3 lastObject];
  }

  return lastObject;
}

@end