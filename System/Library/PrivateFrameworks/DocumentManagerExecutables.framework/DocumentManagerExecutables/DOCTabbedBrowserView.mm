@interface DOCTabbedBrowserView
- (DOCTabbedBrowserViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation DOCTabbedBrowserView

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DOCTabbedBrowserView;
  [(DOCTabbedBrowserView *)&v8 willMoveToWindow:v4];
  v5 = [(DOCTabbedBrowserView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DOCTabbedBrowserView *)self delegate];
    [v7 tabbedBrowserView:self willMoveToWindow:v4];
  }
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserView;
  [(DOCTabbedBrowserView *)&v7 didMoveToWindow];
  v3 = [(DOCTabbedBrowserView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(DOCTabbedBrowserView *)self delegate];
    v6 = [(DOCTabbedBrowserView *)self window];
    [v5 tabbedBrowserView:self didMoveToWindow:v6];
  }
}

- (DOCTabbedBrowserViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end