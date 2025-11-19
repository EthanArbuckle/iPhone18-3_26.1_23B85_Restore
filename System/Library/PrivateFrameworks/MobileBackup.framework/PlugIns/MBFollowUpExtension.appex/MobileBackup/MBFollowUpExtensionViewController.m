@interface MBFollowUpExtensionViewController
- (void)_allowRestoreOverCellularWithAccount:(id)a3;
- (void)_dismissFollowUpItem:(id)a3;
- (void)_openThermalKbase;
- (void)_openiCloudSettingsWithAccount:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation MBFollowUpExtensionViewController

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v10;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v54 = v11;
    v55 = 2114;
    v56 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Follow up extension processing item:%{public}@, action:%{public}@", buf, 0x16u);
    v37 = v11;
    v38 = v9;
    _MBLog();
  }

  v14 = [v11 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"FollowUpType"];

  v16 = [v9 userInfo];
  v17 = [v16 objectForKeyedSubscript:@"ActionType"];

  if (v15)
  {
    v42 = self;
    v45 = v17;
    v18 = +[ACAccountStore defaultStore];
    v43 = [v18 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
    v44 = v18;
    [v18 accountsWithAccountType:?];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v51 = 0u;
    v19 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v47 = *v49;
      v21 = ACAccountPropertyRemoteManagingAccountIdentifier;
      v40 = v12;
      v41 = v9;
      v39 = v15;
LABEL_6:
      v22 = 0;
      while (1)
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v48 + 1) + 8 * v22);
        v24 = [v23 objectForKeyedSubscript:{v21, v37, v38}];
        v25 = [v23 identifier];
        v26 = [v11 accountIdentifier];
        if ([v25 isEqualToString:v26])
        {
          break;
        }

        v27 = v11;
        v28 = [v11 accountIdentifier];
        v29 = [v24 isEqualToString:v28];

        if (v29)
        {
          goto LABEL_18;
        }

        v22 = v22 + 1;
        v11 = v27;
        if (v20 == v22)
        {
          v20 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
          v12 = v40;
          v9 = v41;
          v15 = v39;
          if (v20)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      v27 = v11;

LABEL_18:
      v31 = v23;

      v11 = v27;
      v12 = v40;
      v9 = v41;
      v15 = v39;
      v17 = v45;
      if (v31)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_13:

      v17 = v45;
    }

    v32 = [v11 accountIdentifier];

    if (v32)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v11;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "The account responsible for %@ is already signed out. Dismissing followup instead", buf, 0xCu);
        _MBLog();
      }

      [(MBFollowUpExtensionViewController *)v42 _dismissFollowUpItem:v11];
      v12[2](v12, 1);
      goto LABEL_43;
    }

    v31 = 0;
LABEL_24:
    v34 = [v15 intValue];
    if (v34 > 5)
    {
      if (v34 != 6)
      {
        if (v34 != 8)
        {
          goto LABEL_39;
        }

        if (v17 && [v17 intValue] == 1)
        {
          [(MBFollowUpExtensionViewController *)v42 _openiCloudSettingsWithAccount:v31];
        }

        goto LABEL_38;
      }
    }

    else if (v34 != 1)
    {
      if (v34 == 5)
      {
        if (v17)
        {
          if ([v17 intValue] == 5)
          {
            [(MBFollowUpExtensionViewController *)v42 _allowRestoreOverCellularWithAccount:v31];
          }

          else if ([v17 intValue] == 6)
          {
            [(MBFollowUpExtensionViewController *)v42 _openThermalKbase];
          }
        }

        goto LABEL_42;
      }

LABEL_39:
      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [v15 intValue];
        *buf = 67109120;
        LODWORD(v54) = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unknown follow up item of type %u", buf, 8u);
        [v15 intValue];
        _MBLog();
      }

      goto LABEL_42;
    }

    if (v17 && [v17 intValue] == 1)
    {
      [(MBFollowUpExtensionViewController *)v42 _openiCloudSettingsWithAccount:v31];
LABEL_42:
      v12[2](v12, 1);

LABEL_43:
      goto LABEL_44;
    }

LABEL_38:
    [(MBFollowUpExtensionViewController *)v42 _dismissFollowUpItem:v11];
    goto LABEL_42;
  }

  v30 = MBGetDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Follow-up item had no item type. Don't know how to respond", buf, 2u);
    _MBLog();
  }

  v12[2](v12, 1);
LABEL_44:
}

- (void)_openiCloudSettingsWithAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ![v3 aa_isAccountClass:AAAccountClassPrimary])
  {
    v6 = [v4 username];
    v7 = [NSString stringWithFormat:@"prefs:root=ManagedAccount:%@&path=ICLOUD_SERVICE/com.apple.Dataclass.Backup", v6];
    v5 = [NSURL URLWithString:v7];
  }

  else
  {
    v5 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Backup"];
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Trying to swizzle over to iCloud backup pane: %@", buf, 0xCu);
    _MBLog();
  }

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  [v9 openSensitiveURL:v5 withOptions:0];
}

- (void)_openThermalKbase
{
  v2 = [NSURL URLWithString:@"https://support.apple.com/HT201678?cid=iOS_SettingsUI_iphone_article_HT201678"];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Opening thermal kbase %@", buf, 0xCu);
    _MBLog();
  }

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = 0;
  v5 = [v4 openURL:v2 withOptions:0 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not open kbase url %@ error %@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (void)_dismissFollowUpItem:(id)a3
{
  v4 = a3;
  if (!self->_followUpController)
  {
    v5 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.backupd"];
    followUpController = self->_followUpController;
    self->_followUpController = v5;

    v7 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.MobileBackup"];
    legacyController = self->_legacyController;
    self->_legacyController = v7;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Clearing follow-up item %{public}@", buf, 0xCu);
    v20 = v4;
    _MBLog();
  }

  v10 = self->_followUpController;
  v11 = [v4 uniqueIdentifier];
  v28 = v11;
  v12 = [NSArray arrayWithObjects:&v28 count:1];
  v22 = 0;
  v13 = [(FLFollowUpController *)v10 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 error:&v22];
  v14 = v22;

  if ((v13 & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 uniqueIdentifier];
      *buf = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Couldn't dismiss follow-up %@ with error %@", buf, 0x16u);

      v20 = [v4 uniqueIdentifier];
      v21 = v14;
      _MBLog();
    }
  }

  v17 = self->_legacyController;
  v18 = [v4 uniqueIdentifier];
  v23 = v18;
  v19 = [NSArray arrayWithObjects:&v23 count:1];
  [(FLFollowUpController *)v17 clearPendingFollowUpItemsWithUniqueIdentifiers:v19 error:0];
}

- (void)_allowRestoreOverCellularWithAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_manager)
  {
    v6 = [v4 personaIdentifier];

    if (v6)
    {
      v7 = [[MBManager alloc] initWithAccount:v5 delegate:0 eventQueue:0];
    }

    else
    {
      v7 = objc_opt_new();
    }

    manager = self->_manager;
    self->_manager = v7;
  }

  v9 = +[MBCellularAccess inexpensiveCellularAccess];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Allowing background restore over cellular, setting cellular access to:%@", buf, 0xCu);
    _MBLog();
  }

  v11 = dispatch_semaphore_create(0);
  v12 = self->_manager;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001A68;
  v15[3] = &unk_100004178;
  v16 = v9;
  v17 = v11;
  v13 = v11;
  v14 = v9;
  [(MBManager *)v12 saveBackgroundRestoreCellularAccess:v14 completion:v15];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
}

@end