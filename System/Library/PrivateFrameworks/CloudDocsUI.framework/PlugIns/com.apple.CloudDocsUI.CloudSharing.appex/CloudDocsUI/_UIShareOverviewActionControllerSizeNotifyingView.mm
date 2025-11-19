@interface _UIShareOverviewActionControllerSizeNotifyingView
- (_UIShareOverviewActionController)parentViewController;
- (void)setBounds:(CGRect)a3;
@end

@implementation _UIShareOverviewActionControllerSizeNotifyingView

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = _UIShareOverviewActionControllerSizeNotifyingView;
  [(_UIShareOverviewActionControllerSizeNotifyingView *)&v9 setBounds:?];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    v8 = [(_UIShareOverviewActionControllerSizeNotifyingView *)self parentViewController];
    [v8 _updateSubviewsForNewGeometry];
  }
}

- (_UIShareOverviewActionController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end