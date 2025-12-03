@interface AuthenticationOverlay
- (void)didFinishOnboardingWithError:(id)error;
@end

@implementation AuthenticationOverlay

- (void)didFinishOnboardingWithError:(id)error
{
  errorCopy = error;

  sub_24E0C58B4(error);
}

@end