@interface MCUIBridgeDataProvider
- (BOOL)isPasscodeSet;
- (id)installedMDMProfileIdentifier;
- (id)installedProfileWithIdentifier:(id)identifier;
- (id)managedAppsUninstalledOnMDMRemoval;
- (id)payloadsSummaryForProfile:(id)profile showManagedPayloads:(BOOL)payloads;
- (id)rmAccount;
- (id)rmSpecifierProviderForProfileIdentifier:(id)identifier scope:(int64_t)scope;
@end

@implementation MCUIBridgeDataProvider

- (BOOL)isPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

- (id)installedMDMProfileIdentifier
{
  v2 = +[MCUIWatchManager shared];
  cachedMDMProfileIdentifier = [v2 cachedMDMProfileIdentifier];

  return cachedMDMProfileIdentifier;
}

- (id)installedProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[MCUIWatchManager shared];
  v5 = [v4 cachedProfileForIdentifier:identifierCopy];

  return v5;
}

- (id)payloadsSummaryForProfile:(id)profile showManagedPayloads:(BOOL)payloads
{
  profileCopy = profile;
  v5 = +[MCUIWatchManager shared];
  identifier = [profileCopy identifier];

  v7 = [v5 cachedProfileSummaryForIdentifier:identifier];

  return v7;
}

- (id)managedAppsUninstalledOnMDMRemoval
{
  v2 = +[MCUIWatchManager shared];
  managedAppsUninstalledOnMDMRemoval = [v2 managedAppsUninstalledOnMDMRemoval];

  return managedAppsUninstalledOnMDMRemoval;
}

- (id)rmAccount
{
  v2 = +[MCUIWatchManager shared];
  rmAccount = [v2 rmAccount];

  return rmAccount;
}

- (id)rmSpecifierProviderForProfileIdentifier:(id)identifier scope:(int64_t)scope
{
  identifierCopy = identifier;
  v5 = [[MCUIBridgeRMConfigurationsDataProvider alloc] initWithProfileIdentifier:identifierCopy];

  v6 = [objc_alloc(MEMORY[0x277D032B0]) initWithAccount:0 rmDataProvider:v5];

  return v6;
}

@end