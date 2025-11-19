@interface FBSSceneTransitionContext(UIKitShimming)
- (id)_uiApplicationSceneTransitionContextShim;
- (uint64_t)_uikitShimming_isUISubclass;
@end

@implementation FBSSceneTransitionContext(UIKitShimming)

- (uint64_t)_uikitShimming_isUISubclass
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 isUISubclass];
}

- (id)_uiApplicationSceneTransitionContextShim
{
  if ([a1 _uikitShimming_isUISubclass])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end