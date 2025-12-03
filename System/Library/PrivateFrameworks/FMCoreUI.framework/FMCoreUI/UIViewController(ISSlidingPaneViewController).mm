@interface UIViewController(ISSlidingPaneViewController)
- (id)slidingPaneViewController;
@end

@implementation UIViewController(ISSlidingPaneViewController)

- (id)slidingPaneViewController
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parentViewController = [selfCopy parentViewController];

      selfCopy = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_6;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_6:

  return selfCopy;
}

@end