@interface FCPrivateDataSyncConditionAppState
- (BOOL)isSatisfied;
- (id)_appState;
- (id)description;
@end

@implementation FCPrivateDataSyncConditionAppState

- (BOOL)isSatisfied
{
  v2 = [(FCPrivateDataSyncConditionAppState *)self _appState];
  if ([v2 isRestricted])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isInstalled];
  }

  return v3;
}

- (id)description
{
  v3 = [(FCPrivateDataSyncConditionAppState *)self _appState];
  v4 = MEMORY[0x1E696AEC0];
  if ([v3 isRestricted])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([v3 isBlocked])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v4 stringWithFormat:@"<%p condition=AppState, restricted=%@, blocked=%@>", self, v5, v6];

  return v7;
}

- (id)_appState
{
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.news"];
  v3 = [v2 appState];

  return v3;
}

@end