@interface DBHome
- (BOOL)hasCachedGarageDoors;
- (BOOL)hasGarageDoor;
- (BOOL)inAllowedPeriod;
- (BOOL)inHomeRange;
- (BOOL)inLocationRange;
- (BOOL)inRange;
- (BOOL)unsupportedLegacyHomeHubVersion;
- (CLLocation)location;
- (DBHome)initWithHome:(id)home resourceProvider:(id)provider;
- (HMHomeAccessControl)accessControl;
- (NSArray)garageDoors;
- (NSDictionary)cachedGarageDoors;
- (NSMutableSet)updatingLastUsedServiceTypes;
- (NSString)description;
- (NSString)formattedUniqueIdentifier;
- (NSString)name;
- (NSString)stateDescription;
- (NSUUID)uniqueIdentifier;
- (double)distance;
- (void)_scheduleGarageDoorRefresh;
- (void)_setValue:(id)value forCharacteristic:(id)characteristic completion:(id)completion;
- (void)_updateCachedGarageDoors;
- (void)_updateInRangeIfNeeded;
- (void)_updateLastUsedServiceOfType:(id)type;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didUpdateAccessControlForUser:(id)user;
- (void)home:(id)home didUpdateLocation:(id)location;
- (void)homeDidUpdateHomeLocationStatus:(id)status;
- (void)locationManager:(id)manager didEnterRegionIdentifier:(id)identifier;
- (void)locationManager:(id)manager didExitRegionIdentifier:(id)identifier;
- (void)networkPathMonitor:(id)monitor didChangeNetworkReachable:(BOOL)reachable;
- (void)networkPathMonitorDidChangeNetworkPath:(id)path;
- (void)refreshGarageDoors;
- (void)removeObserver:(id)observer;
- (void)restrictedGuestAllowedPeriodEnded:(id)ended;
- (void)restrictedGuestAllowedPeriodStarted:(id)started;
@end

@implementation DBHome

- (void)_scheduleGarageDoorRefresh
{
  if (![(DBHome *)self garageDoorRefreshScheduled])
  {
    [(DBHome *)self setGarageDoorRefreshScheduled:1];
    v3 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__DBHome__scheduleGarageDoorRefresh__block_invoke;
    block[3] = &unk_278F01580;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __36__DBHome__scheduleGarageDoorRefresh__block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshGarageDoors];
  v2 = *(a1 + 32);

  return [v2 setGarageDoorRefreshScheduled:0];
}

- (void)refreshGarageDoors
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (NSString)description
{
  v3 = objc_opt_new();
  updatingLastUsedServiceTypes = [(DBHome *)self updatingLastUsedServiceTypes];
  allObjects = [updatingLastUsedServiceTypes allObjects];
  v33 = [allObjects componentsJoinedByString:{@", "}];

  lastUsedIdentifiersByServiceType = [(DBHome *)self lastUsedIdentifiersByServiceType];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __21__DBHome_description__block_invoke;
  v34[3] = &unk_278F02E48;
  v7 = v3;
  v35 = v7;
  [lastUsedIdentifiersByServiceType enumerateKeysAndObjectsUsingBlock:v34];

  v30 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v32 = NSStringFromClass(v8);
  name = [(DBHome *)self name];
  uniqueIdentifier = [(DBHome *)self uniqueIdentifier];
  v10 = @"YES";
  if ([(DBHome *)self hasGarageDoor])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v29 = v11;
  if ([(DBHome *)self hasCachedGarageDoors])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v28 = v12;
  if ([(DBHome *)self inAllowedPeriod])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v27 = v13;
  if ([(DBHome *)self unsupportedLegacyHomeHubVersion])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(DBHome *)self inExtendedRange])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(DBHome *)self inRange])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [(DBHome *)self distance];
  v18 = v17;
  v19 = *MEMORY[0x277CE41E0];
  if (v17 == *MEMORY[0x277CE41E0])
  {
    v22 = @"Unknown";
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    [(DBHome *)self distance];
    v22 = [v20 stringWithFormat:@"%.2f", v21];
  }

  if ([(DBHome *)self inLocationRange])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  if (![(DBHome *)self inHomeRange])
  {
    v10 = @"NO";
  }

  v24 = [v7 componentsJoinedByString:{@", "}];
  v25 = [v30 stringWithFormat:@"<%@: %p %@ uniqueIdentifier=%@ hasGarageDoor=%@ hasCachedGarageDoors=%@ inAllowedPeriod=%@ unsupportedLegacyHomeHubVersion=%@ inExtendedRange=%@ inRange=%@ distance=%@ inLocationRange=%@ inHomeRange=%@ lastUsed=[%@] updatingLastUsed=[%@]>", v32, self, name, uniqueIdentifier, v29, v28, v27, v14, v15, v16, v22, v23, v10, v24, v33];

  if (v18 != v19)
  {
  }

  return v25;
}

- (NSMutableSet)updatingLastUsedServiceTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_updatingLastUsedServiceTypes;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)name
{
  home = [(DBHome *)self home];
  name = [home name];

  return name;
}

- (NSUUID)uniqueIdentifier
{
  home = [(DBHome *)self home];
  uniqueIdentifier = [home uniqueIdentifier];

  return uniqueIdentifier;
}

- (BOOL)hasGarageDoor
{
  v7[1] = *MEMORY[0x277D85DE8];
  home = [(DBHome *)self home];
  v7[0] = *MEMORY[0x277CD0E58];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [home servicesWithTypes:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)hasCachedGarageDoors
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_cachedGarageDoors count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)inAllowedPeriod
{
  accessControl = [(DBHome *)self accessControl];
  isRestrictedGuest = [accessControl isRestrictedGuest];

  if (!isRestrictedGuest)
  {
    return 1;
  }

  accessControl2 = [(DBHome *)self accessControl];
  restrictedGuestAccessSettings = [accessControl2 restrictedGuestAccessSettings];

  guestAccessSchedule = [restrictedGuestAccessSettings guestAccessSchedule];
  if (guestAccessSchedule)
  {
    accessControl3 = [(DBHome *)self accessControl];
    isRestrictedGuestInAllowedPeriod = [accessControl3 isRestrictedGuestInAllowedPeriod];
  }

  else
  {
    isRestrictedGuestInAllowedPeriod = 1;
  }

  return isRestrictedGuestInAllowedPeriod;
}

- (BOOL)inRange
{
  smartWidgetRelaxHomeInRangeCheck = [MEMORY[0x277CF89D0] smartWidgetRelaxHomeInRangeCheck];
  valueBool = [smartWidgetRelaxHomeInRangeCheck valueBool];

  inHomeRange = [(DBHome *)self inHomeRange];
  if (!valueBool || inHomeRange)
  {
    return (valueBool | inHomeRange) & 1;
  }

  return [(DBHome *)self inLocationRange];
}

- (BOOL)inHomeRange
{
  home = [(DBHome *)self home];
  if ([home homeLocationStatus] == 1)
  {
    v4 = 1;
  }

  else
  {
    home2 = [(DBHome *)self home];
    v4 = [home2 homeLocationStatus] == 3;
  }

  return v4;
}

- (double)distance
{
  location = [(DBHome *)self location];
  if (!location)
  {
    return *MEMORY[0x277CE41E0];
  }

  v4 = location;
  locationManager = [(DBHome *)self locationManager];
  currentLocation = [locationManager currentLocation];

  if (!currentLocation)
  {
    return *MEMORY[0x277CE41E0];
  }

  home = [(DBHome *)self home];
  location2 = [home location];
  locationManager2 = [(DBHome *)self locationManager];
  currentLocation2 = [locationManager2 currentLocation];
  [location2 distanceFromLocation:currentLocation2];
  v12 = v11;

  return v12;
}

- (CLLocation)location
{
  home = [(DBHome *)self home];
  location = [home location];

  return location;
}

- (BOOL)inLocationRange
{
  [(DBHome *)self distance];
  v3 = v2;
  [objc_opt_class() maxDistance];
  return v3 < v4;
}

- (DBHome)initWithHome:(id)home resourceProvider:(id)provider
{
  homeCopy = home;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = DBHome;
  v9 = [(DBHome *)&v25 init];
  if (v9)
  {
    v10 = objc_opt_new();
    updatingLastUsedServiceTypes = v9->_updatingLastUsedServiceTypes;
    v9->_updatingLastUsedServiceTypes = v10;

    v12 = objc_opt_new();
    lastUsedIdentifiersByServiceType = v9->_lastUsedIdentifiersByServiceType;
    v9->_lastUsedIdentifiersByServiceType = v12;

    objc_storeStrong(&v9->_home, home);
    [(HMHome *)v9->_home setDelegate:v9];
    locationManager = [providerCopy locationManager];
    locationManager = v9->_locationManager;
    v9->_locationManager = locationManager;

    v9->_lastLoggedDistance = -1.0;
    [(DBLocationManager *)v9->_locationManager addObserver:v9];
    networkPathMonitor = [providerCopy networkPathMonitor];
    networkPathMonitor = v9->_networkPathMonitor;
    v9->_networkPathMonitor = networkPathMonitor;

    [(DBNetworkPathMonitor *)v9->_networkPathMonitor addObserver:v9];
    v18 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AC0C58];
    observers = v9->_observers;
    v9->_observers = v18;

    v20 = v9->_locationManager;
    formattedUniqueIdentifier = [(DBHome *)v9 formattedUniqueIdentifier];
    location = [homeCopy location];
    [location coordinate];
    [DBLocationManager startMonitoringForRegionWithIdentifier:v20 locationCoordinate:"startMonitoringForRegionWithIdentifier:locationCoordinate:range:" range:formattedUniqueIdentifier];

    currentUser = [(HMHome *)v9->_home currentUser];
    [currentUser setDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  locationManager = self->_locationManager;
  formattedUniqueIdentifier = [(DBHome *)self formattedUniqueIdentifier];
  [(DBLocationManager *)locationManager stopMonitoringForRegionWithIdentifier:formattedUniqueIdentifier];

  v5.receiver = self;
  v5.super_class = DBHome;
  [(DBHome *)&v5 dealloc];
}

- (NSString)formattedUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uniqueIdentifier = [(DBHome *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %@>", v5, uniqueIdentifier];

  return v7;
}

- (BOOL)unsupportedLegacyHomeHubVersion
{
  accessControl = [(DBHome *)self accessControl];
  if ([accessControl isAccessAllowed])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    accessControl2 = [(DBHome *)self accessControl];
    v4 = ([accessControl2 accessNotAllowedReasonCode] >> 3) & 1;
  }

  return v4;
}

- (NSArray)garageDoors
{
  cachedGarageDoors = [(DBHome *)self cachedGarageDoors];
  allValues = [cachedGarageDoors allValues];

  return allValues;
}

- (NSDictionary)cachedGarageDoors
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = selfCopy;
  cachedGarageDoors = selfCopy->_cachedGarageDoors;
  p_cachedGarageDoors = &selfCopy->_cachedGarageDoors;
  v3 = cachedGarageDoors;
  if (!cachedGarageDoors)
  {
    location = p_cachedGarageDoors;
    v6 = objc_opt_new();
    lastUsedIdentifiersByServiceType = [(DBHome *)v23 lastUsedIdentifiersByServiceType];
    v21 = *MEMORY[0x277CD0E58];
    v8 = [lastUsedIdentifiersByServiceType objectForKeyedSubscript:?];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    home = [(DBHome *)v23 home];
    v28 = v21;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    obj = [home servicesWithTypes:v10];

    v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [(DBHomeKitService *)[DBGarageDoor alloc] initWithHome:v23 service:*(*(&v24 + 1) + 8 * i)];
          uniqueIdentifier = [(DBHomeKitService *)v14 uniqueIdentifier];
          [(DBHomeKitService *)v14 setLastWritten:[DBComparison isValue:v8 equalTo:uniqueIdentifier]];

          uniqueIdentifier2 = [(DBHomeKitService *)v14 uniqueIdentifier];
          [v6 setObject:v14 forKeyedSubscript:uniqueIdentifier2];
        }

        v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    objc_storeStrong(p_cachedGarageDoors, v6);
    v17 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [DBHome cachedGarageDoors];
    }

    [(DBHome *)v23 _updateLastUsedServiceOfType:v21];
    v3 = *p_cachedGarageDoors;
  }

  v18 = [v3 copy];
  objc_sync_exit(v23);

  return v18;
}

- (void)_updateCachedGarageDoors
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateLastUsedServiceOfType:(id)type
{
  typeCopy = type;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DBHome__updateLastUsedServiceOfType___block_invoke;
  block[3] = &unk_278F02070;
  objc_copyWeak(&v8, &location);
  v7 = typeCopy;
  v5 = typeCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __39__DBHome__updateLastUsedServiceOfType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __39__DBHome__updateLastUsedServiceOfType___block_invoke_cold_1();
  }

  v4 = [WeakRetained updatingLastUsedServiceTypes];
  v5 = [v4 containsObject:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v6 = [WeakRetained updatingLastUsedServiceTypes];
    [v6 addObject:*(a1 + 32)];

    objc_initWeak(&location, WeakRetained);
    v7 = [WeakRetained home];
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__DBHome__updateLastUsedServiceOfType___block_invoke_96;
    v9[3] = &unk_278F02E20;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 32);
    [v7 fetchLastModifiedServiceOfType:v8 completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __39__DBHome__updateLastUsedServiceOfType___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = [v5 uniqueIdentifier];
    v23 = [v22 UUIDString];
    v24 = 138544130;
    v25 = WeakRetained;
    v26 = 2114;
    v27 = v21;
    v28 = 2114;
    v29 = v23;
    v30 = 2114;
    v31 = v6;
    _os_log_debug_impl(&dword_248146000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ serviceType=%{public}@ service.uniqueIdentifier=%{public}@ error=%{public}@", &v24, 0x2Au);
  }

  v9 = [WeakRetained updatingLastUsedServiceTypes];
  [v9 removeObject:*(a1 + 32)];

  v10 = [WeakRetained lastUsedIdentifiersByServiceType];
  v11 = [v10 objectForKeyedSubscript:*(a1 + 32)];

  v12 = [v5 uniqueIdentifier];
  LOBYTE(v10) = [DBComparison isValue:v11 equalTo:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [WeakRetained cachedGarageDoors];
    v14 = [v13 objectForKeyedSubscript:v11];
    [v14 setLastWritten:0];

    v15 = [v5 uniqueIdentifier];
    v16 = [WeakRetained lastUsedIdentifiersByServiceType];
    [v16 setObject:v15 forKeyedSubscript:*(a1 + 32)];

    v17 = [WeakRetained cachedGarageDoors];
    v18 = [v5 uniqueIdentifier];
    v19 = [v17 objectForKeyedSubscript:v18];
    [v19 setLastWritten:1];

    v20 = [WeakRetained observers];
    [v20 home:WeakRetained didUpdateLastUsedServiceOfType:*(a1 + 32)];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBHome *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBHome *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)_updateInRangeIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if ([self previouslyInRange])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  home = [self home];
  v6 = 138543874;
  selfCopy = self;
  v8 = 2114;
  v9 = v4;
  v10 = 2050;
  homeLocationStatus = [home homeLocationStatus];
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ previouslyInRange=%{public}@ homeLocationStatus=%{public}ld", &v6, 0x20u);
}

- (HMHomeAccessControl)accessControl
{
  home = [(DBHome *)self home];
  home2 = [(DBHome *)self home];
  currentUser = [home2 currentUser];
  v6 = [home homeAccessControlForUser:currentUser];

  return v6;
}

void __21__DBHome_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v8 = [a3 UUIDString];
  v7 = [v5 stringWithFormat:@"(%@: %@)", v6, v8];

  [v4 addObject:v7];
}

- (void)_setValue:(id)value forCharacteristic:(id)characteristic completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CD19B0];
  completionCopy = completion;
  v10 = [v8 writeRequestWithCharacteristic:characteristic value:value];
  v11 = MEMORY[0x277CD1978];
  v15[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v11 characteristicBatchRequestWithWriteRequests:v12];

  [v13 setCompletionHandler:completionCopy];
  [v13 setProgressHandler:&__block_literal_global_12];
  home = [(DBHome *)self home];
  [home performBatchCharacteristicRequest:v13];
}

- (NSString)stateDescription
{
  v3 = MEMORY[0x277CCACA8];
  if ([(DBHome *)self inRange])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(DBHome *)self distance];
  v6 = v5;
  if ([(DBHome *)self inExtendedRange])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(DBHome *)self inLocationRange])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(DBHome *)self inHomeRange])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  return [v3 stringWithFormat:@"[inRange=%@ distance=%.2f inExtendedRange%@ inLocationRange=%@ inHomeRange=%@]", v4, v6, v7, v8, v9];
}

- (void)locationManager:(id)manager didEnterRegionIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  formattedUniqueIdentifier = [(DBHome *)self formattedUniqueIdentifier];
  v9 = [identifierCopy isEqual:formattedUniqueIdentifier];

  if (v9)
  {
    [(DBHome *)self setInExtendedRange:1];
    v10 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [DBHome locationManager:didEnterRegionIdentifier:];
    }

    [(DBHome *)self _updateCachedGarageDoors];
    formattedUniqueIdentifier2 = [(DBHome *)self formattedUniqueIdentifier];
    [managerCopy startUpdatingLocationWithIdentifier:formattedUniqueIdentifier2];

    observers = [(DBHome *)self observers];
    [observers homeDidEnterExtendedRange:self];
  }
}

- (void)locationManager:(id)manager didExitRegionIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  formattedUniqueIdentifier = [(DBHome *)self formattedUniqueIdentifier];
  v9 = [identifierCopy isEqual:formattedUniqueIdentifier];

  if (v9)
  {
    [(DBHome *)self setInExtendedRange:0];
    v10 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [DBHome locationManager:didExitRegionIdentifier:];
    }

    [(DBHome *)self _updateCachedGarageDoors];
    formattedUniqueIdentifier2 = [(DBHome *)self formattedUniqueIdentifier];
    [managerCopy stopUpdatingLocationWithIdentifier:formattedUniqueIdentifier2];

    observers = [(DBHome *)self observers];
    [observers homeDidExitExtendedRange:self];
  }
}

- (void)networkPathMonitor:(id)monitor didChangeNetworkReachable:(BOOL)reachable
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome networkPathMonitor:didChangeNetworkReachable:];
  }

  [(DBHome *)self _scheduleGarageDoorRefresh];
}

- (void)networkPathMonitorDidChangeNetworkPath:(id)path
{
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DBHome networkPathMonitorDidChangeNetworkPath:];
  }

  [(DBHome *)self _scheduleGarageDoorRefresh];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome home:didAddAccessory:];
  }

  [(DBHome *)self _updateCachedGarageDoors];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome home:didRemoveAccessory:];
  }

  [(DBHome *)self _updateCachedGarageDoors];
}

- (void)home:(id)home didUpdateLocation:(id)location
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome home:didUpdateLocation:];
  }

  [(DBHome *)self _updateInRangeIfNeeded];
}

- (void)home:(id)home didUpdateAccessControlForUser:(id)user
{
  homeCopy = home;
  uniqueIdentifier = [user uniqueIdentifier];
  currentUser = [homeCopy currentUser];

  uniqueIdentifier2 = [currentUser uniqueIdentifier];
  v10 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v10)
  {
    v11 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DBHome home:didUpdateAccessControlForUser:];
    }

    [(DBHome *)self _updateCachedGarageDoors];
    observers = [(DBHome *)self observers];
    [observers homeDidUpdateAccess:self];
  }
}

- (void)homeDidUpdateHomeLocationStatus:(id)status
{
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DBHome homeDidUpdateHomeLocationStatus:];
  }

  [(DBHome *)self _updateInRangeIfNeeded];
}

- (void)restrictedGuestAllowedPeriodStarted:(id)started
{
  uniqueIdentifier = [started uniqueIdentifier];
  home = [(DBHome *)self home];
  currentUser = [home currentUser];
  uniqueIdentifier2 = [currentUser uniqueIdentifier];
  v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v8)
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBHome restrictedGuestAllowedPeriodStarted:];
    }

    observers = [(DBHome *)self observers];
    [observers homeDidUpdateAccess:self];
  }
}

- (void)restrictedGuestAllowedPeriodEnded:(id)ended
{
  uniqueIdentifier = [ended uniqueIdentifier];
  home = [(DBHome *)self home];
  currentUser = [home currentUser];
  uniqueIdentifier2 = [currentUser uniqueIdentifier];
  v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v8)
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBHome restrictedGuestAllowedPeriodEnded:];
    }

    observers = [(DBHome *)self observers];
    [observers homeDidUpdateAccess:self];
  }
}

@end