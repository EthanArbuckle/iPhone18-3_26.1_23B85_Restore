@interface UIViewController(HUModalPresentation)
- (id)hu_delegateForModalPresentation;
@end

@implementation UIViewController(HUModalPresentation)

- (id)hu_delegateForModalPresentation
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    v3 = 0;
    do
    {
      if ([v2 conformsToProtocol:&unk_2824A3148])
      {
        v4 = v2;

        v3 = v4;
      }

      parentViewController = [v2 parentViewController];

      v2 = parentViewController;
    }

    while (parentViewController);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end