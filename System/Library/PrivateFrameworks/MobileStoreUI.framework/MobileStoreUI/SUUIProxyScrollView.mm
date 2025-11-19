@interface SUUIProxyScrollView
- (void)didMoveToWindow;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SUUIProxyScrollView

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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
    v23 = [(SUUIProxyScrollView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v23 scrollViewDidChangeContentInset:self];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SUUIProxyScrollView;
  [(SUUIProxyScrollView *)&v4 didMoveToWindow];
  v3 = [(SUUIProxyScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 scrollViewDidMoveToWindow:self];
  }
}

@end