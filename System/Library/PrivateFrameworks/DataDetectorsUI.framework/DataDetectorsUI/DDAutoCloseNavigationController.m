@interface DDAutoCloseNavigationController
- (DDAction)target;
@end

@implementation DDAutoCloseNavigationController

- (DDAction)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end