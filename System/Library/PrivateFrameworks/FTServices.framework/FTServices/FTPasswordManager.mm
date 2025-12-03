@interface FTPasswordManager
+ (id)_loginUserNotificationForService:(id)service user:(id)user isForBadPassword:(BOOL)password showForgetPassword:(BOOL)forgetPassword shouldRememberPassword:(BOOL)rememberPassword;
+ (id)sharedInstance;
- (BOOL)_shouldForceSilentOnlyAuthForUsername:(id)username serviceIdentifier:(id)identifier;
- (BOOL)_usernameHasCorrespondingIdMSAccount:(id)account;
- (BOOL)isAuthTokenReceiptTime:(double)time withinGracePeriod:(double)period;
- (FTPasswordManager)init;
- (FTPasswordManager)initWithUserNotificationCenter:(id)center;
- (double)authTokenGracePeriod;
- (id)_accountBasedOnProfileID:(id)d orUsername:(id)username inStore:(id)store;
- (id)_accountOptionsDictForRenewCredentialsForService:(id)service username:(id)username shouldFailIfNotSilent:(BOOL)silent;
- (id)_accountWithProfileID:(id)d username:(id)username inStore:(id)store;
- (id)_accountWithProfileIDMatchingUser:(id)user inStore:(id)store;
- (id)_accountWithUsername:(id)username inStore:(id)store;
- (id)_accountWithUsernameAlias:(id)alias inStore:(id)store;
- (id)_credentialForAccount:(id)account;
- (id)_findAccountOfType:(id)type InStore:(id)store withCriteria:(id)criteria;
- (id)_findGameCenterAccountInStore:(id)store withCriteria:(id)criteria;
- (id)_findIDSAccountInStore:(id)store withCriteria:(id)criteria;
- (id)_findIDSAccountsInStore:(id)store withCriteria:(id)criteria;
- (id)_gameCenterAccountWithUsername:(id)username;
- (id)_keychainAuthTokenForUsername:(id)username service:(id)service;
- (id)_keychainPasswordForUsername:(id)username service:(id)service;
- (id)_profileIDForUsername:(id)username inStore:(id)store;
- (id)acAccountWithProfileID:(id)d username:(id)username accountStore:(id)store;
- (id)gameCenterPropertiesFromAccountWithUsername:(id)username;
- (id)profileIDForACAccount:(id)account;
- (void)_renewCredentialsIfPossibleForAccount:(id)account username:(id)username inServiceIdentifier:(id)identifier originalInServiceIdentifier:(id)serviceIdentifier serviceName:(id)name failIfNotSilent:(BOOL)silent renewHandler:(id)handler shortCircuitCompletionBlock:(id)self0;
- (void)_setKeychainAuthToken:(id)token forUsername:(id)username service:(id)service;
- (void)_updateStatus:(id)status onAccount:(id)account;
- (void)accountCredentialChanged:(id)changed;
- (void)accountWasRemoved:(id)removed;
- (void)cancelRequestID:(id)d serviceIdentifier:(id)identifier;
- (void)cleanUpAccountsBasedOnInUseUsernamesBlock:(id)block profileIDBlock:(id)dBlock completionBlock:(id)completionBlock;
- (void)cleanUpAccountsWithUsername:(id)username orProfileID:(id)d basedOnInUseUsernames:(id)usernames profileIDs:(id)ds completionBlock:(id)block;
- (void)fetchAuthTokenForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block;
- (void)fetchPasswordForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block;
- (void)performCleanUpWithCompletion:(id)completion;
- (void)removeAuthTokenAllowingGracePeriodForProfileID:(id)d username:(id)username;
- (void)requestAuthTokenForProfileID:(id)d username:(id)username service:(id)service badPassword:(BOOL)password showForgotPassword:(BOOL)forgotPassword forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent outRequestID:(id *)self0 completionBlock:(id)self1;
- (void)setAccountStatus:(id)status forProfileID:(id)d username:(id)username service:(id)service;
- (void)setAuthTokenForProfileID:(id)d username:(id)username service:(id)service authToken:(id)token selfHandle:(id)handle accountStatus:(id)status outRequestID:(id *)iD completionBlock:(id)self0;
- (void)setHandlesForProfileID:(id)d username:(id)username service:(id)service handles:(id)handles;
- (void)setPasswordForProfileID:(id)d username:(id)username service:(id)service password:(id)password outRequestID:(id *)iD completionBlock:(id)block;
- (void)updatePreviousUsername:(id)username toNewUsername:(id)newUsername;
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
  mEMORY[0x1E69A6190] = [MEMORY[0x1E69A6190] sharedInstance];
  v4 = [(FTPasswordManager *)self initWithUserNotificationCenter:mEMORY[0x1E69A6190]];

  return v4;
}

- (FTPasswordManager)initWithUserNotificationCenter:(id)center
{
  centerCopy = center;
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

    objc_storeStrong(&v6->_userNotificationCenter, center);
  }

  return v6;
}

- (id)_keychainPasswordForUsername:(id)username service:(id)service
{
  usernameCopy = username;
  serviceCopy = service;
  IMGetKeychainPassword();
  v7 = 0;
  if (![v7 length])
  {
    v8 = IMGenerateLoginID();
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195964328();
    }

    IMGetKeychainPassword();
    v10 = v7;

    v7 = v10;
  }

  return v7;
}

- (void)_setKeychainAuthToken:(id)token forUsername:(id)username service:(id)service
{
  serviceCopy = service;
  tokenCopy = token;
  v8 = IMCanonicalFormForEmail();
  IMSetKeychainAuthToken();
}

- (id)_keychainAuthTokenForUsername:(id)username service:(id)service
{
  usernameCopy = username;
  serviceCopy = service;
  v7 = IMCanonicalFormForEmail();
  IMGetKeychainAuthToken();
  v8 = 0;
  if (![v8 length])
  {
    v9 = IMGenerateLoginID();
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195964328();
    }

    IMGetKeychainAuthToken();
    v11 = v8;

    v8 = v11;
  }

  return v8;
}

- (id)_findAccountOfType:(id)type InStore:(id)store withCriteria:(id)criteria
{
  v48 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  storeCopy = store;
  criteriaCopy = criteria;
  if (storeCopy)
  {
    if (!typeCopy)
    {
      typeCopy = sub_195956704();
    }

    v10 = [storeCopy accountTypeWithAccountTypeIdentifier:typeCopy];
    [storeCopy accountsWithAccountType:v10];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v11 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v36 = v10;
      v37 = storeCopy;
      v38 = typeCopy;
      v13 = *v42;
      v14 = (criteriaCopy + 2);
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
          registration = [*(v15 + 312) registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Account: %@", buf, 0xCu);
          }

          registration2 = [*(v15 + 312) registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
          {
            username = [v17 username];
            *buf = 138412290;
            v46 = username;
            _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "            username: %@", buf, 0xCu);
          }

          registration3 = [*(v15 + 312) registration];
          if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_195956E14(v17);
            *buf = 138412290;
            v46 = v22;
            _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "          profile ID: %@", buf, 0xCu);
          }

          registration4 = [*(v15 + 312) registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            v24 = sub_195956FA8(v17);
            sub_195956EDC(v24);
            v40 = v17;
            v25 = v15;
            v26 = criteriaCopy;
            v27 = v12;
            v28 = v14;
            v30 = v29 = v13;
            *buf = 138412290;
            v46 = v30;
            _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "               token: %@", buf, 0xCu);

            v13 = v29;
            v14 = v28;
            v12 = v27;
            criteriaCopy = v26;
            v15 = v25;
            v17 = v40;
          }

          registration5 = [*(v15 + 312) registration];
          if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
          {
            v32 = sub_195957020(v17);
            *buf = 138412290;
            v46 = v32;
            _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "vetted email handles: %@", buf, 0xCu);
          }

          if (criteriaCopy[2](criteriaCopy, v17))
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
      storeCopy = v37;
      typeCopy = v38;
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

- (id)_findIDSAccountsInStore:(id)store withCriteria:(id)criteria
{
  v45 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  criteriaCopy = criteria;
  if (storeCopy)
  {
    v33 = sub_195956704();
    v7 = [storeCopy accountTypeWithAccountTypeIdentifier:?];
    [MEMORY[0x1E695DF70] array];
    v35 = v34 = storeCopy;
    v32 = v7;
    [storeCopy accountsWithAccountType:v7];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v8 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      v11 = (criteriaCopy + 2);
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
          registration = [*(v12 + 312) registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v14;
            _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Account: %@", buf, 0xCu);
          }

          registration2 = [*(v12 + 312) registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
          {
            username = [v14 username];
            *buf = 138412290;
            v43 = username;
            _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "            username: %@", buf, 0xCu);
          }

          registration3 = [*(v12 + 312) registration];
          if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_195956E14(v14);
            *buf = 138412290;
            v43 = v19;
            _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "          profile ID: %@", buf, 0xCu);
          }

          registration4 = [*(v12 + 312) registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_195956FA8(v14);
            sub_195956EDC(v21);
            v37 = v14;
            v22 = v12;
            v23 = criteriaCopy;
            v24 = v9;
            v25 = v11;
            v27 = v26 = v10;
            *buf = 138412290;
            v43 = v27;
            _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "               token: %@", buf, 0xCu);

            v10 = v26;
            v11 = v25;
            v9 = v24;
            criteriaCopy = v23;
            v12 = v22;
            v14 = v37;
          }

          registration5 = [*(v12 + 312) registration];
          if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
          {
            v29 = sub_195957020(v14);
            *buf = 138412290;
            v43 = v29;
            _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "vetted email handles: %@", buf, 0xCu);
          }

          if (criteriaCopy[2](criteriaCopy, v14))
          {
            [v35 addObject:v14];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v9);
    }

    storeCopy = v34;
  }

  else
  {
    v35 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_findIDSAccountInStore:(id)store withCriteria:(id)criteria
{
  criteriaCopy = criteria;
  storeCopy = store;
  v8 = sub_195956704();
  v9 = [(FTPasswordManager *)self _findAccountOfType:v8 InStore:storeCopy withCriteria:criteriaCopy];

  return v9;
}

- (id)_findGameCenterAccountInStore:(id)store withCriteria:(id)criteria
{
  criteriaCopy = criteria;
  storeCopy = store;
  v8 = sub_195956748();
  v9 = [(FTPasswordManager *)self _findAccountOfType:v8 InStore:storeCopy withCriteria:criteriaCopy];

  return v9;
}

- (id)_accountWithUsername:(id)username inStore:(id)store
{
  usernameCopy = username;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195957800;
  v10[3] = &unk_1E7435680;
  v11 = usernameCopy;
  v7 = usernameCopy;
  v8 = [(FTPasswordManager *)self _findIDSAccountInStore:store withCriteria:v10];

  return v8;
}

- (id)_gameCenterAccountWithUsername:(id)username
{
  usernameCopy = username;
  accountStore = self->_accountStore;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195957A88;
  v9[3] = &unk_1E7435680;
  v10 = usernameCopy;
  v6 = usernameCopy;
  v7 = [(FTPasswordManager *)self _findGameCenterAccountInStore:accountStore withCriteria:v9];

  return v7;
}

- (id)gameCenterPropertiesFromAccountWithUsername:(id)username
{
  v22 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = usernameCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Fetching GS account for username %@", &v20, 0xCu);
  }

  v6 = [(FTPasswordManager *)self _gameCenterAccountWithUsername:usernameCopy];
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

    registration3 = v10;

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = registration3;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Properties on found account: %@", &v20, 0xCu);
    }

    v14 = objc_alloc(MEMORY[0x1E69A5278]);
    v15 = [registration3 objectForKey:*MEMORY[0x1E69A48C8]];
    v16 = [registration3 objectForKey:*MEMORY[0x1E69A48D8]];
    v17 = [registration3 objectForKey:*MEMORY[0x1E69A48D0]];
    v12 = [v14 initWithAssociationID:v15 sharingState:v16 lastUpdatedDate:v17];
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = usernameCopy;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Found no GameCenter account for username %@", &v20, 0xCu);
    }

    v12 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_accountWithUsernameAlias:(id)alias inStore:(id)store
{
  aliasCopy = alias;
  storeCopy = store;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195957EA4;
  v16[3] = &unk_1E7435680;
  v8 = aliasCopy;
  v17 = v8;
  v9 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v16];
  if (!v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195958084;
    v14[3] = &unk_1E7435680;
    v10 = v8;
    v15 = v10;
    v9 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v14];
    if (!v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_195958104;
      v12[3] = &unk_1E7435680;
      v13 = v10;
      v9 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v12];
    }
  }

  return v9;
}

- (id)_profileIDForUsername:(id)username inStore:(id)store
{
  v4 = [(FTPasswordManager *)self _accountWithUsername:username inStore:store];
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

- (id)_accountWithProfileID:(id)d username:(id)username inStore:(id)store
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  storeCopy = store;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = dCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Searching for profileID %@", buf, 0xCu);
  }

  if (!dCopy)
  {
    goto LABEL_17;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_195958560;
  v30[3] = &unk_1E7435680;
  v12 = dCopy;
  v31 = v12;
  v13 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v30];
  if (v13)
  {
    v14 = v13;
    registration5 = v31;
LABEL_20:

    goto LABEL_21;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Didn't find an authenticated account with a DSID; attempting to fall back to an unauthenticated match that has a password", buf, 2u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1959585FC;
  v28[3] = &unk_1E7435680;
  v17 = v12;
  v29 = v17;
  v14 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v28];
  if (!v14)
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Didn't find a DISD match with a password; attempting to fall back to an unauthenticated DISD and username match", buf, 2u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1959586B8;
    v25[3] = &unk_1E74356A8;
    v19 = v17;
    v26 = v19;
    v27 = usernameCopy;
    v14 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v25];
    if (!v14)
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Didn't find an unauthenticated DISD and username match; attempting to fall back to an unauthenticated DSID match", buf, 2u);
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_195958754;
      v23[3] = &unk_1E7435680;
      v24 = v19;
      v14 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v23];
    }
  }

  if (!v14)
  {
LABEL_17:
    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Didn't find a DSID match!", buf, 2u);
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_21:

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_accountWithProfileIDMatchingUser:(id)user inStore:(id)store
{
  v18 = *MEMORY[0x1E69E9840];
  userCopy = user;
  storeCopy = store;
  v8 = [(FTPasswordManager *)self _profileIDForUsername:userCopy inStore:storeCopy];
  v9 = [(FTPasswordManager *)self _accountWithProfileID:v8 username:userCopy inStore:storeCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = userCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Couldn't match based on any known DSID of %@; attempting to fall back to a username match", &v16, 0xCu);
  }

  v9 = [(FTPasswordManager *)self _accountWithUsername:userCopy inStore:storeCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = userCopy;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Couldn't find a username match for %@; attempting to search aliases of known accounts", &v16, 0xCu);
  }

  v9 = [(FTPasswordManager *)self _accountWithUsernameAlias:userCopy inStore:storeCopy];
  if (v9)
  {
LABEL_8:
    v12 = v9;
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Didn't find any matching account!", &v16, 2u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_accountBasedOnProfileID:(id)d orUsername:(id)username inStore:(id)store
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  storeCopy = store;
  v11 = [(FTPasswordManager *)self _accountWithProfileID:dCopy username:usernameCopy inStore:storeCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = dCopy;
      v20 = 2112;
      v21 = usernameCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Didn't find profileID %@; attempting to use username %@", &v18, 0x16u);
    }

    v13 = [(FTPasswordManager *)self _accountWithProfileIDMatchingUser:usernameCopy inStore:storeCopy];
  }

  v15 = v13;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)updatePreviousUsername:(id)username toNewUsername:(id)newUsername
{
  v23 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  newUsernameCopy = newUsername;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = usernameCopy;
    v21 = 2112;
    v22 = newUsernameCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Updating username on accounts { previousUsername: %@, newUsername: %@ }", buf, 0x16u);
  }

  v9 = sub_195956704();
  accountStore = self->_accountStore;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195958C90;
  v15[3] = &unk_1E7435720;
  v15[4] = self;
  v16 = usernameCopy;
  v17 = newUsernameCopy;
  v18 = v9;
  v11 = v9;
  v12 = newUsernameCopy;
  v13 = usernameCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v11 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldForceSilentOnlyAuthForUsername:(id)username serviceIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    v9 = [identifierCopy isEqualToString:@"com.apple.private.alloy.itunes"];
    v10 = 0;
    if (usernameCopy && v9)
    {
      v10 = ![(FTPasswordManager *)self _usernameHasCorrespondingIdMSAccount:usernameCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    v15 = 138412802;
    v16 = usernameCopy;
    v17 = 2112;
    if (v10)
    {
      v12 = @"YES";
    }

    v18 = v8;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined if we should force silent-only auth { username: %@, serviceIdentifier: %@, shouldForceSilentAuth: %@ }", &v15, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_usernameHasCorrespondingIdMSAccount:(id)account
{
  v35 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = accountCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Checking if username has a corresponding IdMS ACAccount instance { username: %@ }", buf, 0xCu);
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
        username = [v12 username];
        v14 = [username isEqualToString:accountCopy];

        registration2 = [MEMORY[0x1E69A6138] registration];
        v16 = os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            identifier = [v12 identifier];
            username2 = [v12 username];
            *buf = 138412546;
            v31 = identifier;
            v32 = 2112;
            v33 = username2;
            _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "IdMS ACAccount instance matches { accountID: %@, accountUsername: %@ }", buf, 0x16u);
          }

          v20 = 1;
          registration3 = v7;
          goto LABEL_21;
        }

        if (v16)
        {
          identifier2 = [v12 identifier];
          username3 = [v12 username];
          *buf = 138412546;
          v31 = identifier2;
          v32 = 2112;
          v33 = username3;
          _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "IdMS ACAccount instance does not match { accountID: %@, accountUsername: %@ }", buf, 0x16u);
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

  registration3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = accountCopy;
    _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Unable to find a corresponding IdMS ACAccount instance { username: %@ }", buf, 0xCu);
  }

  v20 = 0;
LABEL_21:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)performCleanUpWithCompletion:(id)completion
{
  completionCopy = completion;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Performing clean-up on accounts", buf, 2u);
  }

  v6 = sub_195956704();
  accountStore = self->_accountStore;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195959744;
  v10[3] = &unk_1E7435770;
  v11 = v6;
  v12 = completionCopy;
  v10[4] = self;
  v8 = v6;
  v9 = completionCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v8 completion:v10];
}

- (void)cleanUpAccountsWithUsername:(id)username orProfileID:(id)d basedOnInUseUsernames:(id)usernames profileIDs:(id)ds completionBlock:(id)block
{
  v42 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  dCopy = d;
  usernamesCopy = usernames;
  dsCopy = ds;
  blockCopy = block;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v35 = usernameCopy;
    v36 = 2112;
    v37 = dCopy;
    v38 = 2112;
    v39 = usernamesCopy;
    v40 = 2112;
    v41 = dsCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Cleaning up accounts {username: %@, profileID: %@, inUseUsernames: %@, inUseProfileIDs: %@ }", buf, 0x2Au);
  }

  v18 = sub_195956704();
  accountStore = self->_accountStore;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195959F3C;
  v27[3] = &unk_1E74357C0;
  v27[4] = self;
  v28 = usernameCopy;
  v29 = dCopy;
  v30 = usernamesCopy;
  v32 = v18;
  v33 = blockCopy;
  v31 = dsCopy;
  v20 = v18;
  v21 = blockCopy;
  v22 = dsCopy;
  v23 = usernamesCopy;
  v24 = dCopy;
  v25 = usernameCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v20 completion:v27];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpAccountsBasedOnInUseUsernamesBlock:(id)block profileIDBlock:(id)dBlock completionBlock:(id)completionBlock
{
  v30 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dBlockCopy = dBlock;
  completionBlockCopy = completionBlock;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8B8CC0](blockCopy);
    v13 = MEMORY[0x19A8B8CC0](dBlockCopy);
    *buf = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Begin cleaning up unused accounts { usernameBlock : %@, profileIDBlock : %@ }", buf, 0x16u);
  }

  v14 = sub_195956704();
  accountStore = self->_accountStore;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_19595A930;
  v21[3] = &unk_1E7435810;
  v23 = blockCopy;
  v24 = dBlockCopy;
  v25 = completionBlockCopy;
  v21[4] = self;
  v22 = v14;
  v16 = v14;
  v17 = completionBlockCopy;
  v18 = dBlockCopy;
  v19 = blockCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v16 completion:v21];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchPasswordForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v47 = _os_activity_create(&dword_195925000, "Password manager fetch password", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v47, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v49 = dCopy;
    v50 = 2112;
    v51 = usernameCopy;
    v52 = 2112;
    v53 = serviceCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Fetching password for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v44 = [blockCopy copy];
  v16 = sub_19595B9DC(serviceCopy);

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20 = self->_runningQueries;
    self->_runningQueries = v19;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v21 = stringGUID;
    *iD = stringGUID;
  }

  if ([v16 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    v22 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v22)
    {
      v42 = [(FTPasswordManager *)self _credentialForAccount:v22];
      v23 = sub_195956E14(v22);
      v24 = sub_19595BAB4(v22);
      password = [(__CFString *)v42 password];
      sub_19595BB78(v22);
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v22;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Found account: %@", buf, 0xCu);
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v42;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "  Credential: %@", buf, 0xCu);
      }

      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        accountType = [(__CFString *)v22 accountType];
        identifier = [accountType identifier];
        *buf = 138412290;
        v49 = identifier;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "         => Type: %@", buf, 0xCu);
      }

      registration5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
      {
        username = [(__CFString *)v22 username];
        *buf = 138412290;
        v49 = username;
        _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "     => Username: %@", buf, 0xCu);
      }

      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        password2 = [(__CFString *)v42 password];
        v34 = @"YES";
        if (!password2)
        {
          v34 = @"NO";
        }

        *buf = 138412290;
        v49 = v34;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "     => Password: %@", buf, 0xCu);
      }

      registration7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
      {
        token = [(__CFString *)v42 token];
        v37 = sub_195956EDC(token);
        *buf = 138412290;
        v49 = v37;
        _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
      }

      registration8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v23;
        _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
      }

      registration9 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v24;
        _os_log_impl(&dword_195925000, registration9, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
      }
    }

    else
    {
      registration10 = [MEMORY[0x1E69A6138] registration];
      v42 = registration10;
      if (os_log_type_enabled(registration10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration10, OS_LOG_TYPE_DEFAULT, "Did not find an account to use! No password fetched.", buf, 2u);
      }

      password = 0;
      v24 = 0;
      v23 = 0;
    }
  }

  else
  {
    password = [(FTPasswordManager *)self _keychainPasswordForUsername:usernameCopy service:v16];
    v24 = 0;
    v23 = 0;
  }

  if ([(NSMutableSet *)self->_runningQueries containsObject:stringGUID])
  {
    if (v44)
    {
      (v44)[2](v44, stringGUID, usernameCopy, v16, v23, v24, password, 0, 0);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v41 = *MEMORY[0x1E69E9840];
}

- (void)fetchAuthTokenForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block
{
  v74 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v67 = _os_activity_create(&dword_195925000, "Password manager fetch auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v67, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v69 = dCopy;
    v70 = 2112;
    v71 = usernameCopy;
    v72 = 2112;
    v73 = serviceCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Fetching auth token for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v61 = [blockCopy copy];
  v62 = sub_19595B9DC(serviceCopy);

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = self->_runningQueries;
    self->_runningQueries = v17;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v19 = stringGUID;
    *iD = stringGUID;
  }

  p_cachedAuthTokenInfo = &self->_cachedAuthTokenInfo;
  cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
  if (cachedAuthTokenInfo && (-[_FTPasswordManagerCachedAuthTokenInfo profileID](cachedAuthTokenInfo, "profileID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToIgnoringCase:dCopy], v22, v23))
  {
    profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo profileID];
    selfID = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo selfID];
    token = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo token];
    alertInfo = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo alertInfo];
    status = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo status];
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *p_cachedAuthTokenInfo;
      *buf = 138412290;
      v69 = v28;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Found cached account info: %@", buf, 0xCu);
    }

    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_195956EDC(token);
      *buf = 138412290;
      v69 = v30;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
    }

    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = profileID;
      _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
    }

    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = selfID;
      _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
    }
  }

  else
  {
    if (![v62 isEqualToString:*MEMORY[0x1E69A50B0]])
    {
      token = [(FTPasswordManager *)self _keychainAuthTokenForUsername:usernameCopy service:v62];
      status = 0;
      alertInfo = 0;
      selfID = 0;
      profileID = 0;
      goto LABEL_53;
    }

    registration5 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (registration5)
    {
      v58 = [(FTPasswordManager *)self _credentialForAccount:registration5];
      profileID = sub_195956E14(registration5);
      selfID = sub_19595BAB4(registration5);
      token = [v58 token];
      accountProperties = [registration5 accountProperties];
      v57 = [accountProperties objectForKey:*MEMORY[0x1E69A48F0]];

      if ([v57 integerValue] == 5100 || objc_msgSend(v57, "integerValue") == 5103)
      {
        status = v57;
        accountProperties2 = [registration5 accountProperties];
        v35 = [accountProperties2 objectForKey:@"alert"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          alertInfo = v35;
        }

        else
        {
          alertInfo = 0;
        }
      }

      else
      {
        status = 0;
        alertInfo = 0;
      }

      v37 = objc_alloc_init(_FTPasswordManagerCachedAuthTokenInfo);
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setProfileID:profileID];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setSelfID:selfID];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setToken:token];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setAlertInfo:alertInfo];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setStatus:status];
      objc_storeStrong(&self->_cachedAuthTokenInfo, v37);
      sub_19595BB78(registration5);
      accountStore = self->_accountStore;
      v65 = 0;
      [(ACAccountStore *)accountStore registerSynchronouslyWithError:&v65];
      v56 = v65;
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v56;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "  Monitor error: %@", buf, 0xCu);
      }

      registration7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = registration5;
        _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "  Found account: %@", buf, 0xCu);
      }

      registration8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v58;
        _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "  Credential: %@", buf, 0xCu);
      }

      registration9 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
      {
        accountType = [registration5 accountType];
        identifier = [accountType identifier];
        *buf = 138412290;
        v69 = identifier;
        _os_log_impl(&dword_195925000, registration9, OS_LOG_TYPE_DEFAULT, "         => Type: %@", buf, 0xCu);
      }

      registration10 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration10, OS_LOG_TYPE_DEFAULT))
      {
        username = [registration5 username];
        *buf = 138412290;
        v69 = username;
        _os_log_impl(&dword_195925000, registration10, OS_LOG_TYPE_DEFAULT, "     => Username: %@", buf, 0xCu);
      }

      registration11 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration11, OS_LOG_TYPE_DEFAULT))
      {
        password = [v58 password];
        v49 = @"YES";
        if (!password)
        {
          v49 = @"NO";
        }

        *buf = 138412290;
        v69 = v49;
        _os_log_impl(&dword_195925000, registration11, OS_LOG_TYPE_DEFAULT, "     => Password: %@", buf, 0xCu);
      }

      registration12 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration12, OS_LOG_TYPE_DEFAULT))
      {
        token2 = [v58 token];
        v52 = sub_195956EDC(token2);
        *buf = 138412290;
        v69 = v52;
        _os_log_impl(&dword_195925000, registration12, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
      }

      registration13 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = profileID;
        _os_log_impl(&dword_195925000, registration13, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
      }

      registration14 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = selfID;
        _os_log_impl(&dword_195925000, registration14, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
      }
    }

    else
    {
      registration15 = [MEMORY[0x1E69A6138] registration];
      v58 = registration15;
      if (os_log_type_enabled(registration15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration15, OS_LOG_TYPE_DEFAULT, "Did not find an account to use! No auth token fetched.", buf, 2u);
      }

      status = 0;
      alertInfo = 0;
      token = 0;
      profileID = 0;
      selfID = 0;
    }
  }

LABEL_53:
  if ([(NSMutableSet *)self->_runningQueries containsObject:stringGUID])
  {
    if (v61)
    {
      (v61)[2](v61, stringGUID, usernameCopy, v62, profileID, selfID, token, alertInfo, status);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v55 = *MEMORY[0x1E69E9840];
}

- (id)_credentialForAccount:(id)account
{
  v24 = *MEMORY[0x1E69E9840];
  accountCopy = account;
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
    v5 = [(ACAccountStore *)accountStore credentialForAccount:accountCopy error:&v15];
    v6 = v15;

    if (!v6)
    {
      break;
    }

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v17 = accountCopy;
      v18 = 2112;
      v19 = v6;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = 2;
      _os_log_error_impl(&dword_195925000, registration, OS_LOG_TYPE_ERROR, "Credential for account: %@  failed with error: %@ {attemptCount: %d, kAttemptLimit: %d}", buf, 0x22u);
    }

    v7 = 0;
    v8 = 2;
  }

  while ((v10 & 1) != 0);

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)requestAuthTokenForProfileID:(id)d username:(id)username service:(id)service badPassword:(BOOL)password showForgotPassword:(BOOL)forgotPassword forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent outRequestID:(id *)self0 completionBlock:(id)self1
{
  renewalCopy = renewal;
  v100 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v91 = _os_activity_create(&dword_195925000, "Password manager request auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v91, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  v62 = renewalCopy;
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 138413058;
    v93 = dCopy;
    if (silent)
    {
      v20 = @"YES";
    }

    v94 = 2112;
    v95 = usernameCopy;
    v96 = 2112;
    v97 = serviceCopy;
    v98 = 2112;
    v99 = v20;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Requesting auth token for profileID: %@ username: %@ service: %@ failIfNotSilent: %@", buf, 0x2Au);
  }

  v66 = _UIStringForIDSRegistrationServiceType();
  v21 = [blockCopy copy];

  v22 = serviceCopy;
  v23 = sub_19595B9DC(v22);
  v65 = v22;

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v27 = self->_runningQueries;
    self->_runningQueries = v26;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v28 = stringGUID;
    *iD = stringGUID;
  }

  accountStore = self->_accountStore;
  v30 = sub_195956704();
  v64 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v30];

  v31 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
  if (!v31)
  {
    v31 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
    _stripFZIDPrefix = [(__CFString *)usernameCopy _stripFZIDPrefix];
    [(__CFString *)v31 setUsername:_stripFZIDPrefix];

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v93 = v31;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "No account found, created new account: %@", buf, 0xCu);
    }

    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Adding and saving account", buf, 2u);
    }

    v35 = self->_accountStore;
    v89 = 0;
    v36 = [(ACAccountStore *)v35 saveVerifiedAccount:v31 error:&v89];
    v37 = v89;
    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v37)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }
  }

  sub_19595BB78(v31);
  if (self->_cachedAuthTokenInfo)
  {
    v41 = sub_195956E14(v31);
    profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
    v43 = [v41 isEqualToIgnoringCase:profileID];
  }

  else
  {
    v43 = 0;
  }

  registration5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Getting new auth token {shouldClearAccountCache: %@, account: %@}", buf, 0x16u);
  }

  v61 = [(FTPasswordManager *)self _credentialForAccount:v31];
  password = [v61 password];
  v47 = [password length] == 0;

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
  v49 = dCopy;
  v79 = v49;
  v50 = v31;
  v80 = v50;
  v51 = usernameCopy;
  v81 = v51;
  v52 = v23;
  v82 = v52;
  selfCopy = self;
  v53 = stringGUID;
  v84 = v53;
  v54 = v48;
  v85 = v54;
  v55 = MEMORY[0x19A8B8CC0](v78);
  v56 = v55;
  if (v47 || v62)
  {
    [(FTPasswordManager *)self _renewCredentialsIfPossibleForAccount:v50 username:v51 inServiceIdentifier:v52 originalInServiceIdentifier:v65 serviceName:v66 failIfNotSilent:silent renewHandler:v55 shortCircuitCompletionBlock:v54];
  }

  else
  {
    v63 = [v55 copy];

    registration6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v93 = v50;
      _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Requesting verification for account: %@", buf, 0xCu);
    }

    v58 = self->_accountStore;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = sub_19595DF0C;
    v67[3] = &unk_1E7435978;
    v68 = v51;
    v69 = v52;
    v70 = v50;
    selfCopy2 = self;
    v72 = v53;
    v75 = v54;
    v73 = v66;
    v74 = v65;
    silentCopy = silent;
    v56 = v63;
    v76 = v56;
    [(ACAccountStore *)v58 verifyCredentialsForAccount:v70 withHandler:v67];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_renewCredentialsIfPossibleForAccount:(id)account username:(id)username inServiceIdentifier:(id)identifier originalInServiceIdentifier:(id)serviceIdentifier serviceName:(id)name failIfNotSilent:(BOOL)silent renewHandler:(id)handler shortCircuitCompletionBlock:(id)self0
{
  v41 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  usernameCopy = username;
  identifierCopy = identifier;
  serviceIdentifierCopy = serviceIdentifier;
  nameCopy = name;
  handlerCopy = handler;
  blockCopy = block;
  v20 = [accountCopy accountPropertyForKey:*MEMORY[0x1E69A48F0]];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    accountProperties = [accountCopy accountProperties];
    *buf = 138412802;
    v36 = accountCopy;
    v37 = 2112;
    v38 = v20;
    v39 = 2112;
    v40 = accountProperties;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Checking the current status of the account {foundAccount: %@, status: %@, properties: %@}", buf, 0x20u);
  }

  if (v20 && ([v20 integerValue] == 5100 || objc_msgSend(v20, "integerValue") == 5103))
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Not requesting renewal for a Managed AppleID account", buf, 2u);
    }

    v24 = usernameCopy;
    if (blockCopy)
    {
      BYTE2(v31) = 0;
      LOWORD(v31) = 256;
      (*(blockCopy + 2))(blockCopy, 0, usernameCopy, identifierCopy, 0, 0, 0, 0, v20, v31);
    }
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = accountCopy;
      v37 = 2112;
      v38 = nameCopy;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Requesting renewal for account: %@  service: %@", buf, 0x16u);
    }

    if (silent)
    {
      v26 = 1;
    }

    else
    {
      username = [accountCopy username];
      v26 = [(FTPasswordManager *)self _shouldForceSilentOnlyAuthForUsername:username serviceIdentifier:serviceIdentifierCopy];
    }

    username2 = [accountCopy username];
    v29 = [(FTPasswordManager *)self _accountOptionsDictForRenewCredentialsForService:nameCopy username:username2 shouldFailIfNotSilent:v26];

    IDSAuthenticationDelegateUpdateTimeOfLastRequestPost();
    [(ACAccountStore *)self->_accountStore renewCredentialsForAccount:accountCopy options:v29 completion:handlerCopy];

    v24 = usernameCopy;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setPasswordForProfileID:(id)d username:(id)username service:(id)service password:(id)password outRequestID:(id *)iD completionBlock:(id)block
{
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  passwordCopy = password;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v48 = _os_activity_create(&dword_195925000, "Password manager set password", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v48, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v50 = dCopy;
    v51 = 2112;
    v52 = usernameCopy;
    v53 = 2112;
    v54 = serviceCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting password for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v18 = sub_19595B9DC(serviceCopy);

  v19 = [blockCopy copy];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23 = self->_runningQueries;
    self->_runningQueries = v22;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v24 = stringGUID;
    *iD = stringGUID;
  }

  if ([v18 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v26 = sub_195956704();
    v43 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v26];

    v27 = [(FTPasswordManager *)self _accountWithUsername:usernameCopy inStore:self->_accountStore];
    if (v27)
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (!os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
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
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v27 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (!os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v50 = v27;
      v29 = "No account found, created new account: %@";
    }

    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
LABEL_16:

    v31 = [(FTPasswordManager *)self _credentialForAccount:v27];
    sub_19595BB78(v27);
    if (v31)
    {
      [(__CFString *)v31 setPassword:passwordCopy];
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v31;
        v33 = "Updated credential: %@";
LABEL_21:
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
      }
    }

    else
    {
      v31 = [MEMORY[0x19A8B8550](@"ACAccountCredential" @"Accounts")];
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v31;
        v33 = "Creating credential: %@";
        goto LABEL_21;
      }
    }

    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEBUG))
    {
      sub_195964A34();
    }

    [(__CFString *)v27 setCredential:v31];
    [(__CFString *)v27 setAccountProperty:0 forKey:*MEMORY[0x1E69A48F0]];
    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Saving account", buf, 2u);
    }

    v36 = self->_accountStore;
    v46 = 0;
    v37 = [(ACAccountStore *)v36 saveVerifiedAccount:v27 error:&v46];
    v38 = v46;
    registration6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v38)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }

    if (v19)
    {
      (v19)[2](v19, stringGUID, usernameCopy, v18, v37);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];

    goto LABEL_37;
  }

  [(FTPasswordManager *)self _setKeychainPassword:passwordCopy forUsername:usernameCopy service:v18];
  if (v19)
  {
    (v19)[2](v19, stringGUID, usernameCopy, v18, 1);
  }

LABEL_37:

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v42 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAuthTokenReceiptTime:(double)time withinGracePeriod:(double)period
{
  v24 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = v6 - time;
  v9 = v6 - time < period && v6 > time;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v14 = 138413314;
    if (v9)
    {
      v11 = @"YES";
    }

    v15 = v11;
    v16 = 2048;
    timeCopy = time;
    v18 = 2048;
    periodCopy = period;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Checked auth token receipt date against grace period {isAuthTokenWithinGracePeriod: %@, authTokenReceiptTime: %f, gracePeriod: %f, now: %f, delta: %f}", &v14, 0x34u);
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

- (void)removeAuthTokenAllowingGracePeriodForProfileID:(id)d username:(id)username
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = dCopy;
    v37 = 2112;
    v38 = usernameCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Removing auth token using grace period for profileID: %@ username: %@", buf, 0x16u);
  }

  v9 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
  registration2 = [MEMORY[0x1E69A6138] registration];
  v11 = os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Using account: %@", buf, 0xCu);
    }

    v12 = [v9 accountPropertyForKey:*MEMORY[0x1E69A4910]];
    registration2 = v12;
    if (v12 && ([v12 doubleValue], v14 = v13, [(FTPasswordManager *)self authTokenGracePeriod], [(FTPasswordManager *)self isAuthTokenReceiptTime:v14 withinGracePeriod:v15]))
    {
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = registration2;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Auth token receipt date falls within grace period -- skipping removal {authTokenReceiptTime: %@}", buf, 0xCu);
      }
    }

    else
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = registration2;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Auth token receipt date falls outside of grace period -- removing auth token {authTokenReceiptTime: %@}", buf, 0xCu);
      }

      v18 = [(FTPasswordManager *)self _credentialForAccount:v9];
      if (!v18)
      {
        v18 = objc_alloc_init(MEMORY[0x19A8B8550](@"ACAccountCredential", @"Accounts"));
      }

      registration3 = v18;
      [v18 setToken:0];
      if (self->_cachedAuthTokenInfo)
      {
        v19 = sub_195956E14(v9);
        profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
        v21 = [v19 isEqualToIgnoringCase:profileID];

        if (v21)
        {
          cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
          self->_cachedAuthTokenInfo = 0;
        }
      }

      registration5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = registration3;
        _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Updating credential %@", buf, 0xCu);
      }

      [v9 setCredential:registration3];
      [v9 setAuthenticated:0];
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Saving account: %@", buf, 0xCu);
      }

      registration7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "      Authenticated: %@", buf, 0xCu);
      }

      accountStore = self->_accountStore;
      v34 = 0;
      v28 = [(ACAccountStore *)accountStore saveVerifiedAccount:v9 error:&v34];
      v29 = v34;
      registration8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
      }

      if (v29)
      {
        warning = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
        {
          sub_195964628();
        }
      }
    }
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "No account found for auth token removal -- ignoring request", buf, 2u);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)setAuthTokenForProfileID:(id)d username:(id)username service:(id)service authToken:(id)token selfHandle:(id)handle accountStatus:(id)status outRequestID:(id *)iD completionBlock:(id)self0
{
  v75 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  tokenCopy = token;
  handleCopy = handle;
  statusCopy = status;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v66 = _os_activity_create(&dword_195925000, "Password manager set auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v66, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v68 = dCopy;
    v69 = 2112;
    v70 = usernameCopy;
    v71 = 2112;
    v72 = serviceCopy;
    v73 = 2112;
    v74 = tokenCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting auth token for profileID: %@ username: %@ service: %@  (%@)", buf, 0x2Au);
  }

  v20 = sub_19595B9DC(serviceCopy);

  v21 = [blockCopy copy];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = self->_runningQueries;
    self->_runningQueries = v24;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v26 = stringGUID;
    *iD = stringGUID;
  }

  if ([v20 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v28 = sub_195956704();
    v59 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v28];

    v29 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v29)
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v29;
        v31 = "Using account: %@";
LABEL_15:
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
      }
    }

    else
    {
      v29 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v29 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
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
      [(__CFString *)v33 setToken:tokenCopy];
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x19A8B8550](@"ACAccountCredential", @"Accounts"));
      [(__CFString *)v34 setToken:tokenCopy];
    }

    [(FTPasswordManager *)self _updateStatus:statusCopy onAccount:v29];
    if (self->_cachedAuthTokenInfo)
    {
      v35 = sub_195956E14(v29);
      profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
      v37 = [v35 isEqualToIgnoringCase:profileID];

      if (v37)
      {
        cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
        self->_cachedAuthTokenInfo = 0;
      }
    }

    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v34;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Updating credential %@", buf, 0xCu);
    }

    v40 = [tokenCopy length];
    [(__CFString *)v29 setCredential:v34];
    [(__CFString *)v29 setAuthenticated:v40 != 0];
    if (v40)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v42 = v41;
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [(__CFString *)v29 setAccountProperty:v43 forKey:*MEMORY[0x1E69A4910]];

      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v68 = v42;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Updated auth token receipt time {receiptTime: %f}", buf, 0xCu);
      }
    }

    if ([(__CFString *)dCopy length])
    {
      v45 = sub_195956E14(v29);
      if (([v45 isEqualToIgnoringCase:dCopy] & 1) == 0)
      {
        registration5 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = dCopy;
          _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Setting profile ID on account: %@", buf, 0xCu);
        }

        [(__CFString *)v29 setAccountProperty:dCopy forKey:@"profile-id"];
      }
    }

    if ([(__CFString *)handleCopy length])
    {
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = handleCopy;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Setting self handle on account: %@", buf, 0xCu);
      }

      [(__CFString *)v29 setAccountProperty:handleCopy forKey:@"self-handle"];
    }

    registration7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v29;
      _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "Saving account: %@", buf, 0xCu);
    }

    registration8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
    {
      isAuthenticated = [(__CFString *)v29 isAuthenticated];
      v51 = @"NO";
      if (isAuthenticated)
      {
        v51 = @"YES";
      }

      *buf = 138412290;
      v68 = v51;
      _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "      Authenticated: %@", buf, 0xCu);
    }

    v52 = self->_accountStore;
    v64 = 0;
    v53 = [(ACAccountStore *)v52 saveVerifiedAccount:v29 error:&v64];
    v54 = v64;
    registration9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_195925000, registration9, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v54)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }

    if (v21)
    {
      (v21)[2](v21, stringGUID, usernameCopy, v20, v53);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];

    goto LABEL_55;
  }

  [(FTPasswordManager *)self _setKeychainAuthToken:tokenCopy forUsername:usernameCopy service:v20];
  if (v21)
  {
    (v21)[2](v21, stringGUID, usernameCopy, v20, 1);
  }

LABEL_55:

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v58 = *MEMORY[0x1E69E9840];
}

- (void)_updateStatus:(id)status onAccount:(id)account
{
  statusCopy = status;
  accountCopy = account;
  if (statusCopy)
  {
    integerValue = [statusCopy integerValue];
    if (integerValue == 5103 || integerValue == 5100)
    {
      v7 = *MEMORY[0x1E69A48F0];
      v8 = accountCopy;
      v9 = statusCopy;
    }

    else
    {
      if (integerValue)
      {
        goto LABEL_8;
      }

      [accountCopy setAccountProperty:0 forKey:*MEMORY[0x1E69A48F0]];
      v7 = *MEMORY[0x1E69A48E0];
      v8 = accountCopy;
      v9 = 0;
    }

    [v8 setAccountProperty:v9 forKey:v7];
  }

LABEL_8:
}

- (void)setAccountStatus:(id)status forProfileID:(id)d username:(id)username service:(id)service
{
  v40 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = dCopy;
    v34 = 2112;
    v35 = usernameCopy;
    v36 = 2112;
    v37 = serviceCopy;
    v38 = 2112;
    v39 = statusCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting account status {profileID: %@, username: %@, service: %@, accountStatus: %@}", buf, 0x2Au);
  }

  v15 = sub_19595B9DC(serviceCopy);

  if ([v15 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v17 = sub_195956704();
    v18 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v17];

    v19 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v19)
    {
      v20 = v19;
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "Using account: %@";
LABEL_9:
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v20 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "No account found, created new account: %@";
        goto LABEL_9;
      }
    }

    sub_19595BB78(v20);
    [(FTPasswordManager *)self _updateStatus:statusCopy onAccount:v20];
    v24 = self->_accountStore;
    v31 = 0;
    v25 = [(ACAccountStore *)v24 saveVerifiedAccount:v20 error:&v31];
    v26 = v31;
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v26)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
      {
        sub_195964A9C();
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setHandlesForProfileID:(id)d username:(id)username service:(id)service handles:(id)handles
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  handlesCopy = handles;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = dCopy;
    v34 = 2112;
    v35 = usernameCopy;
    v36 = 2112;
    v37 = serviceCopy;
    v38 = 2112;
    v39 = handlesCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting handles dictionary for profileID: %@ username: %@ service: %@  (%@)", buf, 0x2Au);
  }

  v15 = sub_19595B9DC(serviceCopy);

  if ([v15 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    accountStore = self->_accountStore;
    v17 = sub_195956704();
    v18 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v17];

    v19 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v19)
    {
      v20 = v19;
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "Using account: %@";
LABEL_9:
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v20 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        v22 = "No account found, created new account: %@";
        goto LABEL_9;
      }
    }

    sub_19595BB78(v20);
    [(__CFString *)v20 setAccountProperty:handlesCopy forKey:@"handles"];
    v24 = self->_accountStore;
    v31 = 0;
    v25 = [(ACAccountStore *)v24 saveVerifiedAccount:v20 error:&v31];
    v26 = v31;
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v26)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)_accountOptionsDictForRenewCredentialsForService:(id)service username:(id)username shouldFailIfNotSilent:(BOOL)silent
{
  silentCopy = silent;
  v31 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v8 = MEMORY[0x1E696AAE8];
  usernameCopy = username;
  v10 = [v8 bundleForClass:objc_opt_class()];
  if ([serviceCopy isEqualToString:@"iMessage"])
  {
    v11 = *MEMORY[0x1E69A6540];
    v12 = @"iMessage";
    v13 = 4;
    goto LABEL_6;
  }

  if (([serviceCopy isEqualToIgnoringCase:@"FaceTime"] & 1) != 0 || objc_msgSend(serviceCopy, "isEqualToIgnoringCase:", @"Calling"))
  {
    v11 = *MEMORY[0x1E69A61B8];
    v12 = @"FaceTime";
    v13 = 5;
    goto LABEL_6;
  }

  if ([serviceCopy isEqualToString:@"iTunes"])
  {
    v13 = 2;
  }

  else
  {
    v12 = @"iCloud";
    v13 = 1;
    if ([serviceCopy isEqualToString:@"iCloud"])
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  v11 = 0;
  v12 = @"account services";
LABEL_6:
  v14 = MEMORY[0x1E69A60B8];
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  model = [mEMORY[0x1E69A60B8] model];
  v17 = [v14 marketingNameForModel:model];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enter the password for your Apple Account to continue using %@ on this %@:\n%%@", v12, v17];
  v19 = IMLocalizedStringFromTableInBundle();
  usernameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v19, usernameCopy];

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (qword_1EAED7720 != -1)
  {
    sub_195964B14();
  }

  CFDictionarySetValue(v21, qword_1EAED7748, MEMORY[0x1E695E118]);
  v22 = usernameCopy;
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

  if (silentCopy)
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
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v21;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Verification Options Dictionary Contains: %@", buf, 0xCu);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)cancelRequestID:(id)d serviceIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  if (dCopy)
  {
    [(NSMutableSet *)self->_runningQueries removeObject:dCopy];
    if (![(NSMutableSet *)self->_runningQueries count])
    {
      runningQueries = self->_runningQueries;
      self->_runningQueries = 0;
    }
  }

  if (identifierCopy)
  {
    mEMORY[0x1E69A6190] = [MEMORY[0x1E69A6190] sharedInstance];
    [mEMORY[0x1E69A6190] removeNotificationsForServiceIdentifier:identifierCopy];
  }
}

+ (id)_loginUserNotificationForService:(id)service user:(id)user isForBadPassword:(BOOL)password showForgetPassword:(BOOL)forgetPassword shouldRememberPassword:(BOOL)rememberPassword
{
  passwordCopy = password;
  serviceCopy = service;
  userCopy = user;
  if ([serviceCopy isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = IMLocalizedStringFromTableInBundle();

    serviceCopy = v11;
  }

  stringByRemovingWhitespace = [userCopy stringByRemovingWhitespace];
  v13 = [stringByRemovingWhitespace length];

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

    serviceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v15, serviceCopy];
    v20 = userCopy;
    if (!userCopy)
    {
      v20 = serviceCopy;
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
    v46 = serviceCopy;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{serviceCopy, *MEMORY[0x1E69A60A8], v21, *MEMORY[0x1E69A6088], v22, *MEMORY[0x1E69A60A0], v24, *MEMORY[0x1E69A6098], v38, *MEMORY[0x1E69A6078], v39, *MEMORY[0x1E69A6068], 0, *MEMORY[0x1E69A6080], 0, 0}];
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

    serviceCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:v42, serviceCopy];
    if (passwordCopy)
    {
      v31 = v24;
    }

    else
    {
      v31 = v30;
    }

    serviceCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:v31, serviceCopy];
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:{userCopy, &stru_1F09C7808, 0}];
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v29, v47, 0}];
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v22, 0}];
    v26 = v44;
    v25 = v45;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{serviceCopy2, *MEMORY[0x1E69A60A8], serviceCopy3, *MEMORY[0x1E69A6088], v33, *MEMORY[0x1E69A60A0], v34, *MEMORY[0x1E69A6098], v35, *MEMORY[0x1E69A6070], v45, *MEMORY[0x1E69A6078], v44, *MEMORY[0x1E69A6068], 0, *MEMORY[0x1E69A6090], 0, *MEMORY[0x1E69A6080], 0, 0}];

    v23 = v40;
    v15 = v42;

    v28 = 0x20000;
  }

  v36 = [MEMORY[0x1E69A6188] userNotificationWithIdentifier:@"__ksPasswordPromptUserNotificationIdentifier" timeout:3 alertLevel:v28 displayFlags:v27 displayInformation:0.0];

  return v36;
}

- (id)acAccountWithProfileID:(id)d username:(id)username accountStore:(id)store
{
  dCopy = d;
  usernameCopy = username;
  storeCopy = store;
  v11 = [dCopy length];
  if (storeCopy && v11)
  {
    v12 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:storeCopy];
  }

  else
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195964B8C();
    }

    v12 = 0;
  }

  return v12;
}

- (id)profileIDForACAccount:(id)account
{
  if (account)
  {
    v3 = sub_195956E14(account);
    _stripFZIDPrefix = [v3 _stripFZIDPrefix];
  }

  else
  {
    _stripFZIDPrefix = 0;
  }

  return _stripFZIDPrefix;
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  v5 = im_primary_queue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19596165C;
  v7[3] = &unk_1E74351D0;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(v5, v7);
}

- (void)accountCredentialChanged:(id)changed
{
  changedCopy = changed;
  v5 = im_primary_queue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1959617A0;
  v7[3] = &unk_1E74351D0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(v5, v7);
}

@end