@interface MCUIBridgeDataProvider
- (BOOL)isPasscodeSet;
- (id)installedMDMProfileIdentifier;
- (id)installedProfileWithIdentifier:(id)a3;
- (id)managedAppsUninstalledOnMDMRemoval;
- (id)payloadsSummaryForProfile:(id)a3 showManagedPayloads:(BOOL)a4;
- (id)rmAccount;
- (id)rmSpecifierProviderForProfileIdentifier:(id)a3 scope:(int64_t)a4;
@end

@implementation MCUIBridgeDataProvider

- (BOOL)isPasscodeSet
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (id)installedMDMProfileIdentifier
{
  v2 = +[MCUIWatchManager shared];
  v3 = [v2 cachedMDMProfileIdentifier];

  return v3;
}

- (id)installedProfileWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[MCUIWatchManager shared];
  v5 = [v4 cachedProfileForIdentifier:v3];

  return v5;
}

- (id)payloadsSummaryForProfile:(id)a3 showManagedPayloads:(BOOL)a4
{
  v4 = a3;
  v5 = +[MCUIWatchManager shared];
  v6 = [v4 identifier];

  v7 = [v5 cachedProfileSummaryForIdentifier:v6];

  return v7;
}

- (id)managedAppsUninstalledOnMDMRemoval
{
  v2 = +[MCUIWatchManager shared];
  v3 = [v2 managedAppsUninstalledOnMDMRemoval];

  return v3;
}

- (id)rmAccount
{
  v2 = +[MCUIWatchManager shared];
  v3 = [v2 rmAccount];

  return v3;
}

- (id)rmSpecifierProviderForProfileIdentifier:(id)a3 scope:(int64_t)a4
{
  v4 = a3;
  v5 = [[MCUIBridgeRMConfigurationsDataProvider alloc] initWithProfileIdentifier:v4];

  v6 = [objc_alloc(MEMORY[0x277D032B0]) initWithAccount:0 rmDataProvider:v5];

  return v6;
}

@end