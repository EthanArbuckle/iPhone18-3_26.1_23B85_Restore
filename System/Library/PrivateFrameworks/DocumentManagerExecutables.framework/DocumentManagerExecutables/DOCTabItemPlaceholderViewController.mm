@interface DOCTabItemPlaceholderViewController
- (id)tabBarItem;
@end

@implementation DOCTabItemPlaceholderViewController

- (id)tabBarItem
{
  actualViewController = [(DOCTabItemPlaceholderViewController *)self actualViewController];
  tabBarItem = [actualViewController tabBarItem];

  return tabBarItem;
}

@end