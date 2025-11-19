@interface UINavigationController(NanoPassKitUI)
- (BOOL)npkHasViewControllerWithKindOfClass:()NanoPassKitUI;
@end

@implementation UINavigationController(NanoPassKitUI)

- (BOOL)npkHasViewControllerWithKindOfClass:()NanoPassKitUI
{
  v4 = [a1 viewControllers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__UINavigationController_NanoPassKitUI__npkHasViewControllerWithKindOfClass___block_invoke;
  v8[3] = &__block_descriptor_40_e26_B16__0__UIViewController_8lu32l8;
  v8[4] = a3;
  v5 = [v4 npkFindFirstObjectMatchingCondition:v8];
  v6 = v5 != 0;

  return v6;
}

@end