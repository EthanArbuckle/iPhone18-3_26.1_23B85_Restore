@interface AuthenticationClientProxy
- (void)didFinishOnboardingWithError:(id)error;
@end

@implementation AuthenticationClientProxy

- (void)didFinishOnboardingWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  AuthenticationClientProxy.didFinishOnboarding(error:)(error);
}

@end