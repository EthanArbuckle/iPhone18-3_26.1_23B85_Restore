@interface SFOnboardingControllerProvider
+ (NSArray)onboardingProvidersForStartPage;
@end

@implementation SFOnboardingControllerProvider

+ (NSArray)onboardingProvidersForStartPage
{
  v2 = +[SFOnboardingCoordinator sharedCoordinator];
  v3 = [v2 onboardingProvidersForStartPage];

  return v3;
}

@end