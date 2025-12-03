@interface SUUIPreviewContainerViewController
- (void)setChildViewController:(id)controller;
@end

@implementation SUUIPreviewContainerViewController

- (void)setChildViewController:(id)controller
{
  controllerCopy = controller;
  childViewController = self->_childViewController;
  if (childViewController)
  {
    [(UIViewController *)childViewController removeFromParentViewController];
    view = [(UIViewController *)self->_childViewController view];
    [view removeFromSuperview];

    [(SUUIPreviewContainerViewController *)self _setExistingNavigationItem:0];
  }

  objc_storeStrong(&self->_childViewController, controller);
  v7 = controllerCopy;
  if (controllerCopy)
  {
    [(SUUIPreviewContainerViewController *)self addChildViewController:controllerCopy];
    view2 = [controllerCopy view];
    [view2 setAutoresizingMask:18];

    view3 = [(SUUIPreviewContainerViewController *)self view];
    view4 = [controllerCopy view];
    [view3 addSubview:view4];

    navigationItem = [controllerCopy navigationItem];
    [(SUUIPreviewContainerViewController *)self _setExistingNavigationItem:navigationItem];

    v7 = controllerCopy;
  }
}

@end