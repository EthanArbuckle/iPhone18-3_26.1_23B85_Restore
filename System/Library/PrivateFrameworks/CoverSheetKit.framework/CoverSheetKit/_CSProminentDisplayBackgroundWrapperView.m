@interface _CSProminentDisplayBackgroundWrapperView
- (UIView)wrappedView;
- (void)_ensureWrappedViewIsAtIndexZero;
- (void)addSubview:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4;
- (void)insertSubview:(id)a3 aboveSubview:(id)a4;
- (void)insertSubview:(id)a3 atIndex:(int64_t)a4;
- (void)insertSubview:(id)a3 belowSubview:(id)a4;
- (void)layoutSubviews;
- (void)sendSubviewToBack:(id)a3;
- (void)setWrappedView:(id)a3;
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

- (void)setWrappedView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_wrappedView);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_wrappedView);
    [v6 removeFromSuperview];

    objc_storeWeak(&self->_wrappedView, v4);
    v7.receiver = self;
    v7.super_class = _CSProminentDisplayBackgroundWrapperView;
    [(_CSProminentDisplayBackgroundWrapperView *)&v7 insertSubview:v4 atIndex:0];
    [(_CSProminentDisplayBackgroundWrapperView *)self setNeedsLayout];
  }
}

- (void)addSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v4 addSubview:a3];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (UIView)wrappedView
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedView);

  return WeakRetained;
}

- (void)_ensureWrappedViewIsAtIndexZero
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 51);

    if (WeakRetained)
    {
      v3 = objc_loadWeakRetained(a1 + 51);
      [a1 sendSubviewToBack:v3];
    }
  }
}

- (void)insertSubview:(id)a3 atIndex:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 insertSubview:a3 atIndex:a4];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 exchangeSubviewAtIndex:a3 withSubviewAtIndex:a4];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)insertSubview:(id)a3 belowSubview:(id)a4
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 insertSubview:a3 belowSubview:a4];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)insertSubview:(id)a3 aboveSubview:(id)a4
{
  v5.receiver = self;
  v5.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v5 insertSubview:a3 aboveSubview:a4];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)bringSubviewToFront:(id)a3
{
  v4.receiver = self;
  v4.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v4 bringSubviewToFront:a3];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

- (void)sendSubviewToBack:(id)a3
{
  v4.receiver = self;
  v4.super_class = _CSProminentDisplayBackgroundWrapperView;
  [(_CSProminentDisplayBackgroundWrapperView *)&v4 sendSubviewToBack:a3];
  [(_CSProminentDisplayBackgroundWrapperView *)&self->super.super.super.isa _ensureWrappedViewIsAtIndexZero];
}

@end