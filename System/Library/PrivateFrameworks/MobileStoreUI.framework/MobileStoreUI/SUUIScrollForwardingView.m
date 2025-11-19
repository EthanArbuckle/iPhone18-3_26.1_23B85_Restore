@interface SUUIScrollForwardingView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SUUIScrollForwardingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUIScrollForwardingView;
  v5 = [(SUUIScrollForwardingView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {
    v6 = [(SUUIScrollForwardingView *)self scrollView];

    v5 = v6;
  }

  return v5;
}

@end