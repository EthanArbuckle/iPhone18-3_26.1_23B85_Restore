@interface HUDashboardNavigationTitleView
- (HUDashboardNavigationTitleView)initWithDelegate:(id)delegate;
- (HUDashboardNavigationTitleViewDelegate)delegate;
- (void)contentDidChange;
@end

@implementation HUDashboardNavigationTitleView

- (HUDashboardNavigationTitleView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HUDashboardNavigationTitleView;
  v5 = [(HUDashboardNavigationTitleView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_previousLargeTitleHeight = 0.0;
  }

  return v6;
}

- (void)contentDidChange
{
  v10.receiver = self;
  v10.super_class = HUDashboardNavigationTitleView;
  [(_UINavigationBarTitleView *)&v10 contentDidChange];
  [(_UINavigationBarTitleView *)self largeTitleHeight];
  v4 = round(v3);
  [(_UINavigationBarTitleView *)self largeTitleHeightRange];
  v6 = v5;
  [(_UINavigationBarTitleView *)self largeTitleHeightRange];
  v8 = fmax(v6, fmin(v7, v4));
  if (self->_previousLargeTitleHeight != v8)
  {
    delegate = [(HUDashboardNavigationTitleView *)self delegate];
    [delegate largeTitleHeightDidChange:v8];
  }

  self->_previousLargeTitleHeight = v8;
}

- (HUDashboardNavigationTitleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end