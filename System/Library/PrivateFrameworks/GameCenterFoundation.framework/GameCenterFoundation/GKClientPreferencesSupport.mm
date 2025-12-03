@interface GKClientPreferencesSupport
- (BOOL)localPlayerIsUnderage;
- (NSString)localPlayerID;
- (int)localPlayerAgeCategory;
- (void)didSetEnvironment;
- (void)didSetInboxContactsOnlyWithRefresh:(BOOL)refresh;
- (void)didSetStoreBagUrl;
@end

@implementation GKClientPreferencesSupport

- (NSString)localPlayerID
{
  v2 = +[GKLocalPlayer local];
  playerID = [v2 playerID];

  return playerID;
}

- (BOOL)localPlayerIsUnderage
{
  v2 = +[GKLocalPlayer local];
  isUnderage = [v2 isUnderage];

  return isUnderage;
}

- (int)localPlayerAgeCategory
{
  daemonProxy = [(GKClientPreferencesSupport *)self daemonProxy];
  localPlayerAgeCategory = [daemonProxy localPlayerAgeCategory];

  return localPlayerAgeCategory;
}

- (void)didSetEnvironment
{
  daemonProxy = [(GKClientPreferencesSupport *)self daemonProxy];
  utilityServicePrivate = [daemonProxy utilityServicePrivate];
  [utilityServicePrivate terminate];
}

- (void)didSetStoreBagUrl
{
  daemonProxy = [(GKClientPreferencesSupport *)self daemonProxy];
  utilityServicePrivate = [daemonProxy utilityServicePrivate];
  [utilityServicePrivate refreshPreferences];
}

- (void)didSetInboxContactsOnlyWithRefresh:(BOOL)refresh
{
  if (refresh)
  {
    daemonProxy = [(GKClientPreferencesSupport *)self daemonProxy];
    utilityServicePrivate = [daemonProxy utilityServicePrivate];
    [utilityServicePrivate refreshPreferencesWithDataType:3];
  }
}

@end