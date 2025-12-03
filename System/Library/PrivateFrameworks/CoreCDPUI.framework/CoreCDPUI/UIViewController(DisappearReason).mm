@interface UIViewController(DisappearReason)
- (uint64_t)isDisappearingDueToPop;
@end

@implementation UIViewController(DisappearReason)

- (uint64_t)isDisappearingDueToPop
{
  navigationController = [self navigationController];

  if (!navigationController)
  {
    return 0;
  }

  navigationController2 = [self navigationController];
  viewControllers = [navigationController2 viewControllers];
  v5 = [viewControllers containsObject:self] ^ 1;

  return v5;
}

@end