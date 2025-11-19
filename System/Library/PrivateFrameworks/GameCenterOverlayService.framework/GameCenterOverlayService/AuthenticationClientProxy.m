@interface AuthenticationClientProxy
- (void)didFinishOnboardingWithError:(id)a3;
@end

@implementation AuthenticationClientProxy

- (void)didFinishOnboardingWithError:(id)a3
{
  v5 = a3;
  v6 = self;
  AuthenticationClientProxy.didFinishOnboarding(error:)(a3);
}

@end