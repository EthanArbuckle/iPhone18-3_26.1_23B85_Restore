@interface IDSDAccountController
+ (BOOL)isDefaultPairedDeviceFromID:(id)a3 accountUniqueID:(id)a4 serviceName:(id)a5;
+ (IDSDAccountController)sharedInstance;
- (BOOL)_isAccountInfoRegistered:(id)a3;
- (BOOL)_loadAndEnableStoredAccounts;
- (BOOL)hasActiveSMSAccount;
- (BOOL)hasForcedReRegistered;
- (BOOL)hasiCloudAccount;
- (BOOL)isEnabledAccount:(id)a3;
- (BOOL)isLocalSetupEnabled;
- (BOOL)isTraditionalLocalSetupEnabled;
- (BOOL)isiCloudHSA2;
- (BOOL)isiCloudSignedIn;
- (BOOL)isiTunesSignedIn;
- (IDSDAccountController)init;
- (IDSDAccountController)initWithServiceController:(id)a3 registrationController:(id)a4 systemAccountAdapter:(id)a5 deviceSupport:(id)a6;
- (NSArray)accounts;
- (NSSet)enabledAccounts;
- (id)_createAccountWithDictionary:(id)a3 service:(id)a4 uniqueID:(id)a5;
- (id)_inUseProfileIDs;
- (id)_inUseUsernames;
- (id)_legacyAccountsOnService:(id)a3;
- (id)_preferencesOnDomain:(id)a3;
- (id)_strippedAccountInfo:(id)a3;
- (id)accountOnService:(id)a3 withAliasURI:(id)a4;
- (id)accountOnService:(id)a3 withLoginID:(id)a4;
- (id)accountOnService:(id)a3 withVettedAliasURI:(id)a4;
- (id)accountUniqueIDsWithType:(int)a3;
- (id)accountWithServiceName:(id)a3 aliasURI:(id)a4;
- (id)accountWithServiceName:(id)a3 loginID:(id)a4;
- (id)accountWithServiceName:(id)a3 myID:(id)a4;
- (id)accountWithUniqueID:(id)a3;
- (id)accountsOfAdHocType:(unsigned int)a3;
- (id)accountsOnService:(id)a3;
- (id)accountsOnService:(id)a3 withType:(int)a4;
- (id)accountsWithType:(int)a3;
- (id)appleIDAccountOnService:(id)a3;
- (id)cloudPairedIDForDeviceID:(id)a3;
- (id)deviceCertificateForService:(id)a3 uri:(id)a4;
- (id)deviceIDForPushToken:(id)a3;
- (id)deviceNameForDeviceID:(id)a3;
- (id)enabledAccountsOnService:(id)a3;
- (id)existingAccountOnService:(id)a3 withType:(int)a4 loginID:(id)a5;
- (id)localAccountOnService:(id)a3;
- (id)primaryAccountForAdHocAccount:(id)a3;
- (id)propertiesForDeviceWithUniqueID:(id)a3;
- (id)publicKeyForDeviceID:(id)a3;
- (id)pushTokenForDeviceID:(id)a3;
- (id)registeredAccountsOnService:(id)a3;
- (id)registeredDevicesOnService:(id)a3;
- (id)registeredDevicesOnService:(id)a3 withLinkedURI:(id)a4;
- (id)registeredLocalURIsOnService:(id)a3;
- (id)threadSafeServiceWithAccountUniqueID:(id)a3;
- (void)_addAccount:(id)a3;
- (void)_addAccountDuringInitialSetup:(id)a3;
- (void)_attachOrphanedPhoneAliases:(id)a3 toRecipientAccounts:(id)a4 withAccountsToEnable:(id)a5;
- (void)_cleanUpAccountCredentialForRemovedAccount:(id)a3;
- (void)_cleanUpAccountCredentialStore;
- (void)_cleanupLegacyAccounts;
- (void)_cleanupLegacyLocalAccounts;
- (void)_cleanupLocalAccounts;
- (void)_disableAccountWithUniqueID:(id)a3;
- (void)_disablePrimaryAccountWithUniqueID:(id)a3 userAction:(BOOL)a4;
- (void)_enableAccountWithUniqueID:(id)a3;
- (void)_forceDisableAccountWithUniqueID:(id)a3;
- (void)_forceDisablePrimaryAccountWithUniqueID:(id)a3;
- (void)_kickRemoteCacheWipe;
- (void)_loadAndEnableStoredLegacyAccounts;
- (void)_migrateLegacyAccounts;
- (void)_migrateLegacyAccounts1;
- (void)_migrateLegacyAccounts2;
- (void)_persistAccounts:(id)a3;
- (void)_refreshLocalAccounts;
- (void)_registerForAllRegistrationsSucceeded;
- (void)_registerSysdiagnoseBlock;
- (void)_removeAccount:(id)a3;
- (void)_removePrimaryAccount:(id)a3;
- (void)_resumeGDRReAuthenticateIfNecessary;
- (void)_servicesChanged;
- (void)_servicesRemoved:(id)a3;
- (void)_setupAdHocAccounts;
- (void)_setupAdHocAccountsForPrimaryAccount:(id)a3;
- (void)_setupForLocal;
- (void)_setupLinkedAccounts;
- (void)_setupLocalAccounts;
- (void)_storeAccounts;
- (void)_updateDeviceProperties;
- (void)addAccount:(id)a3;
- (void)addPrimaryAccount:(id)a3;
- (void)authKitAccountUpdate:(id)a3;
- (void)dealloc;
- (void)delayedSaveSettings;
- (void)deliveryController:(id)a3 uniqueID:(id)a4 isCloudConnected:(BOOL)a5;
- (void)deliveryController:(id)a3 uniqueID:(id)a4 isConnected:(BOOL)a5;
- (void)deliveryController:(id)a3 uniqueID:(id)a4 isNearby:(BOOL)a5;
- (void)disableAccountWithUniqueID:(id)a3;
- (void)enableAccountWithUniqueID:(id)a3;
- (void)enablePrimaryAccountWithUniqueID:(id)a3;
- (void)forceDisableAccountWithUniqueID:(id)a3;
- (void)forceRemoveAccount:(id)a3;
- (void)hardDeregister;
- (void)issueDependentIDQueriesWithCompletionBlock:(id)a3;
- (void)issueGetDependentAndGetHandlesRequest;
- (void)issueGetDependentRequest;
- (void)issueGetDependentRequestForAccount:(id)a3;
- (void)loadDeviceProperties;
- (void)loadStoredAccounts;
- (void)removeAccount:(id)a3;
- (void)saveDevicePropertiesWithOldKeys:(id)a3;
- (void)setNSUUID:(id)a3 onDeviceWithUniqueID:(id)a4;
- (void)setupLocalAccountForService:(id)a3;
- (void)startLocalSetup;
- (void)stopLocalSetup;
- (void)triggerFinalDeregister;
- (void)updateDevicePropertiesWithDevices:(id)a3;
- (void)updateExpiredDependent;
@end

@implementation IDSDAccountController

+ (IDSDAccountController)sharedInstance
{
  if (qword_100CBD3F8 != -1)
  {
    sub_100019E48();
  }

  v3 = qword_100CBD400;

  return v3;
}

- (NSArray)accounts
{
  [(IDSDAccountController *)self loadStoredAccounts];
  accountIDMap = self->_accountIDMap;

  return [(NSMutableDictionary *)accountIDMap allValues];
}

- (void)loadStoredAccounts
{
  if (!self->_accountsLoaded)
  {
    *&self->_accountsLoaded = 257;
    [(IDSDAccountController *)self _migrateLegacyAccounts];
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[IDSDAccountController loadStoredAccounts]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v9 = "[IDSDAccountController loadStoredAccounts]";
      _IDSLogV();
    }

    [(NSMutableSet *)self->_enabledAccounts removeAllObjects];
    if (![(IDSDAccountController *)self _loadAndEnableStoredAccounts])
    {
      [(IDSDAccountController *)self _loadAndEnableStoredLegacyAccounts];
    }

    self->_isLoading = 0;
    [(IDSDAccountController *)self _cleanupLegacyAccounts];
    [(IDSDAccountController *)self _cleanupLegacyLocalAccounts];
    [(IDSDAccountController *)self _setupLinkedAccounts];
    v4 = [(IDSDAccountController *)self isLocalSetupEnabled];
    v5 = +[IMRGLog registration];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting up local", buf, 2u);
      }

      [(IDSDAccountController *)self startLocalSetup];
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not setting up local", buf, 2u);
      }

      [(IDSDAccountController *)self _cleanupLocalAccounts];
      [(IDSDAccountController *)self _setupAdHocAccounts];
      v7 = [(IDSDAccountController *)self daemon];
      [v7 updateTopics];
    }

    [(IDSDAccountController *)self _cleanUpAccountCredentialStore];
    [(IDSDAccountController *)self _resumeGDRReAuthenticateIfNecessary];
    v8 = [(IDSDAccountController *)self delegate];
    [v8 accountControllerDidFinishLoadingAccounts:self];
  }
}

- (void)delayedSaveSettings
{
  v3 = objc_autoreleasePoolPush();
  [(CUTDeferredTaskQueue *)self->_storeAccountTask cancelPendingExecutions];
  [(CUTDeferredTaskQueue *)self->_storeAccountTask enqueueExecutionWithTarget:self afterDelay:5.0];

  objc_autoreleasePoolPop(v3);
}

+ (BOOL)isDefaultPairedDeviceFromID:(id)a3 accountUniqueID:(id)a4 serviceName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isEqualToIgnoringCase:IDSDefaultPairedDevice])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found default paired ID", buf, 2u);
    }

    DLCSessionLogWithLevel();
    v11 = 1;
  }

  else
  {
    v30 = 0;
    v12 = [v7 _stripPotentialTokenURIWithToken:&v30];
    v13 = v30;
    if ([v7 hasPrefix:@"device:"])
    {
      v14 = [v7 _stripFZIDPrefix];
    }

    else
    {
      v14 = 0;
    }

    if ([v13 length] || objc_msgSend(v14, "length"))
    {
      v15 = +[IDSDAccountController sharedInstance];
      v16 = [v15 accountWithUniqueID:v8];

      if (v16)
      {
        v17 = [v16 defaultPairedDependentRegistration];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 objectForKey:IDSDevicePropertyPushToken];
          v20 = v19;
          if (v19 && [v19 isEqualToData:v13])
          {
            v21 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "This is the default paired device", buf, 2u);
            }

            DLCSessionLogWithLevel();
            v11 = 1;
          }

          else
          {
            v23 = [v18 objectForKey:IDSDevicePropertyIdentifierOverride];
            if ([v14 length] && objc_msgSend(v14, "isEqualToIgnoringCase:", v23))
            {
              v24 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "This is the default paired device", buf, 2u);
              }

              v11 = 1;
            }

            else
            {
              v27 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "This is not the default paired device", buf, 2u);
              }

              v11 = 0;
            }

            DLCSessionLogWithLevel();
          }
        }

        else
        {
          v25 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v16 smallDescription];
            *buf = 138412290;
            v32 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Did not find a default paired device on this account %@", buf, 0xCu);
          }

          v20 = [v16 smallDescription];
          DLCSessionLogWithLevel();
          v11 = 0;
        }
      }

      else
      {
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Did not find an account with that ID", buf, 2u);
        }

        DLCSessionLogWithLevel();
        v11 = 0;
      }
    }

    else
    {
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Did not find fromToken or FromDeviceUniqueID in %@", buf, 0xCu);
      }

      DLCSessionLogWithLevel();
      v11 = 0;
    }
  }

  return v11;
}

- (IDSDAccountController)initWithServiceController:(id)a3 registrationController:(id)a4 systemAccountAdapter:(id)a5 deviceSupport:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v33.receiver = self;
  v33.super_class = IDSDAccountController;
  v15 = [(IDSDAccountController *)&v33 init];
  if (v15)
  {
    v16 = +[IMSystemMonitor sharedInstance];
    [v16 addListener:v15];

    if (!v15->_enabledAccounts)
    {
      v17 = objc_alloc_init(NSMutableSet);
      enabledAccounts = v15->_enabledAccounts;
      v15->_enabledAccounts = v17;
    }

    if (!v15->_accountIDMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      accountIDMap = v15->_accountIDMap;
      v15->_accountIDMap = Mutable;
    }

    v15->_accountsLoaded = 0;
    v21 = objc_alloc_init(NSRecursiveLock);
    accountIDMapLock = v15->_accountIDMapLock;
    v15->_accountIDMapLock = v21;

    v23 = +[IDSUTunDeliveryController sharedInstance];
    [v23 addConnectivityDelegate:v15];

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("ids_authkit", v24);
    authkitQueue = v15->_authkitQueue;
    v15->_authkitQueue = v25;

    objc_storeStrong(&v15->_serviceController, a3);
    objc_storeStrong(&v15->_registrationController, a4);
    objc_storeStrong(&v15->_systemAccountAdapter, a5);
    objc_storeStrong(&v15->_deviceSupport, a6);
    v27 = [CUTDeferredTaskQueue alloc];
    v28 = im_primary_queue();
    v29 = [v27 initWithCapacity:1 queue:v28 block:&stru_100BDCE40];
    storeAccountTask = v15->_storeAccountTask;
    v15->_storeAccountTask = v29;

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v15 selector:"_servicesRemoved:" name:@"_kIDSDServiceControllerServicesRemovedNotification" object:0];
    [v31 addObserver:v15 selector:"_servicesChanged" name:@"_kIDSDServiceControllerServicesChangedNotification" object:0];
    [(IDSDAccountController *)v15 _registerSysdiagnoseBlock];
    [(IDSDAccountController *)v15 _registerForAllRegistrationsSucceeded];
    [(IDSDAccountController *)v15 loadDeviceProperties];
  }

  return v15;
}

- (void)_registerSysdiagnoseBlock
{
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v3 = +[IDSDiagnosticInfoHandler sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10045C634;
    v8[3] = &unk_100BDAB58;
    v4 = &v9;
    objc_copyWeak(&v9, &location);
    v5 = im_primary_queue();
    [v3 registerDiagnosticInfoBlock:v8 title:@"IDS-List" queue:v5];
  }

  else
  {
    v3 = im_primary_queue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10045D2EC;
    v6[3] = &unk_100BDAB80;
    v4 = &v7;
    objc_copyWeak(&v7, &location);
    [(IDSDAccountController *)self _registerStateToSysdiagnoseWithLogTitle:@"IDS-List" queue:v3 block:v6];
  }

  objc_destroyWeak(v4);
  objc_destroyWeak(&location);
}

- (IDSDAccountController)init
{
  v3 = +[IDSDServiceController sharedInstance];
  v4 = +[IDSRegistrationController sharedInstance];
  v5 = [IDSSystemAccountAdapter alloc];
  v6 = im_primary_queue();
  v7 = [(IDSSystemAccountAdapter *)v5 initWithQueue:v6];
  v8 = +[FTDeviceSupport sharedInstance];
  v9 = [(IDSDAccountController *)self initWithServiceController:v3 registrationController:v4 systemAccountAdapter:v7 deviceSupport:v8];

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[IMSystemMonitor sharedInstance];
  [v4 removeListener:self];

  v5 = +[IDSUTunDeliveryController sharedInstance];
  [v5 removeConnectivityDelegate:self];

  [(IDSDAccountController *)self _storeAccounts];
  v6.receiver = self;
  v6.super_class = IDSDAccountController;
  [(IDSDAccountController *)&v6 dealloc];
}

- (NSSet)enabledAccounts
{
  [(IDSDAccountController *)self loadStoredAccounts];
  enabledAccounts = self->_enabledAccounts;

  return enabledAccounts;
}

- (void)hardDeregister
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Hard deregister requested", v4, 2u);
  }

  v3 = +[IDSRegistrationCenter sharedInstance];
  [v3 sendHardDeregisterCompletionBlock:&stru_100BDCEA0];
}

- (void)triggerFinalDeregister
{
  if (!self->_hasHardDeregistered)
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Triggering final deregister", buf, 2u);
    }

    [(IDSDAccountController *)self setHasHardDeregistered:1];
    v4 = [(IDSDAccountController *)self accounts];
    v5 = [v4 _copyForEnumerating];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 accountType] != 2 && (objc_msgSend(v11, "isAdHocAccount") & 1) == 0)
          {
            [(IDSDAccountController *)self removeAccount:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_removeAccount:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    accountIDMap = self->_accountIDMap;
    v7 = [v4 uniqueID];
    v8 = [(NSMutableDictionary *)accountIDMap objectForKey:v7];

    v9 = +[IMRGLog registration];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing account %@", &v18, 0xCu);
      }

      [v4 setIsBeingRemoved:1];
      [v4 cleanupAccount];
      v11 = [v4 uniqueID];
      [(IDSDAccountController *)self _disableAccountWithUniqueID:v11];

      [(NSRecursiveLock *)self->_accountIDMapLock lock];
      v12 = self->_accountIDMap;
      v13 = [v4 uniqueID];
      [(NSMutableDictionary *)v12 removeObjectForKey:v13];

      [(NSRecursiveLock *)self->_accountIDMapLock unlock];
      [(IDSDAccountController *)self delayedSaveSettings];
      v14 = +[IDSDaemon sharedInstance];
      v15 = [v4 service];
      v16 = [v15 pushTopic];
      v10 = [v14 broadcasterForTopic:v16 ignoreServiceListener:1 messageContext:0];

      v17 = [v4 accountSetupInfo];
      [v10 accountRemoved:v17];

      [(IDSDAccountController *)self _cleanUpAccountCredentialForRemovedAccount:v4];
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1009202C4(v4);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_removePrimaryAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isAdHocAccount])
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 uniqueID];
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tried to remove ad hoc account directly, ignoring... { uniqueID: %@ }", buf, 0xCu);
      }
    }

    else
    {
      v8 = objc_alloc_init(NSMutableArray);
      [v8 addObject:v5];
      v9 = [v5 adHocAccounts];
      [v8 addObjectsFromArray:v9];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = v8;
      v10 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v6);
            }

            [(IDSDAccountController *)self _removeAccount:*(*(&v14 + 1) + 8 * i), v14];
          }

          v11 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tried to remove a nil account, ignoring...", buf, 2u);
    }
  }
}

- (id)_inUseUsernames
{
  v3 = objc_alloc_init(NSMutableSet);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(IDSDAccountController *)self accounts];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) loginID];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_inUseProfileIDs
{
  v3 = objc_alloc_init(NSMutableSet);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(IDSDAccountController *)self accounts];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) dsID];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_cleanUpAccountCredentialForRemovedAccount:(id)a3
{
  v12 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v12 loginID];
  v6 = [v12 dsID];
  v7 = +[FTPasswordManager sharedInstance];
  v8 = [(IDSDAccountController *)self _inUseUsernames];
  v9 = [v8 allObjects];
  v10 = [(IDSDAccountController *)self _inUseProfileIDs];
  v11 = [v10 allObjects];
  [v7 cleanUpAccountsWithUsername:v5 orProfileID:v6 basedOnInUseUsernames:v9 profileIDs:v11 completionBlock:0];

  objc_autoreleasePoolPop(v4);
}

- (void)_cleanUpAccountCredentialStore
{
  v3 = +[FTPasswordManager sharedInstance];
  v4[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10045F18C;
  v5[3] = &unk_100BDCEC8;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10045F1DC;
  v4[3] = &unk_100BDCEC8;
  [v3 cleanUpAccountsBasedOnInUseUsernamesBlock:v5 profileIDBlock:v4 completionBlock:0];
}

- (void)_addAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[IMRGLog warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      v11 = "Tried to add a nil account, ignoring...";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v23, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  accountIDMap = self->_accountIDMap;
  v7 = [v4 uniqueID];
  v8 = [(NSMutableDictionary *)accountIDMap objectForKey:v7];

  v9 = +[IMRGLog registration];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100920348(v5);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding account %@", &v23, 0xCu);
  }

  [(NSRecursiveLock *)self->_accountIDMapLock lock];
  v12 = self->_accountIDMap;
  v13 = [v5 uniqueID];
  [(NSMutableDictionary *)v12 setObject:v5 forKey:v13];

  [(NSRecursiveLock *)self->_accountIDMapLock unlock];
  [(IDSDAccountController *)self delayedSaveSettings];
  if (![v5 isTemporary] || (objc_msgSend(v5, "expirationDate"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = [(IDSDAccountController *)self daemon];
    v16 = [v5 service];
    v17 = [v16 pushTopic];
    v18 = [v15 broadcasterForTopic:v17 ignoreServiceListener:1 messageContext:0];

    v19 = [v5 accountSetupInfo];
    [v18 accountAdded:v19];
LABEL_12:

    goto LABEL_13;
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v5 uniqueID];
    v23 = 138412290;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Delaying broadcast for unprovisioned temporary account %@", &v23, 0xCu);
    goto LABEL_12;
  }

LABEL_13:

  v20 = [v5 service];
  v21 = [v20 pushTopic];
  v22 = [v21 isEqualToIgnoringCase:@"com.apple.private.alloy.accountssync"];

  if (v22)
  {
    v10 = +[IMRGLog accountsDebugging];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      v11 = "Broadcaster for account added";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)addPrimaryAccount:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    if ([v4 isAdHocAccount])
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 uniqueID];
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tried to add ad hoc account directly, ignoring... { uniqueID: %@ }", &v16, 0xCu);
      }
    }

    else
    {
      accountIDMap = self->_accountIDMap;
      v9 = [v4 uniqueID];
      v10 = [(NSMutableDictionary *)accountIDMap objectForKey:v9];

      if (v10)
      {
        v6 = +[IMRGLog registration];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          sub_1009203CC(v4);
        }
      }

      else
      {
        v11 = [v4 service];
        v12 = [v4 accountType];
        v13 = [v4 loginID];
        v6 = [(IDSDAccountController *)self existingAccountOnService:v11 withType:v12 loginID:v13];

        if (v6)
        {
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412290;
            v17 = v6;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  ** Found existing matching account, removing: %@", &v16, 0xCu);
          }

          v15 = [v6 linkedAccounts];
          [v15 __imForEach:&stru_100BDCEE8];

          [(IDSDAccountController *)self _removeAccount:v6];
        }

        [(IDSDAccountController *)self _addAccount:v4];
        [(IDSDAccountController *)self _setupAdHocAccountsForPrimaryAccount:v4];
      }
    }
  }

  else
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tried to add a nil primary account, ignoring...", &v16, 2u);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)addAccount:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueID];
    v7 = +[FTDeviceSupport sharedInstance];
    v8 = [v7 deviceInformationString];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client requested add account with unique ID %@ (Environment: %@)", &v9, 0x16u);
  }

  [(IDSDAccountController *)self addPrimaryAccount:v4];
}

- (void)removeAccount:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueID];
    v7 = +[FTDeviceSupport sharedInstance];
    v8 = [v7 deviceInformationString];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client requested remove account with unique ID %@ (Environment: %@)", &v9, 0x16u);
  }

  [(IDSDAccountController *)self _removePrimaryAccount:v4];
}

- (void)forceRemoveAccount:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 smallDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Force removing account {account: %@}", &v8, 0xCu);
  }

  if (v4)
  {
    if ([v4 isAdHocAccount])
    {
      [(IDSDAccountController *)self _removeAccount:v4];
    }

    else
    {
      [(IDSDAccountController *)self _removePrimaryAccount:v4];
    }
  }

  else
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tried to remove a nil account, ignoring...", &v8, 2u);
    }
  }
}

- (void)_disablePrimaryAccountWithUniqueID:(id)a3 userAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(IDSDAccountController *)self accountWithUniqueID:v6];
    v8 = v7;
    if (v7)
    {
      if (![v7 isAdHocAccount])
      {
        if (v4)
        {
          [v8 setIsUserDisabled:1];
        }

        v11 = objc_alloc_init(NSMutableArray);
        [v11 addObject:v8];
        v12 = [v8 adHocAccounts];
        [v11 addObjectsFromArray:v12];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = v11;
        v13 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v13)
        {
          v15 = v13;
          v16 = 0;
          v17 = *v33;
          *&v14 = 138412290;
          v27 = v14;
          while (2)
          {
            v18 = 0;
            v19 = v16;
            do
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v9);
              }

              v16 = [*(*(&v32 + 1) + 8 * v18) uniqueID];

              if (([(NSMutableSet *)self->_enabledAccounts containsObject:v16]& 1) != 0)
              {

                v30 = 0u;
                v31 = 0u;
                v28 = 0u;
                v29 = 0u;
                v21 = v9;
                v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v29;
                  do
                  {
                    for (i = 0; i != v23; i = i + 1)
                    {
                      if (*v29 != v24)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v26 = [*(*(&v28 + 1) + 8 * i) uniqueID];
                      [(IDSDAccountController *)self _disableAccountWithUniqueID:v26];
                    }

                    v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
                  }

                  while (v23);
                }

                goto LABEL_33;
              }

              v20 = +[IMRGLog registration];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = v27;
                v39 = v16;
                _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Account with unique ID %@ is already disabled, ignoring...", buf, 0xCu);
              }

              v18 = v18 + 1;
              v19 = v16;
            }

            while (v15 != v18);
            v15 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v16 = 0;
        }

LABEL_33:

        goto LABEL_34;
      }

      v9 = +[IMRGLog warning];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v6;
        v10 = "Tried to disable ad hoc account directly, ignoring... { uniqueID: %@ }";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      }
    }

    else
    {
      v9 = +[IMRGLog warning];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v6;
        v10 = "Tried to disable a primary account we don't know about, ignoring... { uniqueID: %@ }";
        goto LABEL_10;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  v8 = +[IMRGLog warning];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tried to disable a primary account with no unique ID, ignoring...", buf, 2u);
  }

LABEL_35:
}

- (void)_forceDisablePrimaryAccountWithUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IDSDAccountController *)self accountWithUniqueID:v4];
    v6 = v5;
    if (v5)
    {
      if (![v5 isAdHocAccount])
      {
        [v6 setIsUserDisabled:1];
        v9 = objc_alloc_init(NSMutableArray);
        [v9 addObject:v6];
        v10 = [v6 adHocAccounts];
        [v9 addObjectsFromArray:v10];

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = v9;
        v11 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v7);
              }

              v15 = [*(*(&v16 + 1) + 8 * i) uniqueID];
              [(IDSDAccountController *)self _forceDisableAccountWithUniqueID:v15];
            }

            v12 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v12);
        }

        goto LABEL_19;
      }

      v7 = +[IMRGLog warning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v4;
        v8 = "Tried to disable ad hoc account directly, ignoring... { uniqueID: %@ }";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }
    }

    else
    {
      v7 = +[IMRGLog warning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v4;
        v8 = "Tried to disable a primary account we don't know about, ignoring... { uniqueID: %@ }";
        goto LABEL_10;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v6 = +[IMRGLog warning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tried to disable a primary account with no unique ID, ignoring...", buf, 2u);
  }

LABEL_20:
}

- (void)_forceDisableAccountWithUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IDSDAccountController *)self accountWithUniqueID:v4];
    if (v5)
    {
      if ([(NSMutableSet *)self->_enabledAccounts containsObject:v4])
      {
        v6 = +[IMRGLog registration];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [v5 loginID];
          v8 = [v5 service];
          v9 = [v8 identifier];
          v10 = +[FTDeviceSupport sharedInstance];
          v11 = [v10 deviceInformationString];
          v23 = 138413314;
          v24 = v4;
          v25 = 2112;
          v26 = v7;
          v27 = 2112;
          v28 = v9;
          v29 = 2112;
          v30 = v11;
          v31 = 2112;
          v32 = self;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Force disable account with uniqueID %@ login ID %@ service %@ called (Environment: %@) %@", &v23, 0x34u);
        }

        [(NSMutableSet *)self->_enabledAccounts removeObject:v4];
      }

      [v5 deactivateRegistration];
      [v5 resetErrorState];
      v12 = [v5 service];
      v13 = [v12 identifier];

      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Clearing service's cache {serviceIdentifier: %@}", &v23, 0xCu);
      }

      v15 = +[IDSPeerIDManager sharedInstance];
      [v15 forgetPeerTokensForService:v13 reason:14];

      v16 = +[IDSIDStatusQueryController sharedInstance];
      [v16 removeCachedEntriesForService:v13];

      v17 = +[IDSDaemon sharedInstance];
      v18 = [v5 service];
      v19 = [v18 pushTopic];
      v20 = [v17 broadcasterForTopic:v19 ignoreServiceListener:1 messageContext:0];

      v21 = [v5 service];
      v22 = [v21 identifier];
      [v20 accountDisabled:v4 onService:v22];
    }

    else
    {
      v13 = +[IMRGLog warning];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Tried to force disable an account we don't know about, ignoring...", &v23, 2u);
      }
    }
  }

  else
  {
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Tried to force disable an account with no unique ID, ignoring...", &v23, 2u);
    }
  }
}

- (void)_disableAccountWithUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IDSDAccountController *)self accountWithUniqueID:v4];
    if (!v5)
    {
      v15 = +[IMRGLog warning];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Tried to disable an account we don't know about, ignoring...", &v25, 2u);
      }

      goto LABEL_16;
    }

    if (([(NSMutableSet *)self->_enabledAccounts containsObject:v4]& 1) == 0)
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100920450();
      }

      goto LABEL_16;
    }

    if ([(NSMutableSet *)self->_enabledAccounts containsObject:v4])
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 loginID];
        v8 = [v5 service];
        v9 = [v8 identifier];
        v10 = +[FTDeviceSupport sharedInstance];
        v11 = [v10 deviceInformationString];
        v25 = 138413314;
        v26 = v4;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v11;
        v33 = 2112;
        v34 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disable account with uniqueID %@ login ID %@ service %@ called (Environment: %@) %@", &v25, 0x34u);
      }

      [(NSMutableSet *)self->_enabledAccounts removeObject:v4];
      [v5 deactivateRegistration];
      v12 = +[IDSKeyTransparencyVerifier sharedInstance];
      v13 = [v12 registerUpdateRateLimiter];
      [v13 clearAllItems];

      v14 = [v5 service];
      v15 = [v14 identifier];

      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Clearing service's cache {serviceIdentifier: %@}", &v25, 0xCu);
      }

      v17 = +[IDSPeerIDManager sharedInstance];
      [v17 forgetPeerTokensForService:v15 reason:14];

      v18 = +[IDSIDStatusQueryController sharedInstance];
      [v18 removeCachedEntriesForService:v15];

      v19 = +[IDSDaemon sharedInstance];
      v20 = [v5 service];
      v21 = [v20 pushTopic];
      v22 = [v19 broadcasterForTopic:v21 ignoreServiceListener:1 messageContext:0];

      v23 = [v5 service];
      v24 = [v23 identifier];
      [v22 accountDisabled:v4 onService:v24];

LABEL_16:
    }
  }

  else
  {
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Tried to disable an account with no unique ID, ignoring...", &v25, 2u);
    }
  }
}

- (void)enablePrimaryAccountWithUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IDSDAccountController *)self accountWithUniqueID:v4];
    v6 = v5;
    if (v5)
    {
      if ([v5 isAdHocAccount])
      {
        v7 = +[IMRGLog warning];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v4;
          v8 = "Tried to enable ad hoc account directly, ignoring.. { uniqueID: %@ }";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        }
      }

      else
      {
        v9 = +[IDSRestrictions sharedInstance];
        [v9 refreshStateForAccount:v6];

        v10 = +[IDSRestrictions sharedInstance];
        v11 = [v10 shouldDisableAccount:v6];

        if (!v11)
        {
          [v6 setIsUserDisabled:0];
          v12 = objc_alloc_init(NSMutableArray);
          [v12 addObject:v6];
          v13 = [v6 adHocAccounts];
          [v12 addObjectsFromArray:v13];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v7 = v12;
          v14 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v14)
          {
            v16 = v14;
            v17 = 0;
            v18 = *v34;
            *&v15 = 138412290;
            v28 = v15;
            while (2)
            {
              v19 = 0;
              v20 = v17;
              do
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(v7);
                }

                v17 = [*(*(&v33 + 1) + 8 * v19) uniqueID];

                if (![(NSMutableSet *)self->_enabledAccounts containsObject:v17])
                {

                  v31 = 0u;
                  v32 = 0u;
                  v29 = 0u;
                  v30 = 0u;
                  v22 = v7;
                  v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v30;
                    do
                    {
                      for (i = 0; i != v24; i = i + 1)
                      {
                        if (*v30 != v25)
                        {
                          objc_enumerationMutation(v22);
                        }

                        v27 = [*(*(&v29 + 1) + 8 * i) uniqueID];
                        [(IDSDAccountController *)self _enableAccountWithUniqueID:v27];
                      }

                      v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
                    }

                    while (v24);
                  }

                  goto LABEL_34;
                }

                v21 = +[IMRGLog registration];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v28;
                  v40 = v17;
                  _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Account with unique ID %@ is already enabled, ignoring...", buf, 0xCu);
                }

                v19 = v19 + 1;
                v20 = v17;
              }

              while (v16 != v19);
              v16 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v17 = 0;
          }

LABEL_34:

          goto LABEL_35;
        }

        v7 = +[IMRGLog warning];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v6;
          v8 = "Tried to enable a restricted account, ignoring.. { account: %@ }";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v7 = +[IMRGLog warning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v4;
        v8 = "Tried to enable a primary account we don't know about, ignoring... { uniqueID: %@ }";
        goto LABEL_13;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  v6 = +[IMRGLog warning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tried to enable a primary account with no unique ID, ignoring...", buf, 2u);
  }

LABEL_36:
}

- (void)_enableAccountWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([v4 length])
  {
    v6 = [(IDSDAccountController *)self accountWithUniqueID:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 serviceType];
      v9 = [v7 accountType];
      if ([(IDSRegistrationController *)self->_registrationController systemSupportsServiceType:v8 accountType:v9 isTemporary:[v7 isTemporary]])
      {
        if ([(NSMutableSet *)self->_enabledAccounts containsObject:v4])
        {
          v10 = +[IMRGLog registration];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            sub_1009204B8();
          }
        }

        else
        {
          v48 = v8;
          v49 = v5;
          v50 = v7;
          if (([(NSMutableSet *)self->_enabledAccounts containsObject:v4]& 1) == 0)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = +[IMRGLog registration];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v7 loginID];
              v22 = [v7 service];
              v23 = [v22 identifier];
              v24 = +[FTDeviceSupport sharedInstance];
              v25 = [v24 deviceInformationString];
              *buf = 138413314;
              v65 = v4;
              v66 = 2112;
              v67 = v21;
              v68 = 2112;
              v69 = v23;
              v70 = 2112;
              v71 = v25;
              v72 = 2112;
              v73 = self;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enable account with uniqueID %@ login ID %@ service %@ called (Environment: %@) %@", buf, 0x34u);

              v7 = v50;
            }

            [(NSMutableSet *)self->_enabledAccounts addObject:v4];
            [v7 activateRegistration];
            v26 = [(IDSDAccountController *)self daemon];
            v27 = [v7 service];
            v28 = [v27 pushTopic];
            v29 = [v26 broadcasterForTopic:v28 ignoreServiceListener:1 messageContext:0];

            v30 = [v7 service];
            v31 = [v30 identifier];
            [v29 accountEnabled:v4 onService:v31];

            objc_autoreleasePoolPop(v19);
          }

          v53 = objc_alloc_init(NSMutableSet);
          v52 = [v7 service];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v32 = self->_enabledAccounts;
          v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v58 objects:v63 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v59;
            do
            {
              for (i = 0; i != v34; i = i + 1)
              {
                if (*v59 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v58 + 1) + 8 * i);
                if (([v37 isEqualToIgnoringCase:v4]& 1) == 0 && v9)
                {
                  v38 = [(IDSDAccountController *)self accountWithUniqueID:v37];
                  if ([v38 accountType] == v9)
                  {
                    v39 = [v38 service];

                    if (v39 == v52)
                    {
                      v40 = +[IMRGLog registration];
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v65 = v37;
                        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " Will disable similar account with accountID: %@", buf, 0xCu);
                      }

                      [v53 addObject:v37];
                    }
                  }
                }
              }

              v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v58 objects:v63 count:16];
            }

            while (v34);
          }

          v51 = v4;

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v41 = v53;
          v42 = [v41 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v55;
            do
            {
              for (j = 0; j != v43; j = j + 1)
              {
                if (*v55 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v54 + 1) + 8 * j);
                v47 = +[IMRGLog registration];
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v65 = v46;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "   Forcing account to disable: %@", buf, 0xCu);
                }

                [(IDSDAccountController *)self _disableAccountWithUniqueID:v46];
              }

              v43 = [v41 countByEnumeratingWithState:&v54 objects:v62 count:16];
            }

            while (v43);
          }

          v7 = v50;
          v4 = v51;
          v8 = v48;
          v5 = v49;
        }
      }

      else
      {
        v11 = objc_autoreleasePoolPush();
        v12 = +[IMRGLog registration];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v65 = v8;
          v66 = 1024;
          LODWORD(v67) = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tried to enable an account with unsupported type -- ignoring and disabling... { serviceType: %@, accountType: %d }", buf, 0x12u);
        }

        v13 = +[IDSDaemon sharedInstance];
        v14 = [v7 service];
        v15 = [v14 pushTopic];
        v16 = [v13 broadcasterForTopic:v15 ignoreServiceListener:1 messageContext:0];

        v17 = [v7 service];
        v18 = [v17 identifier];
        [v16 accountDisabled:v4 onService:v18];

        objc_autoreleasePoolPop(v11);
      }
    }

    else
    {
      v8 = +[IMRGLog warning];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tried to enable an account we don't know about, ignoring...", buf, 2u);
      }
    }
  }

  else
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tried to enable an account with no unique ID, ignoring...", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)enableAccountWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[FTDeviceSupport sharedInstance];
    v8 = [v7 deviceInformationString];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client requested enable account with unique ID %@ (Environment: %@)", &v9, 0x16u);
  }

  [(IDSDAccountController *)self enablePrimaryAccountWithUniqueID:v4];
  objc_autoreleasePoolPop(v5);
}

- (void)disableAccountWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[FTDeviceSupport sharedInstance];
    v7 = [v6 deviceInformationString];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client requested disable account with unique ID %@ (Environment: %@)", &v8, 0x16u);
  }

  [(IDSDAccountController *)self _disablePrimaryAccountWithUniqueID:v4 userAction:1];
}

- (void)forceDisableAccountWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[FTDeviceSupport sharedInstance];
    v7 = [v6 deviceInformationString];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client requested force disable account with unique ID %@ (Environment: %@)", &v8, 0x16u);
  }

  [(IDSDAccountController *)self _forceDisablePrimaryAccountWithUniqueID:v4];
}

- (id)accountOnService:(id)a3 withAliasURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = v6;
  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(IDSDAccountController *)self accountsOnService:v6];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v19 = v12;
            _IDSLogV();
          }

          if ([v12 isEnabled])
          {
            if ([v12 hasAliasURI:v7])
            {
              v16 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v26 = v12;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Account matches: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              v15 = v12;
              goto LABEL_30;
            }
          }

          else
          {
            v14 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, " => Account disabled", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_30:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)accountOnService:(id)a3 withVettedAliasURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = v6;
  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(IDSDAccountController *)self accountsOnService:v6];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v19 = v12;
            _IDSLogV();
          }

          if ([v12 isEnabled])
          {
            if ([v12 hasVettedAliasURI:v7])
            {
              v16 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v26 = v12;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Account matches: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              v15 = v12;
              goto LABEL_30;
            }
          }

          else
          {
            v14 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, " => Account disabled", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_30:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)accountOnService:(id)a3 withLoginID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23 = v7;
  if (v7)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(IDSDAccountController *)self accountsOnService:v7];
    v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v9)
    {
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v22 = v12;
            _IDSLogV();
          }

          if ([v12 isEnabled])
          {
            v14 = [v8 length];
            if (!v14)
            {
              v4 = [v12 loginID];
              if (![v4 length])
              {

LABEL_29:
                v20 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v30 = v12;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Account matches: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v19 = v12;
                goto LABEL_35;
              }
            }

            v15 = v14 == 0;
            v16 = [v12 loginID];
            v17 = [v16 isEqualToIgnoringCase:v8];

            if (v15)
            {

              if (v17)
              {
                goto LABEL_29;
              }
            }

            else if (v17)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v18 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, " => Account disabled", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_35:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)localAccountOnService:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(IDSDAccountController *)self accountsOnService:v4, 0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 accountType] == 2)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)appleIDAccountOnService:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(IDSDAccountController *)self accountsOnService:v4, 0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 accountType] == 1)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountsOnService:(id)a3 withType:(int)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(IDSDAccountController *)self accountsOnService:v6, 0];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 accountType] == a4)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accountWithServiceName:(id)a3 aliasURI:(id)a4
{
  v6 = a3;
  v26 = a4;
  v27 = v6;
  if ([v6 length])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = v6;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Finding account with service name %@ aliasURI %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v23 = v6;
      v25 = v26;
      _IDSLogV();
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [(IDSDAccountController *)self accounts:v23];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = *v29;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v24 = v12;
            _IDSLogV();
          }

          if ([v12 isEnabled])
          {
            v14 = [v12 service];
            v15 = [v14 identifier];
            if ([v15 isEqualToIgnoringCase:v27])
            {
              v16 = [v12 hasAliasURI:v26];

              if (v16)
              {
                v20 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Account matches !", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v19 = v12;

                goto LABEL_41;
              }
            }

            else
            {
            }
          }

          else
          {
            v17 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, " => Account disabled", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Found no match", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v19 = 0;
LABEL_41:

  return v19;
}

- (id)accountWithServiceName:(id)a3 loginID:(id)a4
{
  v6 = a3;
  v26 = a4;
  v27 = v6;
  if ([v6 length])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v35 = v27;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Finding account with service name %@ loginID %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v23 = v27;
      v25 = v26;
      _IDSLogV();
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(IDSDAccountController *)self accounts:v23];
    v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = *v30;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v35 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v24 = v11;
            _IDSLogV();
          }

          if ([v11 isEnabled])
          {
            v13 = [v11 service];
            v14 = [v13 identifier];
            if ([v14 isEqualToIgnoringCase:v27])
            {
              v15 = [v11 loginID];
              v16 = IMAreEmailsLogicallyTheSame();

              if (v16)
              {
                v20 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Account matches !", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v19 = v11;

                goto LABEL_41;
              }
            }

            else
            {
            }
          }

          else
          {
            v17 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, " => Account disabled", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Found no match", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v19 = 0;
LABEL_41:

  return v19;
}

- (id)accountWithUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:v4];
    if (!v5)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "  => No account found for unique ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accountWithServiceName:(id)a3 myID:(id)a4
{
  v6 = a3;
  v42 = a4;
  v44 = v6;
  if (![v6 length])
  {
    v18 = 0;
    goto LABEL_73;
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v56 = v6;
    v57 = 2112;
    v58 = v42;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Finding account with service name %@ myID %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = v6;
    v40 = v42;
    _IDSLogV();
  }

  if ([v42 hasPrefix:{@"P:", v38, v40}])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [(IDSDAccountController *)self accounts];
    v8 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v8)
    {
      v9 = *v50;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v50 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v49 + 1) + 8 * i);
          if ([v11 isEnabled])
          {
            v12 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v56 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v39 = v11;
              _IDSLogV();
            }

            v13 = [v11 service];
            v14 = [v13 identifier];
            if ([v14 isEqualToIgnoringCase:v44])
            {
              v39 = [v11 loginID];
              v15 = [NSString stringWithFormat:@"P:%@"];
              v16 = [v42 isEqualToString:v15];

              if (v16)
              {
                v30 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Account matches!", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v32 = v11;
                goto LABEL_70;
              }
            }

            else
            {
            }
          }

          else
          {
            v17 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, " => Account disabled", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:
    v18 = 0;
LABEL_71:
    v34 = obj;
    goto LABEL_72;
  }

  if ([v42 hasPrefix:@"D:"])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [(IDSDAccountController *)self accounts];
    v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v19)
    {
      v20 = *v46;
      v41 = kIDSServiceDefaultsAuthorizationIDKey;
      while (2)
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v45 + 1) + 8 * j);
          v23 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v56 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v39 = v22;
            _IDSLogV();
          }

          if ([v22 isEnabled])
          {
            v24 = [v22 service];
            v25 = [v24 identifier];
            if ([v25 isEqualToIgnoringCase:v44])
            {
              v26 = [v22 accountInfo];
              v27 = [v26 objectForKey:v41];
              v28 = [v42 isEqualToString:v27];

              if (v28)
              {
                v35 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Account matches!", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v32 = v22;
LABEL_70:
                v18 = v32;
                goto LABEL_71;
              }
            }

            else
            {
            }
          }

          else
          {
            v29 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, " => Account disabled", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_55;
  }

  v33 = +[IMRGLog warning];
  v34 = v33;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    sub_100920520();
    v18 = 0;
    v34 = v33;
  }

  else
  {
    v18 = 0;
  }

LABEL_72:

LABEL_73:

  return v18;
}

- (id)accountsWithType:(int)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(IDSDAccountController *)self accounts];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 accountType] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)accountUniqueIDsWithType:(int)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(IDSDAccountController *)self accounts];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 accountType] == a3)
        {
          v12 = [v11 uniqueID];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEnabledAccount:(id)a3
{
  if (a3)
  {
    return [(NSMutableSet *)self->_enabledAccounts containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (id)primaryAccountForAdHocAccount:(id)a3
{
  v4 = a3;
  if ([v4 isAdHocAccount])
  {
    v5 = [(IDSDAccountController *)self accounts];
    v6 = [v5 _copyForEnumerating];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 adHocAccounts];
          if ([v12 containsObject:v4])
          {
            v8 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (id)existingAccountOnService:(id)a3 withType:(int)a4 loginID:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v38 = a5;
  v9 = 0;
  if (!v8 || !v6)
  {
    goto LABEL_39;
  }

  v34 = self;
  v35 = v8;
  v10 = [(IDSDAccountController *)self accountsOnService:v8 withType:v6];
  v11 = [v10 _copyForEnumerating];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (!v12)
  {
    v15 = 0;
    v9 = 0;
    goto LABEL_31;
  }

  v13 = v12;
  v14 = 0;
  v15 = 0;
  v9 = 0;
  v16 = *v44;
  v37 = v6;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v44 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v43 + 1) + 8 * i);
      if (v9)
      {
        v19 = +[IMRGLog registration];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [v18 smallDescription];
          *buf = 138412290;
          v49 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "  => Found **extra** account %@, deleting...", buf, 0xCu);

          LODWORD(v6) = v37;
        }

        v14 = 1;
      }

      if (v6 != 2)
      {
        v20 = [v18 loginID];
        v21 = [v20 length];
        if (v38 || v21)
        {
          v6 = [v18 loginID];
          v22 = [v6 isEqualToIgnoringCase:v38];

          LODWORD(v6) = v37;
          if ((v22 & 1) == 0)
          {
            v26 = +[IMRGLog registration];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v18 smallDescription];
              *buf = 138412546;
              v49 = v27;
              v50 = 2112;
              v51 = v38;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "  => Found **mismatched** account %@ ID %@, deleting...", buf, 0x16u);
            }

            goto LABEL_24;
          }
        }

        else
        {
        }
      }

      if ((v14 & 1) == 0)
      {
        v23 = v18;

        v24 = +[IMRGLog registration];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v23 smallDescription];
          *buf = 138412290;
          v49 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "  => Found existing account %@", buf, 0xCu);
        }

        v14 = 0;
        v9 = v23;
        continue;
      }

LABEL_24:
      if (!v15)
      {
        v15 = objc_alloc_init(NSMutableArray);
      }

      [v15 addObject:v18];
      v14 = 1;
    }

    v13 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  }

  while (v13);
LABEL_31:

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = v15;
  v29 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v40;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(IDSDAccountController *)v34 _removeAccount:*(*(&v39 + 1) + 8 * j)];
      }

      v30 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v30);
  }

  v8 = v35;
LABEL_39:

  return v9;
}

- (id)threadSafeServiceWithAccountUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSRecursiveLock *)self->_accountIDMapLock lock];
    v5 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:v4];
    v6 = [v5 service];
    if (v6)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v13 = v6;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "  => (Thread Safe) Found service: %p (for UID: %@)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v10 = v6;
        v11 = v4;
        _IDSLogV();
      }
    }

    else
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "  => (Thread Safe) No service found for unique ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v10 = v4;
        _IDSLogV();
      }
    }

    [(NSRecursiveLock *)self->_accountIDMapLock unlock:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)registeredLocalURIsOnService:(id)a3
{
  v4 = a3;
  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithIdentifier:v4];
  v7 = [(IDSDAccountController *)self registeredAccountsOnService:v6];

  v8 = objc_alloc_init(NSMutableSet);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) prefixedURIStringsFromRegistration];
        v15 = [v14 __imArrayByApplyingBlock:&stru_100BDCF08];
        if (v15)
        {
          [v8 addObjectsFromArray:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [v8 allObjects];

  return v16;
}

- (id)registeredDevicesOnService:(id)a3
{
  v4 = a3;
  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithIdentifier:v4];
  v7 = [(IDSDAccountController *)self registeredAccountsOnService:v6];

  v8 = +[NSMutableSet set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) registeredDevices];
        if (v14)
        {
          [v8 addObjectsFromArray:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 allObjects];

  return v15;
}

- (id)registeredDevicesOnService:(id)a3 withLinkedURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = &__NSArray0__struct;
  if (v6 && v7)
  {
    v10 = +[IDSDServiceController sharedInstance];
    v25 = v6;
    v11 = [v10 serviceWithIdentifier:v6];
    v12 = [(IDSDAccountController *)self registeredAccountsOnService:v11];

    v13 = +[NSMutableSet set];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v12;
    v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v28)
    {
      v27 = *v34;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v33 + 1) + 8 * i) registeredDevices];
          v16 = v15;
          if (v15)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v30;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v30 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v29 + 1) + 8 * j);
                  v22 = [v21 linkedURIs];
                  v23 = [v22 containsObject:v8];

                  if (v23)
                  {
                    [v13 addObject:v21];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
              }

              while (v18);
            }
          }
        }

        v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v28);
    }

    v9 = [v13 allObjects];

    v6 = v25;
  }

  return v9;
}

- (void)setupLocalAccountForService:(id)a3
{
  v4 = a3;
  v5 = [(IDSDAccountController *)self existingAccountOnService:v4 withType:2 loginID:0];
  if (!v5)
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 identifier];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " => Creating a local account for service %@", buf, 0xCu);
    }

    v8 = [IDSDAccount alloc];
    v9 = +[NSString stringGUID];
    v10 = [(IDSDAccount *)v8 initWithLoginID:&stru_100C06028 service:v4 uniqueID:v9 accountType:2 accountConfig:0];

    [(IDSDAccountController *)self addPrimaryAccount:v10];
    v11 = [(IDSDAccount *)v10 uniqueID];
    [(IDSDAccountController *)self enablePrimaryAccountWithUniqueID:v11];

    v12 = [(IDSDAccount *)v10 linkedAccounts];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100464DE0;
    v13[3] = &unk_100BDB090;
    v13[4] = self;
    [v12 __imForEach:v13];
  }
}

- (void)_setupLocalAccounts
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up local accounts", buf, 2u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = +[IDSDServiceController sharedInstance];
  v4 = [v3 allServices];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 identifier];
        if (![v8 adHocServiceType])
        {
          v10 = [v9 isEqualToIgnoringCase:@"com.apple.madrid"];
          v11 = [v9 isEqualToIgnoringCase:@"com.apple.private.alloy.sms"];
          v12 = [v9 isEqualToIgnoringCase:@"com.apple.ess"];
          v13 = [v9 isEqualToIgnoringCase:@"com.apple.private.ac"];
          if (((v10 | v11 | v12 | v13 | [v9 isEqualToIgnoringCase:@"com.apple.private.alloy.facetime.multi"]) & 1) == 0)
          {
            [(IDSDAccountController *)self setupLocalAccountForService:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Finished setting up local accounts", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_refreshLocalAccounts
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Refreshing local accounts", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = +[IDSDServiceController sharedInstance];
  v4 = [v3 allServices];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 identifier];
        if (![v9 adHocServiceType])
        {
          v11 = [v10 isEqualToIgnoringCase:@"com.apple.madrid"];
          v12 = [v10 isEqualToIgnoringCase:@"com.apple.private.alloy.sms"];
          v13 = [v10 isEqualToIgnoringCase:@"com.apple.ess"];
          v14 = [v10 isEqualToIgnoringCase:@"com.apple.private.ac"];
          v15 = [v10 isEqualToIgnoringCase:@"com.apple.private.alloy.facetime.multi"];
          if ((v11 & 1) == 0 && (v12 & 1) == 0 && (v13 & 1) == 0 && (v14 & 1) == 0 && (v15 & 1) == 0)
          {
            v16 = [(IDSDAccountController *)self existingAccountOnService:v9 withType:2 loginID:0];
            [(IDSDAccountController *)self _setupAdHocAccountsForPrimaryAccount:v16];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)_cleanupLocalAccounts
{
  v3 = [(IDSDAccountController *)self accounts];
  v4 = [v3 _copyForEnumerating];

  v5 = objc_alloc_init(NSMutableSet);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (!v6)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_30;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  v11 = *v34;
  *&v7 = 138412290;
  v27 = v7;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v34 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v33 + 1) + 8 * i);
      if (([v13 isAdHocAccount] & 1) == 0)
      {
        [v13 refreshAdHocServiceNames];
      }

      if ([v13 accountType] != 2)
      {
        v16 = [v13 service];
        v17 = [v16 adHocServiceType];

        if (v17 == 2)
        {
          v18 = +[IMRGLog registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v13 smallDescription];
            *buf = v27;
            v39 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Cleaning up account for local service %@", buf, 0xCu);
          }

          [v5 addObject:v13];
          if (v9)
          {
            v9 = 1;
            goto LABEL_18;
          }

          v9 = [v13 isRegistered];
          if (v10)
          {
            continue;
          }
        }

        else
        {
LABEL_18:
          if (v10)
          {
            continue;
          }
        }

LABEL_19:
        if (([v13 isAdHocAccount] & 1) != 0 || !objc_msgSend(v13, "isRegistered"))
        {
          v10 = 0;
        }

        else
        {
          v20 = +[IMRGLog registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v39 = v13;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using %@ to trigger a re-register", buf, 0xCu);
          }

          v10 = v13;
        }

        continue;
      }

      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 smallDescription];
        *buf = v27;
        v39 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cleaning up local account %@", buf, 0xCu);
      }

      [v5 addObject:v13];
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  }

  while (v8);
LABEL_30:

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [v5 allObjects];
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(IDSDAccountController *)self _removeAccount:*(*(&v29 + 1) + 8 * j)];
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  if ((v9 & (v10 != 0)) == 1)
  {
    v26 = +[IMRGLog registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "One of the local accounts was registered in the cloud, triggering a re-register to update", buf, 2u);
    }

    [v10 registerAccount];
  }
}

- (id)_strippedAccountInfo:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableDictionary alloc] initWithDictionary:v3];

  [v4 removeObjectForKey:kIDSServiceDefaultsAccountTypeKey];
  [v4 removeObjectForKey:kIDSServiceDefaultsHasEverRegistered];
  [v4 removeObjectForKey:kIDSServiceDefaultsRegistrationInfoKey];
  [v4 removeObjectForKey:kIDSServiceDefaultsUniqueIDKey];

  return v4;
}

- (BOOL)_isAccountInfoRegistered:(id)a3
{
  v3 = [a3 objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
  v4 = [v3 objectForKey:kIDSServiceDefaultsRegistrationInfoStatusKey];
  v5 = [v4 intValue];

  return v5 == 5;
}

- (void)_setupForLocal
{
  [(IDSDAccountController *)self _setupLocalAccounts];

  [(IDSDAccountController *)self _setupUsingRemoteInfo];
}

- (BOOL)isLocalSetupEnabled
{
  v2 = +[IDSPairingManager sharedInstance];
  v3 = [v2 isCurrentDevicePairedOrPairing];

  return v3;
}

- (BOOL)isTraditionalLocalSetupEnabled
{
  v2 = +[IDSPairingManager sharedInstance];
  v3 = [v2 isTraditionalDevicePairedOrPairing];

  return v3;
}

- (void)startLocalSetup
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting local setup", v6, 2u);
  }

  [(IDSDAccountController *)self setHasHardDeregistered:0];
  [(IDSDAccountController *)self _setupForLocal];
  [(IDSDAccountController *)self _setupAdHocAccounts];
  v4 = +[IDSDaemon sharedInstance];
  [v4 updateTopics];

  v5 = +[IDSUTunDeliveryController sharedInstance];
  [v5 localAccountSetupCompleted];
}

- (void)stopLocalSetup
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping local setup", v5, 2u);
  }

  [(IDSDAccountController *)self _cleanupLocalAccounts];
  v4 = +[IDSDaemon sharedInstance];
  [v4 updateTopics];

  [(IDSDAccountController *)self setHasHardDeregistered:0];
}

- (void)_setupAdHocAccountsForPrimaryAccount:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    if ([v4 isAdHocAccount])
    {
      v95 = +[IMRGLog registration];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        sub_100920674(v4);
      }

      goto LABEL_122;
    }

    v98 = self;
    v6 = [v4 service];
    v7 = +[IDSDServiceController sharedInstance];
    v95 = v6;
    v8 = [v6 identifier];
    v9 = [v7 adHocServicesForIdentifier:v8];
    v10 = [v9 _copyForEnumerating];

    v11 = [v10 count];
    v12 = +[IMRGLog registration];
    v13 = v12;
    if (!v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10092060C();
      }

      goto LABEL_121;
    }

    v91 = v5;
    v14 = &off_1009AB000;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 smallDescription];
      *buf = 138412290;
      v128 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " * Setting up adhoc accounts for %@", buf, 0xCu);
    }

    v13 = [v4 loginID];
    v16 = [v4 accountType];
    v105 = [v4 userUniqueIdentifier];
    i = [v4 registration];
    v89 = [i adHocServiceNames];

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v90 = v10;
    obj = v10;
    v18 = v98;
    v101 = [obj countByEnumeratingWithState:&v119 objects:v135 count:16];
    if (v101)
    {
      v96 = v16 != 0;
      v100 = *v120;
      v93 = kIDSServiceDefaultsPrimaryAccountKey;
      v94 = kIDSServiceDefaultsPrimaryServiceNameKey;
      v92 = kIDSServiceDefaultsUserUniqueIdentifier;
      v108 = v16;
      v97 = v4;
      v107 = v13;
      do
      {
        for (i = 0; i != v101; ++i)
        {
          if (*v120 != v100)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v119 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          if ([v19 adHocServiceType] == 2 && !-[IDSDAccountController isLocalSetupEnabled](v18, "isLocalSetupEnabled") || objc_msgSend(v19, "adHocServiceType", v89) == 5 && !-[IDSDAccountController isLocalSetupEnabled](v18, "isLocalSetupEnabled"))
          {
            goto LABEL_103;
          }

          v102 = v14;
          v103 = i;
          v20 = [v19 enabledOnlyWhenPaired];
          v21 = +[IDSPairingManager sharedInstance];
          v22 = [v21 isCurrentDeviceTinkerConfiguredWatch];

          v104 = v19;
          if ([v19 enabledOnlyOnStandaloneDevices])
          {
            v23 = +[FTDeviceSupport sharedInstance];
            v24 = ([v23 deviceType] == 6) & (v22 ^ 1);
          }

          else
          {
            v24 = 0;
          }

          v25 = [v104 disabledOnTinkerWatch] & v22;
          if (v20)
          {
            if (v24 & 1 | ![(IDSDAccountController *)v18 isTraditionalLocalSetupEnabled]| v25 & 1)
            {
              goto LABEL_26;
            }
          }

          else if ((v24 | v25))
          {
LABEL_26:
            v27 = +[IMRGLog registration];
            v14 = v102;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = @"NO";
              if (v22)
              {
                v29 = @"YES";
              }

              else
              {
                v29 = @"NO";
              }

              *buf = 138413058;
              v128 = v104;
              if (v24)
              {
                v30 = @"YES";
              }

              else
              {
                v30 = @"NO";
              }

              v129 = 2112;
              if (v25)
              {
                v28 = @"YES";
              }

              v130 = v29;
              v131 = 2112;
              v132 = v30;
              v133 = 2112;
              v134 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cannot enable adhoc service {service: %@, isTinker: %@, cannotEnableOnTraditionalWatch: %@, cannotEnableOnTinkerWatch: %@}", buf, 0x2Au);
            }

            i = v103;
            goto LABEL_102;
          }

          v14 = v102;
          if (!v16)
          {
            v26 = v104;
            i = v103;
            if (([v104 wantsPhoneNumberAccount] & 1) == 0)
            {
              goto LABEL_103;
            }

LABEL_38:
            if ([v26 adHocServiceType] == 2)
            {
              goto LABEL_103;
            }

            v109 = v96;
            if ([v26 adHocServiceType] == 5)
            {
              goto LABEL_103;
            }

            goto LABEL_40;
          }

          i = v103;
          v26 = v104;
          if (v16 == 1)
          {
            goto LABEL_38;
          }

          v109 = 0;
LABEL_40:
          v31 = [(IDSDAccountController *)v18 accountsOnService:v26 withType:v16];
          v32 = [v31 _copyForEnumerating];

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v115 objects:v126 count:16];
          if (!v34)
          {

            v110 = 0;
LABEL_77:
            v18 = v98;
            v56 = objc_autoreleasePoolPush();
            v57 = [IDSDAccount alloc];
            v58 = +[NSString stringGUID];
            v59 = [v4 accountInfo];
            v60 = [v4 uniqueID];
            v61 = [(IDSDAccount *)v57 initAdHocAccountWithLoginID:v13 service:v104 uniqueID:v58 accountType:v108 accountConfig:v59 primaryAccount:v60];

            v62 = +[IMRGLog registration];
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = [v61 smallDescription];
              *buf = 138412290;
              v128 = v63;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "  => Created ad hoc account %@", buf, 0xCu);
            }

            v27 = v61;
            [(IDSDAccountController *)v98 _addAccount:v61];
            objc_autoreleasePoolPop(v56);
            v16 = v108;
            goto LABEL_85;
          }

          v35 = v34;
          v106 = v33;
          v36 = 0;
          v110 = 0;
          v27 = 0;
          v37 = *v116;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v116 != v37)
              {
                objc_enumerationMutation(v106);
              }

              v39 = *(*(&v115 + 1) + 8 * j);
              if (v16)
              {
                v40 = 1;
                if (!v27)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                v41 = [*(*(&v115 + 1) + 8 * j) userUniqueIdentifier];
                v40 = [v41 isEqualToString:v105];

                if (!v27)
                {
                  goto LABEL_53;
                }
              }

              if (v40)
              {
                v42 = +[IMRGLog registration];
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = [v39 smallDescription];
                  *buf = 138412290;
                  v128 = v43;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "  => Found **extra** adhoc account %@, deleting...", buf, 0xCu);

                  v16 = v108;
                }

                v36 = 1;
              }

LABEL_53:
              if (v109)
              {
                v44 = [v39 loginID];
                if ([v44 length] || -[NSObject length](v107, "length"))
                {
                  v45 = [v39 loginID];
                  v46 = [v45 isEqualToIgnoringCase:v107];

                  v16 = v108;
                  if ((v46 & 1) == 0)
                  {
                    v47 = +[IMRGLog registration];
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      v48 = [v39 smallDescription];
                      *buf = 138412546;
                      v128 = v48;
                      v129 = 2112;
                      v130 = v107;
                      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "  => Found **mismatched** adhoc account %@ primary ID %@, deleting...", buf, 0x16u);

                      v16 = v108;
                    }

LABEL_62:
                    v49 = v110;
                    if (!v110)
                    {
                      v49 = objc_alloc_init(NSMutableArray);
                    }

                    v110 = v49;
                    [v49 addObject:v39];
                    v36 = 1;
                    continue;
                  }
                }

                else
                {
                }
              }

              if (v36)
              {
                goto LABEL_62;
              }

              if (v40)
              {
                v50 = +[IMRGLog registration];
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  sub_100920594(v124, v39, &v125, v50);
                }

                v51 = v39;
                v36 = 0;
                v27 = v51;
              }

              else
              {
                v36 = 0;
              }
            }

            v35 = [v106 countByEnumeratingWithState:&v115 objects:v126 count:16];
          }

          while (v35);

          if (!v27)
          {
            v4 = v97;
            v13 = v107;
            goto LABEL_77;
          }

          v4 = v97;
          v52 = [v97 uniqueID];
          v53 = [v95 identifier];
          v54 = [v27 primaryAccount];
          v55 = v54;
          v13 = v107;
          v18 = v98;
          if (v54 != v97)
          {

            goto LABEL_81;
          }

          v64 = [v27 primaryAccountUniqueID];
          v65 = [v64 isEqualToIgnoringCase:v52];

          v16 = v108;
          if ((v65 & 1) == 0)
          {
LABEL_81:
            [v27 setObject:v53 forKey:v94];
            [v27 setObject:v52 forKey:v93];
            [v27 setObject:v105 forKey:v92];
            v66 = +[IMRGLog registration];
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = [v27 smallDescription];
              *buf = 138412290;
              v128 = v67;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "  => Updating primary account info for %@", buf, 0xCu);

              v16 = v108;
            }

            [(IDSDAccountController *)v98 delayedSaveSettings];
          }

LABEL_85:
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v68 = v110;
          v69 = [v68 countByEnumeratingWithState:&v111 objects:v123 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v112;
            do
            {
              for (k = 0; k != v70; k = k + 1)
              {
                if (*v112 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                [(IDSDAccountController *)v18 _removeAccount:*(*(&v111 + 1) + 8 * k)];
              }

              v70 = [v68 countByEnumeratingWithState:&v111 objects:v123 count:16];
            }

            while (v70);
          }

          v73 = [v4 isEnabled];
          if (v73 != [v27 isEnabled])
          {
            v74 = [v4 isEnabled];
            v75 = +[IMRGLog registration];
            v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
            if (v74)
            {
              if (v76)
              {
                v77 = [v27 smallDescription];
                *buf = 138412290;
                v128 = v77;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "  * Enabling account: %@", buf, 0xCu);
              }

              v78 = [v27 uniqueID];
              [(IDSDAccountController *)v18 _enableAccountWithUniqueID:v78];
            }

            else
            {
              if (v76)
              {
                v79 = [v27 smallDescription];
                *buf = 138412290;
                v128 = v79;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "  * Disabling account: %@", buf, 0xCu);
              }

              v78 = [v27 uniqueID];
              [(IDSDAccountController *)v18 _disableAccountWithUniqueID:v78];
            }
          }

          v14 = v102;
          i = v103;
LABEL_102:

LABEL_103:
          objc_autoreleasePoolPop(v14);
        }

        v101 = [obj countByEnumeratingWithState:&v119 objects:v135 count:16];
      }

      while (v101);
    }

    [v4 refreshAdHocServiceNames];
    v10 = v90;
    v5 = v91;
    v80 = v89;
    if (!v89)
    {
      i = [v4 registration];
      v81 = [i adHocServiceNames];
      if (!v81)
      {

LABEL_120:
LABEL_121:

LABEL_122:
        goto LABEL_123;
      }

      v14 = v81;
    }

    v82 = [v4 registration];
    v83 = [v82 adHocServiceNames];
    v84 = [v80 isEqualToArray:v83];

    if (!v80)
    {
    }

    if ((v84 & 1) == 0 && [v4 isRegistered])
    {
      v85 = +[IMRGLog registration];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "  => Triggering a re-register for primary account", buf, 2u);
      }

      v86 = +[IMRGLog registration];
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = [v4 registration];
        v88 = [v87 adHocServiceNames];
        *buf = 138412546;
        v128 = v80;
        v129 = 2112;
        v130 = v88;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, " current service names %@ new service names %@", buf, 0x16u);
      }

      [v4 registerAccount];
    }

    goto LABEL_120;
  }

LABEL_123:
  objc_autoreleasePoolPop(v5);
}

- (void)_setupAdHocAccounts
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up ad hoc accounts", buf, 2u);
  }

  v4 = [(IDSDAccountController *)self accounts];
  v5 = [v4 _copyForEnumerating];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 isAdHocAccount] & 1) == 0)
        {
          [(IDSDAccountController *)self _setupAdHocAccountsForPrimaryAccount:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " => Done setting up ad hoc accounts", buf, 2u);
  }
}

- (void)_setupLinkedAccounts
{
  v2 = &uuid_unparse_upper_ptr;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up linked accounts, if necessary", buf, 2u);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = [(IDSDAccountController *)self accounts];
  v5 = [v4 _copyForEnumerating];

  obj = v5;
  v44 = [v5 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v44)
  {
    v43 = *v57;
    *&v6 = 138412546;
    v41 = v6;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v56 + 1) + 8 * i);
        v9 = [v8 service];
        v10 = +[IDSDServiceController sharedInstance];
        v11 = [v10 linkedServicesForService:v9];

        if ([v11 count])
        {
          v47 = i;
          v12 = [v2[504] registration];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v41;
            v62 = v9;
            v63 = 2112;
            v64 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " Service: %@  has linked services: %@", buf, 0x16u);
          }

          v46 = v9;

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v45 = v11;
          v49 = v11;
          v13 = [v49 countByEnumeratingWithState:&v52 objects:v60 count:16];
          v14 = self;
          if (v13)
          {
            v15 = v13;
            v50 = *v53;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v53 != v50)
                {
                  objc_enumerationMutation(v49);
                }

                v17 = *(*(&v52 + 1) + 8 * j);
                if ([v17 disabledOnTinkerWatch])
                {
                  v18 = +[IDSPairingManager sharedInstance];
                  v19 = [v18 isCurrentDeviceTinkerConfiguredWatch];

                  if (v19)
                  {
                    continue;
                  }
                }

                v20 = [v8 linkedAccounts];
                v51[0] = _NSConcreteStackBlock;
                v51[1] = 3221225472;
                v51[2] = sub_100467128;
                v51[3] = &unk_100BDCF30;
                v51[4] = v17;
                v21 = [v20 __imArrayByFilteringWithBlock:v51];
                v22 = [v21 firstObject];

                if (v22)
                {
                  v23 = [v2[504] registration];
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " We already have linked accounts, let's just double check the activation", buf, 2u);
                  }

                  v24 = [v8 isEnabled];
                  if (v24 != [(IDSDAccount *)v22 isEnabled])
                  {
                    v25 = [v2[504] registration];
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " * They're not the same, let's fix that", buf, 2u);
                    }

                    v26 = [v8 isEnabled];
                    v27 = [v2[504] registration];
                    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
                    if (v26)
                    {
                      if (v28)
                      {
                        *buf = 138412290;
                        v62 = v22;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " * Enabling account: %@", buf, 0xCu);
                      }

                      v29 = [(IDSDAccount *)v22 uniqueID];
                      [(IDSDAccountController *)v14 enableAccountWithUniqueID:v29];

                      if ([v8 accountType] != 2)
                      {
                        [(IDSDAccount *)v22 registerAccount];
                      }
                    }

                    else
                    {
                      if (v28)
                      {
                        *buf = 138412290;
                        v62 = v22;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " * Disabling account: %@", buf, 0xCu);
                      }

                      v39 = [(IDSDAccount *)v22 uniqueID];
                      [(IDSDAccountController *)v14 disableAccountWithUniqueID:v39];
                    }
                  }
                }

                else if ([v8 accountType] == 1)
                {
                  v30 = [IDSDAccount alloc];
                  v31 = [v8 loginID];
                  +[NSString stringGUID];
                  v33 = v32 = v2;
                  v34 = [v8 accountType];
                  v35 = [v8 accountInfo];
                  v22 = [(IDSDAccount *)v30 initWithLoginID:v31 service:v17 uniqueID:v33 accountType:v34 accountConfig:v35];

                  v2 = v32;
                  v36 = [v32[504] registration];
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v62 = v22;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "  Creating a linked account: %@", buf, 0xCu);
                  }

                  v14 = self;
                  [(IDSDAccountController *)self addAccount:v22];
                  if ([v8 isEnabled])
                  {
                    v37 = [v2[504] registration];
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "  ... and enabling it", buf, 2u);
                    }

                    v38 = [(IDSDAccount *)v22 uniqueID];
                    [(IDSDAccountController *)self enableAccountWithUniqueID:v38];

                    [(IDSDAccount *)v22 registerAccount];
                  }
                }

                else
                {
                  v22 = 0;
                }
              }

              v15 = [v49 countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v15);
          }

          v9 = v46;
          i = v47;
          v11 = v45;
        }
      }

      v44 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v44);
  }

  v40 = [v2[504] registration];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " => Done setting up linked accounts", buf, 2u);
  }
}

- (void)_migrateLegacyAccounts
{
  [(IDSDAccountController *)self _migrateLegacyAccounts1];

  [(IDSDAccountController *)self _migrateLegacyAccounts2];
}

- (void)_migrateLegacyAccounts1
{
  v2 = self;
  v3 = [(IDSDAccountController *)self userDefaults];
  v4 = [v3 appBoolForKey:@"ImportedLegacyIMAccounts"];

  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not importing legacy accounts, we've already done this", buf, 2u);
    }
  }

  else
  {
    v6 = [(IDSDAccountController *)v2 userDefaults];
    [v6 setAppBool:1 forKey:@"ImportedLegacyIMAccounts"];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = +[IDSDServiceController sharedInstance];
    v5 = [v7 allServices];

    v49 = [v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v49)
    {
      v48 = *v53;
      v43 = kIDSServiceDefaultsAccounts;
      v42 = kIDSServiceDefaultsEnabledAccounts;
      v44 = v5;
      v41 = v2;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v53 != v48)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v52 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v10 isEqualToIgnoringCase:@"com.apple.madrid"];
          v12 = @"com.apple.imservice.iMessage";
          if ((v11 & 1) == 0)
          {
            v13 = [v10 isEqualToIgnoringCase:@"com.apple.ess"];
            v12 = @"com.apple.imservice.FaceTime";
            if (!v13)
            {
              v12 = 0;
            }
          }

          v14 = v12;

          if ([(__CFString *)v14 length])
          {
            v15 = +[IMRGLog registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v57 = v14;
              v58 = 2112;
              v59 = v9;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Importing from domain %@ => %@", buf, 0x16u);
            }

            v16 = [(IDSDAccountController *)v2 userDefaults];
            v17 = [v9 preferencesDomain];
            v18 = [v16 copyKeyListForAppID:v17];

            v19 = [(IDSDAccountController *)v2 userDefaults];
            v20 = [v9 preferencesDomain];
            v21 = [v19 copyMultipleForCurrentKeys:v18 appID:v20];

            v22 = [v21 objectForKey:@"Accounts"];
            v23 = [v22 count];

            if (v23)
            {
              v24 = +[IMRGLog registration];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v57 = v9;
                v58 = 2112;
                v59 = v21;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipping service import: %@, we already have accounts: %@", buf, 0x16u);
              }
            }

            else
            {
              v25 = [(IDSDAccountController *)v2 userDefaults];
              v24 = [v25 copyKeyListForAppID:v14];

              v26 = +[IMRGLog registration];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v57 = v24;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Legacy Keys: %@", buf, 0xCu);
              }

              if ([v24 count])
              {
                v27 = [(IDSDAccountController *)v2 userDefaults];
                v28 = [v27 copyMultipleForCurrentKeys:v24 appID:v14];

                v29 = +[IMRGLog registration];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v57 = v28;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Legacy Preferences: %@", buf, 0xCu);
                }

                v47 = v28;
                v30 = [v28 objectForKey:@"Accounts"];
                v31 = [v30 count];
                v32 = +[IMRGLog registration];
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
                if (v31)
                {
                  if (v33)
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Importing accounts...", buf, 2u);
                  }

                  v32 = objc_alloc_init(NSMutableDictionary);
                  v34 = objc_alloc_init(NSMutableDictionary);
                  v50[0] = _NSConcreteStackBlock;
                  v50[1] = 3221225472;
                  v50[2] = sub_10046786C;
                  v50[3] = &unk_100BD95F8;
                  v51 = v34;
                  v45 = v30;
                  v46 = v34;
                  [v30 enumerateKeysAndObjectsUsingBlock:v50];
                  [v32 setObject:v46 forKey:v43];
                  v35 = [v47 objectForKey:@"ActiveAccounts"];
                  [v32 setObject:v35 forKey:v42];

                  v36 = [(IDSDAccountController *)v41 userDefaults];
                  v37 = [v9 preferencesDomain];
                  [v36 setMultiple:v32 remove:0 appID:v37];

                  v38 = [(IDSDAccountController *)v41 userDefaults];
                  v39 = [v9 preferencesDomain];
                  [v38 synchronizeAppID:v39];

                  v2 = v41;
                  v40 = v47;

                  v30 = v45;
                }

                else
                {
                  if (v33)
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "  => Nothing interesting in the accounts, moving along", buf, 2u);
                  }

                  v40 = v47;
                }

                v5 = v44;
              }
            }
          }
        }

        v49 = [v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v49);
    }
  }
}

- (void)_migrateLegacyAccounts2
{
  v3 = [(IDSDAccountController *)self userDefaults];
  v4 = [v3 appBoolForKey:@"ImportedLegacyIDSAccounts2"];

  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not importing legacy accounts, we've already done this", &buf, 2u);
    }
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(IDSDServiceController *)self->_serviceController allServices];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v9 = *v17;
      *&v8 = 138412546;
      v15 = v8;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [(IDSDAccountController *)self _legacyAccountsOnService:v11, v15];
          v13 = [v11 preferencesDomain];
          [v5 setObject:v12 forKeyedSubscript:v13];
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [(IDSDAccountController *)self userDefaults];
    [v14 setAppBool:1 forKey:@"ImportedLegacyIDSAccounts2"];

    [(IDSDAccountController *)self _persistAccounts:v5];
  }
}

- (id)_legacyAccountsOnService:(id)a3
{
  v4 = a3;
  v5 = [v4 preferencesDomain];
  if ([v5 length])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Importing from domain %@ => %@", &v24, 0x16u);
    }

    v7 = [(IDSDAccountController *)self _preferencesOnDomain:v5];
    v8 = kIDSServiceDefaultsAccounts;
    v9 = [v7 objectForKeyedSubscript:kIDSServiceDefaultsAccounts];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(IDSDAccountController *)self _preferencesOnDomain:@"com.apple.identityservicesd"];
      v12 = [v11 objectForKeyedSubscript:@"services"];
      v13 = [v4 preferencesDomain];
      v14 = [v12 objectForKeyedSubscript:v13];

      v15 = [v14 objectForKeyedSubscript:v8];
      v16 = [v15 count];

      if (v16)
      {
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412546;
          v25 = v4;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping service import: %@, we already have accounts: %@", &v24, 0x16u);
        }

        v18 = 0;
      }

      else
      {
        v19 = kIDSServiceDefaultsEnabledAccounts;
        v17 = [v7 objectForKeyedSubscript:kIDSServiceDefaultsEnabledAccounts];
        if (![v17 count])
        {
          v20 = +[IMRGLog registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 138412290;
            v25 = v5;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Migrating legacy account found no enabled accounts { legacyDomain : %@ }", &v24, 0xCu);
          }
        }

        v21 = objc_alloc_init(NSMutableDictionary);
        v22 = [v7 objectForKeyedSubscript:v8];
        if (v22)
        {
          CFDictionarySetValue(v21, v8, v22);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1009206F8();
        }

        if (v17)
        {
          CFDictionarySetValue(v21, v19, v17);
        }

        v18 = [(__CFDictionary *)v21 copy];
      }
    }

    else
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Nothing interesting in the accounts, moving along", &v24, 2u);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_persistAccounts:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Persisting %@ accounts", &v11, 0xCu);
  }

  v8 = JWEncodeDictionary();
  v9 = [v8 _FTCopyOptionallyGzippedData];

  v10 = [(IDSDAccountController *)self userDefaults];
  [v10 setValue:v9 forKey:@"services" appID:@"com.apple.identityservicesd"];

  objc_autoreleasePoolPop(v5);
}

- (id)_preferencesOnDomain:(id)a3
{
  v4 = a3;
  v5 = [(IDSDAccountController *)self userDefaults];
  v6 = [v5 copyKeyListForAppID:v4];

  if (v6)
  {
    v7 = [(IDSDAccountController *)self userDefaults];
    v8 = [v7 copyMultipleForCurrentKeys:v6 appID:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasForcedReRegistered
{
  v3 = [(IDSDAccountController *)self userDefaults];
  v4 = [v3 appValueForKey:@"ReRegisteredForDevicesHash"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = _IDSServiceDictionaryRepresentableHash();
    v6 = [v4 isEqualToString:v5];
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      *v16 = 138412802;
      if (v6)
      {
        v8 = @"YES";
      }

      *&v16[4] = v8;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Computed force register hash {matched: %@, old: %@, new: %@}", v16, 0x20u);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v9 = [(IDSDAccountController *)self userDefaults];
  v10 = [v9 appValueForKey:@"ReRegisteredForDevices"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 integerValue];
    v12 = v11 == sub_10046829C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [(IDSDAccountController *)self userDefaults];
  v14 = [v13 appBoolForKey:@"ReRegisterForAliasRepair"];

  return v12 & v6 & (v14 ^ 1);
}

- (void)_cleanupLegacyAccounts
{
  v3 = [(IDSDAccountController *)self userDefaults];
  v4 = [v3 appBoolForKey:@"DidCleanLegacyAccountPrefs"];

  if ((v4 & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(IDSDServiceController *)self->_serviceController allServices];
    v5 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v21 = *v24;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [*(*(&v23 + 1) + 8 * i) preferencesDomain];
          v9 = [(IDSDAccountController *)self userDefaults];
          v10 = [v9 copyKeyListForAppID:v8];

          v11 = [(IDSDAccountController *)self userDefaults];
          [v11 setMultiple:0 remove:v10 appID:v8];

          v12 = NSHomeDirectory();
          v13 = [NSString stringWithFormat:@"%@/Library/Preferences/%@.plist", v12, v8];
          v14 = +[NSFileManager defaultManager];
          v22 = 0;
          v15 = [v14 removeItemAtPath:v13 error:&v22];
          v16 = v22;

          v17 = +[IMRGLog registration];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v18 = @"NO";
            if (v15)
            {
              v18 = @"YES";
            }

            v28 = v13;
            v29 = 2112;
            v30 = v18;
            v31 = 2112;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Deleting legacy account prefs {path: %@, success: %@, error: %@}", buf, 0x20u);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v6);
    }

    v19 = [(IDSDAccountController *)self userDefaults];
    [v19 setAppBool:1 forKey:@"DidCleanLegacyAccountPrefs"];
  }
}

- (void)_cleanupLegacyLocalAccounts
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SU cleanup", buf, 2u);
  }

  v31 = objc_alloc_init(NSMutableArray);
  v4 = [(IDSDAccountController *)self userDefaults];
  v5 = [v4 appBoolForKey:@"MigratedToNewDisabledState"];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = self;
  v6 = [(IDSDAccountController *)self accounts];
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [v11 service];
        v13 = [v12 pushTopic];

        if ([v13 isEqualToIgnoringCase:@"com.apple.private.alloy.willow"] && !objc_msgSend(v11, "accountType"))
        {
          [v31 addObject:v11];
          if (v5)
          {
            goto LABEL_15;
          }
        }

        else if (v5)
        {
          goto LABEL_15;
        }

        if (([v11 isAdHocAccount] & 1) == 0)
        {
          v14 = [v11 uniqueID];
          v15 = [(IDSDAccountController *)v33 isEnabledAccount:v14];

          if ((v15 & 1) == 0)
          {
            [v11 setIsUserDisabled:1];
          }
        }

LABEL_15:
        v16 = [v11 service];
        if ([v16 adHocServiceType] == 5)
        {
          v17 = [v11 accountType];

          if (v17 != 2)
          {
            [v31 addObject:v11];
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v18 = v33;
  if ((v5 & 1) == 0)
  {
    v19 = [(IDSDAccountController *)v33 userDefaults];
    [v19 setAppBool:1 forKey:@"MigratedToNewDisabledState"];
  }

  v37 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v20 = v31;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    v32 = 138412290;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = +[IMRGLog internalCleanup];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v25 smallDescription];
          *buf = v32;
          v43 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Removing account %@", buf, 0xCu);

          v18 = v33;
        }

        [(IDSDAccountController *)v18 _removeAccount:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v22);
  }

  v28 = [(IDSDAccountController *)v18 hasForcedReRegistered];
  v29 = +[IMRGLog registration];
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "We've already re-registered, ignoring...", buf, 2u);
    }
  }

  else
  {
    if (v30)
    {
      *buf = 67109120;
      LODWORD(v43) = 60;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Scheduling a re-register in %d seconds", buf, 8u);
    }

    im_dispatch_after_primary_queue();
  }

  im_dispatch_after_primary_queue();
}

- (void)_servicesChanged
{
  if ([(IDSDAccountController *)self isLocalSetupEnabled])
  {

    [(IDSDAccountController *)self _refreshLocalAccounts];
  }
}

- (void)_servicesRemoved:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"RemovedServices"];

  v6 = +[IMRGLog sub_services];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "All services to remove: %@", buf, 0xCu);
  }

  if ([v5 count])
  {
    v7 = [(NSMutableDictionary *)self->_accountIDMap allKeys];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:*(*(&v17 + 1) + 8 * v11)];
          v13 = [v12 service];
          v14 = [v13 identifier];
          v15 = [v5 containsObject:v14];

          if (v15)
          {
            [(IDSDAccountController *)self _removeAccount:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v16 = +[IDSDaemonPriorityQueueController sharedInstance];
    [v16 performBlockSyncPriority:&stru_100BDCF50];
  }
}

- (id)_createAccountWithDictionary:(id)a3 service:(id)a4 uniqueID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IDSDAccount alloc] initWithDictionary:v9 service:v8 uniqueID:v7];

  return v10;
}

- (void)_addAccountDuringInitialSetup:(id)a3
{
  accountIDMapLock = self->_accountIDMapLock;
  v5 = a3;
  [(NSRecursiveLock *)accountIDMapLock lock];
  accountIDMap = self->_accountIDMap;
  v7 = [v5 uniqueID];
  [(NSMutableDictionary *)accountIDMap setObject:v5 forKey:v7];

  v8 = self->_accountIDMapLock;

  [(NSRecursiveLock *)v8 unlock];
}

- (void)_attachOrphanedPhoneAliases:(id)a3 toRecipientAccounts:(id)a4 withAccountsToEnable:(id)a5
{
  v7 = a3;
  v8 = a4;
  v25 = a5;
  if ([v7 count])
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
      *buf = 138412290;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dropped aliases { count: %@ }", buf, 0xCu);
    }

    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
      *buf = 138412290;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Donor accounts { count: %@ }", buf, 0xCu);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v8;
    obj = v8;
    v26 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v26)
    {
      v24 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = v13;
          v14 = [v25 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * v13)];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v15 = v7;
          v16 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v28 + 1) + 8 * i);
                v21 = +[IMRGLog registration];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v37 = v20;
                  v38 = 2112;
                  v39 = v14;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding %@ to %@", buf, 0x16u);
                }

                [v14 addAliases:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v17);
          }

          v13 = v27 + 1;
        }

        while ((v27 + 1) != v26);
        v26 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v26);
    }

    v8 = v22;
  }
}

- (BOOL)_loadAndEnableStoredAccounts
{
  v3 = [(IDSDAccountController *)self userDefaults];
  v4 = [v3 copyValueForKey:@"services" appID:@"com.apple.identityservicesd"];

  v60 = v4;
  v5 = v4;
  v6 = self;
  v7 = [v5 _FTOptionallyDecompressData];
  v65 = JWDecodeDictionary();

  v71 = objc_alloc_init(NSMutableDictionary);
  v8 = [(IDSDServiceController *)self->_serviceController allServices];
  v9 = +[IMRGLog registration];
  p_isa = &v6->super.isa;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    *buf = 138412290;
    v101 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loaded services { count: %@ }", buf, 0xCu);

    v6 = p_isa;
  }

  v11 = [(IDSDAccountController *)v6 userDefaults];
  v73 = [v11 appBoolForKey:@"performed-user-intent-migrate"];

  v12 = p_isa;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v8;
  v13 = &uuid_unparse_upper_ptr;
  v66 = [obj countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v66)
  {
    v64 = *v95;
    v62 = kIDSServiceDefaultsEnabledAccounts;
    v63 = kIDSServiceDefaultsAccounts;
    do
    {
      for (i = 0; i != v66; i = i + 1)
      {
        if (*v95 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v94 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v80 = v15;
        v17 = [v15 preferencesDomain];
        v18 = [v65 objectForKeyedSubscript:v17];

        v19 = [v18 objectForKeyedSubscript:v63];
        v74 = [v18 objectForKeyedSubscript:v62];
        v13 = &uuid_unparse_upper_ptr;
        if (v18)
        {
          v67 = v18;
          v68 = v16;
          v69 = i;
          v70 = objc_alloc_init(NSMutableArray);
          v72 = objc_alloc_init(NSMutableArray);
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v81 = [v19 allKeys];
          v20 = [v81 countByEnumeratingWithState:&v90 objects:v108 count:16];
          v79 = v19;
          if (!v20)
          {
            goto LABEL_50;
          }

          v21 = v20;
          v22 = v19;
          v23 = *v91;
          while (1)
          {
            v24 = 0;
            do
            {
              if (*v91 != v23)
              {
                objc_enumerationMutation(v81);
              }

              v25 = *(*(&v90 + 1) + 8 * v24);
              v26 = [v22 objectForKeyedSubscript:v25];
              if (v26)
              {
                v27 = [v12 accountWithUniqueID:v25];
                if (v27)
                {
                  v28 = [v13[504] warning];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
                  {
                    v29 = [v27 accountSetupInfo];
                    *buf = 138412802;
                    v101 = v25;
                    v102 = 2112;
                    v103 = v29;
                    v104 = 2112;
                    *v105 = v26;
                    _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "We already have an existing account with for this uniqueID -- not loading { uniqueID: %@, existingAccountInfo: %@, newAccountInfo: %@ }", buf, 0x20u);

                    v13 = &uuid_unparse_upper_ptr;
                  }

                  goto LABEL_37;
                }

                v30 = [v12 _createAccountWithDictionary:v26 service:v80 uniqueID:v25];
                v28 = v30;
                if (!v30)
                {
                  v31 = [v13[504] warning];
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412802;
                    v101 = v25;
                    v102 = 2112;
                    v103 = v80;
                    v104 = 2112;
                    *v105 = v26;
                    _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Failed to create account { uniqueID: %@, service: %@, accountInfo: %@ }", buf, 0x20u);
                  }

                  goto LABEL_36;
                }

                v31 = [v30 serviceType];
                v32 = [v28 accountType];
                if ([v12[9] systemSupportsServiceType:v31 accountType:v32 isTemporary:{-[NSObject isTemporary](v28, "isTemporary")}])
                {
                  if (v32 || ([v80 wantsPhoneNumberAccount]& 1) != 0)
                  {
                    if ([v80 disabledOnTinkerWatch])
                    {
                      v33 = +[IDSPairingManager sharedInstance];
                      loga = [v33 isCurrentDeviceTinkerConfiguredWatch];

                      v12 = p_isa;
                      if (loga)
                      {
                        log = +[IMRGLog warning];
                        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138413314;
                          v101 = v25;
                          v102 = 2112;
                          v103 = v80;
                          v104 = 2112;
                          *v105 = v31;
                          *&v105[8] = 1024;
                          *&v105[10] = v32;
                          v106 = 2112;
                          v107 = v26;
                          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Tried to load a tinker disabled account -- dropping! { uniqueID: %@, service: %@, serviceType: %@, accountType: %d, accountInfo: %@ }", buf, 0x30u);
                        }

                        goto LABEL_35;
                      }
                    }

                    if ((v73 & 1) == 0)
                    {
                      [v28 loadAliasUserIntentMetadataIfNeeded];
                    }

                    if (v32 == 1)
                    {
                      [v72 addObject:v25];
                    }

                    [v12 _addAccountDuringInitialSetup:v28];
                    v13 = &uuid_unparse_upper_ptr;
                    if ([v74 containsObject:v25])
                    {
                      [v71 setObject:v28 forKeyedSubscript:v25];
                    }

LABEL_36:

                    v22 = v79;
LABEL_37:

                    goto LABEL_38;
                  }

                  v37 = +[IMRGLog warning];
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138413058;
                    v101 = v25;
                    v102 = 2112;
                    v103 = v31;
                    v104 = 1024;
                    *v105 = 0;
                    *&v105[4] = 2112;
                    *&v105[6] = v26;
                    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Tried to load a phone number account for a service that does not support phone number accounts -- dropping! { uniqueID: %@, serviceType: %@, accountType: %d, accountInfo: %@ }", buf, 0x26u);
                  }
                }

                else
                {
                  if (!v32)
                  {
                    v34 = [v28 aliases];
                    logb = [v34 count];

                    if (logb)
                    {
                      v35 = [v28 aliases];
                      [v70 addObject:v35];
                    }
                  }

                  v36 = +[IMRGLog warning];
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138413058;
                    v101 = v25;
                    v102 = 2112;
                    v103 = v31;
                    v104 = 1024;
                    *v105 = v32;
                    *&v105[4] = 2112;
                    *&v105[6] = v26;
                    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Tried to load account on a device that does not support this service/account type -- dropping! { uniqueID: %@, serviceType: %@, accountType: %d, accountInfo: %@ }", buf, 0x26u);
                  }

                  v12 = p_isa;
                }

LABEL_35:
                v13 = &uuid_unparse_upper_ptr;
                goto LABEL_36;
              }

LABEL_38:

              v24 = v24 + 1;
            }

            while (v21 != v24);
            v38 = [v81 countByEnumeratingWithState:&v90 objects:v108 count:16];
            v21 = v38;
            if (!v38)
            {
LABEL_50:

              if (([v80 shouldAutoRegisterAllHandles]& 1) == 0)
              {
                [v12 _attachOrphanedPhoneAliases:v70 toRecipientAccounts:v72 withAccountsToEnable:v71];
              }

              v16 = v68;
              i = v69;
              v18 = v67;
              v19 = v79;
              break;
            }
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      v66 = [obj countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v66);
  }

  v39 = [v13[504] registration];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [p_isa[1] count]);
    *buf = 138412290;
    v101 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Loaded accounts { count: %@ }", buf, 0xCu);
  }

  v41 = +[IMRGLog registration];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    sub_100920788();
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v42 = v71;
  v43 = [v42 countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v87;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v87 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v86 + 1) + 8 * j);
        v48 = objc_autoreleasePoolPush();
        [p_isa _enableAccountWithUniqueID:v47];
        objc_autoreleasePoolPop(v48);
      }

      v44 = [v42 countByEnumeratingWithState:&v86 objects:v99 count:16];
    }

    while (v44);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v49 = [v42 allValues];
  v50 = [v49 countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v83;
    do
    {
      for (k = 0; k != v51; k = k + 1)
      {
        if (*v83 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v82 + 1) + 8 * k);
        v55 = objc_autoreleasePoolPush();
        [v54 _cleanupAccount];
        objc_autoreleasePoolPop(v55);
      }

      v51 = [v49 countByEnumeratingWithState:&v82 objects:v98 count:16];
    }

    while (v51);
  }

  if ((v73 & 1) == 0)
  {
    v56 = [p_isa userDefaults];
    [v56 setAppBool:1 forKey:@"performed-user-intent-migrate"];

    v57 = +[IMRGLog registration];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Performed one time user intent migration on upgrade", buf, 2u);
    }
  }

  v58 = [p_isa[1] count] != 0;

  return v58;
}

- (void)_loadAndEnableStoredLegacyAccounts
{
  v2 = self;
  v3 = [(IDSDServiceController *)self->_serviceController allServices];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
    *buf = 138412290;
    v102 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loaded services { count: %@ }", buf, 0xCu);
  }

  v74 = +[NSMutableSet set];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v94 objects:v108 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v95;
    v64 = kIDSServiceDefaultsAccounts;
    v63 = kIDSServiceDefaultsEnabledAccounts;
    v76 = v2;
    v66 = *v95;
    v67 = v6;
    do
    {
      v10 = 0;
      v71 = v8;
      do
      {
        if (*v95 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v94 + 1) + 8 * v10);
        v12 = [v11 preferencesDomain];
        v13 = [v12 length];

        if (v13)
        {
          if (![v11 hadStandalonePreferences])
          {
            goto LABEL_59;
          }

          v14 = [v11 legacyPreferencesDomain];
          v15 = [NSMutableArray alloc];
          v16 = v11;
          v17 = [v11 preferencesDomain];
          v18 = [v15 initWithObjects:{v17, 0}];

          if (v14)
          {
            [v18 addObject:v14];
          }

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          obj = v18;
          v19 = [obj countByEnumeratingWithState:&v90 objects:v107 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v91;
LABEL_14:
            v22 = 0;
            while (1)
            {
              if (*v91 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v90 + 1) + 8 * v22);
              v24 = [(IDSDAccountController *)v2 userDefaults];
              v25 = [v24 copyKeyListForAppID:v23];

              if (v25)
              {
                break;
              }

              if (v20 == ++v22)
              {
                v20 = [obj countByEnumeratingWithState:&v90 objects:v107 count:16];
                v9 = v66;
                v6 = v67;
                v8 = v71;
                if (!v20)
                {
                  goto LABEL_57;
                }

                goto LABEL_14;
              }
            }

            v69 = v14;
            v70 = v10;
            v26 = [(IDSDAccountController *)v2 userDefaults];
            v72 = v25;
            v27 = [v26 copyMultipleForCurrentKeys:v25 appID:v23];

            v28 = [v27 objectForKeyedSubscript:v64];
            v68 = v27;
            v75 = [v27 objectForKeyedSubscript:v63];
            v29 = +[IMRGLog registration];
            v77 = v28;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v54 = [v28 allKeys];
              *buf = 138412802;
              v102 = v23;
              v103 = 2112;
              v104 = v54;
              v105 = 2112;
              v106 = v75;
              _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Defaults dictionary loaded { domain: %@, accounts: %@, enabledAccounts: %@ }", buf, 0x20u);

              v28 = v77;
            }

            v65 = v23;

            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v30 = [v28 allKeys];
            v31 = [v30 countByEnumeratingWithState:&v86 objects:v100 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v87;
              do
              {
                v34 = 0;
                do
                {
                  if (*v87 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v86 + 1) + 8 * v34);
                  v36 = [v28 objectForKeyedSubscript:v35];
                  v37 = [(IDSDAccountController *)v2 accountWithUniqueID:v35];
                  v38 = [[IDSDAccount alloc] initWithDictionary:v36 service:v16 uniqueID:v35];
                  v39 = v38;
                  if (v36)
                  {
                    if (v37)
                    {
                      v40 = +[IMRGLog warning];
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                      {
                        v41 = [v37 accountSetupInfo];
                        *buf = 138412802;
                        v102 = v35;
                        v103 = 2112;
                        v104 = v41;
                        v42 = v41;
                        v105 = 2112;
                        v106 = v36;
                        _os_log_fault_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "We already have an existing account with for this uniqueID -- not loading { uniqueID: %@, existingAccountInfo: %@, newAccountInfo: %@ }", buf, 0x20u);
                      }

LABEL_34:

                      v2 = v76;
                      goto LABEL_35;
                    }

                    if (!v38)
                    {
                      v40 = +[IMRGLog warning];
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 138412802;
                        v102 = v35;
                        v103 = 2112;
                        v104 = v16;
                        v105 = 2112;
                        v106 = v36;
                        _os_log_fault_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "Failed to create account { service: %@, uniqueID: %@, dicitonary: %@ }", buf, 0x20u);
                      }

                      goto LABEL_34;
                    }

                    [(IDSDAccountController *)v2 _addAccountDuringInitialSetup:v38];
                    if ([v75 containsObject:v35])
                    {
                      [v74 addObject:v35];
                    }
                  }

LABEL_35:

                  v34 = v34 + 1;
                  v28 = v77;
                }

                while (v32 != v34);
                v43 = [v30 countByEnumeratingWithState:&v86 objects:v100 count:16];
                v32 = v43;
              }

              while (v43);
            }

            v14 = v69;
            v10 = v70;
            v44 = v72;
            if (v69 && -[NSObject isEqualToString:](v65, "isEqualToString:", v69) && [v72 count])
            {
              v45 = +[IMRGLog registration];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v102 = v69;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Clearing legacy domain { domain: %@ }", buf, 0xCu);
              }

              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v46 = v72;
              v47 = [v46 countByEnumeratingWithState:&v82 objects:v99 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v83;
                do
                {
                  for (i = 0; i != v48; i = i + 1)
                  {
                    if (*v83 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v51 = *(*(&v82 + 1) + 8 * i);
                    v52 = [(IDSDAccountController *)v2 userDefaults];
                    [v52 setValue:0 forKey:v51 appID:v69];
                  }

                  v48 = [v46 countByEnumeratingWithState:&v82 objects:v99 count:16];
                }

                while (v48);
              }

              v53 = [(IDSDAccountController *)v2 userDefaults];
              [v53 synchronizeAppID:v69];

              v44 = v72;
              v28 = v77;
            }

            v9 = v66;
            v6 = v67;
            v8 = v71;
          }

LABEL_57:
        }

        else
        {
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v102 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Bad preference domain { service: %@ }", buf, 0xCu);
          }
        }

LABEL_59:
        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v94 objects:v108 count:16];
    }

    while (v8);
  }

  v55 = +[IMRGLog registration];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)v2->_accountIDMap count]];
    *buf = 138412290;
    v102 = v56;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Loaded legacy accounts { count: %@ }", buf, 0xCu);
  }

  v57 = +[IMRGLog registration];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v102 = v74;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Enabling legacy accounts { accounts: %@ }", buf, 0xCu);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v58 = v74;
  v59 = [v58 countByEnumeratingWithState:&v78 objects:v98 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v79;
    do
    {
      for (j = 0; j != v60; j = j + 1)
      {
        if (*v79 != v61)
        {
          objc_enumerationMutation(v58);
        }

        [(IDSDAccountController *)v2 _enableAccountWithUniqueID:*(*(&v78 + 1) + 8 * j)];
      }

      v60 = [v58 countByEnumeratingWithState:&v78 objects:v98 count:16];
    }

    while (v60);
  }
}

- (void)_storeAccounts
{
  if ([(IDSDAccountController *)self isLoading])
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Waiting on accounts to load, the account controller isn't ready yet", buf, 2u);
    }
  }

  else
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v23 = objc_autoreleasePoolPush();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(IDSDServiceController *)self->_serviceController allServices];
    v29 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v29)
    {
      v26 = kIDSServiceDefaultsAccounts;
      v27 = *v41;
      v25 = kIDSServiceDefaultsEnabledAccounts;
      v28 = v3;
      do
      {
        v4 = 0;
        do
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v4;
          v5 = *(*(&v40 + 1) + 8 * v4);
          context = objc_autoreleasePoolPush();
          v34 = +[NSMutableDictionary dictionary];
          v35 = +[NSMutableArray array];
          v30 = +[NSMutableDictionary dictionary];
          v31 = v5;
          v6 = [(IDSDAccountController *)self accountsOnService:v5];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v7 = v6;
          v8 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v37;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v37 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v36 + 1) + 8 * i);
                v13 = objc_autoreleasePoolPush();
                v14 = [v12 accountInfo];
                if (v14)
                {
                  v15 = [v12 uniqueID];

                  if (v15)
                  {
                    v16 = [v12 uniqueID];
                    [v34 setObject:v14 forKeyedSubscript:v16];
                  }
                }

                v17 = [v12 uniqueID];
                v18 = [(IDSDAccountController *)self isEnabledAccount:v17];

                if (v18)
                {
                  v19 = [v12 uniqueID];
                  [v35 addObject:v19];
                }

                objc_autoreleasePoolPop(v13);
              }

              v9 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v9);
          }

          [v30 setObject:v34 forKeyedSubscript:v26];
          [v30 setObject:v35 forKeyedSubscript:v25];
          v20 = [v34 count];
          v21 = [v31 preferencesDomain];
          if (v20)
          {
            v22 = v30;
          }

          else
          {
            v22 = 0;
          }

          v3 = v28;
          [v28 setObject:v22 forKeyedSubscript:v21];

          objc_autoreleasePoolPop(context);
          v4 = v33 + 1;
        }

        while ((v33 + 1) != v29);
        v29 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v29);
    }

    objc_autoreleasePoolPop(v23);
    [(IDSDAccountController *)self _persistAccounts:v3];
  }
}

- (id)accountsOnService:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v19 = objc_alloc_init(NSMutableArray);
  v20 = self;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_accountIDMap;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)v20->_accountIDMap objectForKey:*(*(&v21 + 1) + 8 * i), context];
        v10 = [v9 service];
        v11 = v10;
        if (v10 == v4)
        {

LABEL_10:
          [v19 addObject:v9];
          goto LABEL_11;
        }

        v12 = [v9 service];
        v13 = [v12 identifier];
        v14 = [v4 identifier];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          goto LABEL_10;
        }

LABEL_11:
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);

  return v19;
}

- (id)enabledAccountsOnService:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v18 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = self;
  obj = self->_accountIDMap;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)v20->_accountIDMap objectForKey:*(*(&v21 + 1) + 8 * i), context];
        v10 = [v9 service];
        v11 = v10;
        if (v10 == v4)
        {
        }

        else
        {
          v12 = [v9 service];
          v13 = [v12 identifier];
          v14 = [v4 identifier];
          v15 = [v13 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_12;
          }
        }

        if ([v9 isEnabled])
        {
          [v18 addObject:v9];
        }

LABEL_12:
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);

  return v18;
}

- (id)registeredAccountsOnService:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(NSMutableArray);
  if ([v4 adHocServiceType] != 5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(IDSDAccountController *)self accountsOnService:v4, 0];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 isRegistered])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)accountsOfAdHocType:(unsigned int)a3
{
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_accountIDMap;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:*(*(&v17 + 1) + 8 * i)];
        v12 = [v11 service];
        v13 = [v12 adHocServiceType];

        if (v13 == a3)
        {
          v14 = [v11 uniqueID];
          [v5 addObject:v14];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);

  return v5;
}

- (BOOL)hasActiveSMSAccount
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(IDSDAccountController *)self accounts];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = (i + 1))
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (![v6 accountType] && objc_msgSend(v6, "isEnabled") && objc_msgSend(v6, "registrationStatus") == 5 && (objc_msgSend(v6, "isAdHocAccount") & 1) == 0)
        {
          v3 = +[IMRGLog registration];
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v13 = v6;
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "  ** Found active SMS based account: %@", buf, 0xCu);
          }

          LOBYTE(v3) = 1;
          goto LABEL_16;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v3;
}

- (void)issueDependentIDQueriesWithCompletionBlock:(id)a3
{
  v23 = a3;
  im_assert_primary_base_queue();
  v4 = [(IDSDAccountController *)self accounts];
  v5 = [v4 _copyForEnumerating];

  group = dispatch_group_create();
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 1;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v6)
  {
    v7 = *v38;
    v24 = kIDSServiceDefaultsSentinelAlias;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if (([v9 isAdHocAccount] & 1) == 0 && objc_msgSend(v9, "isEnabled") && objc_msgSend(v9, "isRegistered") && (objc_msgSend(v9, "shouldRegisterUsingDSHandle") & 1) == 0)
        {
          v11 = [v9 prefixedURIStringsFromRegistration];
          v12 = [v11 firstObject];

          if ([v12 isEqualToIgnoringCase:v24])
          {

            v12 = 0;
          }

          v13 = [v9 registration];
          v14 = [v13 registrationCert];

          v15 = [v9 service];
          v16 = [v15 identifier];

          if (v12 && v14 && v16)
          {
            dispatch_group_enter(group);
            v17 = [IDSURI URIWithPrefixedURI:v12 withServiceLoggingHint:v16];
            v18 = +[IDSPeerIDManager sharedInstance];
            v47 = v17;
            v19 = [NSArray arrayWithObjects:&v47 count:1];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_10046BFA4;
            v32[3] = &unk_100BDCF78;
            v34 = v45;
            v35 = v43;
            v36 = v41;
            v33 = group;
            LOBYTE(v22) = 0;
            [v18 startQueryForURIs:v19 fromIdentity:v14 fromURI:v17 fromService:v16 forSending:0 forceToServer:0 clientRequestedForceQuery:v22 reason:@"GDRQuery" completionBlock:v32];
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v6);
  }

  v20 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10046C030;
  block[3] = &unk_100BDCD70;
  v28 = v23;
  v29 = v45;
  v30 = v41;
  v31 = v43;
  v21 = v23;
  dispatch_group_notify(group, v20, block);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
}

- (void)issueGetDependentRequest
{
  v2 = [(IDSDAccountController *)self accounts];
  v3 = [v2 _copyForEnumerating];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (([v9 isAdHocAccount] & 1) == 0)
        {
          v10 = [v9 registration];
          v11 = [v10 dependentRegistrationResponseCode];
          v12 = [v11 integerValue];

          if ([v9 isEnabled])
          {
            if ([v9 isRegistered])
            {
              v13 = v12 == 0;
            }

            else
            {
              v13 = 0;
            }

            if (v13)
            {
              [v9 _issueDependentCheck];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_resumeGDRReAuthenticateIfNecessary
{
  v2 = [(IDSDAccountController *)self accounts];
  v3 = [v2 _copyForEnumerating];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 isAdHocAccount] & 1) == 0)
        {
          [v9 gdrReAuthenticateIfNecessary];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)updateExpiredDependent
{
  v2 = [(IDSDAccountController *)self accounts];
  v3 = [v2 _copyForEnumerating];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isAdHocAccount] & 1) == 0 && objc_msgSend(v9, "isEnabled") && objc_msgSend(v9, "isRegistered"))
        {
          v10 = [v9 registration];
          v11 = [v10 dependentRegistrationsTTL];

          if (v11)
          {
            [v11 timeIntervalSinceNow];
            if (v12 < 1.0)
            {
              [v9 _issueDependentCheck];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)issueGetDependentRequestForAccount:(id)a3
{
  v3 = a3;
  if (([v3 isAdHocAccount] & 1) == 0 && objc_msgSend(v3, "isEnabled") && objc_msgSend(v3, "isRegistered"))
  {
    [v3 _issueDependentCheck];
  }
}

- (void)issueGetDependentAndGetHandlesRequest
{
  v2 = [(IDSDAccountController *)self accounts];
  v3 = [v2 _copyForEnumerating];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 isAdHocAccount] & 1) == 0 && objc_msgSend(v9, "isEnabled") && objc_msgSend(v9, "isRegistered"))
        {
          [v9 _issueDependentCheck];
          [v9 _updateHandles:1];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)hasiCloudAccount
{
  v3 = +[IDSDServiceController sharedInstance];
  v4 = [v3 iCloudService];
  v5 = [(IDSDAccountController *)self appleIDAccountOnService:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)isiCloudSignedIn
{
  v2 = [(IDSSystemAccountAdapter *)self->_systemAccountAdapter iCloudSystemAccountWithError:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isiTunesSignedIn
{
  v2 = [(IDSSystemAccountAdapter *)self->_systemAccountAdapter iTunesSystemAccountWithError:0];
  v3 = v2 != 0;

  return v3;
}

- (void)_registerForAllRegistrationsSucceeded
{
  v3 = [(IDSDAccountController *)self registrationListener];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10046C80C;
  v5[3] = &unk_100BDCFA0;
  v5[4] = self;
  v4 = [v3 addBlockForRegistrationCompletion:v5];
}

- (void)_kickRemoteCacheWipe
{
  v3 = [(IDSDAccountController *)self userDefaults];
  v4 = [v3 appValueForKey:@"triggeredRemoteSessionVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 integerValue];
    if (v5 >= 1)
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v33 = v5;
        v34 = 2048;
        v35 = 1;
        v36 = 2112;
        v37 = &off_100C3DC58;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not triggering remote session update, already updated {appIntegerValue: %llu, latestVersion: %llu, interestingServices: %@}", buf, 0x20u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [IDSServerBag sharedInstanceForBagType:0];
  v6 = [v7 objectForKey:@"ids-upgrade-triggered-reg-update-msg"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue]& 1) == 0)
  {
    v19 = +[IMRGLog registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v33 = v6;
      v34 = 2048;
      v35 = v5;
      v36 = 2048;
      v37 = 1;
      v38 = 2112;
      v39 = &off_100C3DC70;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not triggering remote session update, server bag disabled {bagDisabledValue: %@, appIntegerValue: %llu, latestVersion: %llu, interestingServices: %@}", buf, 0x2Au);
    }
  }

  else
  {
    v8 = [IMRGLog registration:v6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v33 = v5;
      v34 = 2048;
      v35 = 1;
      v36 = 2112;
      v37 = &off_100C3DC88;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Triggering remote session update {appIntegerValue: %llu, latestVersion: %llu, interestingServices: %@}", buf, 0x20u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [&off_100C3DCA0 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(&off_100C3DCA0);
          }

          v13 = [(IDSDServiceController *)self->_serviceController serviceWithIdentifier:*(*(&v26 + 1) + 8 * v12)];
          if (v13)
          {
            v14 = [(IDSDAccountController *)self accountsOnService:v13];
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v23;
              do
              {
                v18 = 0;
                do
                {
                  if (*v23 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [*(*(&v22 + 1) + 8 * v18) _updateSessionsForAllRegisteredURIsWithSendReasonPathID:31];
                  v18 = v18 + 1;
                }

                while (v16 != v18);
                v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v16);
            }
          }

          v12 = v12 + 1;
        }

        while (v12 != v10);
        v10 = [&off_100C3DCA0 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    v19 = [(IDSDAccountController *)self userDefaults];
    [v19 setAppValue:&off_100C3C718 forKey:@"triggeredRemoteSessionVersion"];
    v6 = v20;
    v4 = v21;
  }

LABEL_28:
}

- (id)cloudPairedIDForDeviceID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deviceProperties objectForKey:a3];
  v4 = [v3 objectForKey:@"nsuuid"];

  return v4;
}

- (id)deviceIDForPushToken:(id)a3
{
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_accountIDMap;
  v22 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v22)
  {
    v6 = *v30;
    v23 = v5;
    v20 = *v30;
    v21 = self;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:*(*(&v29 + 1) + 8 * v7)];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v24 = v8;
        v9 = [v8 dependentRegistrations];
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v25 + 1) + 8 * i);
              v15 = [v14 _dataForKey:@"push-token"];
              v16 = [v15 isEqualToData:v4];

              if (v16)
              {
                v18 = [v14 _dictionaryForKey:@"private-device-data"];
                v17 = [v18 _stringForKey:IDSPrivateDeviceDataUniqueID];

                v5 = v23;
                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v7 + 1;
        v5 = v23;
        v6 = v20;
        self = v21;
      }

      while (v7 != v22);
      v17 = 0;
      v22 = [(NSMutableDictionary *)v23 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v22);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)pushTokenForDeviceID:(id)a3
{
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_accountIDMap;
  v23 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v23)
  {
    v6 = *v32;
    v7 = IDSPrivateDeviceDataUniqueID;
    v25 = v5;
    v21 = *v32;
    v22 = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v24 = v8;
        v9 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:*(*(&v31 + 1) + 8 * v8), v21, v22];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v26 = v9;
        v10 = [v9 dependentRegistrations];
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [v15 _dictionaryForKey:@"private-device-data"];
              v17 = [v16 _stringForKey:v7];
              v18 = [v17 isEqualToIgnoringCase:v4];

              if (v18)
              {
                v19 = [v15 _dataForKey:@"push-token"];

                v5 = v25;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v24 + 1;
        v5 = v25;
        v6 = v21;
        self = v22;
      }

      while ((v24 + 1) != v23);
      v19 = 0;
      v23 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v23);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  return v19;
}

- (id)deviceNameForDeviceID:(id)a3
{
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_accountIDMap;
  v23 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v23)
  {
    v6 = *v32;
    v7 = IDSPrivateDeviceDataUniqueID;
    v25 = v5;
    v21 = *v32;
    v22 = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v24 = v8;
        v9 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:*(*(&v31 + 1) + 8 * v8), v21, v22];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v26 = v9;
        v10 = [v9 dependentRegistrations];
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [v15 _dictionaryForKey:@"private-device-data"];
              v17 = [v16 _stringForKey:v7];
              v18 = [v17 isEqualToIgnoringCase:v4];

              if (v18)
              {
                v19 = [v15 _stringForKey:IDSDevicePropertyName];

                v5 = v25;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v24 + 1;
        v5 = v25;
        v6 = v21;
        self = v22;
      }

      while ((v24 + 1) != v23);
      v19 = 0;
      v23 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v23);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  return v19;
}

- (id)publicKeyForDeviceID:(id)a3
{
  v29 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_accountIDMap;
  v25 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v25)
  {
    v5 = *v35;
    v6 = IDSDevicePropertyPrivateDeviceData;
    v7 = IDSPrivateDeviceDataUniqueID;
    v27 = v4;
    v23 = *v35;
    v24 = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v26 = v8;
        v9 = [(NSMutableDictionary *)self->_accountIDMap objectForKey:*(*(&v34 + 1) + 8 * v8)];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v28 = v9;
        v10 = [v9 dependentRegistrations];
        v11 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v31;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v31 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v30 + 1) + 8 * i);
              v16 = [v15 _dictionaryForKey:v6];
              v17 = [v16 _stringForKey:v7];
              v18 = [v17 isEqualToIgnoringCase:v29];

              if (v18)
              {
                v21 = [v15 _dictionaryForKey:IDSDevicePropertyClientData];
                v20 = [v21 _dataForKey:_IDSIdentityClientDataMessageProtectionIdentityKey];

                p_super = &v27->super.super;
                goto LABEL_20;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v26 + 1;
        v4 = v27;
        v5 = v23;
        self = v24;
      }

      while ((v26 + 1) != v25);
      v25 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v25);
  }

  p_super = +[IMRGLog registration];
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v29;
    _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "No public key found {deviceID: %@}", buf, 0xCu);
  }

  v20 = 0;
LABEL_20:

  return v20;
}

- (void)deliveryController:(id)a3 uniqueID:(id)a4 isConnected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v5)
    {
      v8 = @"YES";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received connected change to %@ for device with uniqueID %@", &v12, 0x16u);
  }

  v9 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v10 = v9;
  if (v5)
  {
    v11 = kIDSDeviceStatePropertiesIsConnected;
  }

  else
  {
    v11 = 0;
  }

  [v9 setState:v11 forProperty:kIDSDeviceStatePropertiesIsConnected deviceUniqueID:v6];
}

- (void)deliveryController:(id)a3 uniqueID:(id)a4 isNearby:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v5)
    {
      v8 = @"YES";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received nearby change to %@ for device with uniqueID %@", &v12, 0x16u);
  }

  v9 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v10 = v9;
  if (v5)
  {
    v11 = kIDSDeviceStatePropertiesIsNearby;
  }

  else
  {
    v11 = 0;
  }

  [v9 setState:v11 forProperty:kIDSDeviceStatePropertiesIsNearby deviceUniqueID:v6];
}

- (void)deliveryController:(id)a3 uniqueID:(id)a4 isCloudConnected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v5)
    {
      v8 = @"YES";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received cloud connected change to %@ for device with uniqueID %@", &v12, 0x16u);
  }

  v9 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v10 = v9;
  if (v5)
  {
    v11 = kIDSDeviceStatePropertiesIsCloudConnected;
  }

  else
  {
    v11 = 0;
  }

  [v9 setState:v11 forProperty:kIDSDeviceStatePropertiesIsCloudConnected deviceUniqueID:v6];
}

- (void)setNSUUID:(id)a3 onDeviceWithUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    deviceProperties = self->_deviceProperties;
    if (!deviceProperties)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v10 = self->_deviceProperties;
      self->_deviceProperties = Mutable;

      deviceProperties = self->_deviceProperties;
    }

    v11 = [(NSMutableDictionary *)deviceProperties objectForKey:v7];
    v12 = [[NSMutableDictionary alloc] initWithDictionary:v11];
    v13 = v12;
    if (v6)
    {
      CFDictionarySetValue(v12, IDSDevicePropertyNSUUID, v6);
    }

    else
    {
      [(__CFDictionary *)v12 removeObjectForKey:IDSDevicePropertyNSUUID];
    }

    [(NSMutableDictionary *)self->_deviceProperties setObject:v13 forKey:v7];
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_deviceProperties;
      *buf = 138412290;
      v38 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "New properties after set %@", buf, 0xCu);
    }

    v29 = v13;
    v31 = v11;

    [(IDSDAccountController *)self saveDevicePropertiesWithOldKeys:0];
    if (v6)
    {
      v17 = +[IDSUTunDeliveryController sharedInstance];
      [v17 deviceWithUniqueID:v7 updatedUUID:v6];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = +[IDSDServiceController sharedInstance];
    v19 = [v18 allServices];

    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          v25 = +[IDSDaemon sharedInstance];
          v26 = [v24 pushTopic];
          v27 = [v25 broadcasterForTopic:v26 messageContext:0];

          [v27 device:v7 nsuuidChanged:v6];
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }

    v28 = +[IMRGLog registration];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finished broadcasting nsuuid %@ to all services", buf, 0xCu);
    }

    v14 = v31;
  }

  else
  {
    v14 = +[IMRGLog warning];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1009207F0();
    }
  }
}

- (id)propertiesForDeviceWithUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_deviceProperties objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateDeviceProperties
{
  v3 = +[IDSDServiceController sharedInstance];
  v8 = [v3 serviceWithIdentifier:@"com.apple.private.alloy.icloudpairing"];

  v4 = v8;
  if (v8)
  {
    v5 = [(IDSDAccountController *)self accountsOnService:?];
    if (![v5 count])
    {
      v6 = [(NSMutableDictionary *)self->_deviceProperties allKeys];
      deviceProperties = self->_deviceProperties;
      self->_deviceProperties = 0;

      [(IDSDAccountController *)self saveDevicePropertiesWithOldKeys:v6];
    }

    v4 = v8;
  }
}

- (void)updateDevicePropertiesWithDevices:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v10 = IDSDevicePropertyPrivateDeviceData;
    v11 = IDSPrivateDeviceDataUniqueID;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [*(*(&v33 + 1) + 8 * v12) objectForKey:v10];
        v14 = [v13 _stringForKey:v11];
        if (v14)
        {
          [v5 addObject:v14];
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v8);
  }

  v15 = [[NSMutableDictionary alloc] initWithDictionary:self->_deviceProperties];
  v16 = [NSMutableSet alloc];
  v17 = [(NSMutableDictionary *)self->_deviceProperties allKeys];
  v18 = [v16 initWithArray:v17];

  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device Properties - Current UniqueIDs: %@", buf, 0xCu);
  }

  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device Properties - New Unique IDs: %@", buf, 0xCu);
  }

  [v18 minusSet:v5];
  v21 = +[IMRGLog registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Device Properties - Old Unique IDs: %@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = v18;
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(NSMutableDictionary *)v15 removeObjectForKey:*(*(&v29 + 1) + 8 * v26), v29];
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v24);
  }

  deviceProperties = self->_deviceProperties;
  self->_deviceProperties = v15;

  v28 = [v22 allObjects];
  [(IDSDAccountController *)self saveDevicePropertiesWithOldKeys:v28];
}

- (void)saveDevicePropertiesWithOldKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(IDSDAccountController *)self userDefaults];
    [v5 setMultiple:0 remove:v4 appID:@"com.apple.ids.deviceproperties"];
  }

  if ([(NSMutableDictionary *)self->_deviceProperties count])
  {
    v6 = [(IDSDAccountController *)self userDefaults];
    [v6 setMultiple:self->_deviceProperties remove:0 appID:@"com.apple.ids.deviceproperties"];
  }

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    deviceProperties = self->_deviceProperties;
    *buf = 138412546;
    v36 = deviceProperties;
    v37 = 2112;
    v38 = @"com.apple.ids.deviceproperties";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saving device properties settings: %@   (domain: %@)", buf, 0x16u);
  }

  v9 = [(IDSDAccountController *)self userDefaults];
  [v9 synchronizeAppID:@"com.apple.ids.deviceproperties"];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v23 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = +[IDSDServiceController sharedInstance];
        v13 = [v12 allServices];

        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            v17 = 0;
            do
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * v17);
              v19 = +[IDSDaemon sharedInstance];
              v20 = [v18 pushTopic];
              v21 = [v19 broadcasterForTopic:v20 messageContext:0];

              [v21 device:v11 nsuuidChanged:0];
              v17 = v17 + 1;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }

        v10 = v10 + 1;
      }

      while (v10 != v24);
      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }
}

- (void)loadDeviceProperties
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading device properties", buf, 2u);
  }

  v4 = [(IDSDAccountController *)self userDefaults];
  v5 = [v4 copyKeyListForAppID:@"com.apple.ids.deviceproperties"];

  deviceProperties = self->_deviceProperties;
  self->_deviceProperties = 0;

  v7 = &off_1009AB000;
  if (v5)
  {
    [(IDSDAccountController *)self userDefaults];
    v9 = v8 = self;
    v10 = [v9 copyMultipleForCurrentKeys:v5 appID:@"com.apple.ids.deviceproperties"];

    if (v10)
    {
      v41 = v5;
      v40 = v10;
      v11 = [[NSMutableDictionary alloc] initWithDictionary:v10];
      v12 = v8->_deviceProperties;
      v8->_deviceProperties = v11;

      context = objc_autoreleasePoolPush();
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v13 = v8->_deviceProperties;
      v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v48 objects:v54 count:16];
      self = v8;
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v49;
        v42 = IDSDevicePropertyNSUUID;
        v18 = &_dispatch_main_q_ptr;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v49 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v48 + 1) + 8 * i);
            v21 = [(NSMutableDictionary *)self->_deviceProperties objectForKey:v20, context];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v21 objectForKey:v42], v43 = v16, v22 = v15, v23 = v17, v24 = v18, v25 = v13, v26 = self, v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v27, self = v26, v13 = v25, v18 = v24, v17 = v23, v15 = v22, v16 = v43, (isKindOfClass & 1) == 0))
            {
              if (!v16)
              {
                v16 = objc_alloc_init(NSMutableArray);
              }

              [(NSMutableDictionary *)v16 addObject:v20];
            }
          }

          v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      v7 = &off_1009AB000;
      if ([(NSMutableDictionary *)v16 count])
      {
        v29 = +[IMRGLog registration];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v16;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " => Loaded device properties -- found bad keys! {keysToDelete: %@}", buf, 0xCu);
        }

        [(NSMutableDictionary *)self->_deviceProperties removeObjectsForKeys:v16];
        v30 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10046EBD0;
        block[3] = &unk_100BD6E40;
        block[4] = self;
        v47 = v16;
        dispatch_async(v30, block);
      }

      objc_autoreleasePoolPop(context);
      v31 = +[IMRGLog registration];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_deviceProperties;
        *buf = 138412290;
        v53 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " => Loaded device properties %@", buf, 0xCu);
      }

      v5 = 0;
    }

    else
    {
      self = v8;
    }
  }

  else
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => No device properties loaded", buf, 2u);
    }
  }

  if (!self->_deviceProperties)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v34 = self->_deviceProperties;
    self->_deviceProperties = Mutable;
  }

  v35 = objc_alloc_init(NSMutableDictionary);
  v36 = self->_deviceProperties;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = *(v7 + 143);
  v44[2] = sub_10046EBDC;
  v44[3] = &unk_100BDCFC8;
  v37 = v35;
  v45 = v37;
  [(NSMutableDictionary *)v36 enumerateKeysAndObjectsUsingBlock:v44];
  if ([v37 count])
  {
    v38 = +[IDSUTunDeliveryController sharedInstance];
    [v38 setDeviceUniqueIDToCBUUID:v37];
  }
}

- (BOOL)isiCloudHSA2
{
  v3 = [(IDSDServiceController *)self->_serviceController iCloudService];
  v4 = [(IDSDAccountController *)self appleIDAccountOnService:v3];

  if (v4 && [v4 accountType] == 1)
  {
    v5 = [v4 dsID];
    v6 = [v4 loginID];
    v7 = IMWeakLinkClass();
    if ([v7 isAccountsFrameworkAvailable])
    {
      v8 = [v7 sharedInstance];
      if (v8)
      {
        v9 = sub_1004508E4(v5);
        v10 = [v8 authKitAccountWithDSID:v9];
        if (v10)
        {
          goto LABEL_11;
        }

        v15 = 0;
        v10 = [v8 authKitAccountWithAppleID:v6 error:&v15];
        v11 = v15;
        if (v11)
        {
          v12 = +[IMRGLog registration];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error fetching authkit account with AppleID. { error: %@ }", buf, 0xCu);
          }
        }

        if (v10)
        {
LABEL_11:
          v13 = [v8 securityLevelForAccount:v10] == 4;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)authKitAccountUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 registrationStatus];
  v6 = [v4 serviceType];
  v7 = [v4 profileID];

  v8 = (v5 - 1) < 0xFFFFFFFFFFFFFFFELL;
  if (v7)
  {
    v9 = sub_1004508E4(v7);
    if (v9)
    {
      if ([v6 isEqualToIgnoringCase:@"iMessage"])
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      if ([v6 isEqualToIgnoringCase:@"FaceTime"])
      {
        v10 = 5;
      }

      if (v10)
      {
        authkitQueue = self->_authkitQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10046EFA0;
        block[3] = &unk_100BDCFF0;
        v13 = v9;
        v14 = v10;
        v15 = v8;
        dispatch_async(authkitQueue, block);
      }
    }
  }
}

- (id)deviceCertificateForService:(id)a3 uri:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDAccountController *)self accountWithServiceName:v6 aliasURI:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 primaryRegistration];
    v11 = [v10 registrationCert];

    if (v11)
    {
      goto LABEL_9;
    }

    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v13 = "Couldn't find device certificate (service: %@)  (uri: %@)";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v15, 0x16u);
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v13 = "Couldn't find account (service %@)  (uri: %@)";
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end