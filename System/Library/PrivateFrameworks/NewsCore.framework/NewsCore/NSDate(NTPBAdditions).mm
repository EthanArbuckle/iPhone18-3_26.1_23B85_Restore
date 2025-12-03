@interface NSDate(NTPBAdditions)
+ (id)dateWithPBDate:()NTPBAdditions;
+ (id)pbDate;
- (id)pbDate;
@end

@implementation NSDate(NTPBAdditions)

+ (id)dateWithPBDate:()NTPBAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF00];
    [a3 timeIntervalSince1970];
    v5 = [v4 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)pbDate
{
  date = [MEMORY[0x1E695DF00] date];
  pbDate = [date pbDate];

  return pbDate;
}

- (id)pbDate
{
  v2 = objc_alloc_init(MEMORY[0x1E69B6E00]);
  [self timeIntervalSince1970];
  [v2 setTimeIntervalSince1970:?];

  return v2;
}

@end