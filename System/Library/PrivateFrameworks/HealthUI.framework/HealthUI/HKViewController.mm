@interface HKViewController
- (void)setControlsHidden:(BOOL)hidden animated:(BOOL)animated;
@end

@implementation HKViewController

- (void)setControlsHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  navigationController = [(HKViewController *)self navigationController];
  tabBarController = [(HKViewController *)self tabBarController];
  if (navigationController)
  {
    [navigationController setNavigationBarHidden:hiddenCopy animated:animatedCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [tabBarController setTabBarControlsHidden:hiddenCopy animated:animatedCopy];
  }

  else
  {
    tabBar = [tabBarController tabBar];
    [tabBar setHidden:hiddenCopy];
  }
}

@end