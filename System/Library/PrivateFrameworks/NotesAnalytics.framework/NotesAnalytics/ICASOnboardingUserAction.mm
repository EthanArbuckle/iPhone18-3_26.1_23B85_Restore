@interface ICASOnboardingUserAction
- (ICASOnboardingUserAction)initWithOnboardingUserAction:(int64_t)action;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASOnboardingUserAction

- (ICASOnboardingUserAction)initWithOnboardingUserAction:(int64_t)action
{
  v5.receiver = self;
  v5.super_class = ICASOnboardingUserAction;
  result = [(ICASOnboardingUserAction *)&v5 init];
  if (result)
  {
    result->_onboardingUserAction = action;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  onboardingUserAction = [(ICASOnboardingUserAction *)self onboardingUserAction];
  v4 = @"unknown";
  if (onboardingUserAction == 1)
  {
    v4 = @"continue";
  }

  if (onboardingUserAction == 2)
  {
    return @"viewFeaturesLinkTap";
  }

  else
  {
    return v4;
  }
}

@end