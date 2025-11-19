@interface HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm
- (HKHRAFibBurdenSevenDayAnalysisSchedulerAlarmDelegate)delegate;
- (HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm)initWithProfile:(id)a3;
- (HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm)initWithScheduler:(id)a3 profile:(id)a4 userDefaults:(id)a5 queue:(id)a6 dateGenerator:(id)a7 shouldAutomaticallyStart:(BOOL)a8;
- (id)_determineNextEventDateComponents;
- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4;
- (void)_queue_beginReceivingAlarmEvents;
- (void)_queue_scheduleEvent;
- (void)_scheduleEventWithCompletion:(id)a3;
- (void)_stop;
- (void)_unitTest_beginReceivingAlarmEvents;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm

- (HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm)initWithProfile:(id)a3
{
  v4 = a3;
  v5 = HKCreateSerialDispatchQueue();
  v6 = [objc_alloc(MEMORY[0x277D10838]) initWithProfile:v4 clientIdentifier:@"HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm" eventHandlerQueue:v5];
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [(HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm *)self initWithScheduler:v6 profile:v4 userDefaults:v7 queue:v5 dateGenerator:&__block_literal_global_15 shouldAutomaticallyStart:1];

  return v8;
}

- (HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm)initWithScheduler:(id)a3 profile:(id)a4 userDefaults:(id)a5 queue:(id)a6 dateGenerator:(id)a7 shouldAutomaticallyStart:(BOOL)a8
{
  v8 = a8;
  v25 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v26.receiver = self;
  v26.super_class = HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm;
  v19 = [(HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scheduler, a3);
    objc_storeWeak(&v20->_profile, v15);
    objc_storeStrong(&v20->_defaults, a5);
    objc_storeStrong(&v20->_queue, a6);
    v21 = MEMORY[0x22AACDB50](v18);
    dateGenerator = v20->_dateGenerator;
    v20->_dateGenerator = v21;

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&v20->_profile);
      [WeakRetained registerProfileReadyObserver:v20 queue:v20->_queue];
    }
  }

  return v20;
}

- (void)profileDidBecomeReady:(id)a3
{
  [(HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm *)self _queue_beginReceivingAlarmEvents];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm_profileDidBecomeReady___block_invoke;
  v7[3] = &unk_27865FD90;
  v7[4] = self;
  [v5 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

- (void)_unitTest_beginReceivingAlarmEvents
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__unitTest_beginReceivingAlarmEvents__block_invoke;
  block[3] = &unk_27865FD90;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __86__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__unitTest_beginReceivingAlarmEvents__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__unitTest_beginReceivingAlarmEvents__block_invoke_2;
  v3[3] = &unk_278660D20;
  objc_copyWeak(&v4, &location);
  [v2 beginReceivingEventsWithHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __86__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__unitTest_beginReceivingAlarmEvents__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

- (void)_stop
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKHRAFibBurdenLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

  if (v4)
  {
    v5 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_INFO, "[%@] Stopping observation", &v7, 0xCu);
    }
  }

  [(HDRestorableAlarm *)self->_scheduler invalidate];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_beginReceivingAlarmEvents
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  scheduler = self->_scheduler;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__queue_beginReceivingAlarmEvents__block_invoke;
  v4[3] = &unk_278660D20;
  objc_copyWeak(&v5, &location);
  [(HDRestorableAlarm *)scheduler beginReceivingEventsWithHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __83__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__queue_beginReceivingAlarmEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Alarm fired, rescheduling and firing", &v8, 0xCu);
  }

  [(HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm *)self _scheduleEventWithCompletion:0];
  v6 = [(HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm *)self delegate];
  [v6 initialAnalysisAlarmDidFireWithAlarm:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleEventWithCompletion:(id)a3
{
  v4 = a3;
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__scheduleEventWithCompletion___block_invoke;
  v7[3] = &unk_278660D48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HDRestorableAlarm *)scheduler checkForDueEventsWithCompletion:v7];
}

void __80__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__scheduleEventWithCompletion___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if ((a3 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __80__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__scheduleEventWithCompletion___block_invoke_cold_1(a1, v8, v9);
    }
  }

  [*(a1 + 32) _queue_scheduleEvent];
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (void)_queue_scheduleEvent
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_229486000, a2, a3, "[%@] Error while scheduling events: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_determineNextEventDateComponents
{
  v18 = *MEMORY[0x277D85DE8];
  defaults = self->_defaults;
  v4 = HKHRAFibBurdenSevenDayAnalysisDetermineAlarmDateComponentsWithDefaults();
  v5 = [v4 calendar];
  v6 = (*(self->_dateGenerator + 2))();
  v7 = [v5 nextDateAfterDate:v6 matchingComponents:v4 options:1024];

  _HKInitializeLogging();
  v8 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%@] Scheduling alarm to trigger analysis at %@", &v14, 0x16u);
  }

  v9 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v10 = [v9 components:252 fromDate:v7];
  [v10 setCalendar:v9];
  v11 = [v9 timeZone];
  [v10 setTimeZone:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HKHRAFibBurdenSevenDayAnalysisSchedulerAlarmDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __80__HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm__scheduleEventWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_229486000, a2, a3, "[%{public}@] Error checking for due events before rescheduling: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end