@interface UIView(DOCExtensions)
- (id)doc_nearestAncestorViewController;
- (id)doc_presentingViewController;
@end

@implementation UIView(DOCExtensions)

- (id)doc_nearestAncestorViewController
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    while (1)
    {
      doc_owningViewController = [v2 doc_owningViewController];
      if (doc_owningViewController)
      {
        break;
      }

      superview = [v2 superview];

      v2 = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }

    superview = doc_owningViewController;
  }

  else
  {
    superview = 0;
  }

LABEL_8:

  return superview;
}

- (id)doc_presentingViewController
{
  doc_nearestAncestorViewController = [self doc_nearestAncestorViewController];
  presentingViewController = [doc_nearestAncestorViewController presentingViewController];

  return presentingViewController;
}

@end