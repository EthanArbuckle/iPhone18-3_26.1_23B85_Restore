@interface SFBrowserController
- (SFBrowserControllerProxy)proxy;
@end

@implementation SFBrowserController

- (SFBrowserControllerProxy)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

@end