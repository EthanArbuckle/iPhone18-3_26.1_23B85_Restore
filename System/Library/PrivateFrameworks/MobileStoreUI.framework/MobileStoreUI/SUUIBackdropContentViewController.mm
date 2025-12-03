@interface SUUIBackdropContentViewController
- (SUUIBackdropContentViewController)initWithContentViewController:(id)controller;
- (void)loadView;
- (void)setBackdropViewPrivateStyle:(int64_t)style;
- (void)setContentViewController:(id)controller;
@end

@implementation SUUIBackdropContentViewController

- (SUUIBackdropContentViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SUUIBackdropContentViewController;
  v5 = [(SUUIBackdropContentViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_backdropViewPrivateStyle = 10060;
    [(SUUIBackdropContentViewController *)v5 setModalPresentationStyle:17];
    [(SUUIBackdropContentViewController *)v6 setContentViewController:controllerCopy];
  }

  return v6;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SUUIBackdropContentViewController;
  [(SUUIBackdropContentViewController *)&v6 loadView];
  view = [(SUUIBackdropContentViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75DE8]);
  [view bounds];
  v5 = [v4 initWithFrame:self->_backdropViewPrivateStyle privateStyle:?];
  [v5 setAutoresizingMask:18];
  [view addSubview:v5];
}

- (void)setBackdropViewPrivateStyle:(int64_t)style
{
  if (self->_backdropViewPrivateStyle != style)
  {
    self->_backdropViewPrivateStyle = style;
    if ([(SUUIBackdropContentViewController *)self isViewLoaded])
    {
      view = [(SUUIBackdropContentViewController *)self view];
      [view transitionToPrivateStyle:style];
    }
  }
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentViewController != controllerCopy)
  {
    v10 = controllerCopy;
    parentViewController = [(UIViewController *)controllerCopy parentViewController];

    if (parentViewController == self)
    {
      [(UIViewController *)v10 willMoveToParentViewController:0];
      view = [(UIViewController *)v10 view];
      [view removeFromSuperview];

      [(UIViewController *)v10 removeFromParentViewController];
    }

    objc_storeStrong(&self->_contentViewController, controller);
    controllerCopy = v10;
    if (self->_contentViewController)
    {
      [(SUUIBackdropContentViewController *)self addChildViewController:?];
      view2 = [(SUUIBackdropContentViewController *)self view];
      view3 = [(UIViewController *)self->_contentViewController view];
      [view2 bounds];
      [view3 setFrame:?];
      [view3 setAutoresizingMask:18];
      [view2 addSubview:view3];
      [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];

      controllerCopy = v10;
    }
  }
}

@end