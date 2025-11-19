@interface UIViewWindowNotifier
- (UIViewWindowListener)windowListener;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIViewWindowNotifier

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIViewWindowNotifier;
  v4 = a3;
  [(UIViewWindowNotifier *)&v6 willMoveToWindow:v4];
  v5 = [(UIViewWindowNotifier *)self windowListener:v6.receiver];
  [v5 view:self willMoveToWindow:v4];
}

- (UIViewWindowListener)windowListener
{
  WeakRetained = objc_loadWeakRetained(&self->_windowListener);

  return WeakRetained;
}

@end