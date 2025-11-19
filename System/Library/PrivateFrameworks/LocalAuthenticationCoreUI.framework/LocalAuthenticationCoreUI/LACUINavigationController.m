@interface LACUINavigationController
- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3;
@end

@implementation LACUINavigationController

- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = LACUINavigationController;
  [(LACUINavigationController *)&v5 _preferredContentSizeDidChangeForChildViewController:v4];
  if ([(LACUINavigationController *)self shouldTrackPreferredContentSize])
  {
    [v4 preferredContentSize];
    [(LACUINavigationController *)self setPreferredContentSize:?];
  }
}

@end