@interface HMDTimePeriodNotificationConditionDefaultSunsetSunriseProvider
- (id)sunriseTimeForHome:(id)home;
- (id)sunsetTimeForHome:(id)home;
@end

@implementation HMDTimePeriodNotificationConditionDefaultSunsetSunriseProvider

- (id)sunsetTimeForHome:(id)home
{
  homeLocationHandler = [home homeLocationHandler];
  location = [homeLocationHandler location];
  v5 = [HMDLocation sunsetTimeForLocation:location];

  return v5;
}

- (id)sunriseTimeForHome:(id)home
{
  homeLocationHandler = [home homeLocationHandler];
  location = [homeLocationHandler location];
  v5 = [HMDLocation sunriseTimeForLocation:location];

  return v5;
}

@end