@interface NSDictionary
- (BOOL)dmps_excludedFromFirstLogin;
- (double)dmps_timeIntervalBeforeReboot;
- (double)dmps_timeIntervalBeforeWatchdog;
- (float)dmps_estimate;
@end

@implementation NSDictionary

- (float)dmps_estimate
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"estimate"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.1;
  }

  return v5;
}

- (double)dmps_timeIntervalBeforeWatchdog
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"timeout"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)dmps_timeIntervalBeforeReboot
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"timeoutBeforeReboot"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)dmps_excludedFromFirstLogin
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"excludedFromFirstLogin"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end