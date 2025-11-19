@interface DMCProfileUILocalDataProvider
+ (id)_declarationsPayloadIdentifiersForProfileIdentifier:(id)a3;
+ (id)localRMUIConfigurationInterfaceForProfileIdentifier:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5;
- (BOOL)isPasscodeSet;
- (BOOL)isProvisionallyEnrolled;
- (id)installedMDMProfileIdentifier;
- (id)installedProfileWithIdentifier:(id)a3;
- (id)rmAccount;
- (id)rmSpecifierProviderForProfileIdentifier:(id)a3 scope:(int64_t)a4;
- (void)unenrollWithCompletionBlock:(id)a3;
- (void)updateProfileWithIdentifier:(id)a3 interactionDelegate:(id)a4;
@end

@implementation DMCProfileUILocalDataProvider

- (BOOL)isProvisionallyEnrolled
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isProvisionallyEnrolled];

  return v3;
}

- (BOOL)isPasscodeSet
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (id)installedMDMProfileIdentifier
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];

  return v3;
}

- (id)installedProfileWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  v6 = [v5 installedProfileWithIdentifier:v4];

  return v6;
}

- (id)rmAccount
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [v2 dmc_visibleRemoteManagementAccounts];
  v4 = [v3 firstObject];

  return v4;
}

- (void)updateProfileWithIdentifier:(id)a3 interactionDelegate:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  [v8 updateProfileWithIdentifier:v7 interactionDelegate:v6];
}

- (void)unenrollWithCompletionBlock:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 unenrollWithCompletionBlock:v4];
}

- (id)rmSpecifierProviderForProfileIdentifier:(id)a3 scope:(int64_t)a4
{
  v4 = [DMCProfileUILocalDataProvider localRMUIConfigurationInterfaceForProfileIdentifier:a3 scope:a4 initialLoad:1];
  if (v4)
  {
    v5 = [[RMConfigurationsLocalDataProvider alloc] initWithRMUIConfigurationInterface:v4];
    v6 = [RMConfigurationsSpecifierProvider alloc];
    v7 = [v4 rmAccount];
    v8 = [(RMConfigurationsSpecifierProvider *)v6 initWithAccount:v7 rmDataProvider:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)localRMUIConfigurationInterfaceForProfileIdentifier:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [MEMORY[0x277D262A0] sharedConnection];
  v10 = [v9 unverifiedInstalledMDMProfileIdentifier];

  if ([v8 isEqualToString:v10])
  {
    v11 = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [v11 dmc_visibleRemoteManagementAccounts];
    v13 = [v12 firstObject];

    v14 = objc_alloc(MEMORY[0x277D460E8]);
    if (v13)
    {
      v15 = [v14 initWithAccount:v13 scope:a4 initialLoad:v5];
    }

    else
    {
      v15 = [v14 initWithMDMProfileIdentifier:v10 scope:a4 initialLoad:v5];
    }

    goto LABEL_7;
  }

  v13 = [a1 _declarationsPayloadIdentifiersForProfileIdentifier:v8];
  if (v13)
  {
    v15 = [objc_alloc(MEMORY[0x277D460E8]) initWithDeclarationsPayloadIdentifiers:v13 scope:a4 initialLoad:v5];
LABEL_7:
    v16 = v15;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

+ (id)_declarationsPayloadIdentifiersForProfileIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 installedProfileWithIdentifier:v3];

  if (v5)
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v5 payloads];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 identifier];
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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