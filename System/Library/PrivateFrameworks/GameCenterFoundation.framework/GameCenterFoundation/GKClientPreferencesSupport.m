@interface GKClientPreferencesSupport
- (BOOL)localPlayerIsUnderage;
- (NSString)localPlayerID;
- (int)localPlayerAgeCategory;
- (void)didSetEnvironment;
- (void)didSetInboxContactsOnlyWithRefresh:(BOOL)a3;
- (void)didSetStoreBagUrl;
@end

@implementation GKClientPreferencesSupport

- (NSString)localPlayerID
{
  v2 = +[GKLocalPlayer local];
  v3 = [v2 playerID];

  return v3;
}

- (BOOL)localPlayerIsUnderage
{
  v2 = +[GKLocalPlayer local];
  v3 = [v2 isUnderage];

  return v3;
}

- (int)localPlayerAgeCategory
{
  v2 = [(GKClientPreferencesSupport *)self daemonProxy];
  v3 = [v2 localPlayerAgeCategory];

  return v3;
}

- (void)didSetEnvironment
{
  v3 = [(GKClientPreferencesSupport *)self daemonProxy];
  v2 = [v3 utilityServicePrivate];
  [v2 terminate];
}

- (void)didSetStoreBagUrl
{
  v3 = [(GKClientPreferencesSupport *)self daemonProxy];
  v2 = [v3 utilityServicePrivate];
  [v2 refreshPreferences];
}

- (void)didSetInboxContactsOnlyWithRefresh:(BOOL)a3
{
  if (a3)
  {
    v4 = [(GKClientPreferencesSupport *)self daemonProxy];
    v3 = [v4 utilityServicePrivate];
    [v3 refreshPreferencesWithDataType:3];
  }
}

@end