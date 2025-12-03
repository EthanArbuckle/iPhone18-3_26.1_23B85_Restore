@interface JSRestrictionsController
- (JSValue)areMoviesRestricted;
- (JSValue)areMusicVideosRestricted;
- (JSValue)isExplicitContentRestricted;
- (JSValue)isSocialDisabled;
- (JSValue)isSubscriptionContentRestricted;
- (JSValue)isTVRestricted;
- (void)setIsExplicitContentRestricted:(void *)restricted;
@end

@implementation JSRestrictionsController

- (void)setIsExplicitContentRestricted:(void *)restricted
{
  restrictedCopy = restricted;
  selfCopy = self;
}

- (JSValue)isExplicitContentRestricted
{
  selfCopy = self;
  v3 = sub_2167B24D0();

  return v3;
}

- (JSValue)areMusicVideosRestricted
{
  selfCopy = self;
  v3 = sub_2167B2528();

  return v3;
}

- (JSValue)isTVRestricted
{
  selfCopy = self;
  v3 = sub_2167B2584();

  return v3;
}

- (JSValue)areMoviesRestricted
{
  selfCopy = self;
  v3 = sub_2167B25DC();

  return v3;
}

- (JSValue)isSocialDisabled
{
  selfCopy = self;
  v3 = sub_2167B2634();

  return v3;
}

- (JSValue)isSubscriptionContentRestricted
{
  selfCopy = self;
  v3 = sub_2167B268C();

  return v3;
}

@end