@interface MPPlaybackUserDefaults(_ProjectFix)
- (uint64_t)_areTransitionsEnabledWithSubscription:()_ProjectFix;
@end

@implementation MPPlaybackUserDefaults(_ProjectFix)

- (uint64_t)_areTransitionsEnabledWithSubscription:()_ProjectFix
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 areTransitionEnabledForUserWithCatalogPlaybackCapability:a3];
  }

  else if (objc_opt_respondsToSelector())
  {

    return [a1 areTransitionsEnabledForUserWithCatalogPlaybackCapability:a3];
  }

  else
  {
    return 0;
  }
}

@end