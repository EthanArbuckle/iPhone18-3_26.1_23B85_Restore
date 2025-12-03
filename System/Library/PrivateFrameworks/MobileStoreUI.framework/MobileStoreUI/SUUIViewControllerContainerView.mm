@interface SUUIViewControllerContainerView
- (SUUIViewControllerContainerView)initWithFrame:(CGRect)frame;
- (void)_updateLayoutOfViewControllerView;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setViewController:(id)controller;
@end

@implementation SUUIViewControllerContainerView

- (SUUIViewControllerContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIViewControllerContainerView;
  v3 = [(SUUIViewControllerContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = SUUIViewControllerContainerView;
  [(SUUIViewControllerContainerView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(SUUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SUUIViewControllerContainerView;
  [(SUUIViewControllerContainerView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SUUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  viewController = self->_viewController;
  v10 = controllerCopy;
  if (viewController != controllerCopy)
  {
    if (viewController)
    {
      view = [(UIViewController *)viewController view];
      if ([view isDescendantOfView:self])
      {
        [view removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_viewController, controller);
    viewController = self->_viewController;
  }

  if (viewController)
  {
    view2 = [(UIViewController *)viewController view];
    v9 = view2;
    if (view2 && ([view2 isDescendantOfView:self] & 1) == 0)
    {
      [v9 removeFromSuperview];
      [(SUUIViewControllerContainerView *)self addSubview:v9];
      [(SUUIViewControllerContainerView *)self setNeedsLayout];
    }
  }
}

- (void)_updateLayoutOfViewControllerView
{
  view = [(UIViewController *)self->_viewController view];
  [(SUUIViewControllerContainerView *)self bounds];
  [view setFrame:?];
}

@end