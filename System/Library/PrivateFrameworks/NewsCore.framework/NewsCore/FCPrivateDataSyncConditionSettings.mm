@interface FCPrivateDataSyncConditionSettings
- (BOOL)isSatisfied;
- (id)description;
@end

@implementation FCPrivateDataSyncConditionSettings

- (BOOL)isSatisfied
{
  v2 = +[FCAppleAccount sharedAccount];
  isPrivateDataSyncingEnabled = [v2 isPrivateDataSyncingEnabled];

  return isPrivateDataSyncingEnabled;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[FCAppleAccount sharedAccount];
  isPrivateDataSyncingEnabled = [v4 isPrivateDataSyncingEnabled];
  v6 = @"NO";
  if (isPrivateDataSyncingEnabled)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"<%p condition=Settings, enabled=%@>", self, v6];

  return v7;
}

@end