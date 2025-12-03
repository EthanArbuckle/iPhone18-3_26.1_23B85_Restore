@interface IDSDSignInResponder
- (BOOL)_gameCenterShouldSigninOnModify;
- (BOOL)_shouldServiceBeDisabledOnSignOut:(id)out forDomain:(int64_t)domain;
- (BOOL)_shouldServiceBeEnabledOnSignIn:(id)in forDomain:(int64_t)domain;
- (IDSDSignInResponder)initWithAccountController:(id)controller serviceController:(id)serviceController passwordManager:(id)manager registrationConductor:(id)conductor deviceSupport:(id)support registrationControl:(id)control registrationController:(id)registrationController userStore:(id)self0;
- (IDSDSignInResponder)initWithUserStore:(id)store;
- (id)accountStore;
- (void)_modifyDomainWithUsername:(id)username;
- (void)_modifyGameCenterAccountPropertiesForUsername:(id)username;
- (void)_reregisterAndReProvisionForEDULoginWithUsername:(id)username;
- (void)_signInDomain:(int64_t)domain withUsername:(id)username authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles;
- (void)_signOutDomain:(int64_t)domain;
- (void)_updateDomainWithUsername:(id)username accountInfo:(id)info;
- (void)updateUserWithOldUsername:(id)username newUsername:(id)newUsername;
@end

@implementation IDSDSignInResponder

- (IDSDSignInResponder)initWithUserStore:(id)store
{
  storeCopy = store;
  v5 = +[IDSDaemon sharedInstance];
  registrationConductor = [v5 registrationConductor];

  v7 = +[IDSDAccountController sharedInstance];
  v8 = +[IDSDServiceController sharedInstance];
  v9 = +[FTPasswordManager sharedInstance];
  v10 = +[FTDeviceSupport sharedInstance];
  v11 = +[IDSDRegistrationControl sharedInstance];
  v12 = +[IDSRegistrationController sharedInstance];
  v13 = [(IDSDSignInResponder *)self initWithAccountController:v7 serviceController:v8 passwordManager:v9 registrationConductor:registrationConductor deviceSupport:v10 registrationControl:v11 registrationController:v12 userStore:storeCopy];

  return v13;
}

- (IDSDSignInResponder)initWithAccountController:(id)controller serviceController:(id)serviceController passwordManager:(id)manager registrationConductor:(id)conductor deviceSupport:(id)support registrationControl:(id)control registrationController:(id)registrationController userStore:(id)self0
{
  controllerCopy = controller;
  serviceControllerCopy = serviceController;
  managerCopy = manager;
  conductorCopy = conductor;
  supportCopy = support;
  controlCopy = control;
  registrationControllerCopy = registrationController;
  storeCopy = store;
  v30.receiver = self;
  v30.super_class = IDSDSignInResponder;
  v18 = [(IDSDSignInResponder *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accountController, controller);
    objc_storeStrong(&v19->_serviceController, serviceController);
    objc_storeStrong(&v19->_passwordManager, manager);
    objc_storeStrong(&v19->_registrationConductor, conductor);
    objc_storeStrong(&v19->_deviceSupport, support);
    objc_storeStrong(&v19->_registrationControl, control);
    objc_storeStrong(&v19->_registrationController, registrationController);
    objc_storeStrong(&v19->_userStore, store);
    v20 = +[IDSServerBag sharedInstance];
    serverBag = v19->_serverBag;
    v19->_serverBag = v20;
  }

  return v19;
}

- (id)accountStore
{
  v2 = objc_alloc_init(IMWeakLinkClass());

  return v2;
}

- (BOOL)_gameCenterShouldSigninOnModify
{
  serverBag = [(IDSDSignInResponder *)self serverBag];
  v3 = [serverBag objectForKey:@"gamecenter-signin-on-modify"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_shouldServiceBeEnabledOnSignIn:(id)in forDomain:(int64_t)domain
{
  inCopy = in;
  if ([inCopy adHocServiceType])
  {
    goto LABEL_2;
  }

  switch(domain)
  {
    case 3:
      serviceController = [(IDSDSignInResponder *)self serviceController];
      gameCenterService = [serviceController gameCenterService];
      goto LABEL_9;
    case 2:
      serviceController = [(IDSDSignInResponder *)self serviceController];
      gameCenterService = [serviceController iTunesService];
LABEL_9:
      iCloudBasedService = gameCenterService == inCopy;

      goto LABEL_10;
    case 1:
      iCloudBasedService = [inCopy iCloudBasedService];
      goto LABEL_10;
  }

LABEL_2:
  iCloudBasedService = 0;
LABEL_10:

  return iCloudBasedService;
}

- (BOOL)_shouldServiceBeDisabledOnSignOut:(id)out forDomain:(int64_t)domain
{
  outCopy = out;
  if ([outCopy adHocServiceType])
  {
    goto LABEL_2;
  }

  switch(domain)
  {
    case 3:
      serviceController = [(IDSDSignInResponder *)self serviceController];
      gameCenterService = [serviceController gameCenterService];
      goto LABEL_9;
    case 2:
      serviceController = [(IDSDSignInResponder *)self serviceController];
      gameCenterService = [serviceController iTunesService];
LABEL_9:
      iCloudBasedService = gameCenterService == outCopy;

      goto LABEL_10;
    case 1:
      iCloudBasedService = [outCopy iCloudBasedService];
      goto LABEL_10;
  }

LABEL_2:
  iCloudBasedService = 0;
LABEL_10:

  return iCloudBasedService;
}

- (void)updateUserWithOldUsername:(id)username newUsername:(id)newUsername
{
  usernameCopy = username;
  newUsernameCopy = newUsername;
  passwordManager = [(IDSDSignInResponder *)self passwordManager];
  [passwordManager updatePreviousUsername:usernameCopy toNewUsername:newUsernameCopy];

  selfCopy = self;
  serviceController = [(IDSDSignInResponder *)self serviceController];
  allServices = [serviceController allServices];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = allServices;
  v12 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v27;
    *&v13 = 138413058;
    v24 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = +[IMRGLog iCloud];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [v17 identifier];
          *buf = 138412802;
          v31 = usernameCopy;
          v32 = 2112;
          v33 = newUsernameCopy;
          v34 = 2112;
          v35 = identifier;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Checking if loginID update is needed for existing account on service { oldUsername: %@, newUsername: %@, serviceIdentifier: %@ }", buf, 0x20u);
        }

        accountController = [(IDSDSignInResponder *)selfCopy accountController];
        v21 = [accountController existingAccountOnService:v17 withType:1 loginID:usernameCopy];

        if (v21)
        {
          v22 = +[IMRGLog iCloud];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [v17 identifier];
            *buf = v24;
            v31 = usernameCopy;
            v32 = 2112;
            v33 = newUsernameCopy;
            v34 = 2112;
            v35 = identifier2;
            v36 = 2112;
            v37 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating loginID on existing account { oldUsername: %@, newUsername: %@, serviceIdentifier: %@, account: %@ }", buf, 0x2Au);
          }

          [v21 setLoginID:newUsernameCopy];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v14);
  }
}

- (void)_signInDomain:(int64_t)domain withUsername:(id)username authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles
{
  usernameCopy = username;
  tokenCopy = token;
  passwordCopy = password;
  infoCopy = info;
  statusCopy = status;
  handlesCopy = handles;
  v19 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (domain > 3)
    {
      v20 = @"Invalid";
    }

    else
    {
      v20 = *(&off_100BDF1D8 + domain);
    }

    v21 = [passwordCopy length];
    *buf = 138413570;
    v22 = @"YES";
    v127 = v20;
    v128 = 2112;
    if (!v21)
    {
      v22 = @"NO";
    }

    v129 = usernameCopy;
    v130 = 2112;
    v131 = tokenCopy;
    v132 = 2112;
    v133 = v22;
    v134 = 2112;
    v135 = statusCopy;
    v136 = 2112;
    v137 = handlesCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IDS responding to sign-in { domain: %@, username: %@, token: %@, hasPassword: %@, accountStatus: %@, handles: %@ }", buf, 0x3Eu);
  }

  accountController = [(IDSDSignInResponder *)self accountController];
  hasHardDeregistered = [accountController hasHardDeregistered];

  if (hasHardDeregistered)
  {
    v25 = +[IMRGLog iCloud];
    v26 = usernameCopy;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v27 = "Device has hard deregistered -- ignoring sign-in";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
      goto LABEL_89;
    }

    goto LABEL_89;
  }

  v26 = usernameCopy;
  if ([usernameCopy length])
  {
    if (domain == 1)
    {
      deviceSupport = [(IDSDSignInResponder *)self deviceSupport];
      isGreenTea = [deviceSupport isGreenTea];

      if ((isGreenTea & 1) == 0)
      {
        registrationControl = [(IDSDSignInResponder *)self registrationControl];
        [registrationControl updateRegistrationType:0 toState:2 error:0];
      }

      registrationController = [(IDSDSignInResponder *)self registrationController];
      [registrationController noteiCloudSignInTime];

      v26 = usernameCopy;
    }

    v32 = [infoCopy objectForKey:kIDSServiceDefaultsSelfHandleKey];
    v33 = [infoCopy objectForKey:kIDSServiceDefaultsAuthorizationIDKey];
    v100 = v33;
    if ([tokenCopy length])
    {
      passwordManager = [(IDSDSignInResponder *)self passwordManager];
      v35 = v26;
      passwordManager2 = passwordManager;
      [passwordManager setAuthTokenForProfileID:v33 username:v35 service:IDSServiceKey authToken:tokenCopy selfHandle:v32 accountStatus:&off_100C3C940 outRequestID:0 completionBlock:0];
    }

    else if ([passwordCopy length])
    {
      passwordManager2 = [(IDSDSignInResponder *)self passwordManager];
      [passwordManager2 setPasswordForProfileID:v33 username:usernameCopy service:IDSServiceKey password:passwordCopy outRequestID:0 completionBlock:0];
    }

    else
    {
      if (!statusCopy || (v37 = [(__CFString *)statusCopy integerValue]) != 0 && v37 != 5103 && v37 != 5100)
      {
LABEL_31:
        v95 = statusCopy;
        v97 = passwordCopy;
        v98 = tokenCopy;
        v39 = v33;
        if (handlesCopy)
        {
          passwordManager3 = [(IDSDSignInResponder *)self passwordManager];
          [passwordManager3 setHandlesForProfileID:v33 username:usernameCopy service:IDSServiceKey handles:handlesCopy];
        }

        v94 = handlesCopy;
        v96 = infoCopy;
        v108 = [[NSMutableDictionary alloc] initWithDictionary:infoCopy];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        serviceController = [(IDSDSignInResponder *)self serviceController];
        allServices = [serviceController allServices];

        obj = allServices;
        v43 = [allServices countByEnumeratingWithState:&v119 objects:v125 count:16];
        v26 = usernameCopy;
        domainCopy2 = domain;
        if (!v43)
        {
LABEL_84:

          tokenCopy = v98;
          if (domainCopy2 == 1)
          {
            v93 = [v26 length];
            if (v98)
            {
              if (v93)
              {
                [(IDSDSignInResponder *)self _reregisterAndReProvisionForEDULoginWithUsername:v26];
              }
            }
          }

          infoCopy = v96;
          passwordCopy = v97;
          handlesCopy = v94;
          statusCopy = v95;
          v25 = v32;
          goto LABEL_89;
        }

        v45 = v43;
        v46 = *v120;
        v99 = *v120;
LABEL_35:
        v47 = 0;
        v102 = v45;
        while (1)
        {
          if (*v120 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v119 + 1) + 8 * v47);
          if (![(IDSDSignInResponder *)self _shouldServiceBeEnabledOnSignIn:v48 forDomain:domainCopy2])
          {
            goto LABEL_82;
          }

          v49 = objc_alloc_init(NSMutableArray);
          accountController2 = [(IDSDSignInResponder *)self accountController];
          v51 = [accountController2 existingAccountOnService:v48 withType:1 loginID:v26];

          if (v51)
          {
            [(IDSDAccount *)v51 _updateAccountWithAccountInfo:v108];
            accountController3 = +[IMRGLog iCloud];
            if (os_log_type_enabled(accountController3, OS_LOG_TYPE_DEFAULT))
            {
              smallDescription = [(IDSDAccount *)v51 smallDescription];
              *buf = 138412546;
              v127 = v48;
              v128 = 2112;
              v129 = smallDescription;
              _os_log_impl(&_mh_execute_header, accountController3, OS_LOG_TYPE_DEFAULT, "Updated existing account with account info { service: %@, account: %@ }", buf, 0x16u);
            }
          }

          else
          {
            v54 = [IDSDAccount alloc];
            v55 = +[NSString stringGUID];
            v51 = [(IDSDAccount *)v54 initWithLoginID:v26 service:v48 uniqueID:v55 accountType:1 accountConfig:v108];

            v56 = +[IMRGLog iCloud];
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              smallDescription2 = [(IDSDAccount *)v51 smallDescription];
              *buf = 138412546;
              v127 = v48;
              v128 = 2112;
              v129 = smallDescription2;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Created new account for sign-in { service: %@, account: %@ }", buf, 0x16u);
            }

            accountController3 = [(IDSDSignInResponder *)self accountController];
            [accountController3 addAccount:v51];
          }

          deviceSupport2 = [(IDSDSignInResponder *)self deviceSupport];
          if (![deviceSupport2 registrationSupported])
          {
            goto LABEL_52;
          }

          registrationController2 = [(IDSDSignInResponder *)self registrationController];
          if (([registrationController2 systemSupportsPhoneNumberRegistration] & 1) == 0)
          {
            break;
          }

          wantsPhoneNumberAccount = [(__CFString *)v48 wantsPhoneNumberAccount];

          if (wantsPhoneNumberAccount)
          {
            v61 = +[IMRGLog iCloud];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Triggering DS realm reload", buf, 2u);
            }

            deviceSupport2 = [(IDSDSignInResponder *)self userStore];
            [deviceSupport2 reloadUsersForRealm:1];
            goto LABEL_52;
          }

LABEL_53:
          v106 = v47;
          v104 = v49;
          [v49 addObject:v51];
          v62 = +[IDSDServiceController sharedInstance];
          v105 = v51;
          service = [(IDSDAccount *)v51 service];
          v64 = [v62 linkedServicesForService:service];

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v65 = v64;
          v66 = [v65 countByEnumeratingWithState:&v115 objects:v124 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v116;
            do
            {
              for (i = 0; i != v67; i = i + 1)
              {
                if (*v116 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                v70 = *(*(&v115 + 1) + 8 * i);
                if ([(__CFString *)v70 disabledOnTinkerWatch])
                {
                  v71 = +[IDSPairingManager sharedInstance];
                  isCurrentDeviceTinkerConfiguredWatch = [v71 isCurrentDeviceTinkerConfiguredWatch];

                  if (isCurrentDeviceTinkerConfiguredWatch)
                  {
                    continue;
                  }
                }

                accountController4 = [(IDSDSignInResponder *)self accountController];
                v74 = [accountController4 existingAccountOnService:v70 withType:1 loginID:v26];

                if (v74)
                {
                  [(IDSDAccount *)v74 _updateAccountWithAccountInfo:v108];
                  accountController5 = +[IMRGLog iCloud];
                  if (os_log_type_enabled(accountController5, OS_LOG_TYPE_DEFAULT))
                  {
                    smallDescription3 = [(IDSDAccount *)v74 smallDescription];
                    *buf = 138412546;
                    v127 = v70;
                    v128 = 2112;
                    v129 = smallDescription3;
                    _os_log_impl(&_mh_execute_header, accountController5, OS_LOG_TYPE_DEFAULT, "Updated existing linked account with account info { service: %@, account: %@ }", buf, 0x16u);

                    v26 = usernameCopy;
                  }
                }

                else
                {
                  v77 = [IDSDAccount alloc];
                  v78 = +[NSString stringGUID];
                  v74 = [(IDSDAccount *)v77 initWithLoginID:v26 service:v70 uniqueID:v78 accountType:1 accountConfig:v108];

                  v79 = +[IMRGLog iCloud];
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    smallDescription4 = [(IDSDAccount *)v74 smallDescription];
                    *buf = 138412546;
                    v127 = v70;
                    v128 = 2112;
                    v129 = smallDescription4;
                    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Created new linked account for sign-in { service: %@, account: %@ }", buf, 0x16u);

                    v26 = usernameCopy;
                  }

                  accountController5 = [(IDSDSignInResponder *)self accountController];
                  [accountController5 addAccount:v74];
                }
              }

              v67 = [v65 countByEnumeratingWithState:&v115 objects:v124 count:16];
            }

            while (v67);
          }

          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v81 = v104;
          v82 = [v81 countByEnumeratingWithState:&v111 objects:v123 count:16];
          if (v82)
          {
            v83 = v82;
            v84 = *v112;
            do
            {
              for (j = 0; j != v83; j = j + 1)
              {
                if (*v112 != v84)
                {
                  objc_enumerationMutation(v81);
                }

                v86 = *(*(&v111 + 1) + 8 * j);
                accountController6 = [(IDSDSignInResponder *)self accountController];
                uniqueID = [v86 uniqueID];
                [accountController6 enableAccountWithUniqueID:uniqueID];

                linkedAccounts = [v86 linkedAccounts];
                v110[0] = _NSConcreteStackBlock;
                v110[1] = 3221225472;
                v110[2] = sub_1005036C4;
                v110[3] = &unk_100BDB090;
                v110[4] = self;
                [linkedAccounts __imForEach:v110];

                registrationStatus = [v86 registrationStatus];
                if (registrationStatus != -1 && registrationStatus != 5)
                {
                  [v86 registerAccount];
                }

                linkedAccounts2 = [v86 linkedAccounts];
                v109[0] = _NSConcreteStackBlock;
                v109[1] = 3221225472;
                v109[2] = sub_10050373C;
                v109[3] = &unk_100BDB090;
                v109[4] = v86;
                [linkedAccounts2 __imForEach:v109];
              }

              v83 = [v81 countByEnumeratingWithState:&v111 objects:v123 count:16];
            }

            while (v83);
          }

          v26 = usernameCopy;
          v39 = v100;
          domainCopy2 = domain;
          v45 = v102;
          v46 = v99;
          v47 = v106;
LABEL_82:
          if (++v47 == v45)
          {
            v45 = [obj countByEnumeratingWithState:&v119 objects:v125 count:16];
            if (!v45)
            {
              goto LABEL_84;
            }

            goto LABEL_35;
          }
        }

LABEL_52:
        goto LABEL_53;
      }

      v38 = +[IMRGLog iCloud];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v127 = statusCopy;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Saving status to the account { accountStatus: %@ }", buf, 0xCu);
      }

      passwordManager2 = [(IDSDSignInResponder *)self passwordManager];
      [passwordManager2 setAccountStatus:statusCopy forProfileID:v33 username:usernameCopy service:IDSServiceKey];
    }

    goto LABEL_31;
  }

  v25 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v27 = "No username provided -- ignoring sign-in";
    goto LABEL_20;
  }

LABEL_89:
}

- (void)_signOutDomain:(int64_t)domain
{
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (domain > 3)
    {
      v6 = @"Invalid";
    }

    else
    {
      v6 = *(&off_100BDF1D8 + domain);
    }

    *buf = 138412290;
    v50 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS responding to sign-out { domain: %@ }", buf, 0xCu);
  }

  accountController = [(IDSDSignInResponder *)self accountController];
  hasHardDeregistered = [accountController hasHardDeregistered];

  if (hasHardDeregistered)
  {
    userStore = +[IMRGLog iCloud];
    if (os_log_type_enabled(userStore, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, userStore, OS_LOG_TYPE_DEFAULT, "Device has hard deregistered -- ignoring sign-out", buf, 2u);
    }

    goto LABEL_34;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  serviceController = [(IDSDSignInResponder *)self serviceController];
  allServices = [serviceController allServices];

  obj = allServices;
  v12 = [allServices countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    v33 = *v44;
    domainCopy = domain;
    do
    {
      v15 = 0;
      v35 = v13;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * v15);
        if ([(IDSDSignInResponder *)self _shouldServiceBeDisabledOnSignOut:v16 forDomain:domain])
        {
          v37 = v15;
          accountController2 = [(IDSDSignInResponder *)self accountController];
          v18 = [accountController2 accountsOnService:v16];
          _copyForEnumerating = [v18 _copyForEnumerating];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = _copyForEnumerating;
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v40;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v39 + 1) + 8 * i);
                accountType = [v25 accountType];
                v27 = +[IMRGLog iCloud];
                v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
                if (accountType == 1)
                {
                  if (v28)
                  {
                    smallDescription = [v25 smallDescription];
                    *buf = 138412290;
                    v50 = smallDescription;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Removing account for sign-out { account: %@ }", buf, 0xCu);
                  }

                  accountController3 = [(IDSDSignInResponder *)self accountController];
                  [accountController3 removeAccount:v25];

                  linkedAccounts = [v25 linkedAccounts];
                  v38[0] = _NSConcreteStackBlock;
                  v38[1] = 3221225472;
                  v38[2] = sub_100503C14;
                  v38[3] = &unk_100BDB090;
                  v38[4] = self;
                  [linkedAccounts __imForEach:v38];
                }

                else
                {
                  if (v28)
                  {
                    smallDescription2 = [v25 smallDescription];
                    *buf = 138412290;
                    v50 = smallDescription2;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Skipping removal of non-Apple ID account for sign-out { account: %@ }", buf, 0xCu);
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v22);
          }

          v14 = v33;
          domain = domainCopy;
          v13 = v35;
          v15 = v37;
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }

  if (domain == 1)
  {
    userStore = [(IDSDSignInResponder *)self userStore];
    [userStore reloadUsersForRealm:1];
LABEL_34:
  }
}

- (void)_updateDomainWithUsername:(id)username accountInfo:(id)info
{
  usernameCopy = username;
  infoCopy = info;
  v7 = IDSAuthenticationDelegateUpdateTimeOfLastAuthenticationResponseAndGetDelta();
  v8 = &uuid_unparse_upper_ptr;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v90 = usernameCopy;
    v91 = 2112;
    v92 = infoCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDS responding to updated account info { username: %@, accountInfo: %@ }", buf, 0x16u);
  }

  accountController = [(IDSDSignInResponder *)self accountController];
  hasHardDeregistered = [accountController hasHardDeregistered];

  if (!hasHardDeregistered)
  {
    accountStore = [(IDSDSignInResponder *)self accountStore];
    if (qword_100CBD678 != -1)
    {
      sub_100927D08();
    }

    v12 = [accountStore accountTypeWithAccountTypeIdentifier:qword_100CBD680];
    if (v12)
    {
      [accountStore accountsWithAccountType:v12];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v14 = v85 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v82 objects:v88 count:16];
      if (v15)
      {
        v16 = v15;
        selfCopy = self;
        v58 = v12;
        v60 = v7;
        v17 = *v83;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v83 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v82 + 1) + 8 * i);
            v20 = [v19 accountPropertyForKey:{@"primaryAccount", v58}];
            bOOLValue = [v20 BOOLValue];

            if (bOOLValue)
            {
              username = [v19 username];
              v23 = [usernameCopy isEqualToIgnoringCase:username];

              if (v23)
              {
                v24 = 1;
                goto LABEL_21;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v82 objects:v88 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = 0;
LABEL_21:
        v12 = v58;
        v7 = v60;
        self = selfCopy;
      }

      else
      {
        v24 = 0;
      }

      v8 = &uuid_unparse_upper_ptr;
    }

    else
    {
      v24 = 0;
    }

    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_1005043C0;
    v80[3] = &unk_100BDF178;
    infoCopy = infoCopy;
    v81 = infoCopy;
    v25 = objc_retainBlock(v80);
    v26 = +[IMRGLog registration];
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v27)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update called but for the primary iCloud -- committing update to relevant accounts", buf, 2u);
      }

      v59 = v12;
      v61 = v7;

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      serviceController = [(IDSDSignInResponder *)self serviceController];
      allServices = [serviceController allServices];

      v30 = [allServices countByEnumeratingWithState:&v76 objects:v87 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v77;
        v33 = v25 + 16;
        v64 = allServices;
        selfCopy2 = self;
        v63 = *v77;
        do
        {
          v34 = 0;
          v67 = v31;
          do
          {
            if (*v77 != v32)
            {
              objc_enumerationMutation(allServices);
            }

            v35 = *(*(&v76 + 1) + 8 * v34);
            if ([v35 iCloudBasedService] && !objc_msgSend(v35, "adHocServiceType"))
            {
              v68 = v34;
              accountController2 = [(IDSDSignInResponder *)self accountController];
              v37 = [accountController2 accountsOnService:v35 withType:1];
              _copyForEnumerating = [v37 _copyForEnumerating];

              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v39 = _copyForEnumerating;
              v40 = [v39 countByEnumeratingWithState:&v72 objects:v86 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v73;
                do
                {
                  v43 = 0;
                  v69 = v41;
                  do
                  {
                    if (*v73 != v42)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v44 = *(*(&v72 + 1) + 8 * v43);
                    if ([v44 accountType] == 1)
                    {
                      iCloud = [v8[504] iCloud];
                      if (os_log_type_enabled(iCloud, OS_LOG_TYPE_DEFAULT))
                      {
                        [v44 smallDescription];
                        v46 = v42;
                        v47 = v39;
                        v48 = v25;
                        v49 = infoCopy;
                        v50 = v33;
                        v52 = v51 = v8;
                        *buf = 138412290;
                        v90 = v52;
                        _os_log_impl(&_mh_execute_header, iCloud, OS_LOG_TYPE_DEFAULT, "Updating matching account (and linked accounts) with account info { account: %@ }", buf, 0xCu);

                        v8 = v51;
                        v33 = v50;
                        infoCopy = v49;
                        v25 = v48;
                        v39 = v47;
                        v42 = v46;
                        v41 = v69;
                      }

                      v53 = (*(v25 + 2))(v25, v44);

                      [v44 _updateAccountWithAccountInfo:v53];
                      linkedAccounts = [v44 linkedAccounts];
                      v70[0] = _NSConcreteStackBlock;
                      v70[1] = 3221225472;
                      v70[2] = sub_100504530;
                      v70[3] = &unk_100BDB090;
                      infoCopy = v53;
                      v71 = infoCopy;
                      [linkedAccounts __imForEach:v70];
                    }

                    v43 = v43 + 1;
                  }

                  while (v41 != v43);
                  v41 = [v39 countByEnumeratingWithState:&v72 objects:v86 count:16];
                }

                while (v41);
              }

              allServices = v64;
              self = selfCopy2;
              v32 = v63;
              v31 = v67;
              v34 = v68;
            }

            v34 = v34 + 1;
          }

          while (v34 != v31);
          v31 = [allServices countByEnumeratingWithState:&v76 objects:v87 count:16];
        }

        while (v31);
      }

      v7 = v61;
      if (!v61)
      {
        v12 = v59;
        goto LABEL_53;
      }

      v55 = [IDSRegistrationAuthenticationParametersReceivedMetric alloc];
      [v61 doubleValue];
      v26 = [v55 initWithErrorCode:0 timeIntervalSinceAuthenticationParameterRequest:?];
      v56 = +[IDSAWDLogger logger];
      [v56 logMetric:v26];

      v57 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v57 logMetric:v26];

      v12 = v59;
    }

    else if (v27)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update called but for account other than the primary iCloud -- ignoring update", buf, 2u);
    }

LABEL_53:
    goto LABEL_54;
  }

  v12 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " Device has hard deregistered -- ignoring update", buf, 2u);
  }

LABEL_54:
}

- (void)_modifyDomainWithUsername:(id)username
{
  usernameCopy = username;
  v5 = &uuid_unparse_upper_ptr;
  v6 = +[IMRGLog registration];
  v7 = &off_1009AB000;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = usernameCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDS responding to account modification { username: %@ }", buf, 0xCu);
  }

  accountStore = [(IDSDSignInResponder *)self accountStore];
  if (qword_100CBD688 != -1)
  {
    sub_100927D30();
  }

  v9 = [accountStore accountTypeWithAccountTypeIdentifier:qword_100CBD690];
  if (v9)
  {
    [accountStore accountsWithAccountType:v9];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v26 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      selfCopy = self;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          username = [v14 username];
          v16 = [usernameCopy isEqualToIgnoringCase:username];

          if (v16)
          {
            v11 = v14;
            goto LABEL_16;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_16:
      self = selfCopy;
      v5 = &uuid_unparse_upper_ptr;
      v7 = &off_1009AB000;
    }
  }

  else
  {
    v11 = 0;
  }

  iCloud = [v5[504] iCloud];
  if (os_log_type_enabled(iCloud, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v7 + 140);
    v29 = v11;
    _os_log_impl(&_mh_execute_header, iCloud, OS_LOG_TYPE_DEFAULT, "Checking IdentityServices accounts to know if we should attempt a repair { foundAccount: %@ }", buf, 0xCu);
  }

  if (v11)
  {
    credential = [v11 credential];
    token = [credential token];

    if (token)
    {
      iCloud2 = [v5[504] iCloud];
      if (os_log_type_enabled(iCloud2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, iCloud2, OS_LOG_TYPE_DEFAULT, "Auth token found on account -- attempting to kick iCloud repair logic", buf, 2u);
      }

      registrationConductor = [(IDSDSignInResponder *)self registrationConductor];
      [registrationConductor kickiCloudRepair];
    }
  }
}

- (void)_modifyGameCenterAccountPropertiesForUsername:(id)username
{
  usernameCopy = username;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = usernameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS responding to account modification for GameCenter domain { username: %@ }", &v19, 0xCu);
  }

  passwordManager = [(IDSDSignInResponder *)self passwordManager];
  v7 = [passwordManager gameCenterPropertiesFromAccountWithUsername:usernameCopy];

  serviceController = [(IDSDSignInResponder *)self serviceController];
  gameCenterService = [serviceController gameCenterService];

  accountController = [(IDSDSignInResponder *)self accountController];
  v11 = [accountController existingAccountOnService:gameCenterService withType:1 loginID:usernameCopy];

  if (v11)
  {
    gameCenterData = [v11 gameCenterData];
    v13 = [gameCenterData isEqual:v7];
    v14 = +[IMRGLog registration];
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Account data is up to date with IDS, ignoring notification", &v19, 2u);
      }
    }

    else
    {
      if (v15)
      {
        v19 = 138412546;
        v20 = gameCenterData;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initiating a reregister to update Game Center specific user data. Data stored in IDS {%@}, updated data received from accounts {%@}", &v19, 0x16u);
      }

      [v11 reregister];
    }
  }

  else
  {
    _gameCenterShouldSigninOnModify = [(IDSDSignInResponder *)self _gameCenterShouldSigninOnModify];
    v17 = +[IMRGLog registration];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (_gameCenterShouldSigninOnModify)
    {
      if (v18)
      {
        v19 = 138412290;
        v20 = usernameCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No GameCenter IDSDAccount found with username {%@}. Trying to sign in.", &v19, 0xCu);
      }

      [(IDSDSignInResponder *)self gameCenterSignInWithUsername:usernameCopy authToken:0 password:0 accountInfo:0 accountStatus:0 handles:0];
    }

    else
    {
      if (v18)
      {
        v19 = 138412290;
        v20 = usernameCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No GameCenter IDSDAccount found with username {%@}. Cannot modify.", &v19, 0xCu);
      }
    }
  }
}

- (void)_reregisterAndReProvisionForEDULoginWithUsername:(id)username
{
  usernameCopy = username;
  deviceSupport = [(IDSDSignInResponder *)self deviceSupport];
  isInMultiUserMode = [deviceSupport isInMultiUserMode];

  if (isInMultiUserMode)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    accountController = [(IDSDSignInResponder *)self accountController];
    accounts = [accountController accounts];

    v9 = [accounts countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(accounts);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (([v13 isAdHocAccount] & 1) == 0)
          {
            if ([v13 isEnabled])
            {
              loginID = [v13 loginID];
              v15 = [loginID isEqualToIgnoringCase:usernameCopy];

              if (v15)
              {
                [v13 _reregisterAndReProvision];
              }
            }
          }
        }

        v10 = [accounts countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

@end