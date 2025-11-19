@interface SUUINavigationBarContext
- (UIViewController)parentViewController;
@end

@implementation SUUINavigationBarContext

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end