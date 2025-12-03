@interface SettingsOnboardingOverlay
- (void)didFinishOnboardingWithError:(id)error;
@end

@implementation SettingsOnboardingOverlay

- (void)didFinishOnboardingWithError:(id)error
{
  errorCopy = error;

  sub_24E214834(error);
}

@end