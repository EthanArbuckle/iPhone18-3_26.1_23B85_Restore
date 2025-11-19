@interface UIViewController(SUUINavigationBarDisplayConfiguring)
- (void)setNeedsNavigationBarAppearanceUpdate;
@end

@implementation UIViewController(SUUINavigationBarDisplayConfiguring)

- (void)setNeedsNavigationBarAppearanceUpdate
{
  v1 = a1;
  v3 = 0;
  do
  {
    v2 = v3;
    v3 = v1;

    v1 = [v3 parentViewController];

    if (!v1)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  [v1 _viewControllerNeedsNavigationBarAppearanceUpdate:v3];
}

@end