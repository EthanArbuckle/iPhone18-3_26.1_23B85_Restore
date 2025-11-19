@interface NSDateInterval(HKCodingSupport)
+ (id)hk_dateIntervalWithCodableDateInterval:()HKCodingSupport sourceTimeZone:;
- (HKCodableDateInterval)hk_codableDateInterval;
@end

@implementation NSDateInterval(HKCodingSupport)

+ (id)hk_dateIntervalWithCodableDateInterval:()HKCodingSupport sourceTimeZone:
{
  v5 = a4;
  v6 = a3;
  [v6 startDate];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  v8 = [v7 hk_dateFromSourceTimeZone:v5];

  [v6 endDate];
  v10 = v9;

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v10];
  v12 = [v11 hk_dateFromSourceTimeZone:v5];

  v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v12];

  return v13;
}

- (HKCodableDateInterval)hk_codableDateInterval
{
  v2 = objc_alloc_init(HKCodableDateInterval);
  v3 = [a1 startDate];
  [v3 timeIntervalSinceReferenceDate];
  [(HKCodableDateInterval *)v2 setStartDate:?];

  v4 = [a1 endDate];
  [v4 timeIntervalSinceReferenceDate];
  [(HKCodableDateInterval *)v2 setEndDate:?];

  return v2;
}

@end