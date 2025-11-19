@interface NSDate(DayComparison)
- (BOOL)isSameDayAsDate:()DayComparison;
@end

@implementation NSDate(DayComparison)

- (BOOL)isSameDayAsDate:()DayComparison
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:28 fromDate:a1];
  v8 = [v6 components:28 fromDate:v5];

  v9 = [v7 year];
  if (v9 == [v8 year] && (v10 = objc_msgSend(v7, "month"), v10 == objc_msgSend(v8, "month")))
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