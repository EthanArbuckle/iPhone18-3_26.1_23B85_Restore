@interface NSDate(DataAccessUtils)
- (id)gmtDateToDateInTimeZone:()DataAccessUtils;
- (id)gmtMidnight;
- (id)nearestMidnight;
- (id)tzDateToDateInGMT:()DataAccessUtils;
- (uint64_t)isGMTMidnight;
@end

@implementation NSDate(DataAccessUtils)

- (id)tzDateToDateInGMT:()DataAccessUtils
{
  v4 = a3;
  v5 = [a1 dateWithCalendarFormat:0 timeZone:0];
  v6 = [v5 tzDateToDateInGMT:v4];

  return v6;
}

- (id)gmtDateToDateInTimeZone:()DataAccessUtils
{
  v4 = a3;
  v5 = [a1 dateWithCalendarFormat:0 timeZone:0];
  v6 = [v5 gmtDateToDateInTimeZone:v4];

  return v6;
}

- (id)nearestMidnight
{
  v1 = [a1 dateWithCalendarFormat:0 timeZone:0];
  v2 = [v1 nearestMidnight];

  return v2;
}

- (uint64_t)isGMTMidnight
{
  v1 = [a1 dateWithCalendarFormat:0 timeZone:0];
  v2 = [v1 isGMTMidnight];

  return v2;
}

- (id)gmtMidnight
{
  v1 = [a1 dateWithCalendarFormat:0 timeZone:0];
  v2 = [v1 gmtMidnight];

  return v2;
}

@end