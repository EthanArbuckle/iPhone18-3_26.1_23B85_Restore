@interface CCUIIconScrollView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CCUIIconScrollViewHostingDelegate)hostingDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setFrame:(CGRect)frame;
@end

@implementation CCUIIconScrollView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  hostingDelegate = [(CCUIIconScrollView *)self hostingDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [hostingDelegate scrollView:self gestureRecognizerShouldBegin:beginCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CCUIIconScrollView;
    v6 = [(CCUIIconScrollView *)&v9 gestureRecognizerShouldBegin:beginCopy];
  }

  v7 = v6;

  return v7;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = CCUIIconScrollView;
  v8 = [(CCUIIconScrollView *)&v12 hitTest:eventCopy withEvent:x, y];
  if (v8 == self && [eventCopy type] == 9)
  {
    hostingDelegate = [(CCUIIconScrollView *)self hostingDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [hostingDelegate fallbackDragHitTestViewForScrollView:self];

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