@interface HDAlarmEvent(HKMenstrualCycles)
- (id)hdmc_categoryIdentifier;
- (uint64_t)hdmc_fertileWindowDayShift;
- (uint64_t)hdmc_fertileWindowEndDayIndex;
@end

@implementation HDAlarmEvent(HKMenstrualCycles)

- (id)hdmc_categoryIdentifier
{
  v2 = [a1 eventIdentifier];
  v3 = *MEMORY[0x277D118F8];
  v4 = [v2 containsString:*MEMORY[0x277D118F8]];

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 eventIdentifier];
  }

  return v5;
}

- (uint64_t)hdmc_fertileWindowEndDayIndex
{
  v2 = [a1 hdmc_categoryIdentifier];
  v3 = *MEMORY[0x277D118F8];

  if (v2 != v3)
  {
    return 0;
  }

  v5 = [a1 eventIdentifier];
  v6 = [v5 componentsSeparatedByString:@"_"];

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = HKMCNotificationDateComponentScalarFromCategory();

  return v8;
}

- (uint64_t)hdmc_fertileWindowDayShift
{
  v2 = [a1 hdmc_categoryIdentifier];
  v3 = *MEMORY[0x277D118F8];

  if (v2 != v3)
  {
    return 0;
  }

  v5 = [a1 eventIdentifier];
  v6 = [v5 componentsSeparatedByString:@"_"];

  if ([v6 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:1];
    v4 = [v7 integerValue];
  }

  return v4;
}

@end