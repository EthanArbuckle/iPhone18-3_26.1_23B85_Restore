@interface DNDSUntilExitLocationLifetimeMonitor
- (BOOL)_saveDataToBackingStoreWithError:(id *)a3;
- (DNDSAggregateLocationLifetimeMonitor)aggregateMonitor;
- (DNDSLifetimeMonitorDataSource)dataSource;
- (DNDSLifetimeMonitorDelegate)delegate;
- (DNDSUntilExitLocationLifetimeMonitor)initWithAggregateMonitor:(id)a3;
- (void)_loadDataFromBackingStore;
- (void)_queue_beginMonitoringCurrentLocation;
- (void)_queue_geofenceLocation:(id)a3;
- (void)_queue_geofenceRegion:(id)a3;
- (void)_queue_refreshMonitor;
- (void)_queue_sendExpiryEventForAllLocationAssertions;
- (void)_queue_stopMonitoringCurrentLocation;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
@end

@implementation DNDSUntilExitLocationLifetimeMonitor

- (DNDSUntilExitLocationLifetimeMonitor)initWithAggregateMonitor:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DNDSUntilExitLocationLifetimeMonitor;
  v5 = [(DNDSUntilExitLocationLifetimeMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_aggregateMonitor, v4);
    activeLifetimeAssertionUUIDs = v6->_activeLifetimeAssertionUUIDs;
    v6->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];

    v8 = [DNDSJSONBackingStore alloc];
    v9 = objc_opt_class();
    v10 = [MEMORY[0x277CBEBC0] dnds_locationAssertionUntilExitRegionFileURL];
    v11 = [(DNDSJSONBackingStore *)v8 initWithRecordClass:v9 fileURL:v10 versionNumber:0];
    backingStore = v6->_backingStore;
    v6->_backingStore = v11;

    [(DNDSUntilExitLocationLifetimeMonitor *)v6 _loadDataFromBackingStore];
  }

  return v6;
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CLRegion *)self->_currentRegion isEqual:v9])
  {
    v11 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring failed for region, will stop monitor and invalidate all assertions; manager=%p, region=%@, error=%{public}@", &v13, 0x20u);
    }

    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(CLRegion *)self->_currentRegion identifier];
  v11 = [v9 identifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = DNDStringFromRegionState(a4);
      v24 = 134218498;
      v25 = v8;
      v26 = 2114;
      v27 = v15;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Until I leave location region state was determined; manager=%p, state=%{public}@, region=%@", &v24, 0x20u);
    }

    if (a4 == 2)
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

    else if (a4 == 1)
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
        v22 = DNDStringFromRegionState(a4);
        v24 = 138543362;
        v25 = v22;
        _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Did not handle until I leave region state %{public}@", &v24, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring found location, will update geofence; manager=%p, locations=%@", &v11, 0x16u);
  }

  v9 = [v7 lastObject];
  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_geofenceLocation:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring failed, will stop monitor and invalidate all assertions; manager=%p, error=%{public}@", &v10, 0x16u);
  }

  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_refreshMonitor
{
  v3 = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Refreshing until I leave monitor", v11, 2u);
  }

  v6 = [v3 dataSource];
  v7 = [v6 lifetimeMonitor:v3 modeAssertionsWithLifetimeClass:objc_opt_class()];

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
  v2 = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  v3 = [v2 queue];
  dispatch_assert_queue_V2(v3);

  v4 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Requesting current location to begin monitoring until I leave", v6, 2u);
  }

  v5 = [v2 locationManager];
  [v5 requestLocation];
}

- (void)_queue_stopMonitoringCurrentLocation
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

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

    v7 = [v3 locationManager];
    [v7 stopMonitoringForRegion:self->_currentRegion];

    v8 = self->_currentRegion;
    self->_currentRegion = 0;

    self->_regionEntered = 0;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_geofenceLocation:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_aggregateMonitor);
  v5 = [WeakRetained queue];
  dispatch_assert_queue_V2(v5);

  if (self->_hasActiveLifetimes)
  {
    v6 = objc_alloc(MEMORY[0x277CBFBC8]);
    [v9 coordinate];
    v7 = [v6 initWithCenter:@"com.apple.donotdisturb.server.until-i-leave" radius:? identifier:?];
    currentRegion = self->_currentRegion;
    self->_currentRegion = v7;

    [(CLRegion *)self->_currentRegion setNotifyOnExit:1];
    [(CLRegion *)self->_currentRegion setNotifyOnEntry:0];
    self->_regionEntered = 0;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_geofenceRegion:self->_currentRegion];
  }
}

- (void)_queue_geofenceRegion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  if (self->_hasActiveLifetimes)
  {
    v6 = [v4 locationManager];
    [v6 startMonitoringForRegion:self->_currentRegion];

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
  v8 = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  v3 = [v8 queue];
  dispatch_assert_queue_V2(v3);

  if ([(NSArray *)self->_activeLifetimeAssertionUUIDs count])
  {
    activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
    self->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];
    v5 = activeLifetimeAssertionUUIDs;

    v6 = [v8 delegate];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v6 lifetimeMonitor:v8 lifetimeDidExpireForAssertionUUIDs:v5 expirationDate:v7];
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

- (BOOL)_saveDataToBackingStoreWithError:(id *)a3
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
        if (!a3)
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
  if (a3)
  {
LABEL_10:
    if (v10)
    {
      v16 = v10;
      *a3 = v10;
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