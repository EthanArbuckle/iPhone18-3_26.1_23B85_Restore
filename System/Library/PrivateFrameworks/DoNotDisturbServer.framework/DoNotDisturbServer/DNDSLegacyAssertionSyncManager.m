@interface DNDSLegacyAssertionSyncManager
+ (void)cleanupState;
- (BOOL)_queue_updateCompanionToggleSyncForGizmoUpdateDate:(id)a3 modeAssertionUpdateContext:(id)a4;
- (DNDSAssertionSyncManagerDelegate)delegate;
- (DNDSLegacyAssertionSyncManager)initWithClientDetailsProvider:(id)a3 pairedDevice:(id)a4;
- (DNDSLegacyAssertionSyncManagerDataSource)dataSource;
- (id)_queue_gizmoUpdateDate;
- (void)_beginMonitoringForChanges;
- (void)_endMonitoringForChanges;
- (void)_queue_gizmoUpdateDate;
- (void)_queue_updateCompanionAssertionMirroringForState:(id)a3;
- (void)_queue_updateGizmoAssertionSyncWithModeAssertionUpdateContext:(id)a3;
- (void)_queue_updateGizmoToggleSyncForState:(id)a3 companionUpdateDate:(id)a4 reason:(unint64_t)a5;
- (void)_queue_updateToggleSyncForReason:(unint64_t)a3;
- (void)_updateForReason:(unint64_t)a3;
- (void)_updateGizmoAssertionSync;
- (void)dealloc;
- (void)resume;
- (void)updateForStateUpdate:(id)a3;
@end

@implementation DNDSLegacyAssertionSyncManager

+ (void)cleanupState
{
  v2 = DNDSLogLegacyAssertionSync;
  if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up state", v5, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
  [v3 removeObjectForKey:@"dndState"];
  [v3 removeObjectForKey:@"dndStateDate"];
  [v3 removeObjectForKey:@"dndCompanionAssertActive"];
  [v3 removeObjectForKey:@"dndGizmoAssertActive"];
  v4 = [v3 synchronize];
}

- (DNDSLegacyAssertionSyncManager)initWithClientDetailsProvider:(id)a3 pairedDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = DNDSLegacyAssertionSyncManager;
  v9 = [(DNDSLegacyAssertionSyncManager *)&v21 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.donotdisturb.server.LegacyAssertionSyncManager", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v9->_npsManager;
    v9->_npsManager = v13;

    v15 = objc_alloc(MEMORY[0x277D2BA58]);
    v16 = [v8 pairingIdentifier];
    v17 = [v8 pairingDataStore];
    v18 = [v15 initWithDomain:@"com.apple.nano" pairingID:v16 pairingDataStore:v17];
    accessor = v9->_accessor;
    v9->_accessor = v18;

    objc_storeStrong(&v9->_clientDetailsProvider, a3);
  }

  return v9;
}

- (void)dealloc
{
  [(DNDSLegacyAssertionSyncManager *)self _endMonitoringForChanges];
  v3.receiver = self;
  v3.super_class = DNDSLegacyAssertionSyncManager;
  [(DNDSLegacyAssertionSyncManager *)&v3 dealloc];
}

- (void)resume
{
  [(DNDSLegacyAssertionSyncManager *)self _beginMonitoringForChanges];

  [(DNDSLegacyAssertionSyncManager *)self _updateForReason:0];
}

- (void)updateForStateUpdate:(id)a3
{
  v4 = [a3 reason];

  [(DNDSLegacyAssertionSyncManager *)self _updateForReason:v4];
}

- (void)_updateForReason:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__DNDSLegacyAssertionSyncManager__updateForReason___block_invoke;
  v4[3] = &unk_278F8A008;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)_updateGizmoAssertionSync
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DNDSLegacyAssertionSyncManager__updateGizmoAssertionSync__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __59__DNDSLegacyAssertionSyncManager__updateGizmoAssertionSync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __59__DNDSLegacyAssertionSyncManager__updateGizmoAssertionSync__block_invoke_2;
  v7 = &unk_278F8AD18;
  v8 = v3;
  [v2 syncManager:? performModeAssertionUpdatesWithHandler:?];
}

- (void)_beginMonitoringForChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, DNDSyncStateChanged, @"DNDStateChangedNotification", 0, 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v4, self, DNDAssertionStateChanged, @"DNDAssertStateChangedNotification", 0, 0);
}

- (void)_endMonitoringForChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"DNDStateChangedNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(v4, self, @"DNDAssertStateChangedNotification", 0);
}

- (void)_queue_updateToggleSyncForReason:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NPSDomainAccessor *)self->_accessor synchronize];
  v6 = [(DNDSLegacyAssertionSyncManager *)self delegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__DNDSLegacyAssertionSyncManager__queue_updateToggleSyncForReason___block_invoke;
  v7[3] = &unk_278F8AD40;
  v7[4] = self;
  v7[5] = a3;
  [v6 syncManager:self performModeAssertionUpdatesWithHandler:v7];
}

uint64_t __67__DNDSLegacyAssertionSyncManager__queue_updateToggleSyncForReason___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 currentStateForLegacyAssertionSyncManager:*(a1 + 32)];

  v25 = v3;
  v6 = [v3 store];
  v7 = [v6 lastUpdateDate];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v5 activeModeAssertionMetadata];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v26 + 1) + 8 * v12) activeDateInterval];
        v15 = [v14 startDate];
        v7 = [v13 laterDate:v15];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v10);
  }

  v16 = [*(a1 + 32) _queue_gizmoUpdateDate];
  v17 = DNDSLogLegacyAssertionSync;
  if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    v19 = v17;
    v20 = DNDStateUpdateReasonToString();
    *buf = 138543874;
    v31 = v7;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = v20;
    _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_DEFAULT, "Update toggle sync: companionUpdateDate=%{public}@, gizmoUpdateDate=%{public}@, reason=%{public}@", buf, 0x20u);
  }

  v21 = [v7 compare:v16];
  if (v21 < 2)
  {
    [*(a1 + 32) _queue_updateGizmoToggleSyncForState:v5 companionUpdateDate:v7 reason:*(a1 + 40)];
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  if (v21 != -1)
  {
    goto LABEL_14;
  }

  v22 = [*(a1 + 32) _queue_updateCompanionToggleSyncForGizmoUpdateDate:v16 modeAssertionUpdateContext:v25];
LABEL_15:
  [*(a1 + 32) _queue_updateCompanionAssertionMirroringForState:v5];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)_queue_gizmoUpdateDate
{
  v12 = 0;
  [(NPSDomainAccessor *)self->_accessor doubleForKey:@"dndStateDate" keyExistsAndHasValidFormat:&v12];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  if ((v12 & 1) == 0)
  {
    v3 = DNDSLogLegacyAssertionSync;
    if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [(DNDSLegacyAssertionSyncManager *)v3 _queue_gizmoUpdateDate];
    }

    v4 = [MEMORY[0x277CBEAA8] distantPast];

    v2 = v4;
  }

  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
  if ([v2 compare:v5] != -1)
  {
    v6 = DNDSLogLegacyAssertionSync;
    if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [(DNDSLegacyAssertionSyncManager *)v2 _queue_gizmoUpdateDate];
    }

    v7 = [MEMORY[0x277CBEAA8] distantPast];

    v2 = v7;
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  if ([v2 compare:v8] != -1)
  {
    v9 = DNDSLogLegacyAssertionSync;
    if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [(DNDSLegacyAssertionSyncManager *)v2 _queue_gizmoUpdateDate];
    }

    v10 = v8;

    v2 = v10;
  }

  return v2;
}

- (void)_queue_updateGizmoToggleSyncForState:(id)a3 companionUpdateDate:(id)a4 reason:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (a5 == 1)
  {
    v10 = [(NPSDomainAccessor *)self->_accessor BOOLForKey:@"dndState"];
    v11 = [v8 activeModeAssertionMetadata];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __98__DNDSLegacyAssertionSyncManager__queue_updateGizmoToggleSyncForState_companionUpdateDate_reason___block_invoke;
    v23[3] = &unk_278F8AD68;
    v23[4] = self;
    v12 = [v11 bs_containsObjectPassingTest:v23];

    v13 = DNDSLogLegacyAssertionSync;
    if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = DNDStateUpdateReasonToString();
      *buf = 67109634;
      *v25 = v12;
      *&v25[4] = 1024;
      *&v25[6] = v10;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Will update toggle sync state to reflect current companion state, companionToggleDNDActive=%{BOOL}d, gizmoDNDActive=%{BOOL}d, reason=%{public}@", buf, 0x18u);
    }

    [(NPSDomainAccessor *)self->_accessor setBool:v12 forKey:@"dndState"];
    accessor = self->_accessor;
    [v9 timeIntervalSinceReferenceDate];
    [(NPSDomainAccessor *)accessor setDouble:@"dndStateDate" forKey:?];
    v17 = [(NPSDomainAccessor *)self->_accessor synchronize];
    v18 = [MEMORY[0x277CBEB98] setWithObjects:{@"dndState", @"dndStateDate", 0}];
    [(NPSManager *)self->_npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v18];
  }

  else
  {
    v19 = DNDSLogLegacyAssertionSync;
    if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = DNDStateUpdateReasonToString();
      *buf = 138543362;
      *v25 = v21;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring update to toggle for reason %{public}@ as it was not user initiated", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __98__DNDSLegacyAssertionSyncManager__queue_updateGizmoToggleSyncForState_companionUpdateDate_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lifetimeType];
  v5 = *(*(a1 + 32) + 32);
  v6 = [v3 clientIdentifier];
  v7 = [v5 clientDetailsForIdentifier:v6];

  if (v4 == 4)
  {
    if ([v7 isSyncSuppressedClient])
    {
      v8 = [v3 clientIdentifier];
      v9 = [v8 isEqualToString:@"com.apple.donotdisturb.private.schedule"];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_queue_updateCompanionToggleSyncForGizmoUpdateDate:(id)a3 modeAssertionUpdateContext:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NPSDomainAccessor *)self->_accessor BOOLForKey:@"dndState"];
  v8 = DNDSLogLegacyAssertionSync;
  if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v33 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Gizmo has toggled DND, will mirror locally: gizmoDNDActive=%{BOOL}d", buf, 8u);
  }

  v31 = @"com.donotdisturb.server.sync.legacy";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:{1, v29}];
  v10 = [MEMORY[0x277D05938] predicateForModeAssertionsWithClientIdentifiers:v9];
  v11 = [v6 modeAssertionsMatchingPredicate:v10];
  v12 = [v11 firstObject];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  if ((v13 & 1) != 0 || v7 != 1)
  {
    v16 = [(DNDSLegacyAssertionSyncManager *)self dataSource];
    v17 = [v16 currentlyActivePairedDeviceForSyncManager:self];

    v18 = objc_alloc(MEMORY[0x277D05988]);
    v19 = [v17 deviceIdentifier];
    v20 = [v18 initWithClientIdentifier:@"com.donotdisturb.server.sync.legacy" deviceIdentifier:v19];

    if (v13)
    {
      v21 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v21 setIdentifier:@"com.apple.donotdisturb.sync.legacy.toggle-assertion"];
      v22 = [MEMORY[0x277D05970] lifetimeUntilEndOfScheduleWithIdentifier:*MEMORY[0x277D05838]];
      [v21 setLifetime:v22];

      [v21 setReason:1];
      v23 = [v6 takeAssertionWithDetails:v21 source:v20 startDate:v30];
      v24 = [v23 assertions];
      v15 = [v24 count] != 0;
    }

    else
    {
      if (v7)
      {
        v15 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v25 = DNDSLogLegacyAssertionSync;
      if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v25, OS_LOG_TYPE_DEFAULT, "Gizmo has invalidated its DND assertion, will mirror locally", buf, 2u);
      }

      v21 = +[DNDSModeAssertionInvalidationPredicate predicateForAnyAssertion];
      v23 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v21 requestDate:v30 source:v20 reason:2];
      v26 = [v6 invalidateAssertionsForRequest:v23];
      v15 = 1;
    }

    goto LABEL_18;
  }

  v14 = DNDSLogLegacyAssertionSync;
  v15 = 0;
  if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Did not update local state as it was not required", buf, 2u);
    v15 = 0;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_queue_updateCompanionAssertionMirroringForState:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [v5 activeModeAssertionMetadata];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__DNDSLegacyAssertionSyncManager__queue_updateCompanionAssertionMirroringForState___block_invoke;
  v12[3] = &unk_278F8AD68;
  v12[4] = self;
  v7 = [v6 bs_containsObjectPassingTest:v12];

  if (v7 != [(NPSDomainAccessor *)self->_accessor BOOLForKey:@"dndCompanionAssertActive"])
  {
    v8 = DNDSLogLegacyAssertionSync;
    if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Companion assertion active changed, will update gizmo: value=%{BOOL}d", buf, 8u);
    }

    [(NPSDomainAccessor *)self->_accessor setBool:v7 forKey:@"dndCompanionAssertActive"];
    v9 = [(NPSDomainAccessor *)self->_accessor synchronize];
    v10 = [MEMORY[0x277CBEB98] setWithObject:@"dndCompanionAssertActive"];
    [(NPSManager *)self->_npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __83__DNDSLegacyAssertionSyncManager__queue_updateCompanionAssertionMirroringForState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lifetimeType];
  v5 = *(*(a1 + 32) + 32);
  v6 = [v3 clientIdentifier];

  v7 = [v5 clientDetailsForIdentifier:v6];

  if (v4 == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 isSyncSuppressedClient] ^ 1;
  }

  return v8;
}

- (void)_queue_updateGizmoAssertionSyncWithModeAssertionUpdateContext:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NPSDomainAccessor *)self->_accessor synchronize];
  v6 = [(NPSDomainAccessor *)self->_accessor BOOLForKey:@"dndGizmoAssertActive"];
  v27[0] = @"com.donotdisturb.server.sync.legacy.workout";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v8 = [MEMORY[0x277D05938] predicateForModeAssertionsWithClientIdentifiers:v7];
  v9 = [v4 modeAssertionsMatchingPredicate:v8];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  if (v10)
  {
    v12 = v6;
  }

  else
  {
    v12 = 1;
  }

  if ((v11 & 1) != 0 || !v12)
  {
    v13 = [(DNDSLegacyAssertionSyncManager *)self dataSource];
    v14 = [v13 currentlyActivePairedDeviceForSyncManager:self];

    v15 = objc_alloc(MEMORY[0x277D05988]);
    v16 = [v14 deviceIdentifier];
    v17 = [v15 initWithClientIdentifier:@"com.donotdisturb.server.sync.legacy.workout" deviceIdentifier:v16];

    if (v11)
    {
      v18 = DNDSLogLegacyAssertionSync;
      if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Gizmo has taken a DND assertion, will mirror locally", v26, 2u);
      }

      v19 = [MEMORY[0x277D05958] detailsWithIdentifier:@"com.apple.donotdisturb.sync.legacy.mirror-assertion" modeIdentifier:@"com.apple.donotdisturb.mode.workout" lifetime:0 reason:1];
      v20 = [MEMORY[0x277CBEAA8] date];
      v21 = [v4 takeAssertionWithDetails:v19 source:v17 startDate:v20];
    }

    else
    {
      if (v12)
      {
LABEL_18:

        goto LABEL_19;
      }

      v22 = DNDSLogLegacyAssertionSync;
      if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Gizmo has invalidated its DND assertion, will mirror locally", v26, 2u);
      }

      v19 = [MEMORY[0x277CBEAA8] date];
      v20 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:v7];
      v23 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v20 requestDate:v19 source:v17 reason:2];
      v24 = [v4 invalidateAssertionsForRequest:v23];
    }

    goto LABEL_18;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (DNDSLegacyAssertionSyncManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSAssertionSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_gizmoUpdateDate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Gizmo date is in the future, will reset to now: gizmoUpdateDate=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end