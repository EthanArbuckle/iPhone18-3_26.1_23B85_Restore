@interface UINavigationController(HUItemPresentationContainer)
- (id)hu_presentedItem;
@end

@implementation UINavigationController(HUItemPresentationContainer)

- (id)hu_presentedItem
{
  visibleViewController = [self visibleViewController];
  hu_presentedItem = [visibleViewController hu_presentedItem];

  return hu_presentedItem;
}

@end