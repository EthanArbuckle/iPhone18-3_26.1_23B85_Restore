@interface HKHRJulianDayTimeZoneState
- (HKHRJulianDayTimeZoneState)init;
@end

@implementation HKHRJulianDayTimeZoneState

- (HKHRJulianDayTimeZoneState)init
{
  v7.receiver = self;
  v7.super_class = HKHRJulianDayTimeZoneState;
  v2 = [(HKHRJulianDayTimeZoneState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_count = 0;
    v4 = [MEMORY[0x277CBEAA8] distantPast];
    lastSampleDate = v3->_lastSampleDate;
    v3->_lastSampleDate = v4;
  }

  return v3;
}

@end