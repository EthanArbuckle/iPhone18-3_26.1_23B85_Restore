@interface ACCConnectionInfoServerRemote
- (ACCConnectionInfoClientInfo)clientInfo;
- (ACCConnectionInfoServerRemote)initWithClientInfo:(id)a3;
- (BOOL)_checkClientEntitlements:(unint64_t)a3;
- (id)getFilterForClient:(id)a3;
- (void)accessoryEndpointsForConnection:(id)a3 withReply:(id)a4;
- (void)accessoryInfoForConnection:(id)a3 withReply:(id)a4;
- (void)accessoryInfoForEndpoint:(id)a3 connection:(id)a4 withReply:(id)a5;
- (void)accessoryProperty:(id)a3 forConnection:(id)a4 withReply:(id)a5;
- (void)accessoryProperty:(id)a3 forEndpoint:(id)a4 connection:(id)a5 withReply:(id)a6;
- (void)beginUserKeyErase:(id)a3 withReply:(id)a4;
- (void)beginVendorKeyErase:(id)a3 withReply:(id)a4;
- (void)cancelUserKeyErase:(id)a3 withReply:(id)a4;
- (void)cancelVendorKeyErase:(id)a3 withReply:(id)a4;
- (void)configStreamCategoriesRequest:(id)a3 connection:(id)a4;
- (void)configStreamPropertySetValue:(id)a3 forProperty:(unsigned __int8)a4 forCategory:(unsigned __int16)a5 forEndpoint:(id)a6 connection:(id)a7;
- (void)continueUserKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7;
- (void)continueVendorKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7;
- (void)copyLocalizedAccessoryName:(id)a3 withReply:(id)a4;
- (void)copyUserPrivateKey:(id)a3 withReply:(id)a4;
- (void)getAccessoryUserName:(id)a3 withReply:(id)a4;
- (void)getInterceptCountForEndpoint:(id)a3 connection:(id)a4 withReply:(id)a5;
- (void)getPairingStatus:(id)a3 withReply:(id)a4;
- (void)getPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)getPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)initConnection:(id)a3;
- (void)interceptIncomingNTimes:(int)a3 forEndpoint:(id)a4 connection:(id)a5;
- (void)notifyOfClient:(id)a3 bundleID:(id)a4 withFilter:(id)a5;
- (void)notifyOfClient:(id)a3 bundleID:(id)a4 withFilter:(id)a5 forIdentifier:(id)a6;
- (void)provisionAccessoryForFindMy:(id)a3 withReply:(id)a4;
- (void)resetPairingInformation:(id)a3 withReply:(id)a4;
- (void)sendData:(id)a3 forEndpoint:(id)a4 connection:(id)a5;
- (void)setAccessoryUserName:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)setPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)setPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
@end

@implementation ACCConnectionInfoServerRemote

- (ACCConnectionInfoServerRemote)initWithClientInfo:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ACCConnectionInfoServerRemote;
  v5 = [(ACCConnectionInfoServerRemote *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      objc_storeWeak(&v5->_clientInfo, v4);
      v7 = objc_alloc_init(NSMutableSet);
      interceptEnabled = v6->_interceptEnabled;
      v6->_interceptEnabled = v7;

      v9 = objc_alloc_init(NSLock);
      remoteConnectionInfoServerLock = v6->_remoteConnectionInfoServerLock;
      v6->_remoteConnectionInfoServerLock = v9;
    }

    else
    {
      remoteConnectionInfoServerLock = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (void)initConnection:(id)a3
{
  v4 = a3;
  v5 = +[ACCConnectionInfoServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCConnectionInfoServerRemote *)self clientInfo];
    v7 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:v6] != 0;
  }

  else
  {
    v7 = 0;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 9;
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
    v10 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ConnectionInfo provider has called initConnectionToServer method!", v13, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "shouldStayConnected: %d", v13, 8u);
  }

  v4[2](v4, v7);
}

- (void)notifyOfClient:(id)a3 bundleID:(id)a4 withFilter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 9;
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
    v13 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ConnectionInfo client %@ (%@) registering withFilter %@", &v16, 0x20u);
  }

  v14 = +[ACCConnectionInfoServer sharedServer];
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  [v14 notifyOfClient:v8 bundleID:v9 forClient:WeakRetained withFilter:v10];
}

- (void)notifyOfClient:(id)a3 bundleID:(id)a4 withFilter:(id)a5 forIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 9;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v15 = &_os_log_default;
  }

  else
  {
    v16 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ConnectionInfo client %@ (%@) registering withFilter %@", &v19, 0x20u);
  }

  v17 = +[ACCConnectionInfoServer sharedServer];
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  [v17 notifyOfClient:v10 bundleID:v11 forClient:WeakRetained withFilter:v12 forIdentifier:v13];
}

- (id)getFilterForClient:(id)a3
{
  v3 = a3;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
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
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ACCConnectionInfoServerRemote getFilterForClient:];
  }

  return 0;
}

- (void)accessoryEndpointsForConnection:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = platform_connectionInfo_accessoryEndpoints(v5);
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 9;
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
    v10 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCConnectionInfoServerRemote accessoryEndpointsForConnection:withReply:];
  }

  v6[2](v6, v5, v7);
}

- (void)accessoryInfoForConnection:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = platform_connectionInfo_accessoryInfoForConnection(v5);
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 9;
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
    v10 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCConnectionInfoServerRemote accessoryInfoForConnection:withReply:];
  }

  v6[2](v6, v5, v7);
}

- (void)accessoryInfoForEndpoint:(id)a3 connection:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = platform_connectionInfo_accessoryInfoForEndpoint(v8, v7);
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 9;
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
    v13 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "ConnectionInfo accessoryInfoForEndpoint: %@ - %@, send reply accInfo %@", &v14, 0x20u);
  }

  v9[2](v9, v7, v8, v10);
}

- (void)accessoryProperty:(id)a3 forConnection:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = platform_connectionInfo_accessoryPropertyForConnection(v8, v7);
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 9;
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
    v13 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "ConnectionInfo accessoryProperty: %@ forConnection: %@, send reply value %@", &v14, 0x20u);
  }

  v9[2](v9, v8, v7, v10);
}

- (void)accessoryProperty:(id)a3 forEndpoint:(id)a4 connection:(id)a5 withReply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = platform_connectionInfo_accessoryPropertyForEndpoint(v11, v10, v9);
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 9;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v15 = &_os_log_default;
  }

  else
  {
    v16 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138413058;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v13;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "ConnectionInfo accessoryProperty: %@ forEndpoint: %@ connection: %@, send reply value %@", &v17, 0x2Au);
  }

  v12[2](v12, v10, v11, v9, v13);
}

- (void)configStreamCategoriesRequest:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ACCConnectionInfoServer sharedServer];
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  v10 = [v8 copyClientUID:WeakRetained];

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 9;
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
    v13 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "ConnectionInfo configStreamCategoriesRequest: %@ connection: %@ client: %@", &v14, 0x20u);
  }

  platform_connectionInfo_configStreamGetCategories(v10, v7, v6);
}

- (void)configStreamPropertySetValue:(id)a3 forProperty:(unsigned __int8)a4 forCategory:(unsigned __int16)a5 forEndpoint:(id)a6 connection:(id)a7
{
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = +[ACCConnectionInfoServer sharedServer];
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  v17 = [v15 copyClientUID:WeakRetained];

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v18 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v18 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134219522;
    v21 = [v12 length];
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v9;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v12;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "ConnectionInfo configStreamPropertySetValue: (%lu bytes) forPropertyID:%u forCategory: 0x%x forEndpoint: %@ connection: %@ client: %@, propertyValue %@", &v20, 0x40u);
  }

  platform_connectionInfo_configStreamPropertySetValue(v17, v14, v13, v9, v10, v12);
}

- (void)copyLocalizedAccessoryName:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v4 = ACCConnectionInfoCopyLocalizedAccessoryNamePrivate();
  if (v5)
  {
    v5[2](v5, v4);
  }
}

- (void)interceptIncomingNTimes:(int)a3 forEndpoint:(id)a4 connection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[ACCConnectionInfoServer sharedServer];
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  v12 = [v10 checkClient:WeakRetained hasEntitlement:@"com.apple.accessory.testing"];

  if (v12)
  {
    if ((a3 != 0) != [(NSMutableSet *)self->_interceptEnabled containsObject:v8])
    {
      interceptEnabled = self->_interceptEnabled;
      if (a3)
      {
        [(NSMutableSet *)interceptEnabled addObject:v8];
      }

      else
      {
        [(NSMutableSet *)interceptEnabled removeObject:v8];
      }

      v16 = self->_interceptEnabled != 0;
      v17 = objc_loadWeakRetained(&self->_clientInfo);
      [v10 setInterceptState:v16 forEndpoint:v8 connection:v9 clientInfo:v17];
    }

    platform_connectionInfo_setupInterceptForEndpoint(v9, v8, a3);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 9)
    {
      v14 = *(gLogObjects + 64);
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

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "ConnectionInfo interceptIncomingNTimes: - client not entitled!", v18, 2u);
    }
  }
}

- (void)getInterceptCountForEndpoint:(id)a3 connection:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ACCConnectionInfoServer sharedServer];
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  v13 = [v11 checkClient:WeakRetained hasEntitlement:@"com.apple.accessory.testing"];

  if (v13)
  {
    InterceptCountForEndpoint = platform_connectionInfo_getInterceptCountForEndpoint(v9, v8);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 9)
    {
      v15 = *(gLogObjects + 64);
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

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "ConnectionInfo interceptIncomingNTimes: - client not entitled!", &v19, 2u);
    }

    InterceptCountForEndpoint = 0;
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v17 = *(gLogObjects + 64);
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
    v19 = 138412802;
    v20 = v9;
    v21 = 2112;
    v22 = v8;
    v23 = 1024;
    v24 = InterceptCountForEndpoint;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "ConnectionInfo getInterceptCountForEndpoint: %@ - %@, result %d", &v19, 0x1Cu);
  }

  v10[2](v10, v8, v9, InterceptCountForEndpoint);
}

- (void)sendData:(id)a3 forEndpoint:(id)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ACCConnectionInfoServer sharedServer];
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  v13 = [v11 checkClient:WeakRetained hasEntitlement:@"com.apple.accessory.testing"];

  if (v13)
  {
    platform_connectionInfo_sendDataForEndpoint(v10, v9, v8);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 9)
    {
      v14 = *(gLogObjects + 64);
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

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "ConnectionInfo sendData: - client not entitled!", v16, 2u);
    }
  }
}

- (void)getAccessoryUserName:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __64__ACCConnectionInfoServerRemote_getAccessoryUserName_withReply___block_invoke;
  v13[3] = &unk_1002294D0;
  v7 = a4;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  if (![(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1])
  {
    goto LABEL_14;
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v9 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ConnectionInfo getAccessoryUserName", v12, 2u);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(v6);
  if (EndpointWithUUID && *EndpointWithUUID)
  {
    platform_connectionInfo_getAccessoryUserName(EndpointWithUUID[1], v6, v8);
  }

  else
  {
LABEL_14:
    [ACCConnectionInfoServerRemote getAccessoryUserName:withReply:];
  }
}

void __64__ACCConnectionInfoServerRemote_getAccessoryUserName_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 9;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2 != 0;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ConnectionInfo getAccessoryUserName reply: %d, %@", v9, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setAccessoryUserName:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __76__ACCConnectionInfoServerRemote_setAccessoryUserName_forEndpoint_withReply___block_invoke;
  v15[3] = &unk_1002294F8;
  v10 = a5;
  v16 = v10;
  v11 = objc_retainBlock(v15);
  if (![(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1])
  {
    goto LABEL_14;
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v12 = *(gLogObjects + 64);
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [ACCConnectionInfoServerRemote setAccessoryUserName:forEndpoint:withReply:];
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(v9);
  if (EndpointWithUUID && *EndpointWithUUID)
  {
    platform_connectionInfo_setAccessoryUserName(v8, EndpointWithUUID[1], v9, v11);
  }

  else
  {
LABEL_14:
    [ACCConnectionInfoServerRemote setAccessoryUserName:forEndpoint:withReply:];
  }
}

void __76__ACCConnectionInfoServerRemote_setAccessoryUserName_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)provisionAccessoryForFindMy:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __71__ACCConnectionInfoServerRemote_provisionAccessoryForFindMy_withReply___block_invoke;
  v13[3] = &unk_1002294F8;
  v7 = a4;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  if (![(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1])
  {
    goto LABEL_14;
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v9 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ACCConnectionInfoServerRemote provisionAccessoryForFindMy", v12, 2u);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(v6);
  if (EndpointWithUUID && *EndpointWithUUID)
  {
    platform_connectionInfo_provisionPairing(EndpointWithUUID[1], v6, v8);
  }

  else
  {
LABEL_14:
    [ACCConnectionInfoServerRemote provisionAccessoryForFindMy:withReply:];
  }
}

void __71__ACCConnectionInfoServerRemote_provisionAccessoryForFindMy_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)getPairingStatus:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1])
  {
    goto LABEL_7;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(v6);
  if (!EndpointWithUUID || !*EndpointWithUUID)
  {
    [ACCConnectionInfoServerRemote getPairingStatus:withReply:];
LABEL_7:
    [ACCConnectionInfoServerRemote getPairingStatus:withReply:];
    goto LABEL_5;
  }

  v9 = EndpointWithUUID[1];
  PairingStatus = platform_connectionInfo_getPairingStatus();
  (*(v7 + 2))(v7, PairingStatus, 0);
LABEL_5:
}

- (void)resetPairingInformation:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __67__ACCConnectionInfoServerRemote_resetPairingInformation_withReply___block_invoke;
  v13[3] = &unk_1002294F8;
  v7 = a4;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  if (![(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1])
  {
    goto LABEL_14;
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v9 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ConnectionInfo resetPairingInformation", v12, 2u);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(v6);
  if (EndpointWithUUID && *EndpointWithUUID)
  {
    platform_connectionInfo_resetPairing(EndpointWithUUID[1], v6, v8);
  }

  else
  {
LABEL_14:
    [ACCConnectionInfoServerRemote resetPairingInformation:withReply:];
  }
}

void __67__ACCConnectionInfoServerRemote_resetPairingInformation_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)getPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __78__ACCConnectionInfoServerRemote_getPrivateNVMKeyValues_forEndpoint_withReply___block_invoke;
  v13[3] = &unk_100229520;
  v10 = a5;
  v14 = v10;
  v11 = objc_retainBlock(v13);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v9)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_getPrivateNvmKeyValues(EndpointWithUUID[1], v9, v8, v11);
  }

  else
  {
    [ACCConnectionInfoServerRemote getPrivateNVMKeyValues:forEndpoint:withReply:];
  }
}

void __78__ACCConnectionInfoServerRemote_getPrivateNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
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
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __78__ACCConnectionInfoServerRemote_getPrivateNVMKeyValues_forEndpoint_withReply___block_invoke_cold_2();
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v7 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __78__ACCConnectionInfoServerRemote_getPrivateNVMKeyValues_forEndpoint_withReply___block_invoke_cold_4();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __78__ACCConnectionInfoServerRemote_setPrivateNVMKeyValues_forEndpoint_withReply___block_invoke;
  v13[3] = &unk_1002294F8;
  v10 = a5;
  v14 = v10;
  v11 = objc_retainBlock(v13);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v9)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_setPrivateNvmKeyValues(EndpointWithUUID[1], v9, v8, v11);
  }

  else
  {
    [ACCConnectionInfoServerRemote setPrivateNVMKeyValues:forEndpoint:withReply:];
  }
}

void __78__ACCConnectionInfoServerRemote_setPrivateNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)getPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __77__ACCConnectionInfoServerRemote_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke;
  v13[3] = &unk_100229520;
  v10 = a5;
  v14 = v10;
  v11 = objc_retainBlock(v13);
  if (![(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1])
  {
    goto LABEL_7;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(v9);
  if (!EndpointWithUUID || !*EndpointWithUUID)
  {
    [ACCConnectionInfoServerRemote getPublicNVMKeyValues:forEndpoint:withReply:];
LABEL_7:
    [ACCConnectionInfoServerRemote getPublicNVMKeyValues:forEndpoint:withReply:];
    goto LABEL_5;
  }

  platform_connectionInfo_getPublicNvmKeyValues(EndpointWithUUID[1], v9, v8, v11);
LABEL_5:
}

void __77__ACCConnectionInfoServerRemote_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
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
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __77__ACCConnectionInfoServerRemote_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_cold_2();
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v7 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __77__ACCConnectionInfoServerRemote_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_cold_4();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __77__ACCConnectionInfoServerRemote_setPublicNVMKeyValues_forEndpoint_withReply___block_invoke;
  v13[3] = &unk_1002294F8;
  v10 = a5;
  v14 = v10;
  v11 = objc_retainBlock(v13);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v9)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_setPublicNvmKeyValues(EndpointWithUUID[1], v9, v8, v11);
  }

  else
  {
    [ACCConnectionInfoServerRemote setPublicNVMKeyValues:forEndpoint:withReply:];
  }
}

void __77__ACCConnectionInfoServerRemote_setPublicNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)beginVendorKeyErase:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __63__ACCConnectionInfoServerRemote_beginVendorKeyErase_withReply___block_invoke;
  v10[3] = &unk_100229548;
  v7 = a4;
  v11 = v7;
  v8 = objc_retainBlock(v10);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v6)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_beginVendorKeyErase(EndpointWithUUID[1], v6, v8);
  }

  else
  {
    [ACCConnectionInfoServerRemote beginVendorKeyErase:withReply:];
  }
}

void __63__ACCConnectionInfoServerRemote_beginVendorKeyErase_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  (*(*(a1 + 32) + 16))();
}

- (void)continueVendorKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __110__ACCConnectionInfoServerRemote_continueVendorKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke;
  v19[3] = &unk_1002294F8;
  v16 = a7;
  v20 = v16;
  v17 = objc_retainBlock(v19);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v15)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_continueVendorKeyErase(EndpointWithUUID[1], v15, v12, v13, v14, v17);
  }

  else
  {
    [ACCConnectionInfoServerRemote continueVendorKeyErase:withSignature:andAccessoryNonce:forEndpoint:withReply:];
  }
}

void __110__ACCConnectionInfoServerRemote_continueVendorKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)cancelVendorKeyErase:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __64__ACCConnectionInfoServerRemote_cancelVendorKeyErase_withReply___block_invoke;
  v10[3] = &unk_1002294F8;
  v7 = a4;
  v11 = v7;
  v8 = objc_retainBlock(v10);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v6)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_cancelVendorKeyErase(EndpointWithUUID[1], v6, v8);
  }

  else
  {
    [ACCConnectionInfoServerRemote cancelVendorKeyErase:withReply:];
  }
}

void __64__ACCConnectionInfoServerRemote_cancelVendorKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)beginUserKeyErase:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __61__ACCConnectionInfoServerRemote_beginUserKeyErase_withReply___block_invoke;
  v10[3] = &unk_100229548;
  v7 = a4;
  v11 = v7;
  v8 = objc_retainBlock(v10);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v6)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_beginUserKeyErase(EndpointWithUUID[1], v6, v8);
  }

  else
  {
    [ACCConnectionInfoServerRemote beginUserKeyErase:withReply:];
  }
}

void __61__ACCConnectionInfoServerRemote_beginUserKeyErase_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  (*(*(a1 + 32) + 16))();
}

- (void)continueUserKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __108__ACCConnectionInfoServerRemote_continueUserKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke;
  v19[3] = &unk_1002294F8;
  v16 = a7;
  v20 = v16;
  v17 = objc_retainBlock(v19);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v15)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_continueUserKeyErase(EndpointWithUUID[1], v15, v12, v13, v14, v17);
  }

  else
  {
    [ACCConnectionInfoServerRemote continueUserKeyErase:withSignature:andAccessoryNonce:forEndpoint:withReply:];
  }
}

void __108__ACCConnectionInfoServerRemote_continueUserKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)cancelUserKeyErase:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __62__ACCConnectionInfoServerRemote_cancelUserKeyErase_withReply___block_invoke;
  v10[3] = &unk_1002294F8;
  v7 = a4;
  v11 = v7;
  v8 = objc_retainBlock(v10);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v6)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_cancelUserKeyErase(EndpointWithUUID[1], v6, v8);
  }

  else
  {
    [ACCConnectionInfoServerRemote cancelUserKeyErase:withReply:];
  }
}

void __62__ACCConnectionInfoServerRemote_cancelUserKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
}

- (void)copyUserPrivateKey:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __62__ACCConnectionInfoServerRemote_copyUserPrivateKey_withReply___block_invoke;
  v10[3] = &unk_100229548;
  v7 = a4;
  v11 = v7;
  v8 = objc_retainBlock(v10);
  if ([(ACCConnectionInfoServerRemote *)self _checkClientEntitlements:1]&& (EndpointWithUUID = acc_manager_getEndpointWithUUID(v6)) != 0 && *EndpointWithUUID)
  {
    platform_connectionInfo_copyUserPrivateKey(EndpointWithUUID[1], v6, v8);
  }

  else
  {
    [ACCConnectionInfoServerRemote copyUserPrivateKey:withReply:];
  }
}

void __62__ACCConnectionInfoServerRemote_copyUserPrivateKey_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 9;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = a2 != 0;
    v10 = 1024;
    v11 = a3 != 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ConnectionInfo copyUserPrivateKey: reply: key:%d error:%d", v9, 0xEu);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_checkClientEntitlements:(unint64_t)a3
{
  v5 = +[ACCConnectionInfoServer sharedServer];
  if (a3)
  {
    v6 = 1;
    while (1)
    {
      if (v6 == 1 && (a3 & 1) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
        v8 = [v5 checkClient:WeakRetained hasEntitlement:@"com.apple.coreaccessories.entitlement.MFi4.client.FindMy"];

        if ((v8 & 1) == 0)
        {
          break;
        }
      }

      v6 *= 2;
      if (v6 - 1 >= a3)
      {
        goto LABEL_7;
      }
    }

    if (gLogObjects && gNumLogObjects >= 9)
    {
      v10 = *(gLogObjects + 64);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = @"com.apple.coreaccessories.entitlement.MFi4.client.FindMy";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ConnectionInfo: - client missing entitlement: %@!", &v13, 0xCu);
    }

    v9 = 0;
  }

  else
  {
LABEL_7:
    v9 = 1;
  }

  return v9;
}

- (ACCConnectionInfoClientInfo)clientInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);

  return WeakRetained;
}

- (void)getAccessoryUserName:withReply:.cold.2()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo getAccessoryUserName: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_8_22();
  v9();
}

- (void)setAccessoryUserName:forEndpoint:withReply:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setAccessoryUserName:forEndpoint:withReply:.cold.3()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo setAccessoryUserName: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_1_29();
  v10(v9, v0);
}

- (void)provisionAccessoryForFindMy:withReply:.cold.2()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ACCConnectionInfoServerRemote provisionAccessoryForFindMy: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_1_29();
  v10(v9, v0);
}

- (void)getPairingStatus:withReply:.cold.1()
{
  v0 = logObjectForModule_32();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfoServerRemote getPairingStatus: error", v1, 2u);
  }
}

- (void)getPairingStatus:withReply:.cold.2()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 9;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v1, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v2, v3, v4, v5, 0);
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v8, v9, "ACCConnectionInfoServerRemote getPairingStatus: error", v10, v11, v12, v13, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v14 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v15 = OUTLINED_FUNCTION_1_29();
  v16(v15, 0, v7);
}

- (void)resetPairingInformation:withReply:.cold.2()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo resetPairingInformation: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_1_29();
  v10(v9, v0);
}

- (void)getPrivateNVMKeyValues:forEndpoint:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo getPrivateNVMKeyValues: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_8_22();
  v9();
}

void __78__ACCConnectionInfoServerRemote_getPrivateNVMKeyValues_forEndpoint_withReply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setPrivateNVMKeyValues:forEndpoint:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo setPrivateNVMKeyValues: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_1_29();
  v10(v9, v0);
}

- (void)getPublicNVMKeyValues:forEndpoint:withReply:.cold.1()
{
  v0 = logObjectForModule_32();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Remote: getPublicNVMKeyValues: !pEndpoint || pEndpoint->pConnection", v1, 2u);
  }
}

- (void)getPublicNVMKeyValues:forEndpoint:withReply:.cold.2()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo getPublicNVMKeyValues: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_8_22();
  v9();
}

void __77__ACCConnectionInfoServerRemote_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setPublicNVMKeyValues:forEndpoint:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo setPublicNVMKeyValues: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_1_29();
  v10(v9, v0);
}

- (void)beginVendorKeyErase:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo beginVendorKeyErase: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_8_22();
  v9();
}

- (void)continueVendorKeyErase:withSignature:andAccessoryNonce:forEndpoint:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo continueVendorKeyErase: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_1_29();
  v10(v9, v0);
}

- (void)cancelVendorKeyErase:withReply:.cold.1()
{
  v0 = logObjectForModule_32();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_9_21(&_mh_execute_header, v1, v2, "ConnectionInfo cancelVendorKeyErase: error", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v7 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_1_29();
  v9(v8, v0);
}

- (void)beginUserKeyErase:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo beginUserKeyErase: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_8_22();
  v9();
}

- (void)continueUserKeyErase:withSignature:andAccessoryNonce:forEndpoint:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo continueUserKeyErase: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_1_29();
  v10(v9, v0);
}

- (void)cancelUserKeyErase:withReply:.cold.1()
{
  v0 = logObjectForModule_32();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_9_21(&_mh_execute_header, v1, v2, "ConnectionInfo cancelUserKeyErase: error", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v7 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_1_29();
  v9(v8, v0);
}

- (void)copyUserPrivateKey:withReply:.cold.1()
{
  v1 = logObjectForModule_32();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v2, v3, "ConnectionInfo copyUserPrivateKey: error", v4, v5, v6, v7, 0);
  }

  OUTLINED_FUNCTION_6_27();
  [v8 errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_8_22();
  v9();
}

@end