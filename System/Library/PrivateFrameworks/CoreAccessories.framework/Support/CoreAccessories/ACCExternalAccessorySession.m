@interface ACCExternalAccessorySession
- (ACCExternalAccessorySession)init;
- (ACCExternalAccessorySession)initWithEASessionUUID:(id)a3 protocolID:(unsigned __int8)a4 legacyConnectionID:(unint64_t)a5 sessionID:(unsigned __int16)a6;
- (BOOL)closeDataPipes;
- (BOOL)openPipeFromApp;
- (BOOL)openPipeToApp;
- (id)description;
- (int)_createListenSocket;
- (void)_openPipeToApp;
- (void)dealloc;
- (void)shuttingDownSession;
@end

@implementation ACCExternalAccessorySession

- (ACCExternalAccessorySession)init
{
  [NSException raise:@"IAPSession" format:@"must call initWithConnectionID:protocolID:sessionID:"];

  return 0;
}

- (ACCExternalAccessorySession)initWithEASessionUUID:(id)a3 protocolID:(unsigned __int8)a4 legacyConnectionID:(unint64_t)a5 sessionID:(unsigned __int16)a6
{
  v10 = a3;
  v25.receiver = self;
  v25.super_class = ACCExternalAccessorySession;
  v11 = [(ACCExternalAccessorySession *)&v25 init];
  v12 = v11;
  if (v11)
  {
    v11->_protocolID = a4;
    v13 = [v10 copy];
    eaSessionUUID = v12->_eaSessionUUID;
    v12->_eaSessionUUID = v13;

    v12->_legacyConnectionID = a5;
    v12->_sessionID = a6;
    v15 = objc_alloc_init(NSLock);
    sessionNotificationLock = v12->_sessionNotificationLock;
    v12->_sessionNotificationLock = v15;

    v17 = v12->_sessionNotificationLock;
    v18 = [NSString stringWithFormat:@"com.apple.accessoryd.ea.lock.%@", v12->_eaSessionUUID];
    [(NSLock *)v17 setName:v18];

    *&v12->_listenSock = -1;
    *&v12->_openPipeToAppAfterAccept = 0;
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

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      protocolID = v12->_protocolID;
      sessionID = v12->_sessionID;
      v23 = v12->_eaSessionUUID;
      *buf = 67109634;
      v27 = protocolID;
      v28 = 1024;
      v29 = sessionID;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "new EA Session Basic protocolID=%d sessionID=%d eaSessionUUID=%@", buf, 0x18u);
    }
  }

  return v12;
}

- (void)shuttingDownSession
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
    protocolID = self->_protocolID;
    sessionID = self->_sessionID;
    eaSessionUUID = self->_eaSessionUUID;
    v9[0] = 67109634;
    v9[1] = protocolID;
    v10 = 1024;
    v11 = sessionID;
    v12 = 2112;
    v13 = eaSessionUUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "shuttingDown protocolID=%d sessionID=%d eaSessionUUID=%@", v9, 0x18u);
  }
}

- (void)dealloc
{
  eaSessionUUID = self->_eaSessionUUID;
  self->_eaSessionUUID = 0;

  sessionNotificationLock = self->_sessionNotificationLock;
  self->_sessionNotificationLock = 0;

  v5.receiver = self;
  v5.super_class = ACCExternalAccessorySession;
  [(ACCExternalAccessorySession *)&v5 dealloc];
}

- (BOOL)openPipeToApp
{
  if (self->_sock < 0)
  {
    self->_openPipeToAppAfterAccept = 1;
  }

  else
  {
    [(ACCExternalAccessorySession *)self _openPipeToApp];
  }

  return 1;
}

- (void)_openPipeToApp
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_openPipeToApp is a no-op", v5, 2u);
  }
}

- (BOOL)openPipeFromApp
{
  if (self->_sock < 0)
  {
    self->_openPipeFromAppAfterAccept = 1;
  }

  else
  {
    [(ACCExternalAccessorySession *)self _openPipeFromApp];
  }

  return 1;
}

- (BOOL)closeDataPipes
{
  listenSock = self->_listenSock;
  if ((listenSock & 0x80000000) == 0)
  {
    close(listenSock);
    self->_listenSock = -1;
  }

  sock = self->_sock;
  if ((sock & 0x80000000) == 0)
  {
    close(sock);
    self->_sock = -1;
  }

  return 1;
}

- (int)_createListenSocket
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v2;
  v28 = v2;
  v25 = v2;
  v26 = v2;
  v23 = v2;
  v24 = v2;
  v21 = v2;
  v22 = v2;
  v19 = v2;
  v20 = v2;
  v17 = v2;
  v18 = v2;
  v15 = v2;
  v16 = v2;
  *__str = v2;
  v14 = v2;
  snprintf(__str, 0x100uLL, "%s/ea.%lu", "/var/mobile/Library/ExternalAccessory", [(NSString *)self->_eaSessionUUID hash]);
  unlink(__str);
  v3 = socket(1, 1, 0);
  if (v3 < 0)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v4 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ACCExternalAccessorySession *)v4 _createListenSocket];
    }
  }

  umask(2u);
  memset(v11.sa_data, 0, 96);
  v12 = 0;
  *&v11.sa_len = 362;
  __strlcpy_chk();
  if (bind(v3, &v11, 0x6Au))
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCExternalAccessorySession _createListenSocket];
    }
  }

  if (listen(v3, 5))
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v8 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCExternalAccessorySession _createListenSocket];
    }
  }

  return v3;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = ACCExternalAccessorySession;
  v3 = [(ACCExternalAccessorySession *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ eaSessionUUID=%@ legacyConnectionID=%llu protocolID=%d sessionID=%d", v3, self->_eaSessionUUID, self->_legacyConnectionID, self->_protocolID, self->_sessionID];

  return v4;
}

@end