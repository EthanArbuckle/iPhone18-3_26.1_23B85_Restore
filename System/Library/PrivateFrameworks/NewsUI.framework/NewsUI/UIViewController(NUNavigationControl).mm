@interface UIViewController(NUNavigationControl)
- (id)navigationControl;
@end

@implementation UIViewController(NUNavigationControl)

- (id)navigationControl
{
  parentViewController = [self parentViewController];
  parentViewController2 = [self parentViewController];
  v4 = [parentViewController2 conformsToProtocol:&unk_286E28918];

  if (!v4 || (navigationControl = parentViewController) == 0)
  {
    navigationControl = [parentViewController navigationControl];
  }

  return navigationControl;
}

@end