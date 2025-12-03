@interface UIViewController(HFAdditions)
- (id)hf_topmostViewController;
@end

@implementation UIViewController(HFAdditions)

- (id)hf_topmostViewController
{
  selfCopy = self;
  presentedViewController = [selfCopy presentedViewController];
  if (presentedViewController)
  {
    v3 = presentedViewController;
    do
    {
      if (([v3 isBeingDismissed] & 1) == 0)
      {
        v4 = v3;

        selfCopy = v4;
      }

      presentedViewController2 = [v3 presentedViewController];

      v3 = presentedViewController2;
    }

    while (presentedViewController2);
  }

  return selfCopy;
}

@end