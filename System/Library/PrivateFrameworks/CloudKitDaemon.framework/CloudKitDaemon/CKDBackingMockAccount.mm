@interface CKDBackingMockAccount
+ (id)mockAccountWithTestAccount:(id)account testDevice:(id)device;
- (BOOL)isAccountSuspended;
- (BOOL)isWarmingUp;
- (id)_initMockAccountWithTestAccount:(id)account testDevice:(id)device;
- (id)cloudKitAuthTokenWithError:(id *)error;
- (id)dsid;
- (id)fullName;
- (id)iCloudAuthTokenWithError:(id *)error;
- (id)identifier;
- (id)persona;
- (id)primaryEmail;
- (id)suspendedAccountIdentifier;
- (void)renewAuthTokenWithOptions:(id)options completionHandler:(id)handler;
- (void)updateAccountPropertiesAndSaveAccountInStore:(id)store completionHandler:(id)handler;
- (void)validateVettingToken:(id)token vettingEmail:(id)email vettingPhone:(id)phone completionHandler:(id)handler;
@end

@implementation CKDBackingMockAccount

- (id)_initMockAccountWithTestAccount:(id)account testDevice:(id)device
{
  accountCopy = account;
  deviceCopy = device;
  v12 = deviceCopy;
  if (accountCopy)
  {
    if (deviceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKDBackingMockAccount.m", 37, @"Invalid parameter not satisfying: %@", @"testAccount");

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDBackingMockAccount.m", 38, @"Invalid parameter not satisfying: %@", @"testDevice");

LABEL_3:
  v20.receiver = self;
  v20.super_class = CKDBackingMockAccount;
  v13 = [(CKDBackingAccount *)&v20 init];
  p_isa = &v13->super.super.isa;
  if (v13)
  {
    objc_storeStrong(&v13->_testAccount, account);
    objc_storeStrong(p_isa + 4, device);
  }

  return p_isa;
}

+ (id)mockAccountWithTestAccount:(id)account testDevice:(id)device
{
  v47 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  deviceCopy = device;
  v11 = deviceCopy;
  if (accountCopy)
  {
    if (deviceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKDBackingMockAccount.m", 48, @"Invalid parameter not satisfying: %@", @"testAccount");

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v39 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, a2, self, @"CKDBackingMockAccount.m", 49, @"Invalid parameter not satisfying: %@", @"testDevice");

LABEL_3:
  v12 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v9, v10);
  objc_msgSend_isDataSeparated(v12, v13, v14);
  if (!CKBoolFromCKTernary())
  {
LABEL_7:
    v27 = [self alloc];
    inited = objc_msgSend__initMockAccountWithTestAccount_testDevice_(v27, v28, accountCopy, v11);
    goto LABEL_8;
  }

  v17 = objc_msgSend_identifier(v12, v15, v16);
  v20 = objc_msgSend_accountOverrideInfo(accountCopy, v18, v19);
  v23 = objc_msgSend_accountPropertyOverrides(v20, v21, v22);
  v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, *MEMORY[0x277CB8B18]);

  if (!v17 || (objc_msgSend_isEqualToString_(v25, v26, v17) & 1) != 0)
  {

    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v32 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v33 = v32;
    v36 = objc_msgSend_accountID(accountCopy, v34, v35);
    *buf = 138412802;
    v42 = v17;
    v43 = 2112;
    v44 = v36;
    v45 = 2112;
    v46 = v25;
    _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Current persona identifier %@ does not match persona override on requested mock account %@: %@. Not returning an account", buf, 0x20u);
  }

  inited = 0;
LABEL_8:

  v30 = *MEMORY[0x277D85DE8];

  return inited;
}

- (void)updateAccountPropertiesAndSaveAccountInStore:(id)store completionHandler:(id)handler
{
  v5 = MEMORY[0x277CBC560];
  v6 = *MEMORY[0x277CBC120];
  handlerCopy = handler;
  v9 = objc_msgSend_errorWithDomain_code_format_(v5, v8, v6, 1000, @"Mock account was asked to refresh account properties. This is unsupported");
  (*(handler + 2))(handlerCopy, 0, v9);
}

- (void)validateVettingToken:(id)token vettingEmail:(id)email vettingPhone:(id)phone completionHandler:(id)handler
{
  v7 = MEMORY[0x277CBC560];
  v8 = *MEMORY[0x277CBC120];
  handlerCopy = handler;
  v11 = objc_msgSend_errorWithDomain_code_format_(v7, v10, v8, 1000, @"Mock account was asked to validate vetting token. This is unsupported");
  (*(handler + 2))(handlerCopy, 0, v11);
}

- (id)dsid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dsid = selfCopy->_dsid;
  if (!dsid)
  {
    v6 = objc_msgSend_testAccount(selfCopy, v3, v4);
    v9 = objc_msgSend_dsid(v6, v7, v8);

    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%lld", v9);
    v12 = selfCopy->_dsid;
    selfCopy->_dsid = v11;

    dsid = selfCopy->_dsid;
  }

  v13 = dsid;
  objc_sync_exit(selfCopy);

  return v13;
}

- (id)identifier
{
  v3 = objc_msgSend_testAccount(self, a2, v2);
  v6 = objc_msgSend_globallyUniqueID(v3, v4, v5);

  return v6;
}

- (id)primaryEmail
{
  v3 = objc_msgSend_testAccount(self, a2, v2);
  v6 = objc_msgSend_email(v3, v4, v5);

  return v6;
}

- (id)fullName
{
  v3 = objc_msgSend_testAccount(self, a2, v2);
  v6 = objc_msgSend_nameComponents(v3, v4, v5);

  return v6;
}

- (id)persona
{
  v3 = objc_msgSend_testAccount(self, a2, v2);
  v6 = objc_msgSend_accountOverrideInfo(v3, v4, v5);
  v9 = objc_msgSend_accountPropertyOverrides(v6, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, *MEMORY[0x277CB8B18]);

  if (v11)
  {
    v13 = objc_msgSend_personaWithIdentifier_error_(MEMORY[0x277CBC558], v12, v11, 0);
    if (!v13)
    {
      v14 = objc_alloc(MEMORY[0x277CBC558]);
      v13 = objc_msgSend_initWithIdentifier_type_(v14, v15, v11, 0);
    }
  }

  else
  {
    v16 = objc_msgSend_personasWithType_error_(MEMORY[0x277CBC558], v12, 1, 0);
    v13 = objc_msgSend_firstObject(v16, v17, v18);
  }

  return v13;
}

- (id)cloudKitAuthTokenWithError:(id *)error
{
  v5 = objc_msgSend_testDevice(self, a2, error);
  hasValidCredentials = objc_msgSend_hasValidCredentials(v5, v6, v7);

  if ((hasValidCredentials & 1) == 0)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 1002, @"TestDevice is withholding credentials for account");
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v11 = objc_msgSend_testAccount(self, v9, v10);
  v14 = objc_msgSend_needsToVerifyTerms(v11, v12, v13);

  if (v14)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 1004, @"TestAccount is simulating Needs to Verify Terms");
LABEL_7:
      *error = v17 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = objc_msgSend_testAccount(self, v15, v16);
  v22 = objc_msgSend_accountOverrideInfo(v19, v20, v21);
  v25 = objc_msgSend_password(v22, v23, v24);
  v17 = objc_msgSend_stringWithFormat_(v18, v26, @"CKAuthToken-%@-%zu", v25, qword_27D71F838);

LABEL_10:

  return v17;
}

- (id)iCloudAuthTokenWithError:(id *)error
{
  v5 = objc_msgSend_testDevice(self, a2, error);
  hasValidCredentials = objc_msgSend_hasValidCredentials(v5, v6, v7);

  if (hasValidCredentials)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_msgSend_testAccount(self, v9, v10);
    v15 = objc_msgSend_accountOverrideInfo(v12, v13, v14);
    v18 = objc_msgSend_password(v15, v16, v17);
    v20 = objc_msgSend_stringWithFormat_(v11, v19, @"ICAuthToken-%@-%zu", v18, qword_27D71F838);
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 1002, @"TestDevice is withholding credentials for account");
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isWarmingUp
{
  v3 = objc_msgSend_testAccount(self, a2, v2);
  isWarmingUp = objc_msgSend_isWarmingUp(v3, v4, v5);

  return isWarmingUp;
}

- (id)suspendedAccountIdentifier
{
  if ((objc_msgSend_isAccountSuspended(self, a2, v2) & 1) == 0)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CKDBackingMockAccount.m", 198, @"Should only be called for suspended accounts.");
  }

  return objc_msgSend_identifier(self, v5, v6);
}

- (BOOL)isAccountSuspended
{
  v4 = objc_msgSend_testAccount(self, a2, v2);
  v7 = objc_msgSend_needsToVerifyTerms(v4, v5, v6);

  if (v7)
  {
    return 1;
  }

  v9.receiver = self;
  v9.super_class = CKDBackingMockAccount;
  return [(CKDBackingAccount *)&v9 isAccountSuspended];
}

- (void)renewAuthTokenWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Mock: Re-fetching our auth token", buf, 2u);
  }

  if (objc_msgSend_isAccountSuspended(self, v9, v10))
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1004, @"TestAccount is simulating Needs to Verify Terms");
    v13 = 0;
    v16 = objc_msgSend_length(0, v14, v15);
  }

  else
  {
    v21 = 0;
    v13 = objc_msgSend_iCloudAuthTokenWithError_(self, v11, &v21);
    v12 = v21;
    if (objc_msgSend_length(v13, v17, v18) && !v12)
    {
      ++qword_27D71F838;
    }

    v16 = objc_msgSend_length(v13, v19, v20);
  }

  handlerCopy[2](handlerCopy, v16 != 0, v12);
}

@end