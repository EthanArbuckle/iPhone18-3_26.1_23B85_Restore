@interface NSDate(WBAdditions)
+ (id)tc_dateWithWordDate:()WBAdditions;
- (void)tc_copyToWordDate:()WBAdditions;
@end

@implementation NSDate(WBAdditions)

+ (id)tc_dateWithWordDate:()WBAdditions
{
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  [v4 setYear:a3[10] + 1900];
  [v4 setMonth:a3[9]];
  [v4 setDay:a3[8]];
  [v4 setHour:a3[7]];
  [v4 setMinute:a3[6]];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (void)tc_copyToWordDate:()WBAdditions
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = a1;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [a1 timeIntervalSinceReferenceDate];
    v5 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  }

  v9 = v5;
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 components:638 fromDate:v9];

  *(a3 + 12) = [v8 minute];
  *(a3 + 14) = [v8 hour];
  *(a3 + 8) = [v8 weekday] - 1;
  *(a3 + 16) = [v8 day];
  *(a3 + 18) = [v8 month];
  *(a3 + 20) = [v8 year] - 1900;
}

@end