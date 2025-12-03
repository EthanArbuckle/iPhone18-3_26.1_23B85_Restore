@interface DMCProfileUILocalDataProvider
+ (id)_declarationsPayloadIdentifiersForProfileIdentifier:(id)identifier;
+ (id)localRMUIConfigurationInterfaceForProfileIdentifier:(id)identifier scope:(int64_t)scope initialLoad:(BOOL)load;
- (BOOL)isPasscodeSet;
- (BOOL)isProvisionallyEnrolled;
- (id)installedMDMProfileIdentifier;
- (id)installedProfileWithIdentifier:(id)identifier;
- (id)rmAccount;
- (id)rmSpecifierProviderForProfileIdentifier:(id)identifier scope:(int64_t)scope;
- (void)unenrollWithCompletionBlock:(id)block;
- (void)updateProfileWithIdentifier:(id)identifier interactionDelegate:(id)delegate;
@end

@implementation DMCProfileUILocalDataProvider

- (BOOL)isProvisionallyEnrolled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isProvisionallyEnrolled = [mEMORY[0x277D262A0] isProvisionallyEnrolled];

  return isProvisionallyEnrolled;
}

- (BOOL)isPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

- (id)installedMDMProfileIdentifier
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  installedMDMProfileIdentifier = [mEMORY[0x277D262A0] installedMDMProfileIdentifier];

  return installedMDMProfileIdentifier;
}

- (id)installedProfileWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  sharedConnection = [v3 sharedConnection];
  v6 = [sharedConnection installedProfileWithIdentifier:identifierCopy];

  return v6;
}

- (id)rmAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  dmc_visibleRemoteManagementAccounts = [defaultStore dmc_visibleRemoteManagementAccounts];
  firstObject = [dmc_visibleRemoteManagementAccounts firstObject];

  return firstObject;
}

- (void)updateProfileWithIdentifier:(id)identifier interactionDelegate:(id)delegate
{
  v5 = MEMORY[0x277D262A0];
  delegateCopy = delegate;
  identifierCopy = identifier;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection updateProfileWithIdentifier:identifierCopy interactionDelegate:delegateCopy];
}

- (void)unenrollWithCompletionBlock:(id)block
{
  v3 = MEMORY[0x277D262A0];
  blockCopy = block;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection unenrollWithCompletionBlock:blockCopy];
}

- (id)rmSpecifierProviderForProfileIdentifier:(id)identifier scope:(int64_t)scope
{
  v4 = [DMCProfileUILocalDataProvider localRMUIConfigurationInterfaceForProfileIdentifier:identifier scope:scope initialLoad:1];
  if (v4)
  {
    v5 = [[RMConfigurationsLocalDataProvider alloc] initWithRMUIConfigurationInterface:v4];
    v6 = [RMConfigurationsSpecifierProvider alloc];
    rmAccount = [v4 rmAccount];
    v8 = [(RMConfigurationsSpecifierProvider *)v6 initWithAccount:rmAccount rmDataProvider:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)localRMUIConfigurationInterfaceForProfileIdentifier:(id)identifier scope:(int64_t)scope initialLoad:(BOOL)load
{
  loadCopy = load;
  identifierCopy = identifier;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  unverifiedInstalledMDMProfileIdentifier = [mEMORY[0x277D262A0] unverifiedInstalledMDMProfileIdentifier];

  if ([identifierCopy isEqualToString:unverifiedInstalledMDMProfileIdentifier])
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    dmc_visibleRemoteManagementAccounts = [defaultStore dmc_visibleRemoteManagementAccounts];
    firstObject = [dmc_visibleRemoteManagementAccounts firstObject];

    v14 = objc_alloc(MEMORY[0x277D460E8]);
    if (firstObject)
    {
      v15 = [v14 initWithAccount:firstObject scope:scope initialLoad:loadCopy];
    }

    else
    {
      v15 = [v14 initWithMDMProfileIdentifier:unverifiedInstalledMDMProfileIdentifier scope:scope initialLoad:loadCopy];
    }

    goto LABEL_7;
  }

  firstObject = [self _declarationsPayloadIdentifiersForProfileIdentifier:identifierCopy];
  if (firstObject)
  {
    v15 = [objc_alloc(MEMORY[0x277D460E8]) initWithDeclarationsPayloadIdentifiers:firstObject scope:scope initialLoad:loadCopy];
LABEL_7:
    v16 = v15;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

+ (id)_declarationsPayloadIdentifiersForProfileIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:identifierCopy];

  if (v5)
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    payloads = [v5 payloads];
    v8 = [payloads countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(payloads);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifier = [v12 identifier];
            [v6 addObject:identifier];
          }
        }

        v9 = [payloads countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end