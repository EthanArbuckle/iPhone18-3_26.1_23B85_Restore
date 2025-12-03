@interface FBSSceneClientSettings(UIKitShimming)
- (id)_uiApplicationSceneClientSettingsShim;
- (uint64_t)_uikitShimming_isUISubclass;
@end

@implementation FBSSceneClientSettings(UIKitShimming)

- (uint64_t)_uikitShimming_isUISubclass
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self isUISubclass];
}

- (id)_uiApplicationSceneClientSettingsShim
{
  if ([self _uikitShimming_isUISubclass])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end