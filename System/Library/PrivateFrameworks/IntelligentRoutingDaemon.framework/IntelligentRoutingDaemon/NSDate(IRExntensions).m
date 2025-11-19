@interface NSDate(IRExntensions)
+ (uint64_t)daysFromDate:()IRExntensions toDate:;
+ (uint64_t)isDate:()IRExntensions inSameDayAsDate:forTimeZoneInSeconds:;
@end

@implementation NSDate(IRExntensions)

+ (uint64_t)isDate:()IRExntensions inSameDayAsDate:forTimeZoneInSeconds:
{
  v7 = MEMORY[0x277CBEA80];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [v10 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v12 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:a5];
  [v11 setTimeZone:v12];
  v13 = [v11 isDate:v9 inSameDayAsDate:v8];

  return v13;
}

+ (uint64_t)daysFromDate:()IRExntensions toDate:
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [v9 components:16 fromDate:v7 toDate:v6 options:0];

  v11 = [v10 day];
  return v11;
}

@end