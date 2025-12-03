@interface ACCExternalAccessoryClientInfo
- (ACCExternalAccessoryClientInfo)initWithXPCConnection:(id)connection;
- (BOOL)canSendConnectionEventForAccessory:(id)accessory;
- (BOOL)canSendLaunchEvent;
- (BOOL)containsLocationAccessoryUUID:(id)d;
- (void)_determineEntitlementsForXPCConnection;
- (void)addClientRegistrationInformation:(id)information;
- (void)addLocationAccessoryUUID:(id)d;
- (void)canSendLaunchEvent;
- (void)dealloc;
- (void)removeLocationAccessoryUUID:(id)d;
@end

@implementation ACCExternalAccessoryClientInfo

- (ACCExternalAccessoryClientInfo)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = ACCExternalAccessoryClientInfo;
  v5 = [(XPCConnectionInfo *)&v14 initWithXPCConnection:connectionCopy];
  v6 = v5;
  if (v5)
  {
    [(ACCExternalAccessoryClientInfo *)v5 _determineEntitlementsForXPCConnection];
    v6->_clientLocationEnabled = 0;
    v6->_vehicleInfoEnabled = 0;
    v7 = +[NSMutableSet set];
    eaSessionUUIDs = v6->_eaSessionUUIDs;
    v6->_eaSessionUUIDs = v7;

    v9 = +[NSMutableArray array];
    activeLocationAccessoryUUIDs = v6->_activeLocationAccessoryUUIDs;
    v6->_activeLocationAccessoryUUIDs = v9;

    v6->_clientPid = [connectionCopy processIdentifier];
    v11 = dispatch_queue_create("com.apple.accessoryd.ea.uuidQueue", 0);
    locationAccessoryUUIDsQueue = v6->_locationAccessoryUUIDsQueue;
    v6->_locationAccessoryUUIDsQueue = v11;
  }

  return v6;
}

- (void)dealloc
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    bundleID = [(ACCExternalAccessoryClientInfo *)self bundleID];
    *buf = 138412290;
    v9 = bundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "client %@ released", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = ACCExternalAccessoryClientInfo;
  [(ACCExternalAccessoryClientInfo *)&v7 dealloc];
}

- (void)_determineEntitlementsForXPCConnection
{
  xPCConnection = [(XPCConnectionInfo *)self XPCConnection];
  v4 = [xPCConnection valueForEntitlement:@"com.apple.private.externalaccessory.showallaccessories"];

  if (v4)
  {
    self->_allAccessoryNotificationsEntitlement = 1;
  }

  xPCConnection2 = [(XPCConnectionInfo *)self XPCConnection];
  v6 = [xPCConnection2 valueForEntitlement:@"com.apple.iapd.accessibility"];

  if (v6)
  {
    self->_accessibilityEntitlement = 1;
  }
}

- (void)addClientRegistrationInformation:(id)information
{
  v4 = kACCExternalAccessoryClientBundleIDKey;
  informationCopy = information;
  v6 = [informationCopy objectForKey:v4];
  v7 = [v6 copy];

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
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EA client %@ registering", &v17, 0xCu);
  }

  bundleID = self->_bundleID;
  self->_bundleID = v7;
  v12 = v7;

  v13 = [informationCopy objectForKey:kACCExternalAccessoryClientEAProtocolsKey];
  v14 = [v13 copy];
  protocolStrings = self->_protocolStrings;
  self->_protocolStrings = v14;

  v16 = [informationCopy objectForKey:kACCExternalAccessoryClientEACapablitiesKey];

  self->_clientCapabilities = [v16 unsignedLongLongValue];
}

- (BOOL)canSendConnectionEventForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  copyExternalAccessoryProtocols = [accessoryCopy copyExternalAccessoryProtocols];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([copyExternalAccessoryProtocols count])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __69__ACCExternalAccessoryClientInfo_canSendConnectionEventForAccessory___block_invoke;
    v16[3] = &unk_1002288F0;
    v16[4] = self;
    v16[5] = &v17;
    [copyExternalAccessoryProtocols enumerateObjectsUsingBlock:v16];
    if ((v18[3] & 1) == 0)
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
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        bundleID = [(ACCExternalAccessoryClientInfo *)self bundleID];
        *buf = 138412290;
        v22 = bundleID;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No protocols found for client %@", buf, 0xCu);
      }
    }
  }

  v9 = (v18[3] & 1) != 0 || [(ACCExternalAccessoryClientInfo *)self allAccessoryNotificationsEntitlement];
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v10 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bundleID2 = [(ACCExternalAccessoryClientInfo *)self bundleID];
    allAccessoryNotificationsEntitlement = [(ACCExternalAccessoryClientInfo *)self allAccessoryNotificationsEntitlement];
    v14 = *(v18 + 24);
    *buf = 138413058;
    v22 = bundleID2;
    v23 = 1024;
    v24 = allAccessoryNotificationsEntitlement;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "bundleID %@, _entitlementForAllAccessories = %d, anyProtocolFound = %d, canSendConnectionEvent = %d", buf, 0x1Eu);
  }

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __69__ACCExternalAccessoryClientInfo_canSendConnectionEventForAccessory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) protocolStrings];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __69__ACCExternalAccessoryClientInfo_canSendConnectionEventForAccessory___block_invoke_2;
  v12[3] = &unk_1002288C8;
  v8 = v6;
  v13 = v8;
  v9 = [v7 indexOfObjectPassingTest:v12];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v10 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __69__ACCExternalAccessoryClientInfo_canSendConnectionEventForAccessory___block_invoke_cold_2(v8, v10);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)canSendLaunchEvent
{
  if (([(ACCExternalAccessoryClientInfo *)self clientCapabilities]& 0x10) != 0 && platform_system_unlockedSinceBoot())
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

      v11 = &_os_log_default;
      v4 = &_os_log_default;
    }

    else
    {
      v11 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ACCExternalAccessoryClientInfo *)self canSendLaunchEvent];
    }

    v10 = 1;
  }

  else
  {
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

      v11 = &_os_log_default;
      v6 = &_os_log_default;
    }

    else
    {
      v11 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      bundleID = [(ACCExternalAccessoryClientInfo *)self bundleID];
      if (([(ACCExternalAccessoryClientInfo *)self clientCapabilities]& 0x10) != 0)
      {
        v8 = @"yes";
      }

      else
      {
        v8 = @"no";
      }

      v13 = 138412802;
      if (platform_system_unlockedSinceBoot())
      {
        v9 = @"yes";
      }

      else
      {
        v9 = @"no";
      }

      v14 = bundleID;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Don't send launch event for bundleID %@ ... supports EA in background = %@, unlockedSinceBoot = %@, or app is already in foreground", &v13, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)addLocationAccessoryUUID:(id)d
{
  dCopy = d;
  locationAccessoryUUIDsQueue = self->_locationAccessoryUUIDsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __59__ACCExternalAccessoryClientInfo_addLocationAccessoryUUID___block_invoke;
  v7[3] = &unk_100225A08;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(locationAccessoryUUIDsQueue, v7);
}

- (void)removeLocationAccessoryUUID:(id)d
{
  dCopy = d;
  locationAccessoryUUIDsQueue = self->_locationAccessoryUUIDsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __62__ACCExternalAccessoryClientInfo_removeLocationAccessoryUUID___block_invoke;
  v7[3] = &unk_100225A08;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(locationAccessoryUUIDsQueue, v7);
}

- (BOOL)containsLocationAccessoryUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  locationAccessoryUUIDsQueue = self->_locationAccessoryUUIDsQueue;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__ACCExternalAccessoryClientInfo_containsLocationAccessoryUUID___block_invoke;
  block[3] = &unk_1002259B8;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(locationAccessoryUUIDsQueue, block);
  LOBYTE(locationAccessoryUUIDsQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return locationAccessoryUUIDsQueue;
}

id __64__ACCExternalAccessoryClientInfo_containsLocationAccessoryUUID___block_invoke(void *a1)
{
  result = [*(a1[4] + 56) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __69__ACCExternalAccessoryClientInfo_canSendConnectionEventForAccessory___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "protocol %@ found from accessory", &v2, 0xCu);
}

- (void)canSendLaunchEvent
{
  bundleID = [self bundleID];
  v4 = 138412290;
  v5 = bundleID;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Can send launch event for bundleID %@", &v4, 0xCu);
}

@end