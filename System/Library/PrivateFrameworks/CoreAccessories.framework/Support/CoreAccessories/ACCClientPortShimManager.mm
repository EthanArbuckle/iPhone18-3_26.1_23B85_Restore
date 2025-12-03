@interface ACCClientPortShimManager
- (ACCClientPortShimManager)init;
- (void)addClienPort:(id)port forUUID:(id)d;
- (void)removeClienPortForUUID:(id)d;
@end

@implementation ACCClientPortShimManager

- (ACCClientPortShimManager)init
{
  v6.receiver = self;
  v6.super_class = ACCClientPortShimManager;
  v2 = [(ACCClientPortShimManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    portList = v2->_portList;
    v2->_portList = v3;
  }

  return v2;
}

- (void)addClienPort:(id)port forUUID:(id)d
{
  portCopy = port;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 7;
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
    v10 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = portCopy;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "addClientPort: %@ forUID: %@", &v11, 0x16u);
  }

  [(NSMutableDictionary *)self->_portList setObject:portCopy forKey:dCopy];
}

- (void)removeClienPortForUUID:(id)d
{
  dCopy = d;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 7;
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
    v7 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removeClientPortForUID: %@", &v8, 0xCu);
  }

  [(NSMutableDictionary *)self->_portList removeObjectForKey:dCopy];
}

@end