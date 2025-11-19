@interface CDPContext
+ (BOOL)_isKeychainSyncAllowedByMDM;
+ (CDPContext)contextWithAuthenticationResults:(id)a3;
+ (id)contextForAccountWithAltDSID:(id)a3;
+ (id)contextForAccountWithAppleID:(id)a3;
+ (id)contextForAccountWithDSID:(id)a3;
+ (id)contextForPrimaryAccount;
+ (id)preflightContext:(id)a3;
+ (void)contextForPrimaryAccount;
- (BOOL)_isLocalSecretCachedAcknowledgingInMemoryValue;
- (BOOL)desiresAllRecords;
- (BOOL)is2FAFAUserFromNetwork;
- (BOOL)isBeneficiaryFlow;
- (BOOL)isICDPEnabledFromNetwork;
- (BOOL)isLocalSecretCached;
- (BOOL)isPiggybackingRecovery;
- (BOOL)isPrimaryAccount;
- (BOOL)isTTSURecovery;
- (BOOL)isiCDPEligibleWithError:(id *)a3;
- (BOOL)keychainSyncAllowedByServer;
- (CDPContext)init;
- (CDPContext)initWithAccount:(id)a3;
- (CDPContext)initWithAuthenticationResults:(id)a3;
- (CDPContext)initWithCoder:(id)a3;
- (NSNumber)adpCohort;
- (NSString)telemetryDeviceSessionID;
- (id)cliqueConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initNeedingPreflight:(BOOL)a3;
- (int64_t)numberOfTrustedDevices;
- (void)_fakeSOSFlagsWithUserDefaults;
- (void)_isLocalSecretCachedAcknowledgingInMemoryValue;
- (void)adpCohort;
- (void)akTrustedDeviceListChanged:(id)a3;
- (void)augmentWithCredentialsFromContext:(id)a3;
- (void)clearNewPassword;
- (void)clearOldPassword;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)init;
- (void)isPrimaryAccount;
- (void)keychainSyncAllowedByServer;
- (void)numberOfTrustedDevices;
- (void)purgeResumeData;
- (void)setNewPassword:(id)a3 oldPassword:(id)a4;
- (void)setPassword:(id)a3;
- (void)startObservingTrustedDeviceList;
- (void)stoptObservingTrustedDeviceList;
- (void)updateDemoAttributesWithAccount:(id)a3;
- (void)updateWithAuthenticationResults:(id)a3;
@end

@implementation CDPContext

+ (id)contextForPrimaryAccount
{
  v2 = [MEMORY[0x1E698DC80] sharedInstance];
  v3 = [v2 primaryAuthKitAccount];

  if (v3)
  {
    v4 = [[CDPContext alloc] initWithAccount:v3];
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForPrimaryAccount];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)_isKeychainSyncAllowedByMDM
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x1E69ADE30]];

  return v3 ^ 1;
}

- (void)_fakeSOSFlagsWithUserDefaults
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)contextForPrimaryAccount
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)cliqueConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E697AA88]);
  [v3 setContext:*MEMORY[0x1E697AAD0]];
  v4 = [(CDPContext *)self dsid];
  v5 = [v4 stringValue];
  [v3 setDsid:v5];

  v6 = [(CDPContext *)self altDSID];
  [v3 setAltDSID:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [(CDPContext *)self telemetryFlowID];
    [v3 setFlowID:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(CDPContext *)self telemetryDeviceSessionID];
    [v3 setDeviceSessionID:v8];
  }

  return v3;
}

- (NSString)telemetryDeviceSessionID
{
  telemetryDeviceSessionID = self->_telemetryDeviceSessionID;
  if (!telemetryDeviceSessionID)
  {
    v4 = [MEMORY[0x1E698DC80] sharedInstance];
    v5 = [v4 authKitAccountWithAltDSID:self->_altDSID];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 telemetryDeviceSessionIDForAccount:v5];
      v7 = self->_telemetryDeviceSessionID;
      self->_telemetryDeviceSessionID = v6;
    }

    telemetryDeviceSessionID = self->_telemetryDeviceSessionID;
  }

  return telemetryDeviceSessionID;
}

- (void)dealloc
{
  [(CDPContext *)self stoptObservingTrustedDeviceList];
  v3.receiver = self;
  v3.super_class = CDPContext;
  [(CDPContext *)&v3 dealloc];
}

- (void)stoptObservingTrustedDeviceList
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)setPassword:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CDPContext setPassword:];
  }

  password = self->_password;
  self->_password = v4;
}

- (void)setNewPassword:(id)a3 oldPassword:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (v8 && [v8 length])
  {
    objc_storeStrong(&self->_password, a3);
  }

  if (v7 && [v7 length])
  {
    objc_storeStrong(&self->_oldPassword, a4);
  }
}

- (void)clearNewPassword
{
  password = self->_password;
  self->_password = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)clearOldPassword
{
  oldPassword = self->_oldPassword;
  self->_oldPassword = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (id)contextForAccountWithAppleID:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext contextForAccountWithAppleID:];
  }

  v5 = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [v5 authKitAccountWithAppleID:v3];

  if (v6)
  {
    v7 = [[CDPContext alloc] initWithAccount:v6];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForAccountWithAppleID:];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)contextForAccountWithAltDSID:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext contextForAccountWithAltDSID:];
  }

  v5 = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:v3];

  if (v6)
  {
    v7 = [[CDPContext alloc] initWithAccount:v6];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForAccountWithAltDSID:];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)contextForAccountWithDSID:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext contextForAccountWithDSID:];
  }

  v5 = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [v5 authKitAccountWithDSID:v3];

  if (v6)
  {
    v7 = [[CDPContext alloc] initWithAccount:v6];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForAccountWithDSID:];
    }

    v7 = 0;
  }

  return v7;
}

+ (CDPContext)contextWithAuthenticationResults:(id)a3
{
  v3 = a3;
  v4 = [[CDPContext alloc] initWithAuthenticationResults:v3];

  return v4;
}

- (id)initNeedingPreflight:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = CDPContext;
  v4 = [(CDPContext *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 bundleIdentifier];
    bundleID = v4->_bundleID;
    v4->_bundleID = v6;

    UMUserManagerClass = UserManagementLibraryCore();
    if (UMUserManagerClass)
    {
      UMUserManagerClass = getUMUserManagerClass();
    }

    v9 = [UMUserManagerClass sharedManager];
    v4->_isSharediPad = [v9 isSharedIPad];

    v4->_cachedPassphraseMissing = 0;
    v4->_needsPreflight = a3;
    v4->_managedAccountsAllowedInCDP = _os_feature_enabled_impl();
    v4->_multiUserManateeAllowed = +[CDPUtilities canEnableMultiUserManatee];
    v4->_keychainSyncSystem = 0;
    v4->_keychainSyncAllowedByMDM = [objc_opt_class() _isKeychainSyncAllowedByMDM];
    v10 = v4;
  }

  return v4;
}

- (CDPContext)init
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPContext init];
  }

  return [(CDPContext *)self initNeedingPreflight:1];
}

- (CDPContext)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = [(CDPContext *)self initNeedingPreflight:0];
  v6 = v5;
  if (!v5)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

    goto LABEL_24;
  }

  v7 = [MEMORY[0x1E698DC80] sharedInstance];
  v8 = [v4 username];
  if (!v8)
  {
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

    goto LABEL_23;
  }

  v9 = v8;
  objc_storeStrong(v6 + 9, v8);

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698DC48]];
  if (!v10)
  {
    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698DC40]];
    if (!v10)
    {
      v10 = [v7 DSIDForAccount:v4];
      if (!v10)
      {
        v21 = _CDPLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [CDPContext initWithAccount:];
        }

        goto LABEL_23;
      }
    }
  }

  v11 = v10;
  objc_storeStrong(v6 + 13, v10);

  v12 = [v7 altDSIDForAccount:v4];
  if (!v12)
  {
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

LABEL_23:

LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  v13 = v12;
  objc_storeStrong(v6 + 14, v12);

  v14 = [v7 securityLevelForAccount:v4];
  *(v6 + 29) = v14;
  if (!v14)
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

    v14 = *(v6 + 29);
  }

  *(v6 + 32) = v14 == 4;
  *(v6 + 40) = v14 == 5;
  *(v6 + 33) = [v7 authenticationModeForAccount:v4]== 2;
  *(v6 + 34) = [v7 isBeneficiaryForAccount:v4];
  *(v6 + 36) = 0;
  v16 = [v7 hasSOSActiveDeviceForAccount:v4];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    *(v6 + 36) |= 1uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [v7 isSOSNeededForAccount:v4];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      *(v6 + 36) |= 2uLL;
    }
  }

  [v6 _fakeSOSFlagsWithUserDefaults];
  [v6 updateDemoAttributesWithAccount:v4];
  v20 = v6;
LABEL_25:

  return v20;
}

- (CDPContext)initWithAuthenticationResults:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 ak_redactedCopy];
      v60 = 138412290;
      v61 = v7;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Starting with auth results:\n%@", &v60, 0xCu);
    }

    v8 = [(CDPContext *)self initNeedingPreflight:0];
    v9 = v8;
    if (v8)
    {
      v10 = v8[29];
      *(v8 + 32) = v10 == 4;
      *(v8 + 40) = v10 == 5;
      v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
      v12 = v9[9];
      v9[9] = v11;

      v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
      v14 = v9[10];
      v9[10] = v13;

      v15 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
      v16 = v9[12];
      v9[12] = v15;

      v17 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
      v18 = v9[13];
      v9[13] = v17;

      v19 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB48]];
      *(v9 + 33) = [v19 unsignedIntegerValue] == 2;

      v20 = *MEMORY[0x1E698DBA0];
      v21 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBA0]];
      *(v9 + 34) = v21 != 0;

      v22 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB80]];
      *(v9 + 35) = [v22 BOOLValue];

      v23 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB88]];
      v24 = v9[21];
      v9[21] = v23;

      v25 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB50]];
      v26 = v9[22];
      v9[22] = v25;

      v27 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
      v28 = v9[14];
      v9[14] = v27;

      v29 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];
      v9[29] = [v29 unsignedIntegerValue];

      v30 = v9[29];
      if (!v30)
      {
        v31 = _CDPLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [CDPContext initWithAccount:];
        }

        v30 = v9[29];
      }

      *(v9 + 32) = v30 == 4;
      *(v9 + 40) = v30 == 5;
      objc_opt_class();
      v32 = [v5 objectForKeyedSubscript:@"AKNewAccountCreated"];
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      *(v9 + 38) = [v33 unsignedIntegerValue] == 1;
      v35 = objc_alloc(MEMORY[0x1E696AFB0]);
      v36 = [v5 objectForKeyedSubscript:v20];
      v37 = [v35 initWithUUIDString:v36];
      v38 = v9[19];
      v9[19] = v37;

      v9[23] = -1;
      v39 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBB0]];
      v40 = [v39 copy];

      if (v40)
      {
        v41 = [v40 aaf_toBase64DecodedData];
        v42 = v9[33];
        v9[33] = v41;
      }

      v43 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
      v44 = v9[38];
      v9[38] = v43;

      v9[36] = 0;
      v45 = [v5 objectForKeyedSubscript:@"SOSCompatibilityOptInNeeded"];
      if ([v45 BOOLValue])
      {
      }

      else
      {
        v46 = [v5 objectForKeyedSubscript:@"hasSOSActiveDevice"];
        v47 = [v46 BOOLValue];

        if (!v47)
        {
LABEL_22:
          v48 = [v5 objectForKeyedSubscript:@"SOSNeeded"];
          v49 = [v48 BOOLValue];

          if (v49)
          {
            v9[36] |= 2uLL;
          }

          [v9 _fakeSOSFlagsWithUserDefaults];
          v50 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DC18]];
          v51 = [v50 BOOLValue];

          if (v51)
          {
            [v9 setType:11];
          }

          v52 = [MEMORY[0x1E698DC80] sharedInstance];
          v53 = [v52 authKitAccountWithAltDSID:v9[14]];

          [v9 updateDemoAttributesWithAccount:v53];
          v54 = [v5 objectForKeyedSubscript:@"adpCh"];
          v55 = v9[40];
          v9[40] = v54;

          if (*(v9 + 38) == 1)
          {
            v56 = _CDPLogSystem();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              [CDPContext initWithAuthenticationResults:];
            }

            v9[15] = 12;
          }

          goto LABEL_31;
        }
      }

      v9[36] |= 1uLL;
      goto LABEL_22;
    }
  }

  else
  {
    v34 = _CDPLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [CDPContext initWithAuthenticationResults:];
    }

    v9 = [(CDPContext *)self initNeedingPreflight:1];
  }

LABEL_31:
  v57 = v9;

  v58 = *MEMORY[0x1E69E9840];
  return v57;
}

- (void)updateDemoAttributesWithAccount:(id)a3
{
  v4 = MEMORY[0x1E698DC80];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 demoAccountForAccount:v5];

  if (v7)
  {

    [(CDPContext *)self setAccountType:@"Demo"];
  }
}

- (NSNumber)adpCohort
{
  v18 = *MEMORY[0x1E69E9840];
  adpCohort = self->_adpCohort;
  if (adpCohort)
  {
LABEL_6:
    v10 = adpCohort;
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [v4 authKitAccountWithAltDSID:self->_altDSID];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 adpCohortForAccount:v5];
    v7 = self->_adpCohort;
    self->_adpCohort = v6;

    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_adpCohort;
      v14 = 136315394;
      v15 = "[CDPContext adpCohort]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "%s: ADP Cohort type is %@", &v14, 0x16u);
    }

    adpCohort = self->_adpCohort;
    goto LABEL_6;
  }

  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [(CDPContext *)v4 adpCohort];
  }

  v10 = 0;
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)startObservingTrustedDeviceList
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)akTrustedDeviceListChanged:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPContext akTrustedDeviceListChanged:];
  }

  self->_numberOfTrustedDevices = [(CDPContext *)self getNumberOfTrustedDevices];
}

- (int64_t)numberOfTrustedDevices
{
  p_numberOfTrustedDevices = &self->_numberOfTrustedDevices;
  if (!self->_numberOfTrustedDevices)
  {
    self->_numberOfTrustedDevices = [(CDPContext *)self getNumberOfTrustedDevices];
  }

  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPContext *)p_numberOfTrustedDevices numberOfTrustedDevices];
  }

  return *p_numberOfTrustedDevices;
}

- (BOOL)isPrimaryAccount
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = self->_isPrimaryAccountInternal;
  objc_sync_enter(v3);
  isPrimaryAccountInternal = self->_isPrimaryAccountInternal;
  if (!isPrimaryAccountInternal)
  {
    v5 = [MEMORY[0x1E6959A48] defaultStore];
    v6 = [(CDPContext *)self altDSID];
    v7 = [v5 aa_appleAccountWithAltDSID:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "aa_isAccountClass:", *MEMORY[0x1E698B760])}];
      v9 = self->_isPrimaryAccountInternal;
      self->_isPrimaryAccountInternal = v8;

      p_super = _CDPLogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CDPContext *)self altDSID];
        v12 = [(NSNumber *)self->_isPrimaryAccountInternal BOOLValue];
        v18 = 141558530;
        v19 = 1752392040;
        v20 = 2112;
        v21 = v11;
        v22 = 1024;
        v23 = v12;
        _os_log_impl(&dword_1DED99000, p_super, OS_LOG_TYPE_DEFAULT, "isPrimaryAccount: Account for %{mask.hash}@ account primary: %{BOOL}d", &v18, 0x1Cu);
      }
    }

    else
    {
      v13 = _CDPLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [(CDPContext *)self altDSID];
        [(CDPContext *)v14 isPrimaryAccount];
      }

      p_super = &self->_isPrimaryAccountInternal->super.super;
      self->_isPrimaryAccountInternal = MEMORY[0x1E695E110];
    }

    isPrimaryAccountInternal = self->_isPrimaryAccountInternal;
  }

  v15 = [(NSNumber *)isPrimaryAccountInternal BOOLValue];
  objc_sync_exit(v3);

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)keychainSyncAllowedByServer
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = self->_keychainSyncAllowedByServerInternal;
  objc_sync_enter(v3);
  keychainSyncAllowedByServerInternal = self->_keychainSyncAllowedByServerInternal;
  if (!keychainSyncAllowedByServerInternal)
  {
    v5 = [MEMORY[0x1E6959A48] defaultStore];
    v6 = [(CDPContext *)self altDSID];
    v7 = [v5 aa_appleAccountWithAltDSID:v6];

    if (v7)
    {
      v8 = *MEMORY[0x1E6959690];
      if (([v7 isProvisionedForDataclass:*MEMORY[0x1E6959690]] & 1) != 0 || !-[CDPContext isManagedAccount](self, "isManagedAccount"))
      {
        v10 = 1;
      }

      else
      {
        v9 = _CDPLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [CDPContext keychainSyncAllowedByServer];
        }

        v10 = 0;
      }

      if ([v7 aa_serverDisabledDataclass:v8])
      {
        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [CDPContext keychainSyncAllowedByServer];
        }

        v10 = 0;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithBool:v10];
      v13 = self->_keychainSyncAllowedByServerInternal;
      self->_keychainSyncAllowedByServerInternal = v12;

      p_super = _CDPLogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(CDPContext *)self altDSID];
        v21 = 141558530;
        v22 = 1752392040;
        v23 = 2112;
        v24 = v15;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_1DED99000, p_super, OS_LOG_TYPE_DEFAULT, "keychainSyncAllowedByServer: Account for %{mask.hash}@ account primary: %{BOOL}d", &v21, 0x1Cu);
      }
    }

    else
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(CDPContext *)self altDSID];
        [(CDPContext *)v17 keychainSyncAllowedByServer];
      }

      p_super = &self->_keychainSyncAllowedByServerInternal->super.super;
      self->_keychainSyncAllowedByServerInternal = MEMORY[0x1E695E110];
    }

    keychainSyncAllowedByServerInternal = self->_keychainSyncAllowedByServerInternal;
  }

  v18 = [(NSNumber *)keychainSyncAllowedByServerInternal BOOLValue];
  objc_sync_exit(v3);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)purgeResumeData
{
  resumeContext = self->_resumeContext;
  self->_resumeContext = 0;

  duplexSession = self->_duplexSession;
  self->_duplexSession = 0;

  sharingChannel = self->_sharingChannel;
  self->_sharingChannel = 0;
}

- (BOOL)desiresAllRecords
{
  if ([(CDPContext *)self idmsRecovery])
  {
    return 1;
  }

  v4 = [(CDPContext *)self findMyiPhoneUUID];
  v3 = v4 != 0;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  appleID = self->_appleID;
  v6 = a3;
  [v6 encodeObject:appleID forKey:@"_appleID"];
  [v6 encodeObject:self->_password forKey:@"_password"];
  [v6 encodeObject:self->_passwordEquivToken forKey:@"_passwordEquivToken"];
  [v6 encodeObject:self->_dsid forKey:@"_dsid"];
  [v6 encodeBool:self->_isHSA2Account forKey:@"_isHSA2Account"];
  [v6 encodeBool:self->_isManagedAccount forKey:@"_isManagedAccount"];
  [v6 encodeBool:self->_didUseSMSVerification forKey:@"_didUseSMSVerification"];
  [v6 encodeObject:self->_cachedLocalSecret forKey:@"_cachedLocalSecret"];
  [v6 encodeInteger:self->_cachedLocalSecretType forKey:@"_cachedLocalSecretType"];
  [v6 encodeBool:self->__alwaysCreateEscrowRecord forKey:@"__alwaysCreateEscrowRecord"];
  [v6 encodeBool:self->__skipEscrowFetches forKey:@"__skipEscrowFetches"];
  [v6 encodeBool:self->_guestMode forKey:@"_guestMode"];
  [v6 encodeBool:self->_idmsRecovery forKey:@"_idmsRecovery"];
  [v6 encodeBool:self->_idmsMasterKeyRecovery forKey:@"_idmsMasterKeyRecovery"];
  [v6 encodeObject:self->_duplexSession forKey:@"_duplexSession"];
  [v6 encodeObject:self->_resumeContext forKey:@"_resumeContext"];
  [v6 encodeObject:self->_sharingChannel forKey:@"_sharingChannel"];
  [v6 encodeInteger:self->_type forKey:@"_type"];
  [v6 encodeBool:self->_isAttemptingBackupRestore forKey:@"_isAttemptingBackupRestore"];
  [v6 encodeObject:self->_findMyiPhoneUUID forKey:@"_findMyiPhoneUUID"];
  [v6 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v6 encodeBool:self->_isFederatedAccount forKey:@"_isFederatedAccount"];
  [v6 encodeBool:self->_isBeneficiaryAccount forKey:@"_isBeneficiaryAccount"];
  [v6 encodeBool:self->__ignoreLockAssertErrors forKey:@"__ignoreLockAssertErrors"];
  [v6 encodeObject:self->_custodianRecoveryInfo forKey:@"_custodianRecoveryInfo"];
  [v6 encodeObject:self->_beneficiaryIdentifier forKey:@"_beneficiaryAccount"];
  [v6 encodeObject:self->_beneficiaryWrappedKeyData forKey:@"_beneficiaryWrappedKeyData"];
  [v6 encodeBool:self->__supportsCustodianRecovery forKey:@"__supportsCustodianRecovery"];
  [v6 encodeObject:self->_bundleID forKey:@"_bundleID"];
  [v6 encodeBool:self->__disableAsyncSecureBackupEnrollment forKey:@"__disableAsyncSecureBackupEnrollment"];
  [v6 encodeBool:self->_mandatesRecoveryKey forKey:@"_mandatesRecoveryKey"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_walrusStatus];
  [v6 encodeObject:v5 forKey:@"_walrusStatus"];

  [v6 encodeBool:self->__forceManateeReset forKey:@"__forceManateeReset"];
  [v6 encodeBool:self->__recoveryMethodAvailable forKey:@"__recoveryMethodAvailable"];
  [v6 encodeBool:self->_isSOSCFUFlow forKey:@"_isSOSCFUFlow"];
  [v6 encodeInteger:self->_sosCompatibilityType forKey:@"_sosCompatibilityType"];
  [v6 encodeInteger:self->_keychainSyncSystem forKey:@"_keychainSyncSystem"];
  [v6 encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
  [v6 encodeObject:self->_telemetryDeviceSessionID forKey:@"_telemetryDeviceSessionID"];
  [v6 encodeBool:self->_needsPreflight forKey:@"_needsPreflight"];
  [v6 encodeBool:self->_isSharediPad forKey:@"_isSharediPad"];
  [v6 encodeInteger:self->_securityLevel forKey:@"_securityLevel"];
  [v6 encodeObject:self->_followUpType forKey:@"_followUpType"];
  [v6 encodeBool:self->__useSecureBackupCachedPassphrase forKey:@"__useSecureBackupCachedPassphrase"];
  [v6 encodeBool:self->_cachedPassphraseMissing forKey:@"_cachedPassphraseMissing"];
  [v6 encodeObject:self->_adpCohort forKey:@"_adpCohort"];
  [v6 encodeBool:self->_newAccountCreated forKey:@"_newAccountCreated"];
  [v6 encodeBool:self->_willAttemptAsyncSecureBackupEnablement forKey:@"_willAttemptAsyncSecureBackupEnablement"];
  [v6 encodeBool:self->_didAttemptSecureBackupEnablement forKey:@"_didAttemptSecureBackupEnablement"];
  [v6 encodeBool:self->_secureBackupEnablementNotRequired forKey:@"_secureBackupEnablementNotRequired"];
}

- (CDPContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CDPContext initNeedingPreflight:](self, "initNeedingPreflight:", [v4 decodeBoolForKey:@"_needsPreflight"]);
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_passwordEquivToken"];
    passwordEquivToken = v5->_passwordEquivToken;
    v5->_passwordEquivToken = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v12;

    v5->_isHSA2Account = [v4 decodeBoolForKey:@"_isHSA2Account"];
    v5->_isManagedAccount = [v4 decodeBoolForKey:@"_isManagedAccount"];
    v5->_didUseSMSVerification = [v4 decodeBoolForKey:@"_didUseSMSVerification"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cachedLocalSecret"];
    cachedLocalSecret = v5->_cachedLocalSecret;
    v5->_cachedLocalSecret = v14;

    v5->_cachedLocalSecretType = [v4 decodeIntegerForKey:@"_cachedLocalSecretType"];
    v5->__alwaysCreateEscrowRecord = [v4 decodeBoolForKey:@"__alwaysCreateEscrowRecord"];
    v5->__skipEscrowFetches = [v4 decodeBoolForKey:@"__skipEscrowFetches"];
    v5->_guestMode = [v4 decodeBoolForKey:@"_guestMode"];
    v5->_idmsRecovery = [v4 decodeBoolForKey:@"_idmsRecovery"];
    v5->_idmsMasterKeyRecovery = [v4 decodeBoolForKey:@"_idmsMasterKeyRecovery"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_duplexSession"];
    duplexSession = v5->_duplexSession;
    v5->_duplexSession = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resumeContext"];
    resumeContext = v5->_resumeContext;
    v5->_resumeContext = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sharingChannel"];
    sharingChannel = v5->_sharingChannel;
    v5->_sharingChannel = v20;

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_isAttemptingBackupRestore = [v4 decodeBoolForKey:@"_isAttemptingBackupRestore"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_findMyiPhoneUUID"];
    findMyiPhoneUUID = v5->_findMyiPhoneUUID;
    v5->_findMyiPhoneUUID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v24;

    v5->_isFederatedAccount = [v4 decodeBoolForKey:@"_isFederatedAccount"];
    v5->_isBeneficiaryAccount = [v4 decodeBoolForKey:@"_isBeneficiaryAccount"];
    v5->__ignoreLockAssertErrors = [v4 decodeBoolForKey:@"__ignoreLockAssertErrors"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryInfo"];
    custodianRecoveryInfo = v5->_custodianRecoveryInfo;
    v5->_custodianRecoveryInfo = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryAccount"];
    beneficiaryIdentifier = v5->_beneficiaryIdentifier;
    v5->_beneficiaryIdentifier = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryWrappedKeyData"];
    beneficiaryWrappedKeyData = v5->_beneficiaryWrappedKeyData;
    v5->_beneficiaryWrappedKeyData = v30;

    v5->__supportsCustodianRecovery = [v4 decodeBoolForKey:@"__supportsCustodianRecovery"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v32;

    v5->__disableAsyncSecureBackupEnrollment = [v4 decodeBoolForKey:@"__disableAsyncSecureBackupEnrollment"];
    v5->_mandatesRecoveryKey = [v4 decodeBoolForKey:@"_mandatesRecoveryKey"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_walrusStatus"];
    v5->_walrusStatus = [v34 unsignedIntValue];

    v5->__forceManateeReset = [v4 decodeBoolForKey:@"__forceManateeReset"];
    v5->__recoveryMethodAvailable = [v4 decodeBoolForKey:@"__recoveryMethodAvailable"];
    v5->_isSOSCFUFlow = [v4 decodeBoolForKey:@"_isSOSCFUFlow"];
    v5->_sosCompatibilityType = [v4 decodeIntForKey:@"_sosCompatibilityType"];
    v5->_keychainSyncSystem = [v4 decodeIntegerForKey:@"_keychainSyncSystem"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryDeviceSessionID"];
    telemetryDeviceSessionID = v5->_telemetryDeviceSessionID;
    v5->_telemetryDeviceSessionID = v37;

    v5->_isSharediPad = [v4 decodeBoolForKey:@"_isSharediPad"];
    v5->_securityLevel = [v4 decodeIntegerForKey:@"_securityLevel"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_followUpType"];
    followUpType = v5->_followUpType;
    v5->_followUpType = v39;

    v5->__useSecureBackupCachedPassphrase = [v4 decodeBoolForKey:@"__useSecureBackupCachedPassphrase"];
    v5->_cachedPassphraseMissing = [v4 decodeBoolForKey:@"_cachedPassphraseMissing"];
    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_adpCohort"];
    adpCohort = v5->_adpCohort;
    v5->_adpCohort = v41;

    v5->_newAccountCreated = [v4 decodeBoolForKey:@"_newAccountCreated"];
    v5->_willAttemptAsyncSecureBackupEnablement = [v4 decodeBoolForKey:@"_willAttemptAsyncSecureBackupEnablement"];
    v5->_didAttemptSecureBackupEnablement = [v4 decodeBoolForKey:@"_didAttemptSecureBackupEnablement"];
    v5->_secureBackupEnablementNotRequired = [v4 decodeBoolForKey:@"_secureBackupEnablementNotRequired"];
  }

  return v5;
}

- (void)updateWithAuthenticationResults:(id)a3
{
  v4 = *MEMORY[0x1E698DBC8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  passwordEquivToken = self->_passwordEquivToken;
  self->_passwordEquivToken = v6;

  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  password = self->_password;
  self->_password = v8;

  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  dsid = self->_dsid;
  self->_dsid = v10;

  v12 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB48]];
  self->_isFederatedAccount = [v12 unsignedIntegerValue] == 2;

  v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBA0]];
  self->_isBeneficiaryAccount = [v13 BOOLValue];

  v14 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  altDSID = self->_altDSID;
  self->_altDSID = v14;

  v16 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];

  self->_securityLevel = [v16 unsignedIntegerValue];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CDPContext);
  v5 = [(NSString *)self->_appleID copy];
  appleID = v4->_appleID;
  v4->_appleID = v5;

  v7 = [(NSString *)self->_password copy];
  password = v4->_password;
  v4->_password = v7;

  v9 = [(NSString *)self->_passwordEquivToken copy];
  passwordEquivToken = v4->_passwordEquivToken;
  v4->_passwordEquivToken = v9;

  v11 = [(NSNumber *)self->_dsid copy];
  dsid = v4->_dsid;
  v4->_dsid = v11;

  v4->_isHSA2Account = self->_isHSA2Account;
  v4->_isManagedAccount = self->_isManagedAccount;
  objc_storeStrong(&v4->_isPrimaryAccountInternal, self->_isPrimaryAccountInternal);
  v4->_didUseSMSVerification = self->_didUseSMSVerification;
  v13 = [(NSString *)self->_cachedLocalSecret copy];
  cachedLocalSecret = v4->_cachedLocalSecret;
  v4->_cachedLocalSecret = v13;

  v4->_cachedLocalSecretType = self->_cachedLocalSecretType;
  v4->__alwaysCreateEscrowRecord = self->__alwaysCreateEscrowRecord;
  v4->__skipEscrowFetches = self->__skipEscrowFetches;
  v4->_guestMode = self->_guestMode;
  v4->_idmsRecovery = self->_idmsRecovery;
  v4->_idmsMasterKeyRecovery = self->_idmsMasterKeyRecovery;
  v4->_type = self->_type;
  v4->_isAttemptingBackupRestore = self->_isAttemptingBackupRestore;
  objc_storeStrong(&v4->_findMyiPhoneUUID, self->_findMyiPhoneUUID);
  objc_storeStrong(&v4->_altDSID, self->_altDSID);
  objc_storeStrong(&v4->_sharingChannel, self->_sharingChannel);
  v4->_isFederatedAccount = self->_isFederatedAccount;
  v4->_isBeneficiaryAccount = self->_isBeneficiaryAccount;
  v15 = [(CDPCustodianRecoveryInfo *)self->_custodianRecoveryInfo copy];
  custodianRecoveryInfo = v4->_custodianRecoveryInfo;
  v4->_custodianRecoveryInfo = v15;

  v17 = [(NSUUID *)self->_beneficiaryIdentifier copy];
  beneficiaryIdentifier = v4->_beneficiaryIdentifier;
  v4->_beneficiaryIdentifier = v17;

  v19 = [(NSData *)self->_beneficiaryWrappedKeyData copy];
  beneficiaryWrappedKeyData = v4->_beneficiaryWrappedKeyData;
  v4->_beneficiaryWrappedKeyData = v19;

  v4->__supportsCustodianRecovery = self->__supportsCustodianRecovery;
  objc_storeStrong(&v4->_bundleID, self->_bundleID);
  v4->__disableAsyncSecureBackupEnrollment = self->__disableAsyncSecureBackupEnrollment;
  v4->_mandatesRecoveryKey = self->_mandatesRecoveryKey;
  v4->_walrusStatus = self->_walrusStatus;
  v4->__forceManateeReset = self->__forceManateeReset;
  v4->__recoveryMethodAvailable = self->__recoveryMethodAvailable;
  v4->_isSOSCFUFlow = self->_isSOSCFUFlow;
  v4->_sosCompatibilityType = self->_sosCompatibilityType;
  v4->_keychainSyncSystem = self->_keychainSyncSystem;
  objc_storeStrong(&v4->_telemetryFlowID, self->_telemetryFlowID);
  objc_storeStrong(&v4->_telemetryDeviceSessionID, self->_telemetryDeviceSessionID);
  v4->_isSharediPad = self->_isSharediPad;
  v4->_securityLevel = self->_securityLevel;
  objc_storeStrong(&v4->_followUpType, self->_followUpType);
  v4->__useSecureBackupCachedPassphrase = self->__useSecureBackupCachedPassphrase;
  v4->_cachedPassphraseMissing = self->_cachedPassphraseMissing;
  objc_storeStrong(&v4->_adpCohort, self->_adpCohort);
  v4->_willAttemptAsyncSecureBackupEnablement = self->_willAttemptAsyncSecureBackupEnablement;
  v4->_didAttemptSecureBackupEnablement = self->_didAttemptSecureBackupEnablement;
  v4->_secureBackupEnablementNotRequired = self->_secureBackupEnablementNotRequired;
  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"CDPContext: \n"];
  [v3 appendFormat:@"\taltDSID: %@\n", self->_altDSID];
  [v3 appendFormat:@"\tdsid: %@\n", self->_dsid];
  [v3 appendFormat:@"\tisHSA2Account: %d\n", self->_isHSA2Account];
  [v3 appendFormat:@"\tisManagedAccount: %d\n", self->_isManagedAccount];
  [v3 appendFormat:@"\tisPrimaryAccountInternal: %@\n", self->_isPrimaryAccountInternal];
  [v3 appendFormat:@"\tdidUseSMSVerification: %d\n", self->_didUseSMSVerification];
  [v3 appendFormat:@"\tisPrimaryAccountInternal: %@\n", self->_isPrimaryAccountInternal];
  [v3 appendFormat:@"\tisSOSCFUFlow: %d\n", self->_isSOSCFUFlow];
  [v3 appendFormat:@"\tsosCompatibilityType: %lu\n", self->_sosCompatibilityType];
  if (self->_keychainSyncSystem)
  {
    v4 = @"SOS";
  }

  else
  {
    v4 = @"Octagon";
  }

  [v3 appendFormat:@"\tkeychainSyncSystem: %@\n", v4];
  [v3 appendFormat:@"\tisTTSURecovery: %d\n", -[CDPContext isTTSURecovery](self, "isTTSURecovery")];
  [v3 appendFormat:@"\tisSharediPad: %d\n", -[CDPContext isSharediPad](self, "isSharediPad")];
  [v3 appendFormat:@"\tnewAccountCreated: %d\n", -[CDPContext newAccountCreated](self, "newAccountCreated")];
  [v3 appendFormat:@"\tcontextType: %ld\n", -[CDPContext type](self, "type")];

  return v3;
}

- (void)augmentWithCredentialsFromContext:(id)a3
{
  v20 = a3;
  if (!self->_appleID)
  {
    v4 = [v20 appleID];
    appleID = self->_appleID;
    self->_appleID = v4;
  }

  if (!self->_password)
  {
    v6 = [v20 password];
    password = self->_password;
    self->_password = v6;
  }

  if (!self->_oldPassword)
  {
    v8 = [v20 oldPassword];
    oldPassword = self->_oldPassword;
    self->_oldPassword = v8;
  }

  if (!self->_passwordEquivToken)
  {
    v10 = [v20 passwordEquivToken];
    passwordEquivToken = self->_passwordEquivToken;
    self->_passwordEquivToken = v10;
  }

  if (!self->_dsid)
  {
    v12 = [v20 dsid];
    dsid = self->_dsid;
    self->_dsid = v12;
  }

  if (!self->_altDSID)
  {
    v14 = [v20 altDSID];
    altDSID = self->_altDSID;
    self->_altDSID = v14;
  }

  if (!self->_telemetryDeviceSessionID)
  {
    v16 = [v20 telemetryDeviceSessionID];
    telemetryDeviceSessionID = self->_telemetryDeviceSessionID;
    self->_telemetryDeviceSessionID = v16;
  }

  if (!self->_telemetryFlowID)
  {
    v18 = [v20 telemetryFlowID];
    telemetryFlowID = self->_telemetryFlowID;
    self->_telemetryFlowID = v18;
  }

  if (!self->_securityLevel)
  {
    self->_securityLevel = [v20 securityLevel];
  }
}

- (BOOL)isPiggybackingRecovery
{
  v3 = [(CDPContext *)self duplexSession];
  if (v3)
  {
    v4 = [(CDPContext *)self resumeContext];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTTSURecovery
{
  v2 = [(CDPContext *)self sharingChannel];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isiCDPEligibleWithError:(id *)a3
{
  if ([(CDPContext *)self isSharediPad])
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "isiCDPEligible: managed accounts on shared iPad is not manatee eligible, returning NO", buf, 2u);
    }

    if (a3)
    {
      v6 = -5004;
LABEL_33:
      v17 = _CDPStateError(v6, 0);
      v18 = v17;
      result = 0;
      *a3 = v17;
      return result;
    }

    return 0;
  }

  if ([(CDPContext *)self isHSA2Account])
  {
    if ([(CDPContext *)self isPrimaryAccount]|| [(CDPContext *)self multiUserManateeAllowed])
    {
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "isiCDPEligible: Account is HSA2 and primary: returning YES", v23, 2u);
      }

      return 1;
    }

    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v15 = "isiCDPEligible: Account is HSA2 and non-primary, and multi-user is not allowed: returning NO";
      v16 = &v24;
LABEL_30:
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (![(CDPContext *)self isManagedAccount])
  {
    v12 = _CDPLogSystem();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v19 = 0;
    v13 = "isiCDPEligible: Account is not HSA or Managed, returning NO";
    v14 = &v19;
    goto LABEL_25;
  }

  if ([(CDPContext *)self managedAccountsAllowedInCDP])
  {
    v9 = [(CDPContext *)self isPrimaryAccount];
    v10 = _CDPLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *v21 = 0;
        _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "isiCDPEligible: Account is managed and primary: returning YES", v21, 2u);
      }

      return 1;
    }

    if (v11)
    {
      *v20 = 0;
      v15 = "isiCDPEligible: Account is managed but non-primary: returning NO";
      v16 = v20;
      goto LABEL_30;
    }

LABEL_31:

    if (a3)
    {
      v6 = -5111;
      goto LABEL_33;
    }

    return 0;
  }

  v12 = _CDPLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    v13 = "isiCDPEligible: Account is managed, but managed accounts are not allowed in CDP: returning NO";
    v14 = v22;
LABEL_25:
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
  }

LABEL_26:

  if (a3)
  {
    v6 = -5110;
    goto LABEL_33;
  }

  return 0;
}

- (BOOL)isBeneficiaryFlow
{
  v3 = [(CDPContext *)self beneficiaryIdentifier];
  v4 = [v3 UUIDString];
  if ([v4 length])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CDPContext *)self isBeneficiaryAccount];
  }

  return v5;
}

- (BOOL)is2FAFAUserFromNetwork
{
  v3 = [(CDPContext *)self isHSA2Account];
  if (v3)
  {
    LOBYTE(v3) = ![(CDPContext *)self isICDPEnabledFromNetwork];
  }

  return v3;
}

- (BOOL)isICDPEnabledFromNetwork
{
  v2 = [(CDPContext *)self dsid];
  v3 = [v2 stringValue];
  v4 = [CDPAccount isICDPEnabledForDSID:v3 checkWithServer:1];

  return v4;
}

- (BOOL)isLocalSecretCached
{
  if (+[CDPUtilities useCDPContextSecretInsteadOfSBDSecretFeatureEnabled])
  {

    return [(CDPContext *)self _isLocalSecretCachedAcknowledgingInMemoryValue];
  }

  else
  {
    if ([(CDPContext *)self cachedPassphraseMissing])
    {
      return 0;
    }

    v5 = [(CDPContext *)self cachedLocalSecret];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v4 = [(CDPContext *)self _useSecureBackupCachedPassphrase];
    }

    return v4;
  }
}

- (BOOL)_isLocalSecretCachedAcknowledgingInMemoryValue
{
  v3 = [(CDPContext *)self cachedLocalSecret];

  if (v3)
  {
    v4 = [(CDPContext *)self cachedLocalSecret];
    if (v4)
    {
      v5 = v4;
      v6 = [(CDPContext *)self cachedLocalSecret];
      v7 = [v6 length];

      if (!v7)
      {
        v8 = _CDPLogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          [(CDPContext *)v8 _isLocalSecretCachedAcknowledgingInMemoryValue];
        }
      }
    }

    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = [(CDPContext *)self _useSecureBackupCachedPassphrase];
    if (v9)
    {
      LOBYTE(v9) = ![(CDPContext *)self cachedPassphraseMissing];
    }
  }

  return v9;
}

+ (id)preflightContext:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[CDPContext(Account) preflightContext:];
    }

    v14 = +[CDPContext contextForPrimaryAccount];
    goto LABEL_16;
  }

  if (([v3 needsPreflight] & 1) == 0)
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[CDPContext(Account) preflightContext:];
    }

    v14 = v4;
LABEL_16:
    v16 = v14;
    goto LABEL_42;
  }

  v5 = [v4 altDSID];

  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 altDSID];
      v35 = 141558274;
      v36 = 1752392040;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "preflightContext: Attempting to backfill context for altDSID %{mask.hash}@ . Please use +[CDPContext contextForAccountWithAltDSID:] to do this in the future.", &v35, 0x16u);
    }

    v8 = [MEMORY[0x1E698DC80] sharedInstance];
    v9 = [v4 altDSID];
    v10 = [v8 authKitAccountWithAltDSID:v9];

    if (v10)
    {
      goto LABEL_34;
    }

    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CDPContext(Account) preflightContext:v4];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v17 = [v4 dsid];

  if (v17)
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v4 dsid];
      v35 = 141558274;
      v36 = 1752392040;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "preflightContext: Attempting to find account for dsid %{mask.hash}@ . Please use +[CDPContext contextForAccountWithAltDSID:] to do this in the future.", &v35, 0x16u);
    }

    v20 = [MEMORY[0x1E698DC80] sharedInstance];
    v21 = [v4 dsid];
    v10 = [v20 authKitAccountWithDSID:v21];

    if (v10)
    {
      goto LABEL_34;
    }

    v22 = _CDPLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CDPContext(Account) preflightContext:v4];
    }

    v12 = 1;
  }

  v23 = [v4 appleID];

  if (v23)
  {
    v24 = _CDPLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v4 appleID];
      v35 = 141558274;
      v36 = 1752392040;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_1DED99000, v24, OS_LOG_TYPE_DEFAULT, "preflightContext: Attempting to find account for appleID %{mask.hash}@ . Please use +[CDPContext contextForAccountWithAppleID:] to do this in the future.", &v35, 0x16u);
    }

    v26 = [MEMORY[0x1E698DC80] sharedInstance];
    v27 = [v4 appleID];
    v10 = [v26 authKitAccountWithAppleID:v27];

    if (v10)
    {
      goto LABEL_34;
    }

    v28 = _CDPLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CDPContext(Account) preflightContext:v4];
    }
  }

  else if (!v12)
  {
    v34 = _CDPLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      +[CDPContext(Account) preflightContext:];
    }

    v29 = [MEMORY[0x1E698DC80] sharedInstance];
    v10 = [v29 primaryAuthKitAccount];
    goto LABEL_36;
  }

  v10 = 0;
LABEL_34:
  v29 = _CDPLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext(Account) preflightContext:];
  }

LABEL_36:

  if (v10)
  {
    v30 = [v4 initWithAccount:v10];
  }

  else
  {
    v31 = _CDPLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext(Account) preflightContext:];
    }

    v30 = v4;
  }

  v16 = v30;

LABEL_42:
  v32 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)setPassword:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)contextForAccountWithAppleID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)contextForAccountWithAppleID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)contextForAccountWithAltDSID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)contextForAccountWithAltDSID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)contextForAccountWithDSID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)contextForAccountWithDSID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithAccount:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithAccount:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithAccount:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithAccount:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithAccount:.cold.5()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithAuthenticationResults:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithAuthenticationResults:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)adpCohort
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[CDPContext adpCohort]";
  v5 = 2112;
  v6 = a1;
  _os_log_fault_impl(&dword_1DED99000, a2, OS_LOG_TYPE_FAULT, "%s: Unable to obtain the adpCohortForAccount because AKAccountManager (%@) doesn't respond to selector.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)akTrustedDeviceListChanged:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)numberOfTrustedDevices
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isPrimaryAccount
{
  OUTLINED_FUNCTION_5_1(a1, a2, 7.2225e-34);
  _os_log_error_impl(&dword_1DED99000, v3, OS_LOG_TYPE_ERROR, "isPrimaryAccount: Did not find account for %{mask.hash}@ we can't determine if the account is primary!", v4, 0x16u);
}

- (void)keychainSyncAllowedByServer
{
  OUTLINED_FUNCTION_5_1(a1, a2, 7.2225e-34);
  _os_log_error_impl(&dword_1DED99000, v3, OS_LOG_TYPE_ERROR, "keychainSyncAllowedByServer: Did not find account for %{mask.hash}@ we can't determine if the account can use keychain!", v4, 0x16u);
}

- (void)_isLocalSecretCachedAcknowledgingInMemoryValue
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[CDPContext _isLocalSecretCachedAcknowledgingInMemoryValue]";
  _os_log_fault_impl(&dword_1DED99000, log, OS_LOG_TYPE_FAULT, "%s: Found a cached secret that was just an empty string.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end