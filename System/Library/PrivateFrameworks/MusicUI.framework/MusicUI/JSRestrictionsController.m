@interface JSRestrictionsController
- (JSValue)areMoviesRestricted;
- (JSValue)areMusicVideosRestricted;
- (JSValue)isExplicitContentRestricted;
- (JSValue)isSocialDisabled;
- (JSValue)isSubscriptionContentRestricted;
- (JSValue)isTVRestricted;
- (void)setIsExplicitContentRestricted:(void *)a3;
@end

@implementation JSRestrictionsController

- (void)setIsExplicitContentRestricted:(void *)a3
{
  v4 = a3;
  v5 = a1;
}

- (JSValue)isExplicitContentRestricted
{
  v2 = self;
  v3 = sub_2167B24D0();

  return v3;
}

- (JSValue)areMusicVideosRestricted
{
  v2 = self;
  v3 = sub_2167B2528();

  return v3;
}

- (JSValue)isTVRestricted
{
  v2 = self;
  v3 = sub_2167B2584();

  return v3;
}

- (JSValue)areMoviesRestricted
{
  v2 = self;
  v3 = sub_2167B25DC();

  return v3;
}

- (JSValue)isSocialDisabled
{
  v2 = self;
  v3 = sub_2167B2634();

  return v3;
}

- (JSValue)isSubscriptionContentRestricted
{
  v2 = self;
  v3 = sub_2167B268C();

  return v3;
}

@end