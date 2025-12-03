@interface UIKitForwardDeclarationHelper
+ (id)scrollViewForPageViewController:(id)controller;
@end

@implementation UIKitForwardDeclarationHelper

+ (id)scrollViewForPageViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  _scrollView = [location[0] _scrollView];
  objc_storeStrong(location, 0);

  return _scrollView;
}

@end