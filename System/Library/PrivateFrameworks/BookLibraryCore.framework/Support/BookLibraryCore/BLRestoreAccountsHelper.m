@interface BLRestoreAccountsHelper
- (BLRestoreAccountsHelper)initWithAuthenticationQueue:(id)a3;
- (id)_enqueueAuthenticateTask:(id)a3 error:(id *)a4;
- (id)_newDefaultAuthenticateOptions;
- (id)accountIDForAccountName:(id)a3 error:(id *)a4;
- (id)preflightAccount:(id)a3 error:(id *)a4;
- (void)_dq_establishPrimaryAccount;
- (void)establishPrimaryAccount;
@end

@implementation BLRestoreAccountsHelper

- (BLRestoreAccountsHelper)initWithAuthenticationQueue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BLRestoreAccountsHelper;
  v5 = [(BLRestoreAccountsHelper *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_create("com.apple.ibooks.BLService.BLRestoreAccountsHelper", v6);
    }

    objc_storeStrong(&v5->_authenticationQueue, v4);
  }

  return v5;
}

- (id)accountIDForAccountName:(id)a3 error:(id *)a4
{
  v6 = a3;
  accountIDsByAppleID = self->_accountIDsByAppleID;
  if (!accountIDsByAppleID)
  {
    v8 = +[ACAccountStore bu_sharedAccountStore];
    v9 = [v8 accounts];

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_accountIDsByAppleID;
    self->_accountIDsByAppleID = v10;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v40 + 1) + 8 * i);
          v18 = [v17 ams_DSID];
          v19 = [v17 username];
          v20 = v19;
          if (v18)
          {
            v21 = v19 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:v18 forKeyedSubscript:v19];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v14);
    }

    accountIDsByAppleID = self->_accountIDsByAppleID;
  }

  v22 = [(NSMutableDictionary *)accountIDsByAppleID objectForKeyedSubscript:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v22;
    v23 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!v22)
  {
    v23 = 0;
    goto LABEL_17;
  }

  v28 = +[BUAccountsProvider sharedProvider];
  v23 = [v28 activeStoreAccount];

  if (!v23)
  {
    goto LABEL_17;
  }

  v29 = BLServiceLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ContentRestore: Attempting to resolve unknown Apple Account: %@", buf, 0xCu);
  }

  v30 = [(BLRestoreAccountsHelper *)self _newDefaultAuthenticateOptions];
  v31 = [[AMSAuthenticateTask alloc] initWithAccount:0 options:v30];
  [v31 setUsername:v6];
  v39 = 0;
  v32 = [(BLRestoreAccountsHelper *)self _enqueueAuthenticateTask:v31 error:&v39];
  v23 = v39;
  v33 = [v32 account];

  if (!v33)
  {
    goto LABEL_34;
  }

  v38 = v30;
  v34 = [v32 account];
  v35 = [v34 username];
  if (![v35 length])
  {

    v30 = v38;
LABEL_34:
    v37 = BLServiceLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = v6;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "ContentRestore: Could not resolve AppleID: %@ error:  %@", buf, 0x16u);
    }

    if (!v23)
    {
      v23 = sub_1000A8F44(0, 0, 0);
    }

    [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:v23 forKeyedSubscript:v6];
    goto LABEL_39;
  }

  v36 = BLServiceLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v45 = v6;
    v46 = 2112;
    v47 = v35;
    v48 = 2112;
    v49 = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "ContentRestore: Resolved AppleID: %@ to AppleID: %@ and DSID: %@", buf, 0x20u);
  }

  [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:0 forKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:0 forKeyedSubscript:v35];

  v30 = v38;
LABEL_39:

LABEL_17:
  v24 = 0;
  if (a4)
  {
LABEL_18:
    v25 = v23;
    *a4 = v23;
  }

LABEL_19:
  v26 = v24;

  return v24;
}

- (void)establishPrimaryAccount
{
  v3 = +[BUAccountsProvider sharedProvider];
  v4 = [v3 activeStoreAccount];

  if (!v4)
  {
    v5 = [(BLRestoreAccountsHelper *)self authenticationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C0144;
    block[3] = &unk_10011CFE8;
    block[4] = self;
    dispatch_sync(v5, block);
  }
}

- (void)_dq_establishPrimaryAccount
{
  v3 = [(BLRestoreAccountsHelper *)self authenticationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 activeStoreAccount];

  if (!v5)
  {
    v6 = BLServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ContentRestore: Attempt to establish primary account", buf, 2u);
    }

    v7 = [(BLRestoreAccountsHelper *)self _newDefaultAuthenticateOptions];
    [v7 setCanMakeAccountActive:1];
    v8 = [[AMSAuthenticateTask alloc] initWithAccount:0 options:v7];
    v9 = [v8 performAuthentication];
    v16 = 0;
    v10 = [v9 resultWithError:&v16];
    v11 = v16;

    v12 = BLServiceLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ContentRestore: Encountered error trying to establish primary account:  %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 account];
      v15 = [v10 serverResponse];
      *buf = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ContentRestore: Got account: %@, serverResponse: %@", buf, 0x16u);
    }
  }
}

- (id)preflightAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 ams_DSID];
  v8 = [v6 username];
  if ([v8 length])
  {
    v25 = a4;
    if (v7)
    {
      v9 = [ACAccount bu_storeAccountWithDSID:v7];
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }

    v13 = v12;
    v14 = BLServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      v31 = 1024;
      v32 = v9 == 0;
      v33 = 1024;
      v34 = [v13 isActive];
      v35 = 1024;
      v36 = [v13 isAuthenticated];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ContentRestore: Preflight account: %@ | %@, accountIsNew: %d, active: %d, isAuthenticated: %d", buf, 0x28u);
    }

    v24 = v8;

    v15 = [(BLRestoreAccountsHelper *)self _newDefaultAuthenticateOptions];
    [v15 setAuthenticationType:0];
    v16 = [[AMSAuthenticateTask alloc] initWithAccount:v13 options:v15];
    v26 = 0;
    v17 = [(BLRestoreAccountsHelper *)self _enqueueAuthenticateTask:v16 error:&v26];
    v10 = v26;
    v11 = [v17 account];
    v18 = BLServiceLog();
    v19 = v18;
    if (v10)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v28 = v7;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "ContentRestore: Encountered error trying to preflight account: %@, error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v17 account];
      v22 = [v17 serverResponse];
      *buf = 138412546;
      v28 = v23;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ContentRestore: Got account: %@, serverResponse: %@", buf, 0x16u);
    }

    v8 = v24;
    a4 = v25;
  }

  else
  {
    v10 = sub_1000A8F44(114, 0, 0);
    v9 = BLServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "ContentRestore: Cannot restore without an AppleID for account: %@, error: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  if (a4)
  {
    v20 = v10;
    *a4 = v10;
  }

  return v11;
}

- (id)_newDefaultAuthenticateOptions
{
  v2 = objc_opt_new();
  [v2 setAuthenticationType:1];
  v3 = _os_feature_enabled_impl();
  v4 = BLBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"To restore your apps, books, and other media from backup, enter your Apple Account password in Settings. Your content cannot be restored without this verification. ";
  }

  else
  {
    v6 = @"To restore your apps, books, and other media from backup, enter your Apple ID password in Settings. Your content cannot be restored without this verification. ";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100125DB0 table:@"Localizable"];
  [v2 setReason:v7];

  v8 = BLBundle();
  v9 = [v8 localizedStringForKey:@"Restore from Backup" value:&stru_100125DB0 table:@"Localizable"];
  [v2 setPromptTitle:v9];

  v10 = BLBundle();
  v11 = [v10 localizedStringForKey:@"Don\\U2019t Restore" value:&stru_100125DB0 table:@"Localizable"];
  [v2 setCancelButtonString:v11];

  [v2 setDebugReason:@"Books content restore"];
  return v2;
}

- (id)_enqueueAuthenticateTask:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000C0988;
  v19 = sub_1000C0998;
  v20 = 0;
  v7 = [(BLRestoreAccountsHelper *)self authenticationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C09A0;
  block[3] = &unk_10011EE38;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(v7, block);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

@end