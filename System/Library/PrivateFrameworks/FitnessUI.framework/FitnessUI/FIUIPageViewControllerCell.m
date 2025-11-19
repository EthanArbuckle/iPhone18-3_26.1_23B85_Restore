@interface FIUIPageViewControllerCell
- (void)setViewController:(id)a3;
@end

@implementation FIUIPageViewControllerCell

- (void)setViewController:(id)a3
{
  v5 = a3;
  viewController = self->_viewController;
  if (viewController != v5)
  {
    v9 = v5;
    v7 = viewController;
    [(UIViewController *)v7 willMoveToParentViewController:0];
    v8 = [(UIViewController *)v7 view];
    [v8 removeFromSuperview];

    [(UIViewController *)v7 removeFromParentViewController];
    objc_storeStrong(&self->_viewController, a3);

    v5 = v9;
  }
}

@end