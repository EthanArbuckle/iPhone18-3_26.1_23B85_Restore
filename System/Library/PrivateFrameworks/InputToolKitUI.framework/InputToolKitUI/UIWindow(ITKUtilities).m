@interface UIWindow(ITKUtilities)
- (double)itk_backingScaleFactor;
@end

@implementation UIWindow(ITKUtilities)

- (double)itk_backingScaleFactor
{
  v1 = [a1 screen];
  [v1 nativeScale];
  v3 = v2;

  return v3;
}

@end