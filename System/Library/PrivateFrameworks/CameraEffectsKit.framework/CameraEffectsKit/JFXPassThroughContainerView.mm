@interface JFXPassThroughContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (JFXPassThroughContainerViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation JFXPassThroughContainerView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([(JFXPassThroughContainerView *)self shouldDelegatePointInside]&& ([(JFXPassThroughContainerView *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    delegate = [(JFXPassThroughContainerView *)self delegate];
    v11 = [delegate passThroughContainerView:self hasPointInside:{x, y}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = JFXPassThroughContainerView;
    v11 = [(JFXPassThroughContainerView *)&v13 pointInside:eventCopy withEvent:x, y];
  }

  return v11;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v12.receiver = self;
  v12.super_class = JFXPassThroughContainerView;
  v7 = [(JFXPassThroughContainerView *)&v12 hitTest:event withEvent:?];
  delegate = [(JFXPassThroughContainerView *)self delegate];
  v9 = [delegate passThroughContainerView:self shouldHandleTouchWithinView:v7 atPoint:{x, y}];

  if ((v9 & 1) != 0 || v7 != self)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (JFXPassThroughContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end