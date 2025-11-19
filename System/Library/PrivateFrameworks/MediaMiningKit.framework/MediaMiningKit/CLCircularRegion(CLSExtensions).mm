@interface CLCircularRegion(CLSExtensions)
- (double)clsHorizontalAccuracy;
- (void)setClsHorizontalAccuracy:()CLSExtensions;
@end

@implementation CLCircularRegion(CLSExtensions)

- (double)clsHorizontalAccuracy
{
  v1 = objc_getAssociatedObject(a1, "clsHorizontalAccuracy");
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)setClsHorizontalAccuracy:()CLSExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(a1, "clsHorizontalAccuracy", v2, 1);
}

@end