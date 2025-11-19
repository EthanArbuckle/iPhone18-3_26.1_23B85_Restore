@interface LKLogoutSupport
- (BOOL)_canLogoutToLoginSession;
- (BOOL)isCurrentUserAnonymous;
- (LKLogoutSupport)init;
- (id)logoutWarningMessage;
- (void)_syncPreferencesIfNeeded;
- (void)logoutToLoginSessionWithCompletionHandler:(id)a3;
- (void)logoutToLoginUserWithCompletionHandler:(id)a3;
- (void)logoutToLoginWindowWithCompletionHandler:(id)a3;
@end

@implementation LKLogoutSupport

- (LKLogoutSupport)init
{
  v4.receiver = self;
  v4.super_class = LKLogoutSupport;
  v2 = [(LKLogoutSupport *)&v4 init];
  if (v2)
  {
    LKRegisterLoginKitLogging();
  }

  return v2;
}

- (BOOL)_canLogoutToLoginSession
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 loginUser];

  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [v3 userAuxiliaryString];
  v7 = [v6 isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v8 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v3 userAuxiliaryString];
      v19 = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_25618F000, v9, OS_LOG_TYPE_DEFAULT, "User locale (%@) is different from login user locale (%@)", &v19, 0x16u);
    }
  }

  CanSupportLoginUI = _AXSCurrentAccessibilitySettingsCanSupportLoginUI();
  if (!CanSupportLoginUI)
  {
    v12 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_25618F000, v12, OS_LOG_TYPE_DEFAULT, "Accessibility settings are on for user", &v19, 2u);
    }
  }

  v13 = [MEMORY[0x277D77BF8] sharedManager];
  v14 = [v13 currentUser];
  v15 = [v14 isAuditor];

  if (v7)
  {
    v16 = (CanSupportLoginUI != 0) & (v15 ^ 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)logoutToLoginSessionWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "Switch to the login session", v6, 2u);
  }

  kdebug_trace();
  v5 = [MEMORY[0x277D77BF8] sharedManager];
  [v5 logoutToLoginSessionWithCompletionHandler:v3];
}

- (void)logoutToLoginUserWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "Switch to the login user", v6, 2u);
  }

  kdebug_trace();
  v5 = [MEMORY[0x277D77BF8] sharedManager];
  [v5 switchToLoginUserWithCompletionHandler:v3];
}

- (void)_syncPreferencesIfNeeded
{
  if (_os_feature_enabled_impl())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke;
    block[3] = &unk_2798264A0;
    block[4] = self;
    if (_syncPreferencesIfNeeded_onceToken != -1)
    {
      dispatch_once(&_syncPreferencesIfNeeded_onceToken, block);
    }
  }
}

void __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 currentUser];

  if (([v3 isTransientUser] & 1) == 0 && (objc_msgSend(v3, "isAuditor") & 1) == 0)
  {
    v22 = a1;
    v4 = +[LKUniversalDiskStorage sharedStorage];
    v23 = [v4 retrieveValueForKey:@"com.apple.idms.config.ApplicationPreferences"];

    v5 = +[LKUniversalDiskStorage sharedStorage];
    v31[0] = @"com.apple.idms.config.ApplicationPreferences";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v5 clearKeys:v6];

    v7 = objc_opt_new();
    if (!_AXSCurrentAccessibilitySettingsCanSupportLoginUI())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = [&unk_28683CEA0 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        v11 = *MEMORY[0x277CBF040];
        v12 = *MEMORY[0x277CBF030];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(&unk_28683CEA0);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            v15 = CFPreferencesCopyMultiple(0, v14, v11, v12);
            [v7 setObject:v15 forKeyedSubscript:v14];
          }

          v9 = [&unk_28683CEA0 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v9);
      }
    }

    if (([v7 isEqualToDictionary:v23] & 1) == 0 && (objc_msgSend(v7, "count") || objc_msgSend(v23, "count")))
    {
      kdebug_trace();
      v17 = [MEMORY[0x277D77C20] taskWithName:@"Upload preferences to idMS" reason:@"Upload preferences to idMS"];
      [*(v22 + 32) setSyncTask:v17];

      v18 = [*(v22 + 32) syncTask];
      [v18 begin];

      v19 = objc_alloc_init(MEMORY[0x277CF0178]);
      v20 = [v3 alternateDSID];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke_12;
      v24[3] = &unk_279826710;
      v24[4] = *(v22 + 32);
      [v19 setConfigurationInfo:v7 forIdentifier:@"com.apple.idms.config.ApplicationPreferences" forAltDSID:v20 completion:v24];
    }

    else
    {
      v16 = LKLogDefault;
      if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25618F000, v16, OS_LOG_TYPE_DEFAULT, "idMS has the latest preferences already. No need to sync anything.", buf, 2u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke_12(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_25618F000, v6, OS_LOG_TYPE_DEFAULT, "Wrote preferences data to IdMS, success = %d, error = %{public}@", v9, 0x12u);
  }

  v7 = [*(a1 + 32) syncTask];
  [v7 end];

  [*(a1 + 32) setSyncTask:0];
  kdebug_trace();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logoutToLoginWindowWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(LKLogoutSupport *)self _syncPreferencesIfNeeded];
  if ([(LKLogoutSupport *)self _canLogoutToLoginSession])
  {
    [(LKLogoutSupport *)self logoutToLoginSessionWithCompletionHandler:v4];
  }

  else
  {
    [(LKLogoutSupport *)self logoutToLoginUserWithCompletionHandler:v4];
  }
}

- (id)logoutWarningMessage
{
  if ([(LKLogoutSupport *)self isCurrentUserAnonymous])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"Data will not be saved." value:&stru_286839188 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCurrentUserAnonymous
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 currentUser];

  LOBYTE(v2) = [v3 isTransientUser];
  return v2;
}

@end