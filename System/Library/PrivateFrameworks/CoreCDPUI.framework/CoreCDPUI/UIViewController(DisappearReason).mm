@interface UIViewController(DisappearReason)
- (uint64_t)isDisappearingDueToPop;
@end

@implementation UIViewController(DisappearReason)

- (uint64_t)isDisappearingDueToPop
{
  v2 = [a1 navigationController];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 containsObject:a1] ^ 1;

  return v5;
}

@end