@interface NSDate(DayComparison)
- (BOOL)isSameDayAsDate:()DayComparison;
@end

@implementation NSDate(DayComparison)

- (BOOL)isSameDayAsDate:()DayComparison
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:28 fromDate:self];
  v8 = [currentCalendar components:28 fromDate:v5];

  year = [v7 year];
  if (year == [v8 year] && (v10 = objc_msgSend(v7, "month"), v10 == objc_msgSend(v8, "month")))
  {
    v11 = [v7 day];
    v12 = v11 == [v8 day];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end