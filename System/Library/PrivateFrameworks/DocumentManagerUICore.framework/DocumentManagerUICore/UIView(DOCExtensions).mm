@interface UIView(DOCExtensions)
- (id)doc_nearestAncestorViewController;
- (id)doc_presentingViewController;
@end

@implementation UIView(DOCExtensions)

- (id)doc_nearestAncestorViewController
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      v3 = [v2 doc_owningViewController];
      if (v3)
      {
        break;
      }

      v4 = [v2 superview];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (id)doc_presentingViewController
{
  v1 = [a1 doc_nearestAncestorViewController];
  v2 = [v1 presentingViewController];

  return v2;
}

@end