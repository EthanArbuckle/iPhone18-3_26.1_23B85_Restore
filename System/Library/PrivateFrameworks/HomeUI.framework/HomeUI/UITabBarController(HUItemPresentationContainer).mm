@interface UITabBarController(HUItemPresentationContainer)
- (id)hu_presentedItem;
@end

@implementation UITabBarController(HUItemPresentationContainer)

- (id)hu_presentedItem
{
  selectedViewController = [self selectedViewController];
  hu_presentedItem = [selectedViewController hu_presentedItem];

  return hu_presentedItem;
}

@end