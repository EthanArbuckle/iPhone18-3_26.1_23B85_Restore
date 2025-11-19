@interface UARPDatabase
+ (id)sharedDatabase;
- (NSArray)activeAccessories;
- (NSArray)pendingConsentRequests;
- (NSArray)periodicLaunchAccessories;
- (UARPDatabase)init;
- (id)accessoryArrayForDictionary:(id)a3;
- (id)activeAccessoryDictionary;
- (id)consentArrayForDictionary:(id)a3;
- (id)dasActivitiesDictionary;
- (id)getDASActivitiesForServiceName:(id)a3;
- (id)pendingConsentRequestsDictionary;
- (id)periodicLaunchAccessoryDictionary;
- (id)unarchiveConsentData:(id)a3 forAccessory:(id)a4;
- (id)unarchiveDASActivitiesData:(id)a3;
- (id)unarchiveInternalAccessoryData:(id)a3 forUUID:(id)a4;
- (void)addAccessoryToPeriodicLaunchCache:(id)a3 uuid:(id)a4;
- (void)addActiveAccessory:(id)a3;
- (void)addDASActivities:(id)a3 serviceName:(id)a4;
- (void)addPendingConsentRequest:(id)a3;
- (void)dealloc;
- (void)dumpActiveAccessories:(id)a3;
- (void)dumpConsentPendingAccessories:(id)a3;
- (void)dumpDASActivities:(id)a3;
- (void)dumpPeriodicLaunchCache:(id)a3;
- (void)dumpToFile:(id)a3;
- (void)removeActiveAccessoryForUUID:(id)a3 isUpdate:(BOOL)a4;
- (void)removeDASActivitiesForServiceName:(id)a3;
- (void)removePendingConsentRequest:(id)a3;
- (void)removePeriodicLaunchCacheAccessoryForUUID:(id)a3;
- (void)updateActiveAccessory:(id)a3;
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

- (id)accessoryArrayForDictionary:(id)a3
{
  v5 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(a3);
        }

        v10 = -[UARPDatabase unarchiveInternalAccessoryData:forUUID:](self, "unarchiveInternalAccessoryData:forUUID:", [a3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)], *(*(&v12 + 1) + 8 * v9));
        if (v10)
        {
          [v5 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return [NSArray arrayWithArray:v5];
}

- (NSArray)activeAccessories
{
  v3 = [(UARPDatabase *)self activeAccessoryDictionary];

  return [(UARPDatabase *)self accessoryArrayForDictionary:v3];
}

- (void)addActiveAccessory:(id)a3
{
  v5 = [(UARPDatabase *)self activeAccessoryDictionary];
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  v7 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:{objc_msgSend(objc_msgSend(objc_msgSend(a3, "accessoryID"), "uuid"), "UUIDString")}];
    [(UARPDatabase *)self setActiveAccessories:v5];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004ADEC();
  }

  -[UARPDatabase removePeriodicLaunchCacheAccessoryForUUID:](self, "removePeriodicLaunchCacheAccessoryForUUID:", [objc_msgSend(a3 "accessoryID")]);
}

- (void)updateActiveAccessory:(id)a3
{
  if ([-[UARPDatabase activeAccessoryDictionary](self "activeAccessoryDictionary")] < 0x65)
  {
    -[UARPDatabase removeActiveAccessoryForUUID:isUpdate:](self, "removeActiveAccessoryForUUID:isUpdate:", [objc_msgSend(a3 "accessoryID")], 1);
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

  [(UARPDatabase *)self addActiveAccessory:a3];
}

- (void)removeActiveAccessoryForUUID:(id)a3 isUpdate:(BOOL)a4
{
  v7 = [(UARPDatabase *)self activeAccessoryDictionary];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 objectForKeyedSubscript:{objc_msgSend(a3, "UUIDString")}];
    if (v9)
    {
      if (!a4)
      {
        [(UARPDatabase *)self addAccessoryToPeriodicLaunchCache:v9 uuid:a3];
      }

      [v8 removeObjectForKey:{objc_msgSend(a3, "UUIDString")}];

      [(UARPDatabase *)self setActiveAccessories:v8];
    }
  }
}

- (id)activeAccessoryDictionary
{
  v2 = [-[NSUserDefaults objectForKey:](self->_database objectForKey:{@"ActiveAccessories", "mutableCopy"}];

  return v2;
}

- (id)unarchiveInternalAccessoryData:(id)a3 forUUID:(id)a4
{
  v8 = 0;
  v6 = +[NSKeyedUnarchiver unarchivedObjectOfClasses:fromData:error:](NSKeyedUnarchiver, "unarchivedObjectOfClasses:fromData:error:", +[UARPAccessoryInternal encodedClasses], a3, &v8);
  if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004AEF0(a4, &v8);
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

- (void)addAccessoryToPeriodicLaunchCache:(id)a3 uuid:(id)a4
{
  v7 = [(UARPDatabase *)self periodicLaunchAccessoryDictionary];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:a3 forKeyedSubscript:{objc_msgSend(a4, "UUIDString")}];

  [(UARPDatabase *)self setPeriodicLaunchCache:v7];
}

- (void)removePeriodicLaunchCacheAccessoryForUUID:(id)a3
{
  v5 = [(UARPDatabase *)self periodicLaunchAccessoryDictionary];
  if (v5)
  {
    v6 = v5;
    [v5 removeObjectForKey:{objc_msgSend(a3, "UUIDString")}];

    [(UARPDatabase *)self setPeriodicLaunchCache:v6];
  }
}

- (NSArray)pendingConsentRequests
{
  v3 = [(UARPDatabase *)self pendingConsentRequestsDictionary];

  return [(UARPDatabase *)self consentArrayForDictionary:v3];
}

- (id)pendingConsentRequestsDictionary
{
  v2 = [-[NSUserDefaults objectForKey:](self->_database objectForKey:{@"PendingConsentRequests", "mutableCopy"}];

  return v2;
}

- (void)addPendingConsentRequest:(id)a3
{
  v5 = [(UARPDatabase *)self pendingConsentRequestsDictionary];
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  v7 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:{objc_msgSend(a3, "accessoryName")}];
    [(UARPDatabase *)self setPendingConsentRequests:v5];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004AF60(a3, &v7);
  }
}

- (void)removePendingConsentRequest:(id)a3
{
  v5 = [(UARPDatabase *)self pendingConsentRequestsDictionary];
  if (v5)
  {
    v6 = v5;
    if ([v5 objectForKeyedSubscript:{objc_msgSend(a3, "accessoryName")}])
    {
      [v6 removeObjectForKey:{objc_msgSend(a3, "accessoryName")}];

      [(UARPDatabase *)self setPendingConsentRequests:v6];
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10004AFDC(a3, log);
      }
    }
  }
}

- (id)consentArrayForDictionary:(id)a3
{
  v5 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(a3);
        }

        v10 = -[UARPDatabase unarchiveConsentData:forAccessory:](self, "unarchiveConsentData:forAccessory:", [a3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)], *(*(&v12 + 1) + 8 * v9));
        if (v10)
        {
          [v5 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return [NSArray arrayWithArray:v5];
}

- (id)unarchiveConsentData:(id)a3 forAccessory:(id)a4
{
  v8 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v8];
  if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004AEF0(a4, &v8);
  }

  return v6;
}

- (id)dasActivitiesDictionary
{
  v2 = [-[NSUserDefaults objectForKey:](self->_database objectForKey:{@"DASActivities", "mutableCopy"}];

  return v2;
}

- (void)addDASActivities:(id)a3 serviceName:(id)a4
{
  v7 = [(UARPDatabase *)self dasActivitiesDictionary];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  v11 = 0;
  v8 = [a3 mutableCopy];
  if ([v7 objectForKeyedSubscript:a4])
  {
    v9 = -[UARPDatabase unarchiveDASActivitiesData:](self, "unarchiveDASActivitiesData:", [v7 objectForKeyedSubscript:a4]);
    if (v9)
    {
      [v8 addObjectsFromArray:v9];
    }
  }

  v10 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v11];
  if (v10)
  {
    [v7 setObject:v10 forKeyedSubscript:a4];
    [(UARPDatabase *)self setDASActivities:v7];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B070(v8, &v11);
  }
}

- (id)getDASActivitiesForServiceName:(id)a3
{
  v5 = [(UARPDatabase *)self dasActivitiesDictionary];
  result = [v5 objectForKeyedSubscript:a3];
  if (result)
  {
    v7 = [v5 objectForKeyedSubscript:a3];

    return [(UARPDatabase *)self unarchiveDASActivitiesData:v7];
  }

  return result;
}

- (void)removeDASActivitiesForServiceName:(id)a3
{
  v5 = [(UARPDatabase *)self dasActivitiesDictionary];
  if ([v5 objectForKeyedSubscript:a3])
  {
    [v5 removeObjectForKey:a3];

    [(UARPDatabase *)self setDASActivities:v5];
  }
}

- (id)unarchiveDASActivitiesData:(id)a3
{
  v8 = 0;
  v5 = objc_opt_class();
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v5 fromData:objc_opt_class() error:0], a3, &v8];
  if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B0EC(a3, &v8);
  }

  return v6;
}

- (void)dumpActiveAccessories:(id)a3
{
  v4 = [(UARPDatabase *)self activeAccessories];
  [a3 appendFormat:@"Active Accessories:\n"];
  if ([(NSArray *)v4 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * i) dumpWithTabDepth:1 dumpString:a3];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [a3 appendWithTabDepth:1 format:@"No active accessories present.\n"];
  }
}

- (void)dumpPeriodicLaunchCache:(id)a3
{
  v4 = [(UARPDatabase *)self accessoryArrayForDictionary:[(UARPDatabase *)self periodicLaunchAccessoryDictionary]];
  [a3 appendFormat:@"Periodic Launch Cache:\n"];
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

          [*(*(&v9 + 1) + 8 * i) dumpWithTabDepth:1 dumpString:a3];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [a3 appendWithTabDepth:1 format:@"No accessories present in periodic launch cache.\n"];
  }
}

- (void)dumpConsentPendingAccessories:(id)a3
{
  v4 = [(UARPDatabase *)self consentArrayForDictionary:[(UARPDatabase *)self pendingConsentRequestsDictionary]];
  [a3 appendFormat:@"Consent Pending Requests:\n"];
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

          [*(*(&v9 + 1) + 8 * i) dumpWithTabDepth:1 dumpString:a3];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [a3 appendWithTabDepth:1 format:@"No Pending Consent Requests present.\n"];
  }
}

- (void)dumpDASActivities:(id)a3
{
  v5 = [(UARPDatabase *)self dasActivitiesDictionary];
  [a3 appendFormat:@"DAS Activities:\n"];
  if ([v5 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v5 allKeys];
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
          [a3 appendWithTabDepth:1 format:{@"Service Name: %@", v10}];
          v11 = -[UARPDatabase unarchiveDASActivitiesData:](self, "unarchiveDASActivitiesData:", [v5 objectForKeyedSubscript:v10]);
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

                [*(*(&v17 + 1) + 8 * j) dumpWithTabDepth:2 dumpString:a3];
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

    [a3 appendWithTabDepth:1 format:@"No DAS Activities present.\n"];
  }
}

- (void)dumpToFile:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B15C(a3, log);
  }

  v6 = +[NSMutableString string];
  [(UARPDatabase *)self dumpActiveAccessories:v6];
  [(UARPDatabase *)self dumpPeriodicLaunchCache:v6];
  [(UARPDatabase *)self dumpConsentPendingAccessories:v6];
  [(UARPDatabase *)self dumpDASActivities:v6];
  v8 = 0;
  v7 = [a3 stringByExpandingTildeInPath];
  if (([v6 writeToFile:objc_msgSend(a3 atomically:"stringByExpandingTildeInPath") encoding:1 error:{4, &v8}] & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004B1D4(v7, &v8);
  }
}

@end