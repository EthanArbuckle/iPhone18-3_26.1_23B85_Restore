@interface MBFollowUpManager
+ (id)connection;
+ (id)sharedManager;
- (BOOL)_foundPendingFollowUpItemWithIdentifiers:(id)a3;
- (BOOL)_shouldInformUserWithPersona:(id)a3 identifiers:(id)a4 withInterval:(double)a5;
- (BOOL)clearAllPendingFollowUps;
- (BOOL)clearPendingFollowUpsNotBelongingToAccounts:(id)a3 excluding:(id)a4;
- (BOOL)clearPendingFollowUpsWithAccount:(id)a3 identifiers:(id)a4;
- (BOOL)clearPendingFollowUpsWithAccountIdentifier:(id)a3 identifiers:(id)a4;
- (FLFollowUpController)followUpController;
- (FLFollowUpController)legacyController;
- (MBFollowUpManager)init;
- (OS_dispatch_queue)backgroundRestoreProgressQueue;
- (double)_recurringBackupWarningPeriodForAccount:(id)a3;
- (id)_restoreFinishedFollowUpItemForAccount:(id)a3;
- (id)postFollowUpForBackgroundRestoreProgress:(id)a3 account:(id)a4;
- (id)postFollowUpForDrySpellForAccount:(id)a3 duration:(double)a4 firstBackup:(BOOL)a5;
- (id)postFollowUpForRestoreFailedForAccount:(id)a3 failedDomainDisplayNames:(id)a4;
- (id)postFollowUpForRestoreFinishedForAccount:(id)a3 skipiCloudQuotaOffer:(BOOL)a4;
- (id)postFollowUpForRestoreTimeoutForAccount:(id)a3;
- (void)_finishXPCWithError:(id)a3;
- (void)_postFollowUpItem:(id)a3;
- (void)_refreshBackgroundRestoreFollowUps;
- (void)_updateDidInformUserWithPersona:(id)a3 identifier:(id)a4 oldIdentifier:(id)a5;
@end

@implementation MBFollowUpManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045580;
  block[3] = &unk_1003BBFE8;
  block[4] = a1;
  if (qword_1004215C0 != -1)
  {
    dispatch_once(&qword_1004215C0, block);
  }

  v2 = qword_1004215C8;

  return v2;
}

- (MBFollowUpManager)init
{
  v12.receiver = self;
  v12.super_class = MBFollowUpManager;
  v2 = [(MBFollowUpManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_opt_class() connection];
    if (!v4)
    {
      __assert_rtn("[MBFollowUpManager init]", "MBFollowUpManager.m", 61, "connection != nil");
    }

    v5 = v4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000456EC;
    v10[3] = &unk_1003BC010;
    v6 = v3;
    v11 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
    proxy = v6->_proxy;
    v6->_proxy = v7;

    if (!v6->_proxy)
    {
      __assert_rtn("[MBFollowUpManager init]", "MBFollowUpManager.m", 66, "_proxy != nil");
    }
  }

  return v3;
}

- (FLFollowUpController)followUpController
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_followUpController)
  {
    v3 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.backupd"];
    followUpController = self->_followUpController;
    self->_followUpController = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_followUpController;

  return v5;
}

- (FLFollowUpController)legacyController
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_legacyController)
  {
    v3 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.MobileBackup"];
    legacyController = self->_legacyController;
    self->_legacyController = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_legacyController;

  return v5;
}

- (OS_dispatch_queue)backgroundRestoreProgressQueue
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_backgroundRestoreProgressQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MBFollowUpManager.backgroundRestoreProgressQueue", v3);
    backgroundRestoreProgressQueue = self->_backgroundRestoreProgressQueue;
    self->_backgroundRestoreProgressQueue = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->_backgroundRestoreProgressQueue;

  return v6;
}

- (double)_recurringBackupWarningPeriodForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 persona];
  v5 = [v4 copyPreferencesValueForKey:@"RecurringBackupWarningPeriod" class:objc_opt_class()];

  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = @"RecurringBackupWarningPeriod";
      v19 = 2048;
      v20 = *&v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Period: %@ -> %f (prefs)", buf, 0x16u);
      _MBLog();
    }
  }

  else
  {
    v9 = +[MBRemoteConfiguration sharedInstance];
    v8 = [v9 valueForKey:@"RecurringBackupWarningPeriod" account:v3];

    if (v8)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        [v8 doubleValue];
        *buf = 138412546;
        v18 = @"RecurringBackupWarningPeriod";
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Period: %@ -> %f (remote)", buf, 0x16u);
        [v8 doubleValue];
        _MBLog();
      }

      [v8 doubleValue];
      v7 = v12;
    }

    else
    {
      v13 = MBIsInternalInstall();
      v14 = MBGetDefaultLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if (v15)
        {
          *buf = 138412546;
          v18 = @"RecurringBackupWarningPeriod";
          v19 = 2048;
          v20 = 0x410FA40000000000;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Period: %@ -> %f (internal)", buf, 0x16u);
          _MBLog();
        }

        v8 = 0;
        v7 = 259200.0;
      }

      else
      {
        if (v15)
        {
          *buf = 138412546;
          v18 = @"RecurringBackupWarningPeriod";
          v19 = 2048;
          v20 = 0x4122750000000000;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Period: %@ -> %f (external)", buf, 0x16u);
          _MBLog();
        }

        v8 = 0;
        v7 = 604800.0;
      }
    }
  }

  return v7;
}

- (BOOL)_foundPendingFollowUpItemWithIdentifiers:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBFollowUpManager _foundPendingFollowUpItemWithIdentifiers:]", "MBFollowUpManager.m", 105, "identifiers");
  }

  v5 = v4;
  v6 = [(MBFollowUpManager *)self followUpController];
  v43 = 0;
  v7 = [v6 pendingFollowUpItems:&v43];
  v8 = v43;

  if (v7)
  {
    v34 = v8;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v14 uniqueIdentifier];
          v16 = [v5 containsObject:v15];

          if (v16)
          {
            v27 = MBGetDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [v14 uniqueIdentifier];
              *buf = 138543362;
              v47 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "There's already a pending follow-up item for %{public}@ - skipping", buf, 0xCu);

              v32 = [v14 uniqueIdentifier];
              _MBLog();
            }

            v26 = 1;
            v8 = v34;
            goto LABEL_30;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = [(MBFollowUpManager *)self legacyController];
    v18 = [v17 pendingFollowUpItems:0];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v18;
    v19 = [v9 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      while (2)
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = *(*(&v35 + 1) + 8 * j);
          v24 = [v23 uniqueIdentifier];
          v25 = [v5 containsObject:v24];

          if (v25)
          {
            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [v23 uniqueIdentifier];
              *buf = 138543362;
              v47 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "There's a legacy pending follow-up item for %{public}@ - skipping", buf, 0xCu);

              v33 = [v23 uniqueIdentifier];
              _MBLog();
            }

            v26 = 1;
            goto LABEL_29;
          }
        }

        v20 = [v9 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0;
LABEL_29:
    v8 = v34;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch all pending follow-up items: %@", buf, 0xCu);
      _MBLog();
    }

    v26 = 0;
  }

LABEL_30:

  return v26;
}

- (void)_postFollowUpItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBFollowUpManager _postFollowUpItem:]", "MBFollowUpManager.m", 131, "item");
  }

  v5 = v4;
  v6 = [(MBFollowUpManager *)self followUpController];
  if (!v6)
  {
    __assert_rtn("[MBFollowUpManager _postFollowUpItem:]", "MBFollowUpManager.m", 133, "followUpController");
  }

  v7 = v6;
  v8 = [v5 uniqueIdentifier];
  v9 = [v8 hasPrefix:@"RestoreInProgress"];
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Posting follow-up item %{public}@", buf, 0xCu);
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Posting follow-up item %{public}@", buf, 0xCu);
  }

  _MBLog();
LABEL_9:

  v16 = 0;
  v12 = [v7 postFollowUpItem:v5 error:&v16];
  v13 = v16;
  v14 = MBGetDefaultLog();
  v15 = v14;
  if (v12)
  {
    if (v9)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Posted follow-up item %{public}@", buf, 0xCu);
LABEL_17:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Posted follow-up item %{public}@", buf, 0xCu);
      goto LABEL_17;
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to post follow-up item %{public}@: %@", buf, 0x16u);
    goto LABEL_17;
  }
}

- (id)postFollowUpForRestoreTimeoutForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 accountIdentifier];
  v6 = [@"DrySpellFollowUpItem" stringByAppendingFormat:@".%@", v5];

  v50[0] = @"DrySpellFollowUpItem";
  v50[1] = v6;
  v7 = [NSArray arrayWithObjects:v50 count:2];
  v8 = +[ACAccountStore defaultStore];
  v9 = [v4 accountIdentifier];
  v10 = [v8 accountWithIdentifier:v9];

  if (v10)
  {
    if ([(MBFollowUpManager *)self _foundPendingFollowUpItemWithIdentifiers:v7])
    {
      v11 = 0;
      goto LABEL_16;
    }

    v13 = [v4 persona];
    [(MBFollowUpManager *)self _recurringBackupWarningPeriodForAccount:v4];
    v14 = [(MBFollowUpManager *)self _shouldInformUserWithPersona:v13 identifiers:v7 withInterval:?];

    if (v14)
    {
      v15 = [v4 persona];
      [(MBFollowUpManager *)self _updateDidInformUserWithPersona:v15 identifier:v6 oldIdentifier:@"DrySpellFollowUpItem"];

      v16 = MBLocalizedStringFromTable();
      v17 = MBLocalizedStringFromTable();
      v18 = objc_alloc_init(NSMutableArray);
      v38 = v16;
      v19 = [FLFollowUpAction actionWithLabel:v16 url:0];
      v46 = @"ActionType";
      v20 = [NSNumber numberWithInt:1];
      v47 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v19 setUserInfo:v21];

      v40 = v19;
      [v18 addObject:v19];
      v41 = v17;
      v22 = [FLFollowUpAction actionWithLabel:v17 url:0];
      v44 = @"ActionType";
      v23 = [NSNumber numberWithInt:4];
      v45 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [v22 setUserInfo:v24];

      v39 = v22;
      [v18 addObject:v22];
      v25 = objc_alloc_init(FLFollowUpNotification);
      v26 = MBLocalizedStringFromTable();
      [v25 setTitle:v26];

      v27 = [v10 username];
      v28 = MBLocalizedStringWithFormat();
      [v25 setInformativeText:{v28, v27}];

      [v25 setUnlockActionLabel:@"Please unlock the phone"];
      v29 = objc_alloc_init(FLFollowUpItem);
      [v29 setUniqueIdentifier:v6];
      v30 = MBLocalizedStringFromTable();
      [v29 setTitle:v30];

      v31 = [v10 username];
      v32 = MBLocalizedStringWithFormat();
      [v29 setInformativeText:{v32, v31}];

      [v29 setExtensionIdentifier:@"com.apple.MobileBackup.framework.FollowUpUIExtension"];
      [v29 setActions:v18];
      [v29 setNotification:v25];
      v42 = @"FollowUpType";
      v33 = [NSNumber numberWithInt:1];
      v43 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [v29 setUserInfo:v34];

      [v29 setGroupIdentifier:FLGroupIdentifierAccount];
      v35 = [v10 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
      if ([v4 isPrimaryAccount])
      {
        v36 = [v4 accountIdentifier];
        [v29 setAccountIdentifier:v36];
      }

      else
      {
        [v29 setAccountIdentifier:v35];
      }

      [v29 setTypeIdentifier:@"DrySpellFollowUpItem"];
      [(MBFollowUpManager *)self _postFollowUpItem:v29];
      v11 = [v29 uniqueIdentifier];

      v12 = v38;
      goto LABEL_15;
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Suppressing alert for %{public}@ (restore)", buf, 0xCu);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Nil ACAccount. Not posting a followup for %@", buf, 0xCu);
LABEL_11:
      _MBLog();
    }
  }

  v11 = 0;
LABEL_15:

LABEL_16:

  return v11;
}

- (id)postFollowUpForRestoreFailedForAccount:(id)a3 failedDomainDisplayNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountIdentifier];
  v9 = [@"RestoreFailureFollowUpItem" stringByAppendingFormat:@".%@", v8];

  v58[0] = @"RestoreFailureFollowUpItem";
  v58[1] = v9;
  v10 = [NSArray arrayWithObjects:v58 count:2];
  if (v7 && [v7 count])
  {
    v43 = v10;
    v45 = v9;
    v41 = v6;
    v11 = MBLocalizedStringFromTable();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v47 = v7;
    obj = v7;
    v12 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v52;
      do
      {
        v15 = 0;
        v16 = v11;
        do
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v51 + 1) + 8 * v15);
          v18 = objc_autoreleasePoolPush();
          v19 = [NSString alloc];
          v20 = MBLocalizedStringFromTable();
          v21 = [v19 initWithFormat:@"\t%@%@", v20, v17];

          v11 = [[NSString alloc] initWithFormat:@"%@\n%@", v16, v21];
          objc_autoreleasePoolPop(v18);
          v15 = v15 + 1;
          v16 = v11;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v13);
    }

    v6 = v41;
    v9 = v45;
    v7 = v47;
    v10 = v43;
  }

  else
  {
    v11 = MBLocalizedStringFromTable();
  }

  if ([(MBFollowUpManager *)self _foundPendingFollowUpItemWithIdentifiers:v10])
  {
    v22 = 0;
  }

  else
  {
    v23 = [v6 persona];
    [(MBFollowUpManager *)self _recurringBackupWarningPeriodForAccount:v6];
    v24 = [(MBFollowUpManager *)self _shouldInformUserWithPersona:v23 identifiers:v10 withInterval:?];

    if (v24)
    {
      v44 = v10;
      v48 = v7;
      v25 = [v6 persona];
      v42 = self;
      [(MBFollowUpManager *)self _updateDidInformUserWithPersona:v25 identifier:v9 oldIdentifier:@"RestoreFailureFollowUpItem"];

      v26 = MBLocalizedStringFromTable();
      v27 = objc_alloc_init(NSMutableArray);
      v28 = [FLFollowUpAction actionWithLabel:v26 url:0];
      [v28 setUserInfo:&off_1003E1D70];
      obja = v28;
      [v27 addObject:v28];
      v29 = objc_alloc_init(FLFollowUpNotification);
      v30 = MBLocalizedStringFromTable();
      [v29 setTitle:v30];

      v31 = MBLocalizedStringFromTable();
      [v29 setInformativeText:v31];

      [v29 setUnlockActionLabel:@"Please unlock the phone"];
      v32 = objc_alloc_init(FLFollowUpItem);
      v46 = v9;
      [v32 setUniqueIdentifier:v9];
      [v32 setGroupIdentifier:FLGroupIdentifierAccount];
      v33 = MBLocalizedStringFromTable();
      [v32 setTitle:v33];

      [v32 setInformativeText:v11];
      [v32 setExtensionIdentifier:@"com.apple.MobileBackup.framework.FollowUpUIExtension"];
      v34 = v27;
      [v32 setActions:v27];
      [v32 setNotification:v29];
      [v32 setUserInfo:&off_1003E1D98];
      v35 = +[ACAccountStore defaultStore];
      v36 = [v6 accountIdentifier];
      v37 = [v35 accountWithIdentifier:v36];
      v38 = [v37 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];

      if ([v6 isPrimaryAccount])
      {
        v39 = [v6 accountIdentifier];
        [v32 setAccountIdentifier:v39];
      }

      else
      {
        [v32 setAccountIdentifier:v38];
      }

      [v32 setTypeIdentifier:@"RestoreFailureFollowUpItem"];
      [(MBFollowUpManager *)v42 _postFollowUpItem:v32];
      v22 = [v32 uniqueIdentifier];

      v9 = v46;
      v7 = v48;
      v10 = v44;
    }

    else
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = v9;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Suppressing alert for %{public}@", buf, 0xCu);
        _MBLog();
      }

      v22 = 0;
    }
  }

  return v22;
}

- (id)postFollowUpForDrySpellForAccount:(id)a3 duration:(double)a4 firstBackup:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 accountIdentifier];
  v10 = [@"DrySpellFollowUpItem" stringByAppendingFormat:@".%@", v9];

  v75[0] = @"DrySpellFollowUpItem";
  v75[1] = v10;
  v11 = [NSArray arrayWithObjects:v75 count:2];
  v12 = +[ACAccountStore defaultStore];
  v13 = [v8 accountIdentifier];
  v14 = [v12 accountWithIdentifier:v13];

  if (v14)
  {
    if ([(MBFollowUpManager *)self _foundPendingFollowUpItemWithIdentifiers:v11])
    {
      v15 = 0;
      goto LABEL_31;
    }

    v17 = [v8 persona];
    [(MBFollowUpManager *)self _recurringBackupWarningPeriodForAccount:v8];
    v18 = [(MBFollowUpManager *)self _shouldInformUserWithPersona:v17 identifiers:v11 withInterval:?];

    if (v18)
    {
      v60 = v11;
      v19 = [v8 persona];
      v55 = self;
      [(MBFollowUpManager *)self _updateDidInformUserWithPersona:v19 identifier:v10 oldIdentifier:@"DrySpellFollowUpItem"];

      v16 = objc_alloc_init(NSDateComponentsFormatter);
      [v16 setUnitsStyle:3];
      [v16 setMaximumUnitCount:1];
      [v16 setFormattingContext:5];
      v20 = +[NSCalendar currentCalendar];
      v21 = MBLocale();
      [v20 setLocale:v21];

      v59 = v20;
      [v16 setCalendar:v20];
      v22 = objc_alloc_init(NSDateComponents);
      v65 = (a4 / 604800.0);
      [v22 setWeekOfMonth:v65];
      [v16 setAllowedUnits:4096];
      v58 = v22;
      v62 = [v16 stringFromDateComponents:v22];
      v23 = objc_alloc_init(NSDateComponents);
      [v23 setDay:(a4 / 86400.0)];
      [v16 setAllowedUnits:16];
      v57 = v23;
      v61 = [v16 stringFromDateComponents:v23];
      v24 = objc_opt_new();
      v25 = +[ACAccountStore defaultStore];
      v26 = [v8 accountIdentifier];
      v27 = [v25 accountWithIdentifier:v26];
      v56 = v24;
      v28 = [v24 isBackupOnCellularAllowedWithAccount:v27 error:0];

      if (v28)
      {
        if (!v5)
        {
          v29 = [v14 username];
          if (v65 < 2)
          {
            v30 = v61;
          }

          else
          {
            v30 = v62;
          }

          v52 = v30;
          goto LABEL_24;
        }
      }

      else if (!v5)
      {
        v29 = [v14 username];
        if (v65 < 2)
        {
          v31 = v61;
        }

        else
        {
          v31 = v62;
        }

        v52 = v31;
        goto LABEL_24;
      }

      v29 = [v14 username];
      v52 = v29;
LABEL_24:
      v66 = MBLocalizedStringWithGreenTeaSuffix();

      v32 = MBLocalizedStringFromTable();
      v64 = MBLocalizedStringFromTable();
      v33 = objc_alloc_init(NSMutableArray);
      v34 = [v8 persona];
      v35 = [v34 isPersonalPersona];

      v63 = v33;
      if (v35)
      {
        v36 = [FLFollowUpAction actionWithLabel:v32 url:0];
        v71 = @"ActionType";
        v37 = [NSNumber numberWithInt:1];
        v72 = v37;
        v38 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        [v36 setUserInfo:v38];

        v33 = v63;
        [v63 addObject:v36];
      }

      v54 = v32;
      v39 = [FLFollowUpAction actionWithLabel:v64 url:0];
      v69 = @"ActionType";
      v40 = [NSNumber numberWithInt:4];
      v70 = v40;
      v41 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      [v39 setUserInfo:v41];

      v53 = v39;
      [v33 addObject:v39];
      v42 = v33;
      v43 = objc_alloc_init(FLFollowUpNotification);
      v44 = MBLocalizedStringFromTable();
      [v43 setTitle:v44];

      [v43 setInformativeText:v66];
      [v43 setUnlockActionLabel:@"Please unlock the phone"];
      v45 = objc_alloc_init(FLFollowUpItem);
      [v45 setUniqueIdentifier:v10];
      v46 = MBLocalizedStringFromTable();
      [v45 setTitle:v46];

      [v45 setInformativeText:v66];
      [v45 setExtensionIdentifier:@"com.apple.MobileBackup.framework.FollowUpUIExtension"];
      [v45 setActions:v42];
      [v45 setNotification:v43];
      v67 = @"FollowUpType";
      v47 = [NSNumber numberWithInt:1];
      v68 = v47;
      v48 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      [v45 setUserInfo:v48];

      [v45 setGroupIdentifier:FLGroupIdentifierAccount];
      v49 = [v14 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
      if ([v8 isPrimaryAccount])
      {
        v50 = [v8 accountIdentifier];
        [v45 setAccountIdentifier:v50];
      }

      else
      {
        [v45 setAccountIdentifier:v49];
      }

      [v45 setTypeIdentifier:@"DrySpellFollowUpItem"];
      [(MBFollowUpManager *)v55 _postFollowUpItem:v45];
      v15 = [v45 uniqueIdentifier];

      v11 = v60;
      goto LABEL_30;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v74 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Suppressing alert for %{public}@", buf, 0xCu);
      goto LABEL_12;
    }
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v74 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Nil ACAccount. Not posting a followup for %@", buf, 0xCu);
LABEL_12:
      _MBLog();
    }
  }

  v15 = 0;
LABEL_30:

LABEL_31:

  return v15;
}

- (id)postFollowUpForBackgroundRestoreProgress:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    __assert_rtn("[MBFollowUpManager postFollowUpForBackgroundRestoreProgress:account:]", "MBFollowUpManager.m", 372, "account");
  }

  v8 = v7;
  v9 = sub_100047CDC(@"RestoreInProgress", v7);
  v44[0] = @"FollowUpType";
  v44[1] = @"AccountType";
  v45[0] = &off_1003E0C90;
  v10 = [v8 persona];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 accountType]);
  v45[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  [v9 setUserInfo:v12];

  v13 = [v6 isThermallyThrottled];
  v14 = [v6 hasCellularPolicy];
  v15 = [v6 isOnWiFi];
  v16 = [v6 isOnInexpensiveCellular];
  v17 = [v6 estimatedSize];
  v32 = MBLocalizedStringFromTable();
  [v9 setTitle:v32];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100047E3C;
  v40 = sub_100047E4C;
  v41 = &stru_1003C3430;
  proxy = self->_proxy;
  if (!proxy)
  {
    __assert_rtn("[MBFollowUpManager postFollowUpForBackgroundRestoreProgress:account:]", "MBFollowUpManager.m", 396, "_proxy != nil");
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100047E54;
  v35[3] = &unk_1003BC038;
  v35[4] = &v36;
  [(MBHelperServiceProtocol *)proxy localizedStringFromByteCount:v17 countStyle:0 reply:v35];
  if (v17)
  {
    v31 = v37[5];
    if ((v13 | v15 | v14 & v16))
    {
      MBLocalizedStringWithSubstitutions();
    }

    else
    {
      MBLocalizedStringWithGreenTeaSuffixAndSubstitutions();
    }
    v19 = ;
  }

  else
  {
    v19 = MBLocalizedStringFromTable();
  }

  v20 = v19;
  [v9 setInformativeText:{v19, v31}];
  if ((v16 & ~(v14 | v15 | v13) & 1) != 0 && v17)
  {
    v21 = MBLocalizedStringFromTable();
    v22 = [FLFollowUpAction actionWithLabel:v21 url:0];

    [v22 setUserInfo:&off_1003E1DC0];
    v43 = v22;
    v23 = [NSArray arrayWithObjects:&v43 count:1];
    [v9 setActions:v23];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_15;
    }

    v24 = MBLocalizedStringFromTable();
    v22 = [FLFollowUpAction actionWithLabel:v24 url:0];

    [v22 setUserInfo:&off_1003E1DE8];
    v42 = v22;
    v23 = [NSArray arrayWithObjects:&v42 count:1];
    [v9 setActions:v23];
  }

LABEL_15:
  v25 = [v8 isPrimaryAccount];
  v26 = &FLGroupIdentifierNoGroup;
  if (!v25)
  {
    v26 = &FLGroupIdentifierAccount;
  }

  [v9 setGroupIdentifier:*v26];
  [v9 setDisplayStyle:16];
  v27 = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047F48;
  block[3] = &unk_1003BC060;
  block[4] = self;
  v28 = v9;
  v34 = v28;
  dispatch_sync(v27, block);

  v29 = [v28 uniqueIdentifier];

  _Block_object_dispose(&v36, 8);

  return v29;
}

- (id)postFollowUpForRestoreFinishedForAccount:(id)a3 skipiCloudQuotaOffer:(BOOL)a4
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("[MBFollowUpManager postFollowUpForRestoreFinishedForAccount:skipiCloudQuotaOffer:]", "MBFollowUpManager.m", 446, "account");
  }

  v6 = v5;
  if ([v5 isPrimaryAccount])
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_100047E3C;
    v18 = sub_100047E4C;
    v19 = 0;
    v7 = [(MBFollowUpManager *)self _restoreFinishedFollowUpItemForAccount:v6];
    v8 = *(v15 + 5);
    *(v15 + 5) = v7;

    if (*(v15 + 5))
    {
      v9 = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10004817C;
      v13[3] = &unk_1003BC088;
      v13[4] = self;
      v13[5] = buf;
      dispatch_sync(v9, v13);

      v10 = [*(v15 + 5) uniqueIdentifier];
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Not posting restore finished follow up for secondary account", buf, 2u);
      _MBLog();
    }

    v10 = 0;
  }

  return v10;
}

- (id)_restoreFinishedFollowUpItemForAccount:(id)a3
{
  v3 = a3;
  v4 = sub_100047CDC(@"RestoreFinished", v3);
  v20[0] = @"FollowUpType";
  v20[1] = FLFollowUpNotifyingAppIdKey;
  v21[0] = &off_1003E0CA8;
  v21[1] = FLFollowUpiCloudBundleIdentifier;
  v20[2] = @"AccountType";
  v5 = [v3 persona];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 accountType]);
  v21[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v4 setUserInfo:v7];

  [v4 setGroupIdentifier:FLGroupIdentifierNoGroup];
  [v4 setDisplayStyle:16];
  v8 = MBLocalizedStringFromTable();
  [v4 setTitle:v8];

  v9 = MBLocalizedString();
  [v4 setInformativeText:v9];

  v10 = MBLocalizedString();
  v11 = [FLFollowUpAction actionWithLabel:v10 url:0];

  [v11 setUserInfo:&off_1003E1E10];
  v12 = MBLocalizedString();
  v13 = [FLFollowUpAction actionWithLabel:v12 url:0];

  [v13 setUserInfo:&off_1003E1E38];
  v19[0] = v11;
  v19[1] = v13;
  v14 = [NSArray arrayWithObjects:v19 count:2];
  [v4 setActions:v14];

  v15 = objc_alloc_init(FLFollowUpNotification);
  v16 = MBLocalizedStringFromTable();
  [v15 setTitle:v16];

  v17 = MBLocalizedStringFromTable();
  [v15 setInformativeText:v17];

  [v15 setUnlockActionLabel:@"Please unlock the phone"];
  [v4 setNotification:v15];

  return v4;
}

- (void)_refreshBackgroundRestoreFollowUps
{
  v2 = self;
  v3 = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MBFollowUpManager *)v2 followUpController];
  v42 = 0;
  v5 = [v4 pendingFollowUpItems:&v42];
  v6 = v42;

  if (!v5)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to refresh pending follow ups:%@", buf, 0xCu);
      v30 = v6;
      _MBLog();
    }
  }

  v32 = v6;
  v33 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v9)
  {

    goto LABEL_22;
  }

  v10 = v9;
  v31 = v2;
  v11 = 0;
  v12 = *v39;
  do
  {
    v13 = v8;
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(v13);
      }

      v15 = *(*(&v38 + 1) + 8 * i);
      v16 = [v15 uniqueIdentifier];
      if ([v16 hasPrefix:@"RestoreInProgress"])
      {
      }

      else
      {
        v17 = [v15 uniqueIdentifier];
        v18 = [v17 hasPrefix:@"RestoreFinished"];

        if (!v18)
        {
          continue;
        }
      }

      v19 = [v15 userInfo];
      v20 = [v19 objectForKeyedSubscript:@"AccountType"];
      v21 = [v20 integerValue];

      if (v21 == 2)
      {
        [v33 addObject:v15];
      }

      ++v11;
    }

    v8 = v13;
    v10 = [v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v10);

  v2 = v31;
  if (v11 == 1 && [v33 count])
  {
    v22 = [v33 objectAtIndexedSubscript:0];
    [v22 setGroupIdentifier:FLGroupIdentifierNoGroup];
    [v22 setDisplayStyle:16];
    [(MBFollowUpManager *)v31 _postFollowUpItem:v22];
    goto LABEL_30;
  }

LABEL_22:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v33;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = v8;
    v26 = *v35;
    v27 = FLGroupIdentifierAccount;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v34 + 1) + 8 * j);
        [v29 setGroupIdentifier:{v27, v30}];
        [v29 setDisplayStyle:16];
        [(MBFollowUpManager *)v2 _postFollowUpItem:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v24);
    v8 = v25;
  }

LABEL_30:
}

- (BOOL)clearAllPendingFollowUps
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing all pending follow-ups", buf, 2u);
    _MBLog();
  }

  v4 = [(MBFollowUpManager *)self followUpController];
  v9 = 0;
  v5 = [v4 clearPendingFollowUpItems:&v9];
  v6 = v9;

  if (v5)
  {
    v7 = [(MBFollowUpManager *)self legacyController];
    [v7 clearPendingFollowUpItems:0];
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to clear all pending follow-ups: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  return v5;
}

- (BOOL)clearPendingFollowUpsWithAccountIdentifier:(id)a3 identifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", 2 * [v7 count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        [v8 addObject:v14];
        v15 = [v14 stringByAppendingFormat:@".%@", v6];
        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Clearing pending follow-ups: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v17 = [(MBFollowUpManager *)self followUpController];
  v25 = 0;
  v18 = [v17 clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:&v25];
  v19 = v25;

  if (v18)
  {
    v20 = [(MBFollowUpManager *)self legacyController];
    [v20 clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:0];

    v21 = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100048CE4;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_async(v21, block);
  }

  else
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to clear pending follow-ups: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  return v18;
}

- (BOOL)clearPendingFollowUpsWithAccount:(id)a3 identifiers:(id)a4
{
  v6 = a4;
  v7 = [a3 accountIdentifier];
  LOBYTE(self) = [(MBFollowUpManager *)self clearPendingFollowUpsWithAccountIdentifier:v7 identifiers:v6];

  return self;
}

- (BOOL)clearPendingFollowUpsNotBelongingToAccounts:(id)a3 excluding:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBFollowUpManager *)self followUpController];
  v47 = 0;
  v9 = [v8 pendingFollowUpItems:&v47];
  v10 = v47;

  if (v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch pending follow-ups: %@", buf, 0xCu);
      _MBLog();
    }

LABEL_31:

    goto LABEL_32;
  }

  if ([v9 count])
  {
    v37 = self;
    v11 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = v6;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v44;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v43 + 1) + 8 * i) accountIdentifier];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v14);
    }

    v35 = v7;
    v18 = [NSSet setWithArray:v7];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v9;
    obj = v9;
    v19 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v39 + 1) + 8 * j);
          v24 = [v23 uniqueIdentifier];
          if ([v18 containsObject:v24])
          {
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v50 = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Not clearing follow up with identifier %@", buf, 0xCu);
              v32 = v24;
              _MBLog();
            }
          }

          else
          {
            v26 = [v23 uniqueIdentifier];
            v27 = [v26 componentsSeparatedByString:@"."];
            if ([v27 count] < 2)
            {
              v25 = 0;
            }

            else
            {
              v25 = [v27 objectAtIndexedSubscript:1];
            }

            if (v25 && ([v11 containsObject:v25]& 1) == 0)
            {
              v28 = MBGetDefaultLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v50 = v23;
                v51 = 2112;
                v52 = v25;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Found follow-up item %@ with account identifier %@ to remove", buf, 0x16u);
                v32 = v23;
                v33 = v25;
                _MBLog();
              }

              v29 = [v23 uniqueIdentifier];
              v48 = v29;
              v30 = [NSArray arrayWithObjects:&v48 count:1];
              [(MBFollowUpManager *)v37 clearPendingFollowUpsWithAccountIdentifier:v25 identifiers:v30];
            }
          }
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v20);
    }

    v7 = v35;
    v6 = v36;
    v10 = 0;
    v9 = v34;
    goto LABEL_31;
  }

LABEL_32:

  return v10 == 0;
}

- (BOOL)_shouldInformUserWithPersona:(id)a3 identifiers:(id)a4 withInterval:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v9 objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * i), v21}];
        if (v15)
        {
          v17 = v15;

          v18 = +[NSDate date];
          [v18 timeIntervalSinceDate:v17];
          v16 = v19 > a5;

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
  v17 = v10;
LABEL_11:

  return v16;
}

- (void)_updateDidInformUserWithPersona:(id)a3 identifier:(id)a4 oldIdentifier:(id)a5
{
  v12 = a3;
  v7 = a5;
  v8 = a4;
  v9 = [v12 copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];
  v10 = [v9 mutableCopy];
  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  if (v7)
  {
    [v10 removeObjectForKey:v7];
  }

  v11 = +[NSDate date];
  [v10 setObject:v11 forKeyedSubscript:v8];

  [v12 setPreferencesValue:v10 forKey:@"UserNotificationEvents"];
}

+ (id)connection
{
  v2 = a1;
  objc_sync_enter(v2);
  if (qword_1004215D0)
  {
    v3 = qword_1004215D0;
  }

  else
  {
    if (qword_1004215E0 != -1)
    {
      dispatch_once(&qword_1004215E0, &stru_1003BC0F0);
    }

    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.MobileBackup.MBHelperService"];
    [v4 setRemoteObjectInterface:qword_1004215D8];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100049614;
    v6[3] = &unk_1003BBFE8;
    v6[4] = v2;
    [v4 setInvalidationHandler:v6];
    objc_storeStrong(&qword_1004215D0, v4);
    [v4 resume];
    v3 = qword_1004215D0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)_finishXPCWithError:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MBPrebuddyFollowUpController finish XPC with error: %{public}@", buf, 0xCu);
    _MBLog();
  }
}

@end