@interface UINavigationController(HUItemPresentationContainer)
- (id)hu_presentedItem;
@end

@implementation UINavigationController(HUItemPresentationContainer)

- (id)hu_presentedItem
{
  v1 = [a1 visibleViewController];
  v2 = [v1 hu_presentedItem];

  return v2;
}

@end