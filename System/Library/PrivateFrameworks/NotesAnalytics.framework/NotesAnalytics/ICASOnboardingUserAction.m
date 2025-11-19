@interface ICASOnboardingUserAction
- (ICASOnboardingUserAction)initWithOnboardingUserAction:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASOnboardingUserAction

- (ICASOnboardingUserAction)initWithOnboardingUserAction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASOnboardingUserAction;
  result = [(ICASOnboardingUserAction *)&v5 init];
  if (result)
  {
    result->_onboardingUserAction = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASOnboardingUserAction *)self onboardingUserAction];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"continue";
  }

  if (v3 == 2)
  {
    return @"viewFeaturesLinkTap";
  }

  else
  {
    return v4;
  }
}

@end