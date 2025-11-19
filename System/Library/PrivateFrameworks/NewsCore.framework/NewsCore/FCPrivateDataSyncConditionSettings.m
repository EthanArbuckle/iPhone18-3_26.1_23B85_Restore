@interface FCPrivateDataSyncConditionSettings
- (BOOL)isSatisfied;
- (id)description;
@end

@implementation FCPrivateDataSyncConditionSettings

- (BOOL)isSatisfied
{
  v2 = +[FCAppleAccount sharedAccount];
  v3 = [v2 isPrivateDataSyncingEnabled];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[FCAppleAccount sharedAccount];
  v5 = [v4 isPrivateDataSyncingEnabled];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"<%p condition=Settings, enabled=%@>", self, v6];

  return v7;
}

@end