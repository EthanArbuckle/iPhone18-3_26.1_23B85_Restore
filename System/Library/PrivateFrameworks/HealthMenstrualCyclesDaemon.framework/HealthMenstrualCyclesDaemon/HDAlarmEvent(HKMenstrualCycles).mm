@interface HDAlarmEvent(HKMenstrualCycles)
- (id)hdmc_categoryIdentifier;
- (uint64_t)hdmc_fertileWindowDayShift;
- (uint64_t)hdmc_fertileWindowEndDayIndex;
@end

@implementation HDAlarmEvent(HKMenstrualCycles)

- (id)hdmc_categoryIdentifier
{
  eventIdentifier = [self eventIdentifier];
  v3 = *MEMORY[0x277D118F8];
  v4 = [eventIdentifier containsString:*MEMORY[0x277D118F8]];

  if (v4)
  {
    eventIdentifier2 = v3;
  }

  else
  {
    eventIdentifier2 = [self eventIdentifier];
  }

  return eventIdentifier2;
}

- (uint64_t)hdmc_fertileWindowEndDayIndex
{
  hdmc_categoryIdentifier = [self hdmc_categoryIdentifier];
  v3 = *MEMORY[0x277D118F8];

  if (hdmc_categoryIdentifier != v3)
  {
    return 0;
  }

  eventIdentifier = [self eventIdentifier];
  v6 = [eventIdentifier componentsSeparatedByString:@"_"];

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = HKMCNotificationDateComponentScalarFromCategory();

  return v8;
}

- (uint64_t)hdmc_fertileWindowDayShift
{
  hdmc_categoryIdentifier = [self hdmc_categoryIdentifier];
  v3 = *MEMORY[0x277D118F8];

  if (hdmc_categoryIdentifier != v3)
  {
    return 0;
  }

  eventIdentifier = [self eventIdentifier];
  v6 = [eventIdentifier componentsSeparatedByString:@"_"];

  if ([v6 count] < 2)
  {
    integerValue = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:1];
    integerValue = [v7 integerValue];
  }

  return integerValue;
}

@end