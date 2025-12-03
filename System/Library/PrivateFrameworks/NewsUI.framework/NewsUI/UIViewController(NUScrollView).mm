@interface UIViewController(NUScrollView)
- (id)findSafeAreaInsetsProviderForScrollView:()NUScrollView;
- (void)nu_adjustInsetsForScrollView:()NUScrollView;
@end

@implementation UIViewController(NUScrollView)

- (void)nu_adjustInsetsForScrollView:()NUScrollView
{
  v8 = a3;
  v4 = [self findSafeAreaInsetsProviderForScrollView:?];
  if (v4)
  {
    [v8 _setAutomaticContentOffsetAdjustmentEnabled:0];
    [v4 safeAreaInsets];
    v6 = v5;
    [v8 setContentInset:?];
    [v8 contentOffset];
    if (v7 <= 0.0 && ([v8 ts_isScrolling] & 1) == 0)
    {
      [v8 setContentOffset:{0.0, -v6}];
    }

    [v8 _setAutomaticContentOffsetAdjustmentEnabled:1];
  }
}

- (id)findSafeAreaInsetsProviderForScrollView:()NUScrollView
{
  superview = [a3 superview];
  if (superview)
  {
    do
    {
      if ([superview conformsToProtocol:&unk_286E4D260])
      {
        break;
      }

      v3Superview = [superview superview];

      superview = v3Superview;
    }

    while (v3Superview);
  }

  return superview;
}

@end