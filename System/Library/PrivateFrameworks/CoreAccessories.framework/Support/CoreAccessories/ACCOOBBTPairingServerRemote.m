@interface ACCOOBBTPairingServerRemote
- (ACCOOBBTPairingServerRemote)initWithXPCConnection:(id)a3;
- (void)dealloc;
- (void)initConnection:(id)a3;
- (void)linkKeyInfo:(id)a3 oobBtPairingUID:(id)a4 linkKey:(id)a5 deviceMacAddr:(id)a6;
- (void)notifyOfProvider:(id)a3;
- (void)startOOBBTPairing:(id)a3;
- (void)stopOOBBTPairing:(id)a3;
@end

@implementation ACCOOBBTPairingServerRemote

- (ACCOOBBTPairingServerRemote)initWithXPCConnection:(id)a3
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
  v12.super_class = ACCOOBBTPairingServerRemote;
  v9 = [(ACCOOBBTPairingServerRemote *)&v12 init];
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
  v4.super_class = ACCOOBBTPairingServerRemote;
  [(ACCOOBBTPairingServerRemote *)&v4 dealloc];
}

- (void)initConnection:(id)a3
{
  v4 = a3;
  v5 = +[ACCOOBBTPairingServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCOOBBTPairingServerRemote *)self XPCConnection];
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
    v13 = +[ACCOOBBTPairingServer sharedServer];
    [v13 sendUpdatedSubscriberList];
  }

  v4[2](v4, v7);
}

- (void)notifyOfProvider:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
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
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCOOBBTPairingServerRemote *)v4 notifyOfProvider:v7];
  }

  v8 = +[ACCOOBBTPairingServer sharedServer];
  v9 = [(ACCOOBBTPairingServerRemote *)self XPCConnection];
  [v8 notifyOfProvider:v4 connection:v9];
}

- (void)startOOBBTPairing:(id)a3
{
  v3 = a3;
  isSupported = platform_oobBtPairing2_isSupported(v3);
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (isSupported)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OOBBTPairing2 startOOBBTPairing: accessoryUID %@, oobBtPairing2", &v11, 0xCu);
    }

    platform_oobBtPairing2_startOobBtPairingHandler(v3);
  }

  else
  {
    if (v6)
    {
      v8 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OOBBTPairing startOOBBTPairing: accessoryUID %@, oobBtPairing", &v11, 0xCu);
    }

    platform_oobBtPairing_startOobBtPairingHandler(v3);
  }
}

- (void)stopOOBBTPairing:(id)a3
{
  v3 = a3;
  isSupported = platform_oobBtPairing2_isSupported(v3);
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (isSupported)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OOBBTPairing2 stopOOBBTPairing: accessoryUID %@, oobBtPairing2", &v11, 0xCu);
    }

    platform_oobBtPairing2_stopOobBtPairingHandler(v3);
  }

  else
  {
    if (v6)
    {
      v8 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OOBBTPairing stopOOBBTPairing: accessoryUID %@, oobBtPairing", &v11, 0xCu);
    }

    platform_oobBtPairing_stopOobBtPairingHandler(v3);
  }
}

- (void)linkKeyInfo:(id)a3 oobBtPairingUID:(id)a4 linkKey:(id)a5 deviceMacAddr:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
    v18 = 138413058;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "OOBBTPairing linkKeyInfo: accessoryUID %@, oobBtPairingUID=%@, deviceMacAddr=%@ linkKey=%@", &v18, 0x2Au);
  }

  if (platform_oobBtPairing2_isSupported(v9))
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v16 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "OOBBTPairing linkKeyInfo: accessoryUID %@, oobBtPairing2, not supported", &v18, 0xCu);
    }
  }

  else
  {
    platform_oobBtPairing_linkKeyInfoHandler(v9, v10, v11, v12);
  }
}

- (void)notifyOfProvider:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "OOBBTPairing serverRemote, notifyOfProvider: %@", &v2, 0xCu);
}

@end