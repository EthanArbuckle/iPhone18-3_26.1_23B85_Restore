@interface SUUIProxyScrollView
- (void)didMoveToWindow;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SUUIProxyScrollView

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(SUUIProxyScrollView *)self contentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24.receiver = self;
  v24.super_class = SUUIProxyScrollView;
  [(SUUIProxyScrollView *)&v24 setContentInset:top, left, bottom, right];
  [(SUUIProxyScrollView *)self contentInset];
  if (v19 != v11 || v16 != v9 || v18 != v15 || v17 != v13)
  {
    delegate = [(SUUIProxyScrollView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scrollViewDidChangeContentInset:self];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SUUIProxyScrollView;
  [(SUUIProxyScrollView *)&v4 didMoveToWindow];
  delegate = [(SUUIProxyScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scrollViewDidMoveToWindow:self];
  }
}

@end