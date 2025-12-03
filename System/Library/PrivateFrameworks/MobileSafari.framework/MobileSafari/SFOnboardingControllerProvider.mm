@interface SFOnboardingControllerProvider
+ (NSArray)onboardingProvidersForStartPage;
@end

@implementation SFOnboardingControllerProvider

+ (NSArray)onboardingProvidersForStartPage
{
  v2 = +[SFOnboardingCoordinator sharedCoordinator];
  onboardingProvidersForStartPage = [v2 onboardingProvidersForStartPage];

  return onboardingProvidersForStartPage;
}

@end