@interface FCHealthService
- (FCHealthService)initWithProfile:(id)a3;
- (void)_appInstallationChanged:(id)a3;
- (void)_onqueue_registerForAppInstallationChange;
- (void)_onqueue_registerForStandalonePhoneModeChange;
- (void)_onqueue_updateService;
- (void)_postSampleNotification;
- (void)coordinator:(id)a3 eventFiredWithContent:(id)a4;
- (void)coordinator:(id)a3 postGoalCompletionNotification:(id)a4;
- (void)coordinator:(id)a3 postMoveModeNotification:(id)a4;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)registerGoalProgressConfiguration:(id)a3 completion:(id)a4;
@end

@implementation FCHealthService

- (FCHealthService)initWithProfile:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FCHealthService;
  v5 = [(FCHealthService *)&v19 init];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B55B000, v6, OS_LOG_TYPE_DEFAULT, "Starting FCHealthService...", buf, 2u);
    }

    v7 = HDCreateSerialUtilityDispatchQueue();
    serviceQueue = v5->_serviceQueue;
    v5->_serviceQueue = v7;

    objc_storeWeak(&v5->_profile, v4);
    v9 = objc_alloc_init(FCAppInstallationObserver);
    appInstallationObserver = v5->_appInstallationObserver;
    v5->_appInstallationObserver = v9;

    v11 = [[FCPauseRingsSampleObserver alloc] initWithProfile:v4];
    pauseRingsSampleObserver = v5->_pauseRingsSampleObserver;
    v5->_pauseRingsSampleObserver = v11;

    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    [WeakRetained registerProfileReadyObserver:v5 queue:v5->_serviceQueue];

    v14 = v5->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__FCHealthService_initWithProfile___block_invoke;
    block[3] = &unk_27900B3B0;
    v17 = v5;
    dispatch_async(v14, block);
  }

  return v5;
}

uint64_t __35__FCHealthService_initWithProfile___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onqueue_registerForStandalonePhoneModeChange];
  [*(a1 + 32) _onqueue_registerForAppInstallationChange];
  v2 = *(a1 + 32);

  return [v2 _onqueue_updateService];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_sampleNotificationToken))
  {
    notify_cancel(self->_sampleNotificationToken);
    self->_sampleNotificationToken = -1;
  }

  if (notify_is_valid_token(self->_standalonePhoneNotificationToken))
  {
    notify_cancel(self->_standalonePhoneNotificationToken);
    self->_standalonePhoneNotificationToken = -1;
  }

  v3.receiver = self;
  v3.super_class = FCHealthService;
  [(FCHealthService *)&v3 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = a3;
  p_sampleNotificationToken = &self->_sampleNotificationToken;
  if (!notify_is_valid_token(self->_sampleNotificationToken))
  {
    objc_initWeak(&location, self);
    serviceQueue = self->_serviceQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__FCHealthService_profileDidBecomeReady___block_invoke;
    v7[3] = &unk_27900B558;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch("com.apple.FitnessCoaching.SampleNotification", p_sampleNotificationToken, serviceQueue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __41__FCHealthService_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postSampleNotification];
}

- (void)_postSampleNotification
{
  v2 = objc_alloc_init(MEMORY[0x277D09CD0]);
  [v2 postSampleNotificationWithCompletion:&__block_literal_global_1];
}

void __42__FCHealthService__postSampleNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC290];
  v4 = *MEMORY[0x277CCC290];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__FCHealthService__postSampleNotification__block_invoke_cold_1(v2, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24B55B000, v3, OS_LOG_TYPE_DEFAULT, "Posted notification!", v5, 2u);
  }
}

- (void)registerGoalProgressConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FCHealthService_registerGoalProgressConfiguration_completion___block_invoke;
  block[3] = &unk_27900B478;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serviceQueue, block);
}

- (void)coordinator:(id)a3 postGoalCompletionNotification:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D09C98];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__FCHealthService_coordinator_postGoalCompletionNotification___block_invoke;
  v10[3] = &unk_27900B5F0;
  v11 = v5;
  v9 = v5;
  [v8 postGoalCompletionNotification:v9 completion:v10];
  [v7 notificationPosted:v9];
}

void __62__FCHealthService_coordinator_postGoalCompletionNotification___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_24B55B000, v4, OS_LOG_TYPE_DEFAULT, "Posted goal completion notification: %@, error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)a3 eventFiredWithContent:(id)a4
{
  v4 = a4;
  v5 = objc_alloc_init(MEMORY[0x277D09CA8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__FCHealthService_coordinator_eventFiredWithContent___block_invoke;
  v7[3] = &unk_27900B5F0;
  v8 = v4;
  v6 = v4;
  [v5 postGoalProgressNotification:v6 completion:v7];
}

void __53__FCHealthService_coordinator_eventFiredWithContent___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_24B55B000, v4, OS_LOG_TYPE_DEFAULT, "Posted goal progress notification: %@, error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)a3 postMoveModeNotification:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D09CC0]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__FCHealthService_coordinator_postMoveModeNotification___block_invoke;
  v10[3] = &unk_27900B618;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 postMoveModeNotification:v8 completion:v10];
}

- (void)_onqueue_registerForStandalonePhoneModeChange
{
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x277CCCE08];
  serviceQueue = self->_serviceQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__FCHealthService__onqueue_registerForStandalonePhoneModeChange__block_invoke;
  v5[3] = &unk_27900B558;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(v3, &self->_standalonePhoneNotificationToken, serviceQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __64__FCHealthService__onqueue_registerForStandalonePhoneModeChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueue_updateService];
}

- (void)_onqueue_registerForAppInstallationChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__appInstallationChanged_ name:@"FCFitnessInstallStateChangedNotification" object:0];
}

- (void)_appInstallationChanged:(id)a3
{
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__FCHealthService__appInstallationChanged___block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

- (void)_onqueue_updateService
{
  v68 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC290];
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCDD30];
    v6 = v4;
    v7 = [v5 sharedBehavior];
    v8 = [v7 isStandalonePhoneFitnessMode];
    v9 = [(FCAppInstallationObserver *)self->_appInstallationObserver fitnessAppInstalled];
    *buf = 67109376;
    v65 = v8;
    v66 = 1024;
    v67 = v9;
    _os_log_impl(&dword_24B55B000, v6, OS_LOG_TYPE_DEFAULT, "FCHealthService updating with standalone %{BOOL}d, app installed %{BOOL}d", buf, 0xEu);
  }

  v10 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([v10 isStandalonePhoneFitnessMode])
  {
    v11 = [(FCAppInstallationObserver *)self->_appInstallationObserver fitnessAppInstalled];

    serviceEnabled = self->_serviceEnabled;
    if (!serviceEnabled && v11)
    {
      v13 = [FCGoalCompletionStore alloc];
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v15 = [(FCGoalCompletionStore *)v13 initWithProfile:WeakRetained];
      goalCompletionStore = self->_goalCompletionStore;
      self->_goalCompletionStore = v15;

      v17 = [FCGoalCompletionCoordinator alloc];
      v18 = objc_loadWeakRetained(&self->_profile);
      v19 = [(FCGoalCompletionCoordinator *)v17 initWithProfile:v18 goalCompletionStore:self->_goalCompletionStore serviceQueue:self->_serviceQueue];
      goalCompletionCoordinator = self->_goalCompletionCoordinator;
      self->_goalCompletionCoordinator = v19;

      [(FCGoalCompletionCoordinator *)self->_goalCompletionCoordinator setDelegate:self];
      v21 = [FCGoalCompletionActivitySummaryObserver alloc];
      v22 = objc_loadWeakRetained(&self->_profile);
      v23 = [(FCGoalCompletionActivitySummaryObserver *)v21 initWithProfile:v22 serviceQueue:self->_serviceQueue];
      goalCompletionActivitySummaryObserver = self->_goalCompletionActivitySummaryObserver;
      self->_goalCompletionActivitySummaryObserver = v23;

      [(FCGoalCompletionActivitySummaryObserver *)self->_goalCompletionActivitySummaryObserver setDelegate:self->_goalCompletionCoordinator];
      v25 = objc_alloc_init(MEMORY[0x277D09C80]);
      dateProvider = self->_dateProvider;
      self->_dateProvider = v25;

      v27 = [FCGoalProgressStore alloc];
      v28 = objc_loadWeakRetained(&self->_profile);
      v29 = [(FCGoalProgressStore *)v27 initWithProfile:v28];
      goalProgressStore = self->_goalProgressStore;
      self->_goalProgressStore = v29;

      v31 = [objc_alloc(MEMORY[0x277D09D20]) initWithDateProvider:self->_dateProvider dispatchQueue:self->_serviceQueue];
      goalProgressScheduler = self->_goalProgressScheduler;
      self->_goalProgressScheduler = v31;

      v33 = [FCTypicalDayProvider alloc];
      v34 = self->_dateProvider;
      v35 = objc_loadWeakRetained(&self->_profile);
      v36 = [(FCTypicalDayProvider *)v33 initWithDateProvider:v34 profile:v35 serviceQueue:self->_serviceQueue];
      typicalDayProvider = self->_typicalDayProvider;
      self->_typicalDayProvider = v36;

      v38 = [[FCGoalProgressDebouncer alloc] initWithServiceQueue:self->_serviceQueue];
      goalProgressDebouncer = self->_goalProgressDebouncer;
      self->_goalProgressDebouncer = v38;

      v40 = [FCGoalProgressCoordinator alloc];
      v41 = self->_dateProvider;
      v42 = self->_goalProgressDebouncer;
      v43 = objc_loadWeakRetained(&self->_profile);
      v44 = [(FCGoalProgressCoordinator *)v40 initWithDateProvider:v41 debouncer:v42 profile:v43 scheduler:self->_goalProgressScheduler serviceQueue:self->_serviceQueue store:self->_goalProgressStore typicalDayProvider:self->_typicalDayProvider];
      goalProgressCoordinator = self->_goalProgressCoordinator;
      self->_goalProgressCoordinator = v44;

      [(FCGoalProgressDebouncer *)self->_goalProgressDebouncer setDelegate:self->_goalProgressCoordinator];
      [(FCCXPCActivityScheduler *)self->_goalProgressScheduler setDelegate:self->_goalProgressCoordinator];
      [(FCGoalProgressCoordinator *)self->_goalProgressCoordinator setDelegate:self];
      v46 = [FCMoveModeCoordinator alloc];
      v47 = self->_dateProvider;
      v48 = objc_loadWeakRetained(&self->_profile);
      v49 = [(FCMoveModeCoordinator *)v46 initWithDateProvider:v47 profile:v48 serviceQueue:self->_serviceQueue];
      moveModeCoordinator = self->_moveModeCoordinator;
      self->_moveModeCoordinator = v49;

      [(FCMoveModeCoordinator *)self->_moveModeCoordinator setDelegate:self];
      self->_serviceEnabled = 1;
      _HKInitializeLogging();
      v51 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v52 = "FCHealthService enabled";
LABEL_13:
        _os_log_impl(&dword_24B55B000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {

    LOBYTE(v11) = 0;
    serviceEnabled = self->_serviceEnabled;
  }

  if (serviceEnabled && !v11)
  {
    v53 = self->_dateProvider;
    self->_dateProvider = 0;

    v54 = self->_goalCompletionStore;
    self->_goalCompletionStore = 0;

    [(FCGoalCompletionCoordinator *)self->_goalCompletionCoordinator setDelegate:0];
    v55 = self->_goalCompletionCoordinator;
    self->_goalCompletionCoordinator = 0;

    [(FCGoalCompletionActivitySummaryObserver *)self->_goalCompletionActivitySummaryObserver setDelegate:0];
    v56 = self->_goalCompletionActivitySummaryObserver;
    self->_goalCompletionActivitySummaryObserver = 0;

    [(FCGoalProgressDebouncer *)self->_goalProgressDebouncer setDelegate:0];
    v57 = self->_goalProgressDebouncer;
    self->_goalProgressDebouncer = 0;

    v58 = self->_goalProgressStore;
    self->_goalProgressStore = 0;

    [(FCCXPCActivityScheduler *)self->_goalProgressScheduler setDelegate:0];
    v59 = self->_goalProgressScheduler;
    self->_goalProgressScheduler = 0;

    v60 = self->_typicalDayProvider;
    self->_typicalDayProvider = 0;

    [(FCGoalProgressCoordinator *)self->_goalProgressCoordinator setDelegate:0];
    v61 = self->_goalProgressCoordinator;
    self->_goalProgressCoordinator = 0;

    [(FCMoveModeCoordinator *)self->_moveModeCoordinator setDelegate:0];
    v62 = self->_moveModeCoordinator;
    self->_moveModeCoordinator = 0;

    self->_serviceEnabled = 0;
    _HKInitializeLogging();
    v51 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v52 = "FCHealthService disabled";
      goto LABEL_13;
    }
  }

LABEL_14:
  v63 = *MEMORY[0x277D85DE8];
}

void __42__FCHealthService__postSampleNotification__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B55B000, a2, OS_LOG_TYPE_ERROR, "Failed to post notification: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end