@interface UIViewWindowNotifier
- (UIViewWindowListener)windowListener;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIViewWindowNotifier

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = UIViewWindowNotifier;
  windowCopy = window;
  [(UIViewWindowNotifier *)&v6 willMoveToWindow:windowCopy];
  v5 = [(UIViewWindowNotifier *)self windowListener:v6.receiver];
  [v5 view:self willMoveToWindow:windowCopy];
}

- (UIViewWindowListener)windowListener
{
  WeakRetained = objc_loadWeakRetained(&self->_windowListener);

  return WeakRetained;
}

@end