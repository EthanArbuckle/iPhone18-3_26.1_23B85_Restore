@interface HKMedicationScheduleControl
+ (id)clientInterface;
+ (id)serverInterface;
+ (id)taskIdentifier;
- (BOOL)_synchronouslyRegisterToObserveMedicationScheduleChangesWithError:(id *)error;
- (HKMedicationScheduleControl)initWithHealthStore:(id)store;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_handleAutomaticProxyReconnection;
- (void)_observeMedicationScheduleChanges:(BOOL)changes completion:(id)completion;
- (void)_registerFirstObserver;
- (void)_unregisterLastObserver;
- (void)client_notifyForAddOrModifySchedules:(id)schedules;
- (void)client_notifyForDidPruneSchduleItems:(id)items;
- (void)deleteSchedule:(id)schedule completion:(id)completion;
- (void)fetchAllSchedulesWithCompletion:(id)completion;
- (void)fetchScheduleWithMedicationIdentifier:(id)identifier completion:(id)completion;
- (void)fetchSchedulesWithMedicationIdentifiers:(id)identifiers completion:(id)completion;
- (void)logUnloggedDoseEventsForScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date completion:(id)completion;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)rescheduleMedicationsWithCompletion:(id)completion;
- (void)saveSchedule:(id)schedule completion:(id)completion;
- (void)saveScheduleItems:(id)items completion:(id)completion;
- (void)setTimeZoneTipAsDismissedWithCompletion:(id)completion;
- (void)unitTest_noOpWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)updateNotificationSent:(BOOL)sent scheduleItemIdentifier:(id)identifier completion:(id)completion;
- (void)updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:(BOOL)times completion:(id)completion;
@end

@implementation HKMedicationScheduleControl

- (HKMedicationScheduleControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v24.receiver = self;
  v24.super_class = HKMedicationScheduleControl;
  v5 = [(HKMedicationScheduleControl *)&v24 init];
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
    v20 = __51__HKMedicationScheduleControl_initWithHealthStore___block_invoke;
    v21 = &unk_2796CA110;
    objc_copyWeak(&v22, &location);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setAutomaticProxyReconnectionHandler:&v18];
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:1, v18, v19, v20, v21];
    v11 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setTaskConfiguration:v11];

    v12 = objc_alloc(MEMORY[0x277CCD738]);
    v13 = NSStringFromProtocol(&unk_2863C8350);
    v14 = HKLogMedication();
    v15 = [v12 initWithName:v13 loggingCategory:v14];
    observers = v5->_observers;
    v5->_observers = v15;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __51__HKMedicationScheduleControl_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)saveSchedule:(id)schedule completion:(id)completion
{
  scheduleCopy = schedule;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__HKMedicationScheduleControl_saveSchedule_completion___block_invoke;
  v14[3] = &unk_2796CA138;
  v15 = scheduleCopy;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HKMedicationScheduleControl_saveSchedule_completion___block_invoke_2;
  v11[3] = &unk_2796CA160;
  v11[4] = self;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v11];
}

void __55__HKMedicationScheduleControl_saveSchedule_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__HKMedicationScheduleControl_saveSchedule_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:(BOOL)times completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__HKMedicationScheduleControl_updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes_completion___block_invoke;
  v11[3] = &unk_2796CA188;
  timesCopy = times;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__HKMedicationScheduleControl_updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes_completion___block_invoke_2;
  v9[3] = &unk_2796CA1B0;
  v9[4] = self;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

void __105__HKMedicationScheduleControl_updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __105__HKMedicationScheduleControl_updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setTimeZoneTipAsDismissedWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HKMedicationScheduleControl_setTimeZoneTipAsDismissedWithCompletion___block_invoke;
  v9[3] = &unk_2796CA1D8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HKMedicationScheduleControl_setTimeZoneTipAsDismissedWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CA1B0;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __71__HKMedicationScheduleControl_setTimeZoneTipAsDismissedWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__HKMedicationScheduleControl_setTimeZoneTipAsDismissedWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchScheduleWithMedicationIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HKMedicationScheduleControl_fetchScheduleWithMedicationIdentifier_completion___block_invoke;
  v14[3] = &unk_2796CA138;
  v15 = identifierCopy;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HKMedicationScheduleControl_fetchScheduleWithMedicationIdentifier_completion___block_invoke_2;
  v11[3] = &unk_2796CA160;
  v11[4] = self;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v11];
}

void __80__HKMedicationScheduleControl_fetchScheduleWithMedicationIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__HKMedicationScheduleControl_fetchScheduleWithMedicationIdentifier_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchSchedulesWithMedicationIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HKMedicationScheduleControl_fetchSchedulesWithMedicationIdentifiers_completion___block_invoke;
  v14[3] = &unk_2796CA138;
  v15 = identifiersCopy;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HKMedicationScheduleControl_fetchSchedulesWithMedicationIdentifiers_completion___block_invoke_2;
  v11[3] = &unk_2796CA160;
  v11[4] = self;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v11];
}

void __82__HKMedicationScheduleControl_fetchSchedulesWithMedicationIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__HKMedicationScheduleControl_fetchSchedulesWithMedicationIdentifiers_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchAllSchedulesWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HKMedicationScheduleControl_fetchAllSchedulesWithCompletion___block_invoke;
  v9[3] = &unk_2796CA1D8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HKMedicationScheduleControl_fetchAllSchedulesWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CA1B0;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __63__HKMedicationScheduleControl_fetchAllSchedulesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HKMedicationScheduleControl_fetchAllSchedulesWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteSchedule:(id)schedule completion:(id)completion
{
  scheduleCopy = schedule;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HKMedicationScheduleControl_deleteSchedule_completion___block_invoke;
  v14[3] = &unk_2796CA138;
  v15 = scheduleCopy;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HKMedicationScheduleControl_deleteSchedule_completion___block_invoke_2;
  v11[3] = &unk_2796CA160;
  v11[4] = self;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v11];
}

void __57__HKMedicationScheduleControl_deleteSchedule_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__HKMedicationScheduleControl_deleteSchedule_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)saveScheduleItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HKMedicationScheduleControl_saveScheduleItems_completion___block_invoke;
  v14[3] = &unk_2796CA138;
  v15 = itemsCopy;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HKMedicationScheduleControl_saveScheduleItems_completion___block_invoke_2;
  v11[3] = &unk_2796CA160;
  v11[4] = self;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v11];
}

void __60__HKMedicationScheduleControl_saveScheduleItems_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__HKMedicationScheduleControl_saveScheduleItems_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)updateNotificationSent:(BOOL)sent scheduleItemIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HKMedicationScheduleControl_updateNotificationSent_scheduleItemIdentifier_completion___block_invoke;
  v16[3] = &unk_2796CA200;
  sentCopy = sent;
  v17 = identifierCopy;
  v18 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HKMedicationScheduleControl_updateNotificationSent_scheduleItemIdentifier_completion___block_invoke_2;
  v13[3] = &unk_2796CA160;
  v13[4] = self;
  v14 = v17;
  v15 = v18;
  v11 = v18;
  v12 = v17;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v13];
}

void __88__HKMedicationScheduleControl_updateNotificationSent_scheduleItemIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __88__HKMedicationScheduleControl_updateNotificationSent_scheduleItemIdentifier_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)rescheduleMedicationsWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HKMedicationScheduleControl_rescheduleMedicationsWithCompletion___block_invoke;
  v9[3] = &unk_2796CA1D8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HKMedicationScheduleControl_rescheduleMedicationsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CA1B0;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __67__HKMedicationScheduleControl_rescheduleMedicationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__HKMedicationScheduleControl_rescheduleMedicationsWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)logUnloggedDoseEventsForScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HKMedicationScheduleControl_logUnloggedDoseEventsForScheduledItemIdentifier_status_logDate_completion___block_invoke;
  v19[3] = &unk_2796CA228;
  statusCopy = status;
  v20 = identifierCopy;
  v21 = dateCopy;
  v22 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__HKMedicationScheduleControl_logUnloggedDoseEventsForScheduledItemIdentifier_status_logDate_completion___block_invoke_2;
  v17[3] = &unk_2796CA1B0;
  v17[4] = self;
  v18 = v22;
  v14 = v22;
  v15 = dateCopy;
  v16 = identifierCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v17];
}

void __105__HKMedicationScheduleControl_logUnloggedDoseEventsForScheduledItemIdentifier_status_logDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __105__HKMedicationScheduleControl_logUnloggedDoseEventsForScheduledItemIdentifier_status_logDate_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HKMedicationScheduleControl_registerObserver_queue___block_invoke;
  v5[3] = &unk_2796CA058;
  v5[4] = self;
  [(HKMedicationScheduleControlObserver *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HKMedicationScheduleControl_unregisterObserver___block_invoke;
  v4[3] = &unk_2796CA058;
  v4[4] = self;
  [(HKMedicationScheduleControlObserver *)observers unregisterObserver:observer runIfLastObserver:v4];
}

- (void)_handleAutomaticProxyReconnection
{
  *v4 = 138543618;
  *&v4[4] = self;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_2517E7000, a2, a3, "[%{public}@] Failed to resume observation on server reconnection: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_registerFirstObserver
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__HKMedicationScheduleControl__registerFirstObserver__block_invoke;
  v2[3] = &unk_2796CA270;
  v2[4] = self;
  [(HKMedicationScheduleControl *)self _observeMedicationScheduleChanges:1 completion:v2];
}

void __53__HKMedicationScheduleControl__registerFirstObserver__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__HKMedicationScheduleControl__registerFirstObserver__block_invoke_cold_1(a1);
    }
  }

  [*(a1 + 32) _callUnitTestHookObserving:1 success:a2 error:v5];
}

- (void)_unregisterLastObserver
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__HKMedicationScheduleControl__unregisterLastObserver__block_invoke;
  v2[3] = &unk_2796CA270;
  v2[4] = self;
  [(HKMedicationScheduleControl *)self _observeMedicationScheduleChanges:0 completion:v2];
}

void __54__HKMedicationScheduleControl__unregisterLastObserver__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = HKLogMedication();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v11 = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v5;
        _os_log_impl(&dword_2517E7000, v8, OS_LOG_TYPE_INFO, "%{public}@: Error unregistering observer: %{public}@", &v11, 0x16u);
      }
    }
  }

  [*(a1 + 32) _callUnitTestHookObserving:0 success:a2 error:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_observeMedicationScheduleChanges:(BOOL)changes completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HKMedicationScheduleControl__observeMedicationScheduleChanges_completion___block_invoke;
  v11[3] = &unk_2796CA188;
  changesCopy = changes;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HKMedicationScheduleControl__observeMedicationScheduleChanges_completion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (BOOL)_synchronouslyRegisterToObserveMedicationScheduleChangesWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__HKMedicationScheduleControl__synchronouslyRegisterToObserveMedicationScheduleChangesWithError___block_invoke;
  v11[3] = &unk_2796CA2E8;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HKMedicationScheduleControl__synchronouslyRegisterToObserveMedicationScheduleChangesWithError___block_invoke_3;
  v10[3] = &unk_2796CA310;
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

uint64_t __97__HKMedicationScheduleControl__synchronouslyRegisterToObserveMedicationScheduleChangesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __97__HKMedicationScheduleControl__synchronouslyRegisterToObserveMedicationScheduleChangesWithError___block_invoke_2;
  v3[3] = &unk_2796CA2C0;
  v4 = *(a1 + 32);
  return [a2 remote_observeMedicationScheduleChanges:1 completion:v3];
}

- (void)client_notifyForDidPruneSchduleItems:(id)items
{
  itemsCopy = items;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HKMedicationScheduleControl_client_notifyForDidPruneSchduleItems___block_invoke;
  v7[3] = &unk_2796CA358;
  v8 = itemsCopy;
  v9 = sel_scheduleControl_didDeleteScheduleItems_;
  v7[4] = self;
  v6 = itemsCopy;
  [(HKMedicationScheduleControlObserver *)observers notifyObservers:v7];
}

void __68__HKMedicationScheduleControl_client_notifyForDidPruneSchduleItems___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 scheduleControl:a1[4] didDeleteScheduleItems:a1[5]];
  }
}

- (void)client_notifyForAddOrModifySchedules:(id)schedules
{
  schedulesCopy = schedules;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HKMedicationScheduleControl_client_notifyForAddOrModifySchedules___block_invoke;
  v7[3] = &unk_2796CA380;
  v8 = schedulesCopy;
  v9 = sel_scheduleControl_didAddOrModifySchedules_;
  v7[4] = self;
  v6 = schedulesCopy;
  [(HKMedicationScheduleControlObserver *)observers notifyObservers:v7];
}

void __68__HKMedicationScheduleControl_client_notifyForAddOrModifySchedules___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 scheduleControl:a1[4] didAddOrModifySchedules:a1[5]];
  }
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2863B8578];
  v3 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_client_notifyForDidPruneSchduleItems_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_client_notifyForAddOrModifySchedules_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2863C83B0];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_saveScheduleItems_completion_ argumentIndex:0 ofReply:0];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchAllSchedulesWithCompletion_ argumentIndex:0 ofReply:1];
  v5 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchSchedulesWithMedicationIdentifiers_completion_ argumentIndex:0 ofReply:1];

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

- (void)unitTest_noOpWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HKMedicationScheduleControl_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_2796CA1D8;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HKMedicationScheduleControl_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

void __55__HKMedicationScheduleControl_saveSchedule_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = [*(v0 + 40) medicationIdentifier];
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_2517E7000, v4, v5, "[%{public}@] Error when inserting schedule for medication with identifier %{public}@: %{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

void __105__HKMedicationScheduleControl_updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2517E7000, v1, v2, "[%{public}@] Error when updating schedules to local time zone: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __71__HKMedicationScheduleControl_setTimeZoneTipAsDismissedWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2517E7000, v1, v2, "[%{public}@] Error when dismissing timezone tile %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __80__HKMedicationScheduleControl_fetchScheduleWithMedicationIdentifier_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_2517E7000, v3, v4, "[%{public}@] Error when querying schedule for medication with identifier %{public}@: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __82__HKMedicationScheduleControl_fetchSchedulesWithMedicationIdentifiers_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_2517E7000, v3, v4, "[%{public}@] Error when querying schedules for medications with identifiers %{public}@: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __63__HKMedicationScheduleControl_fetchAllSchedulesWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2517E7000, v1, v2, "[%{public}@] Error when querying all schedules: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __57__HKMedicationScheduleControl_deleteSchedule_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = [*(v0 + 40) medicationIdentifier];
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_2517E7000, v4, v5, "[%{public}@] Error when deleting schedule with medication identifier: %{public}@ error: %{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__HKMedicationScheduleControl_saveScheduleItems_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_2517E7000, v3, v4, "[%{public}@] Error when inserting scheduleItems %{public}@ error %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __88__HKMedicationScheduleControl_updateNotificationSent_scheduleItemIdentifier_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_2517E7000, v3, v4, "[%{public}@] Error when updating scheduleItem with identifier %{public}@: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __67__HKMedicationScheduleControl_rescheduleMedicationsWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2517E7000, v1, v2, "[%{public}@] Error when rescheduling medications: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __105__HKMedicationScheduleControl_logUnloggedDoseEventsForScheduledItemIdentifier_status_logDate_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2517E7000, v1, v2, "[%{public}@] Error when logging scheduled unlogged medications: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __53__HKMedicationScheduleControl__registerFirstObserver__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2517E7000, v1, v2, "%{public}@: Error registering observer: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

@end