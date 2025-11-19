@interface UIViewController(HUModalPresentation)
- (id)hu_delegateForModalPresentation;
@end

@implementation UIViewController(HUModalPresentation)

- (id)hu_delegateForModalPresentation
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    do
    {
      if ([v2 conformsToProtocol:&unk_2824A3148])
      {
        v4 = v2;

        v3 = v4;
      }

      v5 = [v2 parentViewController];

      v2 = v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end