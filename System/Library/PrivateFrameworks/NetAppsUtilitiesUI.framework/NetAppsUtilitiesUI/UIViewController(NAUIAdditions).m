@interface UIViewController(NAUIAdditions)
- (BOOL)naui_isHorizontalSizeClassRegularOrGreater;
- (BOOL)naui_isVerticalSizeClassRegularOrGreater;
- (uint64_t)naui_canAnimate;
- (uint64_t)naui_hasAxisWithRegularSizeClassOrGreater;
- (uint64_t)naui_isDescendantOfViewController:()NAUIAdditions;
- (void)naui_addChildViewWithViewController:()NAUIAdditions;
- (void)naui_addChildViewWithViewController:()NAUIAdditions toView:;
- (void)naui_loadViewIfNecessary;
@end

@implementation UIViewController(NAUIAdditions)

- (void)naui_addChildViewWithViewController:()NAUIAdditions
{
  v4 = a3;
  v5 = [a1 view];
  [a1 naui_addChildViewWithViewController:v4 toView:v5];
}

- (void)naui_addChildViewWithViewController:()NAUIAdditions toView:
{
  v6 = a4;
  v8 = a3;
  v7 = [v8 view];
  [v6 addSubview:v7];

  [a1 addChildViewController:v8];
}

- (uint64_t)naui_canAnimate
{
  v1 = [a1 view];
  v2 = [v1 naui_canAnimate];

  return v2;
}

- (BOOL)naui_isHorizontalSizeClassRegularOrGreater
{
  [a1 naui_loadViewIfNecessary];
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass] > 1;

  return v3;
}

- (BOOL)naui_isVerticalSizeClassRegularOrGreater
{
  [a1 naui_loadViewIfNecessary];
  v2 = [a1 traitCollection];
  v3 = [v2 verticalSizeClass] > 1;

  return v3;
}

- (uint64_t)naui_hasAxisWithRegularSizeClassOrGreater
{
  if ([a1 naui_isHorizontalSizeClassRegularOrGreater])
  {
    return 1;
  }

  return [a1 naui_isVerticalSizeClassRegularOrGreater];
}

- (void)naui_loadViewIfNecessary
{
  v1 = [a1 view];
}

- (uint64_t)naui_isDescendantOfViewController:()NAUIAdditions
{
  if (a1 == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [a1 parentViewController];
  v6 = [v5 naui_isDescendantOfViewController:v4];

  return v6;
}

@end