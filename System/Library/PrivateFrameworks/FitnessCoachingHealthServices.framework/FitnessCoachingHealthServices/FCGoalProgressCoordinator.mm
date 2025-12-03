@interface FCGoalProgressCoordinator
- (FCGoalProgressCoordinator)initWithDateProvider:(id)provider debouncer:(id)debouncer profile:(id)profile scheduler:(id)scheduler serviceQueue:(id)queue store:(id)store typicalDayProvider:(id)dayProvider;
- (FCGoalProgressCoordinatorDelegate)delegate;
- (id)_minimumActiveDaysOverride;
- (id)lastFiredDateForProgressEventIdentifier:(id)identifier;
- (unint64_t)currentExperienceType;
- (void)_onqueue_handleGoalProgressConfiguration:(id)configuration;
- (void)_onqueue_notificationPosted:(id)posted;
- (void)_onqueue_registerGoalProgressConfiguration:(id)configuration completion:(id)completion;
- (void)_onqueue_rescheduleEvents;
- (void)_onqueue_runEvaluation;
- (void)_onqueue_unscheduleEventIdentifiers:(id)identifiers;
- (void)_todayActivityChanged:(id)changed;
- (void)currentExperienceType;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)debouncerDidFinishDebounce:(id)debounce;
- (void)profileDidBecomeReady:(id)ready;
- (void)registerGoalProgressConfiguration:(id)configuration completion:(id)completion;
- (void)scheduler:(id)scheduler performActivityWithName:(id)name completion:(id)completion;
@end

@implementation FCGoalProgressCoordinator

- (FCGoalProgressCoordinator)initWithDateProvider:(id)provider debouncer:(id)debouncer profile:(id)profile scheduler:(id)scheduler serviceQueue:(id)queue store:(id)store typicalDayProvider:(id)dayProvider
{
  providerCopy = provider;
  debouncerCopy = debouncer;
  profileCopy = profile;
  schedulerCopy = scheduler;
  queueCopy = queue;
  storeCopy = store;
  dayProviderCopy = dayProvider;
  v28.receiver = self;
  v28.super_class = FCGoalProgressCoordinator;
  v19 = [(FCGoalProgressCoordinator *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dateProvider, provider);
    objc_storeStrong(&v20->_debouncer, debouncer);
    objc_storeWeak(&v20->_profile, profileCopy);
    objc_storeStrong(&v20->_scheduler, scheduler);
    objc_storeStrong(&v20->_serviceQueue, queue);
    objc_storeStrong(&v20->_store, store);
    objc_storeStrong(&v20->_typicalDayProvider, dayProvider);
    progressEvents = v20->_progressEvents;
    v20->_progressEvents = 0;

    WeakRetained = objc_loadWeakRetained(&v20->_profile);
    [WeakRetained registerProfileReadyObserver:v20 queue:{v20->_serviceQueue, queueCopy, schedulerCopy, debouncerCopy, providerCopy}];
  }

  return v20;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_progressEvents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        scheduler = self->_scheduler;
        eventIdentifier = [*(*(&v14 + 1) + 8 * v9) eventIdentifier];
        [(FCCXPCActivityScheduler *)scheduler cancelActivityWithName:eventIdentifier];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13.receiver = self;
  v13.super_class = FCGoalProgressCoordinator;
  [(FCGoalProgressCoordinator *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)profileDidBecomeReady:(id)ready
{
  v26 = *MEMORY[0x277D85DE8];
  serviceQueue = self->_serviceQueue;
  readyCopy = ready;
  dispatch_assert_queue_V2(serviceQueue);
  database = [readyCopy database];

  [database addProtectedDataObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__todayActivityChanged_ name:*MEMORY[0x277D09578] object:0];

  currentConfiguration = [(FCGoalProgressStore *)self->_store currentConfiguration];
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC290];
  v10 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = currentConfiguration;
    _os_log_impl(&dword_24B55B000, v10, OS_LOG_TYPE_DEFAULT, "Loaded goal progress configuration %@", &v20, 0xCu);
  }

  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  if (currentConfiguration && ([currentConfiguration expirationDate], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hk_isAfterDate:", coachingDate), v12, (v13 & 1) != 0))
  {
    [(FCGoalProgressCoordinator *)self _onqueue_handleGoalProgressConfiguration:currentConfiguration];
    typicalDayModel = [(FCTypicalDayProvider *)self->_typicalDayProvider typicalDayModel];

    if (typicalDayModel)
    {
      self->_typicalDayModelLoaded = 1;
      [(FCGoalProgressCoordinator *)self _onqueue_rescheduleEvents];
    }

    else
    {
      _HKInitializeLogging();
      v19 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_24B55B000, v19, OS_LOG_TYPE_DEFAULT, "Typical day model has not loaded yet", &v20, 2u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      expirationDate = [currentConfiguration expirationDate];
      v20 = 138412802;
      v21 = currentConfiguration;
      v22 = 2112;
      v23 = expirationDate;
      v24 = 2112;
      v25 = coachingDate;
      _os_log_impl(&dword_24B55B000, v16, OS_LOG_TYPE_DEFAULT, "Invalid loaded configuration %@, expiration %@, now %@", &v20, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    serviceQueue = self->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__FCGoalProgressCoordinator_database_protectedDataDidBecomeAvailable___block_invoke;
    block[3] = &unk_27900B3B0;
    block[4] = self;
    dispatch_async(serviceQueue, block);
  }
}

- (void)_onqueue_runEvaluation
{
  v40 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC290];
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v36) = 0;
    _os_log_impl(&dword_24B55B000, v4, OS_LOG_TYPE_DEFAULT, "Running goal progress evaluation", &v36, 2u);
  }

  if ([(FCGoalProgressDebouncer *)self->_debouncer inProgress])
  {
    _HKInitializeLogging();
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      v6 = "Debounce in progress, not evaluating goal progress";
LABEL_15:
      _os_log_impl(&dword_24B55B000, v5, OS_LOG_TYPE_DEFAULT, v6, &v36, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if ((isProtectedDataAvailable & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      v6 = "Protected data unavailable, not evaluating goal progress";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  currentConfiguration = self->_currentConfiguration;
  if (!currentConfiguration)
  {
    _HKInitializeLogging();
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      v6 = "Not evaluating, goal progress configuration doesn't exist";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  expirationDate = [(FCCGoalProgressConfiguration *)currentConfiguration expirationDate];
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v13 = [expirationDate hk_isBeforeOrEqualToDate:coachingDate];

  if (!v13)
  {
    typicalDayModel = [(FCTypicalDayProvider *)self->_typicalDayProvider typicalDayModel];
    _minimumActiveDaysOverride = [(FCGoalProgressCoordinator *)self _minimumActiveDaysOverride];
    v17 = _minimumActiveDaysOverride;
    if (_minimumActiveDaysOverride)
    {
      integerValue = [_minimumActiveDaysOverride integerValue];
    }

    else
    {
      integerValue = [(FCCGoalProgressConfiguration *)self->_currentConfiguration minimumNumberOfActiveDays];
    }

    v19 = integerValue;
    totalActiveDays = [typicalDayModel totalActiveDays];
    if (totalActiveDays < v19)
    {
      v21 = totalActiveDays;
      _HKInitializeLogging();
      v22 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 134218240;
        v37 = v21;
        v38 = 2048;
        v39 = v19;
        _os_log_impl(&dword_24B55B000, v22, OS_LOG_TYPE_DEFAULT, "User hasn't reached enough active days: %ld vs %ld", &v36, 0x16u);
      }

      goto LABEL_35;
    }

    v23 = [FCGoalProgressEvaluator evaluateEvents:self->_progressEvents withModel:typicalDayModel evaluationDelegate:self];
    lastObject = [v23 lastObject];
    v25 = lastObject;
    if (!lastObject)
    {
      _HKInitializeLogging();
      v33 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_24B55B000, v33, OS_LOG_TYPE_DEFAULT, "No event to show goal progress evaluation", &v36, 2u);
      }

      goto LABEL_34;
    }

    v26 = [lastObject goalProgressContentForModel:typicalDayModel];
    onServiceQueue_currentActivityCacheSummary = [(FCTypicalDayProvider *)self->_typicalDayProvider onServiceQueue_currentActivityCacheSummary];
    isPaused = [onServiceQueue_currentActivityCacheSummary isPaused];

    _HKInitializeLogging();
    v29 = *v3;
    v30 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
    if (isPaused)
    {
      if (!v30)
      {
LABEL_33:
        [(FCGoalProgressCoordinator *)self _onqueue_notificationPosted:v26];

LABEL_34:
LABEL_35:

        goto LABEL_16;
      }

      v31 = v29;
      eventIdentifier = [v25 eventIdentifier];
      v36 = 138412546;
      v37 = eventIdentifier;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&dword_24B55B000, v31, OS_LOG_TYPE_DEFAULT, "Goal progress not posting event %@ from fired events %@ because we are currently paused", &v36, 0x16u);
    }

    else
    {
      if (v30)
      {
        v34 = v29;
        eventIdentifier2 = [v25 eventIdentifier];
        v36 = 138412546;
        v37 = eventIdentifier2;
        v38 = 2112;
        v39 = v23;
        _os_log_impl(&dword_24B55B000, v34, OS_LOG_TYPE_DEFAULT, "Goal progress posting event %@ from fired events %@", &v36, 0x16u);
      }

      v31 = objc_loadWeakRetained(&self->_delegate);
      [v31 coordinator:self eventFiredWithContent:v26];
    }

    goto LABEL_33;
  }

  _HKInitializeLogging();
  v5 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v36) = 0;
    v6 = "Not evaluating, goal progress configuration has expired";
    goto LABEL_15;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerGoalProgressConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__FCGoalProgressCoordinator_registerGoalProgressConfiguration_completion___block_invoke;
  block[3] = &unk_27900B478;
  block[4] = self;
  v12 = configurationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = configurationCopy;
  dispatch_async(serviceQueue, block);
}

- (void)_onqueue_registerGoalProgressConfiguration:(id)configuration completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  serviceQueue = self->_serviceQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(serviceQueue);
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = configurationCopy;
    _os_log_impl(&dword_24B55B000, v9, OS_LOG_TYPE_DEFAULT, "Goal progress registering configuration: %@", &v11, 0xCu);
  }

  [(FCGoalProgressStore *)self->_store storeCurrentConfiguration:configurationCopy];
  [(FCGoalProgressCoordinator *)self _onqueue_handleGoalProgressConfiguration:configurationCopy];
  [(FCGoalProgressCoordinator *)self _onqueue_rescheduleEvents];
  completionCopy[2](completionCopy, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleGoalProgressConfiguration:(id)configuration
{
  v42 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  objc_storeStrong(&self->_currentConfiguration, configuration);
  userStartOfDay = [configurationCopy userStartOfDay];
  [(FCTypicalDayProvider *)self->_typicalDayProvider setUserStartOfDay:userStartOfDay];

  userEndOfDay = [configurationCopy userEndOfDay];
  [(FCTypicalDayProvider *)self->_typicalDayProvider setUserEndOfDay:userEndOfDay];

  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC290];
  v9 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    typicalDayProvider = self->_typicalDayProvider;
    v11 = v9;
    typicalDayModel = [(FCTypicalDayProvider *)typicalDayProvider typicalDayModel];
    userStartOfDay2 = [typicalDayModel userStartOfDay];
    typicalDayModel2 = [(FCTypicalDayProvider *)self->_typicalDayProvider typicalDayModel];
    userEndOfDay2 = [typicalDayModel2 userEndOfDay];
    *buf = 138412546;
    v39 = userStartOfDay2;
    v40 = 2112;
    v41 = userEndOfDay2;
    _os_log_impl(&dword_24B55B000, v11, OS_LOG_TYPE_DEFAULT, "Goal progress using user start date: %@, user end date: %@", buf, 0x16u);
  }

  v16 = [FCAlmostThereEvent alloc];
  almostThereConfiguration = [configurationCopy almostThereConfiguration];
  v18 = [(FCAlmostThereEvent *)v16 initWithConfiguration:almostThereConfiguration];

  v19 = [FCAtypicalDayEvent alloc];
  atypicalDayConfiguration = [configurationCopy atypicalDayConfiguration];
  v21 = [(FCAtypicalDayEvent *)v19 initWithConfiguration:atypicalDayConfiguration];

  v22 = [FCCompletionOffTrackEvent alloc];
  completionOffTrackConfiguration = [configurationCopy completionOffTrackConfiguration];
  v24 = [(FCCompletionOffTrackEvent *)v22 initWithConfiguration:completionOffTrackConfiguration];

  v37[0] = v21;
  v37[1] = v24;
  v37[2] = v18;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  progressEvents = self->_progressEvents;
  self->_progressEvents = v25;

  _HKInitializeLogging();
  v27 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    almostThereConfiguration2 = [configurationCopy almostThereConfiguration];
    *buf = 138412290;
    v39 = almostThereConfiguration2;
    _os_log_impl(&dword_24B55B000, v28, OS_LOG_TYPE_DEFAULT, "Goal progress added almost there configuration %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v30 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    atypicalDayConfiguration2 = [configurationCopy atypicalDayConfiguration];
    *buf = 138412290;
    v39 = atypicalDayConfiguration2;
    _os_log_impl(&dword_24B55B000, v31, OS_LOG_TYPE_DEFAULT, "Goal progress added atypical day configuration %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v33 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    completionOffTrackConfiguration2 = [configurationCopy completionOffTrackConfiguration];
    *buf = 138412290;
    v39 = completionOffTrackConfiguration2;
    _os_log_impl(&dword_24B55B000, v34, OS_LOG_TYPE_DEFAULT, "Goal progress added completion off track configuration %@", buf, 0xCu);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_rescheduleEvents
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC290];
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B55B000, v4, OS_LOG_TYPE_DEFAULT, "Rescheduling goal progress if needed", buf, 2u);
  }

  scheduledEventIdentifiers = [(FCGoalProgressStore *)self->_store scheduledEventIdentifiers];
  currentConfiguration = self->_currentConfiguration;
  if (!currentConfiguration)
  {
    _HKInitializeLogging();
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not scheduling, goal progress configuration doesn't exist";
      goto LABEL_15;
    }

LABEL_16:
    [(FCGoalProgressCoordinator *)self _onqueue_unscheduleEventIdentifiers:scheduledEventIdentifiers];
    [(FCGoalProgressStore *)self->_store clearScheduledEventIdentifiers];
    goto LABEL_17;
  }

  expirationDate = [(FCCGoalProgressConfiguration *)currentConfiguration expirationDate];
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v9 = [expirationDate hk_isBeforeOrEqualToDate:coachingDate];

  if (v9)
  {
    _HKInitializeLogging();
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not scheduling, goal progress configuration has expired";
LABEL_15:
      _os_log_impl(&dword_24B55B000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!self->_progressEvents)
  {
    _HKInitializeLogging();
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not scheduling, goal progress events don't exist";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  coachingDate2 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  [coachingDate2 timeIntervalSinceReferenceDate];
  v14 = v13;
  typicalDayModel = [(FCTypicalDayProvider *)self->_typicalDayProvider typicalDayModel];
  v16 = [FCGoalProgressEvaluator nextScheduledDatesByEventIdentifiersForEvents:self->_progressEvents model:typicalDayModel evaluationDelegate:self];
  _HKInitializeLogging();
  v17 = *v3;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v16;
    v31 = 2112;
    v32 = coachingDate2;
    _os_log_impl(&dword_24B55B000, v17, OS_LOG_TYPE_DEFAULT, "Goal progress generated scheduled dates %@, for current date %@", buf, 0x16u);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __54__FCGoalProgressCoordinator__onqueue_rescheduleEvents__block_invoke;
  v28[3] = &__block_descriptor_40_e29_B24__0__NSString_8__NSDate_16l;
  v28[4] = v14;
  v18 = [v16 hk_filter:v28];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __54__FCGoalProgressCoordinator__onqueue_rescheduleEvents__block_invoke_2;
  v27[3] = &unk_27900B4C0;
  v27[4] = self;
  [v18 enumerateKeysAndObjectsUsingBlock:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__FCGoalProgressCoordinator__onqueue_rescheduleEvents__block_invoke_310;
  v25[3] = &unk_27900B4E8;
  v26 = v18;
  v19 = v18;
  v20 = [scheduledEventIdentifiers hk_filter:v25];
  [(FCGoalProgressCoordinator *)self _onqueue_unscheduleEventIdentifiers:v20];
  [(FCGoalProgressStore *)self->_store clearScheduledEventIdentifiers];
  v21 = MEMORY[0x277CBEB98];
  allKeys = [v19 allKeys];
  v23 = [v21 setWithArray:allKeys];

  [(FCGoalProgressStore *)self->_store storeScheduledEventIdentifiers:v23];
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
}

void __54__FCGoalProgressCoordinator__onqueue_rescheduleEvents__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(*(a1 + 32) + 48) scheduleActivityWithName:v5 scheduledDate:v6];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_24B55B000, v7, OS_LOG_TYPE_DEFAULT, "Scheduled date %{public}@ for progress event %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __54__FCGoalProgressCoordinator__onqueue_rescheduleEvents__block_invoke_310(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allKeys];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (void)_onqueue_unscheduleEventIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    v9 = MEMORY[0x277CCC290];
    *&v6 = 138412290;
    v14 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        _HKInitializeLogging();
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v20 = v11;
          _os_log_impl(&dword_24B55B000, v12, OS_LOG_TYPE_DEFAULT, "Canceling scheduled event identifier %@", buf, 0xCu);
        }

        [(FCCXPCActivityScheduler *)self->_scheduler cancelActivityWithName:v11, v14];
        ++v10;
      }

      while (v7 != v10);
      v7 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_notificationPosted:(id)posted
{
  v14 = *MEMORY[0x277D85DE8];
  serviceQueue = self->_serviceQueue;
  postedCopy = posted;
  dispatch_assert_queue_V2(serviceQueue);
  eventIdentifier = [postedCopy eventIdentifier];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"ProgressUpdate", eventIdentifier];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_24B55B000, v8, OS_LOG_TYPE_DEFAULT, "Storing date for fired event: %@", buf, 0xCu);
  }

  store = self->_store;
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  [(FCGoalProgressStore *)store storeFiredEventDate:coachingDate identifier:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)scheduler:(id)scheduler performActivityWithName:(id)name completion:(id)completion
{
  serviceQueue = self->_serviceQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(serviceQueue);
  [(FCGoalProgressCoordinator *)self _onqueue_runEvaluation];
  completionCopy[2]();
}

- (void)debouncerDidFinishDebounce:(id)debounce
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24B55B000, v4, OS_LOG_TYPE_DEFAULT, "Debounce on protected data change finished for goal progress", v5, 2u);
  }

  [(FCGoalProgressCoordinator *)self _onqueue_runEvaluation];
}

- (void)_todayActivityChanged:(id)changed
{
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__FCGoalProgressCoordinator__todayActivityChanged___block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

uint64_t __51__FCGoalProgressCoordinator__todayActivityChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 72) & 1) == 0)
  {
    v3 = [*(v2 + 80) typicalDayModel];

    v2 = *(a1 + 32);
    if (v3)
    {
      *(v2 + 72) = 1;
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_24B55B000, v4, OS_LOG_TYPE_DEFAULT, "Rescheduling now that typical day model has loaded", v6, 2u);
      }

      [*(a1 + 32) _onqueue_rescheduleEvents];
      v2 = *(a1 + 32);
    }
  }

  return [v2 _onqueue_runEvaluation];
}

- (id)lastFiredDateForProgressEventIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"ProgressUpdate", identifier];
  v5 = [(FCGoalProgressStore *)self->_store lastFiredEventDateForIdentifier:identifier];

  return v5;
}

- (unint64_t)currentExperienceType
{
  v3 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v13 = 0;
  v6 = [userCharacteristicsManager userCharacteristicForType:v3 error:&v13];
  v7 = v13;

  if (v6)
  {
    currentCalendar = [(FCGoalProgressCoordinator *)self currentCalendar];
    currentDate = [(FCGoalProgressCoordinator *)self currentDate];
    v10 = FIExperienceTypeForBirthDateComponentsWithCurrentDateAndCalendar();
  }

  else
  {
    if (v7)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        [(FCGoalProgressCoordinator *)v7 currentExperienceType];
      }
    }

    v10 = 1;
  }

  return v10;
}

- (id)_minimumActiveDaysOverride
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D09B98]];
  v4 = [v3 objectForKey:*MEMORY[0x277D09BA0]];

  return v4;
}

- (FCGoalProgressCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)currentExperienceType
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24B55B000, a2, OS_LOG_TYPE_ERROR, "FCGoalProgressCoordinator failed to get date of birth: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end