@interface NSDate(CRXUExtensions)
+ (double)crxu_now;
+ (id)crxu_dateWithYear:()CRXUExtensions month:day:;
- (BOOL)crxu_isAfter:()CRXUExtensions;
- (BOOL)crxu_isBefore:()CRXUExtensions;
- (id)crxu_dateByAddingDays:()CRXUExtensions;
- (id)crxu_yearMonthDayComponents;
- (uint64_t)crxu_numberOfDaysAfterDate:()CRXUExtensions;
@end

@implementation NSDate(CRXUExtensions)

- (id)crxu_dateByAddingDays:()CRXUExtensions
{
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 dateByAddingUnit:16 value:a3 toDate:self options:0];

  return v7;
}

- (id)crxu_yearMonthDayComponents
{
  v2 = objc_alloc(MEMORY[0x277CBEA80]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = [v3 components:28 fromDate:self];

  return v4;
}

+ (id)crxu_dateWithYear:()CRXUExtensions month:day:
{
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:a5];
  [v8 setMonth:a4];
  [v8 setYear:a3];
  v9 = objc_alloc(MEMORY[0x277CBEA80]);
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v11 = [v10 dateFromComponents:v8];

  return v11;
}

- (uint64_t)crxu_numberOfDaysAfterDate:()CRXUExtensions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v14 = 0;
  [v7 rangeOfUnit:16 startDate:&v14 interval:0 forDate:v5];

  v8 = v14;
  v13 = 0;
  [v7 rangeOfUnit:16 startDate:&v13 interval:0 forDate:self];
  v9 = v13;
  v10 = [v7 components:16 fromDate:v8 toDate:v9 options:0];
  v11 = [v10 day];

  return v11;
}

- (BOOL)crxu_isAfter:()CRXUExtensions
{
  v4 = a3;
  [self timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4 timeIntervalSinceReferenceDate];
  v8 = v7;

  return v6 > v8;
}

- (BOOL)crxu_isBefore:()CRXUExtensions
{
  v4 = a3;
  [self timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4 timeIntervalSinceReferenceDate];
  v8 = v7;

  return v6 < v8;
}

+ (double)crxu_now
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v2 = v1;

  return v2;
}

@end