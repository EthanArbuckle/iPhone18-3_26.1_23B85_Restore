@interface FBSSceneSettings(UIKitShimming)
- (id)_uiApplicationSceneSettingsShim;
- (uint64_t)_uikitShimming_isUISubclass;
@end

@implementation FBSSceneSettings(UIKitShimming)

- (uint64_t)_uikitShimming_isUISubclass
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 isUISubclass];
}

- (id)_uiApplicationSceneSettingsShim
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