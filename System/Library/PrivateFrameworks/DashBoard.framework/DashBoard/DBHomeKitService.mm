@interface DBHomeKitService
+ (DBHomeKitService)serviceWithHome:(id)home service:(id)service;
+ (id)registeredServiceClasses;
+ (void)load;
+ (void)registerServiceClass:(Class)class;
- (BOOL)current;
- (BOOL)hasError;
- (BOOL)interactive;
- (BOOL)pendingRead;
- (BOOL)pendingWrite;
- (BOOL)reachable;
- (BOOL)usable;
- (DBHome)home;
- (DBHomeKitService)initWithHome:(id)home service:(id)service;
- (NSString)description;
- (NSString)name;
- (NSString)stateDescription;
- (NSString)type;
- (NSUUID)uniqueIdentifier;
- (double)distance;
- (id)applicationData;
- (id)characteristicForName:(id)name;
- (id)characteristicForType:(id)type;
- (id)serviceType;
- (void)_characteristicDidUpdate:(id)update;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)accessoryDidUpdateServices:(id)services;
- (void)addObserver:(id)observer;
- (void)refreshCharacteristicValues;
- (void)removeObserver:(id)observer;
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

+ (void)registerServiceClass:(Class)class
{
  if (registerServiceClass__onceToken != -1)
  {
    +[DBHomeKitService registerServiceClass:];
  }

  obj = _registeredServiceClasses;
  objc_sync_enter(obj);
  v4 = _registeredServiceClasses;
  serviceType = [(objc_class *)class serviceType];
  [v4 setObject:class forKeyedSubscript:serviceType];

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

+ (DBHomeKitService)serviceWithHome:(id)home service:(id)service
{
  serviceCopy = service;
  homeCopy = home;
  v7 = +[DBHomeKitService registeredServiceClasses];
  v8 = +[DBHomeKitServiceTypes serviceNameByType];
  serviceType = [serviceCopy serviceType];
  v10 = [v8 objectForKeyedSubscript:serviceType];
  v11 = [v7 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_opt_class();
  }

  v12 = [[v11 alloc] initWithHome:homeCopy service:serviceCopy];

  return v12;
}

- (DBHomeKitService)initWithHome:(id)home service:(id)service
{
  v37 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  serviceCopy = service;
  v35.receiver = self;
  v35.super_class = DBHomeKitService;
  v8 = [(DBHomeKitService *)&v35 init];
  v9 = v8;
  if (v8)
  {
    v29 = serviceCopy;
    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v9->_service, service);
    v10 = objc_alloc(MEMORY[0x277CF89C0]);
    observerProtocol = [objc_opt_class() observerProtocol];
    v12 = [v10 initWithProtocol:observerProtocol];
    observers = v9->_observers;
    v9->_observers = v12;

    accessory = [(HMService *)v9->_service accessory];
    [accessory setDelegate:v9];

    obj = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    characteristics = [(HMService *)v9->_service characteristics];
    v17 = [characteristics countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(characteristics);
          }

          v21 = [DBHomeKitCharacteristic chacteristicWithService:v9 characteristic:*(*(&v31 + 1) + 8 * i)];
          if ([v21 usable])
          {
            uniqueIdentifier = [v21 uniqueIdentifier];
            [obj setObject:v21 forKeyedSubscript:uniqueIdentifier];
          }

          name = [v21 name];
          v24 = [v15 objectForKeyedSubscript:name];

          if (!v24)
          {
            v24 = objc_opt_new();
            name2 = [v21 name];
            [v15 setObject:v24 forKeyedSubscript:name2];
          }

          [v24 addObject:v21];
        }

        v18 = [characteristics countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v18);
    }

    objc_storeStrong(&v9->_characteristics, obj);
    objc_storeStrong(&v9->_characteristicsByType, v15);
    if ([(DBHomeKitService *)v9 _tracksLastUsed])
    {
      WeakRetained = objc_loadWeakRetained(&v9->_home);
      serviceType = [(HMService *)v9->_service serviceType];
      [WeakRetained _updateLastUsedServiceOfType:serviceType];
    }

    serviceCopy = v29;
  }

  return v9;
}

- (id)characteristicForType:(id)type
{
  typeCopy = type;
  v5 = +[DBHomeKitCharacteristicTypes characteristicNameByType];
  v6 = [v5 objectForKeyedSubscript:typeCopy];

  v7 = [(DBHomeKitService *)self characteristicForName:v6];

  return v7;
}

- (id)characteristicForName:(id)name
{
  nameCopy = name;
  characteristicsByType = [(DBHomeKitService *)self characteristicsByType];
  v6 = [characteristicsByType objectForKeyedSubscript:nameCopy];

  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)interactive
{
  service = [(DBHomeKitService *)self service];
  isUserInteractive = [service isUserInteractive];

  return isUserInteractive;
}

- (NSString)type
{
  v3 = +[DBHomeKitServiceTypes serviceNameByType];
  service = [(DBHomeKitService *)self service];
  serviceType = [service serviceType];
  v6 = [v3 objectForKeyedSubscript:serviceType];

  if (v6)
  {
    serviceType2 = v6;
  }

  else
  {
    service2 = [(DBHomeKitService *)self service];
    serviceType2 = [service2 serviceType];
  }

  return serviceType2;
}

- (BOOL)reachable
{
  service = [(DBHomeKitService *)self service];
  accessory = [service accessory];
  isReachable = [accessory isReachable];

  return isReachable;
}

- (BOOL)current
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  characteristics = [(DBHomeKitService *)self characteristics];
  allValues = [characteristics allValues];

  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v7 &= [*(*(&v10 + 1) + 8 * i) current];
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  characteristics = [(DBHomeKitService *)self characteristics];
  allValues = [characteristics allValues];

  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v6 |= [*(*(&v10 + 1) + 8 * i) pendingWrite];
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  characteristics = [(DBHomeKitService *)self characteristics];
  allValues = [characteristics allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v8 + 1) + 8 * i) pendingRead])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  characteristics = [(DBHomeKitService *)self characteristics];
  allValues = [characteristics allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasError])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBHomeKitService *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBHomeKitService *)self observers];
  [observers removeObserver:observerCopy];
}

- (NSString)description
{
  v18 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  name = [(DBHomeKitService *)self name];
  uniqueIdentifier = [(DBHomeKitService *)self uniqueIdentifier];
  home = [(DBHomeKitService *)self home];
  home2 = [(DBHomeKitService *)self home];
  uniqueIdentifier2 = [home2 uniqueIdentifier];
  type = [(DBHomeKitService *)self type];
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

  v11 = [v18 stringWithFormat:@"<%@: %p name=%@ uniqueIdentifier=%@ home=(%p)%@ type=%@ interactive=%@ reachable=%@ current=%@ pendingWrite=%@ pendingRead=%@ hasError=%@>", v17, self, name, uniqueIdentifier, home, uniqueIdentifier2, type, v5, v6, v7, v8, v9, v10];

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
  characteristics = [(DBHomeKitService *)self characteristics];
  allValues = [characteristics allValues];

  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v9++) updateValueRequiringRead:0];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  observers = [(DBHomeKitService *)self observers];
  [observers serviceDidUpdate:self];
}

- (id)applicationData
{
  service = [(DBHomeKitService *)self service];
  applicationData = [service applicationData];

  return applicationData;
}

- (id)serviceType
{
  service = [(DBHomeKitService *)self service];
  serviceType = [service serviceType];

  return serviceType;
}

- (void)_characteristicDidUpdate:(id)update
{
  updateCopy = update;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeKitService _characteristicDidUpdate:];
  }

  observers = [(DBHomeKitService *)self observers];
  [observers serviceDidUpdate:self];
}

- (NSUUID)uniqueIdentifier
{
  service = [(DBHomeKitService *)self service];
  uniqueIdentifier = [service uniqueIdentifier];

  return uniqueIdentifier;
}

- (NSString)name
{
  service = [(DBHomeKitService *)self service];
  name = [service name];

  return name;
}

- (BOOL)usable
{
  characteristics = [(DBHomeKitService *)self characteristics];
  if ([characteristics count])
  {
    service = [(DBHomeKitService *)self service];
    serviceType = [service serviceType];
    v6 = [serviceType isEqualToString:*MEMORY[0x277CD0DD0]] ^ 1;
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
  managedCharacteristics = [(DBHomeKitService *)self managedCharacteristics];
  v5 = managedCharacteristics;
  if (managedCharacteristics)
  {
    allValues = managedCharacteristics;
  }

  else
  {
    characteristics = [(DBHomeKitService *)self characteristics];
    allValues = [characteristics allValues];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = allValues;
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

        stateDescription = [*(*(&v20 + 1) + 8 * i) stateDescription];
        [v3 addObject:stateDescription];
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
  home = [(DBHomeKitService *)self home];
  [home distance];
  v4 = v3;

  return v4;
}

- (void)accessoryDidUpdateServices:(id)services
{
  servicesCopy = services;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeKitService accessoryDidUpdateServices:];
  }

  observers = [(DBHomeKitService *)self observers];
  [observers serviceDidUpdate:self];
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  v28 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  v11 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138544130;
    selfCopy = self;
    v22 = 2114;
    v23 = accessoryCopy;
    v24 = 2114;
    v25 = serviceCopy;
    v26 = 2114;
    v27 = characteristicCopy;
    _os_log_debug_impl(&dword_248146000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ accessory=%{public}@ HMService=%{public}@ HMCharacteristic=%{public}@", &v20, 0x2Au);
  }

  uniqueIdentifier = [serviceCopy uniqueIdentifier];
  uniqueIdentifier2 = [(DBHomeKitService *)self uniqueIdentifier];
  v14 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v14)
  {
    characteristics = [(DBHomeKitService *)self characteristics];
    uniqueIdentifier3 = [characteristicCopy uniqueIdentifier];
    v17 = [characteristics objectForKeyedSubscript:uniqueIdentifier3];

    [v17 updateValueRequiringRead:0];
    if ([(DBHomeKitService *)self _shouldUpdateLastUsedForCharacteristic:v17])
    {
      home = [(DBHomeKitService *)self home];
      serviceType = [serviceCopy serviceType];
      [home _updateLastUsedServiceOfType:serviceType];
    }
  }
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeKitService accessoryDidUpdateServices:];
  }

  observers = [(DBHomeKitService *)self observers];
  [observers serviceDidUpdate:self];
}

- (DBHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

@end