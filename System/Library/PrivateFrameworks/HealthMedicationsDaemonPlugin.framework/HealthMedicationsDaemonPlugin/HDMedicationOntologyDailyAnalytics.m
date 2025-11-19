@interface HDMedicationOntologyDailyAnalytics
- (HDMedicationOntologyDailyAnalytics)init;
- (HDMedicationOntologyDailyAnalytics)initWithProfile:(id)a3;
- (NSString)eventName;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)shardRegistry;
@end

@implementation HDMedicationOntologyDailyAnalytics

- (HDMedicationOntologyDailyAnalytics)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationOntologyDailyAnalytics)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDMedicationOntologyDailyAnalytics;
  v5 = [(HDMedicationOntologyDailyAnalytics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (NSString)eventName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v30[4] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:&unk_2863C2E40];
  v7 = MEMORY[0x277D10B20];
  v8 = *MEMORY[0x277CCC5D8];
  v9 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v30[0] = v9;
  v10 = *MEMORY[0x277CCC600];
  v11 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v30[1] = v11;
  v12 = *MEMORY[0x277CCC5E0];
  v13 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v30[2] = v13;
  v14 = *MEMORY[0x277CCC5F8];
  v15 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v30[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v17 = [v7 predicateMatchingAnyPredicates:v16];

  v18 = [(HDMedicationOntologyDailyAnalytics *)self shardRegistry];
  v29 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __87__HDMedicationOntologyDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke;
  v27[3] = &unk_2796CE878;
  v19 = v6;
  v28 = v19;
  LOBYTE(v13) = [v18 enumerateEntriesWithPredicate:v17 orderingTerms:0 error:&v29 enumerationHandler:v27];
  v20 = v29;

  if (v13)
  {
    v21 = v19;
  }

  else
  {
    _HKInitializeLogging();
    v22 = HKLogMedication();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationOntologyDailyAnalytics *)self makeUnrestrictedEventPayloadWithDataSource:v20 error:v22];
    }

    v23 = v20;
    if (v23)
    {
      if (a4)
      {
        v24 = v23;
        *a4 = v23;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v21 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __87__HDMedicationOntologyDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC5D8]];

  if (v5)
  {
    v6 = @"shardVersionCoreMeds";
    v7 = @"desiredStateCoreMeds";
    v8 = @"availableStateCoreMeds";
LABEL_9:
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "availableState")}];
    [*(a1 + 32) setObject:v15 forKeyedSubscript:v8];

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "desiredState")}];
    [*(a1 + 32) setObject:v16 forKeyedSubscript:v7];

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "currentVersion")}];
    [*(a1 + 32) setObject:v17 forKeyedSubscript:v6];

    goto LABEL_10;
  }

  v9 = [v3 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCC600]];

  if (v10)
  {
    v6 = @"shardVersionMedsScaning";
    v7 = @"desiredStateMedsScanning";
    v8 = @"availableStateMedsScanning";
    goto LABEL_9;
  }

  v11 = [v3 identifier];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC5E0]];

  if (v12)
  {
    v6 = @"shardVersionInteractions";
    v7 = @"desiredStateInteractions";
    v8 = @"availableStateInteractions";
    goto LABEL_9;
  }

  v13 = [v3 identifier];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCC5F8]];

  if (v14)
  {
    v6 = @"shardVersionMedsEducation";
    v7 = @"desiredStateMedsEducation";
    v8 = @"availableStateMedsEducation";
    goto LABEL_9;
  }

LABEL_10:

  return 1;
}

- (id)shardRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained daemon];
  v4 = [v3 ontologyUpdateCoordinator];
  v5 = [v4 shardRegistry];

  return v5;
}

- (void)makeUnrestrictedEventPayloadWithDataSource:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25181C000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error enumerating shard registry entries: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end