@interface SFOrderedContainerView
- (SFOrderedContainerViewDelegate)delegate;
- (void)_sf_setOrderedSubviews:(id *)subviews count:(unint64_t)count;
- (void)didAddSubview:(id)subview;
- (void)updateOrderedSubviews:(id *)subviews count:(unint64_t)count;
- (void)willMoveToWindow:(id)window;
@end

@implementation SFOrderedContainerView

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = SFOrderedContainerView;
  [(SFOrderedContainerView *)&v6 willMoveToWindow:?];
  if (window)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateOrderedSubviewsForOrderedContainerView:self];
  }
}

- (void)_sf_setOrderedSubviews:(id *)subviews count:(unint64_t)count
{
  self->_settingOrderedSubviews = 1;
  v5.receiver = self;
  v5.super_class = SFOrderedContainerView;
  [(UIView *)&v5 _sf_setOrderedSubviews:subviews count:count];
  self->_settingOrderedSubviews = 0;
}

- (void)updateOrderedSubviews:(id *)subviews count:(unint64_t)count
{
  if (count)
  {
    subviewsCopy = subviews;
    countCopy = count;
    do
    {
      superview = [*subviewsCopy superview];

      if (superview != self)
      {
        *subviewsCopy = 0;
      }

      ++subviewsCopy;
      --countCopy;
    }

    while (countCopy);
  }

  [(SFOrderedContainerView *)self _sf_setOrderedSubviews:subviews count:count];
}

- (void)didAddSubview:(id)subview
{
  window = [(SFOrderedContainerView *)self window];
  if (window)
  {
    settingOrderedSubviews = self->_settingOrderedSubviews;

    if (!settingOrderedSubviews)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained updateOrderedSubviewsForOrderedContainerView:self];
    }
  }
}

- (SFOrderedContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end