@interface DNDSMutableModeAssertionStore
- (id)copyWithZone:(_NSZone *)zone;
- (void)downgradeAssertionsIfNeededForSyncToPairedDevice:(id)device dataSource:(id)source syncManager:(id)manager;
- (void)filterForSyncToPairedDevice:(id)device clientDetailsProvider:(id)provider;
- (void)resolveSourcesForSyncFromPairedDevice:(id)device;
- (void)sanitizeDatesForThreshold:(id)threshold;
- (void)setAssertions:(id)assertions;
- (void)setInvalidationRequests:(id)requests;
- (void)setInvalidations:(id)invalidations;
- (void)unresolveSourcesForSyncToPairedDevice:(id)device;
- (void)updateConfigurationModificationDatesWithDataSource:(id)source syncManager:(id)manager;
@end

@implementation DNDSMutableModeAssertionStore

- (void)setAssertions:(id)assertions
{
  v4 = [assertions copy];
  assertions = self->super._assertions;
  self->super._assertions = v4;

  MEMORY[0x2821F96F8](v4, assertions);
}

- (void)setInvalidations:(id)invalidations
{
  v4 = [invalidations copy];
  invalidations = self->super._invalidations;
  self->super._invalidations = v4;

  MEMORY[0x2821F96F8](v4, invalidations);
}

- (void)setInvalidationRequests:(id)requests
{
  v4 = [requests copy];
  invalidationRequests = self->super._invalidationRequests;
  self->super._invalidationRequests = v4;

  MEMORY[0x2821F96F8](v4, invalidationRequests);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSModeAssertionStore alloc];

  return [(DNDSModeAssertionStore *)v4 _initWithStore:self];
}

- (void)filterForSyncToPairedDevice:(id)device clientDetailsProvider:(id)provider
{
  deviceCopy = device;
  providerCopy = provider;
  assertions = [(DNDSModeAssertionStore *)self assertions];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __108__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__filterForSyncToPairedDevice_clientDetailsProvider___block_invoke;
  v29[3] = &unk_278F8AEF8;
  v9 = providerCopy;
  v30 = v9;
  v10 = deviceCopy;
  v31 = v10;
  v11 = [assertions bs_filter:v29];

  [(DNDSMutableModeAssertionStore *)self setAssertions:v11];
  invalidations = [(DNDSModeAssertionStore *)self invalidations];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __108__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__filterForSyncToPairedDevice_clientDetailsProvider___block_invoke_2;
  v26[3] = &unk_278F8AF20;
  v13 = v9;
  v27 = v13;
  v14 = v10;
  v28 = v14;
  v15 = [invalidations bs_filter:v26];

  [(DNDSMutableModeAssertionStore *)self setInvalidations:v15];
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __108__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__filterForSyncToPairedDevice_clientDetailsProvider___block_invoke_3;
  v23 = &unk_278F8AF48;
  v24 = v13;
  v25 = v14;
  v17 = v14;
  v18 = v13;
  v19 = [invalidationRequests bs_filter:&v20];

  [(DNDSMutableModeAssertionStore *)self setInvalidationRequests:v19, v20, v21, v22, v23];
}

uint64_t __108__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__filterForSyncToPairedDevice_clientDetailsProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 source];
  v6 = [v5 clientIdentifier];
  v7 = [v4 clientDetailsForIdentifier:v6];

  if ([v7 isSyncSuppressedClient])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 source];
    v10 = [v9 deviceIdentifier];
    v11 = [*(a1 + 40) deviceIdentifier];
    if ([v10 isEqualToString:v11])
    {
      v8 = 0;
    }

    else if ([v7 isIOS14SyncSuppressedClient])
    {
      v8 = [*(a1 + 40) isIOS14EraOS] ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

uint64_t __108__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__filterForSyncToPairedDevice_clientDetailsProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 assertion];
  v6 = [v5 source];
  v7 = [v6 clientIdentifier];
  v8 = [v3 clientDetailsForIdentifier:v7];

  v9 = [v4 reason];
  if (v9 == 1 || ([v8 isSyncSuppressedClient] & 1) != 0)
  {
    v10 = 0;
  }

  else if ([v8 isIOS14SyncSuppressedClient])
  {
    v10 = [*(a1 + 40) isIOS14EraOS] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __108__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__filterForSyncToPairedDevice_clientDetailsProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 source];
  v6 = [v5 clientIdentifier];
  v7 = [v3 clientDetailsForIdentifier:v6];

  v8 = [v4 reason];
  if (v8 == 1 || ([v7 isSyncSuppressedClient] & 1) != 0)
  {
    v9 = 0;
  }

  else if ([v7 isIOS14SyncSuppressedClient])
  {
    v9 = [*(a1 + 40) isIOS14EraOS] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)unresolveSourcesForSyncToPairedDevice:(id)device
{
  deviceCopy = device;
  assertions = [(DNDSModeAssertionStore *)self assertions];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__unresolveSourcesForSyncToPairedDevice___block_invoke;
  v18[3] = &unk_278F8AF70;
  v6 = deviceCopy;
  v19 = v6;
  v7 = [assertions bs_compactMap:v18];

  [(DNDSMutableModeAssertionStore *)self setAssertions:v7];
  invalidations = [(DNDSModeAssertionStore *)self invalidations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__unresolveSourcesForSyncToPairedDevice___block_invoke_2;
  v16[3] = &unk_278F8AF98;
  v9 = v6;
  v17 = v9;
  v10 = [invalidations bs_mapNoNulls:v16];

  [(DNDSMutableModeAssertionStore *)self setInvalidations:v10];
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__unresolveSourcesForSyncToPairedDevice___block_invoke_3;
  v14[3] = &unk_278F8AFC0;
  v15 = v9;
  v12 = v9;
  v13 = [invalidationRequests bs_mapNoNulls:v14];

  [(DNDSMutableModeAssertionStore *)self setInvalidationRequests:v13];
}

id __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__unresolveSourcesForSyncToPairedDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceIdentifier];
  v5 = [v3 resolveWithExpectedRemoteDeviceIdentifier:v4 localDeviceIdentifier:0 remoteDeviceIdentifier:@"dr"];

  return v5;
}

id __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__unresolveSourcesForSyncToPairedDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceIdentifier];
  v5 = [v3 resolveWithExpectedRemoteDeviceIdentifier:v4 localDeviceIdentifier:0 remoteDeviceIdentifier:@"dr"];

  return v5;
}

id __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__unresolveSourcesForSyncToPairedDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceIdentifier];
  v5 = [v3 resolveWithExpectedRemoteDeviceIdentifier:v4 localDeviceIdentifier:0 remoteDeviceIdentifier:@"dr"];

  return v5;
}

- (void)resolveSourcesForSyncFromPairedDevice:(id)device
{
  deviceCopy = device;
  assertions = [(DNDSModeAssertionStore *)self assertions];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__resolveSourcesForSyncFromPairedDevice___block_invoke;
  v18[3] = &unk_278F8AF70;
  v6 = deviceCopy;
  v19 = v6;
  v7 = [assertions bs_compactMap:v18];

  [(DNDSMutableModeAssertionStore *)self setAssertions:v7];
  invalidations = [(DNDSModeAssertionStore *)self invalidations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__resolveSourcesForSyncFromPairedDevice___block_invoke_2;
  v16[3] = &unk_278F8AF98;
  v9 = v6;
  v17 = v9;
  v10 = [invalidations bs_mapNoNulls:v16];

  [(DNDSMutableModeAssertionStore *)self setInvalidations:v10];
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__resolveSourcesForSyncFromPairedDevice___block_invoke_3;
  v14[3] = &unk_278F8AFC0;
  v15 = v9;
  v12 = v9;
  v13 = [invalidationRequests bs_mapNoNulls:v14];

  [(DNDSMutableModeAssertionStore *)self setInvalidationRequests:v13];
}

id __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__resolveSourcesForSyncFromPairedDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceIdentifier];
  v5 = [v3 resolveWithExpectedRemoteDeviceIdentifier:@"dr" localDeviceIdentifier:v4 remoteDeviceIdentifier:0];

  return v5;
}

id __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__resolveSourcesForSyncFromPairedDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceIdentifier];
  v5 = [v3 resolveWithExpectedRemoteDeviceIdentifier:@"dr" localDeviceIdentifier:v4 remoteDeviceIdentifier:0];

  return v5;
}

id __96__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__resolveSourcesForSyncFromPairedDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceIdentifier];
  v5 = [v3 resolveWithExpectedRemoteDeviceIdentifier:@"dr" localDeviceIdentifier:v4 remoteDeviceIdentifier:0];

  return v5;
}

- (void)updateConfigurationModificationDatesWithDataSource:(id)source syncManager:(id)manager
{
  sourceCopy = source;
  managerCopy = manager;
  assertions = [(DNDSModeAssertionStore *)self assertions];
  v8 = [assertions mutableCopy];

  if ([v8 count])
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      source = [v10 source];
      deviceIdentifier = [source deviceIdentifier];

      if (!deviceIdentifier)
      {
        v13 = [sourceCopy syncManager:managerCopy updateOutboundModeAssertion:v10];

        [v8 setObject:v13 atIndexedSubscript:v9];
        v10 = v13;
      }

      ++v9;
    }

    while (v9 < [v8 count]);
  }

  [(DNDSMutableModeAssertionStore *)self setAssertions:v8];
}

- (void)downgradeAssertionsIfNeededForSyncToPairedDevice:(id)device dataSource:(id)source syncManager:(id)manager
{
  sourceCopy = source;
  managerCopy = manager;
  if (([device supportsKettle] & 1) == 0)
  {
    assertions = [(DNDSModeAssertionStore *)self assertions];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __130__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__downgradeAssertionsIfNeededForSyncToPairedDevice_dataSource_syncManager___block_invoke;
    v15 = &unk_278F8AFE8;
    v16 = sourceCopy;
    v17 = managerCopy;
    v11 = [assertions bs_map:&v12];

    [(DNDSMutableModeAssertionStore *)self setAssertions:v11, v12, v13, v14, v15];
  }
}

id __130__DNDSMutableModeAssertionStore_DNDSModernAssertionSync__downgradeAssertionsIfNeededForSyncToPairedDevice_dataSource_syncManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isInternalScheduled])
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v3 details];
    v7 = [v6 modeIdentifier];
    v8 = [v5 syncManager:v4 scheduleSettingsForModeIdentifier:v7];

    v9 = MEMORY[0x277CCA970];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v9 dnds_dateIntervalForScheduleSettings:v8 date:v10 calendar:v11];

    v13 = [MEMORY[0x277D05970] lifetimeWithDateInterval:v12];
    v14 = [v3 details];
    v15 = [v14 mutableCopy];

    [v15 setLifetime:v13];
    v16 = objc_alloc(MEMORY[0x277D05938]);
    v17 = [v3 UUID];
    v18 = [MEMORY[0x277CBEAA8] date];
    v19 = [v3 source];
    v20 = [v16 initWithUUID:v17 startDate:v18 details:v15 source:v19];
  }

  else
  {
    v20 = v3;
  }

  return v20;
}

- (void)sanitizeDatesForThreshold:(id)threshold
{
  thresholdCopy = threshold;
  assertions = [(DNDSModeAssertionStore *)self assertions];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__DNDSMutableModeAssertionStore_DateOperations__sanitizeDatesForThreshold___block_invoke;
  v18[3] = &unk_278F8AF70;
  v6 = thresholdCopy;
  v19 = v6;
  v7 = [assertions bs_mapNoNulls:v18];

  [(DNDSMutableModeAssertionStore *)self setAssertions:v7];
  invalidations = [(DNDSModeAssertionStore *)self invalidations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__DNDSMutableModeAssertionStore_DateOperations__sanitizeDatesForThreshold___block_invoke_2;
  v16[3] = &unk_278F8AF98;
  v9 = v6;
  v17 = v9;
  v10 = [invalidations bs_mapNoNulls:v16];

  [(DNDSMutableModeAssertionStore *)self setInvalidations:v10];
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__DNDSMutableModeAssertionStore_DateOperations__sanitizeDatesForThreshold___block_invoke_5;
  v14[3] = &unk_278F8AFC0;
  v15 = v9;
  v12 = v9;
  v13 = [invalidationRequests bs_mapNoNulls:v14];

  [(DNDSMutableModeAssertionStore *)self setInvalidationRequests:v13];
}

id __75__DNDSMutableModeAssertionStore_DateOperations__sanitizeDatesForThreshold___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 startDate];
  v6 = [v4 compare:v5];

  if (v6 == -1)
  {
    v7 = DNDSLogAssertionStore;
    if (os_log_type_enabled(DNDSLogAssertionStore, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Will sanitize assertion date: date=%{public}@ assertion=%{public}@", &v17, 0x16u);
    }

    v9 = objc_alloc(MEMORY[0x277D05938]);
    v10 = [v3 UUID];
    v11 = *(a1 + 32);
    v12 = [v3 details];
    v13 = [v3 source];
    v14 = [v9 initWithUUID:v10 startDate:v11 details:v12 source:v13];

    v3 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

id __75__DNDSMutableModeAssertionStore_DateOperations__sanitizeDatesForThreshold___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 invalidationDate];
  v6 = [v4 compare:v5];

  if (v6 == -1)
  {
    v7 = DNDSLogAssertionStore;
    if (os_log_type_enabled(DNDSLogAssertionStore, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Will sanitize invalidation date: date=%{public}@ invalidation=%{public}@", &v17, 0x16u);
    }

    v9 = objc_alloc(MEMORY[0x277D05968]);
    v10 = [v3 assertion];
    v11 = *(a1 + 32);
    v12 = [v3 details];
    v13 = [v3 source];
    v14 = [v9 initWithAssertion:v10 invalidationDate:v11 details:v12 source:v13 reason:objc_msgSend(v3 reasonOverride:{"reason"), objc_msgSend(v3, "reasonOverride")}];

    v3 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

id __75__DNDSMutableModeAssertionStore_DateOperations__sanitizeDatesForThreshold___block_invoke_5(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 requestDate];
  v6 = [v4 compare:v5];

  if (v6 == -1)
  {
    v7 = DNDSLogAssertionStore;
    if (os_log_type_enabled(DNDSLogAssertionStore, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Will sanitize invalidation request date: date=%{public}@ invalidationRequest=%{public}@", &v16, 0x16u);
    }

    v9 = [v3 predicate];
    v10 = *(a1 + 32);
    v11 = [v3 details];
    v12 = [v3 source];
    v13 = +[DNDSModeAssertionInvalidationRequest requestWithPredicate:requestDate:details:source:reason:reasonOverride:](DNDSModeAssertionInvalidationRequest, "requestWithPredicate:requestDate:details:source:reason:reasonOverride:", v9, v10, v11, v12, [v3 reason], objc_msgSend(v3, "reasonOverride"));

    v3 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end