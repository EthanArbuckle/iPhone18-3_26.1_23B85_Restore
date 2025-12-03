@interface UIViewController(SUUIScrollingSegmentedControllerItem)
- (id)scrollingSegmentedController;
- (void)setNeedsScrollingSegmentContentScrollViewUpdate;
@end

@implementation UIViewController(SUUIScrollingSegmentedControllerItem)

- (id)scrollingSegmentedController
{
  selfCopy = self;
  do
  {
    v2 = selfCopy;
    selfCopy = [selfCopy parentViewController];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);

  return selfCopy;
}

- (void)setNeedsScrollingSegmentContentScrollViewUpdate
{
  selfCopy = self;
  v3 = 0;
  do
  {
    v2 = v3;
    v3 = selfCopy;

    selfCopy = [v3 parentViewController];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  [selfCopy _viewControllerNeedsContentScrollViewUpdates:v3];
}

@end