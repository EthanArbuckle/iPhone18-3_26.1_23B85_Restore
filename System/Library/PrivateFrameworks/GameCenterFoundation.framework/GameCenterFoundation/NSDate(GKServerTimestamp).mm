@interface NSDate(GKServerTimestamp)
+ (id)_gkDateFromScalarServerTimestamp:()GKServerTimestamp;
+ (id)_gkDateFromServerTimestamp:()GKServerTimestamp;
+ (id)_gkServerTimestamp;
- (uint64_t)_gkServerTimestamp;
@end

@implementation NSDate(GKServerTimestamp)

+ (id)_gkDateFromScalarServerTimestamp:()GKServerTimestamp
{
  if (a3 / 1000.0 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v3];
  }

  return v5;
}

+ (id)_gkDateFromServerTimestamp:()GKServerTimestamp
{
  [a3 doubleValue];
  if (v3 / 1000.0 <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }

  return v4;
}

+ (id)_gkServerTimestamp
{
  date = [self date];
  _gkServerTimestamp = [date _gkServerTimestamp];

  return _gkServerTimestamp;
}

- (uint64_t)_gkServerTimestamp
{
  v1 = MEMORY[0x277CCABB0];
  [self timeIntervalSince1970];

  return [v1 _gkServerTimeInterval:?];
}

@end