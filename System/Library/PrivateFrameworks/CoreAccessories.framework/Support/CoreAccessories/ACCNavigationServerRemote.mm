@interface ACCNavigationServerRemote
- (ACCNavigationServerRemote)initWithXPCConnection:(id)connection;
- (void)dealloc;
- (void)initConnection:(id)connection;
- (void)notifyOfProvider:(id)provider;
- (void)objectDetection:(id)detection startComponentIdList:(id)list objectTypes:(id)types;
- (void)objectDetection:(id)detection stopComponentIdList:(id)list;
- (void)routeGuidance:(id)guidance laneGuidanceInfo:(id)info componentIdList:(id)list;
- (void)routeGuidance:(id)guidance maneuverUpdateInfo:(id)info componentIdList:(id)list;
- (void)routeGuidance:(id)guidance updateInfo:(id)info componentIdList:(id)list;
@end

@implementation ACCNavigationServerRemote

- (ACCNavigationServerRemote)initWithXPCConnection:(id)connection
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
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#Navigation] initWithXPCConnection: XPCConnection=%lu", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = ACCNavigationServerRemote;
  v9 = [(ACCNavigationServerRemote *)&v12 init];
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
  v4.super_class = ACCNavigationServerRemote;
  [(ACCNavigationServerRemote *)&v4 dealloc];
}

- (void)initConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[ACCNavigationServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    xPCConnection = [(ACCNavigationServerRemote *)self XPCConnection];
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
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] Client has called initConnection method!", v14, 2u);
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
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#Navigation] shouldStayConnected: %d", v14, 8u);
  }

  if (v7)
  {
    v13 = +[ACCNavigationServer sharedServer];
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
    [(ACCNavigationServerRemote *)providerCopy notifyOfProvider:v7];
  }

  v8 = +[ACCNavigationServer sharedServer];
  xPCConnection = [(ACCNavigationServerRemote *)self XPCConnection];
  [v8 notifyOfProvider:providerCopy connection:xPCConnection];
}

- (void)routeGuidance:(id)guidance updateInfo:(id)info componentIdList:(id)list
{
  guidanceCopy = guidance;
  infoCopy = info;
  listCopy = list;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 5;
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
    v12 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = guidanceCopy;
    v15 = 2112;
    v16 = infoCopy;
    v17 = 2112;
    v18 = listCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[#Navigation] Navigation routeGuidance: accessoryUID %@, updateInfo=%@, componentIdList=%@", &v13, 0x20u);
  }

  platform_navigation_routeGuidanceUpdateHandler(guidanceCopy, listCopy, infoCopy);
}

- (void)routeGuidance:(id)guidance maneuverUpdateInfo:(id)info componentIdList:(id)list
{
  guidanceCopy = guidance;
  infoCopy = info;
  listCopy = list;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 5;
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
    v12 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = guidanceCopy;
    v15 = 2112;
    v16 = infoCopy;
    v17 = 2112;
    v18 = listCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[#Navigation] Navigation routeGuidance: accessoryUID %@, maneuverUpdateInfo=%@, componentIdList=%@", &v13, 0x20u);
  }

  platform_navigation_routeGuidanceManeuverUpdateHandler(guidanceCopy, listCopy, infoCopy);
}

- (void)routeGuidance:(id)guidance laneGuidanceInfo:(id)info componentIdList:(id)list
{
  guidanceCopy = guidance;
  infoCopy = info;
  listCopy = list;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 5;
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
    v12 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = guidanceCopy;
    v15 = 2112;
    v16 = infoCopy;
    v17 = 2112;
    v18 = listCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[#Navigation] Navigation routeGuidance: accessoryUID %@, laneGuidanceInfo=%@, componentIdList=%@", &v13, 0x20u);
  }

  platform_navigation_laneGuidanceInfoUpdateHandler(guidanceCopy, listCopy, infoCopy);
}

- (void)objectDetection:(id)detection startComponentIdList:(id)list objectTypes:(id)types
{
  detectionCopy = detection;
  listCopy = list;
  typesCopy = types;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 5;
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
    v12 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = detectionCopy;
    v15 = 2112;
    v16 = listCopy;
    v17 = 2112;
    v18 = typesCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[#Navigation] Navigation objectDetection: accessoryUID %@, startComponentIdList: componentIdList %@, objectTypeList %@", &v13, 0x20u);
  }

  platform_navigation_startObjectDetectionHandler(detectionCopy, listCopy, typesCopy);
}

- (void)objectDetection:(id)detection stopComponentIdList:(id)list
{
  detectionCopy = detection;
  listCopy = list;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
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
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = detectionCopy;
    v12 = 2112;
    v13 = listCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#Navigation] Navigation objectDetection: accessoryUID %@, stopComponentIdList: componentIdList %@", &v10, 0x16u);
  }

  platform_navigation_stopObjectDetectionHandler(detectionCopy, listCopy);
}

- (void)notifyOfProvider:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] Navigation serverRemote, notifyOfProvider: %@", &v2, 0xCu);
}

@end