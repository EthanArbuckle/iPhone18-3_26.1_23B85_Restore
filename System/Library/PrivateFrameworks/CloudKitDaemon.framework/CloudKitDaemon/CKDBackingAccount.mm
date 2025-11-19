@interface CKDBackingAccount
+ (CKDBackingAccount)accountWithAltDSID:(id)a3;
+ (CKDBackingAccount)accountWithIdentifier:(id)a3;
+ (id)credentialRenewalDatesBySuspendedAccountID;
+ (id)mockAccountWithTestAccount:(id)a3 testDevice:(id)a4;
+ (id)primaryAccount;
- (ACAccount)ckAccount;
- (BOOL)canSuspendedAccountRenewCredentials;
- (BOOL)isAccountSuspended;
- (BOOL)isDataclassEnabled:(id)a3;
- (BOOL)isDataclassEnabledForCellular:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrimaryAccount;
- (BOOL)isPrimaryEmailVerified;
- (BOOL)isWarmingUp;
- (CKDBackingAccount)init;
- (CKDBackingAccount)initWithAppleAccount:(id)a3;
- (CKPersona)persona;
- (NSPersonNameComponents)fullName;
- (NSString)altDSID;
- (NSString)displayedHostname;
- (NSString)dsid;
- (NSString)identifier;
- (NSString)primaryEmail;
- (NSString)serverPreferredPushEnvironment;
- (NSString)sharingURLHostname;
- (NSString)suspendedAccountIdentifier;
- (NSString)username;
- (id)_accountCredentialForAccount:(id)a3 withError:(id *)a4;
- (id)accountPropertiesForDataclass:(id)a3;
- (id)cloudKitAuthTokenWithError:(id *)a3;
- (id)iCloudAuthTokenWithError:(id *)a3;
- (id)urlForDataclass:(id)a3 preferringGateway:(BOOL)a4;
- (int64_t)accountType;
- (unint64_t)hash;
- (void)noteSuspendedAccountRenewalDate;
- (void)renewAuthTokenWithOptions:(id)a3 completionHandler:(id)a4;
- (void)updateAccountPropertiesAndSaveAccount:(id)a3;
- (void)validateVettingToken:(id)a3 vettingEmail:(id)a4 vettingPhone:(id)a5 completionHandler:(id)a6;
@end

@implementation CKDBackingAccount

+ (id)primaryAccount
{
  v3 = objc_msgSend_sharedAccountStore(CKDAccountStore, a2, v2);
  v6 = objc_msgSend_primaryAccount(v3, v4, v5);

  if (v6)
  {
    v7 = [CKDBackingPlatformAccount alloc];
    v9 = objc_msgSend_initWithAppleAccount_(v7, v8, v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)dsid
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v6 = objc_msgSend_aa_personID(v3, v4, v5);

  return v6;
}

- (BOOL)isPrimaryEmailVerified
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  isPrimaryEmailVerified = objc_msgSend_aa_isPrimaryEmailVerified(v3, v4, v5);

  return isPrimaryEmailVerified;
}

- (NSString)identifier
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v6 = objc_msgSend_ck_identifier(v3, v4, v5);

  return v6;
}

- (BOOL)isPrimaryAccount
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  isAccountClass = objc_msgSend_aa_isAccountClass_(v3, v4, *MEMORY[0x277CEC688]);

  return isAccountClass;
}

- (BOOL)isAccountSuspended
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  isCurrentAppleAccountSuspended = objc_msgSend_isCurrentAppleAccountSuspended(v4, v5, v6);

  v10 = objc_msgSend_appleAccount(self, v8, v9);
  LOBYTE(v4) = objc_msgSend_aa_isSuspended(v10, v11, v12);

  return isCurrentAppleAccountSuspended | v4;
}

- (NSString)primaryEmail
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v6 = objc_msgSend_aa_primaryEmail(v3, v4, v5);

  return v6;
}

- (NSString)serverPreferredPushEnvironment
{
  v2 = objc_msgSend_accountPropertiesForDataclass_(self, a2, *MEMORY[0x277CB8938]);
  v4 = objc_msgSend_objectForKey_(v2, v3, @"apsEnv");

  return v4;
}

- (NSString)altDSID
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v6 = objc_msgSend_aa_altDSID(v3, v4, v5);

  return v6;
}

- (BOOL)isWarmingUp
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  isWarmingUp = objc_msgSend_isWarmingUp(v3, v4, v5);

  return isWarmingUp;
}

+ (CKDBackingAccount)accountWithIdentifier:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedAccountStore(CKDAccountStore, v4, v5);
  v8 = objc_msgSend_accountWithIdentifier_(v6, v7, v3);

  if (v8)
  {
    v9 = [CKDBackingPlatformAccount alloc];
    v11 = objc_msgSend_initWithAppleAccount_(v9, v10, v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (CKDBackingAccount)accountWithAltDSID:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedAccountStore(CKDAccountStore, v4, v5);
  v8 = objc_msgSend_accountWithAltDSID_(v6, v7, v3);

  if (v8)
  {
    v9 = [CKDBackingPlatformAccount alloc];
    v11 = objc_msgSend_initWithAppleAccount_(v9, v10, v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)mockAccountWithTestAccount:(id)a3 testDevice:(id)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    v5 = objc_msgSend_mockAccountWithTestAccount_testDevice_(CKDBackingMockAccount, a2, a3);
    v4 = vars8;
  }

  return v5;
}

+ (id)credentialRenewalDatesBySuspendedAccountID
{
  if (qword_280D58098 != -1)
  {
    dispatch_once(&qword_280D58098, &unk_28385C420);
  }

  v3 = qword_280D58090;

  return v3;
}

- (CKDBackingAccount)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v4, v5);
    v8 = objc_alloc(MEMORY[0x277CBC6B0]);
    v9 = objc_alloc(MEMORY[0x277CBC6C8]);
    v11 = objc_msgSend_initWithFilePath_lineNumber_(v9, v10, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Accounts/CKDBackingAccount.m", 103);
    v13 = objc_msgSend_initWithSourceCodeLocation_format_(v8, v12, v11, @"CKDBackingAccount must be subclassed");
    objc_msgSend_handleSignificantIssue_actions_(v7, v14, v13, 0);

    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"CKDBackingAccount must be subclassed");
    objc_msgSend_UTF8String(v16, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CKDBackingAccount;
    return [(CKDBackingAccount *)&v19 init];
  }

  return result;
}

- (CKDBackingAccount)initWithAppleAccount:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v7, v8);
    v13 = objc_alloc(MEMORY[0x277CBC6B0]);
    v14 = objc_alloc(MEMORY[0x277CBC6C8]);
    v16 = objc_msgSend_initWithFilePath_lineNumber_(v14, v15, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Accounts/CKDBackingAccount.m", 110);
    v18 = objc_msgSend_initWithSourceCodeLocation_format_(v13, v17, v16, @"CKDBackingAccount must be subclassed");
    objc_msgSend_handleSignificantIssue_actions_(v12, v19, v18, 0);

    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"CKDBackingAccount must be subclassed");
    objc_msgSend_UTF8String(v21, v22, v23);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v24.receiver = self;
    v24.super_class = CKDBackingAccount;
    v9 = [(CKDBackingAccount *)&v24 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_appleAccount, a3);
    }

    return v10;
  }

  return result;
}

- (ACAccount)ckAccount
{
  v3 = objc_alloc(MEMORY[0x277CBC360]);
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v7 = objc_msgSend_initWithCode_format_(v3, v6, 12, @"%@ must be subclassed in class %@", v4, v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (NSString)username
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v6 = objc_msgSend_username(v3, v4, v5);

  return v6;
}

- (NSPersonNameComponents)fullName
{
  v3 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v6 = objc_msgSend_appleAccount(self, v4, v5);
  v9 = objc_msgSend_aa_firstName(v6, v7, v8);
  objc_msgSend_setGivenName_(v3, v10, v9);

  v13 = objc_msgSend_appleAccount(self, v11, v12);
  v16 = objc_msgSend_aa_lastName(v13, v14, v15);
  objc_msgSend_setFamilyName_(v3, v17, v16);

  return v3;
}

- (NSString)displayedHostname
{
  v3 = *MEMORY[0x277CBC8F0];
  v6 = objc_msgSend_appleAccount(self, v4, v5);
  v9 = objc_msgSend_aa_regionInfo(v6, v7, v8);
  v12 = objc_msgSend_displayedHostname(v9, v10, v11);
  v15 = objc_msgSend_lowercaseString(v12, v13, v14);

  if (objc_msgSend_length(v15, v16, v17) && (objc_msgSend_isEqualToString_(v15, v18, *MEMORY[0x277CBC8E8]) & 1) == 0)
  {
    v19 = v15;

    v3 = v19;
  }

  return v3;
}

- (BOOL)isDataclassEnabled:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_appleAccount(self, v5, v6);
  isEnabledForDataclass = objc_msgSend_isEnabledForDataclass_(v7, v8, v4);

  return isEnabledForDataclass;
}

- (BOOL)isDataclassEnabledForCellular:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_appleAccount(self, v5, v6);
  v9 = objc_msgSend_aa_useCellularForDataclass_(v7, v8, v4);

  return v9;
}

- (id)_accountCredentialForAccount:(id)a3 withError:(id *)a4
{
  v8 = a3;
  if (v8)
  {
    if (objc_msgSend_isAccountSuspended(self, v6, v7))
    {
      v11 = MEMORY[0x277CBC560];
      v12 = *MEMORY[0x277CBC120];
      v13 = objc_msgSend_appleAccount(self, v9, v10);
      v16 = objc_msgSend_ck_identifier(v13, v14, v15);
      v18 = objc_msgSend_errorWithDomain_code_format_(v11, v17, v12, 1004, @"Can't return account credentials for account %@ because the account needs to verify new terms or is in suspended mode.", v16);
    }

    else
    {
      v29 = 0;
      v19 = objc_msgSend_credentialWithError_(v8, v9, &v29);
      v20 = v29;
      if (v19 | v20)
      {
        v18 = v20;
        if (!a4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      v23 = MEMORY[0x277CBC560];
      v24 = *MEMORY[0x277CBC120];
      v25 = objc_msgSend_ck_identifier(v8, v21, v22);
      v18 = objc_msgSend_errorWithDomain_code_format_(v23, v26, v24, 1002, @"Didn't get account credentials for account %@ with no error", v25);
    }
  }

  else
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 1002, @"Can't return account credentials for nil account");
  }

  v19 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v18)
  {
    v27 = v18;
    *a4 = v18;
  }

LABEL_10:

  return v19;
}

- (id)cloudKitAuthTokenWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_ckAccount(self, a2, a3);
  v18 = 0;
  v7 = objc_msgSend__accountCredentialForAccount_withError_(self, v6, v5, &v18);
  v10 = v18;
  if (v7)
  {
    v12 = objc_msgSend_token(v7, v8, v9);
    if (!v12)
    {
      v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1002, @"Couldn't get cloudKitAuthToken from credential");

      v10 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    if (a3)
    {
      v14 = v10;
      *a3 = v10;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Error getting cloudKitAuthToken: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)iCloudAuthTokenWithError:(id *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_appleAccount(self, a2, a3);
  v7 = objc_msgSend_aa_authToken(v4, v5, v6);

  if (!v7)
  {
    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1002, @"Couldn't get iCloudAuthToken from credential");
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error getting iCloudAuthToken: %@", &v14, 0xCu);
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    else if (!a3)
    {
LABEL_7:

      goto LABEL_8;
    }

    v11 = v9;
    *a3 = v9;
    goto LABEL_7;
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)suspendedAccountIdentifier
{
  if ((objc_msgSend_isAccountSuspended(self, a2, v2) & 1) == 0)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDBackingAccount.m", 266, @"Should only be called for suspended accounts.");
  }

  v7 = objc_msgSend_appleAccount(self, v5, v6);
  v10 = objc_msgSend_ck_identifier(v7, v8, v9);

  return v10;
}

- (BOOL)canSuspendedAccountRenewCredentials
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_credentialRenewalDatesBySuspendedAccountID(v3, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_suspendedAccountIdentifier(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);
  objc_msgSend_timeIntervalSinceNow(v11, v12, v13);
  v15 = fabs(v14);
  v17 = v15 >= 28800.0 || v11 == 0;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v19 = @" not";
    v22 = 134218754;
    v23 = v15;
    if (v17)
    {
      v19 = &stru_28385ED00;
    }

    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "It has been %f s since suspended account %@ last renewal date %@. Can%@ renew credentials", &v22, 0x2Au);
  }

  objc_sync_exit(v6);
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)noteSuspendedAccountRenewalDate
{
  if (objc_msgSend_isAccountSuspended(self, a2, v2))
  {
    v4 = objc_opt_class();
    obj = objc_msgSend_credentialRenewalDatesBySuspendedAccountID(v4, v5, v6);
    objc_sync_enter(obj);
    v9 = objc_msgSend_suspendedAccountIdentifier(self, v7, v8);
    v12 = objc_msgSend_date(MEMORY[0x277CBEAA8], v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(obj, v13, v12, v9);

    objc_sync_exit(obj);
  }
}

- (int64_t)accountType
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDBackingAccount.m", 303, @"Expected to be overridden in subclass");

  return 0;
}

- (id)accountPropertiesForDataclass:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_appleAccount(self, v5, v6);
  v9 = objc_msgSend_propertiesForDataclass_(v7, v8, v4);

  return v9;
}

- (void)renewAuthTokenWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_CKDeepCopy(a3, v7, v8);
  v12 = objc_msgSend_sharedAccountStore(CKDAccountStore, v10, v11);
  v15 = objc_msgSend_accountStore(v12, v13, v14);

  v18 = objc_msgSend_appleAccount(self, v16, v17);

  v19 = *MEMORY[0x277CBC878];
  v20 = *MEMORY[0x277CBC880];
  if (v18 && v15)
  {
    if (v20 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v19);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Re-fetching our auth token", buf, 2u);
    }

    v24 = objc_msgSend_appleAccount(self, v22, v23);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2251149EC;
    v29[3] = &unk_278545BC0;
    v30 = v6;
    objc_msgSend_renewCredentialsForAccount_options_completion_(v15, v25, v24, v9, v29);

    v26 = v30;
  }

  else
  {
    if (v20 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v19);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Can't renew auth token because we don't have an account or an account store", buf, 2u);
    }

    v26 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 1002, @"No account exists");
    (*(v6 + 2))(v6, 0, v26);
  }
}

- (void)updateAccountPropertiesAndSaveAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBC360]);
  v5 = objc_opt_class();
  v7 = objc_msgSend_initWithCode_format_(v4, v6, 12, @"This method must be subclassed in class %@", v5);
  objc_exception_throw(v7);
}

- (void)validateVettingToken:(id)a3 vettingEmail:(id)a4 vettingPhone:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277CF0170];
  v13 = a5;
  v14 = a4;
  v15 = objc_alloc_init(v12);
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16;
  v18 = CKLocalizedString();
  objc_msgSend_setTitle_(v15, v19, v18);

  v20 = CKLocalizedString();

  objc_msgSend_setReason_(v15, v21, v20, v17);
  v24 = objc_msgSend_username(self, v22, v23);
  objc_msgSend_setUsername_(v15, v25, v24);

  objc_msgSend_setIsUsernameEditable_(v15, v26, 0);
  objc_msgSend_setShouldUpdatePersistentServiceTokens_(v15, v27, 1);
  objc_msgSend_setShouldSkipSettingsLaunchAlert_(v15, v28, 1);
  objc_msgSend_setHelpBook_(v15, v29, @"com.apple.machelp");
  objc_msgSend_setHelpAnchor_(v15, v30, @"mchl267b6234");
  objc_msgSend__setOverridesOnVettingContext_(self, v31, v15);
  v32 = objc_alloc_init(MEMORY[0x277CF0178]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_225114DE8;
  v37[3] = &unk_278545C10;
  v38 = v32;
  v39 = v10;
  v40 = v11;
  v33 = v11;
  v34 = v10;
  v35 = v32;
  objc_msgSend_authenticateWithContext_completion_(v35, v36, v15, v37);
}

- (id)urlForDataclass:(id)a3 preferringGateway:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = objc_msgSend_accountPropertiesForDataclass_(self, v7, v6);
  v10 = v8;
  if (v4)
  {
    objc_msgSend_CKFirstUrlForKeys_(v8, v9, &unk_2838C8C10);
  }

  else
  {
    objc_msgSend_CKFirstUrlForKeys_(v8, v9, &unk_2838C8C28);
  }
  v11 = ;
  if (!v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Couldn't create url from dataclass %{public}@ with properties %{public}@", &v15, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)sharingURLHostname
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_accountPropertiesForDataclass_(self, a2, *MEMORY[0x277CB8950]);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"cloudSharingURLHostname");
  if (!objc_msgSend_length(v5, v6, v7))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v3;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Couldn't get sharing URL host from properties %{public}@. Falling back to legacy hostname.", &v14, 0xCu);
    }

    v11 = objc_msgSend_displayedHostname(self, v9, v10);

    v5 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CKPersona)persona
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v8 = 0;
  objc_msgSend_ck_getPersona_error_(v3, v4, &v8, 0);
  v5 = v8;
  v6 = v8;

  return v5;
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
      v8 = objc_msgSend_appleAccount(self, v6, v7);
      v11 = objc_msgSend_appleAccount(v5, v9, v10);

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
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

@end