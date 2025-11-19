@interface SUUIViewControllerContainerView
- (SUUIViewControllerContainerView)initWithFrame:(CGRect)a3;
- (void)_updateLayoutOfViewControllerView;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setViewController:(id)a3;
@end

@implementation SUUIViewControllerContainerView

- (SUUIViewControllerContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUUIViewControllerContainerView;
  v3 = [(SUUIViewControllerContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIViewControllerContainerView *)v3 setPreservesSuperviewLayoutMargins:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUIViewControllerContainerView;
  [(SUUIViewControllerContainerView *)&v3 layoutSubviews];
  [(SUUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SUUIViewControllerContainerView;
  [(SUUIViewControllerContainerView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SUUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SUUIViewControllerContainerView;
  [(SUUIViewControllerContainerView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SUUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setViewController:(id)a3
{
  v5 = a3;
  viewController = self->_viewController;
  v10 = v5;
  if (viewController != v5)
  {
    if (viewController)
    {
      v7 = [(UIViewController *)viewController view];
      if ([v7 isDescendantOfView:self])
      {
        [v7 removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_viewController, a3);
    viewController = self->_viewController;
  }

  if (viewController)
  {
    v8 = [(UIViewController *)viewController view];
    v9 = v8;
    if (v8 && ([v8 isDescendantOfView:self] & 1) == 0)
    {
      [v9 removeFromSuperview];
      [(SUUIViewControllerContainerView *)self addSubview:v9];
      [(SUUIViewControllerContainerView *)self setNeedsLayout];
    }
  }
}

- (void)_updateLayoutOfViewControllerView
{
  v3 = [(UIViewController *)self->_viewController view];
  [(SUUIViewControllerContainerView *)self bounds];
  [v3 setFrame:?];
}

@end