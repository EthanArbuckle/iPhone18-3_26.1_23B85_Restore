@interface UIViewController(_CRKCardViewController)
- (uint64_t)_crk_isDescendantOfViewController:()_CRKCardViewController;
@end

@implementation UIViewController(_CRKCardViewController)

- (uint64_t)_crk_isDescendantOfViewController:()_CRKCardViewController
{
  v4 = a3;
  v5 = [a1 parentViewController];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [a1 parentViewController];
    v7 = [v6 _crk_isDescendantOfViewController:v4];
  }

  return v7;
}

@end