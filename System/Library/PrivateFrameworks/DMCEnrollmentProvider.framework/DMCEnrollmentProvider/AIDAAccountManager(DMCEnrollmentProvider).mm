@interface AIDAAccountManager(DMCEnrollmentProvider)
- (id)dmc_remoteManagementAccount;
@end

@implementation AIDAAccountManager(DMCEnrollmentProvider)

- (id)dmc_remoteManagementAccount
{
  v2 = [a1 accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  v4 = [v3 dmc_remoteManagingAccountIdentifier];

  if (v4)
  {
    v5 = [a1 accountStore];
    v6 = [v3 dmc_remoteManagingAccountIdentifier];
    v7 = [v5 dmc_remoteManagementAccountForIdentifier:v6];
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