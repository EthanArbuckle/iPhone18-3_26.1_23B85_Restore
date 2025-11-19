@interface ICASOnboardingScreenType
- (ICASOnboardingScreenType)initWithOnboardingScreenType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASOnboardingScreenType

- (ICASOnboardingScreenType)initWithOnboardingScreenType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASOnboardingScreenType;
  result = [(ICASOnboardingScreenType *)&v5 init];
  if (result)
  {
    result->_onboardingScreenType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASOnboardingScreenType *)self onboardingScreenType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"welcome";
  }

  if (v3 == 2)
  {
    return @"whatsNew";
  }

  else
  {
    return v4;
  }
}

@end