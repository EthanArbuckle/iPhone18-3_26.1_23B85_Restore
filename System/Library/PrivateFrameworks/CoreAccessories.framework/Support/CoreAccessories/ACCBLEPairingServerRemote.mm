@interface ACCBLEPairingServerRemote
- (ACCBLEPairingServerRemote)initWithXPCConnection:(id)connection;
- (void)dealloc;
- (void)devicePairingData:(id)data blePairingUUID:(id)d pairType:(unsigned __int8)type pairData:(id)pairData;
- (void)deviceStateUpdate:(id)update blePairingUUID:(id)d bRadioOn:(BOOL)on pairState:(int)state bPairModeOn:(BOOL)modeOn;
- (void)deviceUpdatePairingInfo:(id)info blePairingUUID:(id)d pairType:(unsigned __int8)type pairInfo:(id)pairInfo;
- (void)initConnection:(id)connection;
- (void)startBLEUpdates:(id)updates blePairingUUID:(id)d pairType:(unsigned __int8)type bRadioUpdatesOn:(BOOL)on bPairInfoUpdatesOn:(BOOL)updatesOn;
- (void)stopBLEUpdates:(id)updates blePairingUUID:(id)d;
@end

@implementation ACCBLEPairingServerRemote

- (ACCBLEPairingServerRemote)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 5;
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
    v8 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [connectionCopy hash];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initWithXPCConnection: XPCConnection=%lu", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = ACCBLEPairingServerRemote;
  v9 = [(ACCBLEPairingServerRemote *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (connectionCopy)
    {
      objc_storeStrong(&v9->_XPCConnection, connection);
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  XPCConnection = self->_XPCConnection;
  self->_XPCConnection = 0;

  v4.receiver = self;
  v4.super_class = ACCBLEPairingServerRemote;
  [(ACCBLEPairingServerRemote *)&v4 dealloc];
}

- (void)initConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[ACCBLEPairingServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    xPCConnection = [(ACCBLEPairingServerRemote *)self XPCConnection];
    v7 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:xPCConnection] != 0;
  }

  else
  {
    v7 = 0;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
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
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client has called initConnection method!", v14, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v11 = *(gLogObjects + 32);
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
    v14[0] = 67109120;
    v14[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "shouldStayConnected: %d", v14, 8u);
  }

  if (v7)
  {
    v13 = +[ACCBLEPairingServer sharedServer];
    [v13 sendUpdatedSubscriberList];
  }

  connectionCopy[2](connectionCopy, v7);
}

- (void)startBLEUpdates:(id)updates blePairingUUID:(id)d pairType:(unsigned __int8)type bRadioUpdatesOn:(BOOL)on bPairInfoUpdatesOn:(BOOL)updatesOn
{
  updatesOnCopy = updatesOn;
  onCopy = on;
  typeCopy = type;
  updatesCopy = updates;
  dCopy = d;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 5;
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
    v16 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413314;
    v23 = updatesCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 1024;
    v27 = typeCopy;
    v28 = 1024;
    v29 = onCopy;
    v30 = 1024;
    v31 = updatesOnCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BLEPairing startBLEUpdates: accessoryUID %@, blePairingUUID=%@, pairType=%d bRadioUpdatesOn=%d bPairInfoUpdatesOn=%d", &v22, 0x28u);
  }

  v17 = +[ACCBLEPairingServer sharedServer];
  v18 = [v17 reserveAccessory:updatesCopy xpcConn:self->_XPCConnection];

  if (v18)
  {
    platform_blePairing_startBLEUpdatesHandler(updatesCopy, dCopy, typeCopy, onCopy, updatesOnCopy);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(NSXPCConnection *)self->_XPCConnection hash];
      v22 = 138412546;
      v23 = updatesCopy;
      v24 = 2048;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BLEPairing startBLEUpdates: accessoryUID %@, NOT RESERVED connHash %lu", &v22, 0x16u);
    }
  }
}

- (void)deviceStateUpdate:(id)update blePairingUUID:(id)d bRadioOn:(BOOL)on pairState:(int)state bPairModeOn:(BOOL)modeOn
{
  modeOnCopy = modeOn;
  onCopy = on;
  updateCopy = update;
  dCopy = d;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 5;
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
    v16 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413314;
    v23 = updateCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 1024;
    v27 = onCopy;
    v28 = 1024;
    stateCopy = state;
    v30 = 1024;
    v31 = modeOnCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceStateUpdate: accessoryUID %@, blePairingUUID=%@, bRadioOn=%d pairState=%d bPairModeOn=%d", &v22, 0x28u);
  }

  v17 = +[ACCBLEPairingServer sharedServer];
  v18 = [v17 accessoryReserved:updateCopy xpcConn:self->_XPCConnection];

  if (v18)
  {
    platform_blePairing_deviceStateUpdateHandler(updateCopy, dCopy, onCopy, state, modeOnCopy);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(NSXPCConnection *)self->_XPCConnection hash];
      v22 = 138412546;
      v23 = updateCopy;
      v24 = 2048;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceStateUpdate: accessoryUID %@, NOT RESERVED connHash %lu", &v22, 0x16u);
    }
  }
}

- (void)devicePairingData:(id)data blePairingUUID:(id)d pairType:(unsigned __int8)type pairData:(id)pairData
{
  typeCopy = type;
  dataCopy = data;
  dCopy = d;
  pairDataCopy = pairData;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 5;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v15 = &_os_log_default;
    v14 = &_os_log_default;
  }

  else
  {
    v15 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413058;
    v22 = dataCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 1024;
    v26 = typeCopy;
    v27 = 2112;
    v28 = pairDataCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BLEPairing devicePairingData: accessoryUID %@, blePairingUUID=%@, pairType=%d pairData=%@", &v21, 0x26u);
  }

  v16 = +[ACCBLEPairingServer sharedServer];
  v17 = [v16 accessoryReserved:dataCopy xpcConn:self->_XPCConnection];

  if (v17)
  {
    platform_blePairing_devicePairingDataHandler(dataCopy, dCopy, typeCopy, pairDataCopy);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v18 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(NSXPCConnection *)self->_XPCConnection hash];
      v21 = 138412546;
      v22 = dataCopy;
      v23 = 2048;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BLEPairing devicePairingData: accessoryUID %@, NOT RESERVED connHash %lu", &v21, 0x16u);
    }
  }
}

- (void)deviceUpdatePairingInfo:(id)info blePairingUUID:(id)d pairType:(unsigned __int8)type pairInfo:(id)pairInfo
{
  typeCopy = type;
  infoCopy = info;
  dCopy = d;
  pairInfoCopy = pairInfo;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 5;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v15 = &_os_log_default;
    v14 = &_os_log_default;
  }

  else
  {
    v15 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413058;
    v22 = infoCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 1024;
    v26 = typeCopy;
    v27 = 2112;
    v28 = pairInfoCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceUpdatePairingInfo: accessoryUID %@, blePairingUUID=%@, pairType=%d pairInfo=%@", &v21, 0x26u);
  }

  v16 = +[ACCBLEPairingServer sharedServer];
  v17 = [v16 accessoryReserved:infoCopy xpcConn:self->_XPCConnection];

  if (v17)
  {
    platform_blePairing_deviceUpdatePairingInfoHandler(infoCopy, dCopy, typeCopy, pairInfoCopy);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v18 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(NSXPCConnection *)self->_XPCConnection hash];
      v21 = 138412546;
      v22 = infoCopy;
      v23 = 2048;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceUpdatePairingInfo: accessoryUID %@, NOT RESERVED connHash %lu", &v21, 0x16u);
    }
  }
}

- (void)stopBLEUpdates:(id)updates blePairingUUID:(id)d
{
  updatesCopy = updates;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
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
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = updatesCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BLEPairing stopBLEUpdate: accessoryUID %@, blePairingUUID=%@", &v16, 0x16u);
  }

  v11 = +[ACCBLEPairingServer sharedServer];
  v12 = [v11 accessoryReserved:updatesCopy xpcConn:self->_XPCConnection];

  if (v12)
  {
    platform_blePairing_stopBLEUpdatesHandler(updatesCopy, dCopy);
    v13 = +[ACCBLEPairingServer sharedServer];
    [v13 releaseAccessory:updatesCopy xpcConn:self->_XPCConnection];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v13 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSXPCConnection *)self->_XPCConnection hash];
      v16 = 138412546;
      v17 = updatesCopy;
      v18 = 2048;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BLEPairing stopBLEUpdate: accessoryUID %@, NOT RESERVED connHash %lu", &v16, 0x16u);
    }
  }
}

@end