@interface ACCExternalAccessoryServerRemote
- (ACCExternalAccessoryClientInfo)clientInfo;
- (ACCExternalAccessoryServerRemote)initWithClientInfo:(id)info;
- (void)activateLocationForUUID:(id)d;
- (void)clientCloseExternalAccessorySession:(id)session;
- (void)createExternalAccessorySessionForProtocol:(id)protocol accessoryUUID:(id)d withReply:(id)reply;
- (void)destinationInformation:(id)information forUUID:(id)d;
- (void)initConnectionToServer:(id)server;
- (void)openSocketFromAccessoryToApp:(id)app;
- (void)openSocketFromAppToAccessory:(id)accessory;
- (void)processOutgoingExternalAccessoryData:(id)data forEASessionIdentifier:(id)identifier withReply:(id)reply;
- (void)registerClientInformation:(id)information onInstantiation:(BOOL)instantiation withReply:(id)reply;
- (void)requestAccessoryWiFiCredentials:(id)credentials;
- (void)sendDeviceIdentifierNotification:(id)notification usbIdentifier:(id)identifier forUUID:(id)d;
- (void)sendNMEAFilterList:(id)list forUUID:(id)d;
- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier forUUID:(id)d;
- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier themeAssetsAvailable:(id)assetsAvailable forUUID:(id)d;
- (void)stopLocationForUUID:(id)d;
- (void)vehicleInformationForUUID:(id)d withReply:(id)reply;
- (void)verifyAccessoryConnectionStatus:(id)status legacyConnectionID:(id)d withReply:(id)reply;
@end

@implementation ACCExternalAccessoryServerRemote

- (ACCExternalAccessoryServerRemote)initWithClientInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = ACCExternalAccessoryServerRemote;
  v5 = [(ACCExternalAccessoryServerRemote *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (infoCopy)
    {
      objc_storeWeak(&v5->_clientInfo, infoCopy);
      v7 = objc_alloc_init(NSLock);
      remoteExternalAccessoryServerLock = v6->_remoteExternalAccessoryServerLock;
      v6->_remoteExternalAccessoryServerLock = v7;
    }

    else
    {
      remoteExternalAccessoryServerLock = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (void)initConnectionToServer:(id)server
{
  serverCopy = server;
  v5 = +[ACCExternalAccessoryServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    clientInfo = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    xPCConnection = [clientInfo XPCConnection];
    v8 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:xPCConnection] != 0;
  }

  else
  {
    v8 = 0;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 10;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v10 = &_os_log_default;
  }

  else
  {
    v11 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ExternalAccessory provider has called initConnectionToServer method!", v14, 2u);
  }

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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "shouldStayConnected: %d", v14, 8u);
  }

  serverCopy[2](serverCopy, v8);
}

- (void)registerClientInformation:(id)information onInstantiation:(BOOL)instantiation withReply:(id)reply
{
  instantiationCopy = instantiation;
  informationCopy = information;
  replyCopy = reply;
  v10 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = informationCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA client %@ registering", buf, 0xCu);
  }

  clientInfo = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [clientInfo addClientRegistrationInformation:informationCopy];

  v15 = +[ACCExternalAccessoryServer sharedServer];
  v16 = +[NSMutableArray array];
  if (instantiationCopy)
  {
    v45 = replyCopy;
    v46 = informationCopy;
    selfCopy = self;
    clientInfo2 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    v44 = v15;
    v18 = [v15 externalAccessoryClientConnected:clientInfo2];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v51;
      v22 = &_os_log_default;
      do
      {
        v23 = 0;
        v48 = v20;
        do
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(obj);
          }

          eAAccessoryDictionary = [*(*(&v50 + 1) + 8 * v23) EAAccessoryDictionary];
          v25 = v10[491];
          v26 = gNumLogObjects;
          if (v25)
          {
            v27 = gNumLogObjects < 10;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v55 = v25;
              v56 = 1024;
              LODWORD(v57) = v26;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v28 = v22;
            v29 = v22;
          }

          else
          {
            v29 = *(v25 + 72);
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            [ACCExternalAccessory accessoryDictionaryForLogging:eAAccessoryDictionary];
            v30 = v21;
            v31 = v22;
            v32 = v16;
            v34 = v33 = v10;
            clientInfo3 = [(ACCExternalAccessoryServerRemote *)selfCopy clientInfo];
            bundleID = [clientInfo3 bundleID];
            *buf = 138412546;
            v55 = v34;
            v56 = 2112;
            v57 = bundleID;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] initial accEADict %@ connected for EA client %@!", buf, 0x16u);

            v10 = v33;
            v16 = v32;
            v22 = v31;
            v21 = v30;
            v20 = v48;
          }

          [v16 addObject:eAAccessoryDictionary];
          v23 = v23 + 1;
        }

        while (v20 != v23);
        v20 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v20);
    }

    replyCopy = v45;
    v45[2](v45, 1, v16);
    informationCopy = v46;
    self = selfCopy;
    v15 = v44;
  }

  else
  {
    replyCopy[2](replyCopy, 1, v16);
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v37 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v37 = &_os_log_default;
      v38 = &_os_log_default;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      clientInfo4 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
      bundleID2 = [clientInfo4 bundleID];
      *buf = 138412290;
      v55 = bundleID2;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] client %@ connected to EA XPC Server, sending notification of any EAAccessories", buf, 0xCu);
    }

    clientInfo5 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    [v15 notifyClientOfConnectedAccessories:clientInfo5];
  }

  clientInfo6 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v15 notifyClientOfConnectedDestinationSharingAccessories:clientInfo6];

  clientInfo7 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v15 notifyClientOfConnectedVehicleStatus:clientInfo7];
}

- (void)verifyAccessoryConnectionStatus:(id)status legacyConnectionID:(id)d withReply:(id)reply
{
  statusCopy = status;
  dCopy = d;
  replyCopy = reply;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 10;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = statusCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] verifyAccessoryConnectionStatus: %@ legacyConnectionID: %@", &v16, 0x16u);
  }

  v13 = platform_externalAccessory_verifyPrimaryEndpointConnected(statusCopy, dCopy);
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v14 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = statusCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] verifyAccessoryConnectionStatus: %@ legacyConnectionID: %@... accessoryConnected %d", &v16, 0x1Cu);
  }

  replyCopy[2](replyCopy, v13);
}

- (void)createExternalAccessorySessionForProtocol:(id)protocol accessoryUUID:(id)d withReply:(id)reply
{
  protocolCopy = protocol;
  dCopy = d;
  replyCopy = reply;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    clientInfo = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    bundleID = [clientInfo bundleID];
    *buf = 138412802;
    v36 = bundleID;
    v37 = 2112;
    v38 = protocolCopy;
    v39 = 2112;
    v40 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "App %@ wants to create EA session for protocol %@, primary accessory UUID %@", buf, 0x20u);
  }

  v34 = 0;
  v16 = +[ACCExternalAccessorySessionManager sharedManager];
  clientInfo2 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  v18 = [v16 createSessionForProtocol:protocolCopy fromPrimaryAccessoryUUID:dCopy fromClient:clientInfo2 result:&v34];

  if (v34)
  {
    clientInfo3 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    eaSessionUUIDs = [clientInfo3 eaSessionUUIDs];
    v21 = kACCExternalAccessorySessionUUIDKey;
    v22 = [v18 objectForKey:kACCExternalAccessorySessionUUIDKey];
    [eaSessionUUIDs addObject:v22];

    v23 = [v18 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
    platform_externalAccessory_openExternalAccessorySession(v23, v18);
    v24 = [v18 objectForKey:kACCExternalAccessorySessionIDKey];
    v25 = [v18 objectForKey:kACCExternalAccessorySessionUsesSocketInterfaceKey];
    v26 = v25;
    if (v25)
    {
      bOOLValue = [v25 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    unsignedLongValue = [v24 unsignedLongValue];
    v30 = [v18 objectForKey:v21];
    replyCopy[2](replyCopy, 1, bOOLValue, unsignedLongValue, v30);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v28 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v28 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      clientInfo4 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
      bundleID2 = [clientInfo4 bundleID];
      *buf = 138412802;
      v36 = bundleID2;
      v37 = 2112;
      v38 = protocolCopy;
      v39 = 2112;
      v40 = dCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "App %@ could not create ea session for eaProtocol %@ and accessoryUUID %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, 0, 0, 0, &stru_10022D360);
  }
}

- (void)openSocketFromAccessoryToApp:(id)app
{
  appCopy = app;
  v4 = +[ACCExternalAccessorySessionManager sharedManager];
  [v4 openSocketFromAccessoryToApp:appCopy];
}

- (void)openSocketFromAppToAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = +[ACCExternalAccessorySessionManager sharedManager];
  [v4 openSocketFromAppToAccessory:accessoryCopy];
}

- (void)clientCloseExternalAccessorySession:(id)session
{
  sessionCopy = session;
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
    clientInfo = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    bundleID = [clientInfo bundleID];
    v15 = 138412546;
    v16 = bundleID;
    v17 = 2112;
    v18 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client app %@ is closing EA session for eaSessionUUID %@", &v15, 0x16u);
  }

  v10 = +[ACCExternalAccessorySessionManager sharedManager];
  v11 = [v10 closeSessionForEASessionUUID:sessionCopy];

  if (v11)
  {
    clientInfo2 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    eaSessionUUIDs = [clientInfo2 eaSessionUUIDs];
    [eaSessionUUIDs removeObject:sessionCopy];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      clientInfo2 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      clientInfo2 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(clientInfo2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = sessionCopy;
      _os_log_impl(&_mh_execute_header, clientInfo2, OS_LOG_TYPE_DEFAULT, "Session could not be closed or already closed for eaSessionUUID %@", &v15, 0xCu);
    }
  }
}

- (void)processOutgoingExternalAccessoryData:(id)data forEASessionIdentifier:(id)identifier withReply:(id)reply
{
  dataCopy = data;
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = +[ACCExternalAccessorySessionManager sharedManager];
  v11 = [v10 sessionInfoDictionaryForSessionUUID:identifierCopy];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

  if (v12)
  {
    v13 = [v12 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
    [v12 setObject:dataCopy forKey:kACCExternalAccessorySessionDataKey];
    v14 = platform_externalAccessory_sendOutgoingEADataFromClient(v13, v12);

    if (replyCopy)
    {
LABEL_3:
      replyCopy[2](replyCopy, v14);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v15 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v15 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No session for %@ to send outgoing data", &v17, 0xCu);
    }

    v14 = 0;
    if (replyCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)requestAccessoryWiFiCredentials:(id)credentials
{
  credentialsCopy = credentials;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = credentialsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request for accessory wifi Info for endpointUUID %@", &v7, 0xCu);
  }

  platform_wifisharing_request_accessory_wifi_information(credentialsCopy);
}

- (void)sendDeviceIdentifierNotification:(id)notification usbIdentifier:(id)identifier forUUID:(id)d
{
  notificationCopy = notification;
  identifierCopy = identifier;
  dCopy = d;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 10;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received sendDeviceIdentifierNotification for endpointUUID %@", &v13, 0xCu);
  }
}

- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier forUUID:(id)d
{
  availableCopy = available;
  identifierCopy = identifier;
  wirelessAvailableCopy = wirelessAvailable;
  bluetoothIdentifierCopy = bluetoothIdentifier;
  dCopy = d;
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 10;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v18 = &_os_log_default;
    v17 = &_os_log_default;
  }

  else
  {
    v18 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v28 = 138413314;
    v29 = dCopy;
    v30 = 2112;
    v31 = availableCopy;
    v32 = 2112;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = wirelessAvailableCopy;
    v36 = 2112;
    v37 = bluetoothIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[#CarPlay] Received CarPlayAvailability for accessory UUID %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@", &v28, 0x34u);
  }

  v19 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
  v20 = [v19 objectForKey:@"enableNewDiscoveryMode"];
  if (v20 && (v21 = v20, v22 = [v19 BOOLForKey:@"enableNewDiscoveryMode"], v21, (v22 & 1) == 0))
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v26 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v26 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[#CarPlay] CarPlay New Discovery Mode is currently unavailable.", &v28, 2u);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v23 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v23 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[#CarPlay] CarPlay New Discovery Mode is available.", &v28, 2u);
    }

    v25 = +[NSMutableDictionary dictionary];
    v26 = v25;
    if (availableCopy)
    {
      [v25 setObject:availableCopy forKey:@"wiredAvailable"];
    }

    if (identifierCopy)
    {
      [v26 setObject:identifierCopy forKey:@"usbIdentifier"];
    }

    if (wirelessAvailableCopy)
    {
      [v26 setObject:wirelessAvailableCopy forKey:@"wirelessAvailable"];
    }

    if (bluetoothIdentifierCopy)
    {
      [v26 setObject:bluetoothIdentifierCopy forKey:@"bluetoothIdentifier"];
    }

    platform_CarPlay_availability(dCopy, v26);
  }
}

- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier themeAssetsAvailable:(id)assetsAvailable forUUID:(id)d
{
  availableCopy = available;
  identifierCopy = identifier;
  wirelessAvailableCopy = wirelessAvailable;
  bluetoothIdentifierCopy = bluetoothIdentifier;
  assetsAvailableCopy = assetsAvailable;
  dCopy = d;
  if (gLogObjects)
  {
    v19 = gNumLogObjects < 10;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v21 = &_os_log_default;
    v20 = &_os_log_default;
  }

  else
  {
    v21 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v24 = 138413570;
    v25 = dCopy;
    v26 = 2112;
    v27 = availableCopy;
    v28 = 2112;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = wirelessAvailableCopy;
    v32 = 2112;
    v33 = bluetoothIdentifierCopy;
    v34 = 2112;
    v35 = assetsAvailableCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[#CarPlay] Received CarPlayAvailability for accessory UUID %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@ themeAssetsAvailable %@", &v24, 0x3Eu);
  }

  v22 = +[NSMutableDictionary dictionary];
  v23 = v22;
  if (availableCopy)
  {
    [v22 setObject:availableCopy forKey:@"wiredAvailable"];
  }

  if (identifierCopy)
  {
    [v23 setObject:identifierCopy forKey:@"usbIdentifier"];
  }

  if (wirelessAvailableCopy)
  {
    [v23 setObject:wirelessAvailableCopy forKey:@"wirelessAvailable"];
  }

  if (bluetoothIdentifierCopy)
  {
    [v23 setObject:bluetoothIdentifierCopy forKey:@"bluetoothIdentifier"];
  }

  if (assetsAvailableCopy)
  {
    [v23 setObject:assetsAvailableCopy forKey:@"themeAssetsAvailable"];
  }

  platform_CarPlay_availability(dCopy, v23);
}

- (void)destinationInformation:(id)information forUUID:(id)d
{
  informationCopy = information;
  dCopy = d;
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ACCExternalAccessoryServerRemote *)informationCopy destinationInformation:dCopy forUUID:v9];
  }

  platform_destinationSharing_destinationInformation(dCopy, informationCopy);
}

- (void)activateLocationForUUID:(id)d
{
  dCopy = d;
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
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Location] Starting location for endpoint UUID %@", &v10, 0xCu);
  }

  clientInfo = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [clientInfo setClientLocationEnabled:1];

  clientInfo2 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [clientInfo2 addLocationAccessoryUUID:dCopy];

  platform_location_start(dCopy);
}

- (void)sendNMEAFilterList:(id)list forUUID:(id)d
{
  listCopy = list;
  dCopy = d;
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
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Location] Sending NMEA filter list to endpoint UUID %@", &v10, 0xCu);
  }

  platform_location_sendNMEAFilterList(dCopy, listCopy);
}

- (void)stopLocationForUUID:(id)d
{
  dCopy = d;
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
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Location] Stopping location for endpoint UUID %@", &v9, 0xCu);
  }

  clientInfo = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [clientInfo removeLocationAccessoryUUID:dCopy];

  platform_location_stop(dCopy);
}

- (void)vehicleInformationForUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 10;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] Requesting vehicle information for endpoint UUID %@", &v14, 0xCu);
  }

  remoteExternalAccessoryServerLock = [(ACCExternalAccessoryServerRemote *)self remoteExternalAccessoryServerLock];
  [remoteExternalAccessoryServerLock lock];

  v12 = platform_externalAccessory_copyVehicleInformationForEndpointUUID(dCopy);
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v12);
  }

  remoteExternalAccessoryServerLock2 = [(ACCExternalAccessoryServerRemote *)self remoteExternalAccessoryServerLock];
  [remoteExternalAccessoryServerLock2 unlock];
}

- (ACCExternalAccessoryClientInfo)clientInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);

  return WeakRetained;
}

- (void)destinationInformation:(os_log_t)log forUUID:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Received destination info %@ accessory UUID %@", &v3, 0x16u);
}

@end