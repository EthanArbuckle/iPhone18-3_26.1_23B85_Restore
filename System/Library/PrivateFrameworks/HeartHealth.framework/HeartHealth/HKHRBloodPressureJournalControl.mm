@interface HKHRBloodPressureJournalControl
+ (id)clientInterface;
+ (id)serverInterface;
+ (id)taskIdentifier;
- (BOOL)_synchronouslyRegisterForJournalChangesWithError:(id *)error;
- (HKHRBloodPressureJournalControl)initWithHealthStore:(id)store;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_handleAutomaticProxyReconnection;
- (void)_registerForJournalChanges:(BOOL)changes completion:(id)completion;
- (void)_startObservingJournalChanges;
- (void)_stopObservingJournalChanges;
- (void)client_notifyDidAddOrModifyBloodPressureJournals:(id)journals;
- (void)closeJournal:(id)journal completion:(id)completion;
- (void)closeJournalWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchActiveJournalWithCompletion:(id)completion;
- (void)fetchAllJournalsWithCompletion:(id)completion;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)saveJournal:(id)journal completion:(id)completion;
- (void)snoozeJournalNotificationWithIdentifier:(id)identifier journalType:(int64_t)type userInfo:(id)info onDate:(id)date completion:(id)completion;
- (void)unitTest_noOpWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKHRBloodPressureJournalControl

- (HKHRBloodPressureJournalControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v24.receiver = self;
  v24.super_class = HKHRBloodPressureJournalControl;
  v5 = [(HKHRBloodPressureJournalControl *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCDAA0]);
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = [v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    objc_initWeak(&location, v5);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __55__HKHRBloodPressureJournalControl_initWithHealthStore___block_invoke;
    v21 = &unk_27860ADE8;
    objc_copyWeak(&v22, &location);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setAutomaticProxyReconnectionHandler:&v18];
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:1, v18, v19, v20, v21];
    v11 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setTaskConfiguration:v11];

    v12 = objc_alloc(MEMORY[0x277CCD738]);
    v13 = NSStringFromProtocol(&unk_283BEE420);
    v14 = HKLogBloodPressureJournal();
    v15 = [v12 initWithName:v13 loggingCategory:v14];
    observers = v5->_observers;
    v5->_observers = v15;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __55__HKHRBloodPressureJournalControl_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)saveJournal:(id)journal completion:(id)completion
{
  journalCopy = journal;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HKHRBloodPressureJournalControl_saveJournal_completion___block_invoke;
  v13[3] = &unk_27860B340;
  v14 = journalCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HKHRBloodPressureJournalControl_saveJournal_completion___block_invoke_2;
  v11[3] = &unk_27860B100;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = journalCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __58__HKHRBloodPressureJournalControl_saveJournal_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__HKHRBloodPressureJournalControl_saveJournal_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchActiveJournalWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HKHRBloodPressureJournalControl_fetchActiveJournalWithCompletion___block_invoke;
  v9[3] = &unk_27860B368;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HKHRBloodPressureJournalControl_fetchActiveJournalWithCompletion___block_invoke_2;
  v7[3] = &unk_27860B100;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __68__HKHRBloodPressureJournalControl_fetchActiveJournalWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__HKHRBloodPressureJournalControl_fetchActiveJournalWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAllJournalsWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HKHRBloodPressureJournalControl_fetchAllJournalsWithCompletion___block_invoke;
  v9[3] = &unk_27860B368;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HKHRBloodPressureJournalControl_fetchAllJournalsWithCompletion___block_invoke_2;
  v7[3] = &unk_27860B100;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __66__HKHRBloodPressureJournalControl_fetchAllJournalsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__HKHRBloodPressureJournalControl_fetchAllJournalsWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)closeJournal:(id)journal completion:(id)completion
{
  journalCopy = journal;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__HKHRBloodPressureJournalControl_closeJournal_completion___block_invoke;
  v13[3] = &unk_27860B340;
  v14 = journalCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HKHRBloodPressureJournalControl_closeJournal_completion___block_invoke_2;
  v11[3] = &unk_27860B100;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = journalCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __59__HKHRBloodPressureJournalControl_closeJournal_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__HKHRBloodPressureJournalControl_closeJournal_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)closeJournalWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HKHRBloodPressureJournalControl_closeJournalWithIdentifier_completion___block_invoke;
  v13[3] = &unk_27860B340;
  v14 = identifierCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HKHRBloodPressureJournalControl_closeJournalWithIdentifier_completion___block_invoke_2;
  v11[3] = &unk_27860B100;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = identifierCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __73__HKHRBloodPressureJournalControl_closeJournalWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__HKHRBloodPressureJournalControl_closeJournal_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)snoozeJournalNotificationWithIdentifier:(id)identifier journalType:(int64_t)type userInfo:(id)info onDate:(id)date completion:(id)completion
{
  identifierCopy = identifier;
  infoCopy = info;
  dateCopy = date;
  v15 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __114__HKHRBloodPressureJournalControl_snoozeJournalNotificationWithIdentifier_journalType_userInfo_onDate_completion___block_invoke;
  v24[3] = &unk_27860B390;
  v25 = identifierCopy;
  v26 = infoCopy;
  typeCopy = type;
  v27 = dateCopy;
  v28 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__HKHRBloodPressureJournalControl_snoozeJournalNotificationWithIdentifier_journalType_userInfo_onDate_completion___block_invoke_2;
  v21[3] = &unk_27860B0B0;
  v21[4] = self;
  v22 = v25;
  v23 = v28;
  v17 = v28;
  v18 = v25;
  v19 = dateCopy;
  v20 = infoCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v24 errorHandler:v21];
}

void __114__HKHRBloodPressureJournalControl_snoozeJournalNotificationWithIdentifier_journalType_userInfo_onDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__HKHRBloodPressureJournalControl_snoozeJournalNotificationWithIdentifier_journalType_userInfo_onDate_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HKHRBloodPressureJournalControl_registerObserver_queue___block_invoke;
  v5[3] = &unk_27860AE60;
  v5[4] = self;
  [(HKHRBloodPressureJournalControlObserver *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__HKHRBloodPressureJournalControl_unregisterObserver___block_invoke;
  v4[3] = &unk_27860AE60;
  v4[4] = self;
  [(HKHRBloodPressureJournalControlObserver *)observers unregisterObserver:observer runIfLastObserver:v4];
}

- (void)_startObservingJournalChanges
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__HKHRBloodPressureJournalControl__startObservingJournalChanges__block_invoke;
  v2[3] = &unk_27860B3B8;
  v2[4] = self;
  [(HKHRBloodPressureJournalControl *)self _registerForJournalChanges:1 completion:v2];
}

void __64__HKHRBloodPressureJournalControl__startObservingJournalChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__HKHRBloodPressureJournalControl__startObservingJournalChanges__block_invoke_cold_1(a1);
    }
  }

  [*(a1 + 32) _callUnitTestObservationChangeHandlerWith:a2 isObserving:a2 error:v5];
}

- (void)_stopObservingJournalChanges
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__HKHRBloodPressureJournalControl__stopObservingJournalChanges__block_invoke;
  v2[3] = &unk_27860B3B8;
  v2[4] = self;
  [(HKHRBloodPressureJournalControl *)self _registerForJournalChanges:0 completion:v2];
}

void __63__HKHRBloodPressureJournalControl__stopObservingJournalChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__HKHRBloodPressureJournalControl__stopObservingJournalChanges__block_invoke_cold_1(a1);
    }
  }

  [*(a1 + 32) _callUnitTestObservationChangeHandlerWith:a2 isObserving:a2 ^ 1 error:v5];
}

- (void)_registerForJournalChanges:(BOOL)changes completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HKHRBloodPressureJournalControl__registerForJournalChanges_completion___block_invoke;
  v11[3] = &unk_27860B3E0;
  changesCopy = changes;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HKHRBloodPressureJournalControl__registerForJournalChanges_completion___block_invoke_2;
  v9[3] = &unk_27860A9D0;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)_handleAutomaticProxyReconnection
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_synchronouslyRegisterForJournalChangesWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HKHRBloodPressureJournalControl__synchronouslyRegisterForJournalChangesWithError___block_invoke;
  v11[3] = &unk_27860B408;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HKHRBloodPressureJournalControl__synchronouslyRegisterForJournalChangesWithError___block_invoke_3;
  v10[3] = &unk_27860AD48;
  v10[4] = &v12;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t __84__HKHRBloodPressureJournalControl__synchronouslyRegisterForJournalChangesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__HKHRBloodPressureJournalControl__synchronouslyRegisterForJournalChangesWithError___block_invoke_2;
  v3[3] = &unk_27860AD70;
  v4 = *(a1 + 32);
  return [a2 remote_observeJournalChanges:1 completion:v3];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BE74D0];
  v3 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_client_notifyDidAddOrModifyBloodPressureJournals_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BEE480];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchAllJournalsWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

- (void)client_notifyDidAddOrModifyBloodPressureJournals:(id)journals
{
  journalsCopy = journals;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HKHRBloodPressureJournalControl_client_notifyDidAddOrModifyBloodPressureJournals___block_invoke;
  v7[3] = &unk_27860B430;
  v7[4] = self;
  v8 = journalsCopy;
  v6 = journalsCopy;
  [(HKHRBloodPressureJournalControlObserver *)observers notifyObservers:v7];
}

- (void)unitTest_noOpWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HKHRBloodPressureJournalControl_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_27860B368;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HKHRBloodPressureJournalControl_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_27860A9D0;
  v10 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

void __58__HKHRBloodPressureJournalControl_saveJournal_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__HKHRBloodPressureJournalControl_fetchActiveJournalWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__HKHRBloodPressureJournalControl_fetchAllJournalsWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__HKHRBloodPressureJournalControl_closeJournal_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__HKHRBloodPressureJournalControl_snoozeJournalNotificationWithIdentifier_journalType_userInfo_onDate_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__HKHRBloodPressureJournalControl__startObservingJournalChanges__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__HKHRBloodPressureJournalControl__stopObservingJournalChanges__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end