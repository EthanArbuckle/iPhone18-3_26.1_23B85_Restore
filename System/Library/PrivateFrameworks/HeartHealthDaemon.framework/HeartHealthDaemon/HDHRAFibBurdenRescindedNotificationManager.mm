@interface HDHRAFibBurdenRescindedNotificationManager
- (BOOL)_isFeatureRescindedWithRequirementsEvaluation:(id)evaluation;
- (BOOL)_isFeatureUnavailableForNonRescindedReasonsWithRequirementsEvaluation:(id)evaluation;
- (BOOL)_unitTesting_postNotificationRequestIfNecessary:(id)necessary;
- (HDHRAFibBurdenRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider;
- (HDHRAFibBurdenRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider keyValueDomain:(id)domain protectedDataOperation:(id)operation;
- (id)_rescindedAlertBodyKeyForUnsatisfiedRequirementIdentifiers:(id)identifiers;
- (id)_rescindedAlertTitleKeyForUnsatisfiedRequirementIdentifiers:(id)identifiers;
- (id)_rescindedRequirementIdentifiers;
- (void)_operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:(id)status;
- (void)_operation_pullFeatureStatusAndPresentAlertIfNeeded;
- (void)_sendNotificationRequest:(id)request;
- (void)_showRescindedNotificationWithTitleKey:(id)key bodyKey:(id)bodyKey;
- (void)dealloc;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDHRAFibBurdenRescindedNotificationManager

- (HDHRAFibBurdenRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider
{
  v6 = MEMORY[0x277D10718];
  providerCopy = provider;
  profileCopy = profile;
  v9 = [v6 hdhr_aFibBurdenProtectedLocalDomainForProfile:profileCopy];
  v10 = objc_alloc(MEMORY[0x277D10800]);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 initWithProfile:profileCopy debugIdentifier:v12 delegate:0];

  v14 = [(HDHRAFibBurdenRescindedNotificationManager *)self initWithProfile:profileCopy featureStatusProvider:providerCopy keyValueDomain:v9 protectedDataOperation:v13];
  return v14;
}

- (HDHRAFibBurdenRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider keyValueDomain:(id)domain protectedDataOperation:(id)operation
{
  profileCopy = profile;
  providerCopy = provider;
  domainCopy = domain;
  operationCopy = operation;
  v18.receiver = self;
  v18.super_class = HDHRAFibBurdenRescindedNotificationManager;
  v14 = [(HDHRAFibBurdenRescindedNotificationManager *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_featureStatusProvider, provider);
    objc_storeStrong(&v15->_localKeyValueDomain, domain);
    objc_storeStrong(&v15->_protectedDataOperation, operation);
    [(HDProtectedDataOperation *)v15->_protectedDataOperation setDelegate:v15];
    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    [WeakRetained registerProfileReadyObserver:v15 queue:0];
  }

  return v15;
}

- (void)dealloc
{
  [(HKFeatureStatusProviding *)self->_featureStatusProvider unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = HDHRAFibBurdenRescindedNotificationManager;
  [(HDHRAFibBurdenRescindedNotificationManager *)&v3 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  [(HKFeatureStatusProviding *)self->_featureStatusProvider registerObserver:self queue:0];
  protectedDataOperation = self->_protectedDataOperation;
  v8 = 0;
  v5 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenRescindedNotificationManager profileDidBecomeReady:];
    }
  }
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  v17 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  _HKInitializeLogging();
  v6 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = statusCopy;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Feature status did change to: %@", buf, 0x16u);
  }

  protectedDataOperation = self->_protectedDataOperation;
  v12 = 0;
  v8 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenRescindedNotificationManager featureStatusProviding:didUpdateFeatureStatus:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  [(HDHRAFibBurdenRescindedNotificationManager *)self _operation_pullFeatureStatusAndPresentAlertIfNeeded];
  completionCopy[2]();
}

- (void)_operation_pullFeatureStatusAndPresentAlertIfNeeded
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Failed to load feature status with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:(id)status
{
  v34 = *MEMORY[0x277D85DE8];
  requirementsEvaluationByContext = [status requirementsEvaluationByContext];
  v5 = [requirementsEvaluationByContext objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];

  if (![(HDHRAFibBurdenRescindedNotificationManager *)self _isFeatureUnavailableForNonRescindedReasonsWithRequirementsEvaluation:v5])
  {
    localKeyValueDomain = self->_localKeyValueDomain;
    v29 = 0;
    v8 = [(HDKeyValueDomain *)localKeyValueDomain dateForKey:@"HDHRAFibBurdenNotificationsDisabledNotificationShownDateKey" error:&v29];
    v9 = v29;
    if (v9)
    {
      _HKInitializeLogging();
      v10 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [HDHRAFibBurdenRescindedNotificationManager _operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
      }

      goto LABEL_9;
    }

    if ([(HDHRAFibBurdenRescindedNotificationManager *)self _isFeatureRescindedWithRequirementsEvaluation:v5])
    {
      _HKInitializeLogging();
      v12 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%@] AFib Burden is rescinded (last shown date: %@)", buf, 0x16u);
      }

      if (v8)
      {
        goto LABEL_9;
      }

      unsatisfiedRequirementIdentifiers = [v5 unsatisfiedRequirementIdentifiers];
      v14 = [(HDHRAFibBurdenRescindedNotificationManager *)self _rescindedAlertTitleKeyForUnsatisfiedRequirementIdentifiers:unsatisfiedRequirementIdentifiers];
      v15 = [(HDHRAFibBurdenRescindedNotificationManager *)self _rescindedAlertBodyKeyForUnsatisfiedRequirementIdentifiers:unsatisfiedRequirementIdentifiers];
      v16 = v15;
      if (!v14 || !v15)
      {
        unsatisfiedRequirementIdentifiers2 = [v5 unsatisfiedRequirementIdentifiers];
        v18 = [unsatisfiedRequirementIdentifiers2 componentsJoinedByString:{@", "}];

        _HKInitializeLogging();
        v19 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [HDHRAFibBurdenRescindedNotificationManager _operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
        }

        v14 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_TITLE";
        v16 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_BODY";
      }

      [(HDHRAFibBurdenRescindedNotificationManager *)self _showRescindedNotificationWithTitleKey:v14 bodyKey:v16];
      v20 = self->_localKeyValueDomain;
      date = [MEMORY[0x277CBEAA8] date];
      v28 = 0;
      [(HDKeyValueDomain *)v20 setDate:date forKey:@"HDHRAFibBurdenNotificationsDisabledNotificationShownDateKey" error:&v28];
      v22 = v28;

      if (v22)
      {
        _HKInitializeLogging();
        v23 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [HDHRAFibBurdenRescindedNotificationManager _operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
        }
      }
    }

    else
    {
      if (!v8)
      {
LABEL_9:
        [(HDHRAFibBurdenRescindedNotificationManager *)self _unitTesting_postNotificationRequestIfNecessary:0];
LABEL_10:

        goto LABEL_11;
      }

      _HKInitializeLogging();
      v24 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_229486000, v24, OS_LOG_TYPE_DEFAULT, "[%@] AFib Burden is not rescinded (last shown date: %@)", buf, 0x16u);
      }

      [(HDHRAFibBurdenRescindedNotificationManager *)self _showRescindedNotificationWithTitleKey:@"AFIB_BURDEN_REENABLED_NOTIFICATION_TITLE" bodyKey:@"AFIB_BURDEN_REENABLED_NOTIFICATION_BODY"];
      v25 = self->_localKeyValueDomain;
      v26 = [MEMORY[0x277CBEB98] setWithObject:@"HDHRAFibBurdenNotificationsDisabledNotificationShownDateKey"];
      v27 = 0;
      [(HDKeyValueDomain *)v25 removeValuesForKeys:v26 error:&v27];
      unsatisfiedRequirementIdentifiers = v27;

      if (!unsatisfiedRequirementIdentifiers)
      {
LABEL_33:

        goto LABEL_10;
      }

      _HKInitializeLogging();
      v14 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HDHRAFibBurdenRescindedNotificationManager _operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
      }
    }

    goto LABEL_33;
  }

  _HKInitializeLogging();
  v6 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%@] AFib Burden is unavailable for non-rescinding reasons", buf, 0xCu);
  }

  [(HDHRAFibBurdenRescindedNotificationManager *)self _unitTesting_postNotificationRequestIfNecessary:0];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_showRescindedNotificationWithTitleKey:(id)key bodyKey:(id)bodyKey
{
  v6 = MEMORY[0x277CCACA8];
  bodyKeyCopy = bodyKey;
  v8 = MEMORY[0x277CBEBF8];
  v21 = [v6 localizedUserNotificationStringForKey:key arguments:MEMORY[0x277CBEBF8]];
  v9 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:bodyKeyCopy arguments:v8];

  v10 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v10 setTitle:v21];
  [v10 setBody:v9];
  v11 = *MEMORY[0x277D13038];
  [v10 setCategoryIdentifier:*MEMORY[0x277D13038]];
  [v10 setThreadIdentifier:v11];
  v12 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  date = [MEMORY[0x277CBEAA8] date];
  [v10 setSound:v12];
  [v10 setDate:date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = [currentCalendar hk_dateByAddingDays:1 toDate:date];
  [v10 setExpirationDate:v15];

  v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
  v17 = [MEMORY[0x277CCD0C0] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v18 = _HKCreateURLForSampleType();
  absoluteString = [v18 absoluteString];
  [v16 setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CCE4E0]];

  [v16 setObject:&unk_283CD2830 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v10 setUserInfo:v16];
  v20 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v11 content:v10 trigger:0];
  [(HDHRAFibBurdenRescindedNotificationManager *)self _sendNotificationRequest:v20];
}

- (void)_sendNotificationRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDHRAFibBurdenRescindedNotificationManager__sendNotificationRequest___block_invoke;
  v6[3] = &unk_27865FE98;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __71__HDHRAFibBurdenRescindedNotificationManager__sendNotificationRequest___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%@] About to show AFib Burden rescind notification", buf, 0xCu);
  }

  if (([*(a1 + 32) _unitTesting_postNotificationRequestIfNecessary:*(a1 + 40)] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v6 = [WeakRetained notificationManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HDHRAFibBurdenRescindedNotificationManager__sendNotificationRequest___block_invoke_326;
    v9[3] = &unk_278660408;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    [v6 postNotificationWithRequest:v7 completion:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __71__HDHRAFibBurdenRescindedNotificationManager__sendNotificationRequest___block_invoke_326(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__HDHRAFibBurdenRescindedNotificationManager__sendNotificationRequest___block_invoke_326_cold_1(a1);
    }
  }
}

- (BOOL)_unitTesting_postNotificationRequestIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  unitTesting_postNotificationHandler = [(HDHRAFibBurdenRescindedNotificationManager *)self unitTesting_postNotificationHandler];
  v6 = unitTesting_postNotificationHandler;
  if (unitTesting_postNotificationHandler)
  {
    (*(unitTesting_postNotificationHandler + 16))(unitTesting_postNotificationHandler, necessaryCopy);
  }

  return v6 != 0;
}

- (id)_rescindedRequirementIdentifiers
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CCBFD0];
  v9[0] = *MEMORY[0x277CCBF30];
  v9[1] = v3;
  v4 = *MEMORY[0x277CCBF00];
  v9[2] = *MEMORY[0x277CCBF08];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v2 setWithArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_rescindedAlertTitleKeyForUnsatisfiedRequirementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy containsObject:*MEMORY[0x277CCBF00]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_WATCH_UNSUPPORTED_REGION_ALERT_TITLE";
  }

  else if ([identifiersCopy containsObject:*MEMORY[0x277CCBF08]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_UNSUPPORTED_REGION_ALERT_TITLE";
  }

  else if ([identifiersCopy containsObject:*MEMORY[0x277CCBF30]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_REMOTELY_DISABLED_ALERT_TITLE";
  }

  else if ([identifiersCopy containsObject:*MEMORY[0x277CCBFD0]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_SEED_EXPIRED_ALERT_TITLE";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_rescindedAlertBodyKeyForUnsatisfiedRequirementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy containsObject:*MEMORY[0x277CCBF00]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_WATCH_UNSUPPORTED_REGION_ALERT_BODY";
  }

  else if ([identifiersCopy containsObject:*MEMORY[0x277CCBF08]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_UNSUPPORTED_REGION_ALERT_BODY";
  }

  else if ([identifiersCopy containsObject:*MEMORY[0x277CCBF30]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_REMOTELY_DISABLED_ALERT_BODY";
  }

  else if ([identifiersCopy containsObject:*MEMORY[0x277CCBFD0]])
  {
    v4 = @"AFIB_BURDEN_RESCINDED_NOTIFICATION_SEED_EXPIRED_ALERT_BODY";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isFeatureRescindedWithRequirementsEvaluation:(id)evaluation
{
  v24 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  _rescindedRequirementIdentifiers = [(HDHRAFibBurdenRescindedNotificationManager *)self _rescindedRequirementIdentifiers];
  unsatisfiedRequirementIdentifiers = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v7 = [unsatisfiedRequirementIdentifiers componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v8 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking feature status for rescinding reasons: %{public}@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  unsatisfiedRequirementIdentifiers2 = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v10 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(unsatisfiedRequirementIdentifiers2);
        }

        if ([_rescindedRequirementIdentifiers containsObject:*(*(&v15 + 1) + 8 * i)])
        {
          LOBYTE(v10) = 1;
          goto LABEL_13;
        }
      }

      v10 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_isFeatureUnavailableForNonRescindedReasonsWithRequirementsEvaluation:(id)evaluation
{
  v24 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  _rescindedRequirementIdentifiers = [(HDHRAFibBurdenRescindedNotificationManager *)self _rescindedRequirementIdentifiers];
  unsatisfiedRequirementIdentifiers = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v7 = [unsatisfiedRequirementIdentifiers componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v8 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking feature status for non-rescinding reasons: %{public}@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  unsatisfiedRequirementIdentifiers2 = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v10 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(unsatisfiedRequirementIdentifiers2);
        }

        if (![_rescindedRequirementIdentifiers containsObject:*(*(&v15 + 1) + 8 * i)])
        {
          LOBYTE(v10) = 1;
          goto LABEL_13;
        }
      }

      v10 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)profileDidBecomeReady:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_11();
  v1 = v0;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%@] Error requesting maintenance work for healthd start: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)featureStatusProviding:didUpdateFeatureStatus:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_11();
  v1 = v0;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%@] Error requesting maintenance work for feature status change: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Could not load alert's last shown date with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Failed to reset last shown date with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  v4 = v0;
  _os_log_fault_impl(&dword_229486000, v1, OS_LOG_TYPE_FAULT, "[%@] Computing notification for unsupported reasons: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_operation_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Failed to save last shown date with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __71__HDHRAFibBurdenRescindedNotificationManager__sendNotificationRequest___block_invoke_326_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_0_11();
  v3 = v2;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v4, v5, "[%@] error requesting notification: %@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end