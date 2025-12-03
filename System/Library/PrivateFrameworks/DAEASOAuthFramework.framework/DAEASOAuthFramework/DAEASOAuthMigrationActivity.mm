@interface DAEASOAuthMigrationActivity
+ (BOOL)profileMigrationDisabled;
+ (BOOL)profileMigrationEnabled;
- (BOOL)_isExchangeBasicAccount:(id)account;
- (id)_migrationDecisionString:(unint64_t)string;
- (id)_serverMigrationStatus;
- (id)_triggerAccountMigration;
- (unint64_t)_migrateExchangeAccountToOAuthDecision:(id)decision disallowedDomains:(id)domains disallowedHosts:(id)hosts;
- (void)_retrieveMigrationStatusFromConfigurationURI:(id)i withCompletion:(id)completion;
- (void)_sendAnalyticsForMigratingAccount:(id)account withStatus:(id)status;
- (void)invalidateActivity;
- (void)scheduleActivity;
@end

@implementation DAEASOAuthMigrationActivity

- (void)scheduleActivity
{
  scheduler = [(DAEASOAuthMigrationActivity *)self scheduler];

  if (!scheduler)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.exchangesync.DAEASOAuthMigrationActivity"];
    [(DAEASOAuthMigrationActivity *)self setScheduler:v4];

    scheduler2 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler2 setRepeats:1];

    LODWORD(scheduler2) = +[DAEASOAuthMigrationActivity profileMigrationEnabled];
    scheduler3 = [(DAEASOAuthMigrationActivity *)self scheduler];
    v7 = scheduler3;
    v8 = scheduler2 == 0;
    if (scheduler2)
    {
      v9 = 33;
    }

    else
    {
      v9 = 9;
    }

    v10 = MEMORY[0x277D07A40];
    if (v8)
    {
      v10 = MEMORY[0x277D07A38];
    }

    if (v8)
    {
      v11 = MEMORY[0x277D07A48];
    }

    else
    {
      v11 = MEMORY[0x277D07A50];
    }

    [scheduler3 setInterval:*v10];

    v12 = *v11;
    scheduler4 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler4 setTolerance:v12];

    scheduler5 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler5 setQualityOfService:v9];

    scheduler6 = [(DAEASOAuthMigrationActivity *)self scheduler];
    _triggerAccountMigration = [(DAEASOAuthMigrationActivity *)self _triggerAccountMigration];
    [scheduler6 scheduleWithBlock:_triggerAccountMigration];
  }
}

- (void)invalidateActivity
{
  scheduler = [(DAEASOAuthMigrationActivity *)self scheduler];

  if (scheduler)
  {
    scheduler2 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler2 invalidate];

    [(DAEASOAuthMigrationActivity *)self setScheduler:0];
  }
}

- (void)_retrieveMigrationStatusFromConfigurationURI:(id)i withCompletion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke;
  v10[3] = &unk_278EE06F8;
  v11 = iCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = iCopy;
  dispatch_async(v7, v10);
}

void __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAB70];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  v4 = [v2 requestWithURL:v3];

  [v4 _setNonAppInitiated:1];
  v5 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke_2;
  v8[3] = &unk_278EE06D0;
  v9 = *(a1 + 40);
  v7 = [v6 dataTaskWithRequest:v4 completionHandler:v8];
  [v7 resume];
}

void __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v6 && !v7)
  {
    v26 = 0;
    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v26];
    v10 = v26;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationEnabled-v2"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationEnabled-v2"];
          [v13 isEqualToString:@"YES"];
        }

        v21 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedDomains"];
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        if (v22)
        {
          v16 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedDomains"];
        }

        else
        {
          v16 = 0;
        }

        v23 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedHosts"];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass();

        if (v24)
        {
          v15 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedHosts"];
        }

        else
        {
          v15 = 0;
        }

        v17 = DALoggingwithCategory();
        v25 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v17, v25))
        {
          *buf = 138412290;
          v28 = v9;
          _os_log_impl(&dword_247E05000, v17, v25, "DAEASOAuthMigrationActivity: Configuration set to: %@", buf, 0xCu);
        }

        goto LABEL_16;
      }

      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 138412290;
        v28 = v9;
        v19 = "DAEASOAuthMigrationActivity: Invalid configuration data: %@";
        goto LABEL_14;
      }
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 138412290;
        v28 = v10;
        v19 = "DAEASOAuthMigrationActivity: Unable to decode configuration data. Error: %@";
LABEL_14:
        _os_log_impl(&dword_247E05000, v17, v18, v19, buf, 0xCu);
      }
    }

    v15 = 0;
    v16 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v10 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v10, v14))
  {
    *buf = 138412546;
    v28 = v8;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_247E05000, v10, v14, "DAEASOAuthMigrationActivity: Could not retrieve configuration. Error: %@. Data: %@", buf, 0x16u);
  }

  v15 = 0;
  v16 = 0;
LABEL_17:

  (*(*(a1 + 32) + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

- (id)_serverMigrationStatus
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__DAEASOAuthMigrationActivity__serverMigrationStatus__block_invoke;
  v7[3] = &unk_278EE0720;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [(DAEASOAuthMigrationActivity *)self _retrieveMigrationStatusFromConfigurationURI:@"https://configuration.apple.com/configurations/internetservices/exchangesync/oauth-migration-configuration.plist" withCompletion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

intptr_t __53__DAEASOAuthMigrationActivity__serverMigrationStatus__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] initWithBool:a2];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKeyedSubscript:@"migrationEnabled"];

  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"disallowedDomains"];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:@"disallowedHosts"];

  v11 = *(a1 + 32);

  return dispatch_semaphore_signal(v11);
}

+ (BOOL)profileMigrationEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation valueForKey:@"ExchangeAccountEnableMigration"];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  v7 = os_log_type_enabled(v5, v6);
  if (v4)
  {
    if (v7)
    {
      v12 = 0;
      v8 = "profileMigrationEnabled: YES";
      v9 = &v12;
LABEL_6:
      _os_log_impl(&dword_247E05000, v5, v6, v8, v9, 2u);
    }
  }

  else if (v7)
  {
    v11 = 0;
    v8 = "profileMigrationEnabled: NO";
    v9 = &v11;
    goto LABEL_6;
  }

  return v4 != 0;
}

+ (BOOL)profileMigrationDisabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation valueForKey:@"ExchangeAccountDisableMigration"];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  v7 = os_log_type_enabled(v5, v6);
  if (v4)
  {
    if (v7)
    {
      v12 = 0;
      v8 = "profileMigrationDisabled: YES";
      v9 = &v12;
LABEL_6:
      _os_log_impl(&dword_247E05000, v5, v6, v8, v9, 2u);
    }
  }

  else if (v7)
  {
    v11 = 0;
    v8 = "profileMigrationDisabled: NO";
    v9 = &v11;
    goto LABEL_6;
  }

  return v4 != 0;
}

- (BOOL)_isExchangeBasicAccount:(id)account
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v20 = 0;
  v4 = [MEMORY[0x277CE8538] credentialForAccount:accountCopy clientID:0 error:&v20];
  v5 = v20;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x277CB8C00]];

  username = [accountCopy username];
  if (!username || (v10 = username, [v4 password], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    v8 = 0;
  }

  oauthRefreshToken = [v4 oauthRefreshToken];
  v13 = oauthRefreshToken == 0;

  v14 = v13 & v8;
  v15 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = @"No";
    if (v14)
    {
      v17 = @"Yes";
    }

    *buf = 138412546;
    v22 = accountCopy;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_247E05000, v15, v16, "_isExchangeBasicAccount: Account %@ is a basic exchange account? %@", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_sendAnalyticsForMigratingAccount:(id)account withStatus:(id)status
{
  accountCopy = account;
  statusCopy = status;
  v6 = statusCopy;
  v7 = accountCopy;
  AnalyticsSendEventLazy();
}

id __76__DAEASOAuthMigrationActivity__sendAnalyticsForMigratingAccount_withStatus___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) identifier];
  [v2 setObject:v3 forKeyedSubscript:@"accountIdentifier"];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"migrationStatus"];
  if ([*(a1 + 48) _isExchangeBasicAccount:*(a1 + 32)])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v2 setObject:v4 forKeyedSubscript:@"accountIsExchangeBasic"];

  return v2;
}

- (id)_migrationDecisionString:(unint64_t)string
{
  if (string - 1 > 6)
  {
    return @"Not basic account";
  }

  else
  {
    return off_278EE07B8[string - 1];
  }
}

- (unint64_t)_migrateExchangeAccountToOAuthDecision:(id)decision disallowedDomains:(id)domains disallowedHosts:(id)hosts
{
  v81 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  domainsCopy = domains;
  hostsCopy = hosts;
  if (![(DAEASOAuthMigrationActivity *)self _isExchangeBasicAccount:decisionCopy])
  {
    v34 = 0;
    goto LABEL_34;
  }

  selfCopy = self;
  sel = a2;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v66 = domainsCopy;
  v12 = domainsCopy;
  v13 = [v12 countByEnumeratingWithState:&v71 objects:v80 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v72;
    v16 = *MEMORY[0x277D03818];
    v65 = hostsCopy;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v71 + 1) + 8 * i);
        username = [decisionCopy username];
        if ([username hasSuffix:v18])
        {

LABEL_23:
          v35 = DALoggingwithCategory();
          v36 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v35, v36))
          {
            Name = sel_getName(sel);
            *buf = 136315394;
            v77 = Name;
            v78 = 2114;
            v79 = v18;
            _os_log_impl(&dword_247E05000, v35, v36, "In %s: No because it ends with %{public}@ domain (consumer account).", buf, 0x16u);
          }

          v34 = 1;
          hostsCopy = v65;
          domainsCopy = v66;
          goto LABEL_34;
        }

        v20 = [decisionCopy objectForKeyedSubscript:v16];
        v21 = [v20 hasSuffix:v18];

        if (v21)
        {
          goto LABEL_23;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v71 objects:v80 count:16];
      hostsCopy = v65;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v22 = hostsCopy;
  v23 = hostsCopy;
  v24 = [v23 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v68;
    v27 = *MEMORY[0x277D03820];
    while (2)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v68 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v67 + 1) + 8 * j);
        v30 = [decisionCopy objectForKeyedSubscript:{v27, selfCopy}];
        v31 = [v30 isEqualToString:v29];

        if (v31)
        {
          v38 = DALoggingwithCategory();
          v39 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v38, v39))
          {
            v40 = sel_getName(sel);
            *buf = 136315394;
            v77 = v40;
            v78 = 2114;
            v79 = v29;
            _os_log_impl(&dword_247E05000, v38, v39, "In %s: No because the host is %{public}@ (consumer account).", buf, 0x16u);
          }

          v34 = 2;
          domainsCopy = v66;
          hostsCopy = v22;
          goto LABEL_34;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  managingOwnerIdentifier = [decisionCopy managingOwnerIdentifier];
  if (managingOwnerIdentifier)
  {
    v33 = managingOwnerIdentifier;
    domainsCopy = v66;
    hostsCopy = v22;
LABEL_31:
    v42 = DALoggingwithCategory();
    v43 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = sel_getName(sel);
      *buf = 136315138;
      v77 = v44;
      _os_log_impl(&dword_247E05000, v42, v43, "In %s: No because it is being managed.", buf, 0xCu);
    }

    v34 = 3;
    goto LABEL_34;
  }

  v41 = [decisionCopy objectForKeyedSubscript:*MEMORY[0x277CB8A90]];
  hostsCopy = v22;
  if (v41)
  {
    v33 = v41;
    domainsCopy = v66;
    goto LABEL_31;
  }

  v47 = *MEMORY[0x277D07A58];
  v48 = [decisionCopy objectForKeyedSubscript:*MEMORY[0x277D07A58]];

  domainsCopy = v66;
  if (!v48)
  {
    goto LABEL_41;
  }

  v49 = MEMORY[0x277CBEAA8];
  v50 = [decisionCopy objectForKeyedSubscript:v47];
  [v50 doubleValue];
  v51 = [v49 dateWithTimeIntervalSince1970:?];

  LODWORD(v49) = [objc_opt_class() profileMigrationEnabled];
  [v51 timeIntervalSinceNow];
  if (v49)
  {
    v53 = MEMORY[0x277D07A68];
  }

  else
  {
    v53 = MEMORY[0x277D07A60];
  }

  if (v52 < -*v53)
  {

LABEL_41:
    migrationStatus = [decisionCopy migrationStatus];
    v34 = 7;
    if (migrationStatus != 3)
    {
      v55 = migrationStatus;
      if (migrationStatus != 5)
      {
        v56 = DALoggingwithCategory();
        v57 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v56, v57))
        {
          v58 = sel_getName(sel);
          migrationStatusString = [decisionCopy migrationStatusString];
          *buf = 136315394;
          v77 = v58;
          v78 = 2112;
          v79 = migrationStatusString;
          _os_log_impl(&dword_247E05000, v56, v57, "In %s: No because migration status is %@.", buf, 0x16u);
        }

        if (v55 == 1)
        {
          v34 = 5;
        }

        else
        {
          v34 = 6;
        }
      }
    }

    goto LABEL_34;
  }

  v60 = DALoggingwithCategory();
  v61 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v60, v61))
  {
    v62 = sel_getName(sel);
    *buf = 136315394;
    v77 = v62;
    v78 = 2112;
    v79 = v51;
    _os_log_impl(&dword_247E05000, v60, v61, "In %s: No because last attempt was very recent: %@).", buf, 0x16u);
  }

  v34 = 4;
LABEL_34:

  v45 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)_triggerAccountMigration
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke;
  v4[3] = &unk_278EE0798;
  v4[4] = self;
  v2 = MEMORY[0x24C1BC830](v4, a2);

  return v2;
}

void __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_247E05000, v4, v5, "DAEASOAuthMigrationActivity: Starting.", buf, 2u);
  }

  v6 = *(a1 + 32);
  if (![objc_opt_class() profileMigrationDisabled])
  {
    type = v5;
    v8 = [*(a1 + 32) _serverMigrationStatus];
    v9 = [v8 objectForKeyedSubscript:@"migrationEnabled"];
    v10 = [v9 BOOLValue];

    v11 = [v8 objectForKeyedSubscript:@"disallowedDomains"];
    v12 = [v8 objectForKeyedSubscript:@"disallowedHosts"];
    v13 = [*(a1 + 32) scheduler];
    if ([v13 shouldDefer])
    {
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = [objc_opt_class() profileMigrationEnabled] | v10;

      if (v15)
      {
        v16 = objc_opt_new();
        v17 = [v16 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C00]];
        v18 = v17;
        v19 = type;
        if (v17)
        {
          v37 = v8;
          v38 = v3;
          v35 = v17;
          v36 = v16;
          [v16 accountsWithAccountType:v17];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          obj = v45 = 0u;
          v20 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v43;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v43 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v42 + 1) + 8 * i);
                v25 = [*(a1 + 32) _migrateExchangeAccountToOAuthDecision:v24 disallowedDomains:v11 disallowedHosts:v12];
                if (v25 == 7)
                {
                  v48 = @"DAEASRenewCredentialsShouldTriggerMigrationKey";
                  v49 = MEMORY[0x277CBEC38];
                  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
                  v27 = DALoggingwithCategory();
                  if (os_log_type_enabled(v27, v19))
                  {
                    *buf = 138412290;
                    v47 = v24;
                    _os_log_impl(&dword_247E05000, v27, v19, "DAEASOAuthMigrationActivity: Calling renewCredentialsForAccount for account: %@.", buf, 0xCu);
                  }

                  v28 = sharedDAAccountStore();
                  v41[0] = MEMORY[0x277D85DD0];
                  v41[1] = 3221225472;
                  v41[2] = __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke_95;
                  v41[3] = &unk_278EE0770;
                  v29 = *(a1 + 32);
                  v41[4] = v24;
                  v41[5] = v29;
                  [v28 renewCredentialsForAccount:v24 options:v26 completion:v41];
                }

                else
                {
                  v26 = [*(a1 + 32) _migrationDecisionString:v25];
                  v30 = *(a1 + 32);
                  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Skipped: %@", v26];
                  [v30 _sendAnalyticsForMigratingAccount:v24 withStatus:v31];

                  v19 = type;
                }
              }

              v21 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v21);
          }

          v8 = v37;
          v3 = v38;
          v18 = v35;
          v16 = v36;
        }

        v32 = DALoggingwithCategory();
        if (os_log_type_enabled(v32, v19))
        {
          *buf = 0;
          _os_log_impl(&dword_247E05000, v32, v19, "DAEASOAuthMigrationActivity: Finished.", buf, 2u);
        }

        v3[2](v3, 1);
        goto LABEL_30;
      }
    }

    v33 = DALoggingwithCategory();
    if (os_log_type_enabled(v33, type))
    {
      *buf = 0;
      _os_log_impl(&dword_247E05000, v33, type, "DAEASOAuthMigrationActivity: Deferred.", buf, 2u);
    }

    v3[2](v3, 2);
LABEL_30:

    goto LABEL_31;
  }

  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_247E05000, v7, v5, "DAEASOAuthMigrationActivity: Profile says we should not proceed, exiting.", buf, 2u);
  }

  v3[2](v3, 1);
LABEL_31:

  v34 = *MEMORY[0x277D85DE8];
}

void __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke_95(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) reload];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_247E05000, v2, v3, "DAEASOAuthMigrationActivity: Finished calling renewCredentialsForAccount for account: %@.", &v10, 0xCu);
  }

  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v8 = [v5 migrationStatusString];
  [v6 _sendAnalyticsForMigratingAccount:v5 withStatus:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end