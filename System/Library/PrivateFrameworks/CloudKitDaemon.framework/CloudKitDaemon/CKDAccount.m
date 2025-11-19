@interface CKDAccount
+ (BOOL)isAuthTokenRenewalInProgressForAccountID:(id)a3;
+ (id)authTokenRenewalsInProgress;
+ (id)globalAuthTokenQueue;
+ (void)beginAuthTokenRenewalForAccountID:(id)a3;
+ (void)endAuthTokenRenewalForAccountID:(id)a3;
- (BOOL)_userCloudDBURLisInCarryPartition;
- (BOOL)hasCredentials;
- (BOOL)isDataclassEnabled:(id)a3;
- (BOOL)isDataclassEnabledForCellular:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrimaryAccount;
- (BOOL)isPrimaryEmailVerified;
- (BOOL)isRenewingAuthToken;
- (BOOL)isValidTestAccount;
- (BOOL)isWarmingUp;
- (BOOL)needsToVerifyTerms;
- (CKDAccount)initWithAccountID:(id)a3;
- (CKDAccount)initWithAltDSID:(id)a3;
- (CKPersona)persona;
- (NSPersonNameComponents)fullName;
- (NSString)accountID;
- (NSString)altDSID;
- (NSString)displayedHostname;
- (NSString)dsid;
- (NSString)formattedUsername;
- (NSString)identifier;
- (NSString)primaryEmail;
- (NSString)serverPreferredPushEnvironment;
- (NSString)sharingURLHostname;
- (NSString)username;
- (NSURL)privateCloudDBURL;
- (NSURL)privateCodeServiceURL;
- (NSURL)privateDeviceServiceURL;
- (NSURL)privateMetricsServiceURL;
- (NSURL)privateShareServiceURL;
- (OS_dispatch_queue)authTokenQueue;
- (id)_lockedCloudKitAuthTokenWithContainer:(id)a3 error:(id *)a4;
- (id)_lockediCloudAuthTokenWithContainer:(id)a3 error:(id *)a4;
- (id)_lockediCloudAuthTokenWithError:(id *)a3;
- (id)cloudKitAuthTokenWithContainer:(id)a3 error:(id *)a4;
- (id)description;
- (id)iCloudAuthTokenWithContainer:(id)a3 error:(id *)a4;
- (id)initAnonymousAccount;
- (id)initExplicitCredentialsAccountWithAccountOverrideInfo:(id)a3;
- (id)initInternal;
- (id)initMockAccountWithTestAccount:(id)a3 testDevice:(id)a4;
- (id)initPrimaryAccount;
- (int64_t)accountType;
- (unint64_t)hash;
- (void)_lockedRenewTokenWithReason:(id)a3 shouldForce:(BOOL)a4 container:(id)a5 tokenFetchBlock:(id)a6 completionHandler:(id)a7;
- (void)cloudKitAuthTokenWithContainer:(id)a3 completionHandler:(id)a4;
- (void)iCloudAuthTokenWithCompletionHandler:(id)a3;
- (void)iCloudAuthTokenWithContainer:(id)a3 completionHandler:(id)a4;
- (void)renewCloudKitAuthTokenWithReason:(id)a3 shouldForce:(BOOL)a4 container:(id)a5 failedToken:(id)a6 completionHandler:(id)a7;
- (void)renewiCloudAuthTokenWithReason:(id)a3 shouldForce:(BOOL)a4 container:(id)a5 failedToken:(id)a6 completionHandler:(id)a7;
- (void)updateAccountPropertiesAndSaveAccountWithCompletionHandler:(id)a3;
- (void)validateVettingToken:(id)a3 vettingEmail:(id)a4 vettingPhone:(id)a5 container:(id)a6 completionHandler:(id)a7;
@end

@implementation CKDAccount

- (int64_t)accountType
{
  v4 = objc_msgSend_backingAccount(self, a2, v2);

  if (!v4)
  {
    return 1;
  }

  v7 = objc_msgSend_backingAccount(self, v5, v6);
  v10 = objc_msgSend_accountType(v7, v8, v9);

  return v10;
}

- (NSString)accountID
{
  if (objc_msgSend_accountType(self, a2, v2) == 1)
  {
    v6 = @"AnonymousAccount";
  }

  else
  {
    v7 = objc_msgSend_backingAccount(self, v4, v5);
    v6 = objc_msgSend_identifier(v7, v8, v9);
  }

  return v6;
}

- (id)initPrimaryAccount
{
  v21 = *MEMORY[0x277D85DE8];
  inited = objc_msgSend_initInternal(self, a2, v2);
  if (!inited)
  {
LABEL_7:
    v15 = inited;
    goto LABEL_13;
  }

  v6 = objc_msgSend_primaryAccount(CKDBackingAccount, v3, v4);
  v7 = inited[2];
  inited[2] = v6;

  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (inited[2])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v14 = objc_msgSend_accountID(inited, v12, v13);
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Created primary backing account with ID %@", &v19, 0xCu);
    }

    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v8);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Could not create primary backing account", &v19, 2u);
  }

  v15 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)initInternal
{
  v7.receiver = self;
  v7.super_class = CKDAccount;
  v2 = [(CKDAccount *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.cloudkit.account.authCallbackQueue", v3);
    authTokenCallbackQueue = v2->_authTokenCallbackQueue;
    v2->_authTokenCallbackQueue = v4;
  }

  return v2;
}

- (id)initAnonymousAccount
{
  inited = objc_msgSend_initInternal(self, a2, v2);
  if (inited)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "Created anonymous account", v6, 2u);
    }
  }

  return inited;
}

- (NSString)serverPreferredPushEnvironment
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_backingAccount(self, a2, v2);
  v7 = objc_msgSend_serverPreferredPushEnvironment(v4, v5, v6);

  if (!objc_msgSend_length(v7, v8, v9))
  {
    v12 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v10, v11);
    isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v12, v13, v14);

    if (isAppleInternalInstall)
    {
      v16 = self;
      objc_sync_enter(v16);
      if ((objc_msgSend_haveWarnedAboutServerPreferredPushEnvironment(v16, v17, v18) & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v19 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v22 = objc_msgSend_backingAccount(v16, v20, v21);
          v27 = 138412290;
          v28 = v22;
          _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Warn: Couldn't determine server preferred push environment from backing account %@", &v27, 0xCu);
        }

        objc_msgSend_setHaveWarnedAboutServerPreferredPushEnvironment_(v16, v23, 1);
      }

      objc_sync_exit(v16);
    }

    v24 = *MEMORY[0x277CEE9F0];

    v7 = v24;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)dsid
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_dsid(v3, v4, v5);

  return v6;
}

- (BOOL)isPrimaryEmailVerified
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  isPrimaryEmailVerified = objc_msgSend_isPrimaryEmailVerified(v3, v4, v5);

  return isPrimaryEmailVerified;
}

- (BOOL)isPrimaryAccount
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  isPrimaryAccount = objc_msgSend_isPrimaryAccount(v3, v4, v5);

  return isPrimaryAccount;
}

- (OS_dispatch_queue)authTokenQueue
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_globalAuthTokenQueue, v3);
}

+ (id)globalAuthTokenQueue
{
  if (qword_280D58078 != -1)
  {
    dispatch_once(&qword_280D58078, &unk_28385C3C0);
  }

  v3 = qword_280D58070;

  return v3;
}

- (NSURL)privateCloudDBURL
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_privateCloudDBURL(v3, v4, v5);

  return v6;
}

- (NSURL)privateMetricsServiceURL
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_privateMetricsServiceURL(v3, v4, v5);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_backingAccount(self, v6, v7);
  v11 = objc_msgSend_primaryEmail(v8, v9, v10);
  v14 = objc_msgSend_accountID(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v3, v15, @"<%@ %p> (%@ Account ID: %@)", v5, self, v11, v14);

  return v16;
}

- (NSString)altDSID
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_altDSID(v3, v4, v5);

  return v6;
}

- (BOOL)_userCloudDBURLisInCarryPartition
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v5 = objc_msgSend_accountPropertiesForDataclass_(v3, v4, *MEMORY[0x277CB90D8]);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"url");

  if (v7)
  {
    v9 = objc_msgSend_rangeOfString_options_(v7, v8, @"p9(7|8)-ckdatabase", 1025) != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isWarmingUp
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  isWarmingUp = objc_msgSend_isWarmingUp(v3, v4, v5);

  return isWarmingUp;
}

+ (id)authTokenRenewalsInProgress
{
  if (qword_280D58060 != -1)
  {
    dispatch_once(&qword_280D58060, &unk_28385C3A0);
  }

  v3 = qword_280D58068;

  return v3;
}

+ (void)beginAuthTokenRenewalForAccountID:(id)a3
{
  v20 = a3;
  v6 = objc_msgSend_authTokenRenewalsInProgress(a1, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_authTokenRenewalsInProgress(a1, v7, v8);
  objc_msgSend_addObject_(v9, v10, v20);

  v13 = objc_msgSend_authTokenRenewalsInProgress(a1, v11, v12);
  v15 = objc_msgSend_countForObject_(v13, v14, v20);

  objc_sync_exit(v6);
  if (v15 == 1)
  {
    v18 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v16, v17);
    objc_msgSend_notifyAuthTokenRenewalInProgress_forAccountID_(v18, v19, 1, v20);
  }
}

+ (void)endAuthTokenRenewalForAccountID:(id)a3
{
  v20 = a3;
  v6 = objc_msgSend_authTokenRenewalsInProgress(a1, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_authTokenRenewalsInProgress(a1, v7, v8);
  objc_msgSend_removeObject_(v9, v10, v20);

  v13 = objc_msgSend_authTokenRenewalsInProgress(a1, v11, v12);
  v15 = objc_msgSend_countForObject_(v13, v14, v20);

  objc_sync_exit(v6);
  if (!v15)
  {
    v18 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v16, v17);
    objc_msgSend_notifyAuthTokenRenewalInProgress_forAccountID_(v18, v19, 0, v20);
  }
}

+ (BOOL)isAuthTokenRenewalInProgressForAccountID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_authTokenRenewalsInProgress(a1, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_authTokenRenewalsInProgress(a1, v8, v9);
  v12 = objc_msgSend_countForObject_(v10, v11, v4) != 0;

  objc_sync_exit(v7);
  return v12;
}

- (CKDAccount)initWithAccountID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  inited = objc_msgSend_initInternal(self, v5, v6);
  if (!inited)
  {
LABEL_7:
    v18 = inited;
    goto LABEL_13;
  }

  v9 = objc_msgSend_accountWithIdentifier_(CKDBackingAccount, v7, v4);
  v10 = inited[2];
  inited[2] = v9;

  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (inited[2])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v17 = objc_msgSend_accountID(inited, v15, v16);
      v22 = 138412290;
      v23 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Created backing account with ID %@", &v22, 0xCu);
    }

    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v11);
  }

  v19 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v22 = 138412290;
    v23 = v4;
    _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Could not create backing account with ID %@", &v22, 0xCu);
  }

  v18 = 0;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (CKDAccount)initWithAltDSID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  inited = objc_msgSend_initInternal(self, v5, v6);
  if (!inited)
  {
LABEL_7:
    v18 = inited;
    goto LABEL_13;
  }

  v9 = objc_msgSend_accountWithAltDSID_(CKDBackingAccount, v7, v4);
  v10 = inited[2];
  inited[2] = v9;

  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (inited[2])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v17 = objc_msgSend_altDSID(inited, v15, v16);
      v22 = 138412290;
      v23 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Created backing account with altDSID %@", &v22, 0xCu);
    }

    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v11);
  }

  v19 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v22 = 138412290;
    v23 = v4;
    _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Could not create backing account with altDSID %@", &v22, 0xCu);
  }

  v18 = 0;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)initExplicitCredentialsAccountWithAccountOverrideInfo:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  inited = objc_msgSend_initInternal(self, v5, v6);
  if (!inited)
  {
LABEL_7:
    v33 = inited;
    goto LABEL_13;
  }

  v10 = objc_msgSend_email(v4, v7, v8);
  v13 = objc_msgSend_password(v4, v11, v12);
  v16 = objc_msgSend_recoveryKey(v4, v14, v15);
  v19 = objc_msgSend_accountPropertyOverrides(v4, v17, v18);
  v22 = objc_msgSend_overridesByDataclass(v4, v20, v21);
  v24 = objc_msgSend_explicitCredentialsAccountWithEmail_password_recoveryKey_propertyOverrides_overridesByDataclass_(CKDBackingAccount, v23, v10, v13, v16, v19, v22);
  v25 = inited[2];
  inited[2] = v24;

  v26 = *MEMORY[0x277CBC878];
  v27 = *MEMORY[0x277CBC880];
  if (inited[2])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v26);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v32 = objc_msgSend_accountID(inited, v30, v31);
      v37 = 138412546;
      v38 = v4;
      v39 = 2112;
      v40 = v32;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Created fake backing account with account override info %@ and ID %@", &v37, 0x16u);
    }

    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v26);
  }

  v34 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v37 = 138412290;
    v38 = v4;
    _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Could not create fake backing account with account override info %@", &v37, 0xCu);
  }

  v33 = 0;
LABEL_13:

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)initMockAccountWithTestAccount:(id)a3 testDevice:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  inited = objc_msgSend_initInternal(self, v8, v9);
  if (!inited)
  {
LABEL_7:
    v17 = inited;
    goto LABEL_13;
  }

  v12 = objc_msgSend_mockAccountWithTestAccount_testDevice_(CKDBackingAccount, v10, v6, v7);
  v13 = inited[2];
  inited[2] = v12;

  v14 = *MEMORY[0x277CBC878];
  v15 = *MEMORY[0x277CBC880];
  if (inited[2])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Created mock backing account with test account %@, testDevice %@", &v21, 0x16u);
    }

    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v14);
  }

  v18 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v21 = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Could not create mock backing account with test account %@, test device %@", &v21, 0x16u);
  }

  v17 = 0;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (NSPersonNameComponents)fullName
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_fullName(v3, v4, v5);

  return v6;
}

- (NSString)primaryEmail
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_primaryEmail(v3, v4, v5);

  return v6;
}

- (NSString)username
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_username(v3, v4, v5);

  return v6;
}

- (BOOL)isRenewingAuthToken
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_accountID(self, v4, v5);
  LOBYTE(v3) = objc_msgSend_isAuthTokenRenewalInProgressForAccountID_(v3, v7, v6);

  return v3;
}

- (BOOL)hasCredentials
{
  v3 = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = objc_msgSend_authTokenQueue(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22510A39C;
  v6[3] = &unk_278545678;
  v6[4] = v3;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)needsToVerifyTerms
{
  v3 = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = objc_msgSend_authTokenQueue(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22510A54C;
  v6[3] = &unk_278545678;
  v6[4] = v3;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (NSString)formattedUsername
{
  v4 = objc_msgSend_username(self, a2, v2);
  if (v4)
  {
    v5 = objc_msgSend_formattedUsernameFromUsername_(MEMORY[0x277CF0300], v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CKPersona)persona
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_persona(v3, v4, v5);

  return v6;
}

- (NSString)displayedHostname
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_displayedHostname(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_backingAccount(self, v6, v7);
      v11 = objc_msgSend_backingAccount(v5, v9, v10);

      v12 = CKObjectsAreBothNilOrEqual();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isDataclassEnabled:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingAccount(self, v5, v6);
  isDataclassEnabled = objc_msgSend_isDataclassEnabled_(v7, v8, v4);

  return isDataclassEnabled;
}

- (BOOL)isDataclassEnabledForCellular:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingAccount(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_backingAccount(self, v8, v9);
    isDataclassEnabledForCellular = objc_msgSend_isDataclassEnabledForCellular_(v10, v11, v4);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "No backing account, so allowing cellular access from account perspective.", v15, 2u);
    }

    isDataclassEnabledForCellular = 1;
  }

  return isDataclassEnabledForCellular;
}

- (NSString)identifier
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  return v6;
}

- (void)updateAccountPropertiesAndSaveAccountWithCompletionHandler:(id)a3
{
  v12 = a3;
  v6 = objc_msgSend_backingAccount(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_backingAccount(self, v7, v8);
    objc_msgSend_updateAccountPropertiesAndSaveAccount_(v9, v10, v12);
  }

  else
  {
    v11 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 1002, @"Can't update account properties because we have no account");
    (*(v12 + 2))(v12, 0, v9);
  }

  v11 = v12;
LABEL_6:
}

- (void)_lockedRenewTokenWithReason:(id)a3 shouldForce:(BOOL)a4 container:(id)a5 tokenFetchBlock:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v105 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v18 = objc_msgSend_authTokenQueue(self, v16, v17);
  dispatch_assert_queue_V2(v18);

  v102 = 0;
  v19 = v14[2](v14, &v102);
  v22 = v102;
  if (!v22 && v19 && !v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v26 = v23;
      v29 = objc_msgSend_accountID(self, v27, v28);
      *buf = 138412290;
      v104 = v29;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "The CloudKit auth token for account %@ has changed since the last one we attempted. Trying again with the new token.", buf, 0xCu);
    }

    v30 = objc_msgSend_authTokenCallbackQueue(self, v24, v25);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22510B300;
    block[3] = &unk_2785456A0;
    v101 = v15;
    dispatch_async(v30, block);

    v22 = 0;
    v31 = v101;
    goto LABEL_43;
  }

  v32 = objc_msgSend_backingAccount(self, v20, v21);
  isAccountSuspended = objc_msgSend_isAccountSuspended(v32, v33, v34);

  if (isAccountSuspended)
  {
    v38 = objc_msgSend_backingAccount(self, v36, v37);
    canSuspendedAccountRenewCredentials = objc_msgSend_canSuspendedAccountRenewCredentials(v38, v39, v40);

    if (((canSuspendedAccountRenewCredentials | v10) & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v69 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v69, OS_LOG_TYPE_INFO, "Account is suspended and we did attempt a renewal recently. Rate limiting this renewal request", buf, 2u);
      }

      if (!v22)
      {
        v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v70, *MEMORY[0x277CBC120], 1004, @"Can't renew our auth token since account is suspended and renewal is rate limited");
      }

      if (v15)
      {
        v72 = objc_msgSend_authTokenCallbackQueue(self, v70, v71);
        v73 = v97;
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = sub_22510B320;
        v97[3] = &unk_2785456C8;
        v99 = v15;
        v22 = v22;
        v98 = v22;
        dispatch_async(v72, v97);

LABEL_37:
        v31 = v73[5];
LABEL_43:

        goto LABEL_44;
      }

      goto LABEL_44;
    }

    if (objc_msgSend_canAccessAccount(v13, v42, v43))
    {
      v46 = objc_msgSend_backingAccount(self, v44, v45);
      objc_msgSend_noteSuspendedAccountRenewalDate(v46, v47, v48);

LABEL_14:
      v49 = objc_opt_new();
      v31 = v49;
      if (v12)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v49, v50, v12, *MEMORY[0x277CB9088]);
      }

      if (v10)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v31, v50, MEMORY[0x277CBEC38], *MEMORY[0x277CB90A0]);
      }

      v52 = objc_msgSend_backingAccount(self, v50, v51);

      if (v52)
      {
        objc_initWeak(buf, self);
        v56 = objc_msgSend_accountID(self, v54, v55);
        v59 = objc_msgSend_backingAccount(self, v57, v58);
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = sub_22510B350;
        v90[3] = &unk_278545718;
        objc_copyWeak(&v93, buf);
        v60 = v56;
        v91 = v60;
        v92 = v15;
        objc_msgSend_renewAuthTokenWithOptions_completionHandler_(v59, v61, v31, v90);

        objc_destroyWeak(&v93);
        objc_destroyWeak(buf);
      }

      else
      {
        v85 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v53, *MEMORY[0x277CBC120], 1002, @"Can't renew credentials because we don't have an account");
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v75 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v78 = v75;
          v81 = objc_msgSend_accountID(self, v79, v80);
          *buf = 138412290;
          v104 = v81;
          _os_log_impl(&dword_22506F000, v78, OS_LOG_TYPE_INFO, "Can't renew credentials with account ID '%@' because we don't have an account", buf, 0xCu);
        }

        v82 = objc_msgSend_authTokenCallbackQueue(self, v76, v77);
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = sub_22510B5E8;
        v86[3] = &unk_2785456F0;
        v89 = 0;
        v87 = v85;
        v88 = v15;
        v83 = v85;
        dispatch_async(v82, v86);
      }

      goto LABEL_43;
    }
  }

  else if (objc_msgSend_canAccessAccount(v13, v36, v37))
  {
    goto LABEL_14;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v62 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v65 = v62;
    v68 = objc_msgSend_accountID(self, v66, v67);
    *buf = 138412290;
    v104 = v68;
    _os_log_impl(&dword_22506F000, v65, OS_LOG_TYPE_INFO, "Can't access the account with ID %@, so failing this auth token renew request", buf, 0xCu);
  }

  if (v22)
  {
    if (!v15)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBC120], 2011, @"Can't renew our auth token since we don't have access to the account");
  if (v15)
  {
LABEL_36:
    v74 = objc_msgSend_authTokenCallbackQueue(self, v63, v64);
    v73 = v94;
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_22510B338;
    v94[3] = &unk_2785456C8;
    v96 = v15;
    v22 = v22;
    v95 = v22;
    dispatch_async(v74, v94);

    goto LABEL_37;
  }

LABEL_44:

  v84 = *MEMORY[0x277D85DE8];
}

- (void)renewCloudKitAuthTokenWithReason:(id)a3 shouldForce:(BOOL)a4 container:(id)a5 failedToken:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v18 = objc_msgSend_accountID(self, v16, v17);
  v19 = objc_opt_class();
  objc_msgSend_beginAuthTokenRenewalForAccountID_(v19, v20, v18);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22510B840;
  aBlock[3] = &unk_278545740;
  v21 = v19;
  v41 = v21;
  v22 = v18;
  v42 = v22;
  v23 = v15;
  v43 = v23;
  v24 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v27 = objc_msgSend_authTokenQueue(self, v25, v26);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22510B8B8;
  block[3] = &unk_278545790;
  objc_copyWeak(&v37, &location);
  v38 = a4;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v24;
  v28 = v24;
  v29 = v14;
  v30 = v13;
  v31 = v12;
  dispatch_async(v27, block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (id)cloudKitAuthTokenWithContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_225073E40;
  v27 = sub_2250734AC;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_225073E40;
  v21 = sub_2250734AC;
  v22 = 0;
  v9 = objc_msgSend_authTokenQueue(self, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22510BDEC;
  v13[3] = &unk_2785457B8;
  v15 = &v23;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v16 = &v17;
  dispatch_sync(v9, v13);

  if (a4)
  {
    *a4 = v18[5];
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (void)cloudKitAuthTokenWithContainer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    v10 = objc_msgSend_authTokenQueue(self, v8, v9);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22510BF7C;
    block[3] = &unk_278545808;
    objc_copyWeak(&v15, &location);
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(v10, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (id)_lockedCloudKitAuthTokenWithContainer:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_authTokenQueue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  v12 = objc_msgSend_backingAccount(self, v10, v11);
  if (!v12 || (v15 = v12, canAuthWithCloudKit = objc_msgSend_canAuthWithCloudKit(v6, v13, v14), v15, (canAuthWithCloudKit & 1) == 0))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v32 = "No backing account, so not returning an auth token.";
    goto LABEL_21;
  }

  if ((objc_msgSend_canAccessAccount(v6, v17, v18) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v32 = "No access to existing account, so not returning an auth token.";
LABEL_21:
    _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, v32, buf, 2u);
LABEL_22:
    v24 = 0;
    v23 = 0;
    goto LABEL_23;
  }

  v21 = objc_msgSend_backingAccount(self, v19, v20);
  v35 = 0;
  v23 = objc_msgSend_cloudKitAuthTokenWithError_(v21, v22, &v35);
  v24 = v35;

  if (v23 && objc_msgSend_containsObject_(qword_280D54EA8, v25, v23))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v23;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Found token: %@ in failedTokenCache.", buf, 0xCu);
    }

    v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 2011, @"Got a CloudKit auth token that has already failed a previous auth attempt");

    v24 = v28;
  }

  if (v24)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      if (!a4)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    *buf = 138412290;
    v37 = v24;
    _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Error getting CloudKit auth token: %@", buf, 0xCu);
    if (a4)
    {
LABEL_16:
      v30 = v24;
      *a4 = v24;
    }
  }

LABEL_23:

  v33 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)renewiCloudAuthTokenWithReason:(id)a3 shouldForce:(BOOL)a4 container:(id)a5 failedToken:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v18 = objc_msgSend_accountID(self, v16, v17);
  v19 = objc_opt_class();
  objc_msgSend_beginAuthTokenRenewalForAccountID_(v19, v20, v18);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22510C628;
  aBlock[3] = &unk_278545740;
  v21 = v19;
  v41 = v21;
  v22 = v18;
  v42 = v22;
  v23 = v15;
  v43 = v23;
  v24 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v27 = objc_msgSend_authTokenQueue(self, v25, v26);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22510C6A0;
  block[3] = &unk_278545790;
  objc_copyWeak(&v37, &location);
  v38 = a4;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v24;
  v28 = v24;
  v29 = v14;
  v30 = v13;
  v31 = v12;
  dispatch_async(v27, block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (id)iCloudAuthTokenWithContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_225073E40;
  v27 = sub_2250734AC;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_225073E40;
  v21 = sub_2250734AC;
  v22 = 0;
  v9 = objc_msgSend_authTokenQueue(self, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22510CA64;
  v13[3] = &unk_2785457B8;
  v15 = &v23;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v16 = &v17;
  dispatch_sync(v9, v13);

  if (a4)
  {
    *a4 = v18[5];
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (void)iCloudAuthTokenWithContainer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    v10 = objc_msgSend_authTokenQueue(self, v8, v9);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22510CBF4;
    block[3] = &unk_278545808;
    objc_copyWeak(&v15, &location);
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(v10, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (id)_lockediCloudAuthTokenWithContainer:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_authTokenQueue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  v12 = objc_msgSend_backingAccount(self, v10, v11);
  if (!v12 || (v15 = v12, canAuthWithCloudKit = objc_msgSend_canAuthWithCloudKit(v6, v13, v14), v15, (canAuthWithCloudKit & 1) == 0))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v28 = "No backing account, so not returning an auth token.";
    goto LABEL_10;
  }

  if (objc_msgSend_canAccessAccount(v6, v17, v18))
  {
    v21 = objc_msgSend_backingAccount(self, v19, v20);
    v37 = 0;
    v23 = objc_msgSend_iCloudAuthTokenWithError_(v21, v22, &v37);
    v24 = v37;

    if (v24)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v28 = "No access to existing account, so not returning an auth token.";
LABEL_10:
    _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, v28, buf, 2u);
  }

LABEL_11:
  v23 = 0;
LABEL_12:
  v29 = objc_msgSend_lastFailediCloudAuthToken(self, v25, v26);
  isEqualToString = objc_msgSend_isEqualToString_(v23, v30, v29);

  if (!isEqualToString)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 2011, @"Got an iCloud auth token that has already failed a previous auth attempt");
  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v33 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (!a4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  *buf = 138412290;
  v39 = v24;
  _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Error getting iCloud auth token: %@", buf, 0xCu);
  if (a4)
  {
LABEL_18:
    v34 = v24;
    *a4 = v24;
  }

LABEL_20:

  v35 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)iCloudAuthTokenWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v7 = objc_msgSend_authTokenQueue(self, v5, v6);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22510D0F0;
    v8[3] = &unk_278545830;
    objc_copyWeak(&v10, &location);
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (id)_lockediCloudAuthTokenWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_authTokenQueue(self, a2, a3);
  dispatch_assert_queue_V2(v5);

  v8 = objc_msgSend_backingAccount(self, v6, v7);
  v22 = 0;
  v10 = objc_msgSend_iCloudAuthTokenWithError_(v8, v9, &v22);
  v11 = v22;

  if (v11)
  {
    goto LABEL_2;
  }

  v16 = objc_msgSend_lastFailediCloudAuthToken(self, v12, v13);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v17, v16);

  if (!isEqualToString)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 2011, @"Got an iCloud auth token that has already failed a previous auth attempt");
  if (v11)
  {
LABEL_2:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    *buf = 138412290;
    v24 = v11;
    _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Error getting iCloud auth token: %@", buf, 0xCu);
    if (a3)
    {
LABEL_6:
      v15 = v11;
      *a3 = v11;
    }
  }

LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSURL)privateShareServiceURL
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_privateShareServiceURL(v3, v4, v5);

  return v6;
}

- (NSURL)privateDeviceServiceURL
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_privateDeviceServiceURL(v3, v4, v5);

  return v6;
}

- (NSURL)privateCodeServiceURL
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_privateCodeServiceURL(v3, v4, v5);

  return v6;
}

- (void)validateVettingToken:(id)a3 vettingEmail:(id)a4 vettingPhone:(id)a5 container:(id)a6 completionHandler:(id)a7
{
  v21 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (objc_msgSend_canAccessAccount(a6, v15, v16))
  {
    v19 = objc_msgSend_backingAccount(self, v17, v18);
    objc_msgSend_validateVettingToken_vettingEmail_vettingPhone_completionHandler_(v19, v20, v21, v12, v13, v14);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_6;
    }

    v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 2011, @"Can't reauth since we don't have access to the account");
    v14[2](v14, 0, v19);
  }

LABEL_6:
}

- (NSString)sharingURLHostname
{
  v3 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_sharingURLHostname(v3, v4, v5);

  return v6;
}

- (BOOL)isValidTestAccount
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_backingAccount(self, a2, v2);
  v6 = objc_msgSend_iCloudAuthTokenWithError_(v4, v5, 0);

  if (v6)
  {
    v9 = objc_msgSend_backingAccount(self, v7, v8);
    v11 = objc_msgSend_cloudKitAuthTokenWithError_(v9, v10, 0);

    if (!v11)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v31 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v54 = 138412290;
        v55 = self;
        _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Account %@ is not valid because it has no iCloud auth token", &v54, 0xCu);
      }

      v30 = 0;
      goto LABEL_31;
    }

    v14 = objc_msgSend_backingAccount(self, v12, v13);
    v16 = objc_msgSend_accountPropertiesForDataclass_(v14, v15, @"com.apple.Dataclass.Account");
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"iCloudEnv");

    if ((!v18 || objc_msgSend_isEqualToString_(v18, v19, @"PROD")) && (objc_msgSend_isCarryAccount(self, v19, v20) & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v43 = v32;
        v46 = objc_msgSend_backingAccount(self, v44, v45);
        v48 = objc_msgSend_accountPropertiesForDataclass_(v46, v47, *MEMORY[0x277CB90D8]);
        v51 = objc_msgSend_backingAccount(self, v49, v50);
        v53 = objc_msgSend_accountPropertiesForDataclass_(v51, v52, @"com.apple.Dataclass.Account");
        v54 = 138412802;
        v55 = self;
        v56 = 2112;
        v57 = v48;
        v58 = 2112;
        v59 = v53;
        _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "Account %@ is not valid because it is a non-carry prod account according to these property sets: %@ %@", &v54, 0x20u);
      }

      goto LABEL_26;
    }

    v21 = objc_msgSend_backingAccount(self, v19, v20);
    isAccountSuspended = objc_msgSend_isAccountSuspended(v21, v22, v23);

    if (isAccountSuspended)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v27 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v54 = 138412290;
      v55 = self;
      v28 = "Account %@ is not valid because it's marked as suspended";
    }

    else
    {
      v33 = objc_msgSend_backingAccount(self, v25, v26);
      v34 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass & 1) == 0 || (objc_msgSend_backingAccount(self, v36, v37), v38 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend_credentialsAreValidForAccount_(CKDPCSIdentityManager, v39, v38), v38, (v40))
      {
        v30 = 1;
        goto LABEL_30;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v27 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v30 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      v54 = 138412290;
      v55 = self;
      v28 = "Account %@ is not valid because it can't get Stingray identities via PCS";
    }

    _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, v28, &v54, 0xCu);
    goto LABEL_26;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v29 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v54 = 138412290;
    v55 = self;
    _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Account %@ is not valid because it has no iCloud auth token", &v54, 0xCu);
  }

  v30 = 0;
LABEL_32:

  v41 = *MEMORY[0x277D85DE8];
  return v30;
}

@end