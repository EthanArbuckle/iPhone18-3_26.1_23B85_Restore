@interface UARPDatabase
+ (id)sharedDatabase;
- (NSArray)activeAccessories;
- (NSArray)pendingConsentRequests;
- (NSArray)periodicLaunchAccessories;
- (UARPDatabase)init;
- (id)accessoryArrayForDictionary:(id)dictionary;
- (id)activeAccessoryDictionary;
- (id)consentArrayForDictionary:(id)dictionary;
- (id)dasActivitiesDictionary;
- (id)getDASActivitiesForServiceName:(id)name;
- (id)pendingConsentRequestsDictionary;
- (id)periodicLaunchAccessoryDictionary;
- (id)unarchiveConsentData:(id)data forAccessory:(id)accessory;
- (id)unarchiveDASActivitiesData:(id)data;
- (id)unarchiveInternalAccessoryData:(id)data forUUID:(id)d;
- (void)addAccessoryToPeriodicLaunchCache:(id)cache uuid:(id)uuid;
- (void)addActiveAccessory:(id)accessory;
- (void)addDASActivities:(id)activities serviceName:(id)name;
- (void)addPendingConsentRequest:(id)request;
- (void)dealloc;
- (void)dumpActiveAccessories:(id)accessories;
- (void)dumpConsentPendingAccessories:(id)accessories;
- (void)dumpDASActivities:(id)activities;
- (void)dumpPeriodicLaunchCache:(id)cache;
- (void)dumpToFile:(id)file;
- (void)removeActiveAccessoryForUUID:(id)d isUpdate:(BOOL)update;
- (void)removeDASActivitiesForServiceName:(id)name;
- (void)removePendingConsentRequest:(id)request;
- (void)removePeriodicLaunchCacheAccessoryForUUID:(id)d;
- (void)updateActiveAccessory:(id)accessory;
@end

@implementation UARPDatabase

+ (id)sharedDatabase
{
  if (qword_1000997D0 != -1)
  {
    sub_10004ADD8();
  }

  return qword_1000997C8;
}

- (UARPDatabase)init
{
  v4.receiver = self;
  v4.super_class = UARPDatabase;
  v2 = [(UARPDatabase *)&v4 init];
  if (v2)
  {
    v2->_database = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.uarp.database"];
    _CFPreferencesSetBackupDisabled();
    v2->_log = os_log_create("com.apple.accessoryupdater.uarp", "database");
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPDatabase;
  [(UARPDatabase *)&v3 dealloc];
}

- (id)accessoryArrayForDictionary:(id)dictionary
{
  v5 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [dictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(dictionary);
        }

        v10 = -[UARPDatabase unarchiveInternalAccessoryData:forUUID:](self, "unarchiveInternalAccessoryData:forUUID:", [dictionary objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)], *(*(&v12 + 1) + 8 * v9));
        if (v10)
        {
          [v5 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return [NSArray arrayWithArray:v5];
}

- (NSArray)activeAccessories
{
  activeAccessoryDictionary = [(UARPDatabase *)self activeAccessoryDictionary];

  return [(UARPDatabase *)self accessoryArrayForDictionary:activeAccessoryDictionary];
}

- (void)addActiveAccessory:(id)accessory
{
  activeAccessoryDictionary = [(UARPDatabase *)self activeAccessoryDictionary];
  if (!activeAccessoryDictionary)
  {
    activeAccessoryDictionary = +[NSMutableDictionary dictionary];
  }

  v7 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:accessory requiringSecureCoding:1 error:&v7];
  if (v6)
  {
    [activeAccessoryDictionary setObject:v6 forKeyedSubscript:{objc_msgSend(objc_msgSend(objc_msgSend(accessory, "accessoryID"), "uuid"), "UUIDString")}];
    [(UARPDatabase *)self setActiveAccessories:activeAccessoryDictionary];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004ADEC();
  }

  -[UARPDatabase removePeriodicLaunchCacheAccessoryForUUID:](self, "removePeriodicLaunchCacheAccessoryForUUID:", [objc_msgSend(accessory "accessoryID")]);
}

- (void)updateActiveAccessory:(id)accessory
{
  if ([-[UARPDatabase activeAccessoryDictionary](self "activeAccessoryDictionary")] < 0x65)
  {
    -[UARPDatabase removeActiveAccessoryForUUID:isUpdate:](self, "removeActiveAccessoryForUUID:isUpdate:", [objc_msgSend(accessory "accessoryID")], 1);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10004AE6C(log);
    }

    [(UARPDatabase *)self setActiveAccessories:0];
  }

  [(UARPDatabase *)self addActiveAccessory:accessory];
}

- (void)removeActiveAccessoryForUUID:(id)d isUpdate:(BOOL)update
{
  activeAccessoryDictionary = [(UARPDatabase *)self activeAccessoryDictionary];
  if (activeAccessoryDictionary)
  {
    v8 = activeAccessoryDictionary;
    v9 = [activeAccessoryDictionary objectForKeyedSubscript:{objc_msgSend(d, "UUIDString")}];
    if (v9)
    {
      if (!update)
      {
        [(UARPDatabase *)self addAccessoryToPeriodicLaunchCache:v9 uuid:d];
      }

      [v8 removeObjectForKey:{objc_msgSend(d, "UUIDString")}];

      [(UARPDatabase *)self setActiveAccessories:v8];
    }
  }
}

- (id)activeAccessoryDictionary
{
  v2 = [-[NSUserDefaults objectForKey:](self->_database objectForKey:{@"ActiveAccessories", "mutableCopy"}];

  return v2;
}

- (id)unarchiveInternalAccessoryData:(id)data forUUID:(id)d
{
  v8 = 0;
  v6 = +[NSKeyedUnarchiver unarchivedObjectOfClasses:fromData:error:](NSKeyedUnarchiver, "unarchivedObjectOfClasses:fromData:error:", +[UARPAccessoryInternal encodedClasses], data, &v8);
  if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004AEF0(d, &v8);
  }

  return v6;
}

- (id)periodicLaunchAccessoryDictionary
{
  v2 = [-[NSUserDefaults objectForKey:](self->_database objectForKey:{@"PeriodicLaunchCache", "mutableCopy"}];

  return v2;
}

- (NSArray)periodicLaunchAccessories
{
  v3 = +[NSMutableArray array];
  v4 = [(UARPDatabase *)self accessoryArrayForDictionary:[(UARPDatabase *)self periodicLaunchAccessoryDictionary]];
  [v3 addObjectsFromArray:{-[UARPDatabase activeAccessories](self, "activeAccessories")}];
  [v3 addObjectsFromArray:v4];

  return [NSArray arrayWithArray:v3];
}

- (void)addAccessoryToPeriodicLaunchCache:(id)cache uuid:(id)uuid
{
  periodicLaunchAccessoryDictionary = [(UARPDatabase *)self periodicLaunchAccessoryDictionary];
  if (!periodicLaunchAccessoryDictionary)
  {
    periodicLaunchAccessoryDictionary = +[NSMutableDictionary dictionary];
  }

  [periodicLaunchAccessoryDictionary setObject:cache forKeyedSubscript:{objc_msgSend(uuid, "UUIDString")}];

  [(UARPDatabase *)self setPeriodicLaunchCache:periodicLaunchAccessoryDictionary];
}

- (void)removePeriodicLaunchCacheAccessoryForUUID:(id)d
{
  periodicLaunchAccessoryDictionary = [(UARPDatabase *)self periodicLaunchAccessoryDictionary];
  if (periodicLaunchAccessoryDictionary)
  {
    v6 = periodicLaunchAccessoryDictionary;
    [periodicLaunchAccessoryDictionary removeObjectForKey:{objc_msgSend(d, "UUIDString")}];

    [(UARPDatabase *)self setPeriodicLaunchCache:v6];
  }
}

- (NSArray)pendingConsentRequests
{
  pendingConsentRequestsDictionary = [(UARPDatabase *)self pendingConsentRequestsDictionary];

  return [(UARPDatabase *)self consentArrayForDictionary:pendingConsentRequestsDictionary];
}

- (id)pendingConsentRequestsDictionary
{
  v2 = [-[NSUserDefaults objectForKey:](self->_database objectForKey:{@"PendingConsentRequests", "mutableCopy"}];

  return v2;
}

- (void)addPendingConsentRequest:(id)request
{
  pendingConsentRequestsDictionary = [(UARPDatabase *)self pendingConsentRequestsDictionary];
  if (!pendingConsentRequestsDictionary)
  {
    pendingConsentRequestsDictionary = +[NSMutableDictionary dictionary];
  }

  v7 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:request requiringSecureCoding:1 error:&v7];
  if (v6)
  {
    [pendingConsentRequestsDictionary setObject:v6 forKeyedSubscript:{objc_msgSend(request, "accessoryName")}];
    [(UARPDatabase *)self setPendingConsentRequests:pendingConsentRequestsDictionary];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004AF60(request, &v7);
  }
}

- (void)removePendingConsentRequest:(id)request
{
  pendingConsentRequestsDictionary = [(UARPDatabase *)self pendingConsentRequestsDictionary];
  if (pendingConsentRequestsDictionary)
  {
    v6 = pendingConsentRequestsDictionary;
    if ([pendingConsentRequestsDictionary objectForKeyedSubscript:{objc_msgSend(request, "accessoryName")}])
    {
      [v6 removeObjectForKey:{objc_msgSend(request, "accessoryName")}];

      [(UARPDatabase *)self setPendingConsentRequests:v6];
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10004AFDC(request, log);
      }
    }
  }
}

- (id)consentArrayForDictionary:(id)dictionary
{
  v5 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [dictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(dictionary);
        }

        v10 = -[UARPDatabase unarchiveConsentData:forAccessory:](self, "unarchiveConsentData:forAccessory:", [dictionary objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)], *(*(&v12 + 1) + 8 * v9));
        if (v10)
        {
          [v5 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return [NSArray arrayWithArray:v5];
}

- (id)unarchiveConsentData:(id)data forAccessory:(id)accessory
{
  v8 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:data error:&v8];
  if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004AEF0(accessory, &v8);
  }

  return v6;
}

- (id)dasActivitiesDictionary
{
  v2 = [-[NSUserDefaults objectForKey:](self->_database objectForKey:{@"DASActivities", "mutableCopy"}];

  return v2;
}

- (void)addDASActivities:(id)activities serviceName:(id)name
{
  dasActivitiesDictionary = [(UARPDatabase *)self dasActivitiesDictionary];
  if (!dasActivitiesDictionary)
  {
    dasActivitiesDictionary = +[NSMutableDictionary dictionary];
  }

  v11 = 0;
  v8 = [activities mutableCopy];
  if ([dasActivitiesDictionary objectForKeyedSubscript:name])
  {
    v9 = -[UARPDatabase unarchiveDASActivitiesData:](self, "unarchiveDASActivitiesData:", [dasActivitiesDictionary objectForKeyedSubscript:name]);
    if (v9)
    {
      [v8 addObjectsFromArray:v9];
    }
  }

  v10 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v11];
  if (v10)
  {
    [dasActivitiesDictionary setObject:v10 forKeyedSubscript:name];
    [(UARPDatabase *)self setDASActivities:dasActivitiesDictionary];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B070(v8, &v11);
  }
}

- (id)getDASActivitiesForServiceName:(id)name
{
  dasActivitiesDictionary = [(UARPDatabase *)self dasActivitiesDictionary];
  result = [dasActivitiesDictionary objectForKeyedSubscript:name];
  if (result)
  {
    v7 = [dasActivitiesDictionary objectForKeyedSubscript:name];

    return [(UARPDatabase *)self unarchiveDASActivitiesData:v7];
  }

  return result;
}

- (void)removeDASActivitiesForServiceName:(id)name
{
  dasActivitiesDictionary = [(UARPDatabase *)self dasActivitiesDictionary];
  if ([dasActivitiesDictionary objectForKeyedSubscript:name])
  {
    [dasActivitiesDictionary removeObjectForKey:name];

    [(UARPDatabase *)self setDASActivities:dasActivitiesDictionary];
  }
}

- (id)unarchiveDASActivitiesData:(id)data
{
  v8 = 0;
  v5 = objc_opt_class();
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v5 fromData:objc_opt_class() error:0], data, &v8];
  if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B0EC(data, &v8);
  }

  return v6;
}

- (void)dumpActiveAccessories:(id)accessories
{
  activeAccessories = [(UARPDatabase *)self activeAccessories];
  [accessories appendFormat:@"Active Accessories:\n"];
  if ([(NSArray *)activeAccessories count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [(NSArray *)activeAccessories countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(activeAccessories);
          }

          [*(*(&v9 + 1) + 8 * i) dumpWithTabDepth:1 dumpString:accessories];
        }

        v6 = [(NSArray *)activeAccessories countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [accessories appendWithTabDepth:1 format:@"No active accessories present.\n"];
  }
}

- (void)dumpPeriodicLaunchCache:(id)cache
{
  v4 = [(UARPDatabase *)self accessoryArrayForDictionary:[(UARPDatabase *)self periodicLaunchAccessoryDictionary]];
  [cache appendFormat:@"Periodic Launch Cache:\n"];
  if ([v4 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) dumpWithTabDepth:1 dumpString:cache];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [cache appendWithTabDepth:1 format:@"No accessories present in periodic launch cache.\n"];
  }
}

- (void)dumpConsentPendingAccessories:(id)accessories
{
  v4 = [(UARPDatabase *)self consentArrayForDictionary:[(UARPDatabase *)self pendingConsentRequestsDictionary]];
  [accessories appendFormat:@"Consent Pending Requests:\n"];
  if ([v4 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) dumpWithTabDepth:1 dumpString:accessories];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [accessories appendWithTabDepth:1 format:@"No Pending Consent Requests present.\n"];
  }
}

- (void)dumpDASActivities:(id)activities
{
  dasActivitiesDictionary = [(UARPDatabase *)self dasActivitiesDictionary];
  [activities appendFormat:@"DAS Activities:\n"];
  if ([dasActivitiesDictionary count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [dasActivitiesDictionary allKeys];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          [activities appendWithTabDepth:1 format:{@"Service Name: %@", v10}];
          v11 = -[UARPDatabase unarchiveDASActivitiesData:](self, "unarchiveDASActivitiesData:", [dasActivitiesDictionary objectForKeyedSubscript:v10]);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v18;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v18 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [*(*(&v17 + 1) + 8 * j) dumpWithTabDepth:2 dumpString:activities];
              }

              v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v13);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else
  {

    [activities appendWithTabDepth:1 format:@"No DAS Activities present.\n"];
  }
}

- (void)dumpToFile:(id)file
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B15C(file, log);
  }

  v6 = +[NSMutableString string];
  [(UARPDatabase *)self dumpActiveAccessories:v6];
  [(UARPDatabase *)self dumpPeriodicLaunchCache:v6];
  [(UARPDatabase *)self dumpConsentPendingAccessories:v6];
  [(UARPDatabase *)self dumpDASActivities:v6];
  v8 = 0;
  stringByExpandingTildeInPath = [file stringByExpandingTildeInPath];
  if (([v6 writeToFile:objc_msgSend(file atomically:"stringByExpandingTildeInPath") encoding:1 error:{4, &v8}] & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B1D4(stringByExpandingTildeInPath, &v8);
  }
}

@end