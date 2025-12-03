@interface FBSSceneSettings(FBUIApplicationSceneSettings)
- (id)fb_fallbackSpecification;
@end

@implementation FBSSceneSettings(FBUIApplicationSceneSettings)

- (id)fb_fallbackSpecification
{
  if ([self _uikitShimming_isUISubclass] && UIKitLibraryCore() && getUIApplicationSceneSpecificationClass())
  {
    v1 = UIKitLibraryCore();
    if (v1)
    {
      v1 = getUIApplicationSceneSpecificationClass();
    }

    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E699FC50];
  }

  specification = [v2 specification];

  return specification;
}

@end