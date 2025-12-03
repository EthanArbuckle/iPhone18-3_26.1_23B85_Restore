@interface SUUIScrollForwardingView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SUUIScrollForwardingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SUUIScrollForwardingView;
  v5 = [(SUUIScrollForwardingView *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {
    scrollView = [(SUUIScrollForwardingView *)self scrollView];

    v5 = scrollView;
  }

  return v5;
}

@end