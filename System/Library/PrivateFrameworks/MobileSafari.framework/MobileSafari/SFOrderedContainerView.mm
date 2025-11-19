@interface SFOrderedContainerView
- (SFOrderedContainerViewDelegate)delegate;
- (void)_sf_setOrderedSubviews:(id *)a3 count:(unint64_t)a4;
- (void)didAddSubview:(id)a3;
- (void)updateOrderedSubviews:(id *)a3 count:(unint64_t)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SFOrderedContainerView

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFOrderedContainerView;
  [(SFOrderedContainerView *)&v6 willMoveToWindow:?];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateOrderedSubviewsForOrderedContainerView:self];
  }
}

- (void)_sf_setOrderedSubviews:(id *)a3 count:(unint64_t)a4
{
  self->_settingOrderedSubviews = 1;
  v5.receiver = self;
  v5.super_class = SFOrderedContainerView;
  [(UIView *)&v5 _sf_setOrderedSubviews:a3 count:a4];
  self->_settingOrderedSubviews = 0;
}

- (void)updateOrderedSubviews:(id *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v7 = a3;
    v8 = a4;
    do
    {
      v9 = [*v7 superview];

      if (v9 != self)
      {
        *v7 = 0;
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  [(SFOrderedContainerView *)self _sf_setOrderedSubviews:a3 count:a4];
}

- (void)didAddSubview:(id)a3
{
  v4 = [(SFOrderedContainerView *)self window];
  if (v4)
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