@interface NSDate(_DASAdditions)
- (BOOL)isAfter:()_DASAdditions;
- (BOOL)isBefore:()_DASAdditions;
- (BOOL)isSameDayOfWeekAs:()_DASAdditions withCalendar:;
@end

@implementation NSDate(_DASAdditions)

- (BOOL)isBefore:()_DASAdditions
{
  v2 = [a1 earlierDate:?];
  v3 = v2 == a1;

  return v3;
}

- (BOOL)isAfter:()_DASAdditions
{
  v2 = [a1 laterDate:?];
  v3 = v2 == a1;

  return v3;
}

- (BOOL)isSameDayOfWeekAs:()_DASAdditions withCalendar:
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 components:512 fromDate:a1];
  v9 = [v6 components:512 fromDate:v7];

  v10 = [v8 weekday];
  v11 = v10 == [v9 weekday];

  return v11;
}

@end