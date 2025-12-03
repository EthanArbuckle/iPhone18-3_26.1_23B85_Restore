@interface ICASOnboardingScreenType
- (ICASOnboardingScreenType)initWithOnboardingScreenType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASOnboardingScreenType

- (ICASOnboardingScreenType)initWithOnboardingScreenType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASOnboardingScreenType;
  result = [(ICASOnboardingScreenType *)&v5 init];
  if (result)
  {
    result->_onboardingScreenType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  onboardingScreenType = [(ICASOnboardingScreenType *)self onboardingScreenType];
  v4 = @"unknown";
  if (onboardingScreenType == 1)
  {
    v4 = @"welcome";
  }

  if (onboardingScreenType == 2)
  {
    return @"whatsNew";
  }

  else
  {
    return v4;
  }
}

@end