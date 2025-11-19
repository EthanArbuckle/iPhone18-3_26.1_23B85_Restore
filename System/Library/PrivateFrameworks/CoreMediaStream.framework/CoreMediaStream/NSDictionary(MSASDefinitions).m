@interface NSDictionary(MSASDefinitions)
- (uint64_t)MSASIsErrorRecovery;
- (uint64_t)MSASIsGlobalResetSync;
- (uint64_t)MSASIsLocalChange;
- (uint64_t)MSASIsNotInteresting;
@end

@implementation NSDictionary(MSASDefinitions)

- (uint64_t)MSASIsErrorRecovery
{
  v1 = [a1 objectForKey:@"isErrorRecovery"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)MSASIsNotInteresting
{
  v1 = [a1 objectForKey:@"notInteresting"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)MSASIsLocalChange
{
  v1 = [a1 objectForKey:@"isLocalChange"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)MSASIsGlobalResetSync
{
  v1 = [a1 objectForKey:@"isGlobalResetSync"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end