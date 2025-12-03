@interface NSDate(_DASAdditions)
- (BOOL)isAfter:()_DASAdditions;
- (BOOL)isBefore:()_DASAdditions;
- (BOOL)isSameDayOfWeekAs:()_DASAdditions withCalendar:;
@end

@implementation NSDate(_DASAdditions)

- (BOOL)isBefore:()_DASAdditions
{
  v2 = [self earlierDate:?];
  v3 = v2 == self;

  return v3;
}

- (BOOL)isAfter:()_DASAdditions
{
  v2 = [self laterDate:?];
  v3 = v2 == self;

  return v3;
}

- (BOOL)isSameDayOfWeekAs:()_DASAdditions withCalendar:
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 components:512 fromDate:self];
  v9 = [v6 components:512 fromDate:v7];

  weekday = [v8 weekday];
  v11 = weekday == [v9 weekday];

  return v11;
}

@end