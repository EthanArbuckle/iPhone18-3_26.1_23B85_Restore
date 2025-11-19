@interface CCUIIconScrollView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CCUIIconScrollViewHostingDelegate)hostingDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setFrame:(CGRect)a3;
@end

@implementation CCUIIconScrollView

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CCUIIconScrollView *)self frame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8.receiver = self;
    v8.super_class = CCUIIconScrollView;
    [(CCUIIconScrollView *)&v8 setFrame:x, y, width, height];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CCUIIconScrollView *)self hostingDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 scrollView:self gestureRecognizerShouldBegin:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CCUIIconScrollView;
    v6 = [(CCUIIconScrollView *)&v9 gestureRecognizerShouldBegin:v4];
  }

  v7 = v6;

  return v7;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CCUIIconScrollView;
  v8 = [(CCUIIconScrollView *)&v12 hitTest:v7 withEvent:x, y];
  if (v8 == self && [v7 type] == 9)
  {
    v9 = [(CCUIIconScrollView *)self hostingDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 fallbackDragHitTestViewForScrollView:self];

      v8 = v10;
    }
  }

  return v8;
}

- (CCUIIconScrollViewHostingDelegate)hostingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingDelegate);

  return WeakRetained;
}

@end