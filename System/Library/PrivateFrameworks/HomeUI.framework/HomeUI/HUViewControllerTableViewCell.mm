@interface HUViewControllerTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIViewController)parentViewController;
- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)property;
- (void)addToParentViewController:(id)controller;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setViewController:(id)controller;
@end

@implementation HUViewControllerTableViewCell

- (void)prepareForReuse
{
  [(HUViewControllerTableViewCell *)self setViewController:0];
  [(HUViewControllerTableViewCell *)self setParentViewController:0];
  [(HUViewControllerTableViewCell *)self setIgnoreRounding:0];
  v3.receiver = self;
  v3.super_class = HUViewControllerTableViewCell;
  [(HUViewControllerTableViewCell *)&v3 prepareForReuse];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  v7 = [(HUViewControllerTableViewCell *)self viewController:size.width];
  view = [v7 view];
  [view frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  viewController = [(HUViewControllerTableViewCell *)self viewController];
  view2 = [viewController view];
  [view2 setFrame:{v10, v12, width, v16}];

  viewController2 = [(HUViewControllerTableViewCell *)self viewController];
  view3 = [viewController2 view];
  [view3 layoutIfNeeded];

  viewController3 = [(HUViewControllerTableViewCell *)self viewController];
  view4 = [viewController3 view];
  [view4 setFrame:{v10, v12, v14, v16}];

  viewController4 = [(HUViewControllerTableViewCell *)self viewController];
  [viewController4 preferredContentSize];
  v25 = v24;
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUViewControllerTableViewCell;
  [(HUViewControllerTableViewCell *)&v13 layoutSubviews];
  [(HUViewControllerTableViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  viewController = [(HUViewControllerTableViewCell *)self viewController];
  view = [viewController view];
  [view setFrame:{v4, v6, v8, v10}];

  if ([(HUViewControllerTableViewCell *)self ignoreRounding])
  {
    [(UITableViewCell *)self turnOffRounding];
  }
}

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_viewController != controllerCopy)
  {
    v10 = controllerCopy;
    parentViewController = [(HUViewControllerTableViewCell *)self parentViewController];
    if (parentViewController)
    {
      viewController = self->_viewController;

      if (viewController)
      {
        [(HUViewControllerTableViewCell *)self _removeFromParentViewControllerAndClearProperty:0];
      }
    }

    objc_storeStrong(&self->_viewController, controller);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIViewController *)v10 setWantsPreferredContentSize:1];
    }

    parentViewController2 = [(HUViewControllerTableViewCell *)self parentViewController];

    controllerCopy = v10;
    if (v10 && parentViewController2)
    {
      parentViewController3 = [(HUViewControllerTableViewCell *)self parentViewController];
      [(HUViewControllerTableViewCell *)self addToParentViewController:parentViewController3];

      controllerCopy = v10;
    }
  }
}

- (void)addToParentViewController:(id)controller
{
  controllerCopy = controller;
  viewController = [(HUViewControllerTableViewCell *)self viewController];

  if (viewController)
  {
    viewController2 = [(HUViewControllerTableViewCell *)self viewController];
    [controllerCopy addChildViewController:viewController2];

    contentView = [(HUViewControllerTableViewCell *)self contentView];
    viewController3 = [(HUViewControllerTableViewCell *)self viewController];
    view = [viewController3 view];
    [contentView addSubview:view];

    viewController4 = [(HUViewControllerTableViewCell *)self viewController];
    [viewController4 didMoveToParentViewController:controllerCopy];
  }

  [(HUViewControllerTableViewCell *)self setParentViewController:controllerCopy];
}

- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)property
{
  propertyCopy = property;
  viewController = [(HUViewControllerTableViewCell *)self viewController];
  [viewController willMoveToParentViewController:0];

  viewController2 = [(HUViewControllerTableViewCell *)self viewController];
  view = [viewController2 view];
  [view removeFromSuperview];

  viewController3 = [(HUViewControllerTableViewCell *)self viewController];
  [viewController3 removeFromParentViewController];

  if (propertyCopy)
  {

    [(HUViewControllerTableViewCell *)self setParentViewController:0];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end