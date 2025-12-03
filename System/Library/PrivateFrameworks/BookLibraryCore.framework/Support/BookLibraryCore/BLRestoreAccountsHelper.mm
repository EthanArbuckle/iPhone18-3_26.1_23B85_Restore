@interface BLRestoreAccountsHelper
- (BLRestoreAccountsHelper)initWithAuthenticationQueue:(id)queue;
- (id)_enqueueAuthenticateTask:(id)task error:(id *)error;
- (id)_newDefaultAuthenticateOptions;
- (id)accountIDForAccountName:(id)name error:(id *)error;
- (id)preflightAccount:(id)account error:(id *)error;
- (void)_dq_establishPrimaryAccount;
- (void)establishPrimaryAccount;
@end

@implementation BLRestoreAccountsHelper

- (BLRestoreAccountsHelper)initWithAuthenticationQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = BLRestoreAccountsHelper;
  v5 = [(BLRestoreAccountsHelper *)&v8 init];
  if (v5)
  {
    if (!queueCopy)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      queueCopy = dispatch_queue_create("com.apple.ibooks.BLService.BLRestoreAccountsHelper", v6);
    }

    objc_storeStrong(&v5->_authenticationQueue, queueCopy);
  }

  return v5;
}

- (id)accountIDForAccountName:(id)name error:(id *)error
{
  nameCopy = name;
  accountIDsByAppleID = self->_accountIDsByAppleID;
  if (!accountIDsByAppleID)
  {
    v8 = +[ACAccountStore bu_sharedAccountStore];
    accounts = [v8 accounts];

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_accountIDsByAppleID;
    self->_accountIDsByAppleID = v10;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = accounts;
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
          ams_DSID = [v17 ams_DSID];
          username = [v17 username];
          v20 = username;
          if (ams_DSID)
          {
            v21 = username == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:ams_DSID forKeyedSubscript:username];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v14);
    }

    accountIDsByAppleID = self->_accountIDsByAppleID;
  }

  v22 = [(NSMutableDictionary *)accountIDsByAppleID objectForKeyedSubscript:nameCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeStoreAccount = v22;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v22;
    activeStoreAccount = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!v22)
  {
    activeStoreAccount = 0;
    goto LABEL_17;
  }

  v28 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v28 activeStoreAccount];

  if (!activeStoreAccount)
  {
    goto LABEL_17;
  }

  v29 = BLServiceLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = nameCopy;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ContentRestore: Attempting to resolve unknown Apple Account: %@", buf, 0xCu);
  }

  _newDefaultAuthenticateOptions = [(BLRestoreAccountsHelper *)self _newDefaultAuthenticateOptions];
  v31 = [[AMSAuthenticateTask alloc] initWithAccount:0 options:_newDefaultAuthenticateOptions];
  [v31 setUsername:nameCopy];
  v39 = 0;
  v32 = [(BLRestoreAccountsHelper *)self _enqueueAuthenticateTask:v31 error:&v39];
  activeStoreAccount = v39;
  account = [v32 account];

  if (!account)
  {
    goto LABEL_34;
  }

  v38 = _newDefaultAuthenticateOptions;
  account2 = [v32 account];
  username2 = [account2 username];
  if (![username2 length])
  {

    _newDefaultAuthenticateOptions = v38;
LABEL_34:
    v37 = BLServiceLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = nameCopy;
      v46 = 2112;
      v47 = activeStoreAccount;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "ContentRestore: Could not resolve AppleID: %@ error:  %@", buf, 0x16u);
    }

    if (!activeStoreAccount)
    {
      activeStoreAccount = sub_1000A8F44(0, 0, 0);
    }

    [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:activeStoreAccount forKeyedSubscript:nameCopy];
    goto LABEL_39;
  }

  v36 = BLServiceLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v45 = nameCopy;
    v46 = 2112;
    v47 = username2;
    v48 = 2112;
    v49 = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "ContentRestore: Resolved AppleID: %@ to AppleID: %@ and DSID: %@", buf, 0x20u);
  }

  [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:0 forKeyedSubscript:nameCopy];
  [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:0 forKeyedSubscript:username2];

  _newDefaultAuthenticateOptions = v38;
LABEL_39:

LABEL_17:
  v24 = 0;
  if (error)
  {
LABEL_18:
    v25 = activeStoreAccount;
    *error = activeStoreAccount;
  }

LABEL_19:
  v26 = v24;

  return v24;
}

- (void)establishPrimaryAccount
{
  v3 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v3 activeStoreAccount];

  if (!activeStoreAccount)
  {
    authenticationQueue = [(BLRestoreAccountsHelper *)self authenticationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C0144;
    block[3] = &unk_10011CFE8;
    block[4] = self;
    dispatch_sync(authenticationQueue, block);
  }
}

- (void)_dq_establishPrimaryAccount
{
  authenticationQueue = [(BLRestoreAccountsHelper *)self authenticationQueue];
  dispatch_assert_queue_V2(authenticationQueue);

  v4 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v4 activeStoreAccount];

  if (!activeStoreAccount)
  {
    v6 = BLServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ContentRestore: Attempt to establish primary account", buf, 2u);
    }

    _newDefaultAuthenticateOptions = [(BLRestoreAccountsHelper *)self _newDefaultAuthenticateOptions];
    [_newDefaultAuthenticateOptions setCanMakeAccountActive:1];
    v8 = [[AMSAuthenticateTask alloc] initWithAccount:0 options:_newDefaultAuthenticateOptions];
    performAuthentication = [v8 performAuthentication];
    v16 = 0;
    v10 = [performAuthentication resultWithError:&v16];
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
      account = [v10 account];
      serverResponse = [v10 serverResponse];
      *buf = 138412546;
      v18 = account;
      v19 = 2112;
      v20 = serverResponse;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ContentRestore: Got account: %@, serverResponse: %@", buf, 0x16u);
    }
  }
}

- (id)preflightAccount:(id)account error:(id *)error
{
  accountCopy = account;
  ams_DSID = [accountCopy ams_DSID];
  username = [accountCopy username];
  if ([username length])
  {
    errorCopy = error;
    if (ams_DSID)
    {
      v9 = [ACAccount bu_storeAccountWithDSID:ams_DSID];
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
      v12 = accountCopy;
    }

    v13 = v12;
    v14 = BLServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v28 = ams_DSID;
      v29 = 2112;
      v30 = username;
      v31 = 1024;
      v32 = v9 == 0;
      v33 = 1024;
      isActive = [v13 isActive];
      v35 = 1024;
      isAuthenticated = [v13 isAuthenticated];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ContentRestore: Preflight account: %@ | %@, accountIsNew: %d, active: %d, isAuthenticated: %d", buf, 0x28u);
    }

    v24 = username;

    _newDefaultAuthenticateOptions = [(BLRestoreAccountsHelper *)self _newDefaultAuthenticateOptions];
    [_newDefaultAuthenticateOptions setAuthenticationType:0];
    v16 = [[AMSAuthenticateTask alloc] initWithAccount:v13 options:_newDefaultAuthenticateOptions];
    v26 = 0;
    v17 = [(BLRestoreAccountsHelper *)self _enqueueAuthenticateTask:v16 error:&v26];
    v10 = v26;
    account = [v17 account];
    v18 = BLServiceLog();
    v19 = v18;
    if (v10)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v28 = ams_DSID;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "ContentRestore: Encountered error trying to preflight account: %@, error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [v17 account];
      serverResponse = [v17 serverResponse];
      *buf = 138412546;
      v28 = account2;
      v29 = 2112;
      v30 = serverResponse;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ContentRestore: Got account: %@, serverResponse: %@", buf, 0x16u);
    }

    username = v24;
    error = errorCopy;
  }

  else
  {
    v10 = sub_1000A8F44(114, 0, 0);
    v9 = BLServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = ams_DSID;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "ContentRestore: Cannot restore without an AppleID for account: %@, error: %@", buf, 0x16u);
    }

    account = 0;
  }

  if (error)
  {
    v20 = v10;
    *error = v10;
  }

  return account;
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

- (id)_enqueueAuthenticateTask:(id)task error:(id *)error
{
  taskCopy = task;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000C0988;
  v19 = sub_1000C0998;
  v20 = 0;
  authenticationQueue = [(BLRestoreAccountsHelper *)self authenticationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C09A0;
  block[3] = &unk_10011EE38;
  v12 = taskCopy;
  v13 = &v15;
  errorCopy = error;
  v8 = taskCopy;
  dispatch_sync(authenticationQueue, block);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

@end