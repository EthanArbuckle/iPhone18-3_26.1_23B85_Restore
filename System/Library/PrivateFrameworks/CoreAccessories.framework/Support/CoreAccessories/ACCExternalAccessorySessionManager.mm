@interface ACCExternalAccessorySessionManager
+ (id)sharedManager;
+ (unsigned)_generateSessionID;
+ (void)initializeSessionClose;
- (ACCExternalAccessorySessionManager)init;
- (BOOL)_continueOpenSessionForSingleSessionPerEAProtocol:(id)a3 fromPrimaryAccessoryUUID:(id)a4 fromClient:(id)a5;
- (BOOL)_eaProtocolHasValidMatchActionForOpeningSession:(id)a3;
- (BOOL)_isSessionOpenForProtocol:(id)a3 filterPrimaryUUID:(id)a4 filterClientBundleID:(id)a5;
- (BOOL)_sessionUUIDClientSupportsBackgroundEA:(id)a3;
- (BOOL)closeSessionsForPrimaryAccessoryUUID:(id)a3;
- (BOOL)eaClientHasOpenEASession:(id)a3;
- (BOOL)handleIncomingExternalAccessoryData:(id)a3 forEndpointUUID:(id)a4;
- (BOOL)openSocketFromAccessoryToApp:(id)a3;
- (BOOL)openSocketFromAppToAccessory:(id)a3;
- (BOOL)outgoingEADataFromClientAvailable:(id)a3;
- (id)_accessoryForPrimaryUUID:(id)a3;
- (id)_appBundleIDForSessionUUID:(id)a3;
- (id)_clientsOwningSessionForProtocol:(id)a3 withAccessoryUUID:(id)a4;
- (id)_copySessionInfoDictionaryForSessionUUID:(id)a3;
- (id)_eaSessionUUIDsOwnedByClientBundleID:(id)a3;
- (id)_internalCloseSessionForEASessionUUID:(id)a3 informAccessory:(BOOL)a4;
- (id)_sessionInfoMatchingProtocol:(id)a3 withPrimaryAccessoryUUID:(id)a4;
- (id)createSessionForProtocol:(id)a3 fromPrimaryAccessoryUUID:(id)a4 fromClient:(id)a5 result:(BOOL *)a6;
- (id)eaSessionUUIDForEndpointUUID:(id)a3;
- (id)eaSessionUUIDForSessionID:(unsigned __int16)a3;
- (id)sessionInfoDictionaryForSessionUUID:(id)a3;
- (void)_eaNativeDataArrived:(id)a3;
- (void)_handleApplicationStateChange:(id)a3;
- (void)_sendSessionCloseNotification;
- (void)_sendSessionOpenNotification;
- (void)startIncomingDataNotificationsForEASessionUUID:(id)a3;
- (void)stopIncomingDataNotificationsForEASessionUUID:(id)a3;
@end

@implementation ACCExternalAccessorySessionManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__ACCExternalAccessorySessionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once_6 != -1)
  {
    dispatch_once(&sharedManager_once_6, block);
  }

  v2 = sharedManager_sharedInstance_6;

  return v2;
}

uint64_t __51__ACCExternalAccessorySessionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_6 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

+ (unsigned)_generateSessionID
{
  if ((_generateSessionID_sessionID + 1) >> 16)
  {
    v2 = 0;
  }

  else
  {
    v2 = _generateSessionID_sessionID + 1;
  }

  _generateSessionID_sessionID = v2;
  return v2;
}

- (ACCExternalAccessorySessionManager)init
{
  v18.receiver = self;
  v18.super_class = ACCExternalAccessorySessionManager;
  v2 = [(ACCExternalAccessorySessionManager *)&v18 init];
  if (v2)
  {
    signal(13, 1);
    v3 = objc_alloc_init(NSLock);
    openEASessionsLock = v2->_openEASessionsLock;
    v2->_openEASessionsLock = v3;

    [(NSLock *)v2->_openEASessionsLock setName:@"com.apple.accessoryd.openEASessions.lock"];
    v5 = +[NSMutableSet set];
    openEASessions = v2->_openEASessions;
    v2->_openEASessions = v5;

    v7 = objc_alloc_init(NSLock);
    v8 = v2->_openEASessionsLock;
    v2->_openEASessionsLock = v7;

    [(NSLock *)v2->_openEASessionsLock setName:@"com.apple.accessoryd.openEASessionHandlers.lock"];
    v9 = +[NSMutableDictionary dictionary];
    openEASessionHandlers = v2->_openEASessionHandlers;
    v2->_openEASessionHandlers = v9;

    v11 = +[NSMutableDictionary dictionary];
    openEASessionUUIDsForEndpointUUID = v2->_openEASessionUUIDsForEndpointUUID;
    v2->_openEASessionUUIDsForEndpointUUID = v11;

    v13 = +[NSMutableDictionary dictionary];
    pidForOpenSessionUUID = v2->_pidForOpenSessionUUID;
    v2->_pidForOpenSessionUUID = v13;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_eaNativeDataArrived:" name:ACCTransportEANative_DataArrivedNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"_handleApplicationStateChange:" name:@"ACCPlatformApplicationNotificationStateChanged" object:0];
  }

  return v2;
}

- (BOOL)_continueOpenSessionForSingleSessionPerEAProtocol:(id)a3 fromPrimaryAccessoryUUID:(id)a4 fromClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:v8 filterPrimaryUUID:v9 filterClientBundleID:0])
  {
    v11 = [v10 bundleID];
    v12 = [(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:v8 filterPrimaryUUID:v9 filterClientBundleID:v11];

    if (v12)
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v13 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v13 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v10 bundleID];
        v26 = 138412546;
        v27 = v18;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "The same EA client %@ already has an open session for protocol %@", &v26, 0x16u);
      }

      goto LABEL_16;
    }

    v13 = [(ACCExternalAccessorySessionManager *)self _clientsOwningSessionForProtocol:v8 withAccessoryUUID:v9];
    if (![v13 count])
    {
LABEL_16:
      v14 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v15 = [v13 firstObject];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v16 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v16 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v8;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Client currently owning EA session for protocol %@ is %@", &v26, 0x16u);
    }

    v20 = [v10 bundleID];
    if (platform_system_isApplicationInForeground(v20))
    {
    }

    else
    {
      v21 = platform_system_isApplicationInForeground(v15);

      if (v21)
      {
        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    v22 = [(ACCExternalAccessorySessionManager *)self _sessionInfoMatchingProtocol:v8 withPrimaryAccessoryUUID:v9];
    if ([v22 count])
    {
      v23 = [v22 firstObject];
      v24 = [v23 objectForKey:kACCExternalAccessorySessionUUIDKey];
      [(ACCExternalAccessorySessionManager *)self _accessoryCloseSessionForEASessionUUID:v24 informAccessory:1];
    }

    v14 = 1;
    goto LABEL_29;
  }

  v14 = 1;
LABEL_31:

  return v14;
}

- (id)_internalCloseSessionForEASessionUUID:(id)a3 informAccessory:(BOOL)a4
{
  v35 = a4;
  v5 = a3;
  v6 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:v5];
  v7 = [v6 objectForKey:kACCExternalAccessoryProtocolNameKey];
  v8 = [v6 objectForKey:kACCExternalAccessoryPrimaryUUID];
  if ([(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:v7 filterPrimaryUUID:0 filterClientBundleID:0])
  {
    v9 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [v9 lock];

    v10 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
    v11 = [v10 objectForKey:v5];

    if (v11)
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v12 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v12 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "removing ACCExternalAccessorySessionBasic for eaSessionUUID %@", &buf, 0xCu);
      }

      [v11 closeDataPipes];
      v16 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
      [v16 removeObjectForKey:v5];
    }

    v17 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [v17 unlock];

    v18 = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
    v19 = [v18 objectForKey:v8];

    if (v19)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__3;
      v42 = __Block_byref_object_dispose__3;
      v43 = 0;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __92__ACCExternalAccessorySessionManager__internalCloseSessionForEASessionUUID_informAccessory___block_invoke;
      v36[3] = &unk_1002288F0;
      v37 = v5;
      p_buf = &buf;
      [v19 enumerateObjectsUsingBlock:v36];
      if (*(*(&buf + 1) + 40))
      {
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v20 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v20 = &_os_log_default;
          v21 = &_os_log_default;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [ACCExternalAccessorySessionManager _internalCloseSessionForEASessionUUID:? informAccessory:?];
        }

        [v19 removeObject:*(*(&buf + 1) + 40)];
      }

      _Block_object_dispose(&buf, 8);
    }

    v14 = [v6 copy];
    v22 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [v22 lock];

    v23 = [(ACCExternalAccessorySessionManager *)self openEASessions];
    [v23 removeObject:v6];

    v24 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [v24 unlock];

    if (v35)
    {
      v25 = [v14 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
      v26 = [v25 copy];

      platform_externalAccessory_closeExternalAccessorySession(v26, v14);
    }

    v27 = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
    v28 = [v27 objectForKey:v5];

    if (v28)
    {
      v29 = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
      [v29 removeObjectForKey:v5];
    }

    [(ACCExternalAccessorySessionManager *)self _sendSessionCloseNotification];
    v30 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [v30 lock];

    if (gLogObjects && gNumLogObjects >= 10)
    {
      v31 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v31 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [(ACCExternalAccessorySessionManager *)v5 _internalCloseSessionForEASessionUUID:v31 informAccessory:?];
    }

    v33 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [v33 unlock];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v11 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessorySessionManager _internalCloseSessionForEASessionUUID:informAccessory:];
    }

    v14 = 0;
  }

  return v14;
}

void __92__ACCExternalAccessorySessionManager__internalCloseSessionForEASessionUUID_informAccessory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)openSocketFromAccessoryToApp:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:v4];
  v6 = [v5 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
  platform_externalAccessory_openSocketFromAccessoryToApp(v6, v5);
  v7 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v7 lock];

  v8 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [v8 objectForKey:v4];

  v10 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v10 lock];

  if (v9)
  {
    [v9 openPipeToApp];
  }

  return 1;
}

- (BOOL)openSocketFromAppToAccessory:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:v4];
  v6 = [v5 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
  platform_externalAccessory_openSocketFromAppToAccessory(v6, v5);
  v7 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v7 lock];

  v8 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [v8 objectForKey:v4];

  v10 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v10 unlock];

  if (v9)
  {
    [v9 openPipeFromApp];
  }

  return 1;
}

- (BOOL)outgoingEADataFromClientAvailable:(id)a3
{
  v3 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:a3];
  v4 = [v3 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
  v5 = platform_externalAccessory_outgoingEADataFromClientAvailable(v4, v3);

  return v5;
}

- (void)stopIncomingDataNotificationsForEASessionUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v5 lock];

  v6 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [v6 objectForKey:v4];

  v7 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v7 unlock];

  v8 = v9;
  if (v9)
  {
    [v9 stopIncomingDataNotifications];
    v8 = v9;
  }
}

- (void)startIncomingDataNotificationsForEASessionUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v5 lock];

  v6 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [v6 objectForKey:v4];

  v7 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [v7 unlock];

  v8 = v9;
  if (v9)
  {
    [v9 startIncomingDataNotifications];
    v8 = v9;
  }
}

- (BOOL)closeSessionsForPrimaryAccessoryUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 copy];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __75__ACCExternalAccessorySessionManager_closeSessionsForPrimaryAccessoryUUID___block_invoke;
    v10[3] = &unk_100228E28;
    v10[4] = self;
    [v7 enumerateObjectsUsingBlock:v10];
    v8 = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
    [v8 removeObjectForKey:v4];
  }

  return v6 != 0;
}

- (BOOL)handleIncomingExternalAccessoryData:(id)a3 forEndpointUUID:(id)a4
{
  v6 = a3;
  v7 = [(ACCExternalAccessorySessionManager *)self eaSessionUUIDForEndpointUUID:a4];
  if (v7)
  {
    if ([(ACCExternalAccessorySessionManager *)self _sessionUUIDClientSupportsBackgroundEA:v7])
    {
      v8 = [(ACCExternalAccessorySessionManager *)self _appBundleIDForSessionUUID:v7];
      v9 = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
      v10 = [v9 objectForKey:v7];
      platform_system_toggleProcessAssertionForBundleID(v8, [v10 intValue]);
    }

    v11 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [v11 lock];

    v12 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
    v13 = [v12 objectForKey:v7];

    v14 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [v14 unlock];

    if (v13)
    {
      [v13 sendEABufferDataToApp:v6];
      v15 = 0;
    }

    else
    {
      v16 = +[ACCExternalAccessoryServer sharedServer];
      v15 = [v16 handleIncomingExternalAccessoryData:v6 forEASessionIdentifier:v7];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_clientsOwningSessionForProtocol:(id)a3 withAccessoryUUID:(id)a4
{
  v6 = a3;
  v27 = a4;
  v25 = +[NSMutableArray array];
  v7 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v7 lock];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = self;
  v8 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = kACCExternalAccessoryProtocolNameKey;
    v26 = kACCExternalAccessoryPrimaryUUID;
    v24 = kACCExternalAccessoryClientBundleIDKey;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = [v14 objectForKey:v12];
        if ([v15 caseInsensitiveCompare:v6])
        {
          goto LABEL_7;
        }

        v16 = [v14 objectForKey:v26];
        v17 = [v16 caseInsensitiveCompare:v27];

        if (!v17)
        {
          v15 = [v14 objectForKey:v24];
          [v25 addObject:v15];
LABEL_7:
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v18 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v10 = v18;
    }

    while (v18);
  }

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v19 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v19 = &_os_log_default;
    v20 = &_os_log_default;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessorySessionManager _clientsOwningSessionForProtocol:withAccessoryUUID:];
  }

  v21 = [(ACCExternalAccessorySessionManager *)v23 openEASessionsLock];
  [v21 unlock];

  return v25;
}

- (BOOL)eaClientHasOpenEASession:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self _eaSessionUUIDsOwnedByClientBundleID:v4];
  v6 = [v5 count];
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 10;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 1024;
    v14 = v6 != 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "client %@ has openEASession: %d", &v11, 0x12u);
  }

  return v6 != 0;
}

- (id)_eaSessionUUIDsOwnedByClientBundleID:(id)a3
{
  v4 = a3;
  v22 = +[NSMutableArray array];
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v5 lock];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = self;
  v6 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = kACCExternalAccessoryClientBundleIDKey;
    v11 = kACCExternalAccessorySessionUUIDKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 objectForKey:v10];
        v15 = [v14 caseInsensitiveCompare:v4];

        if (!v15)
        {
          v16 = [v13 objectForKey:v11];
          [v22 addObject:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v17 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessorySessionManager _eaSessionUUIDsOwnedByClientBundleID:];
  }

  v19 = [(ACCExternalAccessorySessionManager *)v21 openEASessionsLock];
  [v19 unlock];

  return v22;
}

- (id)_accessoryForPrimaryUUID:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[ACCExternalAccessoryServer sharedServer];
  v5 = [v4 eaAccessories];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 primaryEndpointUUID];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          v6 = v9;
          if (gLogObjects && gNumLogObjects >= 10)
          {
            v12 = *(gLogObjects + 72);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v12 = &_os_log_default;
            v13 = &_os_log_default;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [(ACCExternalAccessorySessionManager *)v6 _accessoryForPrimaryUUID:v12];
          }

          goto LABEL_19;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return v6;
}

- (BOOL)_eaProtocolHasValidMatchActionForOpeningSession:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:kACCExternalAccessoryMatchActionKey];
    v6 = v5;
    if (v5 && [v5 unsignedShortValue] - 3 <= 1)
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v7 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v7 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [ACCExternalAccessorySessionManager _eaProtocolHasValidMatchActionForOpeningSession:];
      }

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_copySessionInfoDictionaryForSessionUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v5 lock];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = self;
  v6 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    v11 = kACCExternalAccessorySessionUUIDKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 objectForKey:v11];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v16 = [v13 copy];

          v9 = v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v17 = [(ACCExternalAccessorySessionManager *)v19 openEASessionsLock];
  [v17 unlock];

  return v9;
}

- (id)sessionInfoDictionaryForSessionUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v5 lock];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = self;
  v6 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    v11 = kACCExternalAccessorySessionUUIDKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 objectForKey:v11];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v16 = v13;

          v9 = v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v17 = [(ACCExternalAccessorySessionManager *)v19 openEASessionsLock];
  [v17 unlock];

  return v9;
}

- (id)eaSessionUUIDForSessionID:(unsigned __int16)a3
{
  v4 = [NSNumber numberWithUnsignedShort:?];
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v5 lock];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = kACCExternalAccessorySessionIDKey;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 objectForKey:v10];
        v14 = [v13 isEqualToNumber:v4];

        if (v14)
        {
          v16 = [v12 objectForKey:kACCExternalAccessorySessionUUIDKey];
          v15 = [v16 copy];

          if (gLogObjects && gNumLogObjects >= 10)
          {
            v17 = *(gLogObjects + 72);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v17 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [ACCExternalAccessorySessionManager eaSessionUUIDForSessionID:];
          }

          goto LABEL_19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_19:

  v19 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v19 unlock];

  return v15;
}

- (id)eaSessionUUIDForEndpointUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v5 lock];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = kACCExternalAccessoryProtocolEndpointUUIDKey;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 objectForKey:v10];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v16 = [v12 objectForKey:kACCExternalAccessorySessionUUIDKey];
          v15 = [v16 copy];

          if (gLogObjects && gNumLogObjects >= 10)
          {
            v17 = *(gLogObjects + 72);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v17 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [ACCExternalAccessorySessionManager eaSessionUUIDForEndpointUUID:];
          }

          goto LABEL_19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_19:

  v19 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v19 unlock];

  return v15;
}

- (id)_appBundleIDForSessionUUID:(id)a3
{
  v3 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:a3];
  v4 = [v3 objectForKey:kACCExternalAccessoryClientBundleIDKey];

  return v4;
}

- (BOOL)_sessionUUIDClientSupportsBackgroundEA:(id)a3
{
  v3 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:a3];
  v4 = [v3 objectForKey:kACCExternalAccessoryCapabilitiesKey];
  v5 = ([v4 unsignedLongLongValue] >> 4) & 1;

  return v5;
}

- (void)_eaNativeDataArrived:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKey:ACCTransportEANative_EASessionUUID];

  if (v8 && [(ACCExternalAccessorySessionManager *)self _sessionUUIDClientSupportsBackgroundEA:v8])
  {
    v5 = [(ACCExternalAccessorySessionManager *)self _appBundleIDForSessionUUID:v8];
    v6 = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
    v7 = [v6 objectForKey:v8];
    platform_system_toggleProcessAssertionForBundleID(v5, [v7 intValue]);
  }
}

- (void)_handleApplicationStateChange:(id)a3
{
  v4 = [a3 userInfo];
  v21 = [v4 objectForKey:@"ACCPlatformApplicationStateDisplayIDKey"];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 10;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handling app state change notification %@", buf, 0xCu);
  }

  v8 = [v4 objectForKey:@"ACCPlatformApplicationStateKey"];
  if ([v8 unsignedIntValue] == 2)
  {
    v20 = v4;
    v9 = [(ACCExternalAccessorySessionManager *)self _eaSessionUUIDsOwnedByClientBundleID:v21];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          if (![(ACCExternalAccessorySessionManager *)self _sessionUUIDClientSupportsBackgroundEA:v14])
          {
            v15 = gLogObjects;
            v16 = gNumLogObjects;
            if (gLogObjects)
            {
              v17 = gNumLogObjects < 10;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v27 = v15;
                v28 = 1024;
                LODWORD(v29) = v16;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v18 = &_os_log_default;
              v19 = &_os_log_default;
            }

            else
            {
              v19 = *(gLogObjects + 72);
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v27 = v21;
              v28 = 2112;
              v29 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Client %@ suspended, doesn't support background EA. Close EA session for eaSessionUUID %@", buf, 0x16u);
            }

            [(ACCExternalAccessorySessionManager *)self _accessoryCloseSessionForEASessionUUID:v14 informAccessory:1];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v11);
    }

    v4 = v20;
  }
}

- (void)_sendSessionOpenNotification
{
  if (!_totalNumberOpenEASessions++)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 10;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v5 = &_os_log_default;
      v4 = &_os_log_default;
    }

    else
    {
      v5 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Created first EA Native Session, post notification", &v10, 2u);
    }

    EASessionStatus = -1;
    if (notify_register_check("com.apple.accessories.ea.sessionStatusChanged", &EASessionStatus))
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v6 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v6 = &_os_log_default;
        v8 = &_os_log_default;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "com.apple.accessories.ea.sessionStatusChanged";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to register for %s notification!", &v10, 0xCu);
      }
    }

    else
    {
      notify_set_state(EASessionStatus, 1uLL);
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v7 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v7 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "com.apple.accessories.ea.sessionStatusChanged";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Post notification %s with state 1!", &v10, 0xCu);
      }

      notify_post("com.apple.accessories.ea.sessionStatusChanged");
    }
  }
}

- (void)_sendSessionCloseNotification
{
  if (!--_totalNumberOpenEASessions)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 10;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v3 = &_os_log_default;
    }

    else
    {
      v4 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No more EA Sessions, post notification", &v9, 2u);
    }

    EASessionStatus = -1;
    if (notify_register_check("com.apple.accessories.ea.sessionStatusChanged", &EASessionStatus))
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v5 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v5 = &_os_log_default;
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "com.apple.accessories.ea.sessionStatusChanged";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to register for %s notification!", &v9, 0xCu);
      }
    }

    else
    {
      notify_set_state(EASessionStatus, 0);
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v6 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v6 = &_os_log_default;
        v8 = &_os_log_default;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "com.apple.accessories.ea.sessionStatusChanged";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Post notification %s with state 0!", &v9, 0xCu);
      }

      notify_post("com.apple.accessories.ea.sessionStatusChanged");
    }
  }
}

+ (void)initializeSessionClose
{
  if (initializeSessionClose_onceToken != -1)
  {
    +[ACCExternalAccessorySessionManager initializeSessionClose];
  }

  EASessionStatus = -1;
  if (notify_register_check("com.apple.accessories.ea.sessionStatusChanged", &EASessionStatus))
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v2 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v2 = &_os_log_default;
      v4 = &_os_log_default;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "com.apple.accessories.ea.sessionStatusChanged";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to register for %s notification!", &v6, 0xCu);
    }
  }

  else
  {
    notify_set_state(EASessionStatus, 0);
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v3 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v3 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "com.apple.accessories.ea.sessionStatusChanged";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Post initial notification %s with state 0!", &v6, 0xCu);
    }

    notify_post("com.apple.accessories.ea.sessionStatusChanged");
  }
}

- (id)createSessionForProtocol:(id)a3 fromPrimaryAccessoryUUID:(id)a4 fromClient:(id)a5 result:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v157 = [(ACCExternalAccessorySessionManager *)self _accessoryForPrimaryUUID:v11];
  v13 = [v157 externalAccessoryProtocolInformationForProtocolName:v10];
  if (!v13)
  {
LABEL_17:
    v17 = 0;
    goto LABEL_90;
  }

  v14 = &audioProductCerts_endpoint_publish_onceToken;
  if (![(ACCExternalAccessorySessionManager *)self _eaProtocolHasValidMatchActionForOpeningSession:v13])
  {
    goto LABEL_8;
  }

  if (([v157 supportsMultipleSessionsPerProtocol] & 1) == 0)
  {
    if ([(ACCExternalAccessorySessionManager *)self _continueOpenSessionForSingleSessionPerEAProtocol:v10 fromPrimaryAccessoryUUID:v11 fromClient:v12])
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v15 = [v12 bundleID];
  v16 = [(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:v10 filterPrimaryUUID:v11 filterClientBundleID:v15];

  v14 = &audioProductCerts_endpoint_publish_onceToken;
  if (v16)
  {
LABEL_8:
    v24 = v14[491];
    v25 = gNumLogObjects;
    if (v24 && gNumLogObjects >= 10)
    {
      v26 = *(v24 + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_25();
        LODWORD(v161) = v25;
        OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v79, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v80, v81, v82, v83, v142, v144, v146, v148, v151, v153, v155, v157, buf[0]);
      }

      v26 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      [v12 bundleID];
      v159 = *buf = 138412546;
      v160 = 2112;
      v161 = v10;
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v28, v29, OS_LOG_TYPE_DEFAULT, v30, v31, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_5:
  v17 = +[NSMutableDictionary dictionary];
  v18 = +[NSUUID UUID];
  v19 = [v18 UUIDString];

  v20 = [OUTLINED_FUNCTION_8_18() objectForKey:?];
  LODWORD(v148) = [v20 unsignedIntValue];

  v156 = v19;
  [v17 setObject:v19 forKey:kACCExternalAccessorySessionUUIDKey];
  v21 = kACCExternalAccessoryProtocolIndexKey;
  v22 = [v13 objectForKey:kACCExternalAccessoryProtocolIndexKey];
  v154 = v22;
  if (v22)
  {
    v23 = [v22 copy];
    [v17 setObject:v23 forKey:v21];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v32 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_29();
        OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v122, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v123, v124, v125, v126, v143, v144, v146, v148, v151, 0, v19, v157, buf[0]);
      }

      v32 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11_13(&_mh_execute_header, v34, v35, "protocolIndex is nil", v36, v37, v38, v39, v143, v144, v146, v148, v151, v154, v156, v157, 0);
    }
  }

  v40 = [v12 bundleID];
  v41 = [v40 copy];
  [v17 setObject:v41 forKey:kACCExternalAccessoryClientBundleIDKey];

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v42 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4_29();
      OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v107, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v108, v109, v110, v111, v143, v144, v146, v148, v151, v154, v156, v157, buf[0]);
    }

    v42 = &_os_log_default;
    v43 = &_os_log_default;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v159 = v13;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "current EA protocol dict %@", buf, 0xCu);
  }

  v44 = +[ACCExternalAccessorySessionManager _generateSessionID];
  v45 = [NSNumber numberWithUnsignedInt:?];
  v145 = v45;
  if (v45)
  {
    [v17 setObject:v45 forKey:kACCExternalAccessorySessionIDKey];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v46 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_29();
        OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v127, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v128, v129, v130, v131, v143, 0, v146, v148, v151, v154, v156, v157, buf[0]);
      }

      v46 = &_os_log_default;
      v47 = &_os_log_default;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11_13(&_mh_execute_header, v48, v49, "sessionIDNum is nil", v50, v51, v52, v53, v143, v145, v146, v148, v151, v154, v156, v157, 0);
    }
  }

  v54 = [v10 copy];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  v55 = [v11 copy];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  v56 = [OUTLINED_FUNCTION_8_18() objectForKey:?];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  v57 = [OUTLINED_FUNCTION_8_18() objectForKey:?];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  v58 = [v157 EAAccessoryDictionary];
  v59 = kACCExternalAccessoryLegacyConnectionIDKey;
  v60 = [v58 objectForKey:kACCExternalAccessoryLegacyConnectionIDKey];

  v152 = v60;
  [v17 setObject:v60 forKey:v59];
  v61 = kACCExternalAccessorySessionUsesSocketInterfaceKey;
  v62 = [OUTLINED_FUNCTION_8_18() objectForKey:?];
  if (v62)
  {
    [v17 setObject:v62 forKey:v61];
    v63 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v64 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_25();
        LODWORD(v161) = v63;
        OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v117, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v118, v119, v120, v121, v143, v145, v146, v148, v152, v154, v156, v157, buf[0]);
      }

      v64 = &_os_log_default;
      v65 = &_os_log_default;
    }

    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      OUTLINED_FUNCTION_9_2();
      _os_log_debug_impl(v103, v104, OS_LOG_TYPE_DEBUG, v105, v106, 2u);
    }

    if (!v148)
    {
      v66 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v67 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_25();
          LODWORD(v161) = v66;
          OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v132, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v133, v134, v135, v136, v143, v145, v146, v148, v152, v154, v156, v157, buf[0]);
        }

        v67 = &_os_log_default;
        v68 = &_os_log_default;
      }

      v149 = v62;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v69, v70, OS_LOG_TYPE_INFO, v71, v72, 2u);
      }

      v73 = -[ACCExternalAccessorySessionBasic initWithEASessionUUID:protocolID:legacyConnectionID:sessionID:]([ACCExternalAccessorySessionBasic alloc], "initWithEASessionUUID:protocolID:legacyConnectionID:sessionID:", v156, [v154 unsignedShortValue], objc_msgSend(v152, "unsignedLongLongValue"), v44);
      if (v73)
      {
        v74 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
        [v74 lock];

        v75 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
        [v75 setObject:v73 forKey:v156];

        v76 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
        [v76 unlock];

        v77 = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
        v78 = [v77 objectForKeyedSubscript:v11];

        if (v78)
        {
          [v78 addObject:v156];
        }

        else
        {
          v78 = +[NSMutableArray array];
          [v78 addObject:v156];
          v85 = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
          [v85 setObject:v78 forKey:v11];
        }
      }

      else
      {
        v84 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v78 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_25();
            LODWORD(v161) = v84;
            OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v137, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v138, v139, v140, v141, v143, v145, v146, v62, v152, v154, v156, v157, buf[0]);
          }

          v78 = &_os_log_default;
          v86 = &_os_log_default;
        }

        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Couldn't create ea session information dictionary", buf, 2u);
        }
      }

      v62 = v149;
    }
  }

  v147 = v11;
  v87 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 clientCapabilities]);
  [v17 setObject:v87 forKey:kACCExternalAccessoryCapabilitiesKey];
  v88 = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
  v150 = v12;
  v89 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 clientPid]);
  [v88 setObject:v89 forKey:v156];

  v90 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v91 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_25();
      LODWORD(v161) = v90;
      OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v112, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v113, v114, v115, v116, v143, v145, v147, v12, v152, v154, v156, v157, buf[0]);
    }

    v91 = &_os_log_default;
    v92 = &_os_log_default;
  }

  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v159 = v17;
    OUTLINED_FUNCTION_9_2();
    _os_log_impl(v93, v94, OS_LOG_TYPE_DEFAULT, v95, v96, 0xCu);
  }

  v97 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v97 lock];

  v98 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  [v98 addObject:v17];

  v99 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v100 = [v99 count];

  v101 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v101 unlock];

  if (v100 == 1)
  {
    platform_system_startObservingApplicationState();
  }

  if (v17)
  {
    *v143 = 1;
    [(ACCExternalAccessorySessionManager *)self _sendSessionOpenNotification];
  }

  v11 = v147;
  v12 = v150;
LABEL_90:

  return v17;
}

- (id)_sessionInfoMatchingProtocol:(id)a3 withPrimaryAccessoryUUID:(id)a4
{
  v6 = a3;
  v28 = a4;
  v27 = +[NSMutableArray array];
  if (v6)
  {
    v7 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [v7 lock];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = self;
    v8 = [(ACCExternalAccessorySessionManager *)self openEASessions];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      v12 = kACCExternalAccessoryProtocolNameKey;
      v13 = kACCExternalAccessoryPrimaryUUID;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 objectForKey:v12];
          v17 = [v16 caseInsensitiveCompare:v6];

          if (!v17)
          {
            v18 = [v15 objectForKey:v13];
            v19 = [v18 isEqualToString:v28];

            if (v19)
            {
              [v27 addObject:v15];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v10);
    }

    v20 = [(ACCExternalAccessorySessionManager *)v26 openEASessionsLock];
    [v20 unlock];

    v21 = gLogObjects;
    v22 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v23 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v34 = v21;
        v35 = 1024;
        LODWORD(v36) = v22;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v23 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = v6;
      v35 = 2112;
      v36 = v27;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "_copySessionInfoDictionaryForProtocol %@ = %@", buf, 0x16u);
    }
  }

  return v27;
}

- (BOOL)_isSessionOpenForProtocol:(id)a3 filterPrimaryUUID:(id)a4 filterClientBundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v34 = a5;
  if (!v8)
  {
    v23 = 0;
    goto LABEL_31;
  }

  v10 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v10 lock];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v11 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (!v11)
  {
    v23 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v30 = self;
  LOBYTE(v13) = 0;
  v14 = *v36;
  v15 = kACCExternalAccessoryProtocolNameKey;
  v31 = kACCExternalAccessoryPrimaryUUID;
  v32 = kACCExternalAccessoryClientBundleIDKey;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v35 + 1) + 8 * i);
      v18 = [v17 objectForKey:v15];
      v19 = [v18 caseInsensitiveCompare:v8];

      if (v19)
      {
        continue;
      }

      if (v9)
      {
        v20 = [v17 objectForKey:v31];
        v13 = [v20 isEqualToString:v9];

        if (!v34)
        {
          if (v13)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      else if (!v34)
      {
        goto LABEL_20;
      }

      v21 = [v17 objectForKey:v32];
      v22 = [v21 caseInsensitiveCompare:v34];

      if (v9)
      {
        if (((v22 == 0) & v13) != 0)
        {
          goto LABEL_20;
        }
      }

      else if (!v22)
      {
LABEL_20:
        v24 = gLogObjects;
        v25 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v26 = *(gLogObjects + 72);
          self = v30;
        }

        else
        {
          self = v30;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v40 = v24;
            v41 = 1024;
            LODWORD(v42) = v25;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v26 = &_os_log_default;
          v27 = &_os_log_default;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v40 = v8;
          v41 = 2112;
          v42 = @"yes";
          v43 = 2112;
          v44 = v9;
          v45 = 2112;
          v46 = v34;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "sessionOpenForProtocol %@ = %@, primaryAccUUID %@, clientBundleID %@", buf, 0x2Au);
        }

        v23 = 1;
        goto LABEL_30;
      }
    }

    v12 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  v23 = 0;
  self = v30;
LABEL_30:

  v28 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [v28 unlock];

LABEL_31:
  return v23;
}

- (void)_internalCloseSessionForEASessionUUID:(uint64_t)a1 informAccessory:.cold.5(uint64_t a1)
{
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_internalCloseSessionForEASessionUUID:(NSObject *)a3 informAccessory:.cold.7(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 openEASessions];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "after removing eaSessionUUID %@, openEASessions for ACCExternalAccessorySessionManager is now %@", &v6, 0x16u);
}

- (void)_clientsOwningSessionForProtocol:withAccessoryUUID:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_eaSessionUUIDsOwnedByClientBundleID:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_accessoryForPrimaryUUID:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v3 = [a1 EAName];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found accEA name %@", v4, 0xCu);
}

- (void)eaSessionUUIDForSessionID:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)eaSessionUUIDForEndpointUUID:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end