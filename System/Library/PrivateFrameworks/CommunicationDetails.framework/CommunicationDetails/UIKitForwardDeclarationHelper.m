@interface UIKitForwardDeclarationHelper
+ (id)scrollViewForPageViewController:(id)a3;
@end

@implementation UIKitForwardDeclarationHelper

+ (id)scrollViewForPageViewController:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] _scrollView];
  objc_storeStrong(location, 0);

  return v4;
}

@end