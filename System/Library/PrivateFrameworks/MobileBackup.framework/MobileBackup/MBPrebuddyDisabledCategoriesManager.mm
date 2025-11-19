@interface MBPrebuddyDisabledCategoriesManager
- (BOOL)_isSupportedBackupDomain:(id)a3;
- (BOOL)_isSupportedDataclassForDevice:(id)a3;
- (id)_disabledSyncDataclassesForAccount:(id)a3;
- (id)disabledBackupDomains:(BOOL)a3;
- (id)disabledSyncDataclasses:(id *)a3;
- (void)_enableKeychainSync:(id)a3 completion:(id)a4;
- (void)_saveEnabledSyncDataclasses:(id)a3;
- (void)enableDisabledSyncCategories:(id)a3 completion:(id)a4;
@end

@implementation MBPrebuddyDisabledCategoriesManager

- (void)enableDisabledSyncCategories:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ACAccountStore defaultStore];
  v9 = [v8 aa_primaryAppleAccount];
  if (v9)
  {
    v10 = [(MBPrebuddyDisabledCategoriesManager *)self _disabledSyncDataclassesForAccount:v9];
    v11 = v10;
    if (v10)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [v9 setEnabled:1 forDataclass:*(*(&v28 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v13);
      }

      v27 = 0;
      v16 = [v8 dataclassActionsForAccountSave:v9 error:&v27];
      v17 = v27;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10014736C;
      v25[3] = &unk_1003BD7C0;
      v26 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
      v18 = v26;
      [v16 enumerateKeysAndObjectsUsingBlock:v25];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100147400;
      v20[3] = &unk_1003BFB40;
      v24 = v7;
      v21 = v11;
      v22 = self;
      v23 = v6;
      [v8 saveAccount:v9 withDataclassActions:v18 completion:v20];
    }

    else
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100147354;
      v32[3] = &unk_1003BCB38;
      v33 = v7;
      dispatch_async(v6, v32);
      v16 = v33;
    }
  }

  else
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "enableDisabledSyncCategories: couldn't get primary Apple Account", buf, 2u);
      _MBLog();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001472D8;
    block[3] = &unk_1003BCB38;
    v35 = v7;
    dispatch_async(v6, block);
    v11 = v35;
  }
}

- (void)_saveEnabledSyncDataclasses:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving enabled sync data classes: %@", buf, 0xCu);
    _MBLog();
  }

  v5 = objc_alloc_init(MBManager);
  v6 = [v3 allObjects];
  [v5 saveSyncSettingsEnabledForMegaBackup:v6];
}

- (void)_enableKeychainSync:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling Keychain Sync.", buf, 2u);
    _MBLog();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001478F0;
  v10[3] = &unk_1003BFB90;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [CDPKeychainSync setUserVisibleKeychainSyncEnabled:1 withCompletion:v10];
}

- (id)disabledBackupDomains:(BOOL)a3
{
  v5 = +[ACAccountStore defaultStore];
  v6 = [v5 aa_primaryAppleAccount];

  LOBYTE(v5) = [v6 isEnabledForDataclass:ACAccountDataclassCloudPhotos];
  v7 = objc_alloc_init(MBManager);
  v8 = [v7 disabledDomainInfos];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100147D78;
  v12[3] = &unk_1003BFBB8;
  v13 = v5;
  v14 = a3;
  v12[4] = self;
  v9 = [NSPredicate predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

- (BOOL)_isSupportedBackupDomain:(id)a3
{
  v3 = [a3 domainName];
  v4 = [&off_1003E22B8 containsObject:v3];

  return v4 ^ 1;
}

- (id)disabledSyncDataclasses:(id *)a3
{
  v5 = +[ACAccountStore defaultStore];
  v6 = [v5 aa_primaryAppleAccount];
  if (v6)
  {
    v7 = [(MBPrebuddyDisabledCategoriesManager *)self _disabledSyncDataclassesForAccount:v6];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enableDisabledSyncCategories: couldn't get primary Apple Account", v10, 2u);
      _MBLog();
    }

    if (a3)
    {
      [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:1 userInfo:0];
      *a3 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_disabledSyncDataclassesForAccount:(id)a3
{
  v4 = a3;
  v17[0] = ACAccountDataclassBookmarks;
  v17[1] = ACAccountDataclassNews;
  v17[2] = ACAccountDataclassStocks;
  v17[3] = ACAccountDataclassHome;
  v17[4] = ACAccountDataclassHealth;
  v17[5] = ACAccountDataclassSiri;
  v17[6] = ACAccountDataclassShoebox;
  v17[7] = ACAccountDataclassKeychainSync;
  v17[8] = ACAccountDataclassMoments;
  v5 = [NSArray arrayWithObjects:v17 count:9];
  v6 = [NSSet setWithArray:v5];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001481B4;
  v14 = &unk_1003BFBE0;
  v15 = self;
  v16 = v4;
  v7 = v4;
  v8 = [NSPredicate predicateWithBlock:&v11];
  v9 = [v6 filteredSetUsingPredicate:{v8, v11, v12, v13, v14, v15}];

  return v9;
}

- (BOOL)_isSupportedDataclassForDevice:(id)a3
{
  v3 = a3;
  v6 = 1;
  if (MGGetBoolAnswer())
  {
    v8[0] = ACAccountDataclassHealth;
    v8[1] = ACAccountDataclassShoebox;
    v4 = [NSArray arrayWithObjects:v8 count:2];
    v5 = [v4 containsObject:v3];

    if (v5)
    {
      v6 = 0;
    }
  }

  return v6;
}

@end