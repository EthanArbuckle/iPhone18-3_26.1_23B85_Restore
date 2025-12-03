@interface _ACCNavigationAccessoryInfo
- (BOOL)componentStarted:(id)started;
- (_ACCNavigationAccessoryInfo)initWithUID:(id)d componentList:(id)list;
- (id)componentIdList;
- (id)startedComponentList;
- (unint64_t)componentOptions:(id)options;
- (void)assignComponentList:(id)list;
- (void)componentIdList;
- (void)dealloc;
- (void)setComponent:(id)component options:(unint64_t)options;
- (void)startedComponentList;
@end

@implementation _ACCNavigationAccessoryInfo

- (_ACCNavigationAccessoryInfo)initWithUID:(id)d componentList:(id)list
{
  dCopy = d;
  listCopy = list;
  v13.receiver = self;
  v13.super_class = _ACCNavigationAccessoryInfo;
  v9 = [(_ACCNavigationAccessoryInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryUID, d);
    componentList = v10->_componentList;
    v10->_componentList = 0;

    [(_ACCNavigationAccessoryInfo *)v10 assignComponentList:listCopy];
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

- (void)assignComponentList:(id)list
{
  listCopy = list;
  v5 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = listCopy;
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

- (void)setComponent:(id)component options:(unint64_t)options
{
  componentCopy = component;
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
    v14 = componentCopy;
    v15 = 2048;
    optionsCopy = options;
    v17 = 2112;
    v18 = componentList;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[#Navigation] _ACCNavigationAccessoryInfo: setComponent: %@ options: %llxh, comopnentList %@", &v13, 0x20u);
  }

  if (componentCopy)
  {
    v10 = [(NSDictionary *)self->_componentList objectForKey:componentCopy];
    v11 = [NSNumber numberWithUnsignedLongLong:options];
    [v10 setObject:v11 forKey:__kComponentOptionsKey];
  }
}

- (unint64_t)componentOptions:(id)options
{
  if (!options)
  {
    return 0;
  }

  v3 = [(NSDictionary *)self->_componentList objectForKey:?];
  v4 = [v3 objectForKey:__kComponentOptionsKey];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)componentStarted:(id)started
{
  if (!started)
  {
    return 0;
  }

  v3 = [(NSDictionary *)self->_componentList objectForKey:?];
  v4 = [v3 objectForKey:__kComponentStartedKey];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)startedComponentList
{
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSDictionary *)self->_componentList allValues];
  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 objectForKey:__kComponentStartedKey];
        if ([v10 BOOLValue])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  allValues = [(NSDictionary *)self->_componentList allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) objectForKey:ACCNav_DispComp_ComponentID];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  selfCopy = self;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] _ACCNavigationAccessoryInfo: startedComponentList: %@", &v2, 0xCu);
}

- (void)componentIdList
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] _ACCNavigationAccessoryInfo: componentIdList: %@", &v2, 0xCu);
}

@end