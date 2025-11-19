@interface IDSAccountRepair
+ (double)_phoneNumberRepairIntervalForCount:(int64_t)a3;
- (BOOL)_checkForOtherRegisteredTopLevelPhoneAccountMatchingThisAccount:(id)a3;
- (BOOL)_hasActiveAppleIDBasedAccountOnService:(id)a3;
- (BOOL)_isPhoneAccount:(id)a3 registeredAndMatchingThisAccount:(id)a4;
- (BOOL)_repairPhoneNumberAccounts;
- (BOOL)_shouldBypassRepairLogic;
- (BOOL)_shouldNotSetupPhoneNumberRepairTimer;
- (IDSAccountRepair)initWithAccountController:(id)a3 systemAccountAdapter:(id)a4 userDefaults:(id)a5 keyTransparencyVerifier:(id)a6;
- (id)_activeAppleIDAccount;
- (id)_createiTunesAccountFromSystemIfNeeded;
- (id)_lastRepairIntervalFromPrefs;
- (id)_totalRepairCountFromPrefs;
- (void)_createAndEnableExistingSystemAccounts;
- (void)_phoneNumberRepairTimerHit:(id)a3;
- (void)_registerForAccountRepairActivity;
- (void)_repairAccountsWithSuccessfulPhoneNumberRegistration;
- (void)_repairAccountsWithSuccessfullAppleIDRegistrationForDSID:(id)a3 service:(id)a4;
- (void)_repairKTAccount:(id)a3;
- (void)_repairKVSEntriesForKT;
- (void)_repairTimerHit:(id)a3;
- (void)_repairiTunesBasedAccounts;
- (void)_resetPhoneNumberRepairCounter;
- (void)forceRepairAccounts:(id)a3;
- (void)kickRepairForAllRegistrationsSucceeded:(id)a3;
- (void)recalculatePhoneRepairTimer;
- (void)repairAccounts;
- (void)repairService:(id)a3 withPrimaryUserName:(id)a4;
- (void)repairiCloudBasedAccounts;
- (void)setupPhoneNumberRepairTimer;
@end

@implementation IDSAccountRepair

- (IDSAccountRepair)initWithAccountController:(id)a3 systemAccountAdapter:(id)a4 userDefaults:(id)a5 keyTransparencyVerifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = IDSAccountRepair;
  v15 = [(IDSAccountRepair *)&v29 init];
  v16 = v15;
  if (v15)
  {
    v15->_waitingForMigration = 1;
    objc_storeStrong(&v15->_systemAccountAdapter, a4);
    objc_storeStrong(&v16->_accountController, a3);
    objc_storeStrong(&v16->_userDefaults, a5);
    objc_storeStrong(&v16->_keyTransparencyVerifier, a6);
    v17 = [IMDispatchTimer alloc];
    v18 = im_primary_queue();
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1004040F8;
    v27[3] = &unk_100BD9268;
    v19 = v16;
    v28 = v19;
    v20 = [v17 initWithQueue:v18 interval:604800 repeats:1 handlerBlock:v27];
    repairTimer = v19->_repairTimer;
    v19->_repairTimer = v20;

    [(IDSAccountRepair *)v19 setupPhoneNumberRepairTimer];
    if (sub_100404104())
    {
      [(IDSAccountRepair *)v19 _registerForAccountRepairActivity];
    }

    v22 = +[IDSDataMigrationTracker sharedInstance];
    v23 = [v22 performMigrationIfNeeded];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10040418C;
    v25[3] = &unk_100BD8870;
    v26 = v19;
    [v23 registerResultBlock:v25];
  }

  return v16;
}

- (void)forceRepairAccounts:(id)a3
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 138412802;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 isUserDisabled];
        v10 = [v8 isRegistered];
        v11 = +[IDSRestrictions sharedInstance];
        v12 = [v8 service];
        v13 = [v11 shouldDisableService:v12];

        v14 = +[IMRGLog registration];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (v9)
          {
            v15 = @"YES";
          }

          else
          {
            v15 = @"NO";
          }

          *buf = v19;
          v27 = v15;
          if (v10)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v28 = 2112;
          v29 = v16;
          v30 = 2112;
          v31 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Checking if account is candidate for force repair {isUserDisabled: %@, isRegistered: %@, account: %@}", buf, 0x20u);
        }

        if (((v9 | v10 | v13) & 1) == 0)
        {
          v17 = [(IDSAccountRepair *)self accountController];
          v18 = [v8 uniqueID];
          [v17 enableAccountWithUniqueID:v18];

          [v8 registerAccount];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }
}

- (void)_repairTimerHit:(id)a3
{
  v4 = a3;
  if (self->_waitingForMigration)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10091D068();
    }
  }

  else
  {
    v6 = +[IMSystemMonitor sharedInstance];
    v7 = [v6 isUnderFirstDataProtectionLock];

    v8 = +[IMRGLog registration];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10091D034();
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Repair timer fired: %@", &v10, 0xCu);
      }

      [(IDSAccountRepair *)self repairAccounts];
    }
  }
}

- (BOOL)_shouldBypassRepairLogic
{
  if ([(IDSAccountRepair *)self shouldSupressRepairLogic])
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v4 = "Bypassing repair -> Safeview?";
      v5 = &v10;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = [(IDSAccountRepair *)self accountController];
  v7 = [v6 hasHardDeregistered];

  if (v7)
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v4 = "Bypassing repair -> hasHardDeregistered";
      v5 = &v9;
      goto LABEL_7;
    }

LABEL_8:

    return 1;
  }

  return 0;
}

- (void)kickRepairForAllRegistrationsSucceeded:(id)a3
{
  v4 = a3;
  v5 = [(IDSAccountRepair *)self accountController];
  v6 = [v5 isLoading];

  if (v6)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Waiting on accounts to load, the account controller isn't ready yet", buf, 2u);
    }
  }

  else
  {
    v34 = objc_alloc_init(NSMutableSet);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v33 = v4;
    obj = v4;
    v38 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v38)
    {
      v35 = 0;
      v8 = 0;
      v37 = *v46;
      v9 = &uuid_unparse_upper_ptr;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          v12 = +[IDSDServiceController sharedInstance];
          v13 = [v11 serviceIdentifier];
          v14 = [v12 serviceWithIdentifier:v13];

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v15 = [(IDSAccountRepair *)self accountController];
          v16 = [v15 accounts];

          v17 = [v16 countByEnumeratingWithState:&v41 objects:v55 count:16];
          if (v17)
          {
            v39 = v14;
            v40 = v8;
            v18 = v9;
            v19 = self;
            v20 = *v42;
            while (2)
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v42 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v41 + 1) + 8 * j);
                v23 = [v22 registration];

                if (v23 == v11)
                {
                  v17 = v22;
                  goto LABEL_19;
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v41 objects:v55 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }

LABEL_19:
            self = v19;
            v9 = v18;
            v8 = v40;
            v14 = v39;
          }

          v24 = [v9[504] registration];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v50 = v14;
            v51 = 2112;
            v52 = v11;
            v53 = 2112;
            v54 = v17;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notified of registration success for service: %@   registration: %@   account: %@", buf, 0x20u);
          }

          v25 = [v17 accountType];
          if (v8 & 1 | (v25 != 0))
          {
            if (v25 == 1)
            {
              v26 = [v17 service];
              v27 = [v26 iCloudBasedService];

              if (!(v35 & 1 | ((v27 & 1) == 0)))
              {
                v28 = [v9[504] registration];
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Kicking Apple ID iCloud based accounts repair", buf, 2u);
                }

                [(IDSAccountRepair *)self repairiCloudBasedAccounts];
                v35 = 1;
              }

              if ((v27 & 1) == 0)
              {
                v29 = [v17 dsID];
                if (([v34 containsObject:v29]& 1) == 0)
                {
                  v30 = [v9[504] registration];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v50 = v29;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Kicking Apple ID non-iCloud based accounts matching dsID: %@ repair", buf, 0xCu);
                  }

                  v31 = [v17 service];
                  [(IDSAccountRepair *)self _repairAccountsWithSuccessfullAppleIDRegistrationForDSID:v29 service:v31];

                  [v34 addObject:v29];
                }
              }
            }
          }

          else
          {
            v32 = [v9[504] registration];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Kicking phone number accounts repair", buf, 2u);
            }

            [(IDSAccountRepair *)self _repairAccountsWithSuccessfulPhoneNumberRegistration];
            v8 = 1;
          }
        }

        v38 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v38);
    }

    v4 = v33;
    v7 = v34;
  }
}

- (void)_repairAccountsWithSuccessfulPhoneNumberRegistration
{
  v2 = [(IDSAccountRepair *)self accountController];
  v3 = [v2 isLoading];

  v4 = +[IMRGLog registration];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      v6 = "Waiting on accounts to load, the account controller isn't ready yet";
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "   => This was an SMS registration, let's see what we should repair", buf, 2u);
  }

  if (![(IDSAccountRepair *)self _shouldBypassRepairLogic])
  {
    [(IDSAccountRepair *)self _resetPhoneNumberRepairCounter];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v7 = [(IDSAccountRepair *)self accountController];
    v8 = [v7 accounts];

    v9 = self;
    v10 = [v8 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (!v10)
    {
      goto LABEL_69;
    }

    v11 = v10;
    v60 = *v73;
    v58 = v8;
    while (1)
    {
      v12 = 0;
      v59 = v11;
      do
      {
        if (*v73 != v60)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v72 + 1) + 8 * v12);
        if ([v13 accountType])
        {
          goto LABEL_65;
        }

        v14 = [v13 service];
        v15 = [v14 wantsPhoneNumberAccount];

        if (!v15 || ([v13 isAdHocAccount] & 1) != 0)
        {
          goto LABEL_65;
        }

        v64 = v13;
        if ([v13 isRegistered])
        {
          goto LABEL_20;
        }

        v16 = +[IMRGLog registration];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v13 registrationError];
          *buf = 67109120;
          LODWORD(v77) = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " => Failed account, let's see if we should kick it (Registration Error: %d)", buf, 8u);
        }

        v18 = [v13 registrationError];
        if (v18 > 0x31)
        {
          goto LABEL_35;
        }

        if (((1 << v18) & 0x3824088600000) != 0)
        {
          goto LABEL_20;
        }

        if (v18 != 2)
        {
          if (v18 == 39)
          {
            v29 = [(IDSAccountRepair *)v9 accountController];
            [v13 service];
            v31 = v30 = v13;
            v32 = [v29 appleIDAccountOnService:v31];

            if (![v32 isEnabled])
            {
              v53 = [(IDSAccountRepair *)v9 _checkForOtherRegisteredTopLevelPhoneAccountMatchingThisAccount:v30];

              v13 = v30;
              if (v53)
              {
                goto LABEL_58;
              }

              goto LABEL_20;
            }

            v33 = +[IMRGLog registration];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v77 = v32;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " => Matching Apple ID account on this service is enabled: %@", buf, 0xCu);
            }

            v13 = v64;
          }

          else
          {
LABEL_35:
            if (v18 + 1 < 2 || v18 == 1 && ![(IDSAccountRepair *)v9 _checkForOtherRegisteredTopLevelPhoneAccountMatchingThisAccount:v13])
            {
              goto LABEL_20;
            }
          }

LABEL_58:
          v54 = +[IMRGLog registration];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v77 = v13;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, " => Kicking SMS based account: %@", buf, 0xCu);
          }

          v55 = [(IDSAccountRepair *)v9 accountController];
          v56 = [v13 uniqueID];
          [v55 enableAccountWithUniqueID:v56];

          v27 = v64;
          [v64 registerAccount];
          v28 = [v64 linkedAccounts];
          v66[0] = _NSConcreteStackBlock;
          v66[1] = 3221225472;
          v66[2] = sub_100405620;
          v66[3] = &unk_100BDB090;
          v66[4] = v9;
          [v28 __imForEach:v66];
          v11 = v59;
LABEL_61:

          v19 = +[IMRGLog registration];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v77 = v27;
            v23 = v19;
            v24 = " ** Tried to repair account: %@";
LABEL_63:
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
          }

          goto LABEL_64;
        }

        v34 = [(IDSAccountRepair *)v9 accountController];
        v35 = [v34 accountsWithType:0];

        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v68 = 0u;
        v36 = v35;
        v37 = [v36 countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (!v37)
        {

          v8 = v58;
          goto LABEL_20;
        }

        v38 = v37;
        v39 = 0;
        obj = v36;
        v63 = *v69;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v69 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v68 + 1) + 8 * i);
            v42 = [v41 userUniqueIdentifier];
            v43 = [v13 userUniqueIdentifier];
            if ([v42 isEqual:v43])
            {
              v44 = [v41 uniqueID];
              v45 = v13;
              v46 = v44;
              v47 = [v45 uniqueID];
              v48 = [v46 isEqual:v47];

              v9 = self;
              if ((v48 & 1) == 0)
              {
                v49 = +[IMRGLog registration];
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v41;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " => Kicking alternate SMS based account: %@", buf, 0xCu);
                }

                v50 = [(IDSAccountRepair *)self accountController];
                v51 = [v41 uniqueID];
                [v50 enableAccountWithUniqueID:v51];

                [v41 registerAccount];
                v52 = [v41 linkedAccounts];
                v67[0] = _NSConcreteStackBlock;
                v67[1] = 3221225472;
                v67[2] = sub_100405524;
                v67[3] = &unk_100BDB090;
                v67[4] = self;
                [v52 __imForEach:v67];
              }

              if (v39)
              {
LABEL_50:
                v39 = 1;
                v13 = v64;
                continue;
              }
            }

            else
            {

              if (v39)
              {
                goto LABEL_50;
              }
            }

            v13 = v64;
            v39 = [(IDSAccountRepair *)v9 _isPhoneAccount:v41 registeredAndMatchingThisAccount:v64];
          }

          v38 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
        }

        while (v38);

        v8 = v58;
        if (v39)
        {
          goto LABEL_58;
        }

LABEL_20:
        v19 = [v13 service];
        if (![v19 iCloudBasedService])
        {
          v11 = v59;
          goto LABEL_64;
        }

        v20 = [v13 isEnabled];

        v11 = v59;
        if (v20)
        {
          goto LABEL_65;
        }

        v21 = [v13 registrationError];
        v19 = +[IMRGLog registration];
        v22 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v21 != 38)
        {
          if (v22)
          {
            *buf = 138412290;
            v77 = v13;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " => Kicking iCloud SMS based account: %@", buf, 0xCu);
          }

          v25 = [(IDSAccountRepair *)v9 accountController];
          v26 = [v13 uniqueID];
          [v25 enableAccountWithUniqueID:v26];

          v27 = v64;
          [v64 registerAccount];
          v28 = [v64 linkedAccounts];
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_10040571C;
          v65[3] = &unk_100BDB090;
          v65[4] = v9;
          [v28 __imForEach:v65];
          goto LABEL_61;
        }

        if (v22)
        {
          *buf = 138412290;
          v77 = v13;
          v23 = v19;
          v24 = " => Not kicking iCloud SMS based account: %@";
          goto LABEL_63;
        }

LABEL_64:

LABEL_65:
        v12 = v12 + 1;
      }

      while (v12 != v11);
      v57 = [v8 countByEnumeratingWithState:&v72 objects:v79 count:16];
      v11 = v57;
      if (!v57)
      {
LABEL_69:

        v4 = +[IMRGLog registration];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v6 = " => Done repair attempt";
LABEL_71:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
        }

LABEL_72:

        return;
      }
    }
  }
}

- (BOOL)_isPhoneAccount:(id)a3 registeredAndMatchingThisAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isAdHocAccount])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 userUniqueIdentifier];
    v9 = [v6 userUniqueIdentifier];
    if ([v8 isEqual:v9])
    {
      v7 = [v5 isRegistered];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_checkForOtherRegisteredTopLevelPhoneAccountMatchingThisAccount:(id)a3
{
  v4 = a3;
  v5 = [(IDSAccountRepair *)self accountController];
  v6 = [v5 accountsWithType:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([(IDSAccountRepair *)self _isPhoneAccount:*(*(&v14 + 1) + 8 * i) registeredAndMatchingThisAccount:v4, v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_repairAccountsWithSuccessfullAppleIDRegistrationForDSID:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSAccountRepair *)self accountController];
  v9 = [v8 isLoading];

  v10 = +[IMRGLog registration];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      v12 = "Waiting on accounts to load, the account controller isn't ready yet";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "   => This was an AppleID registration, let's see what we should repair", buf, 2u);
  }

  if (![(IDSAccountRepair *)self _shouldBypassRepairLogic])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = self;
    v13 = [(IDSAccountRepair *)self accountController];
    v14 = [v13 accounts];

    v15 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (!v15)
    {
      goto LABEL_33;
    }

    v17 = v15;
    v18 = *v38;
    v33 = v36;
    *&v16 = 138412290;
    v32 = v16;
    while (1)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        if ([v20 accountType] == 1 && (objc_msgSend(v20, "isAdHocAccount") & 1) == 0)
        {
          v21 = [v20 dsID];
          if (([v21 isEqualToIgnoringCase:v6]& 1) == 0)
          {
            goto LABEL_30;
          }

          v22 = [v20 service];

          if (v22 != v7)
          {
            v23 = +[IMRGLog registration];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v42 = v6;
              v43 = 2112;
              v44 = v20;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " => DSIDs match to %@, kicking for repair %@", buf, 0x16u);
            }

            if (([v20 isRegistered] & 1) == 0)
            {
              v24 = +[IMRGLog registration];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [v20 registrationError];
                *buf = 67109120;
                LODWORD(v42) = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " => Failed account, let's see if we should kick it (Registration Error: %d)", buf, 8u);
              }

              v26 = [v20 registrationError] + 1;
              if (v26 > 0x32)
              {
                goto LABEL_26;
              }

              if (((1 << v26) & 0x718A310C0000DLL) != 0)
              {
                continue;
              }

              if (((1 << v26) & 0x40000000002) == 0)
              {
                goto LABEL_26;
              }

              v21 = [v20 service];
              if (([v21 iCloudBasedService]& 1) != 0)
              {
                v27 = [(IDSSystemAccountAdapter *)v34->_systemAccountAdapter iCloudSystemAccountWithError:0];

                if (!v27)
                {
                  continue;
                }

LABEL_26:
                v28 = +[IMRGLog registration];
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v32;
                  v42 = v20;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " => Kicking Apple ID based account: %@", buf, 0xCu);
                }

                v29 = [(IDSAccountRepair *)v34 accountController];
                v30 = [v20 uniqueID];
                [v29 enableAccountWithUniqueID:v30];

                [v20 registerAccount];
                v31 = [v20 linkedAccounts];
                v35[0] = _NSConcreteStackBlock;
                v35[1] = 3221225472;
                v36[0] = sub_100405F38;
                v36[1] = &unk_100BDB090;
                v36[2] = v34;
                [v31 __imForEach:v35];

                v21 = +[IMRGLog registration];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v32;
                  v42 = v20;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " ** Tried to repair account: %@", buf, 0xCu);
                }
              }

LABEL_30:

              continue;
            }
          }
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (!v17)
      {
LABEL_33:

        v10 = +[IMRGLog registration];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = " => Done repair attempt";
LABEL_35:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
        }

LABEL_36:

        break;
      }
    }
  }
}

- (void)_registerForAccountRepairActivity
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for account repair activity.", buf, 2u);
  }

  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100406150;
  handler[3] = &unk_100BDB3C8;
  objc_copyWeak(&v5, buf);
  xpc_activity_register("com.apple.ids.accountrepair", XPC_ACTIVITY_CHECK_IN, handler);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)repairAccounts
{
  v3 = [(IDSAccountRepair *)self accountController];
  v4 = [v3 isLoading];

  if (!v4)
  {
    v7 = +[IMSystemMonitor sharedInstance];
    v8 = [v7 isUnderFirstDataProtectionLock];

    if (v8)
    {
      v5 = +[IMRGLog registration];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10091D034();
      }

      goto LABEL_131;
    }

    waitingForMigration = self->_waitingForMigration;
    v5 = +[IMRGLog registration];
    v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (waitingForMigration)
    {
      if (!v10)
      {
        goto LABEL_131;
      }

      *buf = 0;
      v6 = "Waiting for migration, not repairing accounts";
      goto LABEL_4;
    }

    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Account repair timer fired", buf, 2u);
    }

    v88 = self;
    [(IDSAccountRepair *)self _createAndEnableExistingSystemAccounts];
    v11 = [NSArray arrayWithObjects:@"iMessage", @"com.apple.private.alloy.maps", @"FaceTime", @"FaceTime_temporary", @"iMessage_temporary", @"IDS_temporary", 0];
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cleaning up dead keychain items", buf, 2u);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v100 objects:v113 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v101;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v101 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v100 + 1) + 8 * i);
          v19 = +[IMRGLog registration];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v105 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cleaning up keychain items for service: %@", buf, 0xCu);
          }

          IMDeleteItemsForService();
        }

        v15 = [v13 countByEnumeratingWithState:&v100 objects:v113 count:16];
      }

      while (v15);
    }

    v87 = v13;

    v20 = +[IMRGLog registration];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " => Done", buf, 2u);
    }

    v21 = +[IDSRegistrationReasonTracker sharedInstance];
    [v21 setMostRecentIDSRegistrationReason:3];

    v22 = +[IDSRegistrationReasonTracker sharedInstance];
    v23 = [IDSRequestReasonContainer repairRequestWithSubreason:1 pathID:3];
    [v22 setRegistrationRequestReason:v23];

    v24 = +[FTPasswordManager sharedInstance];
    [v24 performCleanUpWithCompletion:0];

    v25 = v88;
    v26 = [(IDSAccountRepair *)v88 accountController];
    v27 = [v26 accounts];
    v28 = [v27 _copyForEnumerating];

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v96 objects:v112 count:16];
    if (!v30)
    {
LABEL_128:

      [(IDSAccountRepair *)v25 repairiCloudBasedAccounts];
      [(IDSAccountRepair *)v25 _repairiTunesBasedAccounts];
      [(IDSAccountRepair *)v25 _repairKVSEntriesForKT];
      v86 = +[IMRGLog registration];
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, " *** Done", buf, 2u);
      }

      v5 = v87;
      goto LABEL_131;
    }

    v31 = v30;
    v32 = *v97;
    v33 = IDSServiceNameiMessage;
    v92 = IDSServiceNameFaceTime;
    v90 = IDSServiceNameFaceTimeMulti;
    v91 = IDSServiceNameCalling;
    v93 = IDSServiceNameiMessage;
    v94 = *v97;
    v89 = v29;
LABEL_28:
    v34 = 0;
    v95 = v31;
    while (1)
    {
      if (*v97 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v35 = *(*(&v96 + 1) + 8 * v34);
      v36 = [v35 service];
      v37 = [v35 uniqueID];
      if (([(__CFString *)v36 iCloudBasedService]& 1) != 0)
      {
        goto LABEL_126;
      }

      v38 = [v35 service];
      v39 = [v38 identifier];

      if (([v39 isEqualToString:v33] & 1) != 0 || (objc_msgSend(v39, "isEqualToString:", v92) & 1) != 0 || objc_msgSend(v39, "isEqualToString:", v91))
      {
        v40 = [v39 isEqualToString:v33];
      }

      else
      {
        v52 = [v39 isEqualToString:v90];
        v40 = [v39 isEqualToString:v33];
        if (!v52)
        {
          goto LABEL_55;
        }
      }

      if (([v35 isUserDisabled] & 1) == 0 && (objc_msgSend(v35, "isRegistered") & 1) == 0)
      {
        v41 = +[IDSRestrictions sharedInstance];
        v42 = [v41 shouldDisableService:v36];

        if ((v42 & 1) == 0)
        {
          v43 = [v35 registrationError];
          v44 = (v43 > 0x31) | (0x7320779FFFF9uLL >> v43);
          v45 = (v43 < 0x32) & (0x3800000000000uLL >> v43);
          v46 = +[IMRGLog registration];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            if (v44)
            {
              v47 = @"YES";
            }

            else
            {
              v47 = @"NO";
            }

            v48 = [v35 registrationError];
            *buf = 138413058;
            v49 = @"YES";
            if (!v45)
            {
              v49 = @"NO";
            }

            v105 = v39;
            v106 = 2112;
            v107 = v47;
            v25 = v88;
            v108 = 2048;
            v109 = v48;
            v110 = 2112;
            v111 = v49;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Checking disabled account {serviceIdentifier: %@, shouldRepair: %@, registrationError: %lld, shouldCheckKTStates: %@ }", buf, 0x2Au);
          }

          if (v44)
          {
            v50 = [(IDSAccountRepair *)v25 accountController];
            [v50 enableAccountWithUniqueID:v37];

            [v35 registerAccount];
          }

          if ((v45 & _os_feature_enabled_impl()) == 1)
          {
            v51 = +[IDSFoundationLog KeyTransparency];
            v29 = v89;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Registration failed due to bad KT Account Key. Checking state to see if are ready to register.", buf, 2u);
            }

            [(IDSAccountRepair *)v25 _repairKTAccount:v35];
          }

          else
          {
            v29 = v89;
          }
        }
      }

LABEL_55:
      if (([v35 isUserDisabled] & 1) == 0)
      {
        v53 = +[IDSRestrictions sharedInstance];
        v54 = ([v53 shouldDisableService:v36] ^ 1) & v40;

        if (v54 == 1)
        {
          v55 = +[IDSRegistrationKeyManager sharedInstance];
          v56 = [v55 registrationNeedsKTDataUpdated];

          v57 = +[IDSFoundationLog KeyTransparency];
          v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
          if (v56)
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Registering to update KT Data.", buf, 2u);
            }

            v59 = [(IDSAccountRepair *)v25 accountController];
            [v59 enableAccountWithUniqueID:v37];

            [v35 registerAccount];
          }

          else
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Not reregistering to update KT Data.", buf, 2u);
            }
          }
        }
      }

      v60 = [v35 isEnabled];
      v61 = +[IMRGLog registration];
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
      if (!v60)
      {
        if (v62)
        {
          *buf = 138412546;
          v105 = v37;
          v106 = 2112;
          v107 = v36;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, " => Disabled, skipping: %@, service name: %@", buf, 0x16u);
        }

        goto LABEL_125;
      }

      if (v62)
      {
        *buf = 138412546;
        v105 = v37;
        v106 = 2112;
        v107 = v36;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, " => Enabled, account uniqueID: %@, service name: %@", buf, 0x16u);
      }

      v61 = [(IDSAccountRepair *)v25 accountController];
      v63 = v35;
      if ([v63 accountType] != 2)
      {
        v64 = [v63 registrationStatus];
        v65 = v64;
        if (v64 > 1)
        {
          if (v64 == 2)
          {
            goto LABEL_83;
          }

          if (v64 != 3)
          {
            if (v64 == 5)
            {
LABEL_83:
              v69 = +[IMRGLog registration];
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v73 = _IDSStringFromIDSRegistrationStatus();
                *buf = 138412290;
                v105 = v73;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, " => %@", buf, 0xCu);
              }

              goto LABEL_123;
            }

LABEL_90:
            v69 = +[IMRGLog registration];
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v105) = v65;
              v70 = v69;
              v71 = " => *** Other status: %d";
              v72 = 8;
LABEL_92:
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, v71, buf, v72);
            }

LABEL_123:

            goto LABEL_124;
          }

          v67 = +[IMRGLog registration];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v80 = v67;
            v81 = " => Authenticated, kicking a register";
LABEL_98:
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, v81, buf, 2u);
          }
        }

        else
        {
          if (v64 == -1)
          {
            v74 = +[IMRGLog registration];
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = [v63 registrationError];
              *buf = 67109120;
              LODWORD(v105) = v75;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, " => Failed account, let's see if we should kick it (Registration Error: %d)", buf, 8u);
            }

            switch([v63 registrationError])
            {
              case 0uLL:
              case 1uLL:
              case 2uLL:
              case 0x15uLL:
              case 0x16uLL:
              case 0x1BuLL:
              case 0x1FuLL:
              case 0x24uLL:
              case 0x26uLL:
              case 0x29uLL:
                v76 = +[IMRGLog registration];
                if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_122;
                }

                goto LABEL_106;
              case 3uLL:
              case 4uLL:
                v76 = +[IMRGLog registration];
                if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_122;
                }

                *buf = 0;
                v77 = v76;
                v78 = " => We sent too many SMS, not retrying, disabling account";
                goto LABEL_95;
              case 5uLL:
              case 6uLL:
                v84 = +[IMRGLog registration];
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, " => Garbage SMS signature, disabling", buf, 2u);
                }

                v69 = [v63 uniqueID];
                [v61 disablePrimaryAccountWithUniqueID:v69];
                goto LABEL_123;
              case 7uLL:
              case 8uLL:
              case 9uLL:
              case 0x2CuLL:
              case 0x2DuLL:
              case 0x2EuLL:
                v67 = +[IMRGLog registration];
                if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_99;
                }

                *buf = 0;
                v80 = v67;
                v81 = " => This appeared to be a server or connectivity error, re-registering";
                goto LABEL_98;
              case 0xAuLL:
                v67 = +[IMRGLog registration];
                if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_99;
                }

                *buf = 0;
                v80 = v67;
                v81 = " => We need a new signature (server authentication failed), re-registering";
                goto LABEL_98;
              case 0xBuLL:
                v67 = +[IMRGLog registration];
                if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_99;
                }

                *buf = 0;
                v80 = v67;
                v81 = " => We were missing auth credentials, re-registering";
                goto LABEL_98;
              case 0xCuLL:
              case 0xDuLL:
              case 0xEuLL:
              case 0xFuLL:
              case 0x10uLL:
              case 0x11uLL:
              case 0x12uLL:
              case 0x13uLL:
              case 0x14uLL:
              case 0x17uLL:
              case 0x18uLL:
              case 0x19uLL:
              case 0x1AuLL:
              case 0x1CuLL:
              case 0x1DuLL:
              case 0x20uLL:
              case 0x2AuLL:
              case 0x2BuLL:
                v76 = +[IMRGLog registration];
                if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_122;
                }

                goto LABEL_106;
              case 0x1EuLL:
                v67 = +[IMRGLog registration];
                if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_99;
                }

                *buf = 0;
                v80 = v67;
                v81 = " => This appeared to be a rate limit error, re-registering";
                goto LABEL_98;
              case 0x2FuLL:
              case 0x30uLL:
              case 0x31uLL:
                v76 = +[IMRGLog registration];
                if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_122;
                }

LABEL_106:
                v83 = [v63 registrationError];
                *buf = 67109120;
                LODWORD(v105) = v83;
                v77 = v76;
                v78 = " => Not retrying for error: %d, disabling account";
                break;
              default:
                v76 = +[IMRGLog registration];
                if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_122;
                }

                v85 = [v63 registrationError];
                *buf = 67109120;
                LODWORD(v105) = v85;
                v77 = v76;
                v78 = " => Default error: %d   disabling";
                break;
            }

            v79 = 8;
LABEL_121:
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, v78, buf, v79);
LABEL_122:

            v69 = [v63 uniqueID];
            [v61 disableAccountWithUniqueID:v69];
            goto LABEL_123;
          }

          if (!v64)
          {
            v76 = +[IMRGLog registration];
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v77 = v76;
              v78 = " => Unknown account status, let's disable it";
LABEL_95:
              v79 = 2;
              goto LABEL_121;
            }

            goto LABEL_122;
          }

          if (v64 != 1)
          {
            goto LABEL_90;
          }

          v66 = +[IMRGLog registration];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, " => Unregistered account, let's see if we can register it", buf, 2u);
          }

          v67 = [v63 vettedAliases];
          if (![v67 count])
          {
            v68 = [v63 hasEverRegistered];

            if ((v68 & 1) == 0)
            {
              v69 = +[IMRGLog registration];
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v70 = v69;
                v71 = " => account has no vetted aliases, and it's never registered, let's ignore it";
                v72 = 2;
                goto LABEL_92;
              }

              goto LABEL_123;
            }

            goto LABEL_100;
          }
        }

LABEL_99:

LABEL_100:
        v82 = [v63 uniqueID];
        [v61 enableAccountWithUniqueID:v82];

        [v63 registerAccount];
      }

LABEL_124:

LABEL_125:
      v32 = v94;
      v31 = v95;
      v33 = v93;
LABEL_126:

      if (v31 == ++v34)
      {
        v31 = [v29 countByEnumeratingWithState:&v96 objects:v112 count:16];
        if (!v31)
        {
          goto LABEL_128;
        }

        goto LABEL_28;
      }
    }
  }

  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "Waiting on accounts to load, the account controller isn't ready yet";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
  }

LABEL_131:
}

- (void)repairService:(id)a3 withPrimaryUserName:(id)a4
{
  v6 = a3;
  v59 = a4;
  if ([v6 adHocServiceType] != 2 && objc_msgSend(v6, "adHocServiceType") != 5)
  {
    if (![v6 disabledOnTinkerWatch] || (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isCurrentDeviceTinkerConfiguredWatch"), v7, (v8 & 1) == 0))
    {
      if (![v6 enabledOnlyWhenPaired] || (-[IDSAccountRepair accountController](self, "accountController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isTraditionalLocalSetupEnabled"), v9, v10))
      {
        context = objc_autoreleasePoolPush();
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v11 = [(IDSAccountRepair *)self accountController];
        v56 = v6;
        v12 = [v11 accountsOnService:v6 withType:1];

        v13 = [v12 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v68;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v68 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v67 + 1) + 8 * i);
              if (([v17 isAdHocAccount] & 1) == 0)
              {
                v18 = +[IMRGLog registration];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v72 = v17;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "   Checking account for deletion: %@", buf, 0xCu);
                }

                v19 = [v17 loginID];
                v20 = IMAreEmailsLogicallyTheSame();

                v21 = +[IMRGLog registration];
                v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
                if (v20)
                {
                  if (v22)
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "   Account is primary, it should not be deleted", buf, 2u);
                  }
                }

                else
                {
                  if (v22)
                  {
                    v23 = [v17 loginID];
                    *buf = 138412546;
                    v72 = v59;
                    v73 = 2112;
                    v74 = v23;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "  => Account does not appear to be primary, disabling it, and deleting it  (%@ <> %@)", buf, 0x16u);
                  }

                  v21 = [(IDSAccountRepair *)self accountController];
                  [v21 removeAccount:v17];
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v67 objects:v75 count:16];
          }

          while (v14);
        }

        objc_autoreleasePoolPop(context);
        v6 = v56;
        v24 = [(IDSAccountRepair *)self _hasActiveAppleIDBasedAccountOnService:v56];
        v25 = [(IDSAccountRepair *)self accountController];
        v26 = [v25 accountsOnService:v56];
        v27 = [v26 __imArrayByFilteringWithBlock:&stru_100BDB428];

        v29 = sub_100407BDC(v28, 1, v27);
        v30 = sub_100407BDC(v29, 0, v27);
        v31 = sub_100407BDC(v30, 2, v27);
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_100407CB4;
        v63[3] = &unk_100BDB450;
        v66 = v24;
        v58 = v59;
        v64 = v58;
        v65 = self;
        [v29 __imForEach:v63];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_10040803C;
        v62[3] = &unk_100BDB478;
        v62[4] = self;
        [v30 __imForEach:v62];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1004082A0;
        v61[3] = &unk_100BDB478;
        v61[4] = self;
        [v31 __imForEach:v61];
        v32 = [(IDSAccountRepair *)self accountController];
        v33 = [v32 accountsOnService:v56 withType:1];
        v34 = [v33 count];

        if (!v34)
        {
          v57 = v27;
          v53 = v30;
          contexta = v31;
          v35 = objc_autoreleasePoolPush();
          v36 = +[IMRGLog registration];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v72 = v56;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " => We have no active apple ID based accounts for service: %@", buf, 0xCu);
          }

          v37 = [(IDSAccountRepair *)self _activeAppleIDAccount];
          if (v37)
          {
            v38 = v58;
            v39 = [v37 loginID];
            v40 = IMAreEmailsLogicallyTheSame();

            if (v40)
            {
              v41 = +[IMRGLog registration];
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [v37 loginID];
                *buf = 138412546;
                v72 = v56;
                v73 = 2112;
                v74 = v42;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Creating new account based on existing account with service %@ login ID %@", buf, 0x16u);
              }

              v43 = v35;

              v44 = [v37 loginID];

              v45 = [v37 accountInfo];
              v38 = v44;
            }

            else
            {
              v43 = v35;
              v45 = 0;
            }

            v47 = [IDSDAccount alloc];
            v48 = +[NSString stringGUID];
            v46 = [(IDSDAccount *)v47 initWithLoginID:v38 service:v56 uniqueID:v48 accountType:1 accountConfig:v45];

            v49 = [(IDSAccountRepair *)self accountController];
            [v49 addPrimaryAccount:v46];

            v50 = [(IDSAccountRepair *)self accountController];
            v51 = [v46 uniqueID];
            [v50 enablePrimaryAccountWithUniqueID:v51];

            v6 = v56;
            v52 = [v46 linkedAccounts];
            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_100408378;
            v60[3] = &unk_100BDB090;
            v60[4] = self;
            [v52 __imForEach:v60];

            [v46 setupAccountWithCompletionBlock:0];
            v35 = v43;
          }

          else
          {
            v46 = +[IMRGLog registration];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, " => No other signed in AppleID accounts, skipping", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(v35);
          v30 = v53;
          v31 = contexta;
          v27 = v57;
        }
      }
    }
  }
}

- (id)_activeAppleIDAccount
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(IDSAccountRepair *)self accountController];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 accountType] == 1 && objc_msgSend(v7, "isEnabled") && objc_msgSend(v7, "registrationStatus") >= 2 && !objc_msgSend(v7, "isAdHocAccount"))
        {
          v4 = v7;
          goto LABEL_14;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v4;
}

- (BOOL)_hasActiveAppleIDBasedAccountOnService:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(IDSAccountRepair *)self accountController];
  v6 = [v5 accountsOnService:v4];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 accountType] == 1 && objc_msgSend(v10, "isEnabled") && objc_msgSend(v10, "registrationStatus") >= 2 && !objc_msgSend(v10, "isAdHocAccount"))
        {
          LOBYTE(v7) = 1;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v7;
}

- (id)_createiTunesAccountFromSystemIfNeeded
{
  v3 = [(IDSSystemAccountAdapter *)self->_systemAccountAdapter iTunesSystemAccountWithError:0];
  if (v3)
  {
    v4 = +[IDSDServiceController sharedInstance];
    v5 = [v4 iTunesService];

    v6 = [(IDSAccountRepair *)self accountController];
    v7 = [v3 username];
    v8 = [v6 existingAccountOnService:v5 withType:1 loginID:v7];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5 == 0;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = [v3 username];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v3 DSID];
        v13 = [v12 length];

        if (v13)
        {
          v26 = kIDSServiceDefaultsAuthorizationIDKey;
          v14 = [v3 DSID];
          v27 = v14;
          v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        }

        else
        {
          v15 = 0;
        }

        v16 = [IDSDAccount alloc];
        v17 = [v3 username];
        v18 = +[NSString stringGUID];
        v11 = [(IDSDAccount *)v16 initWithLoginID:v17 service:v5 uniqueID:v18 accountType:1 accountConfig:v15];

        v19 = +[IMRGLog iCloud];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(IDSDAccount *)v11 smallDescription];
          v22 = 138412546;
          v23 = v5;
          v24 = 2112;
          v25 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created new iTunes account based on system account { service: %@, account: %@ }", &v22, 0x16u);
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_createAndEnableExistingSystemAccounts
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(IDSAccountRepair *)self _createiTunesAccountFromSystemIfNeeded];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [(IDSAccountRepair *)self accountController];
        [v11 addAccount:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = [(IDSAccountRepair *)self accountController];
        v19 = [v17 uniqueID];
        [v18 enablePrimaryAccountWithUniqueID:v19];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }
}

- (void)_repairiTunesBasedAccounts
{
  v3 = [(IDSAccountRepair *)self accountController];
  v4 = [v3 isLoading];

  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting on accounts to load, the account controller isn't ready yet", buf, 2u);
    }
  }

  else
  {
    if ([(IDSAccountRepair *)self _shouldBypassRepairLogic])
    {
      return;
    }

    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IDSAccountRepair *)self accountController];
      v8 = [v7 hasActiveSMSAccount];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "   => Has SMS Account active: %@", buf, 0xCu);
    }

    v10 = [(IDSSystemAccountAdapter *)self->_systemAccountAdapter iTunesSystemAccountWithError:0];
    v5 = v10;
    if (v10)
    {
      v11 = [v10 username];
      v12 = +[IMRGLog registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Repairing iTunes based accounts if needed (Primary account: %@)", buf, 0xCu);
      }

      v13 = +[IDSDServiceController sharedInstance];
      v14 = [v13 iTunesService];

      [(IDSAccountRepair *)self repairService:v14 withPrimaryUserName:v11];
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " => Done repair attempt", buf, 2u);
      }
    }

    else
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iTunes isn't signed in, no repair needed, signing out", buf, 2u);
      }

      im_dispatch_after_primary_queue();
    }
  }
}

- (void)repairiCloudBasedAccounts
{
  v3 = [(IDSAccountRepair *)self accountController];
  v4 = [v3 isLoading];

  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting on accounts to load, the account controller isn't ready yet", buf, 2u);
    }
  }

  else
  {
    if ([(IDSAccountRepair *)self _shouldBypassRepairLogic])
    {
      return;
    }

    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IDSAccountRepair *)self accountController];
      v8 = [v7 hasActiveSMSAccount];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "   => Has SMS Account active: %@", buf, 0xCu);
    }

    v10 = [(IDSSystemAccountAdapter *)self->_systemAccountAdapter iCloudSystemAccountWithError:0];
    v5 = v10;
    if (v10)
    {
      v11 = [v10 username];
      v12 = +[IMRGLog registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Repairing iCloud based accounts if needed (Primary account: %@)", buf, 0xCu);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = +[IDSDServiceController sharedInstance];
      v14 = [v13 allServices];

      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            if ([v19 iCloudBasedService])
            {
              [(IDSAccountRepair *)self repairService:v19 withPrimaryUserName:v11];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v16);
      }

      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " => Done repair attempt", buf, 2u);
      }
    }

    else
    {
      v21 = +[IMRGLog registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "iCloud isn't signed in, no repair needed, signing out", buf, 2u);
      }

      im_dispatch_after_primary_queue();
      v22 = [(IDSAccountRepair *)self accountController];
      [v22 updateDevicePropertiesWithDevices:0];
    }
  }
}

- (void)_repairKTAccount:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking to see if we can repair the KT account.", buf, 2u);
  }

  keyTransparencyVerifier = self->_keyTransparencyVerifier;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100409508;
  v8[3] = &unk_100BDB4A0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(IDSKeyTransparencyVerifier *)keyTransparencyVerifier fetchKTCDPStatus:v8];
}

- (void)_repairKVSEntriesForKT
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking to see if we need to repair KVS.", v4, 2u);
  }

  if (+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
  {
    v3 = +[IDSKeyTransparencyVerifier sharedInstance];
    [v3 repairKVSDeviceEntryIfNeeded];
  }

  else
  {
    v3 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10091D09C();
    }
  }
}

+ (double)_phoneNumberRepairIntervalForCount:(int64_t)a3
{
  v4 = sub_10040973C();
  v5 = sub_1004097C8();
  v6 = exp2(a3);
  if (v4 * v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4 * v6;
  }

  v8 = +[IMRGLog phoneRepair];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218752;
    v11 = v7;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current repair interval: %f multiplier: %ld index: %ld max: %f", &v10, 0x2Au);
  }

  return v7;
}

- (BOOL)_shouldNotSetupPhoneNumberRepairTimer
{
  v2 = +[FTDeviceSupport sharedInstance];
  if ([v2 registrationSupported])
  {
    v3 = !+[IDSRegistrationController systemSupportsPhoneNumberRegistration];
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (id)_lastRepairIntervalFromPrefs
{
  v2 = [(IDSAccountRepair *)self userDefaults];
  v3 = [v2 appValueForKey:@"LastRepairInterval"];

  return v3;
}

- (id)_totalRepairCountFromPrefs
{
  v2 = [(IDSAccountRepair *)self userDefaults];
  v3 = [v2 appValueForKey:@"TotalRepairCount"];

  return v3;
}

- (void)setupPhoneNumberRepairTimer
{
  v3 = +[IMSystemMonitor sharedInstance];
  v4 = [v3 isUnderFirstDataProtectionLock];

  if ((v4 & 1) == 0)
  {
    if ([(IDSAccountRepair *)self _shouldNotSetupPhoneNumberRepairTimer])
    {
      v5 = +[IMRGLog phoneRepair];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = +[FTDeviceSupport sharedInstance];
        if ([v6 registrationSupported])
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        if (+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        *buf = 138412546;
        v42 = v7;
        v43 = 2112;
        v44 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not setting up repair (registrationSupported: %@) (supportsSMSIdentification: %@)", buf, 0x16u);
      }

LABEL_35:

      return;
    }

    [(IMDispatchTimer *)self->_phoneRepairTimer invalidate];
    phoneRepairTimer = self->_phoneRepairTimer;
    self->_phoneRepairTimer = 0;

    +[NSDate timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = [(IDSAccountRepair *)self _lastRepairIntervalFromPrefs];
    v5 = v12;
    if (v12)
    {
      [v12 doubleValue];
      v14 = v13;
      v15 = +[IMRGLog phoneRepair];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [v5 doubleValue];
        v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        *buf = 138412290;
        v42 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded last repair date %@", buf, 0xCu);
      }

      v17 = [(IDSAccountRepair *)self _totalRepairCountFromPrefs];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 integerValue] - 1;
      }

      else
      {
        v19 = -1;
      }

      v25 = v19 & ~(v19 >> 63);
      self->_lastBagRepairInterval = sub_10040973C();
      [IDSAccountRepair _phoneNumberRepairIntervalForCount:v25];
      v22 = v14 + v26;
      if (v22 < v11)
      {
        v27 = +[IMRGLog phoneRepair];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [NSDate dateWithTimeIntervalSinceReferenceDate:v22];
          *buf = 138412290;
          v42 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "We've missed the next repair date %@, repairing now...", buf, 0xCu);
        }

        [(IDSAccountRepair *)self _phoneNumberRepairTimerHit:0];
        goto LABEL_35;
      }

LABEL_32:

      v33 = v22 - v11;
      v34 = +[IMRGLog phoneRepair];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [NSDate dateWithTimeIntervalSinceNow:v33];
        *buf = 138412290;
        v42 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Next repair date %@", buf, 0xCu);
      }

      v36 = [IMDispatchTimer alloc];
      v37 = im_primary_queue();
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100409FA8;
      v40[3] = &unk_100BD9268;
      v40[4] = self;
      v38 = [v36 initWithQueue:v37 interval:v33 repeats:0 handlerBlock:v40];
      v39 = self->_phoneRepairTimer;
      self->_phoneRepairTimer = v38;

      goto LABEL_35;
    }

    v20 = [(IDSAccountRepair *)self userDefaults];
    v18 = [v20 appValueForKey:@"InitialRepairInterval"];

    if (v18)
    {
      [v18 doubleValue];
      v22 = v21;
      v23 = +[IMRGLog phoneRepair];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_31:

        goto LABEL_32;
      }

      v24 = [NSDate dateWithTimeIntervalSinceReferenceDate:v22];
      *buf = 138412290;
      v42 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Loaded initial repair date %@", buf, 0xCu);
    }

    else
    {
      v29 = arc4random_uniform(0x278D00u);
      if (IDSDebuggingShouldForcePhoneRepairTimer())
      {
        IDSDebuggingPhoneRepairTimerOverride();
      }

      else
      {
        v30 = v29;
      }

      v22 = v11 + v30;
      v31 = +[IMRGLog phoneRepair];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [NSDate dateWithTimeIntervalSinceReferenceDate:v22];
        *buf = 138412290;
        v42 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Generated inital repair date %@", buf, 0xCu);
      }

      v23 = [(IDSAccountRepair *)self userDefaults];
      v24 = [NSNumber numberWithDouble:v22];
      [v23 setAppValue:v24 forKey:@"InitialRepairInterval"];
    }

    goto LABEL_31;
  }
}

- (void)recalculatePhoneRepairTimer
{
  v3 = +[IMRGLog phoneRepair];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bag reloaded, setting up new phone number repair timer", buf, 2u);
  }

  v4 = floor(self->_lastBagRepairInterval);
  if (v4 > 0.0 && v4 != floor(sub_10040973C()))
  {
    v5 = +[IMRGLog phoneRepair];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Repair intervals differ, setting up new repair timer", v6, 2u);
    }

    [(IDSAccountRepair *)self setupPhoneNumberRepairTimer];
  }
}

- (void)_resetPhoneNumberRepairCounter
{
  v3 = +[IMRGLog phoneRepair];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting phone number repair counter", v5, 2u);
  }

  v4 = [(IDSAccountRepair *)self userDefaults];
  [v4 removeAppValueForKey:@"TotalRepairCount"];
}

- (void)_phoneNumberRepairTimerHit:(id)a3
{
  v4 = +[IMRGLog phoneRepair];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Phone repair timer hit", buf, 2u);
  }

  [(IMDispatchTimer *)self->_phoneRepairTimer invalidate];
  if (![(IDSAccountRepair *)self _repairPhoneNumberAccounts])
  {
    [(IDSAccountRepair *)self _resetPhoneNumberRepairCounter];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [(IDSAccountRepair *)self _totalRepairCountFromPrefs];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSNumber numberWithInteger:v8 + 1];
  v10 = [(IDSAccountRepair *)self userDefaults];
  [v10 removeAppValueForKey:@"InitialRepairInterval"];

  v11 = [(IDSAccountRepair *)self userDefaults];
  [v11 setAppValue:v5 forKey:@"LastRepairInterval"];

  v12 = [(IDSAccountRepair *)self userDefaults];
  [v12 setAppValue:v9 forKey:@"TotalRepairCount"];

  [IDSAccountRepair _phoneNumberRepairIntervalForCount:v8];
  v14 = v13;
  v15 = +[IMRGLog phoneRepair];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [NSDate dateWithTimeIntervalSinceNow:v14];
    *buf = 138412290;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Next repair date %@", buf, 0xCu);
  }

  v17 = [IMDispatchTimer alloc];
  v18 = im_primary_queue();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10040A3F4;
  v21[3] = &unk_100BD9268;
  v21[4] = self;
  v19 = [v17 initWithQueue:v18 interval:v14 repeats:0 handlerBlock:v21];
  phoneRepairTimer = self->_phoneRepairTimer;
  self->_phoneRepairTimer = v19;
}

- (BOOL)_repairPhoneNumberAccounts
{
  v3 = +[IMRGLog phoneRepair];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Repairing phone number accounts", buf, 2u);
  }

  v4 = +[FTDeviceSupport sharedInstance];
  if (![v4 registrationSupported])
  {
    goto LABEL_82;
  }

  v5 = +[IDSRegistrationController systemSupportsPhoneNumberRegistration];

  if (v5)
  {
    if ([(IDSAccountRepair *)self _shouldBypassRepairLogic])
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v6 = +[IDSDServiceController sharedInstance];
    v4 = [v6 allServices];

    v7 = [v4 countByEnumeratingWithState:&v69 objects:v90 count:16];
    if (v7)
    {
      v8 = v7;
      v59 = 0;
      v9 = *v70;
      v60 = self;
      v55 = *v70;
      v56 = v4;
      do
      {
        v10 = 0;
        v57 = v8;
        do
        {
          if (*v70 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v69 + 1) + 8 * v10);
          if ([v11 adHocServiceType] != 2 && objc_msgSend(v11, "adHocServiceType") != 5)
          {
            if (![v11 disabledOnTinkerWatch] || (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isCurrentDeviceTinkerConfiguredWatch"), v12, (v13 & 1) == 0))
            {
              if (![v11 enabledOnlyWhenPaired] || (-[IDSAccountRepair accountController](self, "accountController"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isTraditionalLocalSetupEnabled"), v14, v15))
              {
                v58 = v10;
                v16 = [(IDSAccountRepair *)self accountController];
                v17 = [v16 accountsOnService:v11];

                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v18 = v17;
                v19 = [v18 countByEnumeratingWithState:&v65 objects:v89 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v66;
                  v61 = v18;
                  do
                  {
                    for (i = 0; i != v20; i = i + 1)
                    {
                      if (*v66 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v65 + 1) + 8 * i);
                      if (![v23 accountType] && (objc_msgSend(v23, "isAdHocAccount") & 1) == 0)
                      {
                        v63 = [v23 isRegistered];
                        v24 = [(IDSAccountRepair *)self accountController];
                        v25 = [v23 uniqueID];
                        v62 = [v24 isEnabledAccount:v25];

                        v26 = [v23 service];
                        v27 = [v26 shouldAutoRegisterAllHandles];

                        v64 = [v23 isUserDisabled];
                        LODWORD(v26) = [v23 registrationStatus];
                        v28 = [v23 registrationError];
                        v29 = v28;
                        LOBYTE(v30) = 0;
                        if (v26 == -1 && v28 <= 0x2E)
                        {
                          v30 = 0x700040000FE0uLL >> v28;
                        }

                        v31 = [(IDSAccountRepair *)self accountController];
                        v32 = [v23 service];
                        v33 = [v31 appleIDAccountOnService:v32];

                        v34 = [v33 isRegistered];
                        v35 = v34;
                        if (((v30 & 1) != 0 || ((v27 | v34) & 1) != 0 || v64 != 1) && (v63 & v62 & 1) == 0 && v29 != 38)
                        {
                          v45 = +[IMRGLog phoneRepair];
                          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                          {
                            v46 = [v23 smallDescription];
                            *buf = 138414082;
                            if (v27)
                            {
                              v47 = @"YES";
                            }

                            else
                            {
                              v47 = @"NO";
                            }

                            v74 = v46;
                            v48 = v46;
                            if (v35)
                            {
                              v49 = @"YES";
                            }

                            else
                            {
                              v49 = @"NO";
                            }

                            v75 = 2112;
                            if (v64)
                            {
                              v50 = @"YES";
                            }

                            else
                            {
                              v50 = @"NO";
                            }

                            v76 = v47;
                            if (v30)
                            {
                              v51 = @"YES";
                            }

                            else
                            {
                              v51 = @"NO";
                            }

                            v77 = 2112;
                            if (v63)
                            {
                              v52 = @"YES";
                            }

                            else
                            {
                              v52 = @"NO";
                            }

                            v78 = v49;
                            if (v62)
                            {
                              v53 = @"YES";
                            }

                            else
                            {
                              v53 = @"NO";
                            }

                            v79 = 2112;
                            v80 = v50;
                            v81 = 1024;
                            v82 = v29;
                            v83 = 2112;
                            v84 = v51;
                            v85 = 2112;
                            v86 = v52;
                            v87 = 2112;
                            v88 = v53;
                            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "REPAIR %@ (shouldAutoRegister: %@) (companionAccountRegistered: %@) (isUserDisabled: %@) (registrationError: %d  -  shouldRepairFailedAccount: %@) (registered: %@) (enabled: %@)", buf, 0x4Eu);
                          }

                          self = v60;
                          im_dispatch_after_primary_queue();
                          v59 = 1;
                        }

                        else
                        {
                          v36 = +[IMRGLog phoneRepair];
                          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                          {
                            v37 = [v23 smallDescription];
                            v38 = v37;
                            *buf = 138414082;
                            if (v27)
                            {
                              v39 = @"YES";
                            }

                            else
                            {
                              v39 = @"NO";
                            }

                            v74 = v37;
                            if (v35)
                            {
                              v40 = @"YES";
                            }

                            else
                            {
                              v40 = @"NO";
                            }

                            v75 = 2112;
                            if (v64)
                            {
                              v41 = @"YES";
                            }

                            else
                            {
                              v41 = @"NO";
                            }

                            v76 = v39;
                            if (v30)
                            {
                              v42 = @"YES";
                            }

                            else
                            {
                              v42 = @"NO";
                            }

                            v77 = 2112;
                            if (v63)
                            {
                              v43 = @"YES";
                            }

                            else
                            {
                              v43 = @"NO";
                            }

                            v78 = v40;
                            if (v62)
                            {
                              v44 = @"YES";
                            }

                            else
                            {
                              v44 = @"NO";
                            }

                            v79 = 2112;
                            v80 = v41;
                            v81 = 1024;
                            v82 = v29;
                            v83 = 2112;
                            v84 = v42;
                            v85 = 2112;
                            v86 = v43;
                            v87 = 2112;
                            v88 = v44;
                            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "GOOD   %@ (shouldAutoRegister: %@) (companionAccountRegistered: %@) (isUserDisabled: %@) (registrationError: %d  -  shouldRepairFailedAccount: %@) (registered: %@) (enabled: %@)", buf, 0x4Eu);
                          }

                          self = v60;
                        }

                        v18 = v61;
                      }
                    }

                    v20 = [v18 countByEnumeratingWithState:&v65 objects:v89 count:16];
                  }

                  while (v20);
                }

                v9 = v55;
                v4 = v56;
                v8 = v57;
                v10 = v58;
              }
            }
          }

          v10 = v10 + 1;
        }

        while (v10 != v8);
        v8 = [v4 countByEnumeratingWithState:&v69 objects:v90 count:16];
      }

      while (v8);
      LOBYTE(v5) = v59;
      goto LABEL_83;
    }

LABEL_82:
    LOBYTE(v5) = 0;
LABEL_83:
  }

  return v5;
}

@end