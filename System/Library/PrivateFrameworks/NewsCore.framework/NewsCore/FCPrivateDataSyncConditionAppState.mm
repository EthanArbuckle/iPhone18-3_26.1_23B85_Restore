@interface FCPrivateDataSyncConditionAppState
- (BOOL)isSatisfied;
- (id)_appState;
- (id)description;
@end

@implementation FCPrivateDataSyncConditionAppState

- (BOOL)isSatisfied
{
  _appState = [(FCPrivateDataSyncConditionAppState *)self _appState];
  if ([_appState isRestricted])
  {
    isInstalled = 0;
  }

  else
  {
    isInstalled = [_appState isInstalled];
  }

  return isInstalled;
}

- (id)description
{
  _appState = [(FCPrivateDataSyncConditionAppState *)self _appState];
  v4 = MEMORY[0x1E696AEC0];
  if ([_appState isRestricted])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([_appState isBlocked])
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
  appState = [v2 appState];

  return appState;
}

@end