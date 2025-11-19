@interface ACCExternalAccessoryServerRemote
- (ACCExternalAccessoryClientInfo)clientInfo;
- (ACCExternalAccessoryServerRemote)initWithClientInfo:(id)a3;
- (void)activateLocationForUUID:(id)a3;
- (void)clientCloseExternalAccessorySession:(id)a3;
- (void)createExternalAccessorySessionForProtocol:(id)a3 accessoryUUID:(id)a4 withReply:(id)a5;
- (void)destinationInformation:(id)a3 forUUID:(id)a4;
- (void)initConnectionToServer:(id)a3;
- (void)openSocketFromAccessoryToApp:(id)a3;
- (void)openSocketFromAppToAccessory:(id)a3;
- (void)processOutgoingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5;
- (void)registerClientInformation:(id)a3 onInstantiation:(BOOL)a4 withReply:(id)a5;
- (void)requestAccessoryWiFiCredentials:(id)a3;
- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4 forUUID:(id)a5;
- (void)sendNMEAFilterList:(id)a3 forUUID:(id)a4;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 forUUID:(id)a7;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7 forUUID:(id)a8;
- (void)stopLocationForUUID:(id)a3;
- (void)vehicleInformationForUUID:(id)a3 withReply:(id)a4;
- (void)verifyAccessoryConnectionStatus:(id)a3 legacyConnectionID:(id)a4 withReply:(id)a5;
@end

@implementation ACCExternalAccessoryServerRemote

- (ACCExternalAccessoryServerRemote)initWithClientInfo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ACCExternalAccessoryServerRemote;
  v5 = [(ACCExternalAccessoryServerRemote *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      objc_storeWeak(&v5->_clientInfo, v4);
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

- (void)initConnectionToServer:(id)a3
{
  v4 = a3;
  v5 = +[ACCExternalAccessoryServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    v7 = [v6 XPCConnection];
    v8 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:v7] != 0;
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

  v4[2](v4, v8);
}

- (void)registerClientInformation:(id)a3 onInstantiation:(BOOL)a4 withReply:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
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
    v55 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA client %@ registering", buf, 0xCu);
  }

  v14 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v14 addClientRegistrationInformation:v8];

  v15 = +[ACCExternalAccessoryServer sharedServer];
  v16 = +[NSMutableArray array];
  if (v6)
  {
    v45 = v9;
    v46 = v8;
    v47 = self;
    v17 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    v44 = v15;
    v18 = [v15 externalAccessoryClientConnected:v17];

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

          v24 = [*(*(&v50 + 1) + 8 * v23) EAAccessoryDictionary];
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
            [ACCExternalAccessory accessoryDictionaryForLogging:v24];
            v30 = v21;
            v31 = v22;
            v32 = v16;
            v34 = v33 = v10;
            v35 = [(ACCExternalAccessoryServerRemote *)v47 clientInfo];
            v36 = [v35 bundleID];
            *buf = 138412546;
            v55 = v34;
            v56 = 2112;
            v57 = v36;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] initial accEADict %@ connected for EA client %@!", buf, 0x16u);

            v10 = v33;
            v16 = v32;
            v22 = v31;
            v21 = v30;
            v20 = v48;
          }

          [v16 addObject:v24];
          v23 = v23 + 1;
        }

        while (v20 != v23);
        v20 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v20);
    }

    v9 = v45;
    v45[2](v45, 1, v16);
    v8 = v46;
    self = v47;
    v15 = v44;
  }

  else
  {
    v9[2](v9, 1, v16);
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
      v39 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
      v40 = [v39 bundleID];
      *buf = 138412290;
      v55 = v40;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] client %@ connected to EA XPC Server, sending notification of any EAAccessories", buf, 0xCu);
    }

    v41 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    [v15 notifyClientOfConnectedAccessories:v41];
  }

  v42 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v15 notifyClientOfConnectedDestinationSharingAccessories:v42];

  v43 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v15 notifyClientOfConnectedVehicleStatus:v43];
}

- (void)verifyAccessoryConnectionStatus:(id)a3 legacyConnectionID:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] verifyAccessoryConnectionStatus: %@ legacyConnectionID: %@", &v16, 0x16u);
  }

  v13 = platform_externalAccessory_verifyPrimaryEndpointConnected(v7, v8);
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
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] verifyAccessoryConnectionStatus: %@ legacyConnectionID: %@... accessoryConnected %d", &v16, 0x1Cu);
  }

  v9[2](v9, v13);
}

- (void)createExternalAccessorySessionForProtocol:(id)a3 accessoryUUID:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v14 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    v15 = [v14 bundleID];
    *buf = 138412802;
    v36 = v15;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "App %@ wants to create EA session for protocol %@, primary accessory UUID %@", buf, 0x20u);
  }

  v34 = 0;
  v16 = +[ACCExternalAccessorySessionManager sharedManager];
  v17 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  v18 = [v16 createSessionForProtocol:v8 fromPrimaryAccessoryUUID:v9 fromClient:v17 result:&v34];

  if (v34)
  {
    v19 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    v20 = [v19 eaSessionUUIDs];
    v21 = kACCExternalAccessorySessionUUIDKey;
    v22 = [v18 objectForKey:kACCExternalAccessorySessionUUIDKey];
    [v20 addObject:v22];

    v23 = [v18 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
    platform_externalAccessory_openExternalAccessorySession(v23, v18);
    v24 = [v18 objectForKey:kACCExternalAccessorySessionIDKey];
    v25 = [v18 objectForKey:kACCExternalAccessorySessionUsesSocketInterfaceKey];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 BOOLValue];
    }

    else
    {
      v27 = 0;
    }

    v29 = [v24 unsignedLongValue];
    v30 = [v18 objectForKey:v21];
    v10[2](v10, 1, v27, v29, v30);
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
      v32 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
      v33 = [v32 bundleID];
      *buf = 138412802;
      v36 = v33;
      v37 = 2112;
      v38 = v8;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "App %@ could not create ea session for eaProtocol %@ and accessoryUUID %@", buf, 0x20u);
    }

    v10[2](v10, 0, 0, 0, &stru_10022D360);
  }
}

- (void)openSocketFromAccessoryToApp:(id)a3
{
  v3 = a3;
  v4 = +[ACCExternalAccessorySessionManager sharedManager];
  [v4 openSocketFromAccessoryToApp:v3];
}

- (void)openSocketFromAppToAccessory:(id)a3
{
  v3 = a3;
  v4 = +[ACCExternalAccessorySessionManager sharedManager];
  [v4 openSocketFromAppToAccessory:v3];
}

- (void)clientCloseExternalAccessorySession:(id)a3
{
  v4 = a3;
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
    v8 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    v9 = [v8 bundleID];
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client app %@ is closing EA session for eaSessionUUID %@", &v15, 0x16u);
  }

  v10 = +[ACCExternalAccessorySessionManager sharedManager];
  v11 = [v10 closeSessionForEASessionUUID:v4];

  if (v11)
  {
    v12 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
    v13 = [v12 eaSessionUUIDs];
    [v13 removeObject:v4];
  }

  else
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
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session could not be closed or already closed for eaSessionUUID %@", &v15, 0xCu);
    }
  }
}

- (void)processOutgoingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ACCExternalAccessorySessionManager sharedManager];
  v11 = [v10 sessionInfoDictionaryForSessionUUID:v8];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

  if (v12)
  {
    v13 = [v12 objectForKey:kACCExternalAccessoryProtocolEndpointUUIDKey];
    [v12 setObject:v7 forKey:kACCExternalAccessorySessionDataKey];
    v14 = platform_externalAccessory_sendOutgoingEADataFromClient(v13, v12);

    if (v9)
    {
LABEL_3:
      v9[2](v9, v14);
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
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No session for %@ to send outgoing data", &v17, 0xCu);
    }

    v14 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }
}

- (void)requestAccessoryWiFiCredentials:(id)a3
{
  v3 = a3;
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
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request for accessory wifi Info for endpointUUID %@", &v7, 0xCu);
  }

  platform_wifisharing_request_accessory_wifi_information(v3);
}

- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4 forUUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received sendDeviceIdentifierNotification for endpointUUID %@", &v13, 0xCu);
  }
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 forUUID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
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
    v29 = v15;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
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
    if (v11)
    {
      [v25 setObject:v11 forKey:@"wiredAvailable"];
    }

    if (v12)
    {
      [v26 setObject:v12 forKey:@"usbIdentifier"];
    }

    if (v13)
    {
      [v26 setObject:v13 forKey:@"wirelessAvailable"];
    }

    if (v14)
    {
      [v26 setObject:v14 forKey:@"bluetoothIdentifier"];
    }

    platform_CarPlay_availability(v15, v26);
  }
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7 forUUID:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
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
    v25 = v18;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[#CarPlay] Received CarPlayAvailability for accessory UUID %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@ themeAssetsAvailable %@", &v24, 0x3Eu);
  }

  v22 = +[NSMutableDictionary dictionary];
  v23 = v22;
  if (v13)
  {
    [v22 setObject:v13 forKey:@"wiredAvailable"];
  }

  if (v14)
  {
    [v23 setObject:v14 forKey:@"usbIdentifier"];
  }

  if (v15)
  {
    [v23 setObject:v15 forKey:@"wirelessAvailable"];
  }

  if (v16)
  {
    [v23 setObject:v16 forKey:@"bluetoothIdentifier"];
  }

  if (v17)
  {
    [v23 setObject:v17 forKey:@"themeAssetsAvailable"];
  }

  platform_CarPlay_availability(v18, v23);
}

- (void)destinationInformation:(id)a3 forUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    [(ACCExternalAccessoryServerRemote *)v5 destinationInformation:v6 forUUID:v9];
  }

  platform_destinationSharing_destinationInformation(v6, v5);
}

- (void)activateLocationForUUID:(id)a3
{
  v4 = a3;
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
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Location] Starting location for endpoint UUID %@", &v10, 0xCu);
  }

  v8 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v8 setClientLocationEnabled:1];

  v9 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v9 addLocationAccessoryUUID:v4];

  platform_location_start(v4);
}

- (void)sendNMEAFilterList:(id)a3 forUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Location] Sending NMEA filter list to endpoint UUID %@", &v10, 0xCu);
  }

  platform_location_sendNMEAFilterList(v6, v5);
}

- (void)stopLocationForUUID:(id)a3
{
  v4 = a3;
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
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Location] Stopping location for endpoint UUID %@", &v9, 0xCu);
  }

  v8 = [(ACCExternalAccessoryServerRemote *)self clientInfo];
  [v8 removeLocationAccessoryUUID:v4];

  platform_location_stop(v4);
}

- (void)vehicleInformationForUUID:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] Requesting vehicle information for endpoint UUID %@", &v14, 0xCu);
  }

  v11 = [(ACCExternalAccessoryServerRemote *)self remoteExternalAccessoryServerLock];
  [v11 lock];

  v12 = platform_externalAccessory_copyVehicleInformationForEndpointUUID(v6);
  if (v7)
  {
    v7[2](v7, v12);
  }

  v13 = [(ACCExternalAccessoryServerRemote *)self remoteExternalAccessoryServerLock];
  [v13 unlock];
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