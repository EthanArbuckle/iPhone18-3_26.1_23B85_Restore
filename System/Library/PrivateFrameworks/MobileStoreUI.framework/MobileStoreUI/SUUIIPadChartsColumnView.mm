@interface SUUIIPadChartsColumnView
- (UIEdgeInsets)contentInset;
- (UIViewController)selectedViewController;
- (void)_addSelectedViewController;
- (void)layoutSubviews;
- (void)setContentViewControllers:(id)controllers;
- (void)setSelectedViewControllerIndex:(int64_t)index;
@end

@implementation SUUIIPadChartsColumnView

- (UIViewController)selectedViewController
{
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  if (selectedViewControllerIndex >= [(NSArray *)self->_contentViewControllers count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_contentViewControllers objectAtIndex:self->_selectedViewControllerIndex];
  }

  return v4;
}

- (void)setContentViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (self->_contentViewControllers != controllersCopy)
  {
    v8 = controllersCopy;
    selectedViewController = [(SUUIIPadChartsColumnView *)self selectedViewController];
    if ([selectedViewController isViewLoaded])
    {
      view = [selectedViewController view];
      [view removeFromSuperview];
    }

    objc_storeStrong(&self->_contentViewControllers, controllers);
    self->_selectedViewControllerIndex = 0;
    [(SUUIIPadChartsColumnView *)self _addSelectedViewController];

    controllersCopy = v8;
  }
}

- (void)setSelectedViewControllerIndex:(int64_t)index
{
  if (self->_selectedViewControllerIndex != index)
  {
    selectedViewController = [(SUUIIPadChartsColumnView *)self selectedViewController];
    if ([selectedViewController isViewLoaded])
    {
      view = [selectedViewController view];
      [view removeFromSuperview];
    }

    self->_selectedViewControllerIndex = index;
    [(SUUIIPadChartsColumnView *)self _addSelectedViewController];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIIPadChartsColumnView;
  [(SUUIIPadChartsColumnView *)&v5 layoutSubviews];
  selectedViewController = [(SUUIIPadChartsColumnView *)self selectedViewController];
  view = [selectedViewController view];
  [(SUUIIPadChartsColumnView *)self bounds];
  [view setFrame:?];
}

- (void)_addSelectedViewController
{
  selectedViewController = [(SUUIIPadChartsColumnView *)self selectedViewController];
  if (selectedViewController)
  {
    v21 = selectedViewController;
    view = [selectedViewController view];
    [(SUUIIPadChartsColumnView *)self addSubview:view];

    contentScrollView = [v21 contentScrollView];
    v6 = contentScrollView;
    if (contentScrollView)
    {
      p_contentInset = &self->_contentInset;
      top = p_contentInset->top;
      left = p_contentInset->left;
      bottom = p_contentInset->bottom;
      right = p_contentInset->right;
      [contentScrollView contentOffset];
      v13 = v12;
      v15 = v14;
      [v6 scrollIndicatorInsets];
      v17 = v16;
      v19 = v18;
      v20 = top + 44.0;
      if (v15 == 0.0)
      {
        v15 = v15 - (p_contentInset->top + 44.0);
      }

      [v6 setContentInset:{v20, left, bottom, right}];
      [v6 setContentOffset:{v13, v15}];
      [v6 setScrollIndicatorInsets:{v20, v17, bottom, v19}];
    }

    selectedViewController = v21;
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end