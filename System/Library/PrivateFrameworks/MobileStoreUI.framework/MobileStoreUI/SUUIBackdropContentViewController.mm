@interface SUUIBackdropContentViewController
- (SUUIBackdropContentViewController)initWithContentViewController:(id)a3;
- (void)loadView;
- (void)setBackdropViewPrivateStyle:(int64_t)a3;
- (void)setContentViewController:(id)a3;
@end

@implementation SUUIBackdropContentViewController

- (SUUIBackdropContentViewController)initWithContentViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUIBackdropContentViewController;
  v5 = [(SUUIBackdropContentViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_backdropViewPrivateStyle = 10060;
    [(SUUIBackdropContentViewController *)v5 setModalPresentationStyle:17];
    [(SUUIBackdropContentViewController *)v6 setContentViewController:v4];
  }

  return v6;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SUUIBackdropContentViewController;
  [(SUUIBackdropContentViewController *)&v6 loadView];
  v3 = [(SUUIBackdropContentViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75DE8]);
  [v3 bounds];
  v5 = [v4 initWithFrame:self->_backdropViewPrivateStyle privateStyle:?];
  [v5 setAutoresizingMask:18];
  [v3 addSubview:v5];
}

- (void)setBackdropViewPrivateStyle:(int64_t)a3
{
  if (self->_backdropViewPrivateStyle != a3)
  {
    self->_backdropViewPrivateStyle = a3;
    if ([(SUUIBackdropContentViewController *)self isViewLoaded])
    {
      v5 = [(SUUIBackdropContentViewController *)self view];
      [v5 transitionToPrivateStyle:a3];
    }
  }
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v10 = v5;
    v6 = [(UIViewController *)v5 parentViewController];

    if (v6 == self)
    {
      [(UIViewController *)v10 willMoveToParentViewController:0];
      v7 = [(UIViewController *)v10 view];
      [v7 removeFromSuperview];

      [(UIViewController *)v10 removeFromParentViewController];
    }

    objc_storeStrong(&self->_contentViewController, a3);
    v5 = v10;
    if (self->_contentViewController)
    {
      [(SUUIBackdropContentViewController *)self addChildViewController:?];
      v8 = [(SUUIBackdropContentViewController *)self view];
      v9 = [(UIViewController *)self->_contentViewController view];
      [v8 bounds];
      [v9 setFrame:?];
      [v9 setAutoresizingMask:18];
      [v8 addSubview:v9];
      [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];

      v5 = v10;
    }
  }
}

@end