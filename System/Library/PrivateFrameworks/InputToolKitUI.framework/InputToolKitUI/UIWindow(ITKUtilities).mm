@interface UIWindow(ITKUtilities)
- (double)itk_backingScaleFactor;
@end

@implementation UIWindow(ITKUtilities)

- (double)itk_backingScaleFactor
{
  screen = [self screen];
  [screen nativeScale];
  v3 = v2;

  return v3;
}

@end