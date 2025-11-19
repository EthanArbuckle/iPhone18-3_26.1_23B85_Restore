@interface IDSUserAccountSynchronizer
- (BOOL)_allowHomeNumberForUser:(id)a3 simCarrierIdentifiers:(id)a4 userCarrierIdentifiers:(id)a5;
- (IDSUserAccountSynchronizer)initWithUserStore:(id)a3 accountController:(id)a4 serviceController:(id)a5 migrationTracker:(id)a6 restrictions:(id)a7 queue:(id)a8;
- (IDSUserAccountSynchronizer)initWithUserStore:(id)a3 accountController:(id)a4 serviceController:(id)a5 migrationTracker:(id)a6 userDefaults:(id)a7 restrictions:(id)a8 ctAdapter:(id)a9 queue:(id)a10 accountBuilder:(id)a11;
- (NSMutableDictionary)cachedDisabledByService;
- (id)_accountsForUser:(id)a3;
- (void)_restrictionsChangedNotification:(id)a3;
- (void)dealloc;
- (void)setCachedDisabledByService:(id)a3;
- (void)synchronize;
- (void)userStore:(id)a3 didRemoveAuthenticationCertificateForUser:(id)a4;
- (void)userStore:(id)a3 didUpdateUser:(id)a4;
@end

@implementation IDSUserAccountSynchronizer

- (IDSUserAccountSynchronizer)initWithUserStore:(id)a3 accountController:(id)a4 serviceController:(id)a5 migrationTracker:(id)a6 restrictions:(id)a7 queue:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[IMUserDefaults sharedDefaults];
  v21 = +[IDSCTAdapter sharedInstance];
  v22 = [(IDSUserAccountSynchronizer *)self initWithUserStore:v19 accountController:v18 serviceController:v17 migrationTracker:v16 userDefaults:v20 restrictions:v15 ctAdapter:v21 queue:v14 accountBuilder:&stru_100BE4110];

  return v22;
}

- (IDSUserAccountSynchronizer)initWithUserStore:(id)a3 accountController:(id)a4 serviceController:(id)a5 migrationTracker:(id)a6 userDefaults:(id)a7 restrictions:(id)a8 ctAdapter:(id)a9 queue:(id)a10 accountBuilder:(id)a11
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v18 = a11;
  v33.receiver = self;
  v33.super_class = IDSUserAccountSynchronizer;
  v19 = [(IDSUserAccountSynchronizer *)&v33 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_accountController, a4);
    objc_storeStrong(&v20->_serviceController, a5);
    v21 = objc_retainBlock(v18);
    accountBuilder = v20->_accountBuilder;
    v20->_accountBuilder = v21;

    objc_storeStrong(&v20->_restrictions, a8);
    objc_storeStrong(&v20->_migrationTracker, a6);
    objc_storeStrong(&v20->_userDefaults, a7);
    objc_storeStrong(&v20->_queue, a10);
    objc_storeStrong(&v20->_userStore, a3);
    objc_storeStrong(&v20->_ctAdapter, a9);
    [(IDSUserStore *)v20->_userStore addActionListener:v20, v25, v26, v27, v28, v29, v30, v31, v32];
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v20 selector:"_restrictionsChangedNotification:" name:@"__kIDSRestrictionsChangedNotification" object:0];
  }

  return v20;
}

- (void)dealloc
{
  [(IDSUserStore *)self->_userStore removeActionListener:self];
  v3.receiver = self;
  v3.super_class = IDSUserAccountSynchronizer;
  [(IDSUserAccountSynchronizer *)&v3 dealloc];
}

- (void)userStore:(id)a3 didRemoveAuthenticationCertificateForUser:(id)a4
{
  v5 = a4;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Did remove auth cert -- reidentifying {user: %@}", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(IDSUserAccountSynchronizer *)self _accountsForUser:v5, 0];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) _reregisterAndReidentify:1];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)userStore:(id)a3 didUpdateUser:(id)a4
{
  v5 = a4;
  if ([v5 realm] == 2)
  {
    v6 = v5;
    if ([v6 hasBeenProvisioned])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [(IDSUserAccountSynchronizer *)self _accountsForUser:v6];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            v13 = [v6 expirationDate];
            [v12 setExpirationDate:v13];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }
  }

  if ([(IDSUserAccountSynchronizer *)self midSynchronize])
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Mid synchronize -- ignoring", v15, 2u);
    }
  }

  else
  {
    [(IDSUserAccountSynchronizer *)self synchronize];
  }
}

- (void)_restrictionsChangedNotification:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A5F44;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_accountsForUser:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  if ([v4 realm] && objc_msgSend(v4, "realm") != 2)
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(IDSDAccountController *)self->_accountController accountsWithType:0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006A6054;
    v9[3] = &unk_100BDCF30;
    v10 = v5;
    v7 = [v6 __imArrayByFilteringWithBlock:v9];
  }

  return v7;
}

- (NSMutableDictionary)cachedDisabledByService
{
  v3 = [(IDSUserAccountSynchronizer *)self userDefaults];
  v4 = [v3 copyKeyListForAppID:@"com.apple.identityservices.serviceDisablement"];

  if (v4)
  {
    v5 = [(IDSUserAccountSynchronizer *)self userDefaults];
    v6 = [v5 copyMultipleForCurrentKeys:v4 appID:@"com.apple.identityservices.serviceDisablement"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setCachedDisabledByService:(id)a3
{
  v4 = a3;
  v5 = [(IDSUserAccountSynchronizer *)self userDefaults];
  [v5 setMultiple:v4 remove:0 appID:@"com.apple.identityservices.serviceDisablement"];

  v6 = [(IDSUserAccountSynchronizer *)self userDefaults];
  [v6 synchronizeAppID:@"com.apple.identityservices.serviceDisablement"];
}

- (void)synchronize
{
  if ([(IDSDAccountController *)self->_accountController isLoading])
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Marshaller is waiting on accounts to load, the account controller isn't ready yet", buf, 2u);
    }

LABEL_4:

    return;
  }

  v4 = +[IDSRegistrationReasonTracker sharedInstance];
  [v4 setMostRecentIDSRegistrationReason:1];

  v5 = +[IDSRegistrationReasonTracker sharedInstance];
  v6 = [IDSRequestReasonContainer initialRequestWithSubreason:1 pathID:1];
  [v5 setRegistrationRequestReason:v6];

  if ([(IDSDataMigrationTracker *)self->_migrationTracker hasPerformedMigration])
  {
    v179 = self;
    v7 = +[FTDeviceSupport sharedInstance];
    v8 = [v7 registrationSupported];

    if (v8)
    {
      [(IDSUserAccountSynchronizer *)self setMidSynchronize:1];
      v178 = [(IDSDAccountController *)self->_accountController isiCloudSignedIn];
      if (v178)
      {
        v187 = [(IDSDAccountController *)self->_accountController isiCloudHSA2];
      }

      else
      {
        v187 = 0;
      }

      v19 = [(IDSUserStore *)self->_userStore usersWithRealms:&off_100C3DDA8];
      v20 = objc_alloc_init(NSMutableArray);
      v21 = objc_alloc_init(NSMutableArray);
      v237[0] = _NSConcreteStackBlock;
      v237[1] = 3221225472;
      v237[2] = sub_1006A7D50;
      v237[3] = &unk_100BE4138;
      v22 = v20;
      v238 = v22;
      v168 = v21;
      v239 = v168;
      v176 = v19;
      v171 = [(__CFString *)v19 __imArrayByApplyingBlock:v237];
      v23 = [(IDSUserAccountSynchronizer *)self ctAdapter];
      v236 = 0;
      v24 = [v23 currentSIMsWithError:&v236];
      v166 = v236;
      v25 = [v24 __imArrayByApplyingBlock:&stru_100BE4178];
      v26 = [NSSet setWithArray:v25];

      v167 = v22;
      v27 = [v22 __imArrayByApplyingBlock:&stru_100BE41B8];
      v185 = [NSSet setWithArray:v27];

      v186 = objc_alloc_init(NSMutableDictionary);
      v173 = objc_alloc_init(NSMutableDictionary);
      v28 = +[IMRGLog registration];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v246 = v176;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Synchronizing users to accounts {users: %@}", buf, 0xCu);
      }

      p_isa = &v179->super.isa;
      v30 = [(IDSDAccountController *)v179->_accountController accountsWithType:0];
      v31 = [v30 copy];

      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      v233 = 0u;
      obj = v31;
      v32 = v176;
      v180 = v26;
      v191 = [obj countByEnumeratingWithState:&v232 objects:v251 count:16];
      if (v191)
      {
        v189 = *v233;
        if (v187)
        {
          v33 = @"YES";
        }

        else
        {
          v33 = @"NO";
        }

        v174 = v33;
        do
        {
          for (i = 0; i != v191; i = v97 + 1)
          {
            if (*v233 != v189)
            {
              objc_enumerationMutation(obj);
            }

            v195 = i;
            v35 = *(*(&v232 + 1) + 8 * i);
            v36 = [(__CFString *)v35 registration];
            if (([(__CFString *)v35 isAdHocAccount]& 1) != 0 || (v37 = [(__CFString *)v35 isRegistered], v38 = v36, (v37 & 1) == 0))
            {
              v38 = v35;
            }

            v193 = v36;
            v201 = [v38 userUniqueIdentifier];

            v39 = [(__CFString *)v35 service];
            v231[0] = _NSConcreteStackBlock;
            v231[1] = 3221225472;
            v231[2] = sub_1006A7EF8;
            v231[3] = &unk_100BDFA90;
            v231[4] = v35;
            v40 = [(__CFString *)v32 __imArrayByFilteringWithBlock:v231];
            v41 = [v40 firstObject];

            if (v41)
            {
              v199 = [p_isa[2] propertiesForUser:v41];
            }

            else
            {
              v199 = 0;
            }

            v42 = [(__CFString *)v35 accountType];
            v197 = v41;
            if ([p_isa[7] shouldDisableAccount:v35])
            {
              v43 = v39;
              [p_isa[3] forceRemoveAccount:v35];
              v44 = +[IMRGLog registration];
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v246 = v201;
                v247 = 2112;
                v248 = v35;
                v45 = v44;
                v46 = "Removing account for restricted service {uniqueIdentifier: %@, account: %@}";
                v47 = 22;
                goto LABEL_56;
              }

LABEL_111:
              v26 = v180;
LABEL_112:
              v97 = v195;

              goto LABEL_113;
            }

            if (!v42 && ![v39 wantsPhoneNumberAccount] || ((v178 | objc_msgSend(v39, "iCloudBasedService") ^ 1) & 1) == 0)
            {
              v43 = v39;
              [p_isa[3] forceRemoveAccount:v35];
              v44 = +[IMRGLog registration];
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_111;
              }

              *buf = 138412290;
              v246 = v35;
              v45 = v44;
              v46 = "Removing unwanted account for service {account: %@}";
              v47 = 12;
              goto LABEL_56;
            }

            if (-[__CFString isTemporary](v35, "isTemporary") && !-[__CFString accountType](v35, "accountType") && (!v187 || ([p_isa _allowHomeNumberForUser:v41 simCarrierIdentifiers:v180 userCarrierIdentifiers:v185] & 1) == 0))
            {
              v43 = v39;
              [p_isa[3] forceRemoveAccount:v35];
              v44 = +[IMRGLog registration];
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_111;
              }

              v86 = [p_isa _allowHomeNumberForUser:v197 simCarrierIdentifiers:v180 userCarrierIdentifiers:v185];
              *buf = 138412802;
              v87 = @"NO";
              if (v86)
              {
                v87 = @"YES";
              }

              v246 = v35;
              v26 = v180;
              v247 = 2112;
              v248 = v174;
              v249 = 2112;
              v250 = v87;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Removing unwanted temporary phone account for service {account: %@, isHSA2: %@, allowHomeNumber: %@}", buf, 0x20u);
              goto LABEL_112;
            }

            if (v41 && v199 && [(__CFString *)v199 disableRegistration])
            {
              v43 = v39;
              v48 = [NSNumber numberWithBool:[(__CFString *)v35 isUserDisabled]];
              v49 = [(__CFString *)v35 service];
              v50 = [v49 identifier];
              [v186 setObject:v48 forKeyedSubscript:v50];

              [p_isa[3] forceRemoveAccount:v35];
              v44 = +[IMRGLog registration];
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_111;
              }

              *buf = 138412802;
              v246 = v35;
              v247 = 2112;
              v248 = v197;
              v249 = 2112;
              v250 = v199;
              v45 = v44;
              v46 = "Removing unwanted account for service, user is disabled {account: %@, matchingUser: %@, userProperties: %@}";
              v47 = 32;
LABEL_56:
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v46, buf, v47);
              goto LABEL_111;
            }

            v182 = v39;
            if (v201 || ![v171 count])
            {
              if ([v171 containsObject:v201])
              {
                v229 = 0u;
                v230 = 0u;
                v227 = 0u;
                v228 = 0u;
                v51 = v32;
                v52 = [v51 countByEnumeratingWithState:&v227 objects:v244 count:16];
                if (v52)
                {
                  v53 = v52;
                  v54 = 0;
                  v55 = *v228;
                  do
                  {
                    for (j = 0; j != v53; j = j + 1)
                    {
                      if (*v228 != v55)
                      {
                        objc_enumerationMutation(v51);
                      }

                      v57 = *(*(&v227 + 1) + 8 * j);
                      if (![v57 realm])
                      {
                        v58 = [v57 uniqueIdentifier];
                        v59 = [(__CFString *)v35 userUniqueIdentifier];
                        v60 = [v58 isEqualToString:v59];

                        if (v60)
                        {
                          v61 = v57;
                          v62 = [(__CFString *)v35 loginID];
                          if (v62)
                          {
                            v63 = v62;
                            v64 = [(__CFString *)v35 loginID];
                            v65 = [(__CFString *)v61 differsFromPhoneNumber:v64];

                            if (v65)
                            {
                              v66 = [NSNumber numberWithBool:[(__CFString *)v35 isUserDisabled]];
                              v67 = [(__CFString *)v35 service];
                              v68 = [v67 identifier];
                              [v186 setObject:v66 forKeyedSubscript:v68];

                              v69 = +[IMRGLog registration];
                              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412802;
                                v246 = v201;
                                v247 = 2112;
                                v248 = v61;
                                v249 = 2112;
                                v250 = v35;
                                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Detected account has mismatching user. Marking for removal {uniqueIdentifier: %@, user: %@, account: %@}", buf, 0x20u);
                              }

                              v54 = 1;
                            }
                          }
                        }
                      }
                    }

                    v53 = [v51 countByEnumeratingWithState:&v227 objects:v244 count:16];
                  }

                  while (v53);
                  p_isa = &v179->super.isa;
                }

                else
                {
LABEL_86:
                  v54 = 0;
                }

                v78 = v201;
                goto LABEL_99;
              }

              if (![(__CFString *)v35 accountType])
              {
                v70 = p_isa[3];
                v71 = [(__CFString *)v35 service];
                v72 = [v70 appleIDAccountOnService:v71];

                v73 = [(__CFString *)v35 vettedAliases];
                v74 = [v73 firstObject];

                if (v72 && v74)
                {
                  [v72 markAsWasSelectedAlias:v74];
                }
              }

              v75 = [NSNumber numberWithBool:[(__CFString *)v35 isUserDisabled]];
              v76 = [(__CFString *)v35 service];
              v77 = [v76 identifier];
              [v186 setObject:v75 forKeyedSubscript:v77];

              [p_isa[3] forceRemoveAccount:v35];
              v51 = +[IMRGLog registration];
              if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_86;
              }

              *buf = 138412546;
              v78 = v201;
              v246 = v201;
              v247 = 2112;
              v248 = v35;
              v79 = v51;
              v80 = "Removing account without matching user {uniqueIdentifier: %@, account: %@}";
            }

            else
            {
              v81 = [(__CFString *)v35 registration];
              v82 = [v81 registrationType];

              v83 = v168;
              if (v82 == 2 || (-[__CFString registration](v35, "registration"), v84 = objc_claimAutoreleasedReturnValue(), v85 = [v84 registrationType], v84, v83 = v167, !v85))
              {
                v88 = [v83 firstObject];
                v89 = [v88 uniqueIdentifier];

                v78 = v89;
              }

              else
              {
                v78 = 0;
              }

              [(__CFString *)v35 setUserUniqueIdentifier:v78];
              v51 = +[IMRGLog registration];
              p_isa = &v179->super.isa;
              if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_98;
              }

              *buf = 138412546;
              v246 = v78;
              v247 = 2112;
              v248 = v35;
              v79 = v51;
              v80 = "Migrating account to use users {uniqueIdentifier: %@, account: %@}";
            }

            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, v80, buf, 0x16u);
LABEL_98:
            v54 = 0;
LABEL_99:

            if (v78)
            {
              v201 = v78;
              v90 = [(__CFString *)v35 service];
              v91 = [v90 identifier];

              v43 = v182;
              v92 = v197;
              if (!v91)
              {
                v32 = v176;
                v26 = v180;
                v97 = v195;
                goto LABEL_114;
              }

              v93 = [(__CFString *)v35 service];
              v94 = [v93 identifier];
              v95 = [v173 objectForKeyedSubscript:v94];
              v96 = v95;
              if (v95)
              {
                v44 = v95;
              }

              else
              {
                v44 = +[NSSet set];
              }

              if (([v44 containsObject:v201]| v54))
              {
                v98 = +[IMRGLog registration];
                v32 = v176;
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v246 = v201;
                  v247 = 2112;
                  v248 = v35;
                  _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Removing extra account for user without matching user {uniqueIdentifier: %@, account: %@}", buf, 0x16u);
                }

                [p_isa[3] forceRemoveAccount:v35];
              }

              else
              {
                v99 = [v44 setByAddingObject:v201];
                v100 = [(__CFString *)v35 service];
                v101 = [v100 identifier];
                [v173 setObject:v99 forKeyedSubscript:v101];

                v32 = v176;
              }

              goto LABEL_111;
            }

            v201 = 0;
            v32 = v176;
            v26 = v180;
            v97 = v195;
            v43 = v182;
LABEL_113:
            v92 = v197;
LABEL_114:
          }

          v191 = [obj countByEnumeratingWithState:&v232 objects:v251 count:16];
        }

        while (v191);
      }

      v102 = +[NSString stringGUID];
      v103 = [v173 description];
      v104 = [v186 description];
      v105 = +[IMRGLog registration];
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v246 = v102;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Logging current and disabled account info with guid %@", buf, 0xCu);
      }

      v221 = _NSConcreteStackBlock;
      v222 = 3221225472;
      v223 = sub_1006A7F5C;
      v224 = &unk_100BD6E40;
      v225 = v102;
      v165 = v103;
      v226 = v165;
      cut_dispatch_log_queue();
      v215 = _NSConcreteStackBlock;
      v216 = 3221225472;
      v217 = sub_1006A8018;
      v218 = &unk_100BD6E40;
      v164 = v225;
      v219 = v164;
      v163 = v104;
      v220 = v163;
      cut_dispatch_log_queue();
      v213 = 0u;
      v214 = 0u;
      v211 = 0u;
      v212 = 0u;
      v106 = v179;
      v107 = [(IDSDServiceController *)v179->_serviceController allPrimaryServices];
      v108 = [v107 countByEnumeratingWithState:&v211 objects:v243 count:16];
      v109 = v176;
      if (v108)
      {
        v110 = v108;
        v111 = *v212;
        v112 = @"YES";
        if (v187)
        {
          v113 = @"YES";
        }

        else
        {
          v113 = @"NO";
        }

        v183 = v113;
        v169 = *v212;
        v170 = v107;
        do
        {
          v114 = 0;
          v172 = v110;
          do
          {
            if (*v212 != v111)
            {
              objc_enumerationMutation(v107);
            }

            v115 = *(*(&v211 + 1) + 8 * v114);
            if ([(__CFString *)v115 wantsPhoneNumberAccount]&& ![(IDSRestrictions *)v106->_restrictions shouldDisableService:v115]&& (v178 | [(__CFString *)v115 iCloudBasedService]^ 1) == 1)
            {
              v175 = v114;
              v116 = [(__CFString *)v115 identifier];
              v117 = [v173 objectForKeyedSubscript:v116];

              v209 = 0u;
              v210 = 0u;
              v207 = 0u;
              v208 = 0u;
              v194 = v109;
              p_cache = &OBJC_METACLASS___IDSRegistrationReasonTracker.cache;
              v119 = v115;
              v120 = v117;
              v198 = [(__CFString *)v194 countByEnumeratingWithState:&v207 objects:v242 count:16];
              if (!v198)
              {
                goto LABEL_186;
              }

              v196 = *v208;
              v192 = v119;
              v184 = v117;
              while (1)
              {
                v121 = 0;
                do
                {
                  if (*v208 != v196)
                  {
                    objc_enumerationMutation(v194);
                  }

                  v200 = v121;
                  v122 = *(*(&v207 + 1) + 8 * v121);
                  v202 = [v122 uniqueIdentifier];
                  if (([v120 containsObject:?] & 1) == 0 && (objc_msgSend(v122, "realm") && objc_msgSend(v122, "realm") != 2 || -[__CFString wantsPhoneNumberAccount](v119, "wantsPhoneNumberAccount")))
                  {
                    if (!-[__CFString disabledOnTinkerWatch](v119, "disabledOnTinkerWatch") || ([p_cache + 273 sharedInstance], v123 = objc_claimAutoreleasedReturnValue(), v124 = objc_msgSend(v123, "isCurrentDeviceTinkerConfiguredWatch"), v123, v119 = v192, (v124 & 1) == 0))
                    {
                      if ([v122 realm] == 2 && (!v187 || !-[IDSUserAccountSynchronizer _allowHomeNumberForUser:simCarrierIdentifiers:userCarrierIdentifiers:](v106, "_allowHomeNumberForUser:simCarrierIdentifiers:userCarrierIdentifiers:", v122, v26, v185)))
                      {
                        v125 = +[IMRGLog registration];
                        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                        {
                          v131 = [(IDSUserAccountSynchronizer *)v106 _allowHomeNumberForUser:v122 simCarrierIdentifiers:v26 userCarrierIdentifiers:v185];
                          *buf = 138412546;
                          v132 = @"NO";
                          if (v131)
                          {
                            v132 = v112;
                          }

                          v246 = v183;
                          v247 = 2112;
                          v248 = v132;
                          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Not creating account for temporary user {isHSA2: %@, allowHomeNumber: %@}", buf, 0x16u);
                        }

                        goto LABEL_183;
                      }

                      v125 = [(IDSUserStore *)v106->_userStore propertiesForUser:v122];
                      if (([v125 disableRegistration]& 1) != 0)
                      {
LABEL_183:

                        goto LABEL_184;
                      }

                      v126 = +[IMRGLog registration];
                      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        v246 = v202;
                        v247 = 2112;
                        v248 = v192;
                        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Creating missing accounts for user {uniqueIdentifier: %@, service: %@}", buf, 0x16u);
                      }

                      v127 = [(__CFString *)v192 identifier];
                      v128 = [v186 objectForKeyedSubscript:v127];

                      v188 = v128;
                      v190 = v125;
                      if (v128)
                      {
                        v129 = [v128 BOOLValue];
                        v130 = v129;
                        v120 = v184;
LABEL_174:
                        v151 = (*(v106->_accountBuilder + 2))();
                        [(__CFString *)v151 setUserUniqueIdentifier:v202];
                        if ([v122 realm] == 2)
                        {
                          [(__CFString *)v151 setIsTemporary:1];
                          v152 = [v122 unprefixedIdentifier];
                          [(__CFString *)v151 setLoginID:v152];

                          if ([v122 hasBeenProvisioned])
                          {
                            v153 = [v122 expirationDate];
                            [(__CFString *)v151 setExpirationDate:v153];
                          }
                        }

                        [(IDSDAccountController *)v106->_accountController addAccount:v151];
                        if (v129)
                        {
                          v154 = +[IMRGLog registration];
                          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            v246 = v202;
                            v247 = 2112;
                            v248 = v151;
                            _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Disabling account {uniqueIdentifier: %@, account: %@}", buf, 0x16u);
                          }

                          accountController = v106->_accountController;
                          v156 = [(__CFString *)v151 uniqueID];
                          [(IDSDAccountController *)accountController disableAccountWithUniqueID:v156];

                          [(__CFString *)v151 setIsUserDisabled:v130 & 1];
                        }

                        else
                        {
                          v157 = v106->_accountController;
                          v158 = [(__CFString *)v151 uniqueID];
                          [(IDSDAccountController *)v157 enableAccountWithUniqueID:v158];

                          [(__CFString *)v151 registerAccount];
                        }

                        p_cache = (&OBJC_METACLASS___IDSRegistrationReasonTracker + 16);
                        v125 = v190;
                        v119 = v192;
                        goto LABEL_183;
                      }

                      v133 = [(IDSDAccountController *)v106->_accountController accountsOnService:v192];
                      if ([v133 count])
                      {
                        v205 = 0u;
                        v206 = 0u;
                        v203 = 0u;
                        v204 = 0u;
                        v181 = v133;
                        v134 = v133;
                        v135 = [v134 countByEnumeratingWithState:&v203 objects:v241 count:16];
                        if (v135)
                        {
                          v136 = v135;
                          v137 = 0;
                          v130 = 0;
                          v138 = 0;
                          v139 = 0;
                          v140 = *v204;
                          do
                          {
                            for (k = 0; k != v136; k = k + 1)
                            {
                              if (*v204 != v140)
                              {
                                objc_enumerationMutation(v134);
                              }

                              v142 = *(*(&v203 + 1) + 8 * k);
                              if ([v122 realm] && objc_msgSend(v122, "realm") != 2 || objc_msgSend(v142, "accountType"))
                              {
                                if (v138)
                                {
                                  v138 = 1;
                                }

                                else
                                {
                                  v138 = [v142 isUserDisabled];
                                }
                              }

                              else
                              {
                                v130 = [v142 isUserDisabled];
                                v137 |= v130;
                                v139 = 1;
                              }
                            }

                            v136 = [v134 countByEnumeratingWithState:&v203 objects:v241 count:16];
                          }

                          while (v136);

                          if (v137)
                          {
                            v129 = 1;
                            v106 = v179;
                            v26 = v180;
                            v112 = @"YES";
                            v120 = v184;
                            v143 = v181;
LABEL_173:

                            goto LABEL_174;
                          }

                          v106 = v179;
                        }

                        else
                        {

                          v139 = 0;
                          v138 = 0;
                          v130 = 0;
                        }

                        v120 = v184;
                        v129 = (v139 ^ 1) & v138;
                        v26 = v180;
                        v143 = v181;
                        v112 = @"YES";
                        goto LABEL_173;
                      }

                      [(IDSUserAccountSynchronizer *)v106 cachedDisabledByService];
                      v144 = v112;
                      v145 = v26;
                      v147 = v146 = v133;
                      v148 = [(__CFString *)v192 identifier];
                      v149 = [v147 objectForKeyedSubscript:v148];
                      v129 = [v149 BOOLValue];

                      v150 = [(__CFString *)v192 identifier];
                      [v186 setObject:&__kCFBooleanFalse forKeyedSubscript:v150];

                      v143 = v146;
                      v26 = v145;
                      v112 = v144;
                      v130 = v129;
                      v120 = v184;
                      goto LABEL_173;
                    }
                  }

LABEL_184:

                  v121 = v200 + 1;
                }

                while ((v200 + 1) != v198);
                v198 = [(__CFString *)v194 countByEnumeratingWithState:&v207 objects:v242 count:16];
                if (!v198)
                {
LABEL_186:

                  v114 = v175;
                  v109 = v176;
                  v111 = v169;
                  v107 = v170;
                  v110 = v172;
                  break;
                }
              }
            }

            v114 = v114 + 1;
          }

          while (v114 != v110);
          v110 = [v107 countByEnumeratingWithState:&v211 objects:v243 count:16];
        }

        while (v110);
      }

      v159 = [(IDSUserAccountSynchronizer *)v106 cachedDisabledByService];
      v160 = [v159 mutableCopy];
      v161 = v160;
      if (v160)
      {
        v162 = v160;
      }

      else
      {
        v162 = +[NSMutableDictionary dictionary];
      }

      [v162 addEntriesFromDictionary:v186];
      [(IDSUserAccountSynchronizer *)v179 setCachedDisabledByService:v162];
      [(IDSUserAccountSynchronizer *)v179 setMidSynchronize:0];
    }

    else
    {
      v14 = +[FTDeviceSupport sharedInstance];
      v15 = [v14 deviceType];

      if (v15 == 2)
      {
        v3 = +[IMRGLog warning];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v16 = +[FTDeviceSupport sharedInstance];
          if ([v16 registrationSupported])
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          if (+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          *buf = 138412546;
          v246 = v17;
          v247 = 2112;
          v248 = v18;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Can't setup phone number accounts { registrationSupported: %@, supportsSMSIdentification: %@ }", buf, 0x16u);
        }

        goto LABEL_4;
      }
    }
  }

  else
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Waiting on migration -- deferring synchronize", buf, 2u);
    }

    if (!self->_migrationPromise)
    {
      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing migration if needed", buf, 2u);
      }

      v11 = [(IDSDataMigrationTracker *)self->_migrationTracker performMigrationIfNeeded];
      migrationPromise = self->_migrationPromise;
      self->_migrationPromise = v11;

      v13 = self->_migrationPromise;
      v240[0] = _NSConcreteStackBlock;
      v240[1] = 3221225472;
      v240[2] = sub_1006A7C50;
      v240[3] = &unk_100BD8870;
      v240[4] = self;
      [(CUTPromise *)v13 registerResultBlock:v240];
    }
  }
}

- (BOOL)_allowHomeNumberForUser:(id)a3 simCarrierIdentifiers:(id)a4 userCarrierIdentifiers:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 realm] == 2)
  {
    v10 = v7;
    v11 = [IMPair alloc];
    v12 = [v10 countryCode];
    v13 = [v10 networkCode];
    v14 = [v11 initWithFirst:v12 second:v13];

    if (+[IMUserDefaults bypassHomeNumberCarrierCheck])
    {
      goto LABEL_3;
    }

    v16 = [v10 countryCode];
    if ([v16 length])
    {
    }

    else
    {
      v17 = [v10 networkCode];
      v18 = [v17 length];

      if (!v18)
      {
LABEL_3:
        if ([v8 count])
        {
          v15 = 1;
        }

        else
        {
          v15 = [v9 count] != 0;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    if ([v8 count])
    {
      if ([v8 count] <= 1)
      {
        v19 = [v8 containsObject:v14] ^ 1;
      }

      else
      {
        LOBYTE(v19) = 1;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }

    if ([v9 count])
    {
      if ([v9 count] <= 1)
      {
        v20 = [v9 containsObject:v14] ^ 1;
      }

      else
      {
        LOBYTE(v20) = 1;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }

    v15 = v19 | v20;
    goto LABEL_21;
  }

  v15 = 0;
LABEL_22:

  return v15 & 1;
}

@end