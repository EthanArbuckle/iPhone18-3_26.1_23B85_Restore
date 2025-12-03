@interface AIDAAccountManager(DMCEnrollmentProvider)
- (id)dmc_remoteManagementAccount;
@end

@implementation AIDAAccountManager(DMCEnrollmentProvider)

- (id)dmc_remoteManagementAccount
{
  accounts = [self accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  dmc_remoteManagingAccountIdentifier = [v3 dmc_remoteManagingAccountIdentifier];

  if (dmc_remoteManagingAccountIdentifier)
  {
    accountStore = [self accountStore];
    dmc_remoteManagingAccountIdentifier2 = [v3 dmc_remoteManagingAccountIdentifier];
    v7 = [accountStore dmc_remoteManagementAccountForIdentifier:dmc_remoteManagingAccountIdentifier2];
  }

  else
  {
    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_ERROR, "iCloud account does not have an RM account identifier", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end