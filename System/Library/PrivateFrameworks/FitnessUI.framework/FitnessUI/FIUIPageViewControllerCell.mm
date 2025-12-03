@interface FIUIPageViewControllerCell
- (void)setViewController:(id)controller;
@end

@implementation FIUIPageViewControllerCell

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  viewController = self->_viewController;
  if (viewController != controllerCopy)
  {
    v9 = controllerCopy;
    v7 = viewController;
    [(UIViewController *)v7 willMoveToParentViewController:0];
    view = [(UIViewController *)v7 view];
    [view removeFromSuperview];

    [(UIViewController *)v7 removeFromParentViewController];
    objc_storeStrong(&self->_viewController, controller);

    controllerCopy = v9;
  }
}

@end