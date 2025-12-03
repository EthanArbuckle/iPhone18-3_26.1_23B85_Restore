@interface MockDateProvider
+ (id)mockDate;
- (id)date;
@end

@implementation MockDateProvider

- (id)date
{
  overrideDate = [(MockDateProvider *)self overrideDate];
  v3 = overrideDate;
  if (overrideDate)
  {
    mockDate = overrideDate;
  }

  else
  {
    mockDate = [objc_opt_class() mockDate];
  }

  v5 = mockDate;

  return v5;
}

+ (id)mockDate
{
  v2 = objc_opt_new();
  [v2 setYear:2023];
  [v2 setMonth:9];
  [v2 setDay:20];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar dateFromComponents:v2];

  return v4;
}

@end