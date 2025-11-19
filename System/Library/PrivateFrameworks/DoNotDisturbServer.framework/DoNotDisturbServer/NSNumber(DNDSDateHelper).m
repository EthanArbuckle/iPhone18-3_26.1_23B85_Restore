@interface NSNumber(DNDSDateHelper)
+ (id)dnds_safeNumberWithDate:()DNDSDateHelper;
+ (uint64_t)dnds_numberWithDate:()DNDSDateHelper;
- (uint64_t)dnds_dateValue;
@end

@implementation NSNumber(DNDSDateHelper)

+ (uint64_t)dnds_numberWithDate:()DNDSDateHelper
{
  v3 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSinceReferenceDate];

  return [v3 numberWithDouble:?];
}

+ (id)dnds_safeNumberWithDate:()DNDSDateHelper
{
  if (a3)
  {
    v4 = [a1 dnds_numberWithDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)dnds_dateValue
{
  v1 = MEMORY[0x277CBEAA8];
  [a1 doubleValue];

  return [v1 dateWithTimeIntervalSinceReferenceDate:?];
}

@end