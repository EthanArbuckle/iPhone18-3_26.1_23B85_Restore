@interface HUViewControllerTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (UIViewController)parentViewController;
- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)a3;
- (void)addToParentViewController:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setViewController:(id)a3;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  v7 = [(HUViewControllerTableViewCell *)self viewController:a3.width];
  v8 = [v7 view];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(HUViewControllerTableViewCell *)self viewController];
  v18 = [v17 view];
  [v18 setFrame:{v10, v12, width, v16}];

  v19 = [(HUViewControllerTableViewCell *)self viewController];
  v20 = [v19 view];
  [v20 layoutIfNeeded];

  v21 = [(HUViewControllerTableViewCell *)self viewController];
  v22 = [v21 view];
  [v22 setFrame:{v10, v12, v14, v16}];

  v23 = [(HUViewControllerTableViewCell *)self viewController];
  [v23 preferredContentSize];
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
  v11 = [(HUViewControllerTableViewCell *)self viewController];
  v12 = [v11 view];
  [v12 setFrame:{v4, v6, v8, v10}];

  if ([(HUViewControllerTableViewCell *)self ignoreRounding])
  {
    [(UITableViewCell *)self turnOffRounding];
  }
}

- (void)setViewController:(id)a3
{
  v5 = a3;
  if (self->_viewController != v5)
  {
    v10 = v5;
    v6 = [(HUViewControllerTableViewCell *)self parentViewController];
    if (v6)
    {
      viewController = self->_viewController;

      if (viewController)
      {
        [(HUViewControllerTableViewCell *)self _removeFromParentViewControllerAndClearProperty:0];
      }
    }

    objc_storeStrong(&self->_viewController, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIViewController *)v10 setWantsPreferredContentSize:1];
    }

    v8 = [(HUViewControllerTableViewCell *)self parentViewController];

    v5 = v10;
    if (v10 && v8)
    {
      v9 = [(HUViewControllerTableViewCell *)self parentViewController];
      [(HUViewControllerTableViewCell *)self addToParentViewController:v9];

      v5 = v10;
    }
  }
}

- (void)addToParentViewController:(id)a3
{
  v10 = a3;
  v4 = [(HUViewControllerTableViewCell *)self viewController];

  if (v4)
  {
    v5 = [(HUViewControllerTableViewCell *)self viewController];
    [v10 addChildViewController:v5];

    v6 = [(HUViewControllerTableViewCell *)self contentView];
    v7 = [(HUViewControllerTableViewCell *)self viewController];
    v8 = [v7 view];
    [v6 addSubview:v8];

    v9 = [(HUViewControllerTableViewCell *)self viewController];
    [v9 didMoveToParentViewController:v10];
  }

  [(HUViewControllerTableViewCell *)self setParentViewController:v10];
}

- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUViewControllerTableViewCell *)self viewController];
  [v5 willMoveToParentViewController:0];

  v6 = [(HUViewControllerTableViewCell *)self viewController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  v8 = [(HUViewControllerTableViewCell *)self viewController];
  [v8 removeFromParentViewController];

  if (v3)
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