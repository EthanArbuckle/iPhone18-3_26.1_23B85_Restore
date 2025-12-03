@interface UIViewController(_CRKCardViewController)
- (uint64_t)_crk_isDescendantOfViewController:()_CRKCardViewController;
@end

@implementation UIViewController(_CRKCardViewController)

- (uint64_t)_crk_isDescendantOfViewController:()_CRKCardViewController
{
  v4 = a3;
  parentViewController = [self parentViewController];
  if (parentViewController == v4)
  {
    v7 = 1;
  }

  else
  {
    parentViewController2 = [self parentViewController];
    v7 = [parentViewController2 _crk_isDescendantOfViewController:v4];
  }

  return v7;
}

@end