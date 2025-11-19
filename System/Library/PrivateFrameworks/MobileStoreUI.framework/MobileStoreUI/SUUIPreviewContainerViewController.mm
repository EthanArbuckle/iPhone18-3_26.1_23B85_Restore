@interface SUUIPreviewContainerViewController
- (void)setChildViewController:(id)a3;
@end

@implementation SUUIPreviewContainerViewController

- (void)setChildViewController:(id)a3
{
  v12 = a3;
  childViewController = self->_childViewController;
  if (childViewController)
  {
    [(UIViewController *)childViewController removeFromParentViewController];
    v6 = [(UIViewController *)self->_childViewController view];
    [v6 removeFromSuperview];

    [(SUUIPreviewContainerViewController *)self _setExistingNavigationItem:0];
  }

  objc_storeStrong(&self->_childViewController, a3);
  v7 = v12;
  if (v12)
  {
    [(SUUIPreviewContainerViewController *)self addChildViewController:v12];
    v8 = [v12 view];
    [v8 setAutoresizingMask:18];

    v9 = [(SUUIPreviewContainerViewController *)self view];
    v10 = [v12 view];
    [v9 addSubview:v10];

    v11 = [v12 navigationItem];
    [(SUUIPreviewContainerViewController *)self _setExistingNavigationItem:v11];

    v7 = v12;
  }
}

@end