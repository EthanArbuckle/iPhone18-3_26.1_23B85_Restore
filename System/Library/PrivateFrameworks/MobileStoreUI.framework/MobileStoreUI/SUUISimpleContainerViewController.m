@interface SUUISimpleContainerViewController
- (void)loadView;
- (void)setContentViewController:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation SUUISimpleContainerViewController

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  contentViewController = self->_contentViewController;
  v11 = v5;
  if (contentViewController != v5)
  {
    if ([(UIViewController *)contentViewController isViewLoaded])
    {
      v7 = [(UIViewController *)self->_contentViewController view];
      [v7 removeFromSuperview];
    }

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentViewController, a3);
    if (self->_contentViewController)
    {
      [(SUUISimpleContainerViewController *)self addChildViewController:?];
      v8 = self->_contentViewController;
      [(SUUISimpleContainerViewController *)self preferredContentSize];
      [(UIViewController *)v8 setPreferredContentSize:?];
      if ([(SUUISimpleContainerViewController *)self isViewLoaded])
      {
        v9 = [(SUUISimpleContainerViewController *)self view];
        v10 = [(UIViewController *)self->_contentViewController view];
        [v10 setAutoresizingMask:18];
        [v9 bounds];
        [v10 setFrame:?];
        [v9 addSubview:v10];
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
    v3 = [(SUUISimpleContainerViewController *)self view];
    v4 = [(UIViewController *)self->_contentViewController view];
    [v4 setAutoresizingMask:18];
    [v3 bounds];
    [v4 setFrame:?];
    [v3 addSubview:v4];
  }
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = SUUISimpleContainerViewController;
  [(SUUISimpleContainerViewController *)&v6 setPreferredContentSize:?];
  [(UIViewController *)self->_contentViewController setPreferredContentSize:width, height];
}

@end