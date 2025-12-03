@interface DNDSUntilExitLocationLifetimeMonitor
- (BOOL)_saveDataToBackingStoreWithError:(id *)error;
- (DNDSAggregateLocationLifetimeMonitor)aggregateMonitor;
- (DNDSLifetimeMonitorDataSource)dataSource;
- (DNDSLifetimeMonitorDelegate)delegate;
- (DNDSUntilExitLocationLifetimeMonitor)initWithAggregateMonitor:(id)monitor;
- (void)_loadDataFromBackingStore;
- (void)_queue_beginMonitoringCurrentLocation;
- (void)_queue_geofenceLocation:(id)location;
- (void)_queue_geofenceRegion:(id)region;
- (void)_queue_refreshMonitor;
- (void)_queue_sendExpiryEventForAllLocationAssertions;
- (void)_queue_stopMonitoringCurrentLocation;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
@end

@implementation DNDSUntilExitLocationLifetimeMonitor

- (DNDSUntilExitLocationLifetimeMonitor)initWithAggregateMonitor:(id)monitor
{
  monitorCopy = monitor;
  v14.receiver = self;
  v14.super_class = DNDSUntilExitLocationLifetimeMonitor;
  v5 = [(DNDSUntilExitLocationLifetimeMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_aggregateMonitor, monitorCopy);
    activeLifetimeAssertionUUIDs = v6->_activeLifetimeAssertionUUIDs;
    v6->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];

    v8 = [DNDSJSONBackingStore alloc];
    v9 = objc_opt_class();
    dnds_locationAssertionUntilExitRegionFileURL = [MEMORY[0x277CBEBC0] dnds_locationAssertionUntilExitRegionFileURL];
    v11 = [(DNDSJSONBackingStore *)v8 initWithRecordClass:v9 fileURL:dnds_locationAssertionUntilExitRegionFileURL versionNumber:0];
    backingStore = v6->_backingStore;
    v6->_backingStore = v11;

    [(DNDSUntilExitLocationLifetimeMonitor *)v6 _loadDataFromBackingStore];
  }

  return v6;
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  if ([(CLRegion *)self->_currentRegion isEqual:regionCopy])
  {
    v11 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = managerCopy;
      v15 = 2112;
      v16 = regionCopy;
      v17 = 2114;
      v18 = errorCopy;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring failed for region, will stop monitor and invalidate all assertions; manager=%p, region=%@, error=%{public}@", &v13, 0x20u);
    }

    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v30 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  identifier = [(CLRegion *)self->_currentRegion identifier];
  identifier2 = [regionCopy identifier];
  v12 = [identifier isEqualToString:identifier2];

  if (v12)
  {
    v13 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = DNDStringFromRegionState(state);
      v24 = 134218498;
      v25 = managerCopy;
      v26 = 2114;
      v27 = v15;
      v28 = 2112;
      v29 = regionCopy;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Until I leave location region state was determined; manager=%p, state=%{public}@, region=%@", &v24, 0x20u);
    }

    if (state == 2)
    {
      regionEntered = self->_regionEntered;
      v18 = DNDSLogLocationLifetimeMonitor;
      v19 = os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT);
      if (regionEntered)
      {
        if (v19)
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Confirmed until I leave region exit, will invalidate all assertions", &v24, 2u);
        }

        [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];
      }

      else
      {
        if (v19)
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Received unexpected until I leave region exit, will start region monitoring again", &v24, 2u);
        }

        [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
        [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_beginMonitoringCurrentLocation];
      }
    }

    else if (state == 1)
    {
      if (!self->_regionEntered)
      {
        v16 = DNDSLogLocationLifetimeMonitor;
        if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Confirmed until I leave region entry", &v24, 2u);
        }

        self->_regionEntered = 1;
        [(DNDSUntilExitLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
      }
    }

    else
    {
      v20 = DNDSLogLocationLifetimeMonitor;
      if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = DNDStringFromRegionState(state);
        v24 = 138543362;
        v25 = v22;
        _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Did not handle until I leave region state %{public}@", &v24, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = managerCopy;
    v13 = 2112;
    v14 = locationsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring found location, will update geofence; manager=%p, locations=%@", &v11, 0x16u);
  }

  lastObject = [locationsCopy lastObject];
  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_geofenceLocation:lastObject];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v8 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = managerCopy;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring failed, will stop monitor and invalidate all assertions; manager=%p, error=%{public}@", &v10, 0x16u);
  }

  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_refreshMonitor
{
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v5 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Refreshing until I leave monitor", v11, 2u);
  }

  dataSource = [aggregateMonitor dataSource];
  v7 = [dataSource lifetimeMonitor:aggregateMonitor modeAssertionsWithLifetimeClass:objc_opt_class()];

  v8 = [v7 bs_mapNoNulls:&__block_literal_global_5];
  if (![(NSArray *)self->_activeLifetimeAssertionUUIDs isEqualToArray:v8])
  {
    v9 = [v8 copy];
    activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
    self->_activeLifetimeAssertionUUIDs = v9;
  }

  if ([(NSArray *)self->_activeLifetimeAssertionUUIDs count]&& !self->_hasActiveLifetimes)
  {
    self->_hasActiveLifetimes = 1;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_beginMonitoringCurrentLocation];
  }

  else if (![(NSArray *)self->_activeLifetimeAssertionUUIDs count]&& self->_hasActiveLifetimes)
  {
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
    self->_hasActiveLifetimes = 0;
  }
}

- (void)_queue_beginMonitoringCurrentLocation
{
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v4 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Requesting current location to begin monitoring until I leave", v6, 2u);
  }

  locationManager = [aggregateMonitor locationManager];
  [locationManager requestLocation];
}

- (void)_queue_stopMonitoringCurrentLocation
{
  v12 = *MEMORY[0x277D85DE8];
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  if (self->_currentRegion)
  {
    v5 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      currentRegion = self->_currentRegion;
      v10 = 138412290;
      v11 = currentRegion;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring stopping for geofence; region=%@", &v10, 0xCu);
    }

    locationManager = [aggregateMonitor locationManager];
    [locationManager stopMonitoringForRegion:self->_currentRegion];

    v8 = self->_currentRegion;
    self->_currentRegion = 0;

    self->_regionEntered = 0;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_geofenceLocation:(id)location
{
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_aggregateMonitor);
  queue = [WeakRetained queue];
  dispatch_assert_queue_V2(queue);

  if (self->_hasActiveLifetimes)
  {
    v6 = objc_alloc(MEMORY[0x277CBFBC8]);
    [locationCopy coordinate];
    v7 = [v6 initWithCenter:@"com.apple.donotdisturb.server.until-i-leave" radius:? identifier:?];
    currentRegion = self->_currentRegion;
    self->_currentRegion = v7;

    [(CLRegion *)self->_currentRegion setNotifyOnExit:1];
    [(CLRegion *)self->_currentRegion setNotifyOnEntry:0];
    self->_regionEntered = 0;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_geofenceRegion:self->_currentRegion];
  }
}

- (void)_queue_geofenceRegion:(id)region
{
  v12 = *MEMORY[0x277D85DE8];
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  if (self->_hasActiveLifetimes)
  {
    locationManager = [aggregateMonitor locationManager];
    [locationManager startMonitoringForRegion:self->_currentRegion];

    [(DNDSUntilExitLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
    v7 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      currentRegion = self->_currentRegion;
      v10 = 138412290;
      v11 = currentRegion;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring started for geofence; region=%@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendExpiryEventForAllLocationAssertions
{
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  if ([(NSArray *)self->_activeLifetimeAssertionUUIDs count])
  {
    activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
    self->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];
    v5 = activeLifetimeAssertionUUIDs;

    delegate = [aggregateMonitor delegate];
    date = [MEMORY[0x277CBEAA8] date];
    [delegate lifetimeMonitor:aggregateMonitor lifetimeDidExpireForAssertionUUIDs:v5 expirationDate:date];
  }
}

- (void)_loadDataFromBackingStore
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to load current until I leave region database, will request a radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __65__DNDSUntilExitLocationLifetimeMonitor__loadDataFromBackingStore__block_invoke(uint64_t a1)
{
  v2 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Found existing until I leave region to begin monitoring", v4, 2u);
  }

  return [*(a1 + 32) _queue_geofenceRegion:*(*(a1 + 32) + 8)];
}

- (BOOL)_saveDataToBackingStoreWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(DNDSUntilExitRegionStore *)self->_store mutableCopy];
  [v5 setActiveLifetimeAssertionUUIDs:self->_activeLifetimeAssertionUUIDs];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasActiveLifetimes];
  [v5 setHasActiveLifetimes:v6];

  [v5 setCurrentRegion:self->_currentRegion];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_regionEntered];
  [v5 setRegionEntered:v7];

  backingStore = self->_backingStore;
  v19 = 0;
  v9 = [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v19];
  v10 = v19;
  if (v9)
  {
    if (v9 == 1)
    {
      v15 = DNDSLogLocationLifetimeMonitor;
      if (!os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 138543362;
      v21 = v10;
      v12 = "Failed to write until I leave store, but error can be ignored; error=%{public}@";
      v13 = v15;
      v14 = 12;
    }

    else
    {
      if (v9 != 2 || (v11 = DNDSLogLocationLifetimeMonitor, !os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_9:
        if (!error)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      *buf = 0;
      v12 = "Wrote out until I leave store to file";
      v13 = v11;
      v14 = 2;
    }

    _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    goto LABEL_9;
  }

  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_ERROR))
  {
    [DNDSUntilExitLocationLifetimeMonitor _saveDataToBackingStoreWithError:];
  }

  _DNDSRequestRadar(@"Failed to write store", v10, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLocationLifetimeMonitor.m", 1011);
  if (error)
  {
LABEL_10:
    if (v10)
    {
      v16 = v10;
      *error = v10;
    }
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v9 == 2;
}

- (DNDSAggregateLocationLifetimeMonitor)aggregateMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_aggregateMonitor);

  return WeakRetained;
}

- (DNDSLifetimeMonitorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSLifetimeMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_saveDataToBackingStoreWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to write until I leave store, will request radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end