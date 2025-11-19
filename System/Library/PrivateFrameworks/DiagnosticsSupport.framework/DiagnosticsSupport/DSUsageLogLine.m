@interface DSUsageLogLine
- (BOOL)isOffPower;
- (BOOL)isOnPower;
- (BOOL)isReset;
@end

@implementation DSUsageLogLine

- (BOOL)isReset
{
  v2 = [(DSUsageLogLine *)self eventType];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (BOOL)isOnPower
{
  v2 = [(DSUsageLogLine *)self eventType];
  v3 = [v2 isEqualToString:@"2"];

  return v3;
}

- (BOOL)isOffPower
{
  v2 = [(DSUsageLogLine *)self eventType];
  v3 = [v2 isEqualToString:@"3"];

  return v3;
}

@end