@interface IDSAccountSync
+ (double)retryTimeForKey:(id)a3 attempts:(int64_t)a4;
+ (id)sharedInstance;
+ (id)usefulLoggingDescriptionAccountInfos:(id)a3;
- (IDSAccountSync)init;
- (IDSAccountSync)initWithPairingManager:(id)a3 serviceController:(id)a4 accountController:(id)a5 pushHandler:(id)a6 userDefaults:(id)a7 remoteCredential:(id)a8;
- (id)_constructAccountInfo:(id)a3;
- (id)_registrationConductor;
- (id)_sendAccountSyncMessage:(id)a3 withPersistentKey:(id)a4;
- (id)_stewieCoordinator;
- (id)_userStore;
- (id)constructRAResponseDictionary:(id)a3;
- (void)_addPhoneNumbersToAccount:(id)a3 withNonPreferredPhoneAccounts:(id)a4;
- (void)_noteShouldSynchronizeServices:(id)a3;
- (void)_noteShouldSynchronizeTinkerDeviceInfo;
- (void)_registerAccountsWithRemoteInfo:(id)a3;
- (void)_startRetryForKey:(id)a3 withAction:(id)a4;
- (void)_stopAllPendingActions;
- (void)_syncTinkerDeviceInfo;
- (void)_updatePreferredAccountWithAccountInfo:(id)a3 withAccountSyncCommand:(unsigned int)a4;
- (void)_updateSPSProvisioningInfo:(id)a3 fromID:(id)a4;
- (void)_updateTinkerDeviceWithURIs:(id)a3 pushToken:(id)a4;
- (void)incomingSyncMessage:(id)a3 fromID:(id)a4;
- (void)kickAnyUnfinishedSynchronization;
- (void)noteShouldFetchRemoteAccountInfoForAllServices;
- (void)noteShouldSynchronizeAllServices;
- (void)noteShouldSynchronizePreferredAccount;
- (void)noteShouldSynchronizeSPSProvisioningInfo;
- (void)noteUnpairedTraditionalDeviceWithID:(id)a3;
- (void)resetAndResynchronizeEverything;
- (void)saveTracking;
- (void)synchronizeAccountsWithRemoteInfo:(id)a3 service:(id)a4;
@end

@implementation IDSAccountSync

+ (id)sharedInstance
{
  if (qword_100CBD210 != -1)
  {
    sub_10091C788();
  }

  v3 = qword_100CBD218;

  return v3;
}

- (IDSAccountSync)init
{
  v3 = objc_alloc_init(IDSRemoteCredential);
  [v3 setWantsRetries:1];
  v4 = +[IDSPairingManager sharedInstance];
  v5 = +[IDSDServiceController sharedInstance];
  v6 = +[IDSDAccountController sharedInstance];
  v7 = +[IDSPushHandler sharedInstance];
  v8 = +[IMUserDefaults sharedDefaults];
  v9 = [(IDSAccountSync *)self initWithPairingManager:v4 serviceController:v5 accountController:v6 pushHandler:v7 userDefaults:v8 remoteCredential:v3];

  return v9;
}

- (IDSAccountSync)initWithPairingManager:(id)a3 serviceController:(id)a4 accountController:(id)a5 pushHandler:(id)a6 userDefaults:(id)a7 remoteCredential:(id)a8
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = IDSAccountSync;
  v18 = [(IDSAccountSync *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pairingManager, a3);
    objc_storeStrong(&v19->_serviceController, a4);
    objc_storeStrong(&v19->_accountController, a5);
    objc_storeStrong(&v19->_pushHandler, a6);
    objc_storeStrong(&v19->_userDefaults, a7);
    objc_storeStrong(&v19->_syncCredential, a8);
    v20 = objc_alloc_init(NSMutableDictionary);
    currentInFlightSyncAttempts = v19->_currentInFlightSyncAttempts;
    v19->_currentInFlightSyncAttempts = v20;
  }

  return v19;
}

- (void)saveTracking
{
  v5 = [(IDSAccountSync *)self userDefaults];
  v3 = [(IDSAccountSync *)self currentInFlightSyncAttempts];
  v4 = [v3 allKeys];
  [v5 setAppValue:v4 forKey:@"AccountSyncSyncedServices"];
}

- (void)kickAnyUnfinishedSynchronization
{
  v3 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "beginning watch<>phone account synchronization", buf, 2u);
  }

  if (![(NSMutableDictionary *)self->_currentInFlightSyncAttempts count])
  {
    v4 = [(IDSAccountSync *)self userDefaults];
    v5 = [v4 appValueForKey:@"AccountSyncSyncedServices"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 count])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1003F6C68;
      v13[3] = &unk_100BD7530;
      v13[4] = self;
      v6 = [v5 __imArrayByApplyingBlock:v13];
      v7 = +[IMRGLog accountSync];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded syncing services {serviceInstances : %@}", buf, 0xCu);
      }

      [(IDSAccountSync *)self _noteShouldSynchronizeServices:v6];
      if ([v5 containsObject:@"PreferredAccount"])
      {
        v8 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Should continue syncing preferred account", buf, 2u);
        }

        [(IDSAccountSync *)self noteShouldSynchronizePreferredAccount];
      }

      if ([v5 containsObject:@"FetchRemote"])
      {
        v9 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Should continue fetching remote account", buf, 2u);
        }

        [(IDSAccountSync *)self noteShouldFetchRemoteAccountInfoForAllServices];
      }

      if ([v5 containsObject:@"TinkerDeviceInfo"])
      {
        v10 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Should continue syncing tinker device info", buf, 2u);
        }

        [(IDSAccountSync *)self noteShouldSynchronizeTinkerDeviceInfo];
      }

      if ([v5 containsObject:@"SPSProvisioningData"])
      {
        v11 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Should continue syncing SPS provisioning info", buf, 2u);
        }

        [(IDSAccountSync *)self noteShouldSynchronizeSPSProvisioningInfo];
      }
    }

    else
    {
      v12 = +[IMRGLog accountSync];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No readable saved syncing services -- returning", buf, 2u);
      }
    }
  }
}

+ (double)retryTimeForKey:(id)a3 attempts:(int64_t)a4
{
  v5 = 60 * a4;
  if (60 * a4 >= 3600)
  {
    v5 = 3600;
  }

  v6 = v5;
  if ([a3 isEqualToString:@"TinkerDeviceInfo"])
  {
    v7 = 5 * a4 * a4;
    if (v7 < v6)
    {
      return v7;
    }
  }

  return v6;
}

- (void)_startRetryForKey:(id)a3 withAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSAccountSync *)self currentInFlightSyncAttempts];
  v9 = [v8 objectForKeyedSubscript:v6];
  [v9 stop];

  v10 = [(IDSAccountSync *)self currentInFlightSyncAttempts];
  [v10 setObject:0 forKeyedSubscript:v6];

  v11 = [IDSBlockRetryHandler alloc];
  v12 = im_primary_queue();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003F6F48;
  v22[3] = &unk_100BDAE68;
  v23 = v6;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1003F6F60;
  v20 = &unk_100BDAE90;
  v21 = v7;
  v13 = v7;
  v14 = v6;
  v15 = [(IDSBlockRetryHandler *)v11 initWithQueue:v12 backoffProvider:v22 block:&v17];

  v16 = [(IDSAccountSync *)self currentInFlightSyncAttempts:v17];
  [v16 setObject:v15 forKeyedSubscript:v14];

  [(IDSAccountSync *)self saveTracking];
  [(IDSBlockRetryHandler *)v15 start];
}

- (void)_stopAllPendingActions
{
  v3 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSAccountSync *)self currentInFlightSyncAttempts];
    v5 = [v4 allKeys];
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping all pending account sync actions { pending: %@ }", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(IDSAccountSync *)self currentInFlightSyncAttempts];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [(IDSAccountSync *)self currentInFlightSyncAttempts];
        v13 = [v12 objectForKeyedSubscript:v11];
        [v13 stop];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = [(IDSAccountSync *)self currentInFlightSyncAttempts];
  [v14 removeAllObjects];

  [(IDSAccountSync *)self saveTracking];
}

- (id)_sendAccountSyncMessage:(id)a3 withPersistentKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSString stringGUID];
  v9 = [NSString stringWithFormat:@"com.apple.identityservice.accountsync-%@", v7];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003F72C8;
  v17[3] = &unk_100BDAEE0;
  objc_copyWeak(&v23, &location);
  v10 = v6;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v21 = self;
  v13 = v7;
  v22 = v13;
  [(IDSAccountSync *)self _startRetryForKey:v13 withAction:v17];
  v14 = v22;
  v15 = v11;

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v15;
}

- (void)resetAndResynchronizeEverything
{
  v2 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting and resynchronizing everything...", v8, 2u);
  }

  v3 = +[IDSAccountSync sharedInstance];
  [v3 stopAnyUnfinishedSynchronization];

  v4 = +[IDSAccountSync sharedInstance];
  [v4 noteShouldSynchronizeAllServices];

  v5 = +[IDSAccountSync sharedInstance];
  [v5 noteShouldSynchronizePreferredAccount];

  v6 = +[IDSAccountSync sharedInstance];
  [v6 noteShouldSynchronizeTinkerDeviceInfo];

  v7 = +[IDSAccountSync sharedInstance];
  [v7 noteShouldSynchronizeSPSProvisioningInfo];
}

- (void)noteShouldSynchronizeAllServices
{
  v3 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Note should sync all services", v6, 2u);
  }

  v4 = [(IDSAccountSync *)self serviceController];
  v5 = [v4 allServices];
  [(IDSAccountSync *)self _noteShouldSynchronizeServices:v5];
}

- (void)noteShouldSynchronizePreferredAccount
{
  v3 = [(IDSAccountSync *)self pairingManager];
  v4 = [v3 isPaired];

  if ((v4 & 1) == 0)
  {
    v7 = +[IMRGLog accountSync];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v26 = [(IDSAccountSync *)self pairingManager];
    v27 = [v26 pairedDeviceUniqueID];
    *buf = 138412290;
    v78 = v27;
    v28 = "Not syncing preferred account because device %@ is not paired";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);

    goto LABEL_51;
  }

  v5 = [(IDSAccountSync *)self pairingManager];
  v6 = [v5 activePairedDeviceHasPairingType:0];

  v7 = +[IMRGLog accountSync];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((v6 & 1) == 0)
  {
    if (!v8)
    {
      goto LABEL_51;
    }

    v26 = [(IDSAccountSync *)self pairingManager];
    v27 = [v26 pairedDeviceUniqueID];
    *buf = 138412290;
    v78 = v27;
    v28 = "Not syncing preferred account because device %@ is tinker paired";
    goto LABEL_21;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Note should sync preferred account, Syncing iMessage account now", buf, 2u);
  }

  v9 = IMPreferredAccountMap();
  v7 = [v9 objectForKey:@"iMessage"];

  v10 = [(IDSAccountSync *)self accountController];
  v11 = [v7 objectForKeyedSubscript:@"guid"];
  v12 = [v10 accountWithUniqueID:v11];

  if ([v12 isEnabled] && objc_msgSend(v12, "accountType") != 2 && (objc_msgSend(v12, "accountInfo"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v59 = v7;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = [v12 service];
    v15 = [(IDSAccountSync *)self _constructAccountInfo:v14];

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v68;
      v19 = kIDSServiceDefaultsUniqueIDKey;
LABEL_10:
      v20 = 0;
      while (1)
      {
        if (*v68 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v67 + 1) + 8 * v20);
        v22 = [v21 objectForKeyedSubscript:v19];
        v23 = v12;
        v24 = [v12 uniqueID];
        v25 = [v22 isEqualToString:v24];

        if (v25)
        {
          break;
        }

        v20 = v20 + 1;
        v12 = v23;
        if (v17 == v20)
        {
          v17 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v17)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      v29 = v21;

      v12 = v23;
      if (v29)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_16:
    }

    v29 = [v12 accountInfo];
LABEL_26:
    v74[0] = IDSAccountSyncKeyCommand;
    v74[1] = IDSAccountSyncKeyAccountInfo;
    v75[0] = &off_100C3BF08;
    v75[1] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
    v31 = [(IDSAccountSync *)self _sendAccountSyncMessage:v30 withPersistentKey:@"PreferredAccount"];
    v32 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v12 uniqueID];
      *buf = 138412546;
      v78 = v31;
      v79 = 2112;
      v80 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Syncing preferred account for iMessage {guid: %@, uniqueID: %@}", buf, 0x16u);
    }

    v7 = v59;
  }

  else
  {
    v29 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v78 = "[IDSAccountSync noteShouldSynchronizePreferredAccount]";
      v79 = 2112;
      v80 = v12;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: invalid iMessage account %@", buf, 0x16u);
    }
  }

  v34 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Note should sync preferred account, Syncing FaceTime account now", buf, 2u);
  }

  v35 = IMPreferredAccountMap();
  v36 = [v35 objectForKey:@"FaceTime"];

  v37 = [(IDSAccountSync *)self accountController];
  v38 = [v36 objectForKeyedSubscript:@"guid"];
  v39 = [v37 accountWithUniqueID:v38];

  if ([v39 isEnabled] && objc_msgSend(v39, "accountType") != 2 && (objc_msgSend(v39, "accountInfo"), v40 = objc_claimAutoreleasedReturnValue(), v40, v40))
  {
    v57 = v39;
    v58 = v36;
    obja = v12;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v41 = [v39 service];
    v42 = [(IDSAccountSync *)self _constructAccountInfo:v41];

    v60 = v42;
    v43 = [v42 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v64;
      v46 = kIDSServiceDefaultsUniqueIDKey;
LABEL_36:
      v47 = 0;
      while (1)
      {
        if (*v64 != v45)
        {
          objc_enumerationMutation(v60);
        }

        v48 = *(*(&v63 + 1) + 8 * v47);
        v49 = [v48 objectForKeyedSubscript:v46];
        v50 = [obja uniqueID];
        v51 = [v49 isEqualToString:v50];

        if (v51)
        {
          break;
        }

        if (v44 == ++v47)
        {
          v44 = [v60 countByEnumeratingWithState:&v63 objects:v73 count:16];
          if (v44)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }
      }

      v52 = v48;

      v39 = v57;
      if (v52)
      {
        goto LABEL_47;
      }
    }

    else
    {
LABEL_42:

      v39 = v57;
    }

    v52 = [v39 accountInfo];
LABEL_47:
    v71[0] = IDSAccountSyncKeyCommand;
    v71[1] = IDSAccountSyncKeyAccountInfo;
    v72[0] = &off_100C3BF20;
    v72[1] = v52;
    v53 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
    v54 = [(IDSAccountSync *)self _sendAccountSyncMessage:v53 withPersistentKey:@"PreferredAccount"];
    v55 = +[IMRGLog accountSync];
    v12 = obja;
    v36 = v58;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [v39 uniqueID];
      *buf = 138412546;
      v78 = v54;
      v79 = 2112;
      v80 = v56;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Syncing preferred account for FaceTime {guid: %@, uniqueID: %@}", buf, 0x16u);
    }
  }

  else
  {
    v52 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v78 = "[IDSAccountSync noteShouldSynchronizePreferredAccount]";
      v79 = 2112;
      v80 = v12;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%s: invalid FaceTime account %@", buf, 0x16u);
    }
  }

LABEL_51:
}

- (void)noteShouldFetchRemoteAccountInfoForAllServices
{
  v3 = [(IDSAccountSync *)self pairingManager];
  v4 = [v3 isPaired];

  if (v4)
  {
    v5 = [(IDSAccountSync *)self pairingManager];
    v6 = [v5 activePairedDeviceHasPairingType:0];

    if (v6)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = [(IDSAccountSync *)self serviceController];
      v9 = [v8 allServices];

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            if ([v13 shouldSyncAccounts])
            {
              v14 = [v13 pushTopic];
              [v7 addObject:v14];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      v15 = +[IMRGLog accountSync];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fetching remote account info {servicesToSync: %@}", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1003F8304;
      v21[3] = &unk_100BDAF08;
      objc_copyWeak(&v24, buf);
      v16 = v7;
      v22 = v16;
      v23 = self;
      [(IDSAccountSync *)self _startRetryForKey:@"FetchRemote" withAction:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = +[IMRGLog accountSync];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(IDSAccountSync *)self pairingManager];
        v20 = [v19 pairedDeviceUniqueID];
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not fetching remote account info because device %@ is tinker paired", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(IDSAccountSync *)self pairingManager];
      v18 = [v17 pairedDeviceUniqueID];
      *buf = 138412290;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not fetching remote account info because device %@ is not paired", buf, 0xCu);
    }
  }
}

- (void)noteShouldSynchronizeSPSProvisioningInfo
{
  v3 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Note should sync sps provisioning info", buf, 2u);
  }

  v4 = [(IDSAccountSync *)self pairingManager];
  v5 = [v4 isPaired];

  if (v5)
  {
    v6 = [(IDSAccountSync *)self pairingManager];
    v7 = [v6 activePairedDeviceHasPairingType:0];

    if (v7)
    {
      v8 = +[NSMutableSet set];
      v9 = [(IDSAccountSync *)self _userStore];
      v10 = [v9 usersWithRealm:0];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 phoneNumber];

            if (v17)
            {
              v18 = [v16 phoneNumber];
              [v8 addObject:v18];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
        }

        while (v13);
      }

      v19 = MGCopyAnswer();
      v20 = +[NSMutableDictionary dictionary];
      CFDictionarySetValue(v20, IDSAccountSyncKeyCommand, &off_100C3BF38);
      v21 = [v8 allObjects];
      if (v21)
      {
        CFDictionarySetValue(v20, IDSAccountSyncKeySPSPrimaryPhoneNumbers, v21);
      }

      if (v19)
      {
        CFDictionarySetValue(v20, IDSAccountSyncKeySPSCompanionDeviceUDID, v19);
      }

      v22 = [(IDSAccountSync *)self _sendAccountSyncMessage:v20 withPersistentKey:@"SPSProvisioningData", v26];
      v23 = +[IMRGLog accountSync];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v31 = v22;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Syncing SPS provisioning info {guid: %@ phoneNumbers: %@ deviceUDID: %@}", buf, 0x20u);
      }

      goto LABEL_26;
    }

    v8 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(IDSAccountSync *)self pairingManager];
      v11 = [v24 pairedDeviceUniqueID];
      *buf = 138412290;
      v31 = v11;
      v25 = "Not syncing preferred account because device %@ is tinker paired";
      goto LABEL_25;
    }
  }

  else
  {
    v8 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(IDSAccountSync *)self pairingManager];
      v11 = [v24 pairedDeviceUniqueID];
      *buf = 138412290;
      v31 = v11;
      v25 = "Not syncing preferred account because device %@ is not paired";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);

LABEL_26:
    }
  }
}

- (void)_noteShouldSynchronizeTinkerDeviceInfo
{
  v3 = [(IDSAccountSync *)self pairingManager];
  v4 = [v3 isPaired];

  if ((v4 & 1) == 0)
  {
    v7 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSAccountSync *)self pairingManager];
      v9 = [v8 pairedDeviceUniqueID];
      v11 = 138412290;
      v12 = v9;
      v10 = "Not syncing tinker info because device %@ is not paired";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
    }

LABEL_11:

    return;
  }

  v5 = [(IDSAccountSync *)self pairingManager];
  v6 = [v5 activePairedDeviceHasPairingType:1];

  if ((v6 & 1) == 0)
  {
    v7 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSAccountSync *)self pairingManager];
      v9 = [v8 pairedDeviceUniqueID];
      v11 = 138412290;
      v12 = v9;
      v10 = "Not syncing tinker info because device %@ is not tinker paired";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [(IDSAccountSync *)self _syncTinkerDeviceInfo];
}

- (void)_noteShouldSynchronizeServices:(id)a3
{
  v4 = a3;
  v5 = [(IDSAccountSync *)self pairingManager];
  v6 = [v5 isPaired];

  if ((v6 & 1) == 0)
  {
    v23 = +[IMRGLog accountSync];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v24 = [(IDSAccountSync *)self pairingManager];
    v25 = [v24 pairedDeviceUniqueID];
    *buf = 138412290;
    v37 = v25;
    v26 = "Not syncing services because device %@ is not paired";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);

    goto LABEL_20;
  }

  v7 = [(IDSAccountSync *)self pairingManager];
  v8 = [v7 activePairedDeviceHasPairingType:0];

  if ((v8 & 1) == 0)
  {
    v23 = +[IMRGLog accountSync];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v24 = [(IDSAccountSync *)self pairingManager];
    v25 = [v24 pairedDeviceUniqueID];
    *buf = 138412290;
    v37 = v25;
    v26 = "Not syncing services because device %@ is tinker paired";
    goto LABEL_19;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v27 = v4;
    v11 = *v33;
    v31 = IDSAccountSyncKeyCommand;
    v30 = IDSAccountSyncKeyService;
    v29 = IDSAccountSyncKeyAccountInfo;
    v12 = obj;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v12);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [(IDSAccountSync *)self _constructAccountInfo:v14];
        if (v15)
        {
          v43[0] = &off_100C3BF50;
          v42[0] = v31;
          v42[1] = v30;
          v16 = [v14 identifier];
          v42[2] = v29;
          v43[1] = v16;
          v43[2] = v15;
          v17 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

          v18 = [v14 identifier];
          v19 = [(IDSAccountSync *)self _sendAccountSyncMessage:v17 withPersistentKey:v18];

          v20 = +[IMRGLog accountSync];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v14 identifier];
            v22 = [objc_opt_class() usefulLoggingDescriptionAccountInfos:v15];
            *buf = 138412802;
            v37 = v21;
            v38 = 2112;
            v39 = v19;
            v40 = 2112;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Syncing account changes to paired device {serviceIdentifier : %@, guid: %@, accountInfo : %@}", buf, 0x20u);

            v12 = obj;
          }
        }
      }

      v10 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v10);
    v23 = v12;
    v4 = v27;
  }

  else
  {
    v23 = obj;
  }

LABEL_20:
}

- (id)constructRAResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Constructing RA response dictionary for services: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(IDSAccountSync *)self serviceController];
        v14 = [v13 serviceWithPushTopic:v12];

        v15 = [(IDSAccountSync *)self _constructAccountInfo:v14];
        if (v15)
        {
          CFDictionarySetValue(v6, v12, v15);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_constructAccountInfo:(id)a3
{
  v4 = a3;
  if (![v4 shouldSyncAccounts])
  {
    v10 = 0;
    goto LABEL_59;
  }

  v5 = [(IDSAccountSync *)self pairingManager];
  v6 = [v5 pairedDeviceServiceMinCompatibilityVersion];
  v7 = [v4 accountSyncMinCompatibilityVersion];

  if (v7 <= v6)
  {
    v11 = [v4 identifier];
    v12 = [v11 isEqualToString:@"com.apple.madrid"];

    if (v12)
    {
      v13 = IMPreferredAccountMap();
      v14 = [v13 objectForKey:@"iMessage"];
      v47 = [v14 objectForKey:@"guid"];
    }

    else
    {
      v47 = 0;
    }

    v15 = objc_alloc_init(NSMutableArray);
    v48 = objc_alloc_init(NSMutableArray);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v45 = self;
    v16 = [(IDSAccountSync *)self accountController];
    v46 = v4;
    v17 = [v16 accountsOnService:v4];

    v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v44 = v15;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = *v50;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = *(*(&v49 + 1) + 8 * i);
          if ([v25 isEnabled] && objc_msgSend(v25, "isRegistered") && objc_msgSend(v25, "accountType") != 2)
          {
            if ([v25 accountType])
            {
              v26 = [v25 accountInfo];

              v22 = v26;
            }

            else
            {
              if (v21 || v47 && ([v25 uniqueID], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", v47), v27, !v28))
              {
                [v48 addObject:v25];
              }

              else
              {
                v21 = [v25 accountInfo];
              }

              v20 = 1;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v19);

      v15 = v44;
      v29 = v48;
      if (v21)
      {
LABEL_33:
        v31 = [v21 mutableCopy];
        if (!v22)
        {
          [(IDSAccountSync *)v45 _addPhoneNumbersToAccount:v31 withNonPreferredPhoneAccounts:v29];
        }

        [v15 addObject:v31];

        v32 = 0;
        if (!v22)
        {
          goto LABEL_47;
        }

        goto LABEL_39;
      }
    }

    else
    {

      v22 = 0;
      v20 = 0;
      v29 = v48;
    }

    if ([v29 count])
    {
      v30 = [v29 firstObject];
      v21 = [v30 accountInfo];

      [v29 removeFirstObject];
      if (v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = 0;
    }

    v32 = 1;
    if (!v22)
    {
LABEL_47:
      v4 = v46;
      if ([v46 shouldNotSyncPhoneNumberAccounts] && ((objc_msgSend(v15, "count") == 1) & v20) == 1)
      {
        v40 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v54 = v46;
          v55 = 2112;
          v56 = v15;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Trying to sync only phone number account, but this is disallowed by the service. { service : %@, accountInfo : %@ }", buf, 0x16u);
        }

        [v15 removeAllObjects];
      }

      else if (v20)
      {
        ct_green_tea_logger_create_static();
        v41 = getCTGreenTeaOsLogHandle();
        v42 = v41;
        if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
        }
      }

      v10 = v15;

      v8 = v47;
      goto LABEL_58;
    }

LABEL_39:
    v33 = [v22 mutableCopy];
    [(IDSAccountSync *)v45 _addPhoneNumbersToAccount:v33 withNonPreferredPhoneAccounts:v29];
    if ((v32 & 1) == 0)
    {
      v34 = kIDSServiceDefaultsDisplayNameKey;
      v35 = [v22 objectForKeyedSubscript:kIDSServiceDefaultsDisplayNameKey];
      v36 = [v21 objectForKeyedSubscript:kIDSServiceDefaultsAliasesKey];
      v37 = [v36 __imArrayByApplyingBlock:&stru_100BDAF28];
      v38 = [v37 firstObject];

      if (![v35 length] && objc_msgSend(v38, "length"))
      {
        [v33 setObject:v38 forKey:v34];
        v39 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Setting callerID for Apple ID account to phone number {phoneNumber: %@}", buf, 0xCu);
        }
      }

      v29 = v48;
    }

    [v15 addObject:v33];

    goto LABEL_47;
  }

  v8 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 pushTopic];
    *buf = 138412290;
    v54 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping %@, paired device doesn't support syncing of that service", buf, 0xCu);
  }

  v10 = 0;
LABEL_58:

LABEL_59:

  return v10;
}

- (void)_addPhoneNumbersToAccount:(id)a3 withNonPreferredPhoneAccounts:(id)a4
{
  v5 = a3;
  v6 = [a4 __imArrayByApplyingBlock:&stru_100BDAF68];
  if ([v6 count])
  {
    v21 = kIDSServiceDefaultsAliasesKey;
    v7 = [v5 objectForKey:?];
    v22 = [v7 mutableCopy];

    v20 = kIDSServiceDefaultsVettedAliasesKey;
    v8 = [v5 objectForKey:?];
    v9 = [v8 mutableCopy];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      v14 = kIDSServiceDefaultsAliasKey;
      v15 = kIDSServiceDefaultsAliasStatusKey;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          [v9 addObject:v17];
          v29[0] = v14;
          v29[1] = v15;
          v30[0] = v17;
          v30[1] = &off_100C3BF68;
          v18 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
          [v22 addObject:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v12);
    }

    [v5 setObject:v22 forKey:v21];
    [v5 setObject:v9 forKey:v20];
    v19 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding additional phone numbers to sync {phoneNumbersToAdd: %@}", buf, 0xCu);
    }
  }
}

- (void)_syncTinkerDeviceInfo
{
  v3 = [(IDSAccountSync *)self serviceController];
  v4 = [v3 iCloudService];

  v5 = [(IDSAccountSync *)self accountController];
  v6 = [v5 appleIDAccountOnService:v4];

  v7 = objc_alloc_init(NSMutableSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 prefixedURIStringsFromRegistration];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 _appearsToBeEmail])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = [(IDSAccountSync *)self pushHandler];
  v15 = [v14 pushToken];

  if ([v7 count] && v15)
  {
    v32[0] = &off_100C3BF80;
    v31[0] = IDSAccountSyncKeyCommand;
    v31[1] = IDSAccountSyncKeyiCloudURIs;
    v16 = [v7 allObjects];
    v31[2] = IDSAccountSyncKeyPushToken;
    v32[1] = v16;
    v32[2] = v15;
    v17 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

    v18 = [(IDSAccountSync *)self _sendAccountSyncMessage:v17 withPersistentKey:@"TinkerDeviceInfo"];
    v19 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v26 = v18;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Syncing tinker device info to paired device { guid : %@, uris : %@, pushToken : %@ }", buf, 0x20u);
    }
  }

  else
  {
    v17 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v7 count];
      *buf = 138412546;
      v26 = v15;
      v27 = 2048;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Don't have tinker device info to sync { token : %@, accounts_count : %ld }", buf, 0x16u);
    }
  }
}

- (void)incomingSyncMessage:(id)a3 fromID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:IDSAccountSyncKeyCommand];
  v9 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [IDSLogFormatter descriptionForDictionary:v6 options:5];
    v28 = 138412802;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Incoming account sync message {fromID: %@ command: %@, message: %@}", &v28, 0x20u);
  }

  if (v8)
  {
    v11 = [v8 unsignedIntValue];
    if (v11 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
LABEL_33:
          v14 = +[IMRGLog accountSync];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10091C838();
          }

          goto LABEL_37;
        }

        v15 = [(IDSAccountSync *)self pairingManager];
        v16 = [v15 activePairedDeviceHasPairingType:0];

        if (v16)
        {
          v14 = [v6 objectForKeyedSubscript:IDSAccountSyncKeyAccountInfo];
          v17 = self;
          v18 = v14;
          v19 = 2;
LABEL_20:
          [(IDSAccountSync *)v17 _updatePreferredAccountWithAccountInfo:v18 withAccountSyncCommand:v19];
          goto LABEL_37;
        }

        v14 = +[IMRGLog accountSync];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_37;
        }

LABEL_36:
        sub_10091C7D0();
        goto LABEL_37;
      }

      v25 = [(IDSAccountSync *)self pairingManager];
      v26 = [v25 activePairedDeviceHasPairingType:0];

      if (!v26)
      {
        v14 = +[IMRGLog accountSync];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v14 = [v6 objectForKeyedSubscript:IDSAccountSyncKeyAccountInfo];
      v22 = [v6 objectForKeyedSubscript:IDSAccountSyncKeyService];
      [(IDSAccountSync *)self synchronizeAccountsWithRemoteInfo:v14 service:v22];
LABEL_23:

      goto LABEL_37;
    }

    if (v11 != 3)
    {
      if (v11 != 4)
      {
        if (v11 == 5)
        {
          v12 = [(IDSAccountSync *)self pairingManager];
          v13 = [v12 activePairedDeviceHasPairingType:0];

          if (v13)
          {
            [(IDSAccountSync *)self _updateSPSProvisioningInfo:v6 fromID:v7];
          }

          else
          {
            v27 = +[IMRGLog accountSync];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              sub_10091C79C();
            }
          }
        }

        goto LABEL_33;
      }

      v23 = [(IDSAccountSync *)self pairingManager];
      v24 = [v23 activePairedDeviceHasPairingType:0];

      if (v24)
      {
        v14 = [v6 objectForKeyedSubscript:IDSAccountSyncKeyAccountInfo];
        v17 = self;
        v18 = v14;
        v19 = 4;
        goto LABEL_20;
      }

      v14 = +[IMRGLog accountSync];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v20 = [(IDSAccountSync *)self pairingManager];
    v21 = [v20 activePairedDeviceHasPairingType:1];

    if (v21)
    {
      v14 = [v6 objectForKeyedSubscript:IDSAccountSyncKeyiCloudURIs];
      v22 = [v6 objectForKeyedSubscript:IDSAccountSyncKeyPushToken];
      [(IDSAccountSync *)self _updateTinkerDeviceWithURIs:v14 pushToken:v22];
      goto LABEL_23;
    }

    v14 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10091C804();
    }
  }

  else
  {
    v14 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10091C878();
    }
  }

LABEL_37:
}

- (void)synchronizeAccountsWithRemoteInfo:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSAccountSync *)self accountController];
  v57 = self;
  v9 = [(IDSAccountSync *)self serviceController];
  v10 = [v9 serviceWithPushTopic:v7];
  v11 = [v8 accountsOnService:v10];

  v12 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [IDSAccountSync usefulLoggingDescriptionAccountInfos:v6];
    *buf = 138412546;
    v76 = v7;
    v77 = 2112;
    v78 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Synchronizing accounts {service: %@, accountInfo: %@}", buf, 0x16u);
  }

  if ([v6 count])
  {
    v54 = v6;
    v56 = v7;
    v14 = [v6 __imArrayByApplyingBlock:&stru_100BDAFC8];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v53 = v11;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v64;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v63 + 1) + 8 * i);
          v22 = [v21 loginID];
          v23 = [v22 lowercaseString];
          v24 = [v14 containsObject:v23];

          if ((v24 & 1) == 0)
          {
            if ([v21 accountType] == 1 && (objc_msgSend(v21, "service"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "iCloudBasedService"), v25, v26))
            {
              v27 = +[IMRGLog accountSync];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v76 = v21;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "This is an AppleID account on an iCloud based service, not removing account %@", buf, 0xCu);
              }
            }

            else
            {
              v28 = +[IMRGLog accountSync];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v21 smallDescription];
                *buf = 138412290;
                v76 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Removing account %@", buf, 0xCu);
              }

              v27 = [(IDSAccountSync *)v57 accountController];
              [v27 removeAccount:v21];
              v18 = 1;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v6 = v54;
    [(IDSAccountSync *)v57 _registerAccountsWithRemoteInfo:v54];
    v7 = v56;
    if (![v56 isEqualToIgnoringCase:@"com.apple.madrid"] || (v18 & 1) == 0)
    {
      goto LABEL_55;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v42 = [(IDSAccountSync *)v57 serviceController];
    v43 = [v42 allServices];

    v44 = [v43 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v60;
      do
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v59 + 1) + 8 * j);
          if (([v48 useiMessageCallerID] & 1) == 0)
          {
            v49 = [v48 pushTopic];
            v50 = [v49 isEqualToIgnoringCase:@"com.apple.madrid"];

            if (!v50)
            {
              continue;
            }
          }

          memset(v58, 0, sizeof(v58));
          v51 = [(IDSAccountSync *)v57 accountController];
          v52 = [v51 accountsOnService:v48 withType:1];

          if ([v52 countByEnumeratingWithState:v58 objects:v71 count:16])
          {
            [**(&v58[0] + 1) clearDisplayName];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v45);
    }

LABEL_54:
    v7 = v56;
LABEL_55:
    v11 = v53;
    goto LABEL_56;
  }

  v30 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No accounts, disabling all", buf, 2u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v14 = v11;
  v31 = [v14 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v31)
  {
    v32 = v31;
    v53 = v11;
    v55 = v6;
    v56 = v7;
    v33 = *v68;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v68 != v33)
        {
          objc_enumerationMutation(v14);
        }

        v35 = *(*(&v67 + 1) + 8 * k);
        if ([v35 accountType] == 1 && (objc_msgSend(v35, "service"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "iCloudBasedService"), v36, v37))
        {
          v38 = +[IMRGLog accountSync];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v76 = v35;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "This is an AppleID account on an iCloud based service, not disabling account %@", buf, 0xCu);
          }
        }

        else
        {
          v39 = +[IMRGLog accountSync];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v35 smallDescription];
            *buf = 138412290;
            v76 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Disabling account %@", buf, 0xCu);
          }

          v38 = [(IDSAccountSync *)v57 accountController];
          v41 = [v35 uniqueID];
          [v38 disableAccountWithUniqueID:v41];
        }
      }

      v32 = [v14 countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v32);
    v6 = v55;
    goto LABEL_54;
  }

LABEL_56:
}

- (void)noteUnpairedTraditionalDeviceWithID:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling traditional device unpair with deviceID: %@", &v7, 0xCu);
  }

  v6 = [(IDSAccountSync *)self _stewieCoordinator];
  [v6 handleCompanionDeviceUnpairWithDeviceID:v4];
}

- (void)_updateSPSProvisioningInfo:(id)a3 fromID:(id)a4
{
  v6 = IDSAccountSyncKeySPSPrimaryPhoneNumbers;
  v7 = a4;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 __imArrayByApplyingBlock:&stru_100BDAFE8];
  v11 = [v7 _stripFZIDPrefix];

  v12 = [v8 objectForKeyedSubscript:IDSAccountSyncKeySPSCompanionDeviceUDID];

  v13 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Incoming sps provisioning info { phoneNumberURIs: %@ deviceID: %@ deviceUDID: %@ }", &v15, 0x20u);
  }

  v14 = [(IDSAccountSync *)self _stewieCoordinator];
  [v14 handleCompanionDeviceSyncWithPhoneNumbers:v10 deviceID:v11 deviceUDID:v12];
}

- (void)_registerAccountsWithRemoteInfo:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v39 = +[IMRGLog accountSync];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No accounts in account info, ignoring...", buf, 2u);
    }

    goto LABEL_71;
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v4;
  v103 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (!v103)
  {
    v39 = 0;
    v5 = 0;
    goto LABEL_69;
  }

  v89 = v4;
  v5 = 0;
  v94 = 0;
  v101 = *v111;
  v6 = kIDSServiceDefaultsAccountTypeKey;
  v7 = kIDSServiceDefaultsRegistrationInfoKey;
  v99 = kIDSServiceDefaultsRegistrationInfoStatusKey;
  v92 = kIDSServiceDefaultsLoginAsKey;
  v96 = kIDSServiceDefaultsHasEverRegistered;
  v95 = kIDSServiceDefaultsUniqueIDKey;
  v91 = kIDSServiceDefaultsAliasesKey;
  v90 = kIDSServiceDefaultsServiceNameKey;
  v93 = self;
  do
  {
    for (i = 0; i != v103; i = i + 1)
    {
      if (*v111 != v101)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v110 + 1) + 8 * i);
      v10 = [v9 objectForKeyedSubscript:v6];
      v11 = [v10 intValue];

      v12 = [v9 objectForKeyedSubscript:v7];
      v13 = [v12 objectForKeyedSubscript:v99];
      v14 = [v13 intValue];

      if (v14 == 5)
      {
        v15 = [v9 mutableCopy];
        [v15 removeObjectForKey:v6];
        [v15 removeObjectForKey:v96];
        [v15 removeObjectForKey:v7];
        [v15 removeObjectForKey:v95];
        if (v11)
        {
          if (v11 != 1)
          {
            goto LABEL_32;
          }

          v16 = v94;
          v17 = v5;
          v94 = v15;
        }

        else
        {
          v19 = +[IMRGLog accountSync];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = objc_opt_class();
            v122 = v15;
            v21 = [NSArray arrayWithObjects:&v122 count:1];
            v22 = [v20 usefulLoggingDescriptionAccountInfos:v21];
            *buf = 138412290;
            v119 = v22;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found valid phone number account %@", buf, 0xCu);
          }

          v23 = [v15 objectForKeyedSubscript:v91];
          v24 = [v23 __imArrayByApplyingBlock:&stru_100BDB008];
          v17 = [v24 firstObject];

          v25 = +[IMRGLog accountSync];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v119 = v17;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Retrieved phone number alias %@", buf, 0xCu);
          }

          v16 = [v15 objectForKeyedSubscript:v90];
          v26 = [(IDSAccountSync *)self serviceController];
          v27 = [v26 serviceWithIdentifier:v16];

          if (v27 && ![v27 shouldNotSyncPhoneNumberAccounts])
          {
            v31 = [(IDSAccountSync *)self accountController];
            v32 = [v31 existingAccountOnService:v27 withType:2 loginID:0];

            if (!v32)
            {
              v33 = +[IMRGLog accountSync];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Didn't find a local account, setting one up", buf, 2u);
              }

              v34 = [(IDSAccountSync *)self accountController];
              [v34 setupLocalAccountForService:v27];

              v35 = [(IDSAccountSync *)self accountController];
              v32 = [v35 localAccountOnService:v27];
            }

            v36 = [(IDSAccountSync *)self accountController];
            v37 = [v32 uniqueID];
            [v36 enablePrimaryAccountWithUniqueID:v37];

            v38 = +[IMRGLog accountSync];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v119 = v32;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updating local account {localAccount: %@}", buf, 0xCu);
            }

            [v32 _updateAccountWithAccountInfo:v15];
            self = v93;
          }

          else
          {
            v28 = +[IMRGLog accountSync];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v27 shouldNotSyncPhoneNumberAccounts];
              *buf = 138412546;
              v30 = @"NO";
              if (v29)
              {
                v30 = @"YES";
              }

              v119 = v16;
              v120 = 2112;
              v121 = v30;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Can't find eligible service, bailing { serviceName : %@, shouldNotSyncPhoneNumberAccounts: %@ }", buf, 0x16u);
            }
          }
        }

        v5 = v17;
      }

      else
      {
        v15 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v9 objectForKey:v92];
          *buf = 138412290;
          v119 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Account info for %@ is not registered, ignoring...", buf, 0xCu);

          self = v93;
        }
      }

LABEL_32:
    }

    v103 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
  }

  while (v103);

  v39 = v94;
  if (v94)
  {
    v40 = [v94 objectForKeyedSubscript:v90];
    v41 = [(IDSAccountSync *)self serviceController];
    obj = v40;
    v42 = [v41 serviceWithIdentifier:v40];

    LODWORD(v41) = [v42 iCloudBasedService];
    v43 = +[IMRGLog accountSync];
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    v4 = v89;
    if (v41)
    {
      if (v44)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "This is an iCloud based service, ignoring Apple ID account", buf, 2u);
      }
    }

    else
    {
      v104 = v42;
      if (v44)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found valid apple ID account, cleaning up sentinel alias", buf, 2u);
      }

      v45 = [v94 objectForKeyedSubscript:v91];
      v46 = [v45 __imArrayByFilteringWithBlock:&stru_100BDB048];
      v43 = [v46 mutableCopy];

      v47 = kIDSServiceDefaultsVettedAliasesKey;
      v48 = [v94 objectForKeyedSubscript:kIDSServiceDefaultsVettedAliasesKey];
      v49 = [v48 __imArrayByFilteringWithBlock:&stru_100BDB068];
      v50 = [v49 mutableCopy];

      if (v5)
      {
        v116[0] = kIDSServiceDefaultsAliasKey;
        v116[1] = kIDSServiceDefaultsAliasStatusKey;
        v117[0] = v5;
        v117[1] = &off_100C3BF68;
        v51 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:2];
        [v43 addObject:v51];

        [v50 addObject:v5];
      }

      [v94 setObject:v43 forKeyedSubscript:v91];
      [v94 setObject:v50 forKeyedSubscript:v47];
      v52 = +[IMRGLog accountSync];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = objc_opt_class();
        v115 = v94;
        v54 = [NSArray arrayWithObjects:&v115 count:1];
        v55 = [v53 usefulLoggingDescriptionAccountInfos:v54];
        *buf = 138412290;
        v119 = v55;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Found valid Apple ID account, creating real account with remote info %@", buf, 0xCu);
      }

      v56 = [v94 objectForKey:v92];
      v57 = [(IDSAccountSync *)v93 accountController];
      v58 = [v57 accountWithServiceName:obj loginID:v56];

      if (v58)
      {
        v59 = +[IMRGLog accountSync];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v119 = obj;
          v120 = 2112;
          v121 = v56;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Found existing account for service %@ and loginID %@", buf, 0x16u);
        }

        [(IDSDAccount *)v58 _updateAccountWithAccountInfo:v94];
      }

      else
      {
        v102 = v50;
        v60 = [IDSDAccount alloc];
        v61 = +[NSString stringGUID];
        v62 = v56;
        v58 = [(IDSDAccount *)v60 initWithLoginID:v56 service:v104 uniqueID:v61 accountType:1 accountConfig:v94];

        v63 = [(IDSAccountSync *)v93 accountController];
        [v63 addPrimaryAccount:v58];

        v64 = [(IDSAccountSync *)v93 accountController];
        v65 = [(IDSDAccount *)v58 uniqueID];
        [v64 enablePrimaryAccountWithUniqueID:v65];

        v66 = [(IDSDAccount *)v58 linkedAccounts];
        v67 = [v66 count];

        if (v67)
        {
          v50 = v102;
        }

        else
        {
          v100 = v43;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v68 = +[IDSDServiceController sharedInstance];
          v97 = v58;
          v69 = [(IDSDAccount *)v58 service];
          v70 = [v68 linkedServicesForService:v69];

          v71 = [v70 countByEnumeratingWithState:&v106 objects:v114 count:16];
          p_cache = &OBJC_METACLASS___IDSRegistrationReasonTracker.cache;
          if (v71)
          {
            v73 = v71;
            v74 = *v107;
            do
            {
              for (j = 0; j != v73; j = j + 1)
              {
                if (*v107 != v74)
                {
                  objc_enumerationMutation(v70);
                }

                v76 = *(*(&v106 + 1) + 8 * j);
                v77 = p_cache;
                v78 = objc_alloc((p_cache + 213));
                v79 = +[NSString stringGUID];
                v80 = [v78 initWithLoginID:v62 service:v76 uniqueID:v79 accountType:1 accountConfig:v94];

                v81 = +[IMRGLog accountSync];
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v119 = v80;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "  Creating a linked account: %@", buf, 0xCu);
                }

                v82 = [(IDSAccountSync *)v93 accountController];
                [v82 addPrimaryAccount:v80];

                v83 = [(IDSAccountSync *)v93 accountController];
                v84 = [v80 uniqueID];
                [v83 enablePrimaryAccountWithUniqueID:v84];

                p_cache = v77;
              }

              v73 = [v70 countByEnumeratingWithState:&v106 objects:v114 count:16];
            }

            while (v73);
          }

          v4 = v89;
          v39 = v94;
          v43 = v100;
          v50 = v102;
          v58 = v97;
        }

        v56 = v62;
      }

      v85 = [(IDSAccountSync *)v93 accountController];
      v86 = [(IDSDAccount *)v58 uniqueID];
      [v85 enablePrimaryAccountWithUniqueID:v86];

      v87 = [(IDSDAccount *)v58 linkedAccounts];
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_1003FBA14;
      v105[3] = &unk_100BDB090;
      v105[4] = v93;
      [v87 __imForEach:v105];

      if (![(IDSDAccount *)v58 isRegistered])
      {
        [(IDSDAccount *)v58 registerAccount];
        v88 = [(IDSDAccount *)v58 linkedAccounts];
        [v88 __imForEach:&stru_100BDB0D0];
      }

      v42 = v104;
    }

LABEL_69:
  }

  else
  {
    v4 = v89;
  }

LABEL_71:
}

- (void)_updatePreferredAccountWithAccountInfo:(id)a3 withAccountSyncCommand:(unsigned int)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:kIDSServiceDefaultsDisplayNameKey];
  v52 = kIDSServiceDefaultsAccountTypeKey;
  v53 = v6;
  v8 = [v6 objectForKeyedSubscript:?];
  v54 = [v8 intValue];

  v9 = &uuid_unparse_upper_ptr;
  v10 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v76 = v53;
    v11 = [NSArray arrayWithObjects:&v76 count:1];
    v12 = [IDSAccountSync usefulLoggingDescriptionAccountInfos:v11];
    *buf = 138412546;
    v78 = v7;
    v79 = 2112;
    v80 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Incoming preferred account update {incomingDisplayName: %@, incomingAccountInfo: %@}", buf, 0x16u);
  }

  if ([v7 length])
  {
    v55 = self;
    if (a4 == 4)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v34 = [(IDSAccountSync *)self serviceController];
      v14 = [v34 allServices];

      v35 = [v14 countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v61;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v61 != v37)
            {
              objc_enumerationMutation(v14);
            }

            v39 = *(*(&v60 + 1) + 8 * i);
            if ([v39 useFaceTimeCallerID])
            {
              v40 = [v9[504] accountSync];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = [v39 serviceName];
                *buf = 138412290;
                v78 = v41;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Service: %@ wants to use the FaceTime CallerID, attempting to update it", buf, 0xCu);
              }

              v42 = [(IDSAccountSync *)self accountController];
              v43 = [v42 accountsOnService:v39 withType:1];

              if ([v43 count])
              {
                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                v44 = v43;
                v45 = [v44 countByEnumeratingWithState:&v56 objects:v72 count:16];
                if (v45)
                {
                  v46 = v45;
                  v47 = *v57;
                  do
                  {
                    for (j = 0; j != v46; j = j + 1)
                    {
                      if (*v57 != v47)
                      {
                        objc_enumerationMutation(v44);
                      }

                      [*(*(&v56 + 1) + 8 * j) setDisplayName:v7];
                    }

                    v46 = [v44 countByEnumeratingWithState:&v56 objects:v72 count:16];
                  }

                  while (v46);
                }

                self = v55;
                v9 = &uuid_unparse_upper_ptr;
              }
            }
          }

          v36 = [v14 countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v36);
      }

LABEL_53:
    }

    else if (a4 == 2)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v13 = [(IDSAccountSync *)self serviceController];
      v14 = [v13 allServices];

      v15 = [v14 countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (!v15)
      {
        goto LABEL_53;
      }

      v16 = v15;
      v17 = *v69;
      v51 = kIDSServiceDefaultsHasEverRegistered;
      v50 = kIDSServiceDefaultsRegistrationInfoKey;
      v49 = kIDSServiceDefaultsUniqueIDKey;
      while (1)
      {
        v18 = 0;
        do
        {
          if (*v69 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v68 + 1) + 8 * v18);
          if (([v19 useiMessageCallerID] & 1) != 0 || (objc_msgSend(v19, "pushTopic"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToIgnoringCase:", @"com.apple.madrid"), v20, v21))
          {
            v22 = [v9[504] accountSync];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v19 serviceName];
              *buf = 138412290;
              v78 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Service: %@ also wants to use the iMessage CallerID, attempting to update it", buf, 0xCu);
            }

            v24 = [(IDSAccountSync *)self accountController];
            v25 = [v24 accountsOnService:v19 withType:1];

            if ([v25 count])
            {
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v26 = v25;
              v27 = [v26 countByEnumeratingWithState:&v64 objects:v74 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v65;
                do
                {
                  for (k = 0; k != v28; k = k + 1)
                  {
                    if (*v65 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    [*(*(&v64 + 1) + 8 * k) setDisplayName:v7];
                  }

                  v28 = [v26 countByEnumeratingWithState:&v64 objects:v74 count:16];
                }

                while (v28);
                self = v55;
                v9 = &uuid_unparse_upper_ptr;
              }

LABEL_24:
            }

            else if (!v54 && ([v19 shouldNotSyncPhoneNumberAccounts] & 1) == 0)
            {
              v31 = [(IDSAccountSync *)self accountController];
              v26 = [v31 localAccountOnService:v19];

              v32 = [v53 mutableCopy];
              [v32 removeObjectForKey:v52];
              [v32 removeObjectForKey:v51];
              [v32 removeObjectForKey:v50];
              [v32 removeObjectForKey:v49];
              [v26 _updateAccountWithAccountInfo:v32];

              goto LABEL_24;
            }
          }

          v18 = v18 + 1;
        }

        while (v18 != v16);
        v33 = [v14 countByEnumeratingWithState:&v68 objects:v75 count:16];
        v16 = v33;
        if (!v33)
        {
          goto LABEL_53;
        }
      }
    }
  }
}

- (void)_updateTinkerDeviceWithURIs:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming tinker device info { uris: %@, pushToken: %@ }", &v10, 0x16u);
  }

  v9 = [(IDSAccountSync *)self pairingManager];
  [v9 updatePairedDeviceiCloudURIs:v6 pushToken:v7];
}

+ (id)usefulLoggingDescriptionAccountInfos:(id)a3
{
  v10[0] = kIDSServiceDefaultsAccountTypeKey;
  v10[1] = kIDSServiceDefaultsVettedAliasesKey;
  v10[2] = kIDSServiceDefaultsAliasesKey;
  v10[3] = kIDSServiceDefaultsLoginAsKey;
  v10[4] = kIDSServiceDefaultsRegistrationInfoKey;
  v3 = a3;
  [NSArray arrayWithObjects:v10 count:5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003FC358;
  v9 = v8[3] = &unk_100BDB120;
  v4 = v9;
  v5 = [v3 __imArrayByApplyingBlock:v8];

  v6 = [IDSLogFormatter descriptionForArray:v5 options:0];

  return v6;
}

- (id)_registrationConductor
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 registrationConductor];

  return v3;
}

- (id)_stewieCoordinator
{
  v2 = [(IDSAccountSync *)self _registrationConductor];
  v3 = [v2 stewieCoordinator];

  return v3;
}

- (id)_userStore
{
  v2 = [(IDSAccountSync *)self _registrationConductor];
  v3 = [v2 userStore];

  return v3;
}

@end