@interface SUUISimpleContainerViewController
- (void)loadView;
- (void)setContentViewController:(id)controller;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation SUUISimpleContainerViewController

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = self->_contentViewController;
  v11 = controllerCopy;
  if (contentViewController != controllerCopy)
  {
    if ([(UIViewController *)contentViewController isViewLoaded])
    {
      view = [(UIViewController *)self->_contentViewController view];
      [view removeFromSuperview];
    }

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentViewController, controller);
    if (self->_contentViewController)
    {
      [(SUUISimpleContainerViewController *)self addChildViewController:?];
      v8 = self->_contentViewController;
      [(SUUISimpleContainerViewController *)self preferredContentSize];
      [(UIViewController *)v8 setPreferredContentSize:?];
      if ([(SUUISimpleContainerViewController *)self isViewLoaded])
      {
        view2 = [(SUUISimpleContainerViewController *)self view];
        view3 = [(UIViewController *)self->_contentViewController view];
        [view3 setAutoresizingMask:18];
        [view2 bounds];
        [view3 setFrame:?];
        [view2 addSubview:view3];
      }
    }
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = SUUISimpleContainerViewController;
  [(SUUISimpleContainerViewController *)&v5 loadView];
  if (self->_contentViewController)
  {
    view = [(SUUISimpleContainerViewController *)self view];
    view2 = [(UIViewController *)self->_contentViewController view];
    [view2 setAutoresizingMask:18];
    [view bounds];
    [view2 setFrame:?];
    [view addSubview:view2];
  }
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = SUUISimpleContainerViewController;
  [(SUUISimpleContainerViewController *)&v6 setPreferredContentSize:?];
  [(UIViewController *)self->_contentViewController setPreferredContentSize:width, height];
}

@end