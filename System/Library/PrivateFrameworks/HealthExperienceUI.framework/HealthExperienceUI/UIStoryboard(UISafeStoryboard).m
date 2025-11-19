@interface UIStoryboard(UISafeStoryboard)
- (id)tryToInstantiateViewControllerWithIdentifier:()UISafeStoryboard;
@end

@implementation UIStoryboard(UISafeStoryboard)

- (id)tryToInstantiateViewControllerWithIdentifier:()UISafeStoryboard
{
  v4 = a3;
  v5 = [a1 instantiateViewControllerWithIdentifier:v4];

  return v5;
}

@end