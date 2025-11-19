@interface DOCTabItemPlaceholderViewController
- (id)tabBarItem;
@end

@implementation DOCTabItemPlaceholderViewController

- (id)tabBarItem
{
  v2 = [(DOCTabItemPlaceholderViewController *)self actualViewController];
  v3 = [v2 tabBarItem];

  return v3;
}

@end