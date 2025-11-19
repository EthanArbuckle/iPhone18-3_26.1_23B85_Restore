@interface DBHomeKitService
+ (DBHomeKitService)serviceWithHome:(id)a3 service:(id)a4;
+ (id)registeredServiceClasses;
+ (void)load;
+ (void)registerServiceClass:(Class)a3;
- (BOOL)current;
- (BOOL)hasError;
- (BOOL)interactive;
- (BOOL)pendingRead;
- (BOOL)pendingWrite;
- (BOOL)reachable;
- (BOOL)usable;
- (DBHome)home;
- (DBHomeKitService)initWithHome:(id)a3 service:(id)a4;
- (NSString)description;
- (NSString)name;
- (NSString)stateDescription;
- (NSString)type;
- (NSUUID)uniqueIdentifier;
- (double)distance;
- (id)applicationData;
- (id)characteristicForName:(id)a3;
- (id)characteristicForType:(id)a3;
- (id)serviceType;
- (void)_characteristicDidUpdate:(id)a3;
- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)accessoryDidUpdateServices:(id)a3;
- (void)addObserver:(id)a3;
- (void)refreshCharacteristicValues;
- (void)removeObserver:(id)a3;
@end

@implementation DBHomeKitService

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [DBHomeKitService registerServiceClass:v3];
  }
}

+ (void)registerServiceClass:(Class)a3
{
  if (registerServiceClass__onceToken != -1)
  {
    +[DBHomeKitService registerServiceClass:];
  }

  obj = _registeredServiceClasses;
  objc_sync_enter(obj);
  v4 = _registeredServiceClasses;
  v5 = [(objc_class *)a3 serviceType];
  [v4 setObject:a3 forKeyedSubscript:v5];

  objc_sync_exit(obj);
}

uint64_t __41__DBHomeKitService_registerServiceClass___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _registeredServiceClasses;
  _registeredServiceClasses = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)registeredServiceClasses
{
  v2 = _registeredServiceClasses;
  objc_sync_enter(v2);
  v3 = [_registeredServiceClasses copy];
  objc_sync_exit(v2);

  return v3;
}

+ (DBHomeKitService)serviceWithHome:(id)a3 service:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[DBHomeKitService registeredServiceClasses];
  v8 = +[DBHomeKitServiceTypes serviceNameByType];
  v9 = [v5 serviceType];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v7 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_opt_class();
  }

  v12 = [[v11 alloc] initWithHome:v6 service:v5];

  return v12;
}

- (DBHomeKitService)initWithHome:(id)a3 service:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = DBHomeKitService;
  v8 = [(DBHomeKitService *)&v35 init];
  v9 = v8;
  if (v8)
  {
    v29 = v7;
    objc_storeWeak(&v8->_home, v6);
    objc_storeStrong(&v9->_service, a4);
    v10 = objc_alloc(MEMORY[0x277CF89C0]);
    v11 = [objc_opt_class() observerProtocol];
    v12 = [v10 initWithProtocol:v11];
    observers = v9->_observers;
    v9->_observers = v12;

    v14 = [(HMService *)v9->_service accessory];
    [v14 setDelegate:v9];

    obj = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [(HMService *)v9->_service characteristics];
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [DBHomeKitCharacteristic chacteristicWithService:v9 characteristic:*(*(&v31 + 1) + 8 * i)];
          if ([v21 usable])
          {
            v22 = [v21 uniqueIdentifier];
            [obj setObject:v21 forKeyedSubscript:v22];
          }

          v23 = [v21 name];
          v24 = [v15 objectForKeyedSubscript:v23];

          if (!v24)
          {
            v24 = objc_opt_new();
            v25 = [v21 name];
            [v15 setObject:v24 forKeyedSubscript:v25];
          }

          [v24 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v18);
    }

    objc_storeStrong(&v9->_characteristics, obj);
    objc_storeStrong(&v9->_characteristicsByType, v15);
    if ([(DBHomeKitService *)v9 _tracksLastUsed])
    {
      WeakRetained = objc_loadWeakRetained(&v9->_home);
      v27 = [(HMService *)v9->_service serviceType];
      [WeakRetained _updateLastUsedServiceOfType:v27];
    }

    v7 = v29;
  }

  return v9;
}

- (id)characteristicForType:(id)a3
{
  v4 = a3;
  v5 = +[DBHomeKitCharacteristicTypes characteristicNameByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(DBHomeKitService *)self characteristicForName:v6];

  return v7;
}

- (id)characteristicForName:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeKitService *)self characteristicsByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 firstObject];

  return v7;
}

- (BOOL)interactive
{
  v2 = [(DBHomeKitService *)self service];
  v3 = [v2 isUserInteractive];

  return v3;
}

- (NSString)type
{
  v3 = +[DBHomeKitServiceTypes serviceNameByType];
  v4 = [(DBHomeKitService *)self service];
  v5 = [v4 serviceType];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(DBHomeKitService *)self service];
    v7 = [v8 serviceType];
  }

  return v7;
}

- (BOOL)reachable
{
  v2 = [(DBHomeKitService *)self service];
  v3 = [v2 accessory];
  v4 = [v3 isReachable];

  return v4;
}

- (BOOL)current
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DBHomeKitService *)self characteristics];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [*(*(&v10 + 1) + 8 * i) current];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)pendingWrite
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DBHomeKitService *)self characteristics];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v10 + 1) + 8 * i) pendingWrite];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (BOOL)pendingRead
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(DBHomeKitService *)self characteristics];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) pendingRead])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)hasError
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(DBHomeKitService *)self characteristics];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasError])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeKitService *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeKitService *)self observers];
  [v5 removeObserver:v4];
}

- (NSString)description
{
  v18 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v15 = [(DBHomeKitService *)self name];
  v14 = [(DBHomeKitService *)self uniqueIdentifier];
  v13 = [(DBHomeKitService *)self home];
  v16 = [(DBHomeKitService *)self home];
  v3 = [v16 uniqueIdentifier];
  v4 = [(DBHomeKitService *)self type];
  if ([(DBHomeKitService *)self interactive])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(DBHomeKitService *)self reachable])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(DBHomeKitService *)self current])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(DBHomeKitService *)self pendingWrite])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(DBHomeKitService *)self pendingRead])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(DBHomeKitService *)self hasError])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v18 stringWithFormat:@"<%@: %p name=%@ uniqueIdentifier=%@ home=(%p)%@ type=%@ interactive=%@ reachable=%@ current=%@ pendingWrite=%@ pendingRead=%@ hasError=%@>", v17, self, v15, v14, v13, v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)refreshCharacteristicValues
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetHomePrediction *)self serviceDidUpdate:v3];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(DBHomeKitService *)self characteristics];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) updateValueRequiringRead:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(DBHomeKitService *)self observers];
  [v10 serviceDidUpdate:self];
}

- (id)applicationData
{
  v2 = [(DBHomeKitService *)self service];
  v3 = [v2 applicationData];

  return v3;
}

- (id)serviceType
{
  v2 = [(DBHomeKitService *)self service];
  v3 = [v2 serviceType];

  return v3;
}

- (void)_characteristicDidUpdate:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeKitService _characteristicDidUpdate:];
  }

  v6 = [(DBHomeKitService *)self observers];
  [v6 serviceDidUpdate:self];
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(DBHomeKitService *)self service];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (NSString)name
{
  v2 = [(DBHomeKitService *)self service];
  v3 = [v2 name];

  return v3;
}

- (BOOL)usable
{
  v3 = [(DBHomeKitService *)self characteristics];
  if ([v3 count])
  {
    v4 = [(DBHomeKitService *)self service];
    v5 = [v4 serviceType];
    v6 = [v5 isEqualToString:*MEMORY[0x277CD0DD0]] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (NSString)stateDescription
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(DBHomeKitService *)self managedCharacteristics];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(DBHomeKitService *)self characteristics];
    v6 = [v7 allValues];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) stateDescription];
        [v3 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277CCACA8];
  if ([(DBHomeKitService *)self reachable])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(DBHomeKitService *)self current])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [v3 componentsJoinedByString:{@", "}];
  v18 = [v14 stringWithFormat:@"[reachable=%@ current=%@ \n%@]", v15, v16, v17];

  return v18;
}

- (double)distance
{
  v2 = [(DBHomeKitService *)self home];
  [v2 distance];
  v4 = v3;

  return v4;
}

- (void)accessoryDidUpdateServices:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeKitService accessoryDidUpdateServices:];
  }

  v6 = [(DBHomeKitService *)self observers];
  [v6 serviceDidUpdate:self];
}

- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138544130;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    _os_log_debug_impl(&dword_248146000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ accessory=%{public}@ HMService=%{public}@ HMCharacteristic=%{public}@", &v20, 0x2Au);
  }

  v12 = [v9 uniqueIdentifier];
  v13 = [(DBHomeKitService *)self uniqueIdentifier];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v15 = [(DBHomeKitService *)self characteristics];
    v16 = [v10 uniqueIdentifier];
    v17 = [v15 objectForKeyedSubscript:v16];

    [v17 updateValueRequiringRead:0];
    if ([(DBHomeKitService *)self _shouldUpdateLastUsedForCharacteristic:v17])
    {
      v18 = [(DBHomeKitService *)self home];
      v19 = [v9 serviceType];
      [v18 _updateLastUsedServiceOfType:v19];
    }
  }
}

- (void)accessoryDidUpdateReachability:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeKitService accessoryDidUpdateServices:];
  }

  v6 = [(DBHomeKitService *)self observers];
  [v6 serviceDidUpdate:self];
}

- (DBHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

@end