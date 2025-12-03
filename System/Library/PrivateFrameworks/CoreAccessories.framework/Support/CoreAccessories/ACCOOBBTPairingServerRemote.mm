@interface ACCOOBBTPairingServerRemote
- (ACCOOBBTPairingServerRemote)initWithXPCConnection:(id)connection;
- (void)dealloc;
- (void)initConnection:(id)connection;
- (void)linkKeyInfo:(id)info oobBtPairingUID:(id)d linkKey:(id)key deviceMacAddr:(id)addr;
- (void)notifyOfProvider:(id)provider;
- (void)startOOBBTPairing:(id)pairing;
- (void)stopOOBBTPairing:(id)pairing;
@end

@implementation ACCOOBBTPairingServerRemote

- (ACCOOBBTPairingServerRemote)initWithXPCConnection:(id)connection
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
  v12.super_class = ACCOOBBTPairingServerRemote;
  v9 = [(ACCOOBBTPairingServerRemote *)&v12 init];
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
  v4.super_class = ACCOOBBTPairingServerRemote;
  [(ACCOOBBTPairingServerRemote *)&v4 dealloc];
}

- (void)initConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[ACCOOBBTPairingServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    xPCConnection = [(ACCOOBBTPairingServerRemote *)self XPCConnection];
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
    v13 = +[ACCOOBBTPairingServer sharedServer];
    [v13 sendUpdatedSubscriberList];
  }

  connectionCopy[2](connectionCopy, v7);
}

- (void)notifyOfProvider:(id)provider
{
  providerCopy = provider;
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
    [(ACCOOBBTPairingServerRemote *)providerCopy notifyOfProvider:v7];
  }

  v8 = +[ACCOOBBTPairingServer sharedServer];
  xPCConnection = [(ACCOOBBTPairingServerRemote *)self XPCConnection];
  [v8 notifyOfProvider:providerCopy connection:xPCConnection];
}

- (void)startOOBBTPairing:(id)pairing
{
  pairingCopy = pairing;
  isSupported = platform_oobBtPairing2_isSupported(pairingCopy);
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
      v12 = pairingCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OOBBTPairing2 startOOBBTPairing: accessoryUID %@, oobBtPairing2", &v11, 0xCu);
    }

    platform_oobBtPairing2_startOobBtPairingHandler(pairingCopy);
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
      v12 = pairingCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OOBBTPairing startOOBBTPairing: accessoryUID %@, oobBtPairing", &v11, 0xCu);
    }

    platform_oobBtPairing_startOobBtPairingHandler(pairingCopy);
  }
}

- (void)stopOOBBTPairing:(id)pairing
{
  pairingCopy = pairing;
  isSupported = platform_oobBtPairing2_isSupported(pairingCopy);
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
      v12 = pairingCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OOBBTPairing2 stopOOBBTPairing: accessoryUID %@, oobBtPairing2", &v11, 0xCu);
    }

    platform_oobBtPairing2_stopOobBtPairingHandler(pairingCopy);
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
      v12 = pairingCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OOBBTPairing stopOOBBTPairing: accessoryUID %@, oobBtPairing", &v11, 0xCu);
    }

    platform_oobBtPairing_stopOobBtPairingHandler(pairingCopy);
  }
}

- (void)linkKeyInfo:(id)info oobBtPairingUID:(id)d linkKey:(id)key deviceMacAddr:(id)addr
{
  infoCopy = info;
  dCopy = d;
  keyCopy = key;
  addrCopy = addr;
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
    v19 = infoCopy;
    v20 = 2112;
    v21 = dCopy;
    v22 = 2112;
    v23 = addrCopy;
    v24 = 2112;
    v25 = keyCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "OOBBTPairing linkKeyInfo: accessoryUID %@, oobBtPairingUID=%@, deviceMacAddr=%@ linkKey=%@", &v18, 0x2Au);
  }

  if (platform_oobBtPairing2_isSupported(infoCopy))
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
      v19 = infoCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "OOBBTPairing linkKeyInfo: accessoryUID %@, oobBtPairing2, not supported", &v18, 0xCu);
    }
  }

  else
  {
    platform_oobBtPairing_linkKeyInfoHandler(infoCopy, dCopy, keyCopy, addrCopy);
  }
}

- (void)notifyOfProvider:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "OOBBTPairing serverRemote, notifyOfProvider: %@", &v2, 0xCu);
}

@end