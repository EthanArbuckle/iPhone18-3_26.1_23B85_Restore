@interface UIViewController(SUUIScrollingTabBarControllerNestedPagingScrollViewUpdate)
- (void)setNeedsNestedPagingScrollViewUpdate;
@end

@implementation UIViewController(SUUIScrollingTabBarControllerNestedPagingScrollViewUpdate)

- (void)setNeedsNestedPagingScrollViewUpdate
{
  v1 = a1;
  v3 = 0;
  do
  {
    v2 = v3;
    v3 = v1;

    v1 = [v3 parentViewController];

    if (!v1)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  [v1 _viewControllerNeedsNestedPagingScrollViewUpdate:v3];
}

@end