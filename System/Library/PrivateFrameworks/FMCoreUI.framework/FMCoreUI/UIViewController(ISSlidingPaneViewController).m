@interface UIViewController(ISSlidingPaneViewController)
- (id)slidingPaneViewController;
@end

@implementation UIViewController(ISSlidingPaneViewController)

- (id)slidingPaneViewController
{
  v1 = a1;
  if (v1)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2 = [v1 parentViewController];

      v1 = v2;
      if (!v2)
      {
        goto LABEL_6;
      }
    }

    v1 = v1;
  }

LABEL_6:

  return v1;
}

@end