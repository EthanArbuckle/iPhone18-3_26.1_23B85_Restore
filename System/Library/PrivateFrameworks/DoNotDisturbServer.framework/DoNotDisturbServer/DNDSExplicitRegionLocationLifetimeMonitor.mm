@interface DNDSExplicitRegionLocationLifetimeMonitor
- (BOOL)_saveDataToBackingStoreWithError:(id *)error;
- (DNDSAggregateLocationLifetimeMonitor)aggregateMonitor;
- (DNDSExplicitRegionLocationLifetimeMonitor)initWithAggregateMonitor:(id)monitor;
- (DNDSLifetimeMonitorDataSource)dataSource;
- (DNDSLifetimeMonitorDelegate)delegate;
- (id)_queue_locationMonitorClientIdentifierForModeIdentifier:(id)identifier region:(id)region;
- (void)_loadDataFromBackingStore;
- (void)_queue_invalidateAssertionOnExitFromRegion:(id)region;
- (void)_queue_refreshMonitor;
- (void)_queue_resolveEnteredRegionIdentifiersWithAssertionRegionIdentifiers:(id)identifiers;
- (void)_queue_startMonitoringForRegion:(id)region;
- (void)_queue_stopMonitoringForRegion:(id)region;
- (void)_queue_takeAssertionOnEntryIntoRegion:(id)region;
- (void)_updateWithCachedStateForRegions:(id)regions;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
@end

@implementation DNDSExplicitRegionLocationLifetimeMonitor

- (DNDSExplicitRegionLocationLifetimeMonitor)initWithAggregateMonitor:(id)monitor
{
  monitorCopy = monitor;
  v20.receiver = self;
  v20.super_class = DNDSExplicitRegionLocationLifetimeMonitor;
  v5 = [(DNDSExplicitRegionLocationLifetimeMonitor *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_aggregateMonitor, monitorCopy);
    activeLifetimeAssertionUUIDs = v6->_activeLifetimeAssertionUUIDs;
    v6->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];

    v8 = +[DNDSLocationTriggerConfiguration emptyConfiguration];
    currentConfiguration = v6->_currentConfiguration;
    v6->_currentConfiguration = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    enteredRegionIdentifiers = v6->_enteredRegionIdentifiers;
    v6->_enteredRegionIdentifiers = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    enteredRegionIdentifiersPendingExit = v6->_enteredRegionIdentifiersPendingExit;
    v6->_enteredRegionIdentifiersPendingExit = v12;

    v14 = [DNDSJSONBackingStore alloc];
    v15 = objc_opt_class();
    dnds_locationAssertionExplicitRegionFileURL = [MEMORY[0x277CBEBC0] dnds_locationAssertionExplicitRegionFileURL];
    v17 = [(DNDSJSONBackingStore *)v14 initWithRecordClass:v15 fileURL:dnds_locationAssertionExplicitRegionFileURL versionNumber:0];
    backingStore = v6->_backingStore;
    v6->_backingStore = v17;

    [(DNDSExplicitRegionLocationLifetimeMonitor *)v6 _loadDataFromBackingStore];
  }

  return v6;
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  v11 = objc_opt_class();
  v12 = regionCopy;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    regionIdentifiers = [(DNDSLocationTriggerConfiguration *)self->_currentConfiguration regionIdentifiers];
    identifier = [v14 identifier];
    v17 = [regionIdentifiers containsObject:identifier];

    if (v17)
    {
      v18 = DNDSLogLocationLifetimeMonitor;
      if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218498;
        v21 = managerCopy;
        v22 = 2112;
        v23 = v12;
        v24 = 2114;
        v25 = errorCopy;
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Explicit region monitoring failed for region; manager=%p, region=%@, error=%{public}@", &v20, 0x20u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v54 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v10 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = DNDStringFromRegionState(state);
    v48 = 134218498;
    v49 = managerCopy;
    v50 = 2114;
    v51 = v12;
    v52 = 2112;
    v53 = regionCopy;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Explicit region region state was determined; manager=%p, state=%{public}@, region=%@", &v48, 0x20u);
  }

  v13 = objc_opt_class();
  v14 = regionCopy;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    regionIdentifiers = [(DNDSLocationTriggerConfiguration *)self->_currentConfiguration regionIdentifiers];
    identifier = [v16 identifier];
    v19 = [regionIdentifiers containsObject:identifier];

    if (v19)
    {
      if (state == 2)
      {
        enteredRegionIdentifiers = self->_enteredRegionIdentifiers;
        identifier2 = [v16 identifier];
        LODWORD(enteredRegionIdentifiers) = [(NSMutableSet *)enteredRegionIdentifiers containsObject:identifier2];

        if (enteredRegionIdentifiers)
        {
          enteredRegionIdentifiersPendingExit = self->_enteredRegionIdentifiersPendingExit;
          identifier3 = [v16 identifier];
          v30 = [(NSMutableSet *)enteredRegionIdentifiersPendingExit containsObject:identifier3];

          v31 = DNDSLogLocationLifetimeMonitor;
          v32 = os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT);
          if (v30)
          {
            if (v32)
            {
              v48 = 138412290;
              v49 = v14;
              _os_log_impl(&dword_24912E000, v31, OS_LOG_TYPE_DEFAULT, "Confirmed explicit region exit for a region pending exit following early invalidation of the assertion associated with prior entry, will note exit; region=%@", &v48, 0xCu);
            }

            v33 = self->_enteredRegionIdentifiers;
            identifier4 = [v16 identifier];
            [(NSMutableSet *)v33 removeObject:identifier4];

            v35 = self->_enteredRegionIdentifiersPendingExit;
            identifier5 = [v16 identifier];
            [(NSMutableSet *)v35 removeObject:identifier5];

            [(DNDSExplicitRegionLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
          }

          else
          {
            if (v32)
            {
              v48 = 138412290;
              v49 = v14;
              _os_log_impl(&dword_24912E000, v31, OS_LOG_TYPE_DEFAULT, "Confirmed explicit region exit, will invalidate all assertions; region=%@", &v48, 0xCu);
            }

            v45 = self->_enteredRegionIdentifiers;
            identifier6 = [v16 identifier];
            [(NSMutableSet *)v45 removeObject:identifier6];

            [(DNDSExplicitRegionLocationLifetimeMonitor *)self _queue_invalidateAssertionOnExitFromRegion:v16];
          }
        }

        else
        {
          v24 = DNDSLogLocationLifetimeMonitor;
          if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
          {
            v48 = 138412290;
            v49 = v14;
            v25 = "Received unexpected explicit region exit, region=%@";
            goto LABEL_28;
          }
        }
      }

      else if (state == 1)
      {
        v20 = self->_enteredRegionIdentifiers;
        identifier7 = [v16 identifier];
        LOBYTE(v20) = [(NSMutableSet *)v20 containsObject:identifier7];

        if (v20)
        {
          v22 = self->_enteredRegionIdentifiersPendingExit;
          identifier8 = [v16 identifier];
          LODWORD(v22) = [(NSMutableSet *)v22 containsObject:identifier8];

          if (v22)
          {
            v24 = DNDSLogLocationLifetimeMonitor;
            if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              v48 = 138412290;
              v49 = v14;
              v25 = "Confirmed explicit region entry, not taking assertion until explicit exit following early invalidation of the assertion associated with prior entry; region=%@";
LABEL_28:
              _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, v25, &v48, 0xCu);
            }
          }
        }

        else
        {
          v40 = DNDSLogLocationLifetimeMonitor;
          if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
          {
            v48 = 138412290;
            v49 = v14;
            _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "Confirmed explicit region entry; region=%@", &v48, 0xCu);
          }

          v41 = self->_enteredRegionIdentifiers;
          identifier9 = [v16 identifier];
          [(NSMutableSet *)v41 addObject:identifier9];

          v43 = self->_enteredRegionIdentifiersPendingExit;
          identifier10 = [v16 identifier];
          [(NSMutableSet *)v43 addObject:identifier10];

          [(DNDSExplicitRegionLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
          [(DNDSExplicitRegionLocationLifetimeMonitor *)self _queue_takeAssertionOnEntryIntoRegion:v16];
        }
      }

      else
      {
        v37 = DNDSLogLocationLifetimeMonitor;
        if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          v39 = DNDStringFromRegionState(state);
          v48 = 138543618;
          v49 = v39;
          v50 = 2112;
          v51 = v14;
          _os_log_impl(&dword_24912E000, v38, OS_LOG_TYPE_DEFAULT, "Did not handle explicit region state %{public}@; region=%@", &v48, 0x16u);
        }
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v7 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = managerCopy;
    v11 = 2114;
    v12 = errorCopy;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Explicit region monitoring encountered a failure; manager=%p, error=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_refreshMonitor
{
  v72 = *MEMORY[0x277D85DE8];
  aggregateMonitor = [(DNDSExplicitRegionLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [aggregateMonitor dataSource];
  v6 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Refreshing explicit region monitor", buf, 2u);
  }

  v7 = self->_currentConfiguration;
  v8 = [dataSource locationTriggerConfigurationForLifetimeMonitor:aggregateMonitor];
  currentConfiguration = self->_currentConfiguration;
  self->_currentConfiguration = v8;

  v50 = v7;
  regions = [(DNDSLocationTriggerConfiguration *)v7 regions];
  v11 = regions;
  if (regions)
  {
    v12 = regions;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v12;

  regions2 = [(DNDSLocationTriggerConfiguration *)self->_currentConfiguration regions];
  v15 = regions2;
  if (regions2)
  {
    v16 = regions2;
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
  }

  v17 = v16;

  v18 = [v13 mutableCopy];
  [v18 minusSet:v17];
  v48 = v17;
  v19 = [v17 mutableCopy];
  v49 = v13;
  [v19 minusSet:v13];
  v51 = dataSource;
  v52 = aggregateMonitor;
  v20 = [dataSource lifetimeMonitor:aggregateMonitor modeAssertionsWithLifetimeClass:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v65;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v65 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(DNDSExplicitRegionLocationLifetimeMonitor *)self _queue_stopMonitoringForRegion:*(*(&v64 + 1) + 8 * i)];
      }

      v23 = [v21 countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v23);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v26 = v19;
  v27 = [v26 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v61;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v61 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(DNDSExplicitRegionLocationLifetimeMonitor *)self _queue_startMonitoringForRegion:*(*(&v60 + 1) + 8 * j)];
      }

      v28 = [v26 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v28);
  }

  v47 = v26;

  v53 = [MEMORY[0x277CBEB58] set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v31 = v20;
  v32 = [v31 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v57;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v56 + 1) + 8 * k);
        details = [v36 details];
        lifetime = [details lifetime];
        region = [lifetime region];

        LODWORD(details) = [v21 containsObject:region];
        uUID = [v36 UUID];
        if (details)
        {
          v41 = array;
        }

        else
        {
          [array2 addObject:uUID];

          uUID = [region identifier];
          v41 = v53;
        }

        [v41 addObject:uUID];
      }

      v33 = [v31 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v33);
  }

  [(DNDSExplicitRegionLocationLifetimeMonitor *)self _queue_resolveEnteredRegionIdentifiersWithAssertionRegionIdentifiers:v53];
  if (([(NSArray *)self->_activeLifetimeAssertionUUIDs isEqual:array2]& 1) == 0)
  {
    v42 = [array2 copy];
    activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
    self->_activeLifetimeAssertionUUIDs = v42;
  }

  delegate = [v52 delegate];
  date = [MEMORY[0x277CBEAA8] date];
  [delegate lifetimeMonitor:v52 lifetimeDidExpireForAssertionUUIDs:array expirationDate:date];

  if ([v47 count])
  {
    [(DNDSExplicitRegionLocationLifetimeMonitor *)self _updateWithCachedStateForRegions:v47];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithCachedStateForRegions:(id)regions
{
  v23 = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [regionsCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(regionsCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = DNDSLogLocationLifetimeMonitor;
        if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          identifier = [v9 identifier];
          *buf = 138477827;
          v21 = identifier;
          _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Requesting cached state for region %{private}@.", buf, 0xCu);
        }

        WeakRetained = objc_loadWeakRetained(&self->_aggregateMonitor);
        locationManager = [WeakRetained locationManager];
        [locationManager requestStateForRegion:v9];
      }

      v6 = [regionsCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_resolveEnteredRegionIdentifiersWithAssertionRegionIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  aggregateMonitor = [(DNDSExplicitRegionLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v7 = [(NSMutableSet *)self->_enteredRegionIdentifiers mutableCopy];
  [v7 minusSet:identifiersCopy];

  if (([v7 isEqualToSet:self->_enteredRegionIdentifiersPendingExit] & 1) == 0)
  {
    v8 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      allObjects = [v7 allObjects];
      v12 = 138543362;
      v13 = allObjects;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Assertion(s) for region(s) invalidated without exit from region(s); regions=%{public}@", &v12, 0xCu);
    }

    objc_storeStrong(&self->_enteredRegionIdentifiersPendingExit, v7);
    [(DNDSExplicitRegionLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_startMonitoringForRegion:(id)region
{
  v12 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  aggregateMonitor = [(DNDSExplicitRegionLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v7 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = regionCopy;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Start monitoring for region; region=%@", &v10, 0xCu);
  }

  locationManager = [aggregateMonitor locationManager];
  [locationManager startMonitoringForRegion:regionCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_stopMonitoringForRegion:(id)region
{
  v22 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  aggregateMonitor = [(DNDSExplicitRegionLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v7 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = regionCopy;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Stop monitoring for region; region=%@", &v20, 0xCu);
  }

  enteredRegionIdentifiers = self->_enteredRegionIdentifiers;
  identifier = [regionCopy identifier];
  LODWORD(enteredRegionIdentifiers) = [(NSMutableSet *)enteredRegionIdentifiers containsObject:identifier];

  if (enteredRegionIdentifiers)
  {
    v10 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = regionCopy;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Monitoring stopped for an entered region, associated assertion will be invalidated and entrance reset; region=%@", &v20, 0xCu);
    }

    v11 = self->_enteredRegionIdentifiers;
    identifier2 = [regionCopy identifier];
    [(NSMutableSet *)v11 removeObject:identifier2];

    enteredRegionIdentifiersPendingExit = self->_enteredRegionIdentifiersPendingExit;
    identifier3 = [regionCopy identifier];
    LODWORD(enteredRegionIdentifiersPendingExit) = [(NSMutableSet *)enteredRegionIdentifiersPendingExit containsObject:identifier3];

    if (enteredRegionIdentifiersPendingExit)
    {
      v15 = DNDSLogLocationLifetimeMonitor;
      if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = regionCopy;
        _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Monitoring stopped for an entered region pending exit following early invalidation of the assertion associated with prior entry, entrance will be reset; region=%@", &v20, 0xCu);
      }

      v16 = self->_enteredRegionIdentifiersPendingExit;
      identifier4 = [regionCopy identifier];
      [(NSMutableSet *)v16 removeObject:identifier4];

      [(DNDSExplicitRegionLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
    }
  }

  locationManager = [aggregateMonitor locationManager];
  [locationManager stopMonitoringForRegion:regionCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_queue_takeAssertionOnEntryIntoRegion:(id)region
{
  regionCopy = region;
  aggregateMonitor = [(DNDSExplicitRegionLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(DNDSLocationTriggerConfiguration *)self->_currentConfiguration modeIdentifierForRegion:regionCopy];
  v7 = [(DNDSExplicitRegionLocationLifetimeMonitor *)self _queue_locationMonitorClientIdentifierForModeIdentifier:v6 region:regionCopy];
  v8 = objc_alloc_init(MEMORY[0x277D05A40]);
  [v8 setIdentifier:v7];
  v9 = [MEMORY[0x277D05970] lifetimeWithExplicitRegion:regionCopy];

  [v8 setLifetime:v9];
  [v8 setModeIdentifier:v6];
  [v8 setReason:3];
  delegate = [aggregateMonitor delegate];
  v11 = [delegate lifetimeMonitor:aggregateMonitor takeModeAssertionWithDetails:v8 clientIdentifier:v7 error:0];
}

- (void)_queue_invalidateAssertionOnExitFromRegion:(id)region
{
  regionCopy = region;
  aggregateMonitor = [(DNDSExplicitRegionLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [aggregateMonitor dataSource];
  v8 = [dataSource lifetimeMonitor:self modeAssertionsWithLifetimeClass:objc_opt_class()];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__DNDSExplicitRegionLocationLifetimeMonitor__queue_invalidateAssertionOnExitFromRegion___block_invoke;
  v13[3] = &unk_278F8A818;
  v14 = regionCopy;
  v9 = regionCopy;
  v10 = [v8 bs_mapNoNulls:v13];
  delegate = [aggregateMonitor delegate];
  date = [MEMORY[0x277CBEAA8] date];
  [delegate lifetimeMonitor:aggregateMonitor lifetimeDidExpireForAssertionUUIDs:v10 expirationDate:date];
}

id __88__DNDSExplicitRegionLocationLifetimeMonitor__queue_invalidateAssertionOnExitFromRegion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 details];
  v5 = [v4 lifetime];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 region];

  if ([v10 isEqual:*(a1 + 32)])
  {
    v11 = [v3 UUID];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_queue_locationMonitorClientIdentifierForModeIdentifier:(id)identifier region:(id)region
{
  v5 = MEMORY[0x277CCACA8];
  identifierCopy = identifier;
  identifier = [region identifier];
  v8 = [v5 stringWithFormat:@"%@.private.region.%@", identifierCopy, identifier];

  return v8;
}

- (void)_loadDataFromBackingStore
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to load current explicit region database, will request a radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveDataToBackingStoreWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(DNDSExplicitRegionStore *)self->_store mutableCopy];
  [v5 setEnteredRegionIdentifiersPendingExit:self->_enteredRegionIdentifiersPendingExit];
  backingStore = self->_backingStore;
  v17 = 0;
  v7 = [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v17];
  v8 = v17;
  if (v7)
  {
    if (v7 == 1)
    {
      v13 = DNDSLogLocationLifetimeMonitor;
      if (!os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 138543362;
      v19 = v8;
      v10 = "Failed to write explicit region store, but error can be ignored; error=%{public}@";
      v11 = v13;
      v12 = 12;
    }

    else
    {
      if (v7 != 2 || (v9 = DNDSLogLocationLifetimeMonitor, !os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_9:
        if (!error)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      *buf = 0;
      v10 = "Wrote out explicit region store to file";
      v11 = v9;
      v12 = 2;
    }

    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    goto LABEL_9;
  }

  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_ERROR))
  {
    [DNDSExplicitRegionLocationLifetimeMonitor _saveDataToBackingStoreWithError:];
  }

  _DNDSRequestRadar(@"Failed to write store", v8, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLocationLifetimeMonitor.m", 556);
  if (error)
  {
LABEL_10:
    if (v8)
    {
      v14 = v8;
      *error = v8;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v7 == 2;
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
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to write explicit region store, will request radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end