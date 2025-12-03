@interface DRSessionView
- (DRSessionView)initWithFrame:(CGRect)frame;
- (DRSessionViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation DRSessionView

- (DRSessionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = DRSessionView;
  v3 = [(DRSessionView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  delegate = [(DRSessionView *)self delegate];
  [delegate sessionViewWillLayoutSubviews:self];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = DRSessionView;
  v5 = [(DRSessionView *)&v7 hitTest:event withEvent:test.x, test.y];
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