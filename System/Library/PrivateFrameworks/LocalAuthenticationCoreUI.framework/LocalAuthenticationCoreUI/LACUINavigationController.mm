@interface LACUINavigationController
- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller;
@end

@implementation LACUINavigationController

- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller
{
  controllerCopy = controller;
  v5.receiver = self;
  v5.super_class = LACUINavigationController;
  [(LACUINavigationController *)&v5 _preferredContentSizeDidChangeForChildViewController:controllerCopy];
  if ([(LACUINavigationController *)self shouldTrackPreferredContentSize])
  {
    [controllerCopy preferredContentSize];
    [(LACUINavigationController *)self setPreferredContentSize:?];
  }
}

@end