@interface MCAccountUtilities
+ (BOOL)hasManagedAccountOfDataclasses:(id)a3;
+ (id)accountDataclassesForBundleID:(id)a3;
+ (id)appStoreAccountIdentifierForPersona:(id)a3;
+ (void)checkAccountConsistencyAndReleaseOrphanedAccounts;
- (MCAccountUtilities)init;
@end

@implementation MCAccountUtilities

- (MCAccountUtilities)init
{
  v6.receiver = self;
  v6.super_class = MCAccountUtilities;
  v2 = [(MCAccountUtilities *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MCAccountUtilities queue", 0);
    signInQueue = v2->_signInQueue;
    v2->_signInQueue = v3;
  }

  return v2;
}

+ (void)checkAccountConsistencyAndReleaseOrphanedAccounts
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = +[MCManifest sharedManifest];
  v3 = [v2 allInstalledProfileIdentifiers];
  [MEMORY[0x1E6959A48] defaultStore];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v48 = v57 = 0u;
  obj = [v48 accounts];
  v4 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v55;
    v47 = *MEMORY[0x1E69597A0];
    *&v5 = 138543874;
    v44 = v5;
    v45 = v2;
    v46 = v3;
    v49 = *v55;
    do
    {
      v8 = 0;
      v50 = v6;
      do
      {
        if (*v55 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v54 + 1) + 8 * v8);
        v10 = [v9 mcConfigurationProfileIdentifier];
        v11 = MCMailAccountManagedTag();
        v12 = [v9 accountPropertyForKey:v11];

        if (v10 | v12)
        {
          v13 = [v9 mcProfileUUID];
          v14 = [v9 mcPayloadUUID];
          if (v10)
          {
            if ([v3 containsObject:v10])
            {
              v15 = [v2 installedProfileWithIdentifier:v10];
              v16 = [v15 UUID];
              v17 = [v16 isEqualToString:v13];

              if (v17)
              {
                v18 = [v15 payloadWithUUID:v14];
                if (v18)
                {

                  v3 = v46;
LABEL_33:

                  v7 = v49;
                  v6 = v50;
                  goto LABEL_34;
                }

                v32 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
                {
                  v29 = v32;
                  v30 = [v9 identifier];
                  *buf = v44;
                  v59 = v30;
                  v60 = 2114;
                  v61 = v10;
                  v62 = 2114;
                  v63 = v14;
                  _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "Found account (%{public}@) with installed profile identifier (%{public}@) whose payload UUID (%{public}@) does not match any payload in that profile", buf, 0x20u);
LABEL_23:
                }
              }

              else
              {
                v28 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
                {
                  v29 = v28;
                  v30 = [v9 identifier];
                  v31 = [v15 UUID];
                  *buf = 138544130;
                  v59 = v30;
                  v60 = 2114;
                  v61 = v10;
                  v62 = 2114;
                  v63 = v13;
                  v64 = 2114;
                  v65 = v31;
                  _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "Found account (%{public}@) with installed profile identifier (%{public}@) whose UUID (%{public}@) does not match that of the profile (%{public}@)", buf, 0x2Au);

                  v2 = v45;
                  goto LABEL_23;
                }
              }

              v3 = v46;
LABEL_25:
              v33 = _MCLogObjects;
              if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                v35 = [v9 identifier];
                *buf = 138543362;
                v59 = v35;
                _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEFAULT, "Removing profile information from account %{public}@", buf, 0xCu);
              }

              [v9 setMcProfileUUID:0];
              [v9 setMcPayloadUUID:0];
              [v9 setMcConfigurationProfileIdentifier:0];
              [v9 setManagingSourceName:0];
              [v9 setManagingOwnerIdentifier:0];
              [v9 setAccountProperty:0 forKey:v47];
              v36 = MCMailAccountManagedTag();
              [v9 setAccountProperty:0 forKey:v36];

              v37 = _MCLogObjects;
              if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v37;
                v39 = [v9 identifier];
                *buf = 138543362;
                v59 = v39;
                _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_DEFAULT, "Saving account %{public}@...", buf, 0xCu);
              }

              v40 = dispatch_semaphore_create(0);
              v52[0] = MEMORY[0x1E69E9820];
              v52[1] = 3221225472;
              v52[2] = __71__MCAccountUtilities_checkAccountConsistencyAndReleaseOrphanedAccounts__block_invoke;
              v52[3] = &unk_1E77D2CB0;
              v52[4] = v9;
              v15 = v40;
              v53 = v15;
              [v48 saveVerifiedAccount:v9 withCompletionHandler:v52];
              v41 = dispatch_time(0, 120000000000);
              if (dispatch_semaphore_wait(v15, v41))
              {
                v42 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A795B000, v42, OS_LOG_TYPE_DEFAULT, "Timed out waiting for account to save; moving on...", buf, 2u);
                }
              }

              goto LABEL_33;
            }

            v27 = _MCLogObjects;
            if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            v23 = v27;
            v24 = [v9 identifier];
            *buf = 138543618;
            v59 = v24;
            v60 = 2114;
            v61 = v10;
            v25 = v23;
            v26 = "Found account (%{public}@) with uninstalled profile identifier (%{public}@)";
          }

          else
          {
            v22 = _MCLogObjects;
            if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            v23 = v22;
            v24 = [v9 identifier];
            *buf = 138543618;
            v59 = v24;
            v60 = 2114;
            v61 = v12;
            v25 = v23;
            v26 = "Found account (%{public}@) with just a managed tag  (%{public}@)";
          }

          _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x16u);

          goto LABEL_25;
        }

        v19 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
        {
          v20 = v19;
          v21 = [v9 identifier];
          *buf = 138543362;
          v59 = v21;
          _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEBUG, "Skipping unmanaged account with identifier: %{public}@", buf, 0xCu);
        }

LABEL_34:

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v6);
  }

  v43 = *MEMORY[0x1E69E9840];
}

void __71__MCAccountUtilities_checkAccountConsistencyAndReleaseOrphanedAccounts__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 identifier];
    v10 = v9;
    v11 = @"OK";
    if (!a2)
    {
      v11 = v5;
    }

    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "Save account %{public}@ completed: %{public}@", &v13, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)accountDataclassesForBundleID:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (([v3 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.MailCompositionService"))
  {
    v15[0] = *MEMORY[0x1E6959B28];
    v4 = MEMORY[0x1E695DEC8];
    v5 = v15;
LABEL_4:
    v6 = 1;
LABEL_5:
    v7 = [v4 arrayWithObjects:v5 count:v6];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"com.apple.mobilecal"])
  {
    v14 = *MEMORY[0x1E6959AE0];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v14;
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"com.apple.mobilenotes"])
  {
    v13 = *MEMORY[0x1E6959B40];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v13;
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"com.apple.reminders"])
  {
    v12 = *MEMORY[0x1E6959B48];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v12;
    goto LABEL_4;
  }

  if (([v3 isEqualToString:@"com.apple.MobileAddressBook"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.mobilephone"))
  {
    v10 = *MEMORY[0x1E6959AF8];
    v11[0] = *MEMORY[0x1E6959AF0];
    v11[1] = v10;
    v4 = MEMORY[0x1E695DEC8];
    v5 = v11;
    v6 = 2;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)appStoreAccountIdentifierForPersona:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    v31[0] = *MEMORY[0x1E6959930];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v25 = 0;
    v6 = [v4 accountsWithAccountTypeIdentifiers:v5 preloadedProperties:0 error:&v25];
    v20 = v25;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      v11 = *MEMORY[0x1E69597A0];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v11];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEqualToString:v3])
          {
            v16 = [v13 ams_DSID];
            v17 = _MCLogObjects;
            if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v27 = v3;
              v28 = 2114;
              v29 = v16;
              _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona FOUND persona:%{public}@ -> accountIdentifier:%{public}@", buf, 0x16u);
            }

            goto LABEL_18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v3;
      _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona NOT FOUND persona:%{public}@", buf, 0xCu);
    }

    v16 = 0;
LABEL_18:
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)hasManagedAccountOfDataclasses:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v30 = v3;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Checking for managed accounts that have one of these dataclasses: %{public}@", buf, 0xCu);
    }

    v23 = v3;
    v5 = [MEMORY[0x1E695DFD8] setWithArray:v3];
    v22 = [MEMORY[0x1E6959A48] defaultStore];
    [v22 accounts];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v27 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 enabledDataclasses];
          if ([v12 intersectsSet:v5])
          {
            v13 = [v11 accountPropertyForKey:@"MCAccountIsManaged"];
            v14 = [v13 BOOLValue];

            if (v14)
            {
              v17 = _MCLogObjects;
              if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
              {
                v18 = v17;
                v19 = [v11 identifier];
                *buf = 138543362;
                v30 = v19;
                _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEBUG, "Account %{public}@ found.", buf, 0xCu);
              }

              v16 = 1;
              goto LABEL_20;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "No account found.", buf, 2u);
    }

    v16 = 0;
LABEL_20:
    v3 = v23;
  }

  else
  {
    v16 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

@end