@interface DAAccountUpgrader
+ (void)_moveExchangeCredentialsToAppleAccessGroup;
+ (void)_notifyDaHolidaySubCalAccount;
+ (void)_updateFacebookAccountAuthenticationTypes;
+ (void)_upgradeDAAccounts;
+ (void)upgradeAccounts:(BOOL)accounts;
@end

@implementation DAAccountUpgrader

+ (void)_moveExchangeCredentialsToAppleAccessGroup
{
  v42 = *MEMORY[0x277D85DE8];
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  v32 = *MEMORY[0x277CDC248];
  v33 = *MEMORY[0x277CDC228];
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
  key = *MEMORY[0x277CDBEC8];
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDBEC8], @"com.apple.cfnetwork");
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  result = 0;
  v3 = SecItemCopyMatching(Mutable, &result);
  if (v3 != -25300 && v3 != 0)
  {
    v5 = v3;
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 67109120;
      v41 = v5;
      _os_log_impl(&dword_24844D000, v6, v7, "Could not search for Exchange credentials.  %d", buf, 8u);
    }
  }

  CFRelease(Mutable);
  if (result)
  {
    attributesToUpdate = CFDictionaryCreateMutable(allocator, 0, 0, 0);
    CFDictionaryAddValue(attributesToUpdate, key, @"apple");
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      v12 = *MEMORY[0x277CDC0A8];
      v13 = *MEMORY[0x277CDC118];
      v14 = *MEMORY[0x277CDC098];
      cf2 = *MEMORY[0x277CDC0B8];
      v34 = *MEMORY[0x277CDC0C0];
      v30 = *MEMORY[0x277CDC108];
      type = *(MEMORY[0x277D03988] + 3);
      *&v9 = 67109120;
      v28 = v9;
      v31 = *MEMORY[0x277CDC098];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(result, v11);
        Value = CFDictionaryGetValue(ValueAtIndex, v12);
        v17 = CFDictionaryGetValue(ValueAtIndex, v13);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v17 = 0;
        }

        v18 = CFDictionaryGetValue(ValueAtIndex, v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v18 = 0;
        }

        if (Value && (CFEqual(Value, cf2) || CFEqual(Value, v34)) && [v17 length] && objc_msgSend(v18, "isEqualToString:", @"/Microsoft-Server-ActiveSync"))
        {
          v19 = CFDictionaryCreateMutable(allocator, 0, 0, 0);
          CFDictionarySetValue(v19, v33, v32);
          v20 = CFDictionaryGetValue(ValueAtIndex, key);
          CFDictionarySetValue(v19, key, v20);
          v21 = CFDictionaryGetValue(ValueAtIndex, v13);
          CFDictionarySetValue(v19, v13, v21);
          v22 = CFDictionaryGetValue(ValueAtIndex, v12);
          CFDictionarySetValue(v19, v12, v22);
          v23 = CFDictionaryGetValue(ValueAtIndex, v30);
          if (v23)
          {
            CFDictionarySetValue(v19, v30, v23);
          }

          v24 = SecItemUpdate(v19, attributesToUpdate);
          if (v24 != -25300)
          {
            v25 = v24;
            if (v24)
            {
              v26 = DALoggingwithCategory();
              if (os_log_type_enabled(v26, type))
              {
                *buf = v28;
                v41 = v25;
                _os_log_impl(&dword_24844D000, v26, type, "Could not move Exchange credential to apple keychain access group.  %d", buf, 8u);
              }
            }
          }

          CFRelease(v19);
          v14 = v31;
        }

        ++v11;
      }

      while (v10 != v11);
    }

    CFRelease(attributesToUpdate);
    CFRelease(result);
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)_updateFacebookAccountAuthenticationTypes
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C10]];
  if (v3)
  {
    v4 = [v2 accountsWithAccountType:v3];
    if ([v4 count])
    {
      v24 = v3;
      v29 = v2;
      v5 = dispatch_group_create();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v4;
      v6 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
      v7 = *(MEMORY[0x277D03988] + 6);
      v27 = v6;
      if (v6)
      {
        v26 = *v37;
        v8 = *MEMORY[0x277CB90B8];
        do
        {
          v9 = 0;
          do
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = v9;
            v10 = *(*(&v36 + 1) + 8 * v9);
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            childAccounts = [v10 childAccounts];
            v12 = [childAccounts countByEnumeratingWithState:&v32 objects:v42 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v33;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v33 != v14)
                  {
                    objc_enumerationMutation(childAccounts);
                  }

                  v16 = *(*(&v32 + 1) + 8 * i);
                  authenticationType = [v16 authenticationType];
                  v18 = [authenticationType isEqualToString:v8];

                  if ((v18 & 1) == 0)
                  {
                    [v16 setAuthenticationType:v8];
                    dispatch_group_enter(v5);
                    v19 = DALoggingwithCategory();
                    if (os_log_type_enabled(v19, v7))
                    {
                      identifier = [v16 identifier];
                      *buf = 138412290;
                      v41 = identifier;
                      _os_log_impl(&dword_24844D000, v19, v7, "Saving child account %@", buf, 0xCu);
                    }

                    v30[0] = MEMORY[0x277D85DD0];
                    v30[1] = 3221225472;
                    v30[2] = __62__DAAccountUpgrader__updateFacebookAccountAuthenticationTypes__block_invoke;
                    v30[3] = &unk_278F13890;
                    v30[4] = v16;
                    v31 = v5;
                    [v29 saveVerifiedAccount:v16 withCompletionHandler:v30];
                  }
                }

                v13 = [childAccounts countByEnumeratingWithState:&v32 objects:v42 count:16];
              }

              while (v13);
            }

            v9 = v28 + 1;
          }

          while (v28 + 1 != v27);
          v27 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
        }

        while (v27);
      }

      v4 = obj;

      v21 = DALoggingwithCategory();
      if (os_log_type_enabled(v21, v7))
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v21, v7, "DAAccountMigrator: Waiting for child accounts to save...", buf, 2u);
      }

      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      v2 = v29;
      v3 = v24;
    }
  }

  else
  {
    v4 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v22))
    {
      *buf = 0;
      _os_log_impl(&dword_24844D000, v4, v22, "Couldn't get a Facebook account type", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __62__DAAccountUpgrader__updateFacebookAccountAuthenticationTypes__block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = v6;
  if (a2)
  {
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v8))
    {
      v9 = [*(a1 + 32) identifier];
      v16 = 138412290;
      v17 = v9;
      v10 = "Child account %@ saved";
      v11 = v7;
      v12 = v8;
      v13 = 12;
LABEL_6:
      _os_log_impl(&dword_24844D000, v11, v12, v10, &v16, v13);
    }
  }

  else
  {
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, *(MEMORY[0x277D03988] + 3)))
    {
      v9 = [*(a1 + 32) identifier];
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      v10 = "Child account %@ failed to save: %@";
      v11 = v7;
      v12 = v14;
      v13 = 22;
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v15 = *MEMORY[0x277D85DE8];
}

+ (void)_upgradeDAAccounts
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v2, v4, "Upgrading all DataAccess accounts...", buf, 2u);
  }

  v5 = dispatch_semaphore_create(0);
  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v6 = sharedDAAccountStore();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __39__DAAccountUpgrader__upgradeDAAccounts__block_invoke;
  v30[3] = &unk_278F137C0;
  v32 = buf;
  dsema = v5;
  v31 = dsema;
  [v6 da_loadDAAccountsWithCompletion:v30];

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v7 = [*(v34 + 5) sortedArrayUsingComparator:&__block_literal_global_6];
  v8 = *(v34 + 5);
  *(v34 + 5) = v7;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = *(v34 + 5);
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v43 count:16];
  if (v10)
  {
    v11 = *v27;
    type = *(v3 + 3);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v4))
        {
          *v39 = 0;
          _os_log_impl(&dword_24844D000, v14, v4, "Calling DAAccount Upgrader to upgrade Accounts", v39, 2u);
        }

        if ([v13 upgradeAccount])
        {
          v15 = DALoggingwithCategory();
          if (os_log_type_enabled(v15, v4))
          {
            accountDescription = [v13 accountDescription];
            publicDescription = [v13 publicDescription];
            *v39 = 138412546;
            v40 = accountDescription;
            v41 = 2114;
            v42 = publicDescription;
            _os_log_impl(&dword_24844D000, v15, v4, "Account %@ (%{public}@) was upgraded. Saving account.", v39, 0x16u);
          }

          v25 = 0;
          v18 = [v13 saveAccountPropertiesWithError:&v25];
          v19 = v25;
          if ((v18 & 1) == 0)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, type))
            {
              accountID = [v13 accountID];
              *v39 = 138543618;
              v40 = accountID;
              v41 = 2112;
              v42 = v19;
              _os_log_impl(&dword_24844D000, v20, type, "Error saving account %{public}@: %@", v39, 0x16u);
            }
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v26 objects:v43 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(buf, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __39__DAAccountUpgrader__upgradeDAAccounts__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __39__DAAccountUpgrader__upgradeDAAccounts__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 conformsToProtocol:&unk_285ABF1A0];
  v6 = [v4 conformsToProtocol:&unk_285ABF1A0];

  if (v6 & 1 | ((v5 & 1) == 0))
  {
    return v5 ^ v6;
  }

  else
  {
    return -1;
  }
}

+ (void)_notifyDaHolidaySubCalAccount
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_24844D000, v2, v3, "DAD: DataAccess Migrator sending notification: com.apple.dataaccess.checkHolidayCalendarAccount", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.dataaccess.checkHolidayCalendarAccount", 0, 0, 1u);
}

+ (void)upgradeAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v5, v7))
  {
    *v17 = 0;
    _os_log_impl(&dword_24844D000, v5, v7, "DAD: DataAccess Migrator Request For Performing Asynchronous Data Migration", v17, 2u);
  }

  if (accountsCopy)
  {
    v8 = DALoggingwithCategory();
    v9 = *(v6 + 6);
    if (os_log_type_enabled(v8, v9))
    {
      *v17 = 0;
      _os_log_impl(&dword_24844D000, v8, v9, "DAAccountMigrator: Starting Exchange Credential Move to Apple Access Group", v17, 2u);
    }

    [self _moveExchangeCredentialsToAppleAccessGroup];
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v9))
    {
      *v17 = 0;
      _os_log_impl(&dword_24844D000, v10, v9, "DAAccountMigrator: Starting Update Facebook Authentication types.", v17, 2u);
    }

    [self _updateFacebookAccountAuthenticationTypes];
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v9))
    {
      *v17 = 0;
      _os_log_impl(&dword_24844D000, v11, v9, "DAAccountMigrator: Starting Upgrade DAAccount types.", v17, 2u);
    }

    [self _upgradeDAAccounts];
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v9))
    {
      *v17 = 0;
      _os_log_impl(&dword_24844D000, v12, v9, "DAAccountMigrator: Writing Device specificID.", v17, 2u);
    }

    [self _writeDeviceSpecificID];
  }

  else
  {
    v13 = DALoggingwithCategory();
    if (os_log_type_enabled(v13, v7))
    {
      *v17 = 0;
      _os_log_impl(&dword_24844D000, v13, v7, "DAD: DataAccess Migrator skipped several tasks because user logs in for the first time.", v17, 2u);
    }

    v9 = *(v6 + 6);
  }

  v14 = DALoggingwithCategory();
  if (os_log_type_enabled(v14, v9))
  {
    *v17 = 0;
    _os_log_impl(&dword_24844D000, v14, v9, "DAAccountMigrator: Posting HolidaySubCal Account Check Notification.", v17, 2u);
  }

  [self _notifyDaHolidaySubCalAccount];
  v15 = DALoggingwithCategory();
  if (os_log_type_enabled(v15, v9))
  {
    *v17 = 0;
    _os_log_impl(&dword_24844D000, v15, v9, "DAAccountMigrator: Updating migration Version.", v17, 2u);
  }

  DAUpdateMigrationVersion();
  v16 = DALoggingwithCategory();
  if (os_log_type_enabled(v16, v9))
  {
    *v17 = 0;
    _os_log_impl(&dword_24844D000, v16, v9, "DAAccountMigrator: Finished Migrator For dataaccess..returning YES/Success.", v17, 2u);
  }
}

@end