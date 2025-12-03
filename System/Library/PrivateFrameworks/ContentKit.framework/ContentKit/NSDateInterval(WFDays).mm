@interface NSDateInterval(WFDays)
- (id)wf_initWithDaysAfterCurrentDate:()WFDays;
- (id)wf_initWithDaysBeforeAndAfterCurrentDate:()WFDays;
- (id)wf_initWithDaysBeforeCurrentDate:()WFDays;
@end

@implementation NSDateInterval(WFDays)

- (id)wf_initWithDaysAfterCurrentDate:()WFDays
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v7 setDay:a3];
  v8 = [currentCalendar dateByAddingComponents:v7 toDate:date options:0];
  v9 = [self initWithStartDate:date endDate:v8];

  return v9;
}

- (id)wf_initWithDaysBeforeCurrentDate:()WFDays
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v7 setDay:-a3];
  v8 = [currentCalendar dateByAddingComponents:v7 toDate:date options:0];
  v9 = [self initWithStartDate:v8 endDate:date];

  return v9;
}

- (id)wf_initWithDaysBeforeAndAfterCurrentDate:()WFDays
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v7 setDay:-a3];
  v8 = [currentCalendar dateByAddingComponents:v7 toDate:date options:0];
  [v7 setDay:a3];
  v9 = [currentCalendar dateByAddingComponents:v7 toDate:date options:0];
  v10 = [self initWithStartDate:v8 endDate:v9];

  return v10;
}

@end