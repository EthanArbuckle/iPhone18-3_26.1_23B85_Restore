@interface MBFollowUpManager
+ (id)connection;
+ (id)sharedManager;
- (BOOL)_foundPendingFollowUpItemWithIdentifiers:(id)identifiers;
- (BOOL)_shouldInformUserWithPersona:(id)persona identifiers:(id)identifiers withInterval:(double)interval;
- (BOOL)clearAllPendingFollowUps;
- (BOOL)clearPendingFollowUpsNotBelongingToAccounts:(id)accounts excluding:(id)excluding;
- (BOOL)clearPendingFollowUpsWithAccount:(id)account identifiers:(id)identifiers;
- (BOOL)clearPendingFollowUpsWithAccountIdentifier:(id)identifier identifiers:(id)identifiers;
- (FLFollowUpController)followUpController;
- (FLFollowUpController)legacyController;
- (MBFollowUpManager)init;
- (OS_dispatch_queue)backgroundRestoreProgressQueue;
- (double)_recurringBackupWarningPeriodForAccount:(id)account;
- (id)_restoreFinishedFollowUpItemForAccount:(id)account;
- (id)postFollowUpForBackgroundRestoreProgress:(id)progress account:(id)account;
- (id)postFollowUpForDrySpellForAccount:(id)account duration:(double)duration firstBackup:(BOOL)backup;
- (id)postFollowUpForRestoreFailedForAccount:(id)account failedDomainDisplayNames:(id)names;
- (id)postFollowUpForRestoreFinishedForAccount:(id)account skipiCloudQuotaOffer:(BOOL)offer;
- (id)postFollowUpForRestoreTimeoutForAccount:(id)account;
- (void)_finishXPCWithError:(id)error;
- (void)_postFollowUpItem:(id)item;
- (void)_refreshBackgroundRestoreFollowUps;
- (void)_updateDidInformUserWithPersona:(id)persona identifier:(id)identifier oldIdentifier:(id)oldIdentifier;
@end

@implementation MBFollowUpManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045580;
  block[3] = &unk_1003BBFE8;
  block[4] = self;
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
    connection = [objc_opt_class() connection];
    if (!connection)
    {
      __assert_rtn("[MBFollowUpManager init]", "MBFollowUpManager.m", 61, "connection != nil");
    }

    v5 = connection;
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

- (double)_recurringBackupWarningPeriodForAccount:(id)account
{
  accountCopy = account;
  persona = [accountCopy persona];
  v5 = [persona copyPreferencesValueForKey:@"RecurringBackupWarningPeriod" class:objc_opt_class()];

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
    v8 = [v9 valueForKey:@"RecurringBackupWarningPeriod" account:accountCopy];

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

- (BOOL)_foundPendingFollowUpItemWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    __assert_rtn("[MBFollowUpManager _foundPendingFollowUpItemWithIdentifiers:]", "MBFollowUpManager.m", 105, "identifiers");
  }

  v5 = identifiersCopy;
  followUpController = [(MBFollowUpManager *)self followUpController];
  v43 = 0;
  v7 = [followUpController pendingFollowUpItems:&v43];
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
          uniqueIdentifier = [v14 uniqueIdentifier];
          v16 = [v5 containsObject:uniqueIdentifier];

          if (v16)
          {
            v27 = MBGetDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              uniqueIdentifier2 = [v14 uniqueIdentifier];
              *buf = 138543362;
              v47 = uniqueIdentifier2;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "There's already a pending follow-up item for %{public}@ - skipping", buf, 0xCu);

              uniqueIdentifier3 = [v14 uniqueIdentifier];
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

    legacyController = [(MBFollowUpManager *)self legacyController];
    v18 = [legacyController pendingFollowUpItems:0];

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
          uniqueIdentifier4 = [v23 uniqueIdentifier];
          v25 = [v5 containsObject:uniqueIdentifier4];

          if (v25)
          {
            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              uniqueIdentifier5 = [v23 uniqueIdentifier];
              *buf = 138543362;
              v47 = uniqueIdentifier5;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "There's a legacy pending follow-up item for %{public}@ - skipping", buf, 0xCu);

              uniqueIdentifier6 = [v23 uniqueIdentifier];
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

- (void)_postFollowUpItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    __assert_rtn("[MBFollowUpManager _postFollowUpItem:]", "MBFollowUpManager.m", 131, "item");
  }

  v5 = itemCopy;
  followUpController = [(MBFollowUpManager *)self followUpController];
  if (!followUpController)
  {
    __assert_rtn("[MBFollowUpManager _postFollowUpItem:]", "MBFollowUpManager.m", 133, "followUpController");
  }

  v7 = followUpController;
  uniqueIdentifier = [v5 uniqueIdentifier];
  v9 = [uniqueIdentifier hasPrefix:@"RestoreInProgress"];
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    v18 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Posting follow-up item %{public}@", buf, 0xCu);
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    v18 = uniqueIdentifier;
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
        v18 = uniqueIdentifier;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Posted follow-up item %{public}@", buf, 0xCu);
LABEL_17:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = uniqueIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Posted follow-up item %{public}@", buf, 0xCu);
      goto LABEL_17;
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v18 = uniqueIdentifier;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to post follow-up item %{public}@: %@", buf, 0x16u);
    goto LABEL_17;
  }
}

- (id)postFollowUpForRestoreTimeoutForAccount:(id)account
{
  accountCopy = account;
  accountIdentifier = [accountCopy accountIdentifier];
  v6 = [@"DrySpellFollowUpItem" stringByAppendingFormat:@".%@", accountIdentifier];

  v50[0] = @"DrySpellFollowUpItem";
  v50[1] = v6;
  v7 = [NSArray arrayWithObjects:v50 count:2];
  v8 = +[ACAccountStore defaultStore];
  accountIdentifier2 = [accountCopy accountIdentifier];
  v10 = [v8 accountWithIdentifier:accountIdentifier2];

  if (v10)
  {
    if ([(MBFollowUpManager *)self _foundPendingFollowUpItemWithIdentifiers:v7])
    {
      uniqueIdentifier = 0;
      goto LABEL_16;
    }

    persona = [accountCopy persona];
    [(MBFollowUpManager *)self _recurringBackupWarningPeriodForAccount:accountCopy];
    v14 = [(MBFollowUpManager *)self _shouldInformUserWithPersona:persona identifiers:v7 withInterval:?];

    if (v14)
    {
      persona2 = [accountCopy persona];
      [(MBFollowUpManager *)self _updateDidInformUserWithPersona:persona2 identifier:v6 oldIdentifier:@"DrySpellFollowUpItem"];

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

      username = [v10 username];
      v28 = MBLocalizedStringWithFormat();
      [v25 setInformativeText:{v28, username}];

      [v25 setUnlockActionLabel:@"Please unlock the phone"];
      v29 = objc_alloc_init(FLFollowUpItem);
      [v29 setUniqueIdentifier:v6];
      v30 = MBLocalizedStringFromTable();
      [v29 setTitle:v30];

      username2 = [v10 username];
      v32 = MBLocalizedStringWithFormat();
      [v29 setInformativeText:{v32, username2}];

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
      if ([accountCopy isPrimaryAccount])
      {
        accountIdentifier3 = [accountCopy accountIdentifier];
        [v29 setAccountIdentifier:accountIdentifier3];
      }

      else
      {
        [v29 setAccountIdentifier:v35];
      }

      [v29 setTypeIdentifier:@"DrySpellFollowUpItem"];
      [(MBFollowUpManager *)self _postFollowUpItem:v29];
      uniqueIdentifier = [v29 uniqueIdentifier];

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

  uniqueIdentifier = 0;
LABEL_15:

LABEL_16:

  return uniqueIdentifier;
}

- (id)postFollowUpForRestoreFailedForAccount:(id)account failedDomainDisplayNames:(id)names
{
  accountCopy = account;
  namesCopy = names;
  accountIdentifier = [accountCopy accountIdentifier];
  v9 = [@"RestoreFailureFollowUpItem" stringByAppendingFormat:@".%@", accountIdentifier];

  v58[0] = @"RestoreFailureFollowUpItem";
  v58[1] = v9;
  v10 = [NSArray arrayWithObjects:v58 count:2];
  if (namesCopy && [namesCopy count])
  {
    v43 = v10;
    v45 = v9;
    v41 = accountCopy;
    v11 = MBLocalizedStringFromTable();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v47 = namesCopy;
    obj = namesCopy;
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

    accountCopy = v41;
    v9 = v45;
    namesCopy = v47;
    v10 = v43;
  }

  else
  {
    v11 = MBLocalizedStringFromTable();
  }

  if ([(MBFollowUpManager *)self _foundPendingFollowUpItemWithIdentifiers:v10])
  {
    uniqueIdentifier = 0;
  }

  else
  {
    persona = [accountCopy persona];
    [(MBFollowUpManager *)self _recurringBackupWarningPeriodForAccount:accountCopy];
    v24 = [(MBFollowUpManager *)self _shouldInformUserWithPersona:persona identifiers:v10 withInterval:?];

    if (v24)
    {
      v44 = v10;
      v48 = namesCopy;
      persona2 = [accountCopy persona];
      selfCopy = self;
      [(MBFollowUpManager *)self _updateDidInformUserWithPersona:persona2 identifier:v9 oldIdentifier:@"RestoreFailureFollowUpItem"];

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
      accountIdentifier2 = [accountCopy accountIdentifier];
      v37 = [v35 accountWithIdentifier:accountIdentifier2];
      v38 = [v37 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];

      if ([accountCopy isPrimaryAccount])
      {
        accountIdentifier3 = [accountCopy accountIdentifier];
        [v32 setAccountIdentifier:accountIdentifier3];
      }

      else
      {
        [v32 setAccountIdentifier:v38];
      }

      [v32 setTypeIdentifier:@"RestoreFailureFollowUpItem"];
      [(MBFollowUpManager *)selfCopy _postFollowUpItem:v32];
      uniqueIdentifier = [v32 uniqueIdentifier];

      v9 = v46;
      namesCopy = v48;
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

      uniqueIdentifier = 0;
    }
  }

  return uniqueIdentifier;
}

- (id)postFollowUpForDrySpellForAccount:(id)account duration:(double)duration firstBackup:(BOOL)backup
{
  backupCopy = backup;
  accountCopy = account;
  accountIdentifier = [accountCopy accountIdentifier];
  v10 = [@"DrySpellFollowUpItem" stringByAppendingFormat:@".%@", accountIdentifier];

  v75[0] = @"DrySpellFollowUpItem";
  v75[1] = v10;
  v11 = [NSArray arrayWithObjects:v75 count:2];
  v12 = +[ACAccountStore defaultStore];
  accountIdentifier2 = [accountCopy accountIdentifier];
  v14 = [v12 accountWithIdentifier:accountIdentifier2];

  if (v14)
  {
    if ([(MBFollowUpManager *)self _foundPendingFollowUpItemWithIdentifiers:v11])
    {
      uniqueIdentifier = 0;
      goto LABEL_31;
    }

    persona = [accountCopy persona];
    [(MBFollowUpManager *)self _recurringBackupWarningPeriodForAccount:accountCopy];
    v18 = [(MBFollowUpManager *)self _shouldInformUserWithPersona:persona identifiers:v11 withInterval:?];

    if (v18)
    {
      v60 = v11;
      persona2 = [accountCopy persona];
      selfCopy = self;
      [(MBFollowUpManager *)self _updateDidInformUserWithPersona:persona2 identifier:v10 oldIdentifier:@"DrySpellFollowUpItem"];

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
      v65 = (duration / 604800.0);
      [v22 setWeekOfMonth:v65];
      [v16 setAllowedUnits:4096];
      v58 = v22;
      v62 = [v16 stringFromDateComponents:v22];
      v23 = objc_alloc_init(NSDateComponents);
      [v23 setDay:(duration / 86400.0)];
      [v16 setAllowedUnits:16];
      v57 = v23;
      v61 = [v16 stringFromDateComponents:v23];
      v24 = objc_opt_new();
      v25 = +[ACAccountStore defaultStore];
      accountIdentifier3 = [accountCopy accountIdentifier];
      v27 = [v25 accountWithIdentifier:accountIdentifier3];
      v56 = v24;
      v28 = [v24 isBackupOnCellularAllowedWithAccount:v27 error:0];

      if (v28)
      {
        if (!backupCopy)
        {
          username = [v14 username];
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

      else if (!backupCopy)
      {
        username = [v14 username];
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

      username = [v14 username];
      v52 = username;
LABEL_24:
      v66 = MBLocalizedStringWithGreenTeaSuffix();

      v32 = MBLocalizedStringFromTable();
      v64 = MBLocalizedStringFromTable();
      v33 = objc_alloc_init(NSMutableArray);
      persona3 = [accountCopy persona];
      isPersonalPersona = [persona3 isPersonalPersona];

      v63 = v33;
      if (isPersonalPersona)
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
      if ([accountCopy isPrimaryAccount])
      {
        accountIdentifier4 = [accountCopy accountIdentifier];
        [v45 setAccountIdentifier:accountIdentifier4];
      }

      else
      {
        [v45 setAccountIdentifier:v49];
      }

      [v45 setTypeIdentifier:@"DrySpellFollowUpItem"];
      [(MBFollowUpManager *)selfCopy _postFollowUpItem:v45];
      uniqueIdentifier = [v45 uniqueIdentifier];

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

  uniqueIdentifier = 0;
LABEL_30:

LABEL_31:

  return uniqueIdentifier;
}

- (id)postFollowUpForBackgroundRestoreProgress:(id)progress account:(id)account
{
  progressCopy = progress;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBFollowUpManager postFollowUpForBackgroundRestoreProgress:account:]", "MBFollowUpManager.m", 372, "account");
  }

  v8 = accountCopy;
  v9 = sub_100047CDC(@"RestoreInProgress", accountCopy);
  v44[0] = @"FollowUpType";
  v44[1] = @"AccountType";
  v45[0] = &off_1003E0C90;
  persona = [v8 persona];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [persona accountType]);
  v45[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  [v9 setUserInfo:v12];

  isThermallyThrottled = [progressCopy isThermallyThrottled];
  hasCellularPolicy = [progressCopy hasCellularPolicy];
  isOnWiFi = [progressCopy isOnWiFi];
  isOnInexpensiveCellular = [progressCopy isOnInexpensiveCellular];
  estimatedSize = [progressCopy estimatedSize];
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
  [(MBHelperServiceProtocol *)proxy localizedStringFromByteCount:estimatedSize countStyle:0 reply:v35];
  if (estimatedSize)
  {
    v31 = v37[5];
    if ((isThermallyThrottled | isOnWiFi | hasCellularPolicy & isOnInexpensiveCellular))
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
  if ((isOnInexpensiveCellular & ~(hasCellularPolicy | isOnWiFi | isThermallyThrottled) & 1) != 0 && estimatedSize)
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
    if (!isThermallyThrottled)
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
  isPrimaryAccount = [v8 isPrimaryAccount];
  v26 = &FLGroupIdentifierNoGroup;
  if (!isPrimaryAccount)
  {
    v26 = &FLGroupIdentifierAccount;
  }

  [v9 setGroupIdentifier:*v26];
  [v9 setDisplayStyle:16];
  backgroundRestoreProgressQueue = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047F48;
  block[3] = &unk_1003BC060;
  block[4] = self;
  v28 = v9;
  v34 = v28;
  dispatch_sync(backgroundRestoreProgressQueue, block);

  uniqueIdentifier = [v28 uniqueIdentifier];

  _Block_object_dispose(&v36, 8);

  return uniqueIdentifier;
}

- (id)postFollowUpForRestoreFinishedForAccount:(id)account skipiCloudQuotaOffer:(BOOL)offer
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBFollowUpManager postFollowUpForRestoreFinishedForAccount:skipiCloudQuotaOffer:]", "MBFollowUpManager.m", 446, "account");
  }

  v6 = accountCopy;
  if ([accountCopy isPrimaryAccount])
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
      backgroundRestoreProgressQueue = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10004817C;
      v13[3] = &unk_1003BC088;
      v13[4] = self;
      v13[5] = buf;
      dispatch_sync(backgroundRestoreProgressQueue, v13);

      uniqueIdentifier = [*(v15 + 5) uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier = 0;
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

    uniqueIdentifier = 0;
  }

  return uniqueIdentifier;
}

- (id)_restoreFinishedFollowUpItemForAccount:(id)account
{
  accountCopy = account;
  v4 = sub_100047CDC(@"RestoreFinished", accountCopy);
  v20[0] = @"FollowUpType";
  v20[1] = FLFollowUpNotifyingAppIdKey;
  v21[0] = &off_1003E0CA8;
  v21[1] = FLFollowUpiCloudBundleIdentifier;
  v20[2] = @"AccountType";
  persona = [accountCopy persona];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [persona accountType]);
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
  selfCopy = self;
  backgroundRestoreProgressQueue = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
  dispatch_assert_queue_V2(backgroundRestoreProgressQueue);

  followUpController = [(MBFollowUpManager *)selfCopy followUpController];
  v42 = 0;
  v5 = [followUpController pendingFollowUpItems:&v42];
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
  v31 = selfCopy;
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
      uniqueIdentifier = [v15 uniqueIdentifier];
      if ([uniqueIdentifier hasPrefix:@"RestoreInProgress"])
      {
      }

      else
      {
        uniqueIdentifier2 = [v15 uniqueIdentifier];
        v18 = [uniqueIdentifier2 hasPrefix:@"RestoreFinished"];

        if (!v18)
        {
          continue;
        }
      }

      userInfo = [v15 userInfo];
      v20 = [userInfo objectForKeyedSubscript:@"AccountType"];
      integerValue = [v20 integerValue];

      if (integerValue == 2)
      {
        [v33 addObject:v15];
      }

      ++v11;
    }

    v8 = v13;
    v10 = [v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v10);

  selfCopy = v31;
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
        [(MBFollowUpManager *)selfCopy _postFollowUpItem:v29];
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

  followUpController = [(MBFollowUpManager *)self followUpController];
  v9 = 0;
  v5 = [followUpController clearPendingFollowUpItems:&v9];
  v6 = v9;

  if (v5)
  {
    legacyController = [(MBFollowUpManager *)self legacyController];
    [legacyController clearPendingFollowUpItems:0];
  }

  else
  {
    legacyController = MBGetDefaultLog();
    if (os_log_type_enabled(legacyController, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, legacyController, OS_LOG_TYPE_ERROR, "Failed to clear all pending follow-ups: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  return v5;
}

- (BOOL)clearPendingFollowUpsWithAccountIdentifier:(id)identifier identifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", 2 * [identifiersCopy count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = identifiersCopy;
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
        identifierCopy = [v14 stringByAppendingFormat:@".%@", identifierCopy];
        [v8 addObject:identifierCopy];
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

  followUpController = [(MBFollowUpManager *)self followUpController];
  v25 = 0;
  v18 = [followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:&v25];
  v19 = v25;

  if (v18)
  {
    legacyController = [(MBFollowUpManager *)self legacyController];
    [legacyController clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:0];

    backgroundRestoreProgressQueue = [(MBFollowUpManager *)self backgroundRestoreProgressQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100048CE4;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_async(backgroundRestoreProgressQueue, block);
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

- (BOOL)clearPendingFollowUpsWithAccount:(id)account identifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  accountIdentifier = [account accountIdentifier];
  LOBYTE(self) = [(MBFollowUpManager *)self clearPendingFollowUpsWithAccountIdentifier:accountIdentifier identifiers:identifiersCopy];

  return self;
}

- (BOOL)clearPendingFollowUpsNotBelongingToAccounts:(id)accounts excluding:(id)excluding
{
  accountsCopy = accounts;
  excludingCopy = excluding;
  followUpController = [(MBFollowUpManager *)self followUpController];
  v47 = 0;
  v9 = [followUpController pendingFollowUpItems:&v47];
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
    selfCopy = self;
    v11 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = accountsCopy;
    v12 = accountsCopy;
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

          accountIdentifier = [*(*(&v43 + 1) + 8 * i) accountIdentifier];
          [v11 addObject:accountIdentifier];
        }

        v14 = [v12 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v14);
    }

    v35 = excludingCopy;
    v18 = [NSSet setWithArray:excludingCopy];
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
          uniqueIdentifier = [v23 uniqueIdentifier];
          if ([v18 containsObject:uniqueIdentifier])
          {
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v50 = uniqueIdentifier;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Not clearing follow up with identifier %@", buf, 0xCu);
              v32 = uniqueIdentifier;
              _MBLog();
            }
          }

          else
          {
            uniqueIdentifier2 = [v23 uniqueIdentifier];
            v27 = [uniqueIdentifier2 componentsSeparatedByString:@"."];
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

              uniqueIdentifier3 = [v23 uniqueIdentifier];
              v48 = uniqueIdentifier3;
              v30 = [NSArray arrayWithObjects:&v48 count:1];
              [(MBFollowUpManager *)selfCopy clearPendingFollowUpsWithAccountIdentifier:v25 identifiers:v30];
            }
          }
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v20);
    }

    excludingCopy = v35;
    accountsCopy = v36;
    v10 = 0;
    v9 = v34;
    goto LABEL_31;
  }

LABEL_32:

  return v10 == 0;
}

- (BOOL)_shouldInformUserWithPersona:(id)persona identifiers:(id)identifiers withInterval:(double)interval
{
  personaCopy = persona;
  identifiersCopy = identifiers;
  v9 = [personaCopy copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = identifiersCopy;
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
          v16 = v19 > interval;

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

- (void)_updateDidInformUserWithPersona:(id)persona identifier:(id)identifier oldIdentifier:(id)oldIdentifier
{
  personaCopy = persona;
  oldIdentifierCopy = oldIdentifier;
  identifierCopy = identifier;
  v9 = [personaCopy copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];
  v10 = [v9 mutableCopy];
  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  if (oldIdentifierCopy)
  {
    [v10 removeObjectForKey:oldIdentifierCopy];
  }

  v11 = +[NSDate date];
  [v10 setObject:v11 forKeyedSubscript:identifierCopy];

  [personaCopy setPreferencesValue:v10 forKey:@"UserNotificationEvents"];
}

+ (id)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    v6[4] = selfCopy;
    [v4 setInvalidationHandler:v6];
    objc_storeStrong(&qword_1004215D0, v4);
    [v4 resume];
    v3 = qword_1004215D0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_finishXPCWithError:(id)error
{
  errorCopy = error;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v6 = errorCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MBPrebuddyFollowUpController finish XPC with error: %{public}@", buf, 0xCu);
    _MBLog();
  }
}

@end