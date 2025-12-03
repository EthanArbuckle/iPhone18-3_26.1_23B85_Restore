@interface SocialOnboardingContactsMatchingRequestOperation
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation SocialOnboardingContactsMatchingRequestOperation

- (void)execute
{
  selfCopy = self;
  sub_2169995C0();
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_216999C70(error);
}

@end