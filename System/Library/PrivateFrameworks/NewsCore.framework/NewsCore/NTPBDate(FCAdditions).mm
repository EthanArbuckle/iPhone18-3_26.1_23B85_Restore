@interface NTPBDate(FCAdditions)
+ (id)date;
- (BOOL)isLaterThan:()FCAdditions;
@end

@implementation NTPBDate(FCAdditions)

+ (id)date
{
  date = [MEMORY[0x1E695DF00] date];
  pbDate = [date pbDate];

  return pbDate;
}

- (BOOL)isLaterThan:()FCAdditions
{
  v4 = a3;
  [self timeIntervalSince1970];
  v6 = v5;
  [v4 timeIntervalSince1970];
  v8 = v7;

  return v6 > v8;
}

@end