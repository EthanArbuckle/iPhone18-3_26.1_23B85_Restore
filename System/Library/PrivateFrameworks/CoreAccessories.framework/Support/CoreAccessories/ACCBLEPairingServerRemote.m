@interface ACCBLEPairingServerRemote
- (ACCBLEPairingServerRemote)initWithXPCConnection:(id)a3;
- (void)dealloc;
- (void)devicePairingData:(id)a3 blePairingUUID:(id)a4 pairType:(unsigned __int8)a5 pairData:(id)a6;
- (void)deviceStateUpdate:(id)a3 blePairingUUID:(id)a4 bRadioOn:(BOOL)a5 pairState:(int)a6 bPairModeOn:(BOOL)a7;
- (void)deviceUpdatePairingInfo:(id)a3 blePairingUUID:(id)a4 pairType:(unsigned __int8)a5 pairInfo:(id)a6;
- (void)initConnection:(id)a3;
- (void)startBLEUpdates:(id)a3 blePairingUUID:(id)a4 pairType:(unsigned __int8)a5 bRadioUpdatesOn:(BOOL)a6 bPairInfoUpdatesOn:(BOOL)a7;
- (void)stopBLEUpdates:(id)a3 blePairingUUID:(id)a4;
@end

@implementation ACCBLEPairingServerRemote

- (ACCBLEPairingServerRemote)initWithXPCConnection:(id)a3
{
  v5 = a3;
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
    v14 = [v5 hash];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initWithXPCConnection: XPCConnection=%lu", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = ACCBLEPairingServerRemote;
  v9 = [(ACCBLEPairingServerRemote *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (v5)
    {
      objc_storeStrong(&v9->_XPCConnection, a3);
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

- (void)initConnection:(id)a3
{
  v4 = a3;
  v5 = +[ACCBLEPairingServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCBLEPairingServerRemote *)self XPCConnection];
    v7 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:v6] != 0;
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

  v4[2](v4, v7);
}

- (void)startBLEUpdates:(id)a3 blePairingUUID:(id)a4 pairType:(unsigned __int8)a5 bRadioUpdatesOn:(BOOL)a6 bPairInfoUpdatesOn:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
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
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = v8;
    v30 = 1024;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BLEPairing startBLEUpdates: accessoryUID %@, blePairingUUID=%@, pairType=%d bRadioUpdatesOn=%d bPairInfoUpdatesOn=%d", &v22, 0x28u);
  }

  v17 = +[ACCBLEPairingServer sharedServer];
  v18 = [v17 reserveAccessory:v12 xpcConn:self->_XPCConnection];

  if (v18)
  {
    platform_blePairing_startBLEUpdatesHandler(v12, v13, v9, v8, v7);
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
      v23 = v12;
      v24 = 2048;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BLEPairing startBLEUpdates: accessoryUID %@, NOT RESERVED connHash %lu", &v22, 0x16u);
    }
  }
}

- (void)deviceStateUpdate:(id)a3 blePairingUUID:(id)a4 bRadioOn:(BOOL)a5 pairState:(int)a6 bPairModeOn:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = a3;
  v13 = a4;
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
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = a6;
    v30 = 1024;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceStateUpdate: accessoryUID %@, blePairingUUID=%@, bRadioOn=%d pairState=%d bPairModeOn=%d", &v22, 0x28u);
  }

  v17 = +[ACCBLEPairingServer sharedServer];
  v18 = [v17 accessoryReserved:v12 xpcConn:self->_XPCConnection];

  if (v18)
  {
    platform_blePairing_deviceStateUpdateHandler(v12, v13, v9, a6, v7);
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
      v23 = v12;
      v24 = 2048;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceStateUpdate: accessoryUID %@, NOT RESERVED connHash %lu", &v22, 0x16u);
    }
  }
}

- (void)devicePairingData:(id)a3 blePairingUUID:(id)a4 pairType:(unsigned __int8)a5 pairData:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 1024;
    v26 = v7;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BLEPairing devicePairingData: accessoryUID %@, blePairingUUID=%@, pairType=%d pairData=%@", &v21, 0x26u);
  }

  v16 = +[ACCBLEPairingServer sharedServer];
  v17 = [v16 accessoryReserved:v10 xpcConn:self->_XPCConnection];

  if (v17)
  {
    platform_blePairing_devicePairingDataHandler(v10, v11, v7, v12);
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
      v22 = v10;
      v23 = 2048;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BLEPairing devicePairingData: accessoryUID %@, NOT RESERVED connHash %lu", &v21, 0x16u);
    }
  }
}

- (void)deviceUpdatePairingInfo:(id)a3 blePairingUUID:(id)a4 pairType:(unsigned __int8)a5 pairInfo:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 1024;
    v26 = v7;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceUpdatePairingInfo: accessoryUID %@, blePairingUUID=%@, pairType=%d pairInfo=%@", &v21, 0x26u);
  }

  v16 = +[ACCBLEPairingServer sharedServer];
  v17 = [v16 accessoryReserved:v10 xpcConn:self->_XPCConnection];

  if (v17)
  {
    platform_blePairing_deviceUpdatePairingInfoHandler(v10, v11, v7, v12);
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
      v22 = v10;
      v23 = 2048;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BLEPairing deviceUpdatePairingInfo: accessoryUID %@, NOT RESERVED connHash %lu", &v21, 0x16u);
    }
  }
}

- (void)stopBLEUpdates:(id)a3 blePairingUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BLEPairing stopBLEUpdate: accessoryUID %@, blePairingUUID=%@", &v16, 0x16u);
  }

  v11 = +[ACCBLEPairingServer sharedServer];
  v12 = [v11 accessoryReserved:v6 xpcConn:self->_XPCConnection];

  if (v12)
  {
    platform_blePairing_stopBLEUpdatesHandler(v6, v7);
    v13 = +[ACCBLEPairingServer sharedServer];
    [v13 releaseAccessory:v6 xpcConn:self->_XPCConnection];
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
      v17 = v6;
      v18 = 2048;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BLEPairing stopBLEUpdate: accessoryUID %@, NOT RESERVED connHash %lu", &v16, 0x16u);
    }
  }
}

@end