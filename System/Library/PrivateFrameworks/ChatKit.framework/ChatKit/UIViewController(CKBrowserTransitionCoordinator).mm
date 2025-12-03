@interface UIViewController(CKBrowserTransitionCoordinator)
- (id)__ck_topViewController;
@end

@implementation UIViewController(CKBrowserTransitionCoordinator)

- (id)__ck_topViewController
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    visibleViewController = [self visibleViewController];
LABEL_5:
    v4 = visibleViewController;
    selfCopy = [visibleViewController __ck_topViewController];

    goto LABEL_6;
  }

  presentedViewController = [self presentedViewController];

  if (presentedViewController)
  {
    visibleViewController = [self presentedViewController];
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

@end