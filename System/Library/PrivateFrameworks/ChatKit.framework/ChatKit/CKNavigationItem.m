@interface CKNavigationItem
- (UIScrollView)contentScrollView;
@end

@implementation CKNavigationItem

- (UIScrollView)contentScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);

  return WeakRetained;
}

@end