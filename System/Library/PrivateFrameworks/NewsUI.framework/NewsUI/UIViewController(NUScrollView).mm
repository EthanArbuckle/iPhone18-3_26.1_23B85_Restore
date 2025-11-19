@interface UIViewController(NUScrollView)
- (id)findSafeAreaInsetsProviderForScrollView:()NUScrollView;
- (void)nu_adjustInsetsForScrollView:()NUScrollView;
@end

@implementation UIViewController(NUScrollView)

- (void)nu_adjustInsetsForScrollView:()NUScrollView
{
  v8 = a3;
  v4 = [a1 findSafeAreaInsetsProviderForScrollView:?];
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
  v3 = [a3 superview];
  if (v3)
  {
    do
    {
      if ([v3 conformsToProtocol:&unk_286E4D260])
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

@end