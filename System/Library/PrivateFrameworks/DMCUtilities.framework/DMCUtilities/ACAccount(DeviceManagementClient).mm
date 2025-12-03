@interface ACAccount(DeviceManagementClient)
+ (id)dmc_createManagementAccountWithStore:()DeviceManagementClient;
- (id)dmc_accountQuotaString;
- (id)dmc_bearerToken;
- (id)dmc_remoteManagementAccount;
- (uint64_t)dmc_enrollmentMethod;
- (uint64_t)dmc_enrollmentType;
- (uint64_t)dmc_isAccountSchemeSharediPad;
- (uint64_t)dmc_isManagementProfileLocked;
- (uint64_t)dmc_isPrimaryAccount;
- (uint64_t)dmc_isVisibleRemoteManagementAccount;
- (uint64_t)dmc_mdmServerToken;
- (void)dmc_setBearerToken:()DeviceManagementClient;
- (void)dmc_setEnrollmentMethod:()DeviceManagementClient;
- (void)dmc_setEnrollmentType:()DeviceManagementClient;
- (void)dmc_setManagementProfileLocked:()DeviceManagementClient;
@end

@implementation ACAccount(DeviceManagementClient)

+ (id)dmc_createManagementAccountWithStore:()DeviceManagementClient
{
  v3 = MEMORY[0x1E6959A28];
  v4 = a3;
  v5 = [v3 alloc];
  dmc_RemoteManagementAccountType = [v4 dmc_RemoteManagementAccountType];

  v7 = [v5 initWithAccountType:dmc_RemoteManagementAccountType];
  [v7 dmc_setAccountScheme:@"Bearer"];
  [v7 setAuthenticated:1];

  return v7;
}

- (id)dmc_bearerToken
{
  credential = [self credential];
  token = [credential token];

  return token;
}

- (void)dmc_setBearerToken:()DeviceManagementClient
{
  v6 = a3;
  credential = [self credential];
  if (!credential)
  {
    credential = objc_opt_new();
    v5 = *MEMORY[0x1E6959960];
    [credential setCredentialType:*MEMORY[0x1E6959960]];
    [self setCredential:credential];
    [self setCredentialType:v5];
  }

  [credential setToken:v6];
}

- (uint64_t)dmc_enrollmentMethod
{
  v1 = [self objectForKeyedSubscript:@"DMCEnrollmentMethod"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (void)dmc_setEnrollmentMethod:()DeviceManagementClient
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [self setObject:v2 forKeyedSubscript:@"DMCEnrollmentMethod"];
}

- (uint64_t)dmc_enrollmentType
{
  v1 = [self objectForKeyedSubscript:@"DMCEnrollmentType"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (void)dmc_setEnrollmentType:()DeviceManagementClient
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [self setObject:v2 forKeyedSubscript:@"DMCEnrollmentType"];
}

- (uint64_t)dmc_isManagementProfileLocked
{
  v1 = [self objectForKeyedSubscript:@"DMCIsManagementProfileLocked"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)dmc_setManagementProfileLocked:()DeviceManagementClient
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setObject:v2 forKeyedSubscript:@"DMCIsManagementProfileLocked"];
}

- (id)dmc_remoteManagementAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69598E8]];

  if (v4)
  {
    selfCopy = self;
  }

  else
  {
    dmc_remoteManagingAccountIdentifier = [self dmc_remoteManagingAccountIdentifier];

    if (dmc_remoteManagingAccountIdentifier)
    {
      defaultStore = [MEMORY[0x1E6959A48] defaultStore];
      dmc_remoteManagingAccountIdentifier2 = [self dmc_remoteManagingAccountIdentifier];
      selfCopy = [defaultStore accountWithIdentifier:dmc_remoteManagingAccountIdentifier2];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (uint64_t)dmc_mdmServerToken
{
  AppleAccountLibrary();

  return [self aa_mdmServerToken];
}

- (uint64_t)dmc_isVisibleRemoteManagementAccount
{
  dmc_managementProfileIdentifier = [self dmc_managementProfileIdentifier];

  if (!dmc_managementProfileIdentifier)
  {
    return 0;
  }

  dmc_enrollmentType = [self dmc_enrollmentType];
  if ([self dmc_enrollmentMethod])
  {
    v4 = [self dmc_enrollmentMethod] != 3;
  }

  else
  {
    v4 = 0;
  }

  return (dmc_enrollmentType != 0) & v4;
}

- (uint64_t)dmc_isPrimaryAccount
{
  v1 = [self objectForKeyedSubscript:@"primaryAccount"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)dmc_accountQuotaString
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = &stru_1F2860120;
  v2 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getAAQuotaInfoRequestClass_softClass;
  v22 = getAAQuotaInfoRequestClass_softClass;
  if (!getAAQuotaInfoRequestClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getAAQuotaInfoRequestClass_block_invoke;
    v18[3] = &unk_1E7ADC1F0;
    v18[4] = &v19;
    __getAAQuotaInfoRequestClass_block_invoke(v18);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = [[v3 alloc] initDetailedRequestWithAccount:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ACAccount_DeviceManagementClient__dmc_accountQuotaString__block_invoke;
  v9[3] = &unk_1E7ADC190;
  v11 = &v12;
  v9[4] = self;
  v6 = v2;
  v10 = v6;
  [v5 performRequestWithHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (uint64_t)dmc_isAccountSchemeSharediPad
{
  dmc_accountScheme = [self dmc_accountScheme];
  v2 = [dmc_accountScheme isEqualToString:@"SharediPad"];

  return v2;
}

@end