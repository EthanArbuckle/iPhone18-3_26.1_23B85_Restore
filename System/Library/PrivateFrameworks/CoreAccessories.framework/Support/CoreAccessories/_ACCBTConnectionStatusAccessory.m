@interface _ACCBTConnectionStatusAccessory
+ (id)accessoryList;
- (_ACCBTConnectionStatusAccessory)initWithUID:(id)a3;
- (void)componentUpdate:(id)a3;
- (void)dealloc;
@end

@implementation _ACCBTConnectionStatusAccessory

- (_ACCBTConnectionStatusAccessory)initWithUID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _ACCBTConnectionStatusAccessory;
  v6 = [(_ACCBTConnectionStatusAccessory *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryUID, a3);
    v8 = objc_alloc_init(NSMutableDictionary);
    components = v7->_components;
    v7->_components = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"componentUpdate:" name:@"ACCBluetoothStatusComponentUpdateNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"ACCBluetoothStatusComponentUpdateNotification" object:0];

  v4.receiver = self;
  v4.super_class = _ACCBTConnectionStatusAccessory;
  [(_ACCBTConnectionStatusAccessory *)&v4 dealloc];
}

- (void)componentUpdate:(id)a3
{
  v4 = [a3 userInfo];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
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
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    accessoryUID = self->_accessoryUID;
    v12 = 138412546;
    v13 = accessoryUID;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#BT Connection Status] componentUpdate: _accessoryUID=%@, userInfo=%@", &v12, 0x16u);
  }

  if (v4)
  {
    v9 = [v4 objectForKey:@"ACCBluetoothStatusComponentUpdateInfoAccessoryUID"];
    if ([v9 isEqualToString:self->_accessoryUID])
    {
      v10 = [v4 objectForKey:@"ACCBluetoothStatusComponentUpdateInfoUID"];
      v11 = [v4 objectForKey:@"ACCBluetoothStatusComponentUpdateInfoProfiles"];
      platform_btConnectionStatus_updateHandler(v9, v10, v11);
    }
  }
}

+ (id)accessoryList
{
  if (accessoryList_onceToken != -1)
  {
    +[_ACCBTConnectionStatusAccessory accessoryList];
  }

  v3 = accessoryList___accessoryList;

  return v3;
}

@end