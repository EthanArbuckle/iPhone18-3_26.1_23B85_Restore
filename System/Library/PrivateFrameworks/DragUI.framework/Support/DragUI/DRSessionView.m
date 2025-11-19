@interface DRSessionView
- (DRSessionView)initWithFrame:(CGRect)a3;
- (DRSessionViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation DRSessionView

- (DRSessionView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = DRSessionView;
  v3 = [(DRSessionView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    flockContainer = v3->_flockContainer;
    v3->_flockContainer = v4;

    [(DRSessionView *)v3 addSubview:v3->_flockContainer];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3 = [(DRSessionView *)self delegate];
  [v3 sessionViewWillLayoutSubviews:self];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = DRSessionView;
  v5 = [(DRSessionView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self->_flockContainer)
  {

    v5 = 0;
  }

  return v5;
}

- (DRSessionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end