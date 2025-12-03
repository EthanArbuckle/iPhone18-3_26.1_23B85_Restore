@interface NSDateInterval(HeadphoneSevenDayDose)
- (id)hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration;
@end

@implementation NSDateInterval(HeadphoneSevenDayDose)

- (id)hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration
{
  v2 = HKHeadphoneAudioExposureEventType();
  [v2 maximumAllowedDuration];
  v4 = v3;

  [self duration];
  if (v5 <= v4)
  {
    selfCopy = self;
  }

  else
  {
    endDate = [self endDate];
    v7 = [endDate dateByAddingTimeInterval:-v4];

    selfCopy = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 duration:v4];
  }

  return selfCopy;
}

@end