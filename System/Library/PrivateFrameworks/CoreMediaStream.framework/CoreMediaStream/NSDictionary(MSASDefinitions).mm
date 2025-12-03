@interface NSDictionary(MSASDefinitions)
- (uint64_t)MSASIsErrorRecovery;
- (uint64_t)MSASIsGlobalResetSync;
- (uint64_t)MSASIsLocalChange;
- (uint64_t)MSASIsNotInteresting;
@end

@implementation NSDictionary(MSASDefinitions)

- (uint64_t)MSASIsErrorRecovery
{
  v1 = [self objectForKey:@"isErrorRecovery"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)MSASIsNotInteresting
{
  v1 = [self objectForKey:@"notInteresting"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)MSASIsLocalChange
{
  v1 = [self objectForKey:@"isLocalChange"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)MSASIsGlobalResetSync
{
  v1 = [self objectForKey:@"isGlobalResetSync"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end