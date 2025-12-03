@interface UIViewController(SUUINavigationBarDisplayConfiguring)
- (void)setNeedsNavigationBarAppearanceUpdate;
@end

@implementation UIViewController(SUUINavigationBarDisplayConfiguring)

- (void)setNeedsNavigationBarAppearanceUpdate
{
  selfCopy = self;
  v3 = 0;
  do
  {
    v2 = v3;
    v3 = selfCopy;

    selfCopy = [v3 parentViewController];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  [selfCopy _viewControllerNeedsNavigationBarAppearanceUpdate:v3];
}

@end