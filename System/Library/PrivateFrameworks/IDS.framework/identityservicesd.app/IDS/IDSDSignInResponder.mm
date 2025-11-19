@interface IDSDSignInResponder
- (BOOL)_gameCenterShouldSigninOnModify;
- (BOOL)_shouldServiceBeDisabledOnSignOut:(id)a3 forDomain:(int64_t)a4;
- (BOOL)_shouldServiceBeEnabledOnSignIn:(id)a3 forDomain:(int64_t)a4;
- (IDSDSignInResponder)initWithAccountController:(id)a3 serviceController:(id)a4 passwordManager:(id)a5 registrationConductor:(id)a6 deviceSupport:(id)a7 registrationControl:(id)a8 registrationController:(id)a9 userStore:(id)a10;
- (IDSDSignInResponder)initWithUserStore:(id)a3;
- (id)accountStore;
- (void)_modifyDomainWithUsername:(id)a3;
- (void)_modifyGameCenterAccountPropertiesForUsername:(id)a3;
- (void)_reregisterAndReProvisionForEDULoginWithUsername:(id)a3;
- (void)_signInDomain:(int64_t)a3 withUsername:(id)a4 authToken:(id)a5 password:(id)a6 accountInfo:(id)a7 accountStatus:(id)a8 handles:(id)a9;
- (void)_signOutDomain:(int64_t)a3;
- (void)_updateDomainWithUsername:(id)a3 accountInfo:(id)a4;
- (void)updateUserWithOldUsername:(id)a3 newUsername:(id)a4;
@end

@implementation IDSDSignInResponder

- (IDSDSignInResponder)initWithUserStore:(id)a3
{
  v4 = a3;
  v5 = +[IDSDaemon sharedInstance];
  v6 = [v5 registrationConductor];

  v7 = +[IDSDAccountController sharedInstance];
  v8 = +[IDSDServiceController sharedInstance];
  v9 = +[FTPasswordManager sharedInstance];
  v10 = +[FTDeviceSupport sharedInstance];
  v11 = +[IDSDRegistrationControl sharedInstance];
  v12 = +[IDSRegistrationController sharedInstance];
  v13 = [(IDSDSignInResponder *)self initWithAccountController:v7 serviceController:v8 passwordManager:v9 registrationConductor:v6 deviceSupport:v10 registrationControl:v11 registrationController:v12 userStore:v4];

  return v13;
}

- (IDSDSignInResponder)initWithAccountController:(id)a3 serviceController:(id)a4 passwordManager:(id)a5 registrationConductor:(id)a6 deviceSupport:(id)a7 registrationControl:(id)a8 registrationController:(id)a9 userStore:(id)a10
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v30.receiver = self;
  v30.super_class = IDSDSignInResponder;
  v18 = [(IDSDSignInResponder *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accountController, a3);
    objc_storeStrong(&v19->_serviceController, a4);
    objc_storeStrong(&v19->_passwordManager, a5);
    objc_storeStrong(&v19->_registrationConductor, a6);
    objc_storeStrong(&v19->_deviceSupport, a7);
    objc_storeStrong(&v19->_registrationControl, a8);
    objc_storeStrong(&v19->_registrationController, a9);
    objc_storeStrong(&v19->_userStore, a10);
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
  v2 = [(IDSDSignInResponder *)self serverBag];
  v3 = [v2 objectForKey:@"gamecenter-signin-on-modify"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_shouldServiceBeEnabledOnSignIn:(id)a3 forDomain:(int64_t)a4
{
  v6 = a3;
  if ([v6 adHocServiceType])
  {
    goto LABEL_2;
  }

  switch(a4)
  {
    case 3:
      v8 = [(IDSDSignInResponder *)self serviceController];
      v9 = [v8 gameCenterService];
      goto LABEL_9;
    case 2:
      v8 = [(IDSDSignInResponder *)self serviceController];
      v9 = [v8 iTunesService];
LABEL_9:
      v7 = v9 == v6;

      goto LABEL_10;
    case 1:
      v7 = [v6 iCloudBasedService];
      goto LABEL_10;
  }

LABEL_2:
  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)_shouldServiceBeDisabledOnSignOut:(id)a3 forDomain:(int64_t)a4
{
  v6 = a3;
  if ([v6 adHocServiceType])
  {
    goto LABEL_2;
  }

  switch(a4)
  {
    case 3:
      v8 = [(IDSDSignInResponder *)self serviceController];
      v9 = [v8 gameCenterService];
      goto LABEL_9;
    case 2:
      v8 = [(IDSDSignInResponder *)self serviceController];
      v9 = [v8 iTunesService];
LABEL_9:
      v7 = v9 == v6;

      goto LABEL_10;
    case 1:
      v7 = [v6 iCloudBasedService];
      goto LABEL_10;
  }

LABEL_2:
  v7 = 0;
LABEL_10:

  return v7;
}

- (void)updateUserWithOldUsername:(id)a3 newUsername:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDSignInResponder *)self passwordManager];
  [v8 updatePreviousUsername:v6 toNewUsername:v7];

  v9 = self;
  v10 = [(IDSDSignInResponder *)self serviceController];
  v11 = [v10 allServices];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v11;
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
          v19 = [v17 identifier];
          *buf = 138412802;
          v31 = v6;
          v32 = 2112;
          v33 = v7;
          v34 = 2112;
          v35 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Checking if loginID update is needed for existing account on service { oldUsername: %@, newUsername: %@, serviceIdentifier: %@ }", buf, 0x20u);
        }

        v20 = [(IDSDSignInResponder *)v9 accountController];
        v21 = [v20 existingAccountOnService:v17 withType:1 loginID:v6];

        if (v21)
        {
          v22 = +[IMRGLog iCloud];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v17 identifier];
            *buf = v24;
            v31 = v6;
            v32 = 2112;
            v33 = v7;
            v34 = 2112;
            v35 = v23;
            v36 = 2112;
            v37 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating loginID on existing account { oldUsername: %@, newUsername: %@, serviceIdentifier: %@, account: %@ }", buf, 0x2Au);
          }

          [v21 setLoginID:v7];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v14);
  }
}

- (void)_signInDomain:(int64_t)a3 withUsername:(id)a4 authToken:(id)a5 password:(id)a6 accountInfo:(id)a7 accountStatus:(id)a8 handles:(id)a9
{
  v107 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v20 = @"Invalid";
    }

    else
    {
      v20 = *(&off_100BDF1D8 + a3);
    }

    v21 = [v15 length];
    *buf = 138413570;
    v22 = @"YES";
    v127 = v20;
    v128 = 2112;
    if (!v21)
    {
      v22 = @"NO";
    }

    v129 = v107;
    v130 = 2112;
    v131 = v14;
    v132 = 2112;
    v133 = v22;
    v134 = 2112;
    v135 = v17;
    v136 = 2112;
    v137 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IDS responding to sign-in { domain: %@, username: %@, token: %@, hasPassword: %@, accountStatus: %@, handles: %@ }", buf, 0x3Eu);
  }

  v23 = [(IDSDSignInResponder *)self accountController];
  v24 = [v23 hasHardDeregistered];

  if (v24)
  {
    v25 = +[IMRGLog iCloud];
    v26 = v107;
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

  v26 = v107;
  if ([v107 length])
  {
    if (a3 == 1)
    {
      v28 = [(IDSDSignInResponder *)self deviceSupport];
      v29 = [v28 isGreenTea];

      if ((v29 & 1) == 0)
      {
        v30 = [(IDSDSignInResponder *)self registrationControl];
        [v30 updateRegistrationType:0 toState:2 error:0];
      }

      v31 = [(IDSDSignInResponder *)self registrationController];
      [v31 noteiCloudSignInTime];

      v26 = v107;
    }

    v32 = [v16 objectForKey:kIDSServiceDefaultsSelfHandleKey];
    v33 = [v16 objectForKey:kIDSServiceDefaultsAuthorizationIDKey];
    v100 = v33;
    if ([v14 length])
    {
      v34 = [(IDSDSignInResponder *)self passwordManager];
      v35 = v26;
      v36 = v34;
      [v34 setAuthTokenForProfileID:v33 username:v35 service:IDSServiceKey authToken:v14 selfHandle:v32 accountStatus:&off_100C3C940 outRequestID:0 completionBlock:0];
    }

    else if ([v15 length])
    {
      v36 = [(IDSDSignInResponder *)self passwordManager];
      [v36 setPasswordForProfileID:v33 username:v107 service:IDSServiceKey password:v15 outRequestID:0 completionBlock:0];
    }

    else
    {
      if (!v17 || (v37 = [(__CFString *)v17 integerValue]) != 0 && v37 != 5103 && v37 != 5100)
      {
LABEL_31:
        v95 = v17;
        v97 = v15;
        v98 = v14;
        v39 = v33;
        if (v18)
        {
          v40 = [(IDSDSignInResponder *)self passwordManager];
          [v40 setHandlesForProfileID:v33 username:v107 service:IDSServiceKey handles:v18];
        }

        v94 = v18;
        v96 = v16;
        v108 = [[NSMutableDictionary alloc] initWithDictionary:v16];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v41 = [(IDSDSignInResponder *)self serviceController];
        v42 = [v41 allServices];

        obj = v42;
        v43 = [v42 countByEnumeratingWithState:&v119 objects:v125 count:16];
        v26 = v107;
        v44 = a3;
        if (!v43)
        {
LABEL_84:

          v14 = v98;
          if (v44 == 1)
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

          v16 = v96;
          v15 = v97;
          v18 = v94;
          v17 = v95;
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
          if (![(IDSDSignInResponder *)self _shouldServiceBeEnabledOnSignIn:v48 forDomain:v44])
          {
            goto LABEL_82;
          }

          v49 = objc_alloc_init(NSMutableArray);
          v50 = [(IDSDSignInResponder *)self accountController];
          v51 = [v50 existingAccountOnService:v48 withType:1 loginID:v26];

          if (v51)
          {
            [(IDSDAccount *)v51 _updateAccountWithAccountInfo:v108];
            v52 = +[IMRGLog iCloud];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [(IDSDAccount *)v51 smallDescription];
              *buf = 138412546;
              v127 = v48;
              v128 = 2112;
              v129 = v53;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Updated existing account with account info { service: %@, account: %@ }", buf, 0x16u);
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
              v57 = [(IDSDAccount *)v51 smallDescription];
              *buf = 138412546;
              v127 = v48;
              v128 = 2112;
              v129 = v57;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Created new account for sign-in { service: %@, account: %@ }", buf, 0x16u);
            }

            v52 = [(IDSDSignInResponder *)self accountController];
            [v52 addAccount:v51];
          }

          v58 = [(IDSDSignInResponder *)self deviceSupport];
          if (![v58 registrationSupported])
          {
            goto LABEL_52;
          }

          v59 = [(IDSDSignInResponder *)self registrationController];
          if (([v59 systemSupportsPhoneNumberRegistration] & 1) == 0)
          {
            break;
          }

          v60 = [(__CFString *)v48 wantsPhoneNumberAccount];

          if (v60)
          {
            v61 = +[IMRGLog iCloud];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Triggering DS realm reload", buf, 2u);
            }

            v58 = [(IDSDSignInResponder *)self userStore];
            [v58 reloadUsersForRealm:1];
            goto LABEL_52;
          }

LABEL_53:
          v106 = v47;
          v104 = v49;
          [v49 addObject:v51];
          v62 = +[IDSDServiceController sharedInstance];
          v105 = v51;
          v63 = [(IDSDAccount *)v51 service];
          v64 = [v62 linkedServicesForService:v63];

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
                  v72 = [v71 isCurrentDeviceTinkerConfiguredWatch];

                  if (v72)
                  {
                    continue;
                  }
                }

                v73 = [(IDSDSignInResponder *)self accountController];
                v74 = [v73 existingAccountOnService:v70 withType:1 loginID:v26];

                if (v74)
                {
                  [(IDSDAccount *)v74 _updateAccountWithAccountInfo:v108];
                  v75 = +[IMRGLog iCloud];
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                  {
                    v76 = [(IDSDAccount *)v74 smallDescription];
                    *buf = 138412546;
                    v127 = v70;
                    v128 = 2112;
                    v129 = v76;
                    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Updated existing linked account with account info { service: %@, account: %@ }", buf, 0x16u);

                    v26 = v107;
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
                    v80 = [(IDSDAccount *)v74 smallDescription];
                    *buf = 138412546;
                    v127 = v70;
                    v128 = 2112;
                    v129 = v80;
                    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Created new linked account for sign-in { service: %@, account: %@ }", buf, 0x16u);

                    v26 = v107;
                  }

                  v75 = [(IDSDSignInResponder *)self accountController];
                  [v75 addAccount:v74];
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
                v87 = [(IDSDSignInResponder *)self accountController];
                v88 = [v86 uniqueID];
                [v87 enableAccountWithUniqueID:v88];

                v89 = [v86 linkedAccounts];
                v110[0] = _NSConcreteStackBlock;
                v110[1] = 3221225472;
                v110[2] = sub_1005036C4;
                v110[3] = &unk_100BDB090;
                v110[4] = self;
                [v89 __imForEach:v110];

                v90 = [v86 registrationStatus];
                if (v90 != -1 && v90 != 5)
                {
                  [v86 registerAccount];
                }

                v92 = [v86 linkedAccounts];
                v109[0] = _NSConcreteStackBlock;
                v109[1] = 3221225472;
                v109[2] = sub_10050373C;
                v109[3] = &unk_100BDB090;
                v109[4] = v86;
                [v92 __imForEach:v109];
              }

              v83 = [v81 countByEnumeratingWithState:&v111 objects:v123 count:16];
            }

            while (v83);
          }

          v26 = v107;
          v39 = v100;
          v44 = a3;
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
        v127 = v17;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Saving status to the account { accountStatus: %@ }", buf, 0xCu);
      }

      v36 = [(IDSDSignInResponder *)self passwordManager];
      [v36 setAccountStatus:v17 forProfileID:v33 username:v107 service:IDSServiceKey];
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

- (void)_signOutDomain:(int64_t)a3
{
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v6 = @"Invalid";
    }

    else
    {
      v6 = *(&off_100BDF1D8 + a3);
    }

    *buf = 138412290;
    v50 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS responding to sign-out { domain: %@ }", buf, 0xCu);
  }

  v7 = [(IDSDSignInResponder *)self accountController];
  v8 = [v7 hasHardDeregistered];

  if (v8)
  {
    v9 = +[IMRGLog iCloud];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device has hard deregistered -- ignoring sign-out", buf, 2u);
    }

    goto LABEL_34;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = [(IDSDSignInResponder *)self serviceController];
  v11 = [v10 allServices];

  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    v33 = *v44;
    v34 = a3;
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
        if ([(IDSDSignInResponder *)self _shouldServiceBeDisabledOnSignOut:v16 forDomain:a3])
        {
          v37 = v15;
          v17 = [(IDSDSignInResponder *)self accountController];
          v18 = [v17 accountsOnService:v16];
          v19 = [v18 _copyForEnumerating];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = v19;
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
                v26 = [v25 accountType];
                v27 = +[IMRGLog iCloud];
                v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
                if (v26 == 1)
                {
                  if (v28)
                  {
                    v29 = [v25 smallDescription];
                    *buf = 138412290;
                    v50 = v29;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Removing account for sign-out { account: %@ }", buf, 0xCu);
                  }

                  v30 = [(IDSDSignInResponder *)self accountController];
                  [v30 removeAccount:v25];

                  v31 = [v25 linkedAccounts];
                  v38[0] = _NSConcreteStackBlock;
                  v38[1] = 3221225472;
                  v38[2] = sub_100503C14;
                  v38[3] = &unk_100BDB090;
                  v38[4] = self;
                  [v31 __imForEach:v38];
                }

                else
                {
                  if (v28)
                  {
                    v32 = [v25 smallDescription];
                    *buf = 138412290;
                    v50 = v32;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Skipping removal of non-Apple ID account for sign-out { account: %@ }", buf, 0xCu);
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v22);
          }

          v14 = v33;
          a3 = v34;
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

  if (a3 == 1)
  {
    v9 = [(IDSDSignInResponder *)self userStore];
    [v9 reloadUsersForRealm:1];
LABEL_34:
  }
}

- (void)_updateDomainWithUsername:(id)a3 accountInfo:(id)a4
{
  v62 = a3;
  v6 = a4;
  v7 = IDSAuthenticationDelegateUpdateTimeOfLastAuthenticationResponseAndGetDelta();
  v8 = &uuid_unparse_upper_ptr;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v90 = v62;
    v91 = 2112;
    v92 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDS responding to updated account info { username: %@, accountInfo: %@ }", buf, 0x16u);
  }

  v10 = [(IDSDSignInResponder *)self accountController];
  v11 = [v10 hasHardDeregistered];

  if (!v11)
  {
    v13 = [(IDSDSignInResponder *)self accountStore];
    if (qword_100CBD678 != -1)
    {
      sub_100927D08();
    }

    v12 = [v13 accountTypeWithAccountTypeIdentifier:qword_100CBD680];
    if (v12)
    {
      [v13 accountsWithAccountType:v12];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v14 = v85 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v82 objects:v88 count:16];
      if (v15)
      {
        v16 = v15;
        v65 = self;
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
            v21 = [v20 BOOLValue];

            if (v21)
            {
              v22 = [v19 username];
              v23 = [v62 isEqualToIgnoringCase:v22];

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
        self = v65;
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
    v6 = v6;
    v81 = v6;
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
      v28 = [(IDSDSignInResponder *)self serviceController];
      v29 = [v28 allServices];

      v30 = [v29 countByEnumeratingWithState:&v76 objects:v87 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v77;
        v33 = v25 + 16;
        v64 = v29;
        v66 = self;
        v63 = *v77;
        do
        {
          v34 = 0;
          v67 = v31;
          do
          {
            if (*v77 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v76 + 1) + 8 * v34);
            if ([v35 iCloudBasedService] && !objc_msgSend(v35, "adHocServiceType"))
            {
              v68 = v34;
              v36 = [(IDSDSignInResponder *)self accountController];
              v37 = [v36 accountsOnService:v35 withType:1];
              v38 = [v37 _copyForEnumerating];

              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v39 = v38;
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
                      v45 = [v8[504] iCloud];
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                      {
                        [v44 smallDescription];
                        v46 = v42;
                        v47 = v39;
                        v48 = v25;
                        v49 = v6;
                        v50 = v33;
                        v52 = v51 = v8;
                        *buf = 138412290;
                        v90 = v52;
                        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Updating matching account (and linked accounts) with account info { account: %@ }", buf, 0xCu);

                        v8 = v51;
                        v33 = v50;
                        v6 = v49;
                        v25 = v48;
                        v39 = v47;
                        v42 = v46;
                        v41 = v69;
                      }

                      v53 = (*(v25 + 2))(v25, v44);

                      [v44 _updateAccountWithAccountInfo:v53];
                      v54 = [v44 linkedAccounts];
                      v70[0] = _NSConcreteStackBlock;
                      v70[1] = 3221225472;
                      v70[2] = sub_100504530;
                      v70[3] = &unk_100BDB090;
                      v6 = v53;
                      v71 = v6;
                      [v54 __imForEach:v70];
                    }

                    v43 = v43 + 1;
                  }

                  while (v41 != v43);
                  v41 = [v39 countByEnumeratingWithState:&v72 objects:v86 count:16];
                }

                while (v41);
              }

              v29 = v64;
              self = v66;
              v32 = v63;
              v31 = v67;
              v34 = v68;
            }

            v34 = v34 + 1;
          }

          while (v34 != v31);
          v31 = [v29 countByEnumeratingWithState:&v76 objects:v87 count:16];
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

- (void)_modifyDomainWithUsername:(id)a3
{
  v4 = a3;
  v5 = &uuid_unparse_upper_ptr;
  v6 = +[IMRGLog registration];
  v7 = &off_1009AB000;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDS responding to account modification { username: %@ }", buf, 0xCu);
  }

  v8 = [(IDSDSignInResponder *)self accountStore];
  if (qword_100CBD688 != -1)
  {
    sub_100927D30();
  }

  v9 = [v8 accountTypeWithAccountTypeIdentifier:qword_100CBD690];
  if (v9)
  {
    [v8 accountsWithAccountType:v9];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v26 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v22 = self;
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
          v15 = [v14 username];
          v16 = [v4 isEqualToIgnoringCase:v15];

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
      self = v22;
      v5 = &uuid_unparse_upper_ptr;
      v7 = &off_1009AB000;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = [v5[504] iCloud];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v7 + 140);
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Checking IdentityServices accounts to know if we should attempt a repair { foundAccount: %@ }", buf, 0xCu);
  }

  if (v11)
  {
    v18 = [v11 credential];
    v19 = [v18 token];

    if (v19)
    {
      v20 = [v5[504] iCloud];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Auth token found on account -- attempting to kick iCloud repair logic", buf, 2u);
      }

      v21 = [(IDSDSignInResponder *)self registrationConductor];
      [v21 kickiCloudRepair];
    }
  }
}

- (void)_modifyGameCenterAccountPropertiesForUsername:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS responding to account modification for GameCenter domain { username: %@ }", &v19, 0xCu);
  }

  v6 = [(IDSDSignInResponder *)self passwordManager];
  v7 = [v6 gameCenterPropertiesFromAccountWithUsername:v4];

  v8 = [(IDSDSignInResponder *)self serviceController];
  v9 = [v8 gameCenterService];

  v10 = [(IDSDSignInResponder *)self accountController];
  v11 = [v10 existingAccountOnService:v9 withType:1 loginID:v4];

  if (v11)
  {
    v12 = [v11 gameCenterData];
    v13 = [v12 isEqual:v7];
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
        v20 = v12;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initiating a reregister to update Game Center specific user data. Data stored in IDS {%@}, updated data received from accounts {%@}", &v19, 0x16u);
      }

      [v11 reregister];
    }
  }

  else
  {
    v16 = [(IDSDSignInResponder *)self _gameCenterShouldSigninOnModify];
    v17 = +[IMRGLog registration];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No GameCenter IDSDAccount found with username {%@}. Trying to sign in.", &v19, 0xCu);
      }

      [(IDSDSignInResponder *)self gameCenterSignInWithUsername:v4 authToken:0 password:0 accountInfo:0 accountStatus:0 handles:0];
    }

    else
    {
      if (v18)
      {
        v19 = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No GameCenter IDSDAccount found with username {%@}. Cannot modify.", &v19, 0xCu);
      }
    }
  }
}

- (void)_reregisterAndReProvisionForEDULoginWithUsername:(id)a3
{
  v4 = a3;
  v5 = [(IDSDSignInResponder *)self deviceSupport];
  v6 = [v5 isInMultiUserMode];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(IDSDSignInResponder *)self accountController];
    v8 = [v7 accounts];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (([v13 isAdHocAccount] & 1) == 0)
          {
            if ([v13 isEnabled])
            {
              v14 = [v13 loginID];
              v15 = [v14 isEqualToIgnoringCase:v4];

              if (v15)
              {
                [v13 _reregisterAndReProvision];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

@end