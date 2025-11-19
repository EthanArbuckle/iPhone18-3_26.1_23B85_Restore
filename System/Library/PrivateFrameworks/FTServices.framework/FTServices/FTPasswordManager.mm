@interface FTPasswordManager
+ (id)_loginUserNotificationForService:(id)a3 user:(id)a4 isForBadPassword:(BOOL)a5 showForgetPassword:(BOOL)a6 shouldRememberPassword:(BOOL)a7;
+ (id)sharedInstance;
- (BOOL)_shouldForceSilentOnlyAuthForUsername:(id)a3 serviceIdentifier:(id)a4;
- (BOOL)_usernameHasCorrespondingIdMSAccount:(id)a3;
- (BOOL)isAuthTokenReceiptTime:(double)a3 withinGracePeriod:(double)a4;
- (FTPasswordManager)init;
- (FTPasswordManager)initWithUserNotificationCenter:(id)a3;
- (double)authTokenGracePeriod;
- (id)_accountBasedOnProfileID:(id)a3 orUsername:(id)a4 inStore:(id)a5;
- (id)_accountOptionsDictForRenewCredentialsForService:(id)a3 username:(id)a4 shouldFailIfNotSilent:(BOOL)a5;
- (id)_accountWithProfileID:(id)a3 username:(id)a4 inStore:(id)a5;
- (id)_accountWithProfileIDMatchingUser:(id)a3 inStore:(id)a4;
- (id)_accountWithUsername:(id)a3 inStore:(id)a4;
- (id)_accountWithUsernameAlias:(id)a3 inStore:(id)a4;
- (id)_credentialForAccount:(id)a3;
- (id)_findAccountOfType:(id)a3 InStore:(id)a4 withCriteria:(id)a5;
- (id)_findGameCenterAccountInStore:(id)a3 withCriteria:(id)a4;
- (id)_findIDSAccountInStore:(id)a3 withCriteria:(id)a4;
- (id)_findIDSAccountsInStore:(id)a3 withCriteria:(id)a4;
- (id)_gameCenterAccountWithUsername:(id)a3;
- (id)_keychainAuthTokenForUsername:(id)a3 service:(id)a4;
- (id)_keychainPasswordForUsername:(id)a3 service:(id)a4;
- (id)_profileIDForUsername:(id)a3 inStore:(id)a4;
- (id)acAccountWithProfileID:(id)a3 username:(id)a4 accountStore:(id)a5;
- (id)gameCenterPropertiesFromAccountWithUsername:(id)a3;
- (id)profileIDForACAccount:(id)a3;
- (void)_renewCredentialsIfPossibleForAccount:(id)a3 username:(id)a4 inServiceIdentifier:(id)a5 originalInServiceIdentifier:(id)a6 serviceName:(id)a7 failIfNotSilent:(BOOL)a8 renewHandler:(id)a9 shortCircuitCompletionBlock:(id)a10;
- (void)_setKeychainAuthToken:(id)a3 forUsername:(id)a4 service:(id)a5;
- (void)_updateStatus:(id)a3 onAccount:(id)a4;
- (void)accountCredentialChanged:(id)a3;
- (void)accountWasRemoved:(id)a3;
- (void)cancelRequestID:(id)a3 serviceIdentifier:(id)a4;
- (void)cleanUpAccountsBasedOnInUseUsernamesBlock:(id)a3 profileIDBlock:(id)a4 completionBlock:(id)a5;
- (void)cleanUpAccountsWithUsername:(id)a3 orProfileID:(id)a4 basedOnInUseUsernames:(id)a5 profileIDs:(id)a6 completionBlock:(id)a7;
- (void)fetchAuthTokenForProfileID:(id)a3 username:(id)a4 service:(id)a5 outRequestID:(id *)a6 completionBlock:(id)a7;
- (void)fetchPasswordForProfileID:(id)a3 username:(id)a4 service:(id)a5 outRequestID:(id *)a6 completionBlock:(id)a7;
- (void)performCleanUpWithCompletion:(id)a3;
- (void)removeAuthTokenAllowingGracePeriodForProfileID:(id)a3 username:(id)a4;
- (void)requestAuthTokenForProfileID:(id)a3 username:(id)a4 service:(id)a5 badPassword:(BOOL)a6 showForgotPassword:(BOOL)a7 forceRenewal:(BOOL)a8 failIfNotSilent:(BOOL)a9 outRequestID:(id *)a10 completionBlock:(id)a11;
- (void)setAccountStatus:(id)a3 forProfileID:(id)a4 username:(id)a5 service:(id)a6;
- (void)setAuthTokenForProfileID:(id)a3 username:(id)a4 service:(id)a5 authToken:(id)a6 selfHandle:(id)a7 accountStatus:(id)a8 outRequestID:(id *)a9 completionBlock:(id)a10;
- (void)setHandlesForProfileID:(id)a3 username:(id)a4 service:(id)a5 handles:(id)a6;
- (void)setPasswordForProfileID:(id)a3 username:(id)a4 service:(id)a5 password:(id)a6 outRequestID:(id *)a7 completionBlock:(id)a8;
- (void)updatePreviousUsername:(id)a3 toNewUsername:(id)a4;
@end

@implementation FTPasswordManager

+ (id)sharedInstance
{
  if (qword_1ED7687C8 != -1)
  {
    sub_19592A7D0();
  }

  v3 = qword_1ED768728;

  return v3;
}

- (FTPasswordManager)init
{
  v3 = [MEMORY[0x1E69A6190] sharedInstance];
  v4 = [(FTPasswordManager *)self initWithUserNotificationCenter:v3];

  return v4;
}

- (FTPasswordManager)initWithUserNotificationCenter:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = FTPasswordManager;
  v6 = [(FTPasswordManager *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x19A8B8550](@"ACMonitoredAccountStore", @"Accounts"));
    v8 = MEMORY[0x1E695DFD8];
    v9 = sub_195956704();
    v10 = sub_195956748();
    v11 = [v8 setWithObjects:{v9, v10, 0}];
    v12 = [v7 initWithAccountTypes:v11 delegate:v6];
    accountStore = v6->_accountStore;
    v6->_accountStore = v12;

    objc_storeStrong(&v6->_userNotificationCenter, a3);
  }

  return v6;
}

- (id)_keychainPasswordForUsername:(id)a3 service:(id)a4
{
  v5 = a3;
  v6 = a4;
  IMGetKeychainPassword();
  v7 = 0;
  if (![v7 length])
  {
    v8 = IMGenerateLoginID();
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_195964328();
    }

    IMGetKeychainPassword();
    v10 = v7;

    v7 = v10;
  }

  return v7;
}

- (void)_setKeychainAuthToken:(id)a3 forUsername:(id)a4 service:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = IMCanonicalFormForEmail();
  IMSetKeychainAuthToken();
}

- (id)_keychainAuthTokenForUsername:(id)a3 service:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = IMCanonicalFormForEmail();
  IMGetKeychainAuthToken();
  v8 = 0;
  if (![v8 length])
  {
    v9 = IMGenerateLoginID();
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_195964328();
    }

    IMGetKeychainAuthToken();
    v11 = v8;

    v8 = v11;
  }

  return v8;
}

- (id)_findAccountOfType:(id)a3 InStore:(id)a4 withCriteria:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if (!v7)
    {
      v7 = sub_195956704();
    }

    v10 = [v8 accountTypeWithAccountTypeIdentifier:v7];
    [v8 accountsWithAccountType:v10];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v11 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v36 = v10;
      v37 = v8;
      v38 = v7;
      v13 = *v42;
      v14 = (v9 + 2);
      v15 = 0x1E69A6000uLL;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = [*(v15 + 312) registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Account: %@", buf, 0xCu);
          }

          v19 = [*(v15 + 312) registration];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v17 username];
            *buf = 138412290;
            v46 = v20;
            _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "            username: %@", buf, 0xCu);
          }

          v21 = [*(v15 + 312) registration];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_195956E14(v17);
            *buf = 138412290;
            v46 = v22;
            _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "          profile ID: %@", buf, 0xCu);
          }

          v23 = [*(v15 + 312) registration];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = sub_195956FA8(v17);
            sub_195956EDC(v24);
            v40 = v17;
            v25 = v15;
            v26 = v9;
            v27 = v12;
            v28 = v14;
            v30 = v29 = v13;
            *buf = 138412290;
            v46 = v30;
            _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "               token: %@", buf, 0xCu);

            v13 = v29;
            v14 = v28;
            v12 = v27;
            v9 = v26;
            v15 = v25;
            v17 = v40;
          }

          v31 = [*(v15 + 312) registration];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = sub_195957020(v17);
            *buf = 138412290;
            v46 = v32;
            _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "vetted email handles: %@", buf, 0xCu);
          }

          if (v9[2](v9, v17))
          {
            v33 = v17;
            goto LABEL_24;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v33 = 0;
LABEL_24:
      v8 = v37;
      v7 = v38;
      v10 = v36;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_findIDSAccountsInStore:(id)a3 withCriteria:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v33 = sub_195956704();
    v7 = [v5 accountTypeWithAccountTypeIdentifier:?];
    [MEMORY[0x1E695DF70] array];
    v35 = v34 = v5;
    v32 = v7;
    [v5 accountsWithAccountType:v7];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v8 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      v11 = (v6 + 2);
      v12 = 0x1E69A6000uLL;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [*(v12 + 312) registration];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v14;
            _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Account: %@", buf, 0xCu);
          }

          v16 = [*(v12 + 312) registration];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v14 username];
            *buf = 138412290;
            v43 = v17;
            _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "            username: %@", buf, 0xCu);
          }

          v18 = [*(v12 + 312) registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_195956E14(v14);
            *buf = 138412290;
            v43 = v19;
            _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "          profile ID: %@", buf, 0xCu);
          }

          v20 = [*(v12 + 312) registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_195956FA8(v14);
            sub_195956EDC(v21);
            v37 = v14;
            v22 = v12;
            v23 = v6;
            v24 = v9;
            v25 = v11;
            v27 = v26 = v10;
            *buf = 138412290;
            v43 = v27;
            _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "               token: %@", buf, 0xCu);

            v10 = v26;
            v11 = v25;
            v9 = v24;
            v6 = v23;
            v12 = v22;
            v14 = v37;
          }

          v28 = [*(v12 + 312) registration];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = sub_195957020(v14);
            *buf = 138412290;
            v43 = v29;
            _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "vetted email handles: %@", buf, 0xCu);
          }

          if (v6[2](v6, v14))
          {
            [v35 addObject:v14];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v9);
    }

    v5 = v34;
  }

  else
  {
    v35 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_findIDSAccountInStore:(id)a3 withCriteria:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_195956704();
  v9 = [(FTPasswordManager *)self _findAccountOfType:v8 InStore:v7 withCriteria:v6];

  return v9;
}

- (id)_findGameCenterAccountInStore:(id)a3 withCriteria:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_195956748();
  v9 = [(FTPasswordManager *)self _findAccountOfType:v8 InStore:v7 withCriteria:v6];

  return v9;
}

- (id)_accountWithUsername:(id)a3 inStore:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195957800;
  v10[3] = &unk_1E7435680;
  v11 = v6;
  v7 = v6;
  v8 = [(FTPasswordManager *)self _findIDSAccountInStore:a4 withCriteria:v10];

  return v8;
}

- (id)_gameCenterAccountWithUsername:(id)a3
{
  v4 = a3;
  accountStore = self->_accountStore;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195957A88;
  v9[3] = &unk_1E7435680;
  v10 = v4;
  v6 = v4;
  v7 = [(FTPasswordManager *)self _findGameCenterAccountInStore:accountStore withCriteria:v9];

  return v7;
}

- (id)gameCenterPropertiesFromAccountWithUsername:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Fetching GS account for username %@", &v20, 0xCu);
  }

  v6 = [(FTPasswordManager *)self _gameCenterAccountWithUsername:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 valueForKey:@"_properties"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    v11 = v10;

    v13 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v11;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Properties on found account: %@", &v20, 0xCu);
    }

    v14 = objc_alloc(MEMORY[0x1E69A5278]);
    v15 = [v11 objectForKey:*MEMORY[0x1E69A48C8]];
    v16 = [v11 objectForKey:*MEMORY[0x1E69A48D8]];
    v17 = [v11 objectForKey:*MEMORY[0x1E69A48D0]];
    v12 = [v14 initWithAssociationID:v15 sharingState:v16 lastUpdatedDate:v17];
  }

  else
  {
    v11 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Found no GameCenter account for username %@", &v20, 0xCu);
    }

    v12 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_accountWithUsernameAlias:(id)a3 inStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195957EA4;
  v16[3] = &unk_1E7435680;
  v8 = v6;
  v17 = v8;
  v9 = [(FTPasswordManager *)self _findIDSAccountInStore:v7 withCriteria:v16];
  if (!v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195958084;
    v14[3] = &unk_1E7435680;
    v10 = v8;
    v15 = v10;
    v9 = [(FTPasswordManager *)self _findIDSAccountInStore:v7 withCriteria:v14];
    if (!v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_195958104;
      v12[3] = &unk_1E7435680;
      v13 = v10;
      v9 = [(FTPasswordManager *)self _findIDSAccountInStore:v7 withCriteria:v12];
    }
  }

  return v9;
}

- (id)_profileIDForUsername:(id)a3 inStore:(id)a4
{
  v4 = [(FTPasswordManager *)self _accountWithUsername:a3 inStore:a4];
  v5 = v4;
  if (v4)
  {
    v6 = sub_195956E14(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accountWithProfileID:(id)a3 username:(id)a4 inStore:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v8;
    _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Searching for profileID %@", buf, 0xCu);
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_195958560;
  v30[3] = &unk_1E7435680;
  v12 = v8;
  v31 = v12;
  v13 = [(FTPasswordManager *)self _findIDSAccountInStore:v10 withCriteria:v30];
  if (v13)
  {
    v14 = v13;
    v15 = v31;
LABEL_20:

    goto LABEL_21;
  }

  v16 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "Didn't find an authenticated account with a DSID; attempting to fall back to an unauthenticated match that has a password", buf, 2u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1959585FC;
  v28[3] = &unk_1E7435680;
  v17 = v12;
  v29 = v17;
  v14 = [(FTPasswordManager *)self _findIDSAccountInStore:v10 withCriteria:v28];
  if (!v14)
  {
    v18 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Didn't find a DISD match with a password; attempting to fall back to an unauthenticated DISD and username match", buf, 2u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1959586B8;
    v25[3] = &unk_1E74356A8;
    v19 = v17;
    v26 = v19;
    v27 = v9;
    v14 = [(FTPasswordManager *)self _findIDSAccountInStore:v10 withCriteria:v25];
    if (!v14)
    {
      v20 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "Didn't find an unauthenticated DISD and username match; attempting to fall back to an unauthenticated DSID match", buf, 2u);
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_195958754;
      v23[3] = &unk_1E7435680;
      v24 = v19;
      v14 = [(FTPasswordManager *)self _findIDSAccountInStore:v10 withCriteria:v23];
    }
  }

  if (!v14)
  {
LABEL_17:
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Didn't find a DSID match!", buf, 2u);
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_21:

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_accountWithProfileIDMatchingUser:(id)a3 inStore:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(FTPasswordManager *)self _profileIDForUsername:v6 inStore:v7];
  v9 = [(FTPasswordManager *)self _accountWithProfileID:v8 username:v6 inStore:v7];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Couldn't match based on any known DSID of %@; attempting to fall back to a username match", &v16, 0xCu);
  }

  v9 = [(FTPasswordManager *)self _accountWithUsername:v6 inStore:v7];
  if (v9)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't find a username match for %@; attempting to search aliases of known accounts", &v16, 0xCu);
  }

  v9 = [(FTPasswordManager *)self _accountWithUsernameAlias:v6 inStore:v7];
  if (v9)
  {
LABEL_8:
    v12 = v9;
  }

  else
  {
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Didn't find any matching account!", &v16, 2u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_accountBasedOnProfileID:(id)a3 orUsername:(id)a4 inStore:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FTPasswordManager *)self _accountWithProfileID:v8 username:v9 inStore:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Didn't find profileID %@; attempting to use username %@", &v18, 0x16u);
    }

    v13 = [(FTPasswordManager *)self _accountWithProfileIDMatchingUser:v9 inStore:v10];
  }

  v15 = v13;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)updatePreviousUsername:(id)a3 toNewUsername:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Updating username on accounts { previousUsername: %@, newUsername: %@ }", buf, 0x16u);
  }

  v9 = sub_195956704();
  accountStore = self->_accountStore;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195958C90;
  v15[3] = &unk_1E7435720;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v18 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v6;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v11 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldForceSilentOnlyAuthForUsername:(id)a3 serviceIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isEqualToString:@"com.apple.private.alloy.itunes"];
    v10 = 0;
    if (v6 && v9)
    {
      v10 = ![(FTPasswordManager *)self _usernameHasCorrespondingIdMSAccount:v6];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    if (v10)
    {
      v12 = @"YES";
    }

    v18 = v8;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Determined if we should force silent-only auth { username: %@, serviceIdentifier: %@, shouldForceSilentAuth: %@ }", &v15, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_usernameHasCorrespondingIdMSAccount:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Checking if username has a corresponding IdMS ACAccount instance { username: %@ }", buf, 0xCu);
  }

  accountStore = self->_accountStore;
  if (qword_1EAED7740 != -1)
  {
    sub_195964508();
  }

  v25 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:qword_1EAED7768];
  [(ACAccountStore *)self->_accountStore accountsWithAccountType:?];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v29 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 username];
        v14 = [v13 isEqualToString:v4];

        v15 = [MEMORY[0x1E69A6138] registration];
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v21 = [v12 identifier];
            v22 = [v12 username];
            *buf = 138412546;
            v31 = v21;
            v32 = 2112;
            v33 = v22;
            _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "IdMS ACAccount instance matches { accountID: %@, accountUsername: %@ }", buf, 0x16u);
          }

          v20 = 1;
          v19 = v7;
          goto LABEL_21;
        }

        if (v16)
        {
          v17 = [v12 identifier];
          v18 = [v12 username];
          *buf = 138412546;
          v31 = v17;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "IdMS ACAccount instance does not match { accountID: %@, accountUsername: %@ }", buf, 0x16u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Unable to find a corresponding IdMS ACAccount instance { username: %@ }", buf, 0xCu);
  }

  v20 = 0;
LABEL_21:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)performCleanUpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Performing clean-up on accounts", buf, 2u);
  }

  v6 = sub_195956704();
  accountStore = self->_accountStore;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195959744;
  v10[3] = &unk_1E7435770;
  v11 = v6;
  v12 = v4;
  v10[4] = self;
  v8 = v6;
  v9 = v4;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v8 completion:v10];
}

- (void)cleanUpAccountsWithUsername:(id)a3 orProfileID:(id)a4 basedOnInUseUsernames:(id)a5 profileIDs:(id)a6 completionBlock:(id)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v35 = v12;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v14;
    v40 = 2112;
    v41 = v15;
    _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_DEFAULT, "Cleaning up accounts {username: %@, profileID: %@, inUseUsernames: %@, inUseProfileIDs: %@ }", buf, 0x2Au);
  }

  v18 = sub_195956704();
  accountStore = self->_accountStore;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195959F3C;
  v27[3] = &unk_1E74357C0;
  v27[4] = self;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v32 = v18;
  v33 = v16;
  v31 = v15;
  v20 = v18;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  v24 = v13;
  v25 = v12;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v20 completion:v27];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpAccountsBasedOnInUseUsernamesBlock:(id)a3 profileIDBlock:(id)a4 completionBlock:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8B8CC0](v8);
    v13 = MEMORY[0x19A8B8CC0](v9);
    *buf = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Begin cleaning up unused accounts { usernameBlock : %@, profileIDBlock : %@ }", buf, 0x16u);
  }

  v14 = sub_195956704();
  accountStore = self->_accountStore;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_19595A930;
  v21[3] = &unk_1E7435810;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v21[4] = self;
  v22 = v14;
  v16 = v14;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v16 completion:v21];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchPasswordForProfileID:(id)a3 username:(id)a4 service:(id)a5 outRequestID:(id *)a6 completionBlock:(id)a7
{
  v54 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v47 = _os_activity_create(&dword_195925000, "Password manager fetch password", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v47, &state);
  v15 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v49 = v45;
    v50 = 2112;
    v51 = v12;
    v52 = 2112;
    v53 = v13;
    _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Fetching password for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v44 = [v14 copy];
  v16 = sub_19595B9DC(v13);

  v17 = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20 = self->_runningQueries;
    self->_runningQueries = v19;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:v17];
  if (a6)
  {
    v21 = v17;
    *a6 = v17;
  }

  if ([v16 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    v22 = [(FTPasswordManager *)self _accountBasedOnProfileID:v45 orUsername:v12 inStore:self->_accountStore];
    if (v22)
    {
      v42 = [(FTPasswordManager *)self _credentialForAccount:v22];
      v23 = sub_195956E14(v22);
      v24 = sub_19595BAB4(v22);
      v43 = [(__CFString *)v42 password];
      sub_19595BB78(v22);
      v25 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v22;
        _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "  Found account: %@", buf, 0xCu);
      }

      v26 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v42;
        _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, "  Credential: %@", buf, 0xCu);
      }

      v27 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(__CFString *)v22 accountType];
        v29 = [v28 identifier];
        *buf = 138412290;
        v49 = v29;
        _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, "         => Type: %@", buf, 0xCu);
      }

      v30 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(__CFString *)v22 username];
        *buf = 138412290;
        v49 = v31;
        _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "     => Username: %@", buf, 0xCu);
      }

      v32 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(__CFString *)v42 password];
        v34 = @"YES";
        if (!v33)
        {
          v34 = @"NO";
        }

        *buf = 138412290;
        v49 = v34;
        _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "     => Password: %@", buf, 0xCu);
      }

      v35 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(__CFString *)v42 token];
        v37 = sub_195956EDC(v36);
        *buf = 138412290;
        v49 = v37;
        _os_log_impl(&dword_195925000, v35, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
      }

      v38 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v23;
        _os_log_impl(&dword_195925000, v38, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
      }

      v39 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v24;
        _os_log_impl(&dword_195925000, v39, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
      }
    }

    else
    {
      v40 = [MEMORY[0x1E69A6138] registration];
      v42 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v40, OS_LOG_TYPE_DEFAULT, "Did not find an account to use! No password fetched.", buf, 2u);
      }

      v43 = 0;
      v24 = 0;
      v23 = 0;
    }
  }

  else
  {
    v43 = [(FTPasswordManager *)self _keychainPasswordForUsername:v12 service:v16];
    v24 = 0;
    v23 = 0;
  }

  if ([(NSMutableSet *)self->_runningQueries containsObject:v17])
  {
    if (v44)
    {
      (v44)[2](v44, v17, v12, v16, v23, v24, v43, 0, 0);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:v17];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v41 = *MEMORY[0x1E69E9840];
}

- (void)fetchAuthTokenForProfileID:(id)a3 username:(id)a4 service:(id)a5 outRequestID:(id *)a6 completionBlock:(id)a7
{
  v74 = *MEMORY[0x1E69E9840];
  v63 = a3;
  v64 = a4;
  v12 = a5;
  v13 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v67 = _os_activity_create(&dword_195925000, "Password manager fetch auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v67, &state);
  v14 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v69 = v63;
    v70 = 2112;
    v71 = v64;
    v72 = 2112;
    v73 = v12;
    _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Fetching auth token for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v61 = [v13 copy];
  v62 = sub_19595B9DC(v12);

  v15 = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = self->_runningQueries;
    self->_runningQueries = v17;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:v15];
  if (a6)
  {
    v19 = v15;
    *a6 = v15;
  }

  p_cachedAuthTokenInfo = &self->_cachedAuthTokenInfo;
  cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
  if (cachedAuthTokenInfo && (-[_FTPasswordManagerCachedAuthTokenInfo profileID](cachedAuthTokenInfo, "profileID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToIgnoringCase:v63], v22, v23))
  {
    v60 = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo profileID];
    v24 = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo selfID];
    v59 = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo token];
    v25 = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo alertInfo];
    v26 = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo status];
    v27 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *p_cachedAuthTokenInfo;
      *buf = 138412290;
      v69 = v28;
      _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, "  Found cached account info: %@", buf, 0xCu);
    }

    v29 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_195956EDC(v59);
      *buf = 138412290;
      v69 = v30;
      _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
    }

    v31 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v60;
      _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
    }

    v32 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v24;
      _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
    }
  }

  else
  {
    if (![v62 isEqualToString:*MEMORY[0x1E69A50B0]])
    {
      v59 = [(FTPasswordManager *)self _keychainAuthTokenForUsername:v64 service:v62];
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v60 = 0;
      goto LABEL_53;
    }

    v32 = [(FTPasswordManager *)self _accountBasedOnProfileID:v63 orUsername:v64 inStore:self->_accountStore];
    if (v32)
    {
      v58 = [(FTPasswordManager *)self _credentialForAccount:v32];
      v60 = sub_195956E14(v32);
      v24 = sub_19595BAB4(v32);
      v59 = [v58 token];
      v33 = [v32 accountProperties];
      v57 = [v33 objectForKey:*MEMORY[0x1E69A48F0]];

      if ([v57 integerValue] == 5100 || objc_msgSend(v57, "integerValue") == 5103)
      {
        v26 = v57;
        v34 = [v32 accountProperties];
        v35 = [v34 objectForKey:@"alert"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v35;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      v37 = objc_alloc_init(_FTPasswordManagerCachedAuthTokenInfo);
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setProfileID:v60];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setSelfID:v24];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setToken:v59];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setAlertInfo:v25];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setStatus:v26];
      objc_storeStrong(&self->_cachedAuthTokenInfo, v37);
      sub_19595BB78(v32);
      accountStore = self->_accountStore;
      v65 = 0;
      [(ACAccountStore *)accountStore registerSynchronouslyWithError:&v65];
      v56 = v65;
      v39 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v56;
        _os_log_impl(&dword_195925000, v39, OS_LOG_TYPE_DEFAULT, "  Monitor error: %@", buf, 0xCu);
      }

      v40 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v32;
        _os_log_impl(&dword_195925000, v40, OS_LOG_TYPE_DEFAULT, "  Found account: %@", buf, 0xCu);
      }

      v41 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v58;
        _os_log_impl(&dword_195925000, v41, OS_LOG_TYPE_DEFAULT, "  Credential: %@", buf, 0xCu);
      }

      v42 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v32 accountType];
        v44 = [v43 identifier];
        *buf = 138412290;
        v69 = v44;
        _os_log_impl(&dword_195925000, v42, OS_LOG_TYPE_DEFAULT, "         => Type: %@", buf, 0xCu);
      }

      v45 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v32 username];
        *buf = 138412290;
        v69 = v46;
        _os_log_impl(&dword_195925000, v45, OS_LOG_TYPE_DEFAULT, "     => Username: %@", buf, 0xCu);
      }

      v47 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v58 password];
        v49 = @"YES";
        if (!v48)
        {
          v49 = @"NO";
        }

        *buf = 138412290;
        v69 = v49;
        _os_log_impl(&dword_195925000, v47, OS_LOG_TYPE_DEFAULT, "     => Password: %@", buf, 0xCu);
      }

      v50 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v58 token];
        v52 = sub_195956EDC(v51);
        *buf = 138412290;
        v69 = v52;
        _os_log_impl(&dword_195925000, v50, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
      }

      v53 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v60;
        _os_log_impl(&dword_195925000, v53, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
      }

      v54 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v24;
        _os_log_impl(&dword_195925000, v54, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
      }
    }

    else
    {
      v36 = [MEMORY[0x1E69A6138] registration];
      v58 = v36;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v36, OS_LOG_TYPE_DEFAULT, "Did not find an account to use! No auth token fetched.", buf, 2u);
      }

      v26 = 0;
      v25 = 0;
      v59 = 0;
      v60 = 0;
      v24 = 0;
    }
  }

LABEL_53:
  if ([(NSMutableSet *)self->_runningQueries containsObject:v15])
  {
    if (v61)
    {
      (v61)[2](v61, v15, v64, v62, v60, v24, v59, v25, v26);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:v15];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v55 = *MEMORY[0x1E69E9840];
}

- (id)_credentialForAccount:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  do
  {
    v9 = v5;
    v10 = v7;

    accountStore = self->_accountStore;
    v15 = 0;
    v5 = [(ACAccountStore *)accountStore credentialForAccount:v4 error:&v15];
    v6 = v15;

    if (!v6)
    {
      break;
    }

    v12 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v17 = v4;
      v18 = 2112;
      v19 = v6;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = 2;
      _os_log_error_impl(&dword_195925000, v12, OS_LOG_TYPE_ERROR, "Credential for account: %@  failed with error: %@ {attemptCount: %d, kAttemptLimit: %d}", buf, 0x22u);
    }

    v7 = 0;
    v8 = 2;
  }

  while ((v10 & 1) != 0);

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)requestAuthTokenForProfileID:(id)a3 username:(id)a4 service:(id)a5 badPassword:(BOOL)a6 showForgotPassword:(BOOL)a7 forceRenewal:(BOOL)a8 failIfNotSilent:(BOOL)a9 outRequestID:(id *)a10 completionBlock:(id)a11
{
  v11 = a8;
  v100 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a11;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v91 = _os_activity_create(&dword_195925000, "Password manager request auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v91, &state);
  v19 = [MEMORY[0x1E69A6138] registration];
  v62 = v11;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 138413058;
    v93 = v15;
    if (a9)
    {
      v20 = @"YES";
    }

    v94 = 2112;
    v95 = v16;
    v96 = 2112;
    v97 = v17;
    v98 = 2112;
    v99 = v20;
    _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Requesting auth token for profileID: %@ username: %@ service: %@ failIfNotSilent: %@", buf, 0x2Au);
  }

  v66 = _UIStringForIDSRegistrationServiceType();
  v21 = [v18 copy];

  v22 = v17;
  v23 = sub_19595B9DC(v22);
  v65 = v22;

  v24 = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v27 = self->_runningQueries;
    self->_runningQueries = v26;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:v24];
  if (a10)
  {
    v28 = v24;
    *a10 = v24;
  }

  accountStore = self->_accountStore;
  v30 = sub_195956704();
  v64 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v30];

  v31 = [(FTPasswordManager *)self _accountBasedOnProfileID:v15 orUsername:v16 inStore:self->_accountStore];
  if (!v31)
  {
    v31 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
    v32 = [(__CFString *)v16 _stripFZIDPrefix];
    [(__CFString *)v31 setUsername:v32];

    v33 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v93 = v31;
      _os_log_impl(&dword_195925000, v33, OS_LOG_TYPE_DEFAULT, "No account found, created new account: %@", buf, 0xCu);
    }

    v34 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v34, OS_LOG_TYPE_DEFAULT, "Adding and saving account", buf, 2u);
    }

    v35 = self->_accountStore;
    v89 = 0;
    v36 = [(ACAccountStore *)v35 saveVerifiedAccount:v31 error:&v89];
    v37 = v89;
    v38 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = @"NO";
      if (v36)
      {
        v39 = @"YES";
      }

      *buf = 138412546;
      v93 = v39;
      v94 = 2112;
      v95 = v37;
      _os_log_impl(&dword_195925000, v38, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v37)
    {
      v40 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }
  }

  sub_19595BB78(v31);
  if (self->_cachedAuthTokenInfo)
  {
    v41 = sub_195956E14(v31);
    v42 = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
    v43 = [v41 isEqualToIgnoringCase:v42];
  }

  else
  {
    v43 = 0;
  }

  v44 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = @"NO";
    if (v43)
    {
      v45 = @"YES";
    }

    *buf = 138412546;
    v93 = v45;
    v94 = 2112;
    v95 = v31;
    _os_log_impl(&dword_195925000, v44, OS_LOG_TYPE_DEFAULT, "Getting new auth token {shouldClearAccountCache: %@, account: %@}", buf, 0x16u);
  }

  v61 = [(FTPasswordManager *)self _credentialForAccount:v31];
  v46 = [v61 password];
  v47 = [v46 length] == 0;

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = sub_19595D74C;
  v86[3] = &unk_1E7435860;
  v88 = v43;
  v86[4] = self;
  v60 = v21;
  v87 = v60;
  v48 = MEMORY[0x19A8B8CC0](v86);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = sub_19595D890;
  v78[3] = &unk_1E74358D8;
  v49 = v15;
  v79 = v49;
  v50 = v31;
  v80 = v50;
  v51 = v16;
  v81 = v51;
  v52 = v23;
  v82 = v52;
  v83 = self;
  v53 = v24;
  v84 = v53;
  v54 = v48;
  v85 = v54;
  v55 = MEMORY[0x19A8B8CC0](v78);
  v56 = v55;
  if (v47 || v62)
  {
    [(FTPasswordManager *)self _renewCredentialsIfPossibleForAccount:v50 username:v51 inServiceIdentifier:v52 originalInServiceIdentifier:v65 serviceName:v66 failIfNotSilent:a9 renewHandler:v55 shortCircuitCompletionBlock:v54];
  }

  else
  {
    v63 = [v55 copy];

    v57 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v93 = v50;
      _os_log_impl(&dword_195925000, v57, OS_LOG_TYPE_DEFAULT, "Requesting verification for account: %@", buf, 0xCu);
    }

    v58 = self->_accountStore;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = sub_19595DF0C;
    v67[3] = &unk_1E7435978;
    v68 = v51;
    v69 = v52;
    v70 = v50;
    v71 = self;
    v72 = v53;
    v75 = v54;
    v73 = v66;
    v74 = v65;
    v77 = a9;
    v56 = v63;
    v76 = v56;
    [(ACAccountStore *)v58 verifyCredentialsForAccount:v70 withHandler:v67];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_renewCredentialsIfPossibleForAccount:(id)a3 username:(id)a4 inServiceIdentifier:(id)a5 originalInServiceIdentifier:(id)a6 serviceName:(id)a7 failIfNotSilent:(BOOL)a8 renewHandler:(id)a9 shortCircuitCompletionBlock:(id)a10
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v34 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = [v14 accountPropertyForKey:*MEMORY[0x1E69A48F0]];
  v21 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v14 accountProperties];
    *buf = 138412802;
    v36 = v14;
    v37 = 2112;
    v38 = v20;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "Checking the current status of the account {foundAccount: %@, status: %@, properties: %@}", buf, 0x20u);
  }

  if (v20 && ([v20 integerValue] == 5100 || objc_msgSend(v20, "integerValue") == 5103))
  {
    v23 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "Not requesting renewal for a Managed AppleID account", buf, 2u);
    }

    v24 = v34;
    if (v19)
    {
      BYTE2(v31) = 0;
      LOWORD(v31) = 256;
      (*(v19 + 2))(v19, 0, v34, v15, 0, 0, 0, 0, v20, v31);
    }
  }

  else
  {
    v25 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v14;
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "Requesting renewal for account: %@  service: %@", buf, 0x16u);
    }

    if (a8)
    {
      v26 = 1;
    }

    else
    {
      v27 = [v14 username];
      v26 = [(FTPasswordManager *)self _shouldForceSilentOnlyAuthForUsername:v27 serviceIdentifier:v16];
    }

    v28 = [v14 username];
    v29 = [(FTPasswordManager *)self _accountOptionsDictForRenewCredentialsForService:v17 username:v28 shouldFailIfNotSilent:v26];

    IDSAuthenticationDelegateUpdateTimeOfLastRequestPost();
    [(ACAccountStore *)self->_accountStore renewCredentialsForAccount:v14 options:v29 completion:v18];

    v24 = v34;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setPasswordForProfileID:(id)a3 username:(id)a4 service:(id)a5 password:(id)a6 outRequestID:(id *)a7 completionBlock:(id)a8
{
  v55 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v14 = a4;
  v15 = a5;
  v45 = a6;
  v16 = a8;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v48 = _os_activity_create(&dword_195925000, "Password manager set password", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v48, &state);
  v17 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v50 = v44;
    v51 = 2112;
    v52 = v14;
    v53 = 2112;
    v54 = v15;
    _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_DEFAULT, "Setting password for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v18 = sub_19595B9DC(v15);

  v19 = [v16 copy];
  v20 = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23 = self->_runningQueries;
    self->_runningQueries = v22;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:v20];
  if (a7)
  {
    v24 = v20;
    *a7 = v20;
  }

  if ([v18 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v26 = sub_195956704();
    v43 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v26];

    v27 = [(FTPasswordManager *)self _accountWithUsername:v14 inStore:self->_accountStore];
    if (v27)
    {
      v28 = [MEMORY[0x1E69A6138] registration];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v50 = v27;
      v29 = "Using account: %@";
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      v30 = [v14 _stripFZIDPrefix];
      [(__CFString *)v27 setUsername:v30];

      v28 = [MEMORY[0x1E69A6138] registration];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v50 = v27;
      v29 = "No account found, created new account: %@";
    }

    _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
LABEL_16:

    v31 = [(FTPasswordManager *)self _credentialForAccount:v27];
    sub_19595BB78(v27);
    if (v31)
    {
      [(__CFString *)v31 setPassword:v45];
      v32 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v31;
        v33 = "Updated credential: %@";
LABEL_21:
        _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
      }
    }

    else
    {
      v31 = [MEMORY[0x19A8B8550](@"ACAccountCredential" @"Accounts")];
      v32 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v31;
        v33 = "Creating credential: %@";
        goto LABEL_21;
      }
    }

    v34 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      sub_195964A34();
    }

    [(__CFString *)v27 setCredential:v31];
    [(__CFString *)v27 setAccountProperty:0 forKey:*MEMORY[0x1E69A48F0]];
    v35 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v35, OS_LOG_TYPE_DEFAULT, "Saving account", buf, 2u);
    }

    v36 = self->_accountStore;
    v46 = 0;
    v37 = [(ACAccountStore *)v36 saveVerifiedAccount:v27 error:&v46];
    v38 = v46;
    v39 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = @"NO";
      if (v37)
      {
        v40 = @"YES";
      }

      *buf = 138412546;
      v50 = v40;
      v51 = 2112;
      v52 = v38;
      _os_log_impl(&dword_195925000, v39, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v38)
    {
      v41 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }

    if (v19)
    {
      (v19)[2](v19, v20, v14, v18, v37);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:v20];

    goto LABEL_37;
  }

  [(FTPasswordManager *)self _setKeychainPassword:v45 forUsername:v14 service:v18];
  if (v19)
  {
    (v19)[2](v19, v20, v14, v18, 1);
  }

LABEL_37:

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v42 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAuthTokenReceiptTime:(double)a3 withinGracePeriod:(double)a4
{
  v24 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = v6 - a3;
  v9 = v6 - a3 < a4 && v6 > a3;
  v10 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v14 = 138413314;
    if (v9)
    {
      v11 = @"YES";
    }

    v15 = v11;
    v16 = 2048;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Checked auth token receipt date against grace period {isAuthTokenWithinGracePeriod: %@, authTokenReceiptTime: %f, gracePeriod: %f, now: %f, delta: %f}", &v14, 0x34u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (double)authTokenGracePeriod
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"ds-session-token-grace-period"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 6.0;
  }

  return v5;
}

- (void)removeAuthTokenAllowingGracePeriodForProfileID:(id)a3 username:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Removing auth token using grace period for profileID: %@ username: %@", buf, 0x16u);
  }

  v9 = [(FTPasswordManager *)self _accountBasedOnProfileID:v6 orUsername:v7 inStore:self->_accountStore];
  v10 = [MEMORY[0x1E69A6138] registration];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Using account: %@", buf, 0xCu);
    }

    v12 = [v9 accountPropertyForKey:*MEMORY[0x1E69A4910]];
    v10 = v12;
    if (v12 && ([v12 doubleValue], v14 = v13, [(FTPasswordManager *)self authTokenGracePeriod], [(FTPasswordManager *)self isAuthTokenReceiptTime:v14 withinGracePeriod:v15]))
    {
      v16 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v10;
        _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "Auth token receipt date falls within grace period -- skipping removal {authTokenReceiptTime: %@}", buf, 0xCu);
      }
    }

    else
    {
      v17 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v10;
        _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_DEFAULT, "Auth token receipt date falls outside of grace period -- removing auth token {authTokenReceiptTime: %@}", buf, 0xCu);
      }

      v18 = [(FTPasswordManager *)self _credentialForAccount:v9];
      if (!v18)
      {
        v18 = objc_alloc_init(MEMORY[0x19A8B8550](@"ACAccountCredential", @"Accounts"));
      }

      v16 = v18;
      [v18 setToken:0];
      if (self->_cachedAuthTokenInfo)
      {
        v19 = sub_195956E14(v9);
        v20 = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
        v21 = [v19 isEqualToIgnoringCase:v20];

        if (v21)
        {
          cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
          self->_cachedAuthTokenInfo = 0;
        }
      }

      v23 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v16;
        _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "Updating credential %@", buf, 0xCu);
      }

      [v9 setCredential:v16];
      [v9 setAuthenticated:0];
      v24 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&dword_195925000, v24, OS_LOG_TYPE_DEFAULT, "Saving account: %@", buf, 0xCu);
      }

      v25 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if ([v9 isAuthenticated])
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        *buf = 138412290;
        v36 = v26;
        _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "      Authenticated: %@", buf, 0xCu);
      }

      accountStore = self->_accountStore;
      v34 = 0;
      v28 = [(ACAccountStore *)accountStore saveVerifiedAccount:v9 error:&v34];
      v29 = v34;
      v30 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = @"YES";
        if (!v28)
        {
          v31 = @"NO";
        }

        *buf = 138412546;
        v36 = v31;
        v37 = 2112;
        v38 = v29;
        _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
      }

      if (v29)
      {
        v32 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_195964628();
        }
      }
    }
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "No account found for auth token removal -- ignoring request", buf, 2u);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)setAuthTokenForProfileID:(id)a3 username:(id)a4 service:(id)a5 authToken:(id)a6 selfHandle:(id)a7 accountStatus:(id)a8 outRequestID:(id *)a9 completionBlock:(id)a10
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = a3;
  v16 = a4;
  v17 = a5;
  v62 = a6;
  v61 = a7;
  v60 = a8;
  v18 = a10;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v66 = _os_activity_create(&dword_195925000, "Password manager set auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v66, &state);
  v19 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v68 = v63;
    v69 = 2112;
    v70 = v16;
    v71 = 2112;
    v72 = v17;
    v73 = 2112;
    v74 = v62;
    _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Setting auth token for profileID: %@ username: %@ service: %@  (%@)", buf, 0x2Au);
  }

  v20 = sub_19595B9DC(v17);

  v21 = [v18 copy];
  v22 = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = self->_runningQueries;
    self->_runningQueries = v24;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:v22];
  if (a9)
  {
    v26 = v22;
    *a9 = v22;
  }

  if ([v20 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v28 = sub_195956704();
    v59 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v28];

    v29 = [(FTPasswordManager *)self _accountBasedOnProfileID:v63 orUsername:v16 inStore:self->_accountStore];
    if (v29)
    {
      v30 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v29;
        v31 = "Using account: %@";
LABEL_15:
        _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
      }
    }

    else
    {
      v29 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      v32 = [v16 _stripFZIDPrefix];
      [(__CFString *)v29 setUsername:v32];

      v30 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v29;
        v31 = "No account found, created new account: %@";
        goto LABEL_15;
      }
    }

    sub_19595BB78(v29);
    v33 = [(FTPasswordManager *)self _credentialForAccount:v29];
    v34 = v33;
    if (v33)
    {
      [(__CFString *)v33 setToken:v62];
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x19A8B8550](@"ACAccountCredential", @"Accounts"));
      [(__CFString *)v34 setToken:v62];
    }

    [(FTPasswordManager *)self _updateStatus:v60 onAccount:v29];
    if (self->_cachedAuthTokenInfo)
    {
      v35 = sub_195956E14(v29);
      v36 = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
      v37 = [v35 isEqualToIgnoringCase:v36];

      if (v37)
      {
        cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
        self->_cachedAuthTokenInfo = 0;
      }
    }

    v39 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v34;
      _os_log_impl(&dword_195925000, v39, OS_LOG_TYPE_DEFAULT, "Updating credential %@", buf, 0xCu);
    }

    v40 = [v62 length];
    [(__CFString *)v29 setCredential:v34];
    [(__CFString *)v29 setAuthenticated:v40 != 0];
    if (v40)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v42 = v41;
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [(__CFString *)v29 setAccountProperty:v43 forKey:*MEMORY[0x1E69A4910]];

      v44 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v68 = v42;
        _os_log_impl(&dword_195925000, v44, OS_LOG_TYPE_DEFAULT, "Updated auth token receipt time {receiptTime: %f}", buf, 0xCu);
      }
    }

    if ([(__CFString *)v63 length])
    {
      v45 = sub_195956E14(v29);
      if (([v45 isEqualToIgnoringCase:v63] & 1) == 0)
      {
        v46 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v63;
          _os_log_impl(&dword_195925000, v46, OS_LOG_TYPE_DEFAULT, "Setting profile ID on account: %@", buf, 0xCu);
        }

        [(__CFString *)v29 setAccountProperty:v63 forKey:@"profile-id"];
      }
    }

    if ([(__CFString *)v61 length])
    {
      v47 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v61;
        _os_log_impl(&dword_195925000, v47, OS_LOG_TYPE_DEFAULT, "Setting self handle on account: %@", buf, 0xCu);
      }

      [(__CFString *)v29 setAccountProperty:v61 forKey:@"self-handle"];
    }

    v48 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v29;
      _os_log_impl(&dword_195925000, v48, OS_LOG_TYPE_DEFAULT, "Saving account: %@", buf, 0xCu);
    }

    v49 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [(__CFString *)v29 isAuthenticated];
      v51 = @"NO";
      if (v50)
      {
        v51 = @"YES";
      }

      *buf = 138412290;
      v68 = v51;
      _os_log_impl(&dword_195925000, v49, OS_LOG_TYPE_DEFAULT, "      Authenticated: %@", buf, 0xCu);
    }

    v52 = self->_accountStore;
    v64 = 0;
    v53 = [(ACAccountStore *)v52 saveVerifiedAccount:v29 error:&v64];
    v54 = v64;
    v55 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = @"NO";
      if (v53)
      {
        v56 = @"YES";
      }

      *buf = 138412546;
      v68 = v56;
      v69 = 2112;
      v70 = v54;
      _os_log_impl(&dword_195925000, v55, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v54)
    {
      v57 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }

    if (v21)
    {
      (v21)[2](v21, v22, v16, v20, v53);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:v22];

    goto LABEL_55;
  }

  [(FTPasswordManager *)self _setKeychainAuthToken:v62 forUsername:v16 service:v20];
  if (v21)
  {
    (v21)[2](v21, v22, v16, v20, 1);
  }

LABEL_55:

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v58 = *MEMORY[0x1E69E9840];
}

- (void)_updateStatus:(id)a3 onAccount:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (v10)
  {
    v6 = [v10 integerValue];
    if (v6 == 5103 || v6 == 5100)
    {
      v7 = *MEMORY[0x1E69A48F0];
      v8 = v5;
      v9 = v10;
    }

    else
    {
      if (v6)
      {
        goto LABEL_8;
      }

      [v5 setAccountProperty:0 forKey:*MEMORY[0x1E69A48F0]];
      v7 = *MEMORY[0x1E69A48E0];
      v8 = v5;
      v9 = 0;
    }

    [v8 setAccountProperty:v9 forKey:v7];
  }

LABEL_8:
}

- (void)setAccountStatus:(id)a3 forProfileID:(id)a4 username:(id)a5 service:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = v11;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Setting account status {profileID: %@, username: %@, service: %@, accountStatus: %@}", buf, 0x2Au);
  }

  v15 = sub_19595B9DC(v13);

  if ([v15 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v17 = sub_195956704();
    v18 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v17];

    v19 = [(FTPasswordManager *)self _accountBasedOnProfileID:v11 orUsername:v12 inStore:self->_accountStore];
    if (v19)
    {
      v20 = v19;
      v21 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "Using account: %@";
LABEL_9:
        _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      v23 = [v12 _stripFZIDPrefix];
      [(__CFString *)v20 setUsername:v23];

      v21 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "No account found, created new account: %@";
        goto LABEL_9;
      }
    }

    sub_19595BB78(v20);
    [(FTPasswordManager *)self _updateStatus:v10 onAccount:v20];
    v24 = self->_accountStore;
    v31 = 0;
    v25 = [(ACAccountStore *)v24 saveVerifiedAccount:v20 error:&v31];
    v26 = v31;
    v27 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      if (v25)
      {
        v28 = @"YES";
      }

      *buf = 138412546;
      v33 = v28;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v26)
    {
      v29 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_195964A9C();
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setHandlesForProfileID:(id)a3 username:(id)a4 service:(id)a5 handles:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Setting handles dictionary for profileID: %@ username: %@ service: %@  (%@)", buf, 0x2Au);
  }

  v15 = sub_19595B9DC(v12);

  if ([v15 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v17 = sub_195956704();
    v18 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v17];

    v19 = [(FTPasswordManager *)self _accountBasedOnProfileID:v10 orUsername:v11 inStore:self->_accountStore];
    if (v19)
    {
      v20 = v19;
      v21 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "Using account: %@";
LABEL_9:
        _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      v23 = [v11 _stripFZIDPrefix];
      [(__CFString *)v20 setUsername:v23];

      v21 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "No account found, created new account: %@";
        goto LABEL_9;
      }
    }

    sub_19595BB78(v20);
    [(__CFString *)v20 setAccountProperty:v13 forKey:@"handles"];
    v24 = self->_accountStore;
    v31 = 0;
    v25 = [(ACAccountStore *)v24 saveVerifiedAccount:v20 error:&v31];
    v26 = v31;
    v27 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      if (v25)
      {
        v28 = @"YES";
      }

      *buf = 138412546;
      v33 = v28;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v26)
    {
      v29 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)_accountOptionsDictForRenewCredentialsForService:(id)a3 username:(id)a4 shouldFailIfNotSilent:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E696AAE8];
  v9 = a4;
  v10 = [v8 bundleForClass:objc_opt_class()];
  if ([v7 isEqualToString:@"iMessage"])
  {
    v11 = *MEMORY[0x1E69A6540];
    v12 = @"iMessage";
    v13 = 4;
    goto LABEL_6;
  }

  if (([v7 isEqualToIgnoringCase:@"FaceTime"] & 1) != 0 || objc_msgSend(v7, "isEqualToIgnoringCase:", @"Calling"))
  {
    v11 = *MEMORY[0x1E69A61B8];
    v12 = @"FaceTime";
    v13 = 5;
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"iTunes"])
  {
    v13 = 2;
  }

  else
  {
    v12 = @"iCloud";
    v13 = 1;
    if ([v7 isEqualToString:@"iCloud"])
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  v11 = 0;
  v12 = @"account services";
LABEL_6:
  v14 = MEMORY[0x1E69A60B8];
  v15 = [MEMORY[0x1E69A60B8] sharedInstance];
  v16 = [v15 model];
  v17 = [v14 marketingNameForModel:v16];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enter the password for your Apple Account to continue using %@ on this %@:\n%%@", v12, v17];
  v19 = IMLocalizedStringFromTableInBundle();
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:v19, v9];

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (qword_1EAED7720 != -1)
  {
    sub_195964B14();
  }

  CFDictionarySetValue(v21, qword_1EAED7748, MEMORY[0x1E695E118]);
  v22 = v20;
  if (v22)
  {
    if (qword_1EAED7728 != -1)
    {
      sub_195964B28();
    }

    CFDictionarySetValue(v21, qword_1EAED7750, v22);
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  if (v23)
  {
    if (qword_1EAED7738 != -1)
    {
      sub_195964B3C();
    }

    CFDictionarySetValue(v21, qword_1EAED7760, v23);
  }

  v24 = v11;
  if (v24)
  {
    if (qword_1EAED7730 != -1)
    {
      sub_195964B50();
    }

    CFDictionarySetValue(v21, qword_1EAED7758, v24);
  }

  if (v5)
  {
    if (qword_1EAED7848 != -1)
    {
      sub_195964B64();
    }

    v25 = qword_1EAED7850;
  }

  else
  {
    v25 = @"AARenewShouldPostFollowUp";
  }

  CFDictionarySetValue(v21, v25, MEMORY[0x1E695E118]);
  v26 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v21;
    _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, "Verification Options Dictionary Contains: %@", buf, 0xCu);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)cancelRequestID:(id)a3 serviceIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    [(NSMutableSet *)self->_runningQueries removeObject:v9];
    if (![(NSMutableSet *)self->_runningQueries count])
    {
      runningQueries = self->_runningQueries;
      self->_runningQueries = 0;
    }
  }

  if (v6)
  {
    v8 = [MEMORY[0x1E69A6190] sharedInstance];
    [v8 removeNotificationsForServiceIdentifier:v6];
  }
}

+ (id)_loginUserNotificationForService:(id)a3 user:(id)a4 isForBadPassword:(BOOL)a5 showForgetPassword:(BOOL)a6 shouldRememberPassword:(BOOL)a7
{
  v7 = a5;
  v9 = a3;
  v48 = a4;
  if ([v9 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = IMLocalizedStringFromTableInBundle();

    v9 = v11;
  }

  v12 = [v48 stringByRemovingWhitespace];
  v13 = [v12 length];

  if (qword_1EAED7858 != -1)
  {
    sub_195964B78();
  }

  v14 = qword_1EAED7860;
  if (v13)
  {
    v15 = IMLocalizedStringFromTableInBundle();
    v16 = IMLocalizedStringFromTableInBundle();
    v17 = IMLocalizedStringFromTableInBundle();
    v18 = IMLocalizedStringFromTableInBundle();

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, v9];
    v20 = v48;
    if (!v48)
    {
      v20 = v9;
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v20];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&stru_1F09C7808, 0}];
    v23 = v16;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v16, 0}];
    v39 = v18;
    v47 = v17;
    v38 = v17;
    v25 = v18;
    v26 = v21;
    v46 = v19;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v19, *MEMORY[0x1E69A60A8], v21, *MEMORY[0x1E69A6088], v22, *MEMORY[0x1E69A60A0], v24, *MEMORY[0x1E69A6098], v38, *MEMORY[0x1E69A6078], v39, *MEMORY[0x1E69A6068], 0, *MEMORY[0x1E69A6080], 0, 0}];
    v28 = 0x10000;
  }

  else
  {
    v42 = IMLocalizedStringFromTableInBundle();
    v29 = IMLocalizedStringFromTableInBundle();
    v40 = v29;
    v47 = IMLocalizedStringFromTableInBundle();
    v45 = IMLocalizedStringFromTableInBundle();
    v46 = IMLocalizedStringFromTableInBundle();
    v44 = IMLocalizedStringFromTableInBundle();
    v22 = IMLocalizedStringFromTableInBundle();
    v24 = IMLocalizedStringFromTableInBundle();
    v30 = IMLocalizedStringFromTableInBundle();
    v43 = v30;

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:v42, v9];
    if (v7)
    {
      v31 = v24;
    }

    else
    {
      v31 = v30;
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:v31, v9];
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v48, &stru_1F09C7808, 0}];
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v29, v47, 0}];
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v22, 0}];
    v26 = v44;
    v25 = v45;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v41, *MEMORY[0x1E69A60A8], v32, *MEMORY[0x1E69A6088], v33, *MEMORY[0x1E69A60A0], v34, *MEMORY[0x1E69A6098], v35, *MEMORY[0x1E69A6070], v45, *MEMORY[0x1E69A6078], v44, *MEMORY[0x1E69A6068], 0, *MEMORY[0x1E69A6090], 0, *MEMORY[0x1E69A6080], 0, 0}];

    v23 = v40;
    v15 = v42;

    v28 = 0x20000;
  }

  v36 = [MEMORY[0x1E69A6188] userNotificationWithIdentifier:@"__ksPasswordPromptUserNotificationIdentifier" timeout:3 alertLevel:v28 displayFlags:v27 displayInformation:0.0];

  return v36;
}

- (id)acAccountWithProfileID:(id)a3 username:(id)a4 accountStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 length];
  if (v10 && v11)
  {
    v12 = [(FTPasswordManager *)self _accountBasedOnProfileID:v8 orUsername:v9 inStore:v10];
  }

  else
  {
    v13 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195964B8C();
    }

    v12 = 0;
  }

  return v12;
}

- (id)profileIDForACAccount:(id)a3
{
  if (a3)
  {
    v3 = sub_195956E14(a3);
    v4 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)accountWasRemoved:(id)a3
{
  v4 = a3;
  v5 = im_primary_queue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19596165C;
  v7[3] = &unk_1E74351D0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)accountCredentialChanged:(id)a3
{
  v4 = a3;
  v5 = im_primary_queue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1959617A0;
  v7[3] = &unk_1E74351D0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end