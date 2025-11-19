@interface UIViewController(NUNavigationControl)
- (id)navigationControl;
@end

@implementation UIViewController(NUNavigationControl)

- (id)navigationControl
{
  v2 = [a1 parentViewController];
  v3 = [a1 parentViewController];
  v4 = [v3 conformsToProtocol:&unk_286E28918];

  if (!v4 || (v5 = v2) == 0)
  {
    v5 = [v2 navigationControl];
  }

  return v5;
}

@end