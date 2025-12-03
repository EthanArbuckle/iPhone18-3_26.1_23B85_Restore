@interface ACCExternalAccessorySessionBasic
- (BOOL)closeDataPipes;
- (__CFData)returnEASessionDataFromApp:(unsigned int)app;
- (unsigned)readEASessionDataFromApp:(id)app maxReadSize:(unsigned int)size;
- (void)_openPipeFromApp;
- (void)_openPipeToApp;
- (void)dealloc;
- (void)sendEABufferDataToApp:(char *)app withLength:(unsigned int)length;
- (void)sendEABufferDataToApp:(id)app;
- (void)shuttingDownSession;
- (void)startIncomingDataNotifications;
- (void)stopIncomingDataNotifications;
@end

@implementation ACCExternalAccessorySessionBasic

uint64_t __98__ACCExternalAccessorySessionBasic_initWithEASessionUUID_protocolID_legacyConnectionID_sessionID___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 12);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(*(a1 + 32) + 12) = -1;
  }

  return result;
}

void __98__ACCExternalAccessorySessionBasic_initWithEASessionUUID_protocolID_legacyConnectionID_sessionID___block_invoke_2(uint64_t a1)
{
  *&v2.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v2.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v12 = v2;
  v13 = v2;
  v10 = v2;
  v11 = v2;
  v8 = v2;
  v9 = v2;
  v6 = v2;
  v7 = v2;
  v5 = -1431655766;
  *(*(a1 + 32) + 16) = accept(*(*(a1 + 32) + 12), &v6, &v5);
  v4 = 1;
  setsockopt(*(*(a1 + 32) + 16), 0xFFFF, 4097, &kSessionDataSendRecvBufferSize, 4u);
  setsockopt(*(*(a1 + 32) + 16), 0xFFFF, 4098, &kSessionDataSendRecvBufferSize, 4u);
  ioctl(*(*(a1 + 32) + 16), 0x8004667EuLL, &v4);
  v3 = *(a1 + 32);
  if (*(v3 + 20) == 1)
  {
    [v3 _openPipeToApp];
    *(*(a1 + 32) + 20) = 0;
    v3 = *(a1 + 32);
  }

  if (*(v3 + 21) == 1)
  {
    [v3 _openPipeFromApp];
    *(*(a1 + 32) + 21) = 0;
    v3 = *(a1 + 32);
  }

  dispatch_source_cancel(*(v3 + 128));
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(ACCExternalAccessorySession *)self description];
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "shuttingDown %@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = ACCExternalAccessorySessionBasic;
  [(ACCExternalAccessorySession *)&v7 shuttingDownSession];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ACCExternalAccessorySession *)self description];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc %@", buf, 0xCu);
  }

  dispatch_source_cancel(self->_listenSource);
  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
  }

  v8.receiver = self;
  v8.super_class = ACCExternalAccessorySessionBasic;
  [(ACCExternalAccessorySession *)&v8 dealloc];
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

- (void)_openPipeFromApp
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
    sessionID = self->super._sessionID;
    *buf = 67109376;
    LODWORD(v21[0]) = sessionID;
    WORD2(v21[0]) = 2048;
    *(v21 + 6) = [(ACCExternalAccessorySession *)self legacyConnectionID];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SUCCESS - session=%d for legacyConnectionID=0x%llx opened pipe from app", buf, 0x12u);
  }

  sessionNotificationLock = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock lock];

  v8 = dispatch_source_create(&_dispatch_source_type_read, self->super._sock, 0, self->_msgSerialQueue);
  readSource = self->_readSource;
  self->_readSource = v8;

  sessionNotificationLock2 = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock2 unlock];

  v11 = self->_readSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke;
  handler[3] = &unk_100225968;
  handler[4] = self;
  dispatch_source_set_event_handler(v11, handler);
  v12 = self->_readSource;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke_73;
  v18[3] = &unk_100225968;
  v18[4] = self;
  dispatch_source_set_cancel_handler(v12, v18);
  sessionNotificationLock3 = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock3 lock];

  if (self->_continueRunningSession)
  {
    dispatch_resume(self->_readSource);
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
      eaSessionUUID = [(ACCExternalAccessorySession *)self eaSessionUUID];
      *buf = 138412290;
      v21[0] = eaSessionUUID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "eaSessionUUID %@ was already activated, resume readsource", buf, 0xCu);
    }
  }

  sessionNotificationLock4 = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock4 unlock];
}

void __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke(uint64_t a1)
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke_cold_2(a1);
  }

  v5 = +[ACCExternalAccessorySessionManager sharedManager];
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = [v7 eaSessionUUID];
  [v5 outgoingEADataFromClientAvailable:v8];

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v9 = *(gLogObjects + 72);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke_cold_4(v6);
  }
}

id __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke_73(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ACCExternalAccessorySessionBasic;
  return objc_msgSendSuper2(&v2, "closeDataPipes");
}

- (BOOL)closeDataPipes
{
  listenSource = self->_listenSource;
  if (listenSource)
  {
    dispatch_source_cancel(listenSource);
  }

  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
  }

  return 1;
}

- (void)sendEABufferDataToApp:(id)app
{
  appCopy = app;
  if (self->super._sock != -1)
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

      v7 = &_os_log_default;
      v6 = &_os_log_default;
    }

    else
    {
      v7 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessorySessionBasic sendEABufferDataToApp:appCopy];
    }

    send(self->super._sock, [appCopy bytes], objc_msgSend(appCopy, "length"), 0);
  }
}

- (void)sendEABufferDataToApp:(char *)app withLength:(unsigned int)length
{
  sock = self->super._sock;
  if (sock != -1)
  {
    send(sock, app, length, 0);
  }
}

- (unsigned)readEASessionDataFromApp:(id)app maxReadSize:(unsigned int)size
{
  appCopy = app;
  v7 = recv(self->super._sock, [appCopy mutableBytes] + 2, size, 0);
  v8 = v7;
  if (v7 == -1)
  {
    if (*__error() != 35)
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
        v14 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *__error();
        v19 = 67109120;
        LODWORD(v20) = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ERROR - error reading data from pipe (errno=%d)", &v19, 8u);
      }
    }
  }

  else if (v7 >= 1)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v9 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v9 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessorySessionBasic readEASessionDataFromApp:? maxReadSize:?];
    }

    [appCopy setLength:v8 + 2];
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
      [ACCExternalAccessorySessionBasic readEASessionDataFromApp:appCopy maxReadSize:?];
    }

    goto LABEL_38;
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
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    eaSessionUUID = [(ACCExternalAccessorySession *)self eaSessionUUID];
    v19 = 134218242;
    v20 = v8;
    v21 = 2112;
    v22 = eaSessionUUID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Read %lld bytes for sessionUUID %@, not appending data", &v19, 0x16u);
  }

  LODWORD(v8) = 0;
LABEL_38:

  return v8;
}

- (__CFData)returnEASessionDataFromApp:(unsigned int)app
{
  appCopy = app;
  v6 = malloc_type_calloc(1uLL, app, 0x85C1B4AuLL);
  v7 = recv(self->super._sock, v6 + 2, appCopy - 2, 0);
  v8 = v7;
  if (v7 == -1)
  {
    if (*__error() != 35)
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
        v16 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *__error();
        v22 = 136315906;
        v23 = "/Library/Caches/com.apple.xbs/Sources/CoreAccessories/Apple/accessoryd/XPC_Servers/ACCExternalAccessorySession.m";
        v24 = 2080;
        v25 = "[ACCExternalAccessorySessionBasic returnEASessionDataFromApp:]";
        v26 = 1024;
        sessionID = 391;
        v28 = 1024;
        appCopy2 = v17;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ERROR - %s:%s - %d error reading data from pipe (errno=%d)\n", &v22, 0x22u);
      }
    }
  }

  else if (v7 >= 1)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v9 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v9 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      eaSessionUUID = [(ACCExternalAccessorySession *)self eaSessionUUID];
      v22 = 134218754;
      v23 = v8;
      v24 = 2112;
      v25 = eaSessionUUID;
      v26 = 1024;
      sessionID = [(ACCExternalAccessorySession *)self sessionID];
      v28 = 1024;
      appCopy2 = app;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Read %lld bytes for sessionUUID %@ sessionID %d, maxReadSize (including two extra bytes of padding) = %d", &v22, 0x22u);
    }

    v12 = [NSMutableData dataWithBytesNoCopy:v6 length:v8 + 2];
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
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessorySessionBasic returnEASessionDataFromApp:v12];
    }

    v15 = v12;
    goto LABEL_39;
  }

  free(v6);
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
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    eaSessionUUID2 = [(ACCExternalAccessorySession *)self eaSessionUUID];
    v22 = 134218242;
    v23 = v8;
    v24 = 2112;
    v25 = eaSessionUUID2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Read %lld bytes for sessionUUID %@, not appending data", &v22, 0x16u);
  }

  v15 = 0;
LABEL_39:

  return v15;
}

- (void)stopIncomingDataNotifications
{
  sessionNotificationLock = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock lock];

  if (self->_continueRunningSession)
  {
    readSource = self->_readSource;
    if (readSource)
    {
      dispatch_suspend(readSource);
    }

    self->_continueRunningSession = 0;
  }

  sessionNotificationLock2 = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock2 unlock];
}

- (void)startIncomingDataNotifications
{
  sessionNotificationLock = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock lock];

  if (!self->_continueRunningSession)
  {
    self->_continueRunningSession = 1;
    readSource = self->_readSource;
    if (readSource)
    {
      dispatch_resume(readSource);
    }

    else
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
        v6 = &_os_log_default;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        eaSessionUUID = [(ACCExternalAccessorySession *)self eaSessionUUID];
        v9 = 138412290;
        v10 = eaSessionUUID;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "readsource not yet created for EA session UUID %@", &v9, 0xCu);
      }
    }
  }

  sessionNotificationLock2 = [(ACCExternalAccessorySession *)self sessionNotificationLock];
  [sessionNotificationLock2 unlock];
}

void __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) eaSessionUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__ACCExternalAccessorySessionBasic__openPipeFromApp__block_invoke_cold_4(id *a1)
{
  v1 = [*a1 eaSessionUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)sendEABufferDataToApp:(void *)a1 .cold.2(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)readEASessionDataFromApp:(void *)a1 maxReadSize:.cold.2(void *a1)
{
  v7 = [a1 eaSessionUUID];
  [a1 sessionID];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)readEASessionDataFromApp:(void *)a1 maxReadSize:.cold.4(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)returnEASessionDataFromApp:(const __CFData *)a1 .cold.3(const __CFData *a1)
{
  CFDataGetLength(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end