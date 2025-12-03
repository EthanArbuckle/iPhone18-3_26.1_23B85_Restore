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
  view = [self view];
  [self naui_addChildViewWithViewController:v4 toView:view];
}

- (void)naui_addChildViewWithViewController:()NAUIAdditions toView:
{
  v6 = a4;
  v8 = a3;
  view = [v8 view];
  [v6 addSubview:view];

  [self addChildViewController:v8];
}

- (uint64_t)naui_canAnimate
{
  view = [self view];
  naui_canAnimate = [view naui_canAnimate];

  return naui_canAnimate;
}

- (BOOL)naui_isHorizontalSizeClassRegularOrGreater
{
  [self naui_loadViewIfNecessary];
  traitCollection = [self traitCollection];
  v3 = [traitCollection horizontalSizeClass] > 1;

  return v3;
}

- (BOOL)naui_isVerticalSizeClassRegularOrGreater
{
  [self naui_loadViewIfNecessary];
  traitCollection = [self traitCollection];
  v3 = [traitCollection verticalSizeClass] > 1;

  return v3;
}

- (uint64_t)naui_hasAxisWithRegularSizeClassOrGreater
{
  if ([self naui_isHorizontalSizeClassRegularOrGreater])
  {
    return 1;
  }

  return [self naui_isVerticalSizeClassRegularOrGreater];
}

- (void)naui_loadViewIfNecessary
{
  view = [self view];
}

- (uint64_t)naui_isDescendantOfViewController:()NAUIAdditions
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  parentViewController = [self parentViewController];
  v6 = [parentViewController naui_isDescendantOfViewController:v4];

  return v6;
}

@end