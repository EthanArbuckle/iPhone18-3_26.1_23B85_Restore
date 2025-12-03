@interface DOCTabbedBrowserView
- (DOCTabbedBrowserViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation DOCTabbedBrowserView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = DOCTabbedBrowserView;
  [(DOCTabbedBrowserView *)&v8 willMoveToWindow:windowCopy];
  delegate = [(DOCTabbedBrowserView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(DOCTabbedBrowserView *)self delegate];
    [delegate2 tabbedBrowserView:self willMoveToWindow:windowCopy];
  }
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserView;
  [(DOCTabbedBrowserView *)&v7 didMoveToWindow];
  delegate = [(DOCTabbedBrowserView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(DOCTabbedBrowserView *)self delegate];
    window = [(DOCTabbedBrowserView *)self window];
    [delegate2 tabbedBrowserView:self didMoveToWindow:window];
  }
}

- (DOCTabbedBrowserViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end