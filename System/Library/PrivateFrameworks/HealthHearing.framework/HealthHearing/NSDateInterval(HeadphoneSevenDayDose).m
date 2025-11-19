@interface NSDateInterval(HeadphoneSevenDayDose)
- (id)hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration;
@end

@implementation NSDateInterval(HeadphoneSevenDayDose)

- (id)hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration
{
  v2 = HKHeadphoneAudioExposureEventType();
  [v2 maximumAllowedDuration];
  v4 = v3;

  [a1 duration];
  if (v5 <= v4)
  {
    v8 = a1;
  }

  else
  {
    v6 = [a1 endDate];
    v7 = [v6 dateByAddingTimeInterval:-v4];

    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 duration:v4];
  }

  return v8;
}

@end