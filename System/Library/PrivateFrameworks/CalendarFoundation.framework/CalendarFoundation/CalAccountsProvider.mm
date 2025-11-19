@interface CalAccountsProvider
+ (BOOL)accountIsDuplicate:(id)a3 inStore:(id)a4;
+ (id)_accountTypeWithIdentifier:(id)a3 inStore:(id)a4;
+ (id)_accountsWithAccountType:(id)a3 inStore:(id)a4 error:(id *)a5;
+ (id)_existingAccountForAccount:(id)a3 inStore:(id)a4;
+ (id)_uniqueStringsForUsername:(id)a3;
+ (id)defaultProvider;
+ (id)uniqueStringsForHostname:(id)a3;
+ (id)uniqueStringsForPrincipalPath:(id)a3;
+ (id)verboseDescriptionForAccount:(id)a3;
- (BOOL)_bundleIDSupportsDataclassCalendars:(id)a3;
- (BOOL)_bundleIDSupportsDataclassReminders:(id)a3;
- (BOOL)account:(id)a3 hasServerURL:(id)a4;
- (BOOL)accountIsDuplicate:(id)a3;
- (BOOL)removeAccount:(id)a3 withError:(id *)a4;
- (CalAccountsProvider)init;
- (NSArray)accountsEnabledForCalendar;
- (NSArray)accountsEnabledForReminders;
- (NSArray)enabledAccounts;
- (id)_accountsEnabledForDataClass:(id)a3;
- (id)_accountsEnabledForDataClasses:(id)a3;
- (id)_mainBundleID;
- (id)_supportedDataclassesForBundleID:(id)a3;
- (id)_supportedDataclassesForMainBundleID;
- (id)accountTypeWithIdentifier:(id)a3;
- (id)accountWithIdentifier:(id)a3;
- (id)accountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
- (id)accountsWithServerURL:(id)a3;
- (id)accountsWithUsername:(id)a3;
- (id)allAccountsFromAllTypesWithError:(id *)a3;
- (id)allAccountsWithError:(id *)a3;
- (id)clientTokenForAccountWithIdentifier:(id)a3;
- (id)delegatePrincipalUIDsForAccount:(id)a3;
- (id)existingAccountForAccount:(id)a3;
- (id)oauthTokenForAccount:(id)a3 tokenType:(id)a4;
- (id)primaryAppleAccount;
- (id)providerForCalDAVAccount:(id)a3;
- (id)topLevelAccountsWithUsername:(id)a3;
- (void)removeAccount:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation CalAccountsProvider

+ (id)defaultProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CalAccountsProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultProvider_onceToken_1 != -1)
  {
    dispatch_once(&defaultProvider_onceToken_1, block);
  }

  v2 = defaultProvider_defaultProvider;

  return v2;
}

uint64_t __38__CalAccountsProvider_defaultProvider__block_invoke(uint64_t a1)
{
  defaultProvider_defaultProvider = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CalAccountsProvider)init
{
  v10.receiver = self;
  v10.super_class = CalAccountsProvider;
  v2 = [(CalAccountsProvider *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];

    if ([v4 isEqualToString:@"com.apple.CalendarAgent"])
    {
      v5 = [objc_alloc(MEMORY[0x1E6959A48]) initWithEffectiveBundleID:@"com.apple.iCal"];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E6959A48]);
    }

    accountStore = v2->_accountStore;
    v2->_accountStore = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    accountsWhenRunningUnitTests = v2->_accountsWhenRunningUnitTests;
    v2->_accountsWhenRunningUnitTests = v7;
  }

  return v2;
}

- (NSArray)enabledAccounts
{
  v3 = [(CalAccountsProvider *)self _supportedDataclassesForMainBundleID];
  v4 = [(CalAccountsProvider *)self _accountsEnabledForDataClasses:v3];

  return v4;
}

- (id)_supportedDataclassesForMainBundleID
{
  v3 = [(CalAccountsProvider *)self _mainBundleID];
  v4 = [(CalAccountsProvider *)self _supportedDataclassesForBundleID:v3];

  return v4;
}

- (NSArray)accountsEnabledForCalendar
{
  v3 = [(CalAccountsProvider *)self _mainBundleID];
  v4 = [(CalAccountsProvider *)self _bundleIDSupportsDataclassCalendars:v3];

  if (v4)
  {
    v5 = [(CalAccountsProvider *)self _accountsEnabledForDataClass:*MEMORY[0x1E6959AE0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)accountsEnabledForReminders
{
  if (CalIsReminderBridgeEnabled() || ([(CalAccountsProvider *)self _mainBundleID], v3 = objc_claimAutoreleasedReturnValue(), v4 = [(CalAccountsProvider *)self _bundleIDSupportsDataclassReminders:v3], v3, !v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CalAccountsProvider *)self _accountsEnabledForDataClass:*MEMORY[0x1E6959B48]];
  }

  return v5;
}

- (BOOL)account:(id)a3 hasServerURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v5 host];

  v9 = [v7 uniqueStringsForHostname:v8];

  v10 = [v6 calHostname];

  LOBYTE(v6) = [v9 containsObject:v10];
  return v6;
}

- (BOOL)accountIsDuplicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CalAccountsProvider *)self accountStore];
  LOBYTE(v5) = [v5 accountIsDuplicate:v4 inStore:v6];

  return v5;
}

- (id)accountsWithServerURL:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_opt_class();
  v7 = [v4 host];
  v8 = [v6 uniqueStringsForHostname:v7];

  if ([v8 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(CalAccountsProvider *)self allAccounts];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 calHostname];
          v16 = [v8 containsObject:v15];

          if (v16)
          {
            [v5 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)accountsWithUsername:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([v4 length])
  {
    v6 = [objc_opt_class() _uniqueStringsForUsername:v4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(CalAccountsProvider *)self allAccounts];
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
          v13 = [v12 username];
          v14 = [v6 containsObject:v13];

          if (v14)
          {
            [v5 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)topLevelAccountsWithUsername:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([v4 length])
  {
    v6 = [objc_opt_class() _uniqueStringsForUsername:v4];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(CalAccountsProvider *)self allAccountsFromAllTypesWithError:0, 0];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 username];
          v14 = [v6 containsObject:v13];

          if (v14)
          {
            v15 = [v12 parentAccount];
            if (v15)
            {
            }

            else if ([v12 isVisible])
            {
              [v5 addObject:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)accountTypeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CalAccountsProvider *)self accountStore];
  v7 = [v5 _accountTypeWithIdentifier:v4 inStore:v6];

  return v7;
}

- (id)accountWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CalAccountsProvider *)self runningUnitTests])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(CalAccountsProvider *)self accountsWhenRunningUnitTests];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v12 = v9;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v5 = [(CalAccountsProvider *)self accountStore];
    v12 = [v5 accountWithIdentifier:v4];
LABEL_13:
    v6 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)primaryAppleAccount
{
  v2 = [(CalAccountsProvider *)self accountStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (id)allAccountsWithError:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CalAccountsProvider *)self runningUnitTests])
  {
    v5 = [(CalAccountsProvider *)self accountsWhenRunningUnitTests];
    v6 = [v5 filteredArrayUsingTest:&__block_literal_global_38];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = *MEMORY[0x1E6959840];
    v26[0] = *MEMORY[0x1E6959818];
    v26[1] = v7;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [(CalAccountsProvider *)self accountTypeWithIdentifier:*(*(&v22 + 1) + 8 * i)];
          v13 = objc_opt_class();
          v14 = [(CalAccountsProvider *)self accountStore];
          v21 = 0;
          v15 = [v13 _accountsWithAccountType:v12 inStore:v14 error:&v21];
          v16 = v21;

          [v6 addObjectsFromArray:v15];
          if (a3 && v16)
          {
            v17 = v16;
            *a3 = v16;

            v6 = 0;
            goto LABEL_14;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __44__CalAccountsProvider_allAccountsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 calIsCalDAVAccount])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 calIsExchangeAccount];
  }

  return v3;
}

- (id)allAccountsFromAllTypesWithError:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(CalAccountsProvider *)self accountStore];
  v6 = [v5 allAccountTypes];

  v7 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = [(CalAccountsProvider *)self accountStore];
        v21 = 0;
        v16 = [v14 _accountsWithAccountType:v13 inStore:v15 error:&v21];
        v17 = v21;

        [v7 addObjectsFromArray:v16];
        if (a3 && v17)
        {
          v18 = v17;
          *a3 = v17;

          v7 = 0;
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)accountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CalAccountsProvider *)self accountStore];
  v8 = [v7 accountTypeWithAccountTypeIdentifier:v6];

  v9 = [(CalAccountsProvider *)self accountStore];
  v10 = [v9 accountsWithAccountType:v8 options:0 error:a4];

  return v10;
}

- (id)clientTokenForAccountWithIdentifier:(id)a3
{
  v3 = [(CalAccountsProvider *)self accountWithIdentifier:a3 returnCachedVersion:1];
  v4 = [v3 clientToken];

  return v4;
}

- (id)delegatePrincipalUIDsForAccount:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 calPrincipals];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v3 calMainPrincipalUID];
        v13 = [v12 isEqualToString:v11];

        if ((v13 & 1) == 0)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)existingAccountForAccount:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CalAccountsProvider *)self accountStore];
  v7 = [v5 _existingAccountForAccount:v4 inStore:v6];

  return v7;
}

- (id)oauthTokenForAccount:(id)a3 tokenType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 credential];
  v8 = [v7 oauthToken];

  if (!v8)
  {
    v9 = [v5 parentAccount];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsProvider oauthTokenForAccount:v5 tokenType:?];
    }

    v11 = [v5 parentAccount];

    v12 = [v11 credential];
    v8 = [v12 oauthToken];

    v5 = v11;
    if (!v8)
    {
LABEL_6:
      v13 = +[CalFoundationLogSubsystem accounts];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CalAccountsProvider oauthTokenForAccount:tokenType:];
      }

      v8 = 0;
    }
  }

  v14 = [v5 credential];
  v15 = [v14 credentialType];
  v16 = [v15 isEqualToString:v6];

  if ((v16 & 1) == 0)
  {
    v17 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsProvider oauthTokenForAccount:v5 tokenType:?];
    }

    v8 = 0;
  }

  return v8;
}

- (void)removeAccount:(id)a3 withCompletionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(CalAccountsProvider *)self runningUnitTests])
  {
    v17 = [(CalAccountsProvider *)self accountStore];
    [v17 removeAccount:v6 withCompletionHandler:v7];
LABEL_14:

    goto LABEL_15;
  }

  v22 = v7;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(CalAccountsProvider *)self accountsWhenRunningUnitTests];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
LABEL_10:

LABEL_13:
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:6 userInfo:0];
    v7 = v22;
    (*(v22 + 2))(v22, 0, v17);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = *v24;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v24 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    v14 = [v13 identifier];
    v15 = [v6 identifier];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v18 = [(CalAccountsProvider *)self accountsWhenRunningUnitTests];
  v19 = [v18 indexOfObject:v13];

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  v21 = [(CalAccountsProvider *)self accountsWhenRunningUnitTests];
  [v21 removeObjectAtIndex:v19];

  v7 = v22;
  (*(v22 + 2))(v22, 1, 0);
LABEL_15:

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeAccount:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CalAccountsProvider_removeAccount_withError___block_invoke;
  v11[3] = &unk_1E7EC78A8;
  v13 = &v21;
  v14 = &v15;
  v8 = v7;
  v12 = v8;
  [(CalAccountsProvider *)self removeAccount:v6 withCompletionHandler:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __47__CalAccountsProvider_removeAccount_withError___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __52__CalAccountsProvider_saveAccount_verify_withError___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)accountIsDuplicate:(id)a3 inStore:(id)a4
{
  v4 = [a1 _existingAccountForAccount:a3 inStore:a4];
  v5 = v4 != 0;

  return v5;
}

+ (id)uniqueStringsForHostname:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = [v3 CDVStringByAppendingSlashIfNeeded];
    [v4 addObject:v5];

    v6 = [v3 CDVStringByRemovingTerminatingSlashIfNeeded];
    [v4 addObject:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)uniqueStringsForPrincipalPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  if ([v3 length])
  {
    [v4 addObject:v3];
    v5 = [v3 CDVStringByRemovingPercentEscapesForHREF];
    [v4 addObject:v5];
    v6 = [v5 CDVStringByAppendingSlashIfNeeded];
    [v4 addObject:v6];
    v7 = [v5 CDVStringByRemovingTerminatingSlashIfNeeded];
    [v4 addObject:v7];
    v8 = [v3 CDVStringByAddingPercentEscapesForHREF];
    [v4 addObject:v8];
    v9 = [v8 CDVStringByAppendingSlashIfNeeded];
    [v4 addObject:v9];
    v10 = [v8 CDVStringByRemovingTerminatingSlashIfNeeded];
    [v4 addObject:v10];
  }

  return v4;
}

+ (id)verboseDescriptionForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountDescription];
  if (![(__CFString *)v4 length])
  {
    v5 = +[CalAccountsProvider defaultProvider];
    v6 = [v3 parentAccountIdentifier];
    v7 = [v5 accountWithIdentifier:v6 returnCachedVersion:1];

    v8 = [v7 accountDescription];

    v4 = v8;
  }

  if (![(__CFString *)v4 length])
  {

    v4 = @"UNAVAILABLE";
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v3 identifier];
  v11 = [v3 accountType];
  v12 = [v11 identifier];
  v13 = [v3 parentAccountIdentifier];
  v14 = [v13 length];
  v15 = @"YES";
  if (!v14)
  {
    v15 = @"NO";
  }

  v16 = [v9 stringWithFormat:@"%@ (identifier=%@ type=%@; childAccount=%@)", v4, v10, v12, v15];;

  return v16;
}

- (id)_accountsEnabledForDataClass:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CalAccountsProvider *)self allAccounts];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 enabledDataclasses];
        v13 = [v12 containsObject:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_accountsEnabledForDataClasses:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CalAccountsProvider *)self allAccounts];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 enabledDataclasses];
        v13 = [v4 intersectsSet:v12];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_accountsWithAccountType:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v9 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__CalAccountsProvider__accountsWithAccountType_inStore_error___block_invoke;
  v15[3] = &unk_1E7EC78F8;
  v17 = &v25;
  v18 = &v19;
  v10 = v9;
  v16 = v10;
  [v8 accountsWithAccountType:v7 completion:v15];
  v11 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v10, v11) >= 1)
  {
    v12 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CalAccountsProvider _accountsWithAccountType:inStore:error:];
    }
  }

  if (a5)
  {
    *a5 = v20[5];
  }

  v13 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __62__CalAccountsProvider__accountsWithAccountType_inStore_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_accountTypeWithIdentifier:(id)a3 inStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v7 = dispatch_semaphore_create(0);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __58__CalAccountsProvider__accountTypeWithIdentifier_inStore___block_invoke;
  v16 = &unk_1E7EC7920;
  v18 = &v19;
  v8 = v7;
  v17 = v8;
  [v6 accountTypeWithIdentifier:v5 completion:&v13];
  v9 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v8, v9) >= 1)
  {
    v10 = [CalFoundationLogSubsystem accounts:v13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CalAccountsProvider _accountTypeWithIdentifier:inStore:];
    }
  }

  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __58__CalAccountsProvider__accountTypeWithIdentifier_inStore___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_existingAccountForAccount:(id)a3 inStore:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 calIsCalDAVAccount])
  {
    v8 = [v6 calMainPrincipalUID];
    v9 = [v6 valueForKey:@"PrincipalPath" forPrincipalWithUID:v8];

    v10 = [v6 calHostname];
    v50 = [a1 uniqueStringsForHostname:v10];

    v49 = [a1 uniqueStringsForPrincipalPath:v9];
    v11 = [v6 username];
    v51 = [a1 _uniqueStringsForUsername:v11];

    v12 = +[CalAccountsProvider defaultProvider];
    v13 = [v12 runningUnitTests];

    if (v13)
    {
      v14 = +[CalAccountsProvider defaultProvider];
      [v14 allAccounts];
    }

    else
    {
      v14 = [a1 _accountTypeWithIdentifier:*MEMORY[0x1E6959818] inStore:v7];
      [a1 _accountsWithAccountType:v14 inStore:v7 error:0];
    }
    v16 = ;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v17)
    {
      v19 = v17;
      v47 = v9;
      v48 = v7;
      v20 = *v54;
      *&v18 = 138413058;
      v46 = v18;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v54 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v53 + 1) + 8 * i);
          v23 = [v6 identifier];
          v24 = [v22 identifier];
          v25 = [v23 isEqualToString:v24];

          if ((v25 & 1) == 0)
          {
            v26 = [v6 parentAccount];
            v27 = [v26 accountType];
            v28 = [v22 parentAccount];
            v29 = [v28 accountType];
            v30 = [v27 isEqual:v29];

            v31 = [v22 username];
            LODWORD(v27) = [v51 containsObject:v31];

            v32 = v30 & v27;
            if (v32 == 1)
            {
              v33 = +[CalFoundationLogSubsystem accounts];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v39 = [v6 parentAccount];
                v40 = [v6 parentAccount];
                v41 = [v40 accountType];
                *buf = v46;
                v58 = v6;
                v59 = 2112;
                v60 = v51;
                v61 = 2112;
                v62 = v39;
                v63 = 2112;
                v64 = v41;
                _os_log_error_impl(&dword_1B990D000, v33, OS_LOG_TYPE_ERROR, "Account [%@] has the same user name as an existing account. uniqueUsernames:[%@] parentAccount:[%@] parentAccountType:[%@]", buf, 0x2Au);
              }
            }

            v34 = [v22 calHostname];
            v35 = [v50 containsObject:v34];

            v36 = [v22 calMainPrincipalUID];
            v37 = [v22 valueForKey:@"PrincipalPath" forPrincipalWithUID:v36];
            v38 = [v49 containsObject:v37];

            if (!(v32 & 1 | ((v35 & 1) == 0)) && v38)
            {
              v42 = +[CalFoundationLogSubsystem accounts];
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                +[CalAccountsProvider _existingAccountForAccount:inStore:];
              }

LABEL_28:
              v43 = +[CalFoundationLogSubsystem accounts];
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                +[CalAccountsProvider _existingAccountForAccount:inStore:];
              }

              v15 = v22;
              goto LABEL_31;
            }

            if (v32)
            {
              goto LABEL_28;
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v15 = 0;
LABEL_31:
      v9 = v47;
      v7 = v48;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v9 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v6;
      _os_log_impl(&dword_1B990D000, v9, OS_LOG_TYPE_DEFAULT, "Account [%@] is not a CalDAV account. Allow the save to proceed.", buf, 0xCu);
    }

    v15 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)providerForCalDAVAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 parentAccount];

  if (v4)
  {
    v5 = [v3 parentAccount];

    v6 = [v5 accountType];
    v7 = [v6 identifier];

    if ([v7 isEqualToString:*MEMORY[0x1E69597F8]])
    {
      v8 = @"icloud";
    }

    else
    {
      v11 = [v7 componentsSeparatedByString:@"."];
      v8 = [v11 lastObject];
    }
  }

  else
  {
    v9 = [v3 calHostname];

    v10 = [v9 hasSuffix:@"apple.com"];
    if (v10)
    {
      v8 = @"apple";
    }

    else
    {
      v8 = @"caldav";
    }
  }

  v12 = [(__CFString *)v8 lowercaseString];

  return v12;
}

- (id)_supportedDataclassesForBundleID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  if ([(CalAccountsProvider *)self _bundleIDSupportsDataclassCalendars:v4])
  {
    [v5 addObject:*MEMORY[0x1E6959AE0]];
  }

  if (!CalIsReminderBridgeEnabled() && [(CalAccountsProvider *)self _bundleIDSupportsDataclassReminders:v4])
  {
    [v5 addObject:*MEMORY[0x1E6959B48]];
  }

  return v5;
}

- (BOOL)_bundleIDSupportsDataclassCalendars:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.iCal"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.CalendarAgent"];
  }

  return v4;
}

- (BOOL)_bundleIDSupportsDataclassReminders:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.reminders"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.CalendarAgent"];
  }

  return v4;
}

- (id)_mainBundleID
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (![(__CFString *)v3 length])
  {
    v4 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B990D000, v4, OS_LOG_TYPE_DEFAULT, "Since an empty bundle was passed in, we're going to pretend that we're dealing with CalendarAgent.", v6, 2u);
    }

    v3 = @"com.apple.CalendarAgent";
  }

  return v3;
}

+ (id)_uniqueStringsForUsername:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  if ([v3 length])
  {
    [v4 addObject:v3];
    v5 = [v3 CDVStringByRemovingPercentEscapesForHREF];
    [v4 addObject:v5];

    v6 = [v3 CDVStringByAddingPercentEscapesForHREF];
    [v4 addObject:v6];
  }

  return v4;
}

- (void)oauthTokenForAccount:(void *)a1 tokenType:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 parentAccount];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)oauthTokenForAccount:tokenType:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v0, v1, "An OAuth token doesn't exist for %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)oauthTokenForAccount:(void *)a1 tokenType:.cold.3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 credential];
  v8 = [v1 credentialType];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)renewCredentialsForAccount:forceRenewal:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v0, v1, "We timed out attempting to renew credentials for %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)saveAccount:verify:withCompletionHandler:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_accountsWithAccountType:inStore:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v0, v1, "Timed out trying to accounts with type %@ from the account store.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_accountTypeWithIdentifier:inStore:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v0, v1, "Timed out trying to fetch an account type with identifier %@ from the account store.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_existingAccountForAccount:inStore:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v0, v1, "Account [%@] has the same server url and principal account.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_existingAccountForAccount:inStore:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B990D000, v1, OS_LOG_TYPE_ERROR, "Account [%@] is the duplicate of account [%@].", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end