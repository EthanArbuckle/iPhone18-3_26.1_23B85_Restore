@interface _CSProminentDisplayBackgroundWrapperView
- (UIView)wrappedView;
- (void)_ensureWrappedViewIsAtIndexZero;
- (void)addSubview:(id)subview;
- (void)bringSubviewToFront:(id)front;
- (void)exchangeSubviewAtIndex:(int64_t)index withSubviewAtIndex:(int64_t)atIndex;
- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview;
- (void)insertSubview:(id)subview atIndex:(int64_t)index;
- (void)insertSubview:(id)subview belowSubview:(id)belowSubview;
- (void)layoutSubviews;
- (void)sendSubviewToBack:(id)back;
- (void)setWrappedView:(id)view;
@end

@implementation _CSProminentDisplayBackgroundWrapperView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v4 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_wrappedView);
  [(_CSProminentDisplayBackgroundWrapperView *)self bounds];
  [WeakRetained setFrame:?];
}

- (void)setWrappedView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_wrappedView);

  if (WeakRetained != viewCopy)
  {
    v6 = objc_loadWeakRetained(&self->_wrappedView);
    [v6 removeFromSuperview];

    objc_storeWeak(&self->_wrappedView, viewCopy);
    v7.receiver = self;
    v7.super_class = _CSProminentDisplayBackgroundWrapperView;
    [(_CSProminentDisplayBackgroundWrapperView *)&v7 insertSubview:viewCopy atIndex:0];
    [(_CSProminentDisplayBackgroundWrapperView *)self setNeedsLayout];
  }
}

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v4 addSubview:subview];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (UIView)wrappedView
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedView);

  return WeakRetained;
}

- (void)_ensureWrappedViewIsAtIndexZero
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 51);

    if (WeakRetained)
    {
      v3 = objc_loadWeakRetained(self + 51);
      [self sendSubviewToBack:v3];
    }
  }
}

- (void)insertSubview:(id)subview atIndex:(int64_t)index
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 insertSubview:subview atIndex:index];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)exchangeSubviewAtIndex:(int64_t)index withSubviewAtIndex:(int64_t)atIndex
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 exchangeSubviewAtIndex:index withSubviewAtIndex:atIndex];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)insertSubview:(id)subview belowSubview:(id)belowSubview
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 insertSubview:subview belowSubview:belowSubview];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 insertSubview:subview aboveSubview:aboveSubview];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)bringSubviewToFront:(id)front
{
  v4.receiver = self;
  v4.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v4 bringSubviewToFront:front];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)sendSubviewToBack:(id)back
{
  v4.receiver = self;
  v4.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v4 sendSubviewToBack:back];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

@end