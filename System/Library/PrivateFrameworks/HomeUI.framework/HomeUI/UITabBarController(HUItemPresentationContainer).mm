@interface UITabBarController(HUItemPresentationContainer)
- (id)hu_presentedItem;
@end

@implementation UITabBarController(HUItemPresentationContainer)

- (id)hu_presentedItem
{
  v1 = [a1 selectedViewController];
  v2 = [v1 hu_presentedItem];

  return v2;
}

@end