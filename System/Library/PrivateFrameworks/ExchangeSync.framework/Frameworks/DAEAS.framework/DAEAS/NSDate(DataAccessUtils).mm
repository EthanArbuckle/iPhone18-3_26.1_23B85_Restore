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
  v5 = [self dateWithCalendarFormat:0 timeZone:0];
  v6 = [v5 tzDateToDateInGMT:v4];

  return v6;
}

- (id)gmtDateToDateInTimeZone:()DataAccessUtils
{
  v4 = a3;
  v5 = [self dateWithCalendarFormat:0 timeZone:0];
  v6 = [v5 gmtDateToDateInTimeZone:v4];

  return v6;
}

- (id)nearestMidnight
{
  v1 = [self dateWithCalendarFormat:0 timeZone:0];
  nearestMidnight = [v1 nearestMidnight];

  return nearestMidnight;
}

- (uint64_t)isGMTMidnight
{
  v1 = [self dateWithCalendarFormat:0 timeZone:0];
  isGMTMidnight = [v1 isGMTMidnight];

  return isGMTMidnight;
}

- (id)gmtMidnight
{
  v1 = [self dateWithCalendarFormat:0 timeZone:0];
  gmtMidnight = [v1 gmtMidnight];

  return gmtMidnight;
}

@end