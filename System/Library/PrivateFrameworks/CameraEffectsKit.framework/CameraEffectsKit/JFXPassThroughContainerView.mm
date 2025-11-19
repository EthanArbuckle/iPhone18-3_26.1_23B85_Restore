@interface JFXPassThroughContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (JFXPassThroughContainerViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation JFXPassThroughContainerView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(JFXPassThroughContainerView *)self shouldDelegatePointInside]&& ([(JFXPassThroughContainerView *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    v10 = [(JFXPassThroughContainerView *)self delegate];
    v11 = [v10 passThroughContainerView:self hasPointInside:{x, y}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = JFXPassThroughContainerView;
    v11 = [(JFXPassThroughContainerView *)&v13 pointInside:v7 withEvent:x, y];
  }

  return v11;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = JFXPassThroughContainerView;
  v7 = [(JFXPassThroughContainerView *)&v12 hitTest:a4 withEvent:?];
  v8 = [(JFXPassThroughContainerView *)self delegate];
  v9 = [v8 passThroughContainerView:self shouldHandleTouchWithinView:v7 atPoint:{x, y}];

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