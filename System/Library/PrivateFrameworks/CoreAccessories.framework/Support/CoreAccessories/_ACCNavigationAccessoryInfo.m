@interface _ACCNavigationAccessoryInfo
- (BOOL)componentStarted:(id)a3;
- (_ACCNavigationAccessoryInfo)initWithUID:(id)a3 componentList:(id)a4;
- (id)componentIdList;
- (id)startedComponentList;
- (unint64_t)componentOptions:(id)a3;
- (void)assignComponentList:(id)a3;
- (void)componentIdList;
- (void)dealloc;
- (void)setComponent:(id)a3 options:(unint64_t)a4;
- (void)startedComponentList;
@end

@implementation _ACCNavigationAccessoryInfo

- (_ACCNavigationAccessoryInfo)initWithUID:(id)a3 componentList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _ACCNavigationAccessoryInfo;
  v9 = [(_ACCNavigationAccessoryInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryUID, a3);
    componentList = v10->_componentList;
    v10->_componentList = 0;

    [(_ACCNavigationAccessoryInfo *)v10 assignComponentList:v8];
  }

  return v10;
}

- (void)dealloc
{
  accessoryUID = self->_accessoryUID;
  self->_accessoryUID = 0;

  componentList = self->_componentList;
  self->_componentList = 0;

  v5.receiver = self;
  v5.super_class = _ACCNavigationAccessoryInfo;
  [(_ACCNavigationAccessoryInfo *)&v5 dealloc];
}

- (void)assignComponentList:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 objectForKey:{ACCNav_DispComp_ComponentID, v15}];
        if (v12)
        {
          v13 = [v11 mutableCopy];
          [(NSDictionary *)v5 setObject:v13 forKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  componentList = self->_componentList;
  self->_componentList = v5;
}

- (void)setComponent:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    componentList = self->_componentList;
    v13 = 138412802;
    v14 = v6;
    v15 = 2048;
    v16 = a4;
    v17 = 2112;
    v18 = componentList;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[#Navigation] _ACCNavigationAccessoryInfo: setComponent: %@ options: %llxh, comopnentList %@", &v13, 0x20u);
  }

  if (v6)
  {
    v10 = [(NSDictionary *)self->_componentList objectForKey:v6];
    v11 = [NSNumber numberWithUnsignedLongLong:a4];
    [v10 setObject:v11 forKey:__kComponentOptionsKey];
  }
}

- (unint64_t)componentOptions:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(NSDictionary *)self->_componentList objectForKey:?];
  v4 = [v3 objectForKey:__kComponentOptionsKey];
  v5 = [v4 unsignedLongLongValue];

  return v5;
}

- (BOOL)componentStarted:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(NSDictionary *)self->_componentList objectForKey:?];
  v4 = [v3 objectForKey:__kComponentStartedKey];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)startedComponentList
{
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSDictionary *)self->_componentList allValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 objectForKey:__kComponentStartedKey];
        if ([v10 BOOLValue])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(_ACCNavigationAccessoryInfo *)v3 startedComponentList];
  }

  return v3;
}

- (id)componentIdList
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSDictionary *)self->_componentList allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) objectForKey:ACCNav_DispComp_ComponentID];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v10 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(_ACCNavigationAccessoryInfo *)v3 componentIdList];
  }

  return v3;
}

- (void)startedComponentList
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] _ACCNavigationAccessoryInfo: startedComponentList: %@", &v2, 0xCu);
}

- (void)componentIdList
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] _ACCNavigationAccessoryInfo: componentIdList: %@", &v2, 0xCu);
}

@end