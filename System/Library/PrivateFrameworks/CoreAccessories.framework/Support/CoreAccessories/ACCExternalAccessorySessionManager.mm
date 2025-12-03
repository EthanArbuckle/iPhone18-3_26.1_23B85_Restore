@interface ACCExternalAccessorySessionManager
+ (id)sharedManager;
+ (unsigned)_generateSessionID;
+ (void)initializeSessionClose;
- (ACCExternalAccessorySessionManager)init;
- (BOOL)_continueOpenSessionForSingleSessionPerEAProtocol:(id)protocol fromPrimaryAccessoryUUID:(id)d fromClient:(id)client;
- (BOOL)_eaProtocolHasValidMatchActionForOpeningSession:(id)session;
- (BOOL)_isSessionOpenForProtocol:(id)protocol filterPrimaryUUID:(id)d filterClientBundleID:(id)iD;
- (BOOL)_sessionUUIDClientSupportsBackgroundEA:(id)a;
- (BOOL)closeSessionsForPrimaryAccessoryUUID:(id)d;
- (BOOL)eaClientHasOpenEASession:(id)session;
- (BOOL)handleIncomingExternalAccessoryData:(id)data forEndpointUUID:(id)d;
- (BOOL)openSocketFromAccessoryToApp:(id)app;
- (BOOL)openSocketFromAppToAccessory:(id)accessory;
- (BOOL)outgoingEADataFromClientAvailable:(id)available;
- (id)_accessoryForPrimaryUUID:(id)d;
- (id)_appBundleIDForSessionUUID:(id)d;
- (id)_clientsOwningSessionForProtocol:(id)protocol withAccessoryUUID:(id)d;
- (id)_copySessionInfoDictionaryForSessionUUID:(id)d;
- (id)_eaSessionUUIDsOwnedByClientBundleID:(id)d;
- (id)_internalCloseSessionForEASessionUUID:(id)d informAccessory:(BOOL)accessory;
- (id)_sessionInfoMatchingProtocol:(id)protocol withPrimaryAccessoryUUID:(id)d;
- (id)createSessionForProtocol:(id)protocol fromPrimaryAccessoryUUID:(id)d fromClient:(id)client result:(BOOL *)result;
- (id)eaSessionUUIDForEndpointUUID:(id)d;
- (id)eaSessionUUIDForSessionID:(unsigned __int16)d;
- (id)sessionInfoDictionaryForSessionUUID:(id)d;
- (void)_eaNativeDataArrived:(id)arrived;
- (void)_handleApplicationStateChange:(id)change;
- (void)_sendSessionCloseNotification;
- (void)_sendSessionOpenNotification;
- (void)startIncomingDataNotificationsForEASessionUUID:(id)d;
- (void)stopIncomingDataNotificationsForEASessionUUID:(id)d;
@end

@implementation ACCExternalAccessorySessionManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__ACCExternalAccessorySessionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (BOOL)_continueOpenSessionForSingleSessionPerEAProtocol:(id)protocol fromPrimaryAccessoryUUID:(id)d fromClient:(id)client
{
  protocolCopy = protocol;
  dCopy = d;
  clientCopy = client;
  if ([(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:protocolCopy filterPrimaryUUID:dCopy filterClientBundleID:0])
  {
    bundleID = [clientCopy bundleID];
    v12 = [(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:protocolCopy filterPrimaryUUID:dCopy filterClientBundleID:bundleID];

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
        bundleID2 = [clientCopy bundleID];
        v26 = 138412546;
        v27 = bundleID2;
        v28 = 2112;
        v29 = protocolCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "The same EA client %@ already has an open session for protocol %@", &v26, 0x16u);
      }

      goto LABEL_16;
    }

    v13 = [(ACCExternalAccessorySessionManager *)self _clientsOwningSessionForProtocol:protocolCopy withAccessoryUUID:dCopy];
    if (![v13 count])
    {
LABEL_16:
      v14 = 0;
LABEL_30:

      goto LABEL_31;
    }

    firstObject = [v13 firstObject];
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
      v27 = protocolCopy;
      v28 = 2112;
      v29 = firstObject;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Client currently owning EA session for protocol %@ is %@", &v26, 0x16u);
    }

    bundleID3 = [clientCopy bundleID];
    if (platform_system_isApplicationInForeground(bundleID3))
    {
    }

    else
    {
      v21 = platform_system_isApplicationInForeground(firstObject);

      if (v21)
      {
        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    v22 = [(ACCExternalAccessorySessionManager *)self _sessionInfoMatchingProtocol:protocolCopy withPrimaryAccessoryUUID:dCopy];
    if ([v22 count])
    {
      firstObject2 = [v22 firstObject];
      v24 = [firstObject2 objectForKey:kACCExternalAccessorySessionUUIDKey];
      [(ACCExternalAccessorySessionManager *)self _accessoryCloseSessionForEASessionUUID:v24 informAccessory:1];
    }

    v14 = 1;
    goto LABEL_29;
  }

  v14 = 1;
LABEL_31:

  return v14;
}

- (id)_internalCloseSessionForEASessionUUID:(id)d informAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  dCopy = d;
  v6 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:dCopy];
  v7 = [v6 objectForKey:kACCExternalAccessoryProtocolNameKey];
  v8 = [v6 objectForKey:kACCExternalAccessoryPrimaryUUID];
  if ([(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:v7 filterPrimaryUUID:0 filterClientBundleID:0])
  {
    openEASessionHandlersLock = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [openEASessionHandlersLock lock];

    openEASessionHandlers = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
    v11 = [openEASessionHandlers objectForKey:dCopy];

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
        *(&buf + 4) = dCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "removing ACCExternalAccessorySessionBasic for eaSessionUUID %@", &buf, 0xCu);
      }

      [v11 closeDataPipes];
      openEASessionHandlers2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
      [openEASessionHandlers2 removeObjectForKey:dCopy];
    }

    openEASessionHandlersLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [openEASessionHandlersLock2 unlock];

    openEASessionUUIDsForEndpointUUID = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
    v19 = [openEASessionUUIDsForEndpointUUID objectForKey:v8];

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
      v37 = dCopy;
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
    openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [openEASessionsLock lock];

    openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
    [openEASessions removeObject:v6];

    openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [openEASessionsLock2 unlock];

    if (accessoryCopy)
    {
      v25 = [v14 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
      v26 = [v25 copy];

      platform_externalAccessory_closeExternalAccessorySession(v26, v14);
    }

    pidForOpenSessionUUID = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
    v28 = [pidForOpenSessionUUID objectForKey:dCopy];

    if (v28)
    {
      pidForOpenSessionUUID2 = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
      [pidForOpenSessionUUID2 removeObjectForKey:dCopy];
    }

    [(ACCExternalAccessorySessionManager *)self _sendSessionCloseNotification];
    openEASessionsLock3 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [openEASessionsLock3 lock];

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
      [(ACCExternalAccessorySessionManager *)dCopy _internalCloseSessionForEASessionUUID:v31 informAccessory:?];
    }

    openEASessionsLock4 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [openEASessionsLock4 unlock];
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

- (BOOL)openSocketFromAccessoryToApp:(id)app
{
  appCopy = app;
  v5 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:appCopy];
  v6 = [v5 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
  platform_externalAccessory_openSocketFromAccessoryToApp(v6, v5);
  openEASessionHandlersLock = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock lock];

  openEASessionHandlers = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [openEASessionHandlers objectForKey:appCopy];

  openEASessionHandlersLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock2 lock];

  if (v9)
  {
    [v9 openPipeToApp];
  }

  return 1;
}

- (BOOL)openSocketFromAppToAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:accessoryCopy];
  v6 = [v5 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
  platform_externalAccessory_openSocketFromAppToAccessory(v6, v5);
  openEASessionHandlersLock = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock lock];

  openEASessionHandlers = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [openEASessionHandlers objectForKey:accessoryCopy];

  openEASessionHandlersLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock2 unlock];

  if (v9)
  {
    [v9 openPipeFromApp];
  }

  return 1;
}

- (BOOL)outgoingEADataFromClientAvailable:(id)available
{
  v3 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:available];
  v4 = [v3 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
  v5 = platform_externalAccessory_outgoingEADataFromClientAvailable(v4, v3);

  return v5;
}

- (void)stopIncomingDataNotificationsForEASessionUUID:(id)d
{
  dCopy = d;
  openEASessionHandlersLock = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock lock];

  openEASessionHandlers = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [openEASessionHandlers objectForKey:dCopy];

  openEASessionHandlersLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock2 unlock];

  v8 = v9;
  if (v9)
  {
    [v9 stopIncomingDataNotifications];
    v8 = v9;
  }
}

- (void)startIncomingDataNotificationsForEASessionUUID:(id)d
{
  dCopy = d;
  openEASessionHandlersLock = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock lock];

  openEASessionHandlers = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
  v9 = [openEASessionHandlers objectForKey:dCopy];

  openEASessionHandlersLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
  [openEASessionHandlersLock2 unlock];

  v8 = v9;
  if (v9)
  {
    [v9 startIncomingDataNotifications];
    v8 = v9;
  }
}

- (BOOL)closeSessionsForPrimaryAccessoryUUID:(id)d
{
  dCopy = d;
  openEASessionUUIDsForEndpointUUID = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
  v6 = [openEASessionUUIDsForEndpointUUID objectForKey:dCopy];

  if (v6)
  {
    v7 = [v6 copy];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __75__ACCExternalAccessorySessionManager_closeSessionsForPrimaryAccessoryUUID___block_invoke;
    v10[3] = &unk_100228E28;
    v10[4] = self;
    [v7 enumerateObjectsUsingBlock:v10];
    openEASessionUUIDsForEndpointUUID2 = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
    [openEASessionUUIDsForEndpointUUID2 removeObjectForKey:dCopy];
  }

  return v6 != 0;
}

- (BOOL)handleIncomingExternalAccessoryData:(id)data forEndpointUUID:(id)d
{
  dataCopy = data;
  v7 = [(ACCExternalAccessorySessionManager *)self eaSessionUUIDForEndpointUUID:d];
  if (v7)
  {
    if ([(ACCExternalAccessorySessionManager *)self _sessionUUIDClientSupportsBackgroundEA:v7])
    {
      v8 = [(ACCExternalAccessorySessionManager *)self _appBundleIDForSessionUUID:v7];
      pidForOpenSessionUUID = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
      v10 = [pidForOpenSessionUUID objectForKey:v7];
      platform_system_toggleProcessAssertionForBundleID(v8, [v10 intValue]);
    }

    openEASessionHandlersLock = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [openEASessionHandlersLock lock];

    openEASessionHandlers = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
    v13 = [openEASessionHandlers objectForKey:v7];

    openEASessionHandlersLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
    [openEASessionHandlersLock2 unlock];

    if (v13)
    {
      [v13 sendEABufferDataToApp:dataCopy];
      v15 = 0;
    }

    else
    {
      v16 = +[ACCExternalAccessoryServer sharedServer];
      v15 = [v16 handleIncomingExternalAccessoryData:dataCopy forEASessionIdentifier:v7];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_clientsOwningSessionForProtocol:(id)protocol withAccessoryUUID:(id)d
{
  protocolCopy = protocol;
  dCopy = d;
  v25 = +[NSMutableArray array];
  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v9 = [openEASessions countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(openEASessions);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = [v14 objectForKey:v12];
        if ([v15 caseInsensitiveCompare:protocolCopy])
        {
          goto LABEL_7;
        }

        v16 = [v14 objectForKey:v26];
        v17 = [v16 caseInsensitiveCompare:dCopy];

        if (!v17)
        {
          v15 = [v14 objectForKey:v24];
          [v25 addObject:v15];
LABEL_7:
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v18 = [openEASessions countByEnumeratingWithState:&v28 objects:v32 count:16];
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

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)selfCopy openEASessionsLock];
  [openEASessionsLock2 unlock];

  return v25;
}

- (BOOL)eaClientHasOpenEASession:(id)session
{
  sessionCopy = session;
  v5 = [(ACCExternalAccessorySessionManager *)self _eaSessionUUIDsOwnedByClientBundleID:sessionCopy];
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
    v12 = sessionCopy;
    v13 = 1024;
    v14 = v6 != 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "client %@ has openEASession: %d", &v11, 0x12u);
  }

  return v6 != 0;
}

- (id)_eaSessionUUIDsOwnedByClientBundleID:(id)d
{
  dCopy = d;
  v22 = +[NSMutableArray array];
  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [openEASessions countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(openEASessions);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 objectForKey:v10];
        v15 = [v14 caseInsensitiveCompare:dCopy];

        if (!v15)
        {
          v16 = [v13 objectForKey:v11];
          [v22 addObject:v16];
        }
      }

      v8 = [openEASessions countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)selfCopy openEASessionsLock];
  [openEASessionsLock2 unlock];

  return v22;
}

- (id)_accessoryForPrimaryUUID:(id)d
{
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[ACCExternalAccessoryServer sharedServer];
  eaAccessories = [v4 eaAccessories];

  v6 = [eaAccessories countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(eaAccessories);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        primaryEndpointUUID = [v9 primaryEndpointUUID];
        v11 = [primaryEndpointUUID isEqualToString:dCopy];

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

      v6 = [eaAccessories countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)_eaProtocolHasValidMatchActionForOpeningSession:(id)session
{
  sessionCopy = session;
  v4 = sessionCopy;
  if (sessionCopy)
  {
    v5 = [sessionCopy objectForKey:kACCExternalAccessoryMatchActionKey];
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

- (id)_copySessionInfoDictionaryForSessionUUID:(id)d
{
  dCopy = d;
  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [openEASessions countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(openEASessions);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 objectForKey:v11];
        v15 = [v14 isEqualToString:dCopy];

        if (v15)
        {
          v16 = [v13 copy];

          v9 = v16;
        }
      }

      v8 = [openEASessions countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)selfCopy openEASessionsLock];
  [openEASessionsLock2 unlock];

  return v9;
}

- (id)sessionInfoDictionaryForSessionUUID:(id)d
{
  dCopy = d;
  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [openEASessions countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(openEASessions);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 objectForKey:v11];
        v15 = [v14 isEqualToString:dCopy];

        if (v15)
        {
          v16 = v13;

          v9 = v16;
        }
      }

      v8 = [openEASessions countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)selfCopy openEASessionsLock];
  [openEASessionsLock2 unlock];

  return v9;
}

- (id)eaSessionUUIDForSessionID:(unsigned __int16)d
{
  v4 = [NSNumber numberWithUnsignedShort:?];
  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [openEASessions countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(openEASessions);
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

      v8 = [openEASessions countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_19:

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock2 unlock];

  return v15;
}

- (id)eaSessionUUIDForEndpointUUID:(id)d
{
  dCopy = d;
  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v7 = [openEASessions countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(openEASessions);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 objectForKey:v10];
        v14 = [v13 isEqualToString:dCopy];

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

      v8 = [openEASessions countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_19:

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock2 unlock];

  return v15;
}

- (id)_appBundleIDForSessionUUID:(id)d
{
  v3 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:d];
  v4 = [v3 objectForKey:kACCExternalAccessoryClientBundleIDKey];

  return v4;
}

- (BOOL)_sessionUUIDClientSupportsBackgroundEA:(id)a
{
  v3 = [(ACCExternalAccessorySessionManager *)self sessionInfoDictionaryForSessionUUID:a];
  v4 = [v3 objectForKey:kACCExternalAccessoryCapabilitiesKey];
  v5 = ([v4 unsignedLongLongValue] >> 4) & 1;

  return v5;
}

- (void)_eaNativeDataArrived:(id)arrived
{
  userInfo = [arrived userInfo];
  v8 = [userInfo objectForKey:ACCTransportEANative_EASessionUUID];

  if (v8 && [(ACCExternalAccessorySessionManager *)self _sessionUUIDClientSupportsBackgroundEA:v8])
  {
    v5 = [(ACCExternalAccessorySessionManager *)self _appBundleIDForSessionUUID:v8];
    pidForOpenSessionUUID = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
    v7 = [pidForOpenSessionUUID objectForKey:v8];
    platform_system_toggleProcessAssertionForBundleID(v5, [v7 intValue]);
  }
}

- (void)_handleApplicationStateChange:(id)change
{
  userInfo = [change userInfo];
  v21 = [userInfo objectForKey:@"ACCPlatformApplicationStateDisplayIDKey"];
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
    v27 = userInfo;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handling app state change notification %@", buf, 0xCu);
  }

  v8 = [userInfo objectForKey:@"ACCPlatformApplicationStateKey"];
  if ([v8 unsignedIntValue] == 2)
  {
    v20 = userInfo;
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

    userInfo = v20;
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

- (id)createSessionForProtocol:(id)protocol fromPrimaryAccessoryUUID:(id)d fromClient:(id)client result:(BOOL *)result
{
  protocolCopy = protocol;
  dCopy = d;
  clientCopy = client;
  v157 = [(ACCExternalAccessorySessionManager *)self _accessoryForPrimaryUUID:dCopy];
  v13 = [v157 externalAccessoryProtocolInformationForProtocolName:protocolCopy];
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
    if ([(ACCExternalAccessorySessionManager *)self _continueOpenSessionForSingleSessionPerEAProtocol:protocolCopy fromPrimaryAccessoryUUID:dCopy fromClient:clientCopy])
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  bundleID = [clientCopy bundleID];
  v16 = [(ACCExternalAccessorySessionManager *)self _isSessionOpenForProtocol:protocolCopy filterPrimaryUUID:dCopy filterClientBundleID:bundleID];

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
      [clientCopy bundleID];
      v159 = *buf = 138412546;
      v160 = 2112;
      v161 = protocolCopy;
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v28, v29, OS_LOG_TYPE_DEFAULT, v30, v31, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_5:
  v17 = +[NSMutableDictionary dictionary];
  v18 = +[NSUUID UUID];
  uUIDString = [v18 UUIDString];

  v20 = [OUTLINED_FUNCTION_8_18() objectForKey:?];
  LODWORD(v148) = [v20 unsignedIntValue];

  v156 = uUIDString;
  [v17 setObject:uUIDString forKey:kACCExternalAccessorySessionUUIDKey];
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
        OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v122, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v123, v124, v125, v126, v143, v144, v146, v148, v151, 0, uUIDString, v157, buf[0]);
      }

      v32 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11_13(&_mh_execute_header, v34, v35, "protocolIndex is nil", v36, v37, v38, v39, v143, v144, v146, v148, v151, v154, v156, v157, 0);
    }
  }

  bundleID2 = [clientCopy bundleID];
  v41 = [bundleID2 copy];
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

  v54 = [protocolCopy copy];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  v55 = [dCopy copy];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  v56 = [OUTLINED_FUNCTION_8_18() objectForKey:?];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  v57 = [OUTLINED_FUNCTION_8_18() objectForKey:?];
  [OUTLINED_FUNCTION_10_16() setObject:? forKey:?];

  eAAccessoryDictionary = [v157 EAAccessoryDictionary];
  v59 = kACCExternalAccessoryLegacyConnectionIDKey;
  v60 = [eAAccessoryDictionary objectForKey:kACCExternalAccessoryLegacyConnectionIDKey];

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
        openEASessionHandlersLock = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
        [openEASessionHandlersLock lock];

        openEASessionHandlers = [(ACCExternalAccessorySessionManager *)self openEASessionHandlers];
        [openEASessionHandlers setObject:v73 forKey:v156];

        openEASessionHandlersLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionHandlersLock];
        [openEASessionHandlersLock2 unlock];

        openEASessionUUIDsForEndpointUUID = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
        v78 = [openEASessionUUIDsForEndpointUUID objectForKeyedSubscript:dCopy];

        if (v78)
        {
          [v78 addObject:v156];
        }

        else
        {
          v78 = +[NSMutableArray array];
          [v78 addObject:v156];
          openEASessionUUIDsForEndpointUUID2 = [(ACCExternalAccessorySessionManager *)self openEASessionUUIDsForEndpointUUID];
          [openEASessionUUIDsForEndpointUUID2 setObject:v78 forKey:dCopy];
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

  v147 = dCopy;
  v87 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [clientCopy clientCapabilities]);
  [v17 setObject:v87 forKey:kACCExternalAccessoryCapabilitiesKey];
  pidForOpenSessionUUID = [(ACCExternalAccessorySessionManager *)self pidForOpenSessionUUID];
  v150 = clientCopy;
  v89 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [clientCopy clientPid]);
  [pidForOpenSessionUUID setObject:v89 forKey:v156];

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
      OUTLINED_FUNCTION_6_23(&_mh_execute_header, &_os_log_default, v112, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v113, v114, v115, v116, v143, v145, v147, clientCopy, v152, v154, v156, v157, buf[0]);
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

  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

  openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
  [openEASessions addObject:v17];

  openEASessions2 = [(ACCExternalAccessorySessionManager *)self openEASessions];
  v100 = [openEASessions2 count];

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock2 unlock];

  if (v100 == 1)
  {
    platform_system_startObservingApplicationState();
  }

  if (v17)
  {
    *v143 = 1;
    [(ACCExternalAccessorySessionManager *)self _sendSessionOpenNotification];
  }

  dCopy = v147;
  clientCopy = v150;
LABEL_90:

  return v17;
}

- (id)_sessionInfoMatchingProtocol:(id)protocol withPrimaryAccessoryUUID:(id)d
{
  protocolCopy = protocol;
  dCopy = d;
  v27 = +[NSMutableArray array];
  if (protocolCopy)
  {
    openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
    [openEASessionsLock lock];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    selfCopy = self;
    openEASessions = [(ACCExternalAccessorySessionManager *)self openEASessions];
    v9 = [openEASessions countByEnumeratingWithState:&v29 objects:v37 count:16];
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
            objc_enumerationMutation(openEASessions);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 objectForKey:v12];
          v17 = [v16 caseInsensitiveCompare:protocolCopy];

          if (!v17)
          {
            v18 = [v15 objectForKey:v13];
            v19 = [v18 isEqualToString:dCopy];

            if (v19)
            {
              [v27 addObject:v15];
            }
          }
        }

        v10 = [openEASessions countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v10);
    }

    openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)selfCopy openEASessionsLock];
    [openEASessionsLock2 unlock];

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
      v34 = protocolCopy;
      v35 = 2112;
      v36 = v27;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "_copySessionInfoDictionaryForProtocol %@ = %@", buf, 0x16u);
    }
  }

  return v27;
}

- (BOOL)_isSessionOpenForProtocol:(id)protocol filterPrimaryUUID:(id)d filterClientBundleID:(id)iD
{
  protocolCopy = protocol;
  dCopy = d;
  iDCopy = iD;
  if (!protocolCopy)
  {
    v23 = 0;
    goto LABEL_31;
  }

  openEASessionsLock = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock lock];

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
  selfCopy = self;
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
      v19 = [v18 caseInsensitiveCompare:protocolCopy];

      if (v19)
      {
        continue;
      }

      if (dCopy)
      {
        v20 = [v17 objectForKey:v31];
        v13 = [v20 isEqualToString:dCopy];

        if (!iDCopy)
        {
          if (v13)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      else if (!iDCopy)
      {
        goto LABEL_20;
      }

      v21 = [v17 objectForKey:v32];
      v22 = [v21 caseInsensitiveCompare:iDCopy];

      if (dCopy)
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
          self = selfCopy;
        }

        else
        {
          self = selfCopy;
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
          v40 = protocolCopy;
          v41 = 2112;
          v42 = @"yes";
          v43 = 2112;
          v44 = dCopy;
          v45 = 2112;
          v46 = iDCopy;
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
  self = selfCopy;
LABEL_30:

  openEASessionsLock2 = [(ACCExternalAccessorySessionManager *)self openEASessionsLock];
  [openEASessionsLock2 unlock];

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