@interface DNDSScheduleManager
- (DNDSScheduleManager)initWithModeAssertionManager:(id)manager;
- (DNDSScheduleManagerDataSource)dataSource;
- (id)_scheduleManagerClientIdentifierForModeIdentifier:(id)identifier;
- (void)_refreshWithScheduleSettings:(id)settings modeIdentifier:(id)identifier currentScheduleAssertion:(id)assertion context:(id)context;
- (void)_refreshWithScheduleSettingsByModeIdentifier:(id)identifier context:(id)context;
- (void)refresh;
@end

@implementation DNDSScheduleManager

- (DNDSScheduleManager)initWithModeAssertionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = DNDSScheduleManager;
  v6 = [(DNDSScheduleManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeAssertionManager, manager);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentScheduleSettingsByModeIdentifier = v7->_currentScheduleSettingsByModeIdentifier;
    v7->_currentScheduleSettingsByModeIdentifier = dictionary;
  }

  return v7;
}

- (void)refresh
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v5 = 138543618;
  selfCopy = self;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Unable to update assertions for schedule: error=%{public}@, settings=%{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __30__DNDSScheduleManager_refresh__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v6 = [v5 scheduleSettingsByModeIdentifierForScheduleManager:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(a1 + 32) _refreshWithScheduleSettingsByModeIdentifier:*(*(*(a1 + 40) + 8) + 40) context:v4];
  return 1;
}

- (void)_refreshWithScheduleSettingsByModeIdentifier:(id)identifier context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  allKeys = [identifierCopy allKeys];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __76__DNDSScheduleManager__refreshWithScheduleSettingsByModeIdentifier_context___block_invoke;
  v37[3] = &unk_278F8B508;
  selfCopy = self;
  v37[4] = self;
  v10 = [allKeys bs_map:v37];

  v27 = v10;
  [MEMORY[0x277D05938] predicateForModeAssertionsWithClientIdentifiers:v10];
  v26 = v11 = contextCopy;
  v12 = [contextCopy modeAssertionsMatchingPredicate:?];
  v30 = identifierCopy;
  v13 = [identifierCopy mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    v17 = *MEMORY[0x277D05868];
    v28 = *MEMORY[0x277D05830];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        details = [v19 details];
        modeIdentifier = [details modeIdentifier];

        if ([modeIdentifier isEqualToString:v17])
        {
          v22 = v28;

          modeIdentifier = v22;
        }

        v23 = [v30 objectForKeyedSubscript:modeIdentifier];
        [(DNDSScheduleManager *)selfCopy _refreshWithScheduleSettings:v23 modeIdentifier:modeIdentifier currentScheduleAssertion:v19 context:v11];
        [v13 setObject:0 forKeyedSubscript:modeIdentifier];
      }

      v15 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v15);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__DNDSScheduleManager__refreshWithScheduleSettingsByModeIdentifier_context___block_invoke_2;
  v31[3] = &unk_278F8B530;
  v31[4] = selfCopy;
  v32 = v11;
  v24 = v11;
  [v13 enumerateKeysAndObjectsUsingBlock:v31];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithScheduleSettings:(id)settings modeIdentifier:(id)identifier currentScheduleAssertion:(id)assertion context:(id)context
{
  v73 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  assertionCopy = assertion;
  contextCopy = context;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v13 = settingsCopy;
  v14 = [v13 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v65;
    v17 = 1;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v64 + 1) + 8 * i);
        [v19 scheduleEnabledSetting];
        if (DNDResolvedScheduleEnabledSetting() == 2)
        {
          v17 = 2;
        }

        creationDate = [v19 creationDate];
        if ([creationDate compare:distantFuture] == -1)
        {
          v21 = creationDate;

          distantFuture = v21;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 1;
  }

  v22 = identifierCopy;
  v23 = [(NSMutableDictionary *)self->_currentScheduleSettingsByModeIdentifier objectForKeyedSubscript:identifierCopy];
  if (![v23 isEqual:v13] || !assertionCopy && v17 == 2 || assertionCopy && v17 == 1)
  {
    v24 = [v13 copy];
    [(NSMutableDictionary *)self->_currentScheduleSettingsByModeIdentifier setObject:v24 forKeyedSubscript:identifierCopy];

    v60 = [(DNDSScheduleManager *)self _scheduleManagerClientIdentifierForModeIdentifier:identifierCopy];
    v25 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:v60 deviceIdentifier:0];
    v26 = v25;
    if (v17 == 2)
    {
      v56 = v25;
      v27 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v27 setIdentifier:@"schedule"];
      v28 = [MEMORY[0x277D05970] lifetimeMatchingScheduleWithIdentifier:*MEMORY[0x277D05838]];
      [v27 setLifetime:v28];

      v29 = *MEMORY[0x277D05830];
      if (*MEMORY[0x277D05830] == identifierCopy || identifierCopy && v29 && [identifierCopy isEqual:*MEMORY[0x277D05830]])
      {
        firstObject = [v13 firstObject];
        [firstObject bedtimeBehaviorEnabledSetting];
        v31 = DNDResolvedBedtimeBehaviorEnabledSetting();

        v32 = *MEMORY[0x277D05868];
        if (v31 != 2)
        {
          v32 = v29;
        }

        v22 = v32;
      }

      identifierCopy = v22;
      [v27 setModeIdentifier:{v22, v56}];
      [v27 setReason:2];
      invalidationDate = distantFuture;
      details = [assertionCopy details];
      if ([details isEqual:v27])
      {
        startDate = [assertionCopy startDate];
        v36 = [startDate isEqual:invalidationDate];

        if (v36)
        {
          v37 = assertionCopy;
          v26 = v57;
LABEL_37:

          v22 = identifierCopy;
          goto LABEL_38;
        }
      }

      else
      {
      }

      v59 = v23;
      v45 = MEMORY[0x277D05968];
      v71 = v60;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
      [v45 predicateForModeAssertionInvalidationsWithAssertionClientIdentifiers:v46];
      v47 = v63 = v27;

      v43 = 0;
      v26 = v57;
      do
      {
        v48 = invalidationDate;
        v49 = v43;
        v43 = [contextCopy takeAssertionWithDetails:v63 source:v57 startDate:invalidationDate];

        v50 = [contextCopy modeAssertionInvalidationsMatchingPredicate:v47];
        firstObject2 = [v50 firstObject];
        invalidationDate = [firstObject2 invalidationDate];

        assertions = [v43 assertions];
        v53 = [assertions count];
      }

      while (!v53);

      v37 = assertionCopy;
      v27 = v63;
      v23 = v59;
    }

    else
    {
      v37 = assertionCopy;
      if (!assertionCopy)
      {
LABEL_38:

        goto LABEL_39;
      }

      v58 = v23;
      v38 = distantFuture;
      [assertionCopy UUID];
      v39 = contextCopy;
      v41 = v40 = v26;
      v70 = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      invalidationDate = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:v42];

      v26 = v40;
      contextCopy = v39;
      v27 = v38;
      v23 = v58;
      v43 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:invalidationDate requestDate:v27 source:v26 reason:3];
      v44 = [contextCopy invalidateAssertionsForRequest:v43];
    }

    goto LABEL_37;
  }

  v55 = DNDSLogSchedule;
  if (os_log_type_enabled(DNDSLogSchedule, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v69 = v13;
    _os_log_impl(&dword_24912E000, v55, OS_LOG_TYPE_DEFAULT, "Existing schedule assertion does not need to change: settings=%{public}@", buf, 0xCu);
  }

  v37 = assertionCopy;
LABEL_39:

  v54 = *MEMORY[0x277D85DE8];
}

- (id)_scheduleManagerClientIdentifierForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (*MEMORY[0x277D05830] == identifierCopy || identifierCopy && *MEMORY[0x277D05830] && ([identifierCopy isEqual:?] & 1) != 0)
  {
    v5 = @"com.apple.donotdisturb.private.schedule";
  }

  else
  {
    v5 = [v4 stringByAppendingString:@".private.schedule"];
  }

  return v5;
}

- (DNDSScheduleManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end