@interface HMDTimePeriodNotificationConditionDefaultSunsetSunriseProvider
- (id)sunriseTimeForHome:(id)a3;
- (id)sunsetTimeForHome:(id)a3;
@end

@implementation HMDTimePeriodNotificationConditionDefaultSunsetSunriseProvider

- (id)sunsetTimeForHome:(id)a3
{
  v3 = [a3 homeLocationHandler];
  v4 = [v3 location];
  v5 = [HMDLocation sunsetTimeForLocation:v4];

  return v5;
}

- (id)sunriseTimeForHome:(id)a3
{
  v3 = [a3 homeLocationHandler];
  v4 = [v3 location];
  v5 = [HMDLocation sunriseTimeForLocation:v4];

  return v5;
}

@end