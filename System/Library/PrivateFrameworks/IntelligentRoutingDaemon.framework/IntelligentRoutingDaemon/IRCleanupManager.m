@interface IRCleanupManager
- (IRBackgroundActivitiesManager)backgroundActivitiesManager;
- (IRCleanupManager)initWithBackgroundActivitiesManager:(id)a3;
- (id)_getDateIntervalOfBuildsToDiscard;
- (void)_handleCleanupXPCActivity;
@end

@implementation IRCleanupManager

- (IRCleanupManager)initWithBackgroundActivitiesManager:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IRCleanupManager;
  v5 = [(IRCleanupManager *)&v13 init];
  if (v5)
  {
    v6 = +[IRPreferences shared];
    v7 = [v6 cleanupXPCActivityInterval];
    v8 = [v7 longLongValue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__IRCleanupManager_initWithBackgroundActivitiesManager___block_invoke;
    v11[3] = &unk_2797E0BA8;
    v9 = v5;
    v12 = v9;
    [v4 registerForRepeatingBackgroundXPCActivityWithIdentifier:@"com.apple.intelligentroutingd.DBCleanupXPCActivityIdentifier" interval:v8 isDiskIntensive:1 isMemoryIntensive:1 handler:v11];

    [(IRCleanupManager *)v9 setBackgroundActivitiesManager:v4];
  }

  return v5;
}

- (void)_handleCleanupXPCActivity
{
  v3 = [(IRCleanupManager *)self backgroundActivitiesManager];
  v4 = [v3 server];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke;
  v5[3] = &unk_2797E1308;
  v5[4] = self;
  [v4 performXPCActivityUnderServerContext:v5];
}

void __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_transaction_create();
  v8 = MEMORY[0x277D21260];
  v9 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "#db-cleanup-manager, Handling IRD cleanup", buf, 2u);
  }

  if ([v5 connectToStore])
  {
    v10 = [IRServiceStore fetchAllServicesWithPersistenceManager:v5];
    if (v10)
    {
      v11 = MEMORY[0x277D21268];
      v12 = *MEMORY[0x277D21268];
      if (os_log_type_enabled(*MEMORY[0x277D21268], OS_LOG_TYPE_DEFAULT))
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = v12;
        v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
        v16 = MEMORY[0x277CCABB0];
        v17 = [v6 allKeys];
        v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_DEFAULT, "#db-cleanup-manager, Number of services in DB: %@, number of active services: %@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v38 = __Block_byref_object_copy__1;
      v39 = __Block_byref_object_dispose__1;
      v40 = 0;
      if (+[IRPlatformInfo isInternalInstall])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke_24;
        block[3] = &unk_2797E1298;
        block[4] = *(a1 + 32);
        block[5] = buf;
        if (cleanupXPCActivityIdentifier_block_invoke_onceToken != -1)
        {
          dispatch_once(&cleanupXPCActivityIdentifier_block_invoke_onceToken, block);
        }
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke_2;
      v30[3] = &unk_2797E12C0;
      v19 = v6;
      v31 = v19;
      v33 = buf;
      v20 = v5;
      v32 = v20;
      [v10 enumerateObjectsUsingBlock:v30];
      v21 = [IRSessionServer isGlobalLowLatencyMiLoWithPersistenceManager:v20];
      v22 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = @"NO";
        if (v21)
        {
          v23 = @"YES";
        }

        *v35 = 138412290;
        v36 = v23;
        _os_log_impl(&dword_25543D000, v22, OS_LOG_TYPE_DEFAULT, "#db-cleanup-manager, Restarting isLowLatencyMiLo: %@", v35, 0xCu);
      }

      v24 = [v19 allValues];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke_42;
      v28[3] = &__block_descriptor_33_e35_v32__0__IRServiceContainer_8Q16_B24l;
      v29 = v21;
      [v24 enumerateObjectsUsingBlock:v28];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v26 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25543D000, v26, OS_LOG_TYPE_DEFAULT, "#db-cleanup-manager, 0 services found during DB cleanup", buf, 2u);
      }
    }
  }

  else
  {
    v25 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke_cold_1(v25);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke_24(uint64_t a1)
{
  v2 = [*(a1 + 32) _getDateIntervalOfBuildsToDiscard];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __45__IRCleanupManager__handleCleanupXPCActivity__block_invoke_2(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 serviceIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = a1[4];
    v8 = [v3 serviceIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];
    [v9 dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard:*(*(a1[6] + 8) + 40)];
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v3 lastSeenDate];
    v12 = +[IRPreferences shared];
    v13 = [v12 dbCleanupXPCActivityDeleteServiceThreshold];
    [v13 doubleValue];
    v14 = [v11 dateByAddingTimeInterval:?];
    v15 = [v14 isEarlierThan:v10];

    if (v15)
    {
      v16 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        v33 = 138412290;
        v34 = v3;
        _os_log_impl(&dword_25543D000, v16, OS_LOG_TYPE_DEFAULT, "#db-cleanup-manager, Deleting service: %@", &v33, 0xCu);
      }

      v17 = objc_alloc(MEMORY[0x277D212E0]);
      v18 = [v3 serviceIdentifier];
      v19 = [v17 initWithServiceIdentifier:v18 servicePackage:{objc_msgSend(v3, "servicePackage")}];

      [IRServiceContainer deleteServiceWithToken:v19 persistenceManager:a1[5]];
    }

    else
    {
      v20 = [IRServiceStore alloc];
      v21 = a1[5];
      v22 = [v3 serviceIdentifier];
      v19 = [(IRServiceStore *)v20 initWithPersistenceManager:v21 serviceIdentifier:v22];

      v23 = [(IRServiceStore *)v19 cleanupWithDate:v10 dateIntervalOfMiLoPredictionsToDiscard:*(*(a1[6] + 8) + 40)];
      v24 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [v3 clientIdentifier];
        v27 = MEMORY[0x277CCABB0];
        v28 = [MEMORY[0x277CBEAA8] date];
        [v28 timeIntervalSinceDate:v10];
        v29 = [v27 numberWithDouble:?];
        v30 = v29;
        v31 = @"Fail";
        v33 = 138412802;
        v34 = v26;
        v35 = 2112;
        if (v23)
        {
          v31 = @"Ok";
        }

        v36 = v29;
        v37 = 2112;
        v38 = v31;
        _os_log_impl(&dword_25543D000, v25, OS_LOG_TYPE_DEFAULT, "#db-cleanup-manager, Finished DB cleanup for non active service: %@, in %@ seconds with status: %@", &v33, 0x20u);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_getDateIntervalOfBuildsToDiscard
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(IRCleanupManager *)self _getListOfBuildsToDiscard];
  v4 = MEMORY[0x277D21260];
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "#db-cleanup-manager, Getting date range of events to discard from builds metadata", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(IRCleanupManager *)self backgroundActivitiesManager];
  v8 = [v7 server];
  v9 = [v8 biomeProvider];
  v10 = [v9 fetchLatestEventsOfEventType:3 numEvents:0];

  *buf = 0;
  v41 = buf;
  v42 = 0x2020000000;
  v43 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __53__IRCleanupManager__getDateIntervalOfBuildsToDiscard__block_invoke;
  v36[3] = &unk_2797E1330;
  v11 = v3;
  v37 = v11;
  v12 = v6;
  v38 = v12;
  v39 = buf;
  [v10 enumerateObjectsUsingBlock:v36];
  if ([v12 count])
  {
    v13 = *(v41 + 3);
    if (v13 < [v10 count] - 1)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [v10 objectAtIndex:*(v41 + 3) + 1];
      [v15 timestamp];
      v16 = [v14 numberWithDouble:?];
      [v12 addObject:v16];
    }

    v17 = MEMORY[0x277CBEB18];
    v18 = [v12 sortedArrayUsingSelector:sel_compare_];
    v19 = [v17 arrayWithArray:v18];

    v20 = MEMORY[0x277CBEAA8];
    v21 = [v19 firstObject];
    [v21 doubleValue];
    v22 = [v20 dateWithTimeIntervalSinceReferenceDate:?];

    v23 = MEMORY[0x277CBEAA8];
    v24 = [v19 lastObject];
    [v24 doubleValue];
    v25 = [v23 dateWithTimeIntervalSinceReferenceDate:?];

    v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v22 endDate:v25];
    v27 = *v4;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v19 firstObject];
      [v28 doubleValue];
      v30 = v29;
      v31 = [v19 lastObject];
      [v31 doubleValue];
      *v44 = 134218240;
      v45 = v30;
      v46 = 2048;
      v47 = v32;
      _os_log_impl(&dword_25543D000, v27, OS_LOG_TYPE_INFO, "#db-cleanup-manager, Found matching builds for discarding events with date range: (%f, %f)", v44, 0x16u);
    }
  }

  else
  {
    v33 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_25543D000, v33, OS_LOG_TYPE_INFO, "#db-cleanup-manager, Found no matching builds for which to discard events", v44, 2u);
    }

    v26 = 0;
    v19 = v12;
  }

  _Block_object_dispose(buf, 8);
  v34 = *MEMORY[0x277D85DE8];

  return v26;
}

void __53__IRCleanupManager__getDateIntervalOfBuildsToDiscard__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 eventBody];
  v6 = a1[4];
  v7 = [v5 build];
  LODWORD(v6) = [v6 containsObject:v7];

  if (v6)
  {
    v8 = a1[5];
    v9 = MEMORY[0x277CCABB0];
    [v11 timestamp];
    v10 = [v9 numberWithDouble:?];
    [v8 addObject:v10];

    *(*(a1[6] + 8) + 24) = a3;
  }
}

- (IRBackgroundActivitiesManager)backgroundActivitiesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundActivitiesManager);

  return WeakRetained;
}

@end