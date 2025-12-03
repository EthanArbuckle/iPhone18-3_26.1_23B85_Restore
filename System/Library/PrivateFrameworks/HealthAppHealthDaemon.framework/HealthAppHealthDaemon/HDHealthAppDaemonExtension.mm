@interface HDHealthAppDaemonExtension
- (HDDaemon)daemon;
- (HDHealthAppDaemonExtension)initWithDaemon:(id)daemon;
- (HDHealthAppDaemonExtension)initWithDaemon:(id)daemon queue:(id)queue;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
- (void)profileListDidChange;
- (void)resetProfileObservers;
- (void)sharedSummaryManagerCommittedTransactionsDidChange:(id)change;
- (void)sharingEntriesDidUpdate:(id)update;
- (void)updateSharingReminderScheduledAlarm;
@end

@implementation HDHealthAppDaemonExtension

- (HDHealthAppDaemonExtension)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = HKCreateSerialDispatchQueue();
  v6 = [(HDHealthAppDaemonExtension *)self initWithDaemon:daemonCopy queue:v5];

  return v6;
}

- (HDHealthAppDaemonExtension)initWithDaemon:(id)daemon queue:(id)queue
{
  daemonCopy = daemon;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = HDHealthAppDaemonExtension;
  v8 = [(HDHealthAppDaemonExtension *)&v24 init];
  v9 = v8;
  if (v8)
  {
    v8->_observerLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_daemon, daemonCopy);
    objc_storeStrong(&v9->_queue, queue);
    WeakRetained = objc_loadWeakRetained(&v9->_daemon);
    [WeakRetained registerDaemonReadyObserver:v9 queue:v9->_queue];

    v11 = objc_loadWeakRetained(&v9->_daemon);
    primaryProfile = [v11 primaryProfile];
    [primaryProfile registerProfileReadyObserver:v9 queue:v9->_queue];

    v13 = [HDHealthAppRestorableAlarmManager alloc];
    v14 = objc_loadWeakRetained(&v9->_daemon);
    v15 = [(HDHealthAppRestorableAlarmManager *)v13 initWithDaemon:v14];
    restorableAlarmManager = v9->_restorableAlarmManager;
    v9->_restorableAlarmManager = v15;

    v17 = [HDHealthAppSharingReminderRestorableAlarm alloc];
    v18 = objc_loadWeakRetained(&v9->_daemon);
    v19 = [(HDHealthAppSharingReminderRestorableAlarm *)v17 initWithDaemon:v18];
    sharableReminderAlarm = v9->_sharableReminderAlarm;
    v9->_sharableReminderAlarm = v19;

    v21 = [objc_alloc(MEMORY[0x277CCDD98]) initWithMode:1 queue:v9->_queue delay:&__block_literal_global_1 block:0.5];
    delayedOperation = v9->_delayedOperation;
    v9->_delayedOperation = v21;
  }

  return v9;
}

void __51__HDHealthAppDaemonExtension_initWithDaemon_queue___block_invoke()
{
  _HKInitializeLogging();
  v0 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22939E000, v0, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension requesting background generation because of profile list change", buf, 2u);
  }

  v1 = objc_alloc_init(_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__HDHealthAppDaemonExtension_initWithDaemon_queue___block_invoke_305;
  v3[3] = &unk_278658228;
  v4 = v1;
  v2 = v1;
  [(HealthAppHealthDaemonOrchestrationClient *)v2 requestBackgroundGenerationForFeedItemsAfterUnlockWithCompletion:v3];
}

void __51__HDHealthAppDaemonExtension_initWithDaemon_queue___block_invoke_305()
{
  _HKInitializeLogging();
  v0 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22939E000, v0, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension background generation operation return", v1, 2u);
  }
}

- (void)dealloc
{
  [(_HKDelayedOperation *)self->_delayedOperation invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  profileManager = [WeakRetained profileManager];
  [profileManager removeProfileManagerObserver:self];

  v5 = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [v5 primaryProfile];
  sharingEntryManager = [primaryProfile sharingEntryManager];
  [sharingEntryManager removeObserver:self];

  v8.receiver = self;
  v8.super_class = HDHealthAppDaemonExtension;
  [(HDHealthAppDaemonExtension *)&v8 dealloc];
}

- (void)resetProfileObservers
{
  v34 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_observerLock);
  v3 = MEMORY[0x277CBEB98];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  profileManager = [WeakRetained profileManager];
  allProfileIdentifiers = [profileManager allProfileIdentifiers];
  v7 = [v3 setWithArray:allProfileIdentifiers];

  selfCopy = self;
  v9 = self->_observedProfileIdentifiers;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v28;
    *&v12 = 138412290;
    v25 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if ([(NSSet *)v9 containsObject:v16, v25])
        {
          [(NSSet *)v10 addObject:v16];
        }

        else
        {
          v17 = objc_loadWeakRetained(&selfCopy->_daemon);
          profileManager2 = [v17 profileManager];
          v19 = [profileManager2 profileForIdentifier:v16];

          if (v19 && [v19 profileType] == 2)
          {
            _HKInitializeLogging();
            v20 = HKLogWellnessDashboard();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              profileIdentifier = [v19 profileIdentifier];
              *buf = v25;
              v32 = profileIdentifier;
              _os_log_impl(&dword_22939E000, v20, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension observing changes for: %@", buf, 0xCu);
            }

            sharedSummaryManager = [v19 sharedSummaryManager];
            [sharedSummaryManager registerObserver:selfCopy];

            [(NSSet *)v10 addObject:v16];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
  }

  observedProfileIdentifiers = selfCopy->_observedProfileIdentifiers;
  selfCopy->_observedProfileIdentifiers = v10;

  os_unfair_lock_unlock(&selfCopy->_observerLock);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)daemonReady:(id)ready
{
  readyCopy = ready;
  _HKInitializeLogging();
  v5 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22939E000, v5, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension reported daemon ready, starting observing for profile list changes", v10, 2u);
  }

  profileManager = [readyCopy profileManager];
  [profileManager addProfileManagerObserver:self];

  [(HDHealthAppDaemonExtension *)self resetProfileObservers];
  primaryProfile = [readyCopy primaryProfile];
  sharingEntryManager = [primaryProfile sharingEntryManager];
  [sharingEntryManager addObserver:self];

  postInstallUpdateManager = [readyCopy postInstallUpdateManager];

  [postInstallUpdateManager registerUpdateTaskHandler:self queue:0];
}

- (void)profileDidBecomeReady:(id)ready
{
  [(HDHealthAppDaemonExtension *)self updateSharingReminderScheduledAlarm];
  unitTest_profileReadyObserverDidFinish = self->_unitTest_profileReadyObserverDidFinish;
  if (unitTest_profileReadyObserverDidFinish)
  {
    v5 = *(unitTest_profileReadyObserverDidFinish + 2);

    v5();
  }
}

- (void)profileListDidChange
{
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22939E000, v3, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension profile list changed", buf, 2u);
  }

  [(HDHealthAppDaemonExtension *)self resetProfileObservers];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HDHealthAppDaemonExtension_profileListDidChange__block_invoke;
  block[3] = &unk_2786581B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__HDHealthAppDaemonExtension_profileListDidChange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delayedOperation];
  [v1 execute];
}

- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22939E000, v5, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension requesting background generation because of install/update", buf, 2u);
  }

  v6 = objc_alloc_init(_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HDHealthAppDaemonExtension_performPostInstallUpdateTaskForManager_completion___block_invoke;
  v9[3] = &unk_278658650;
  v10 = v6;
  v11 = completionCopy;
  v7 = v6;
  v8 = completionCopy;
  [(HealthAppHealthDaemonOrchestrationClient *)v7 requestBackgroundGenerationForAllModelsAfterUnlockWithCompletion:v9];
}

uint64_t __80__HDHealthAppDaemonExtension_performPostInstallUpdateTaskForManager_completion___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22939E000, v2, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension background generation for all request returning", v4, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)sharedSummaryManagerCommittedTransactionsDidChange:(id)change
{
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22939E000, v3, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension requesting background generation because transactions changed", buf, 2u);
  }

  v4 = objc_alloc_init(_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__HDHealthAppDaemonExtension_sharedSummaryManagerCommittedTransactionsDidChange___block_invoke;
  v6[3] = &unk_278658228;
  v7 = v4;
  v5 = v4;
  [(HealthAppHealthDaemonOrchestrationClient *)v5 requestBackgroundGenerationForFeedItemsAfterUnlockWithCompletion:v6];
}

void __81__HDHealthAppDaemonExtension_sharedSummaryManagerCommittedTransactionsDidChange___block_invoke()
{
  _HKInitializeLogging();
  v0 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22939E000, v0, OS_LOG_TYPE_DEFAULT, "HDHealthAppDaemonExtension background generation for feed triggered by transactions request returning", v1, 2u);
  }
}

- (void)sharingEntriesDidUpdate:(id)update
{
  v27 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  [(HDHealthAppDaemonExtension *)self updateSharingReminderScheduledAlarm];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = updateCopy;
  v6 = [(HealthAppHealthDaemonOrchestrationClient *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  v7 = v5;
  if (!v6)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = v6;
  v9 = 0;
  v10 = *v21;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      if ([v12 direction] == 1 && !objc_msgSend(v12, "status") || !objc_msgSend(v12, "direction") && objc_msgSend(v12, "status") == 1)
      {
        v9 = 1;
      }
    }

    v8 = [(HealthAppHealthDaemonOrchestrationClient *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  }

  while (v8);

  if (v9)
  {
    _HKInitializeLogging();
    v13 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v25 = v14;
      v15 = v14;
      _os_log_impl(&dword_22939E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Running background generation because sharing entries changed", buf, 0xCu);
    }

    v16 = objc_alloc_init(_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__HDHealthAppDaemonExtension_sharingEntriesDidUpdate___block_invoke;
    v18[3] = &unk_278658678;
    v18[4] = self;
    v19 = v16;
    v7 = v16;
    [(HealthAppHealthDaemonOrchestrationClient *)v7 runOrRequestBackgroundGenerationWithCompletion:v18];

    goto LABEL_17;
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

void __54__HDHealthAppDaemonExtension_sharingEntriesDidUpdate___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_22939E000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] background generation for feed triggered by sharing entries request returning", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateSharingReminderScheduledAlarm
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_1_0(&dword_22939E000, v1, v2, "[%{public}@] Could not remove sharing reminder date: %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end