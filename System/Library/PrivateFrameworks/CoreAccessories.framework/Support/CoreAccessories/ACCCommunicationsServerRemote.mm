@interface ACCCommunicationsServerRemote
- (ACCCommunicationsServerRemote)initWithXPCConnection:(id)connection;
- (void)callStateDidChange:(id)change;
- (void)commStatusDidChange:(id)change;
- (void)initConnection:(id)connection;
- (void)listUpdate:(id)update forType:(int)type coalesced:(BOOL)coalesced;
@end

@implementation ACCCommunicationsServerRemote

- (ACCCommunicationsServerRemote)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ACCCommunicationsServerRemote;
  v6 = [(ACCCommunicationsServerRemote *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (connectionCopy)
    {
      objc_storeStrong(&v6->_XPCConnection, connection);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)initConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[ACCCommunicationsServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    xPCConnection = [(ACCCommunicationsServerRemote *)self XPCConnection];
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
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Communications] Client has called initConnection method!", v15, 2u);
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
    v15[0] = 67109120;
    v15[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#Communications] shouldStayConnected: %d", v15, 8u);
  }

  if (v7)
  {
    v13 = +[ACCCommunicationsServer sharedServer];
    [v13 sendUpdatedSubscriberList];

    v14 = +[ACCCommunicationsServer sharedServer];
    [v14 refreshClientData];
  }

  connectionCopy[2](connectionCopy, v7);
}

- (void)callStateDidChange:(id)change
{
  changeCopy = change;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 5;
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
    v6 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#Communications] Received call state update!", v15, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
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
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCCommunicationsServerRemote *)changeCopy callStateDidChange:v7, v9, v10, v11, v12, v13, v14];
  }

  platform_communications_callStateUpdate(changeCopy);
}

- (void)commStatusDidChange:(id)change
{
  changeCopy = change;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 5;
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
    v6 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#Communications] Received communications update!", v15, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
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
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCCommunicationsServerRemote *)changeCopy commStatusDidChange:v7, v9, v10, v11, v12, v13, v14];
  }

  platform_communications_communicationsUpdate(changeCopy);
}

- (void)listUpdate:(id)update forType:(int)type coalesced:(BOOL)coalesced
{
  coalescedCopy = coalesced;
  updateCopy = update;
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = "NO";
    if (coalescedCopy)
    {
      v11 = "YES";
    }

    v20[0] = 67109378;
    v20[1] = type;
    v21 = 2080;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#Communications] Received list update! (type: %{coreacc:ACCCommunications_ListUpdate_Type_t}d, coalesced: %s)", v20, 0x12u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v12 = *(gLogObjects + 32);
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
    [(ACCCommunicationsServerRemote *)updateCopy listUpdate:v12 forType:v14 coalesced:v15, v16, v17, v18, v19];
  }

  platform_communications_listUpdate(type, updateCopy, coalescedCopy);
}

@end