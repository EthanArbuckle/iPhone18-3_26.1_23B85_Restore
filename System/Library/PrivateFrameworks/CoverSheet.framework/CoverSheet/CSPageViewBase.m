@interface CSPageViewBase
- (CSPageViewControllerProtocol)pageViewController;
@end

@implementation CSPageViewBase

- (CSPageViewControllerProtocol)pageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageViewController);

  return WeakRetained;
}

@end