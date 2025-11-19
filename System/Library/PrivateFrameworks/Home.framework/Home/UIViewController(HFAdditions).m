@interface UIViewController(HFAdditions)
- (id)hf_topmostViewController;
@end

@implementation UIViewController(HFAdditions)

- (id)hf_topmostViewController
{
  v1 = a1;
  v2 = [v1 presentedViewController];
  if (v2)
  {
    v3 = v2;
    do
    {
      if (([v3 isBeingDismissed] & 1) == 0)
      {
        v4 = v3;

        v1 = v4;
      }

      v5 = [v3 presentedViewController];

      v3 = v5;
    }

    while (v5);
  }

  return v1;
}

@end