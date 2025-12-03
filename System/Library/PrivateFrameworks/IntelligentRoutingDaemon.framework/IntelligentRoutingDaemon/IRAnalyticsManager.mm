@interface IRAnalyticsManager
+ (BOOL)_isClientAllowedCA:(id)a;
+ (BOOL)logUiEvent:(id)event withService:(id)service forCandidateIdentifier:(id)identifier systemStateManager:(id)manager candidatesContainer:(id)container inspections:(id)inspections statisticsManager:(id)statisticsManager historyEventsContainer:(id)self0;
+ (void)sendEventLazyForEventIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier analytics:(id)analytics;
- (IRAnalyticsManager)initWithBackgroundActivitiesManager:(id)manager;
- (IRBackgroundActivitiesManager)backgroundActivitiesManager;
- (void)_handleCoreAnalyticsXPCActivity;
@end

@implementation IRAnalyticsManager

+ (BOOL)logUiEvent:(id)event withService:(id)service forCandidateIdentifier:(id)identifier systemStateManager:(id)manager candidatesContainer:(id)container inspections:(id)inspections statisticsManager:(id)statisticsManager historyEventsContainer:(id)self0
{
  v48 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  serviceCopy = service;
  identifierCopy = identifier;
  managerCopy = manager;
  containerCopy = container;
  inspectionsCopy = inspections;
  statisticsManagerCopy = statisticsManager;
  eventsContainerCopy = eventsContainer;
  clientIdentifier = [serviceCopy clientIdentifier];
  LOBYTE(inspections) = [IRAnalyticsManager _isClientAllowedCA:clientIdentifier];

  if (inspections)
  {
    v22 = IRCreateServicePackageAdapter([serviceCopy servicePackage]);
    v23 = objc_opt_respondsToSelector();
    if (v23)
    {
      v24 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        log = v24;
        serviceIdentifier = [serviceCopy serviceIdentifier];
        clientIdentifier2 = [serviceCopy clientIdentifier];
        *buf = 138412546;
        v45 = serviceIdentifier;
        v46 = 2112;
        v47 = clientIdentifier2;
        _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_DEFAULT, "#analytics, Starting ui event analytics for service: %@, client: %@", buf, 0x16u);
      }

      v25 = [v22 uiAnalyticsWithEvent:eventCopy forCandidateIdentifier:identifierCopy systemStateManager:managerCopy candidatesContainer:containerCopy inspections:inspectionsCopy statisticsManager:statisticsManagerCopy service:serviceCopy historyEventsContainer:eventsContainerCopy];
      [serviceCopy clientIdentifier];
      loga = v22;
      v26 = eventsContainerCopy;
      v27 = statisticsManagerCopy;
      v28 = inspectionsCopy;
      v29 = containerCopy;
      v31 = v30 = managerCopy;
      [IRAnalyticsManager sendEventLazyForEventIdentifier:@"com.apple.com.apple.intelligentroutingd.CoreAnalyticsUiEvent" clientIdentifier:v31 analytics:v25];

      managerCopy = v30;
      containerCopy = v29;
      inspectionsCopy = v28;
      statisticsManagerCopy = v27;
      eventsContainerCopy = v26;
      v22 = loga;
    }
  }

  else
  {
    v32 = *MEMORY[0x277D21260];
    v23 = 0;
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      serviceIdentifier2 = [serviceCopy serviceIdentifier];
      clientIdentifier3 = [serviceCopy clientIdentifier];
      *buf = 138412546;
      v45 = serviceIdentifier2;
      v46 = 2112;
      v47 = clientIdentifier3;
      _os_log_impl(&dword_25543D000, v33, OS_LOG_TYPE_DEFAULT, "#analytics, Skipping ui event analytics for service: %@, client: %@", buf, 0x16u);

      v23 = 0;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

+ (void)sendEventLazyForEventIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier analytics:(id)analytics
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  analyticsCopy = analytics;
  v10 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = identifierCopy;
    v20 = 2112;
    v21 = clientIdentifierCopy;
    v22 = 2112;
    v23 = analyticsCopy;
    _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_DEFAULT, "#analytics, [%@]:[%@]: Preparing to submit analytics: %@", buf, 0x20u);
  }

  v15 = identifierCopy;
  v16 = clientIdentifierCopy;
  v17 = analyticsCopy;
  v11 = analyticsCopy;
  v12 = clientIdentifierCopy;
  v13 = identifierCopy;
  AnalyticsSendEventLazy();

  v14 = *MEMORY[0x277D85DE8];
}

id __81__IRAnalyticsManager_sendEventLazyForEventIdentifier_clientIdentifier_analytics___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_25543D000, v2, OS_LOG_TYPE_DEFAULT, "#analytics, [%@]:[%@]: Submitting analytics: %@", &v9, 0x20u);
  }

  v6 = a1[6];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)_isClientAllowedCA:(id)a
{
  aCopy = a;
  if ([&unk_286768EC0 containsObject:aCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [aCopy containsString:@"com.apple.mediaremoted"];
  }

  return v4;
}

- (IRAnalyticsManager)initWithBackgroundActivitiesManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = IRAnalyticsManager;
  v5 = [(IRAnalyticsManager *)&v13 init];
  if (v5)
  {
    v6 = +[IRPreferences shared];
    coreAnalyticsXPCActivityInterval = [v6 coreAnalyticsXPCActivityInterval];
    longLongValue = [coreAnalyticsXPCActivityInterval longLongValue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__IRAnalyticsManager_initWithBackgroundActivitiesManager___block_invoke;
    v11[3] = &unk_2797E0BA8;
    v9 = v5;
    v12 = v9;
    [managerCopy registerForRepeatingBackgroundXPCActivityWithIdentifier:@"com.apple.intelligentroutingd.CoreAnalyticsXPCActivityIdentifier" interval:longLongValue isDiskIntensive:1 isMemoryIntensive:1 handler:v11];

    [(IRAnalyticsManager *)v9 setBackgroundActivitiesManager:managerCopy];
  }

  return v5;
}

- (void)_handleCoreAnalyticsXPCActivity
{
  backgroundActivitiesManager = [(IRAnalyticsManager *)self backgroundActivitiesManager];
  server = [backgroundActivitiesManager server];
  [server performXPCActivityUnderServerContext:&__block_literal_global];
}

void __53__IRAnalyticsManager__handleCoreAnalyticsXPCActivity__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = +[IRPreferences shared];
  v7 = [v6 coreAnalyticsEnable];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = os_transaction_create();
    v10 = MEMORY[0x277D21260];
    v11 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_DEFAULT, "#analytics, Handling weekly analytics", buf, 2u);
    }

    if ([v4 connectToStore])
    {
      v12 = [IRServiceStore fetchAllServicesWithPersistenceManager:v4];
      if (v12)
      {
        v13 = +[IRPreferences shared];
        v14 = [v13 coreAnalyticsWeeklyMobileAssetVersion];

        v15 = +[IRPreferences shared];
        v16 = [v15 mobileAssetVersion];

        if (v14 == v16 || ([v14 isEqual:v16] & 1) != 0)
        {
          v17 = 1;
        }

        else
        {
          v21 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = v14;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_25543D000, v21, OS_LOG_TYPE_DEFAULT, "#analytics, Skipping weekly analytics due to mobile asset versioning missmatch: prev: %@, new: %@", buf, 0x16u);
          }

          v22 = +[IRPreferences shared];
          [v22 updateAndNotifyKey:@"coreAnalyticsWeeklyMobileAssetVersion" withObject:v16];

          v17 = 0;
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __53__IRAnalyticsManager__handleCoreAnalyticsXPCActivity__block_invoke_51;
        v24[3] = &unk_2797E0BF0;
        v25 = v4;
        v26 = v5;
        v27 = v17;
        [v12 enumerateObjectsUsingBlock:v24];
      }

      else
      {
        v20 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEFAULT, "#analytics, 0 services found during weekly analytics", buf, 2u);
        }
      }
    }

    else
    {
      v19 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        __53__IRAnalyticsManager__handleCoreAnalyticsXPCActivity__block_invoke_cold_1(v19);
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25543D000, v18, OS_LOG_TYPE_DEFAULT, "#analytics, Weekly analytics disabled", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __53__IRAnalyticsManager__handleCoreAnalyticsXPCActivity__block_invoke_51(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IRCreateServicePackageAdapter([v3 servicePackage]);
  v5 = [v3 clientIdentifier];
  if ([IRAnalyticsManager _isClientAllowedCA:v5])
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v3 serviceIdentifier];
        v10 = [v3 clientIdentifier];
        *buf = 138412546;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEFAULT, "#analytics, Starting weekly analytics for service: %@, client: %@", buf, 0x16u);
      }

      v11 = [IRServiceStore alloc];
      v12 = *(a1 + 32);
      v13 = [v3 serviceIdentifier];
      v14 = [(IRServiceStore *)v11 initWithPersistenceManager:v12 serviceIdentifier:v13];

      v15 = *(a1 + 40);
      v16 = [v3 serviceIdentifier];
      v17 = [v15 objectForKeyedSubscript:v16];

      if (v17)
      {
        v18 = [v17 getStatistics];
        [v17 clearStatistics];
      }

      else
      {
        v18 = [(IRServiceStore *)v14 fetchStatistics];
        v23 = [MEMORY[0x277CBEAA8] date];
        v24 = [IRStatisticsDO statisticsDOWithNumberOfContextChanges:0 numberOfMiLoPredictions:0 numberOfMiLoPredictionsInUpdatesMode:0 lastMiLoLSLItems:0 lastMiLoQualityReasonBitmap:0 lastMiLoQuality:0 lastMiLoModels:0 timeInUpdatesModeInSeconds:0 numberOfPickerChoiceEvents:0 numberOfCorrectPickerChoiceEvents:0 lastClearDate:v23];
        [(IRServiceStore *)v14 updateStatistics:v24];
      }

      if (*(a1 + 48) == 1)
      {
        v25 = [v4 weeklyAnalyticsWithServiceStore:v14 statistics:v18 service:v3];
        v26 = [v3 clientIdentifier];
        [IRAnalyticsManager sendEventLazyForEventIdentifier:@"com.apple.intelligentroutingd.CoreAnalyticsWeekly" clientIdentifier:v26 analytics:v25];
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v19 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v3 serviceIdentifier];
    v22 = [v3 clientIdentifier];
    *buf = 138412546;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEFAULT, "#analytics, Skipping weekly analytics for service: %@, client: %@", buf, 0x16u);
  }

LABEL_14:

  v27 = *MEMORY[0x277D85DE8];
}

- (IRBackgroundActivitiesManager)backgroundActivitiesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundActivitiesManager);

  return WeakRetained;
}

@end