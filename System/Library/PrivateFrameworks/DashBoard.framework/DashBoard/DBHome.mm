@interface DBHome
- (BOOL)hasCachedGarageDoors;
- (BOOL)hasGarageDoor;
- (BOOL)inAllowedPeriod;
- (BOOL)inHomeRange;
- (BOOL)inLocationRange;
- (BOOL)inRange;
- (BOOL)unsupportedLegacyHomeHubVersion;
- (CLLocation)location;
- (DBHome)initWithHome:(id)a3 resourceProvider:(id)a4;
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
- (void)_setValue:(id)a3 forCharacteristic:(id)a4 completion:(id)a5;
- (void)_updateCachedGarageDoors;
- (void)_updateInRangeIfNeeded;
- (void)_updateLastUsedServiceOfType:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4;
- (void)home:(id)a3 didUpdateLocation:(id)a4;
- (void)homeDidUpdateHomeLocationStatus:(id)a3;
- (void)locationManager:(id)a3 didEnterRegionIdentifier:(id)a4;
- (void)locationManager:(id)a3 didExitRegionIdentifier:(id)a4;
- (void)networkPathMonitor:(id)a3 didChangeNetworkReachable:(BOOL)a4;
- (void)networkPathMonitorDidChangeNetworkPath:(id)a3;
- (void)refreshGarageDoors;
- (void)removeObserver:(id)a3;
- (void)restrictedGuestAllowedPeriodEnded:(id)a3;
- (void)restrictedGuestAllowedPeriodStarted:(id)a3;
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
  v4 = [(DBHome *)self updatingLastUsedServiceTypes];
  v5 = [v4 allObjects];
  v33 = [v5 componentsJoinedByString:{@", "}];

  v6 = [(DBHome *)self lastUsedIdentifiersByServiceType];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __21__DBHome_description__block_invoke;
  v34[3] = &unk_278F02E48;
  v7 = v3;
  v35 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v34];

  v30 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v32 = NSStringFromClass(v8);
  v31 = [(DBHome *)self name];
  v9 = [(DBHome *)self uniqueIdentifier];
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
  v25 = [v30 stringWithFormat:@"<%@: %p %@ uniqueIdentifier=%@ hasGarageDoor=%@ hasCachedGarageDoors=%@ inAllowedPeriod=%@ unsupportedLegacyHomeHubVersion=%@ inExtendedRange=%@ inRange=%@ distance=%@ inLocationRange=%@ inHomeRange=%@ lastUsed=[%@] updatingLastUsed=[%@]>", v32, self, v31, v9, v29, v28, v27, v14, v15, v16, v22, v23, v10, v24, v33];

  if (v18 != v19)
  {
  }

  return v25;
}

- (NSMutableSet)updatingLastUsedServiceTypes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_updatingLastUsedServiceTypes;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)name
{
  v2 = [(DBHome *)self home];
  v3 = [v2 name];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(DBHome *)self home];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (BOOL)hasGarageDoor
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(DBHome *)self home];
  v7[0] = *MEMORY[0x277CD0E58];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 servicesWithTypes:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)hasCachedGarageDoors
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_cachedGarageDoors count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)inAllowedPeriod
{
  v3 = [(DBHome *)self accessControl];
  v4 = [v3 isRestrictedGuest];

  if (!v4)
  {
    return 1;
  }

  v5 = [(DBHome *)self accessControl];
  v6 = [v5 restrictedGuestAccessSettings];

  v7 = [v6 guestAccessSchedule];
  if (v7)
  {
    v8 = [(DBHome *)self accessControl];
    v9 = [v8 isRestrictedGuestInAllowedPeriod];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)inRange
{
  v3 = [MEMORY[0x277CF89D0] smartWidgetRelaxHomeInRangeCheck];
  v4 = [v3 valueBool];

  v5 = [(DBHome *)self inHomeRange];
  if (!v4 || v5)
  {
    return (v4 | v5) & 1;
  }

  return [(DBHome *)self inLocationRange];
}

- (BOOL)inHomeRange
{
  v3 = [(DBHome *)self home];
  if ([v3 homeLocationStatus] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DBHome *)self home];
    v4 = [v5 homeLocationStatus] == 3;
  }

  return v4;
}

- (double)distance
{
  v3 = [(DBHome *)self location];
  if (!v3)
  {
    return *MEMORY[0x277CE41E0];
  }

  v4 = v3;
  v5 = [(DBHome *)self locationManager];
  v6 = [v5 currentLocation];

  if (!v6)
  {
    return *MEMORY[0x277CE41E0];
  }

  v7 = [(DBHome *)self home];
  v8 = [v7 location];
  v9 = [(DBHome *)self locationManager];
  v10 = [v9 currentLocation];
  [v8 distanceFromLocation:v10];
  v12 = v11;

  return v12;
}

- (CLLocation)location
{
  v2 = [(DBHome *)self home];
  v3 = [v2 location];

  return v3;
}

- (BOOL)inLocationRange
{
  [(DBHome *)self distance];
  v3 = v2;
  [objc_opt_class() maxDistance];
  return v3 < v4;
}

- (DBHome)initWithHome:(id)a3 resourceProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_home, a3);
    [(HMHome *)v9->_home setDelegate:v9];
    v14 = [v8 locationManager];
    locationManager = v9->_locationManager;
    v9->_locationManager = v14;

    v9->_lastLoggedDistance = -1.0;
    [(DBLocationManager *)v9->_locationManager addObserver:v9];
    v16 = [v8 networkPathMonitor];
    networkPathMonitor = v9->_networkPathMonitor;
    v9->_networkPathMonitor = v16;

    [(DBNetworkPathMonitor *)v9->_networkPathMonitor addObserver:v9];
    v18 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AC0C58];
    observers = v9->_observers;
    v9->_observers = v18;

    v20 = v9->_locationManager;
    v21 = [(DBHome *)v9 formattedUniqueIdentifier];
    v22 = [v7 location];
    [v22 coordinate];
    [DBLocationManager startMonitoringForRegionWithIdentifier:v20 locationCoordinate:"startMonitoringForRegionWithIdentifier:locationCoordinate:range:" range:v21];

    v23 = [(HMHome *)v9->_home currentUser];
    [v23 setDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  locationManager = self->_locationManager;
  v4 = [(DBHome *)self formattedUniqueIdentifier];
  [(DBLocationManager *)locationManager stopMonitoringForRegionWithIdentifier:v4];

  v5.receiver = self;
  v5.super_class = DBHome;
  [(DBHome *)&v5 dealloc];
}

- (NSString)formattedUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DBHome *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %@>", v5, v6];

  return v7;
}

- (BOOL)unsupportedLegacyHomeHubVersion
{
  v3 = [(DBHome *)self accessControl];
  if ([v3 isAccessAllowed])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(DBHome *)self accessControl];
    v4 = ([v5 accessNotAllowedReasonCode] >> 3) & 1;
  }

  return v4;
}

- (NSArray)garageDoors
{
  v2 = [(DBHome *)self cachedGarageDoors];
  v3 = [v2 allValues];

  return v3;
}

- (NSDictionary)cachedGarageDoors
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v23 = v2;
  cachedGarageDoors = v2->_cachedGarageDoors;
  p_cachedGarageDoors = &v2->_cachedGarageDoors;
  v3 = cachedGarageDoors;
  if (!cachedGarageDoors)
  {
    location = p_cachedGarageDoors;
    v6 = objc_opt_new();
    v7 = [(DBHome *)v23 lastUsedIdentifiersByServiceType];
    v21 = *MEMORY[0x277CD0E58];
    v8 = [v7 objectForKeyedSubscript:?];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [(DBHome *)v23 home];
    v28 = v21;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    obj = [v9 servicesWithTypes:v10];

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
          v15 = [(DBHomeKitService *)v14 uniqueIdentifier];
          [(DBHomeKitService *)v14 setLastWritten:[DBComparison isValue:v8 equalTo:v15]];

          v16 = [(DBHomeKitService *)v14 uniqueIdentifier];
          [v6 setObject:v14 forKeyedSubscript:v16];
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

- (void)_updateLastUsedServiceOfType:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DBHome__updateLastUsedServiceOfType___block_invoke;
  block[3] = &unk_278F02070;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHome *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHome *)self observers];
  [v5 removeObserver:v4];
}

- (void)_updateInRangeIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if ([a1 previouslyInRange])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [a1 home];
  v6 = 138543874;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  v10 = 2050;
  v11 = [v5 homeLocationStatus];
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ previouslyInRange=%{public}@ homeLocationStatus=%{public}ld", &v6, 0x20u);
}

- (HMHomeAccessControl)accessControl
{
  v3 = [(DBHome *)self home];
  v4 = [(DBHome *)self home];
  v5 = [v4 currentUser];
  v6 = [v3 homeAccessControlForUser:v5];

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

- (void)_setValue:(id)a3 forCharacteristic:(id)a4 completion:(id)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CD19B0];
  v9 = a5;
  v10 = [v8 writeRequestWithCharacteristic:a4 value:a3];
  v11 = MEMORY[0x277CD1978];
  v15[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v11 characteristicBatchRequestWithWriteRequests:v12];

  [v13 setCompletionHandler:v9];
  [v13 setProgressHandler:&__block_literal_global_12];
  v14 = [(DBHome *)self home];
  [v14 performBatchCharacteristicRequest:v13];
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

- (void)locationManager:(id)a3 didEnterRegionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DBHome *)self formattedUniqueIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    [(DBHome *)self setInExtendedRange:1];
    v10 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [DBHome locationManager:didEnterRegionIdentifier:];
    }

    [(DBHome *)self _updateCachedGarageDoors];
    v11 = [(DBHome *)self formattedUniqueIdentifier];
    [v6 startUpdatingLocationWithIdentifier:v11];

    v12 = [(DBHome *)self observers];
    [v12 homeDidEnterExtendedRange:self];
  }
}

- (void)locationManager:(id)a3 didExitRegionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DBHome *)self formattedUniqueIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    [(DBHome *)self setInExtendedRange:0];
    v10 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [DBHome locationManager:didExitRegionIdentifier:];
    }

    [(DBHome *)self _updateCachedGarageDoors];
    v11 = [(DBHome *)self formattedUniqueIdentifier];
    [v6 stopUpdatingLocationWithIdentifier:v11];

    v12 = [(DBHome *)self observers];
    [v12 homeDidExitExtendedRange:self];
  }
}

- (void)networkPathMonitor:(id)a3 didChangeNetworkReachable:(BOOL)a4
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome networkPathMonitor:didChangeNetworkReachable:];
  }

  [(DBHome *)self _scheduleGarageDoorRefresh];
}

- (void)networkPathMonitorDidChangeNetworkPath:(id)a3
{
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DBHome networkPathMonitorDidChangeNetworkPath:];
  }

  [(DBHome *)self _scheduleGarageDoorRefresh];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome home:didAddAccessory:];
  }

  [(DBHome *)self _updateCachedGarageDoors];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome home:didRemoveAccessory:];
  }

  [(DBHome *)self _updateCachedGarageDoors];
}

- (void)home:(id)a3 didUpdateLocation:(id)a4
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBHome home:didUpdateLocation:];
  }

  [(DBHome *)self _updateInRangeIfNeeded];
}

- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4
{
  v6 = a3;
  v7 = [a4 uniqueIdentifier];
  v8 = [v6 currentUser];

  v9 = [v8 uniqueIdentifier];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DBHome home:didUpdateAccessControlForUser:];
    }

    [(DBHome *)self _updateCachedGarageDoors];
    v12 = [(DBHome *)self observers];
    [v12 homeDidUpdateAccess:self];
  }
}

- (void)homeDidUpdateHomeLocationStatus:(id)a3
{
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DBHome homeDidUpdateHomeLocationStatus:];
  }

  [(DBHome *)self _updateInRangeIfNeeded];
}

- (void)restrictedGuestAllowedPeriodStarted:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(DBHome *)self home];
  v6 = [v5 currentUser];
  v7 = [v6 uniqueIdentifier];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBHome restrictedGuestAllowedPeriodStarted:];
    }

    v10 = [(DBHome *)self observers];
    [v10 homeDidUpdateAccess:self];
  }
}

- (void)restrictedGuestAllowedPeriodEnded:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(DBHome *)self home];
  v6 = [v5 currentUser];
  v7 = [v6 uniqueIdentifier];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBHome restrictedGuestAllowedPeriodEnded:];
    }

    v10 = [(DBHome *)self observers];
    [v10 homeDidUpdateAccess:self];
  }
}

@end