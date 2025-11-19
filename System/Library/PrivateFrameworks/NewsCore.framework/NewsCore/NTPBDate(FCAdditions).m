@interface NTPBDate(FCAdditions)
+ (id)date;
- (BOOL)isLaterThan:()FCAdditions;
@end

@implementation NTPBDate(FCAdditions)

+ (id)date
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [v0 pbDate];

  return v1;
}

- (BOOL)isLaterThan:()FCAdditions
{
  v4 = a3;
  [a1 timeIntervalSince1970];
  v6 = v5;
  [v4 timeIntervalSince1970];
  v8 = v7;

  return v6 > v8;
}

@end