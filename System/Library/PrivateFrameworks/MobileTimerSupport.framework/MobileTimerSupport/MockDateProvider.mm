@interface MockDateProvider
+ (id)mockDate;
- (id)date;
@end

@implementation MockDateProvider

- (id)date
{
  v2 = [(MockDateProvider *)self overrideDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_opt_class() mockDate];
  }

  v5 = v4;

  return v5;
}

+ (id)mockDate
{
  v2 = objc_opt_new();
  [v2 setYear:2023];
  [v2 setMonth:9];
  [v2 setDay:20];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 dateFromComponents:v2];

  return v4;
}

@end