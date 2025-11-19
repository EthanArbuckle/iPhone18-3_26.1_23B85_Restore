@interface HKViewController
- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation HKViewController

- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9 = [(HKViewController *)self navigationController];
  v7 = [(HKViewController *)self tabBarController];
  if (v9)
  {
    [v9 setNavigationBarHidden:v5 animated:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setTabBarControlsHidden:v5 animated:v4];
  }

  else
  {
    v8 = [v7 tabBar];
    [v8 setHidden:v5];
  }
}

@end