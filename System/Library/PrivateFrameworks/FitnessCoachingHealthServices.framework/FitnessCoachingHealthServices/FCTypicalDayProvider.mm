@interface FCTypicalDayProvider
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)a3 toDateComponents:(id)a4 error:(id *)a5 handler:(id)a6;
- (FCTypicalDayProvider)initWithDateProvider:(id)a3 profile:(id)a4 serviceQueue:(id)a5;
- (id)_typicalDayIntervalFromToday;
- (id)onServiceQueue_currentActivityCacheSummary;
- (void)_onqueue_handleUpdatedActivitySummary:(id)a3;
- (void)_onqueue_rebuildTypicalDayModelForced:(BOOL)a3;
- (void)_onqueue_registerForSignificantTimeChanges;
- (void)_significantTimeChangeOccurred:(id)a3;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation FCTypicalDayProvider

- (FCTypicalDayProvider)initWithDateProvider:(id)a3 profile:(id)a4 serviceQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = FCTypicalDayProvider;
  v12 = [(FCTypicalDayProvider *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateProvider, a3);
    objc_storeWeak(&v13->_profile, v10);
    objc_storeStrong(&v13->_serviceQueue, a5);
    WeakRetained = objc_loadWeakRetained(&v13->_profile);
    [WeakRetained registerProfileReadyObserver:v13 queue:v13->_serviceQueue];
  }

  return v13;
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_significantTimeChangeToken))
  {
    notify_cancel(self->_significantTimeChangeToken);
    self->_significantTimeChangeToken = -1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained currentActivitySummaryHelper];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = FCTypicalDayProvider;
  [(FCTypicalDayProvider *)&v5 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  serviceQueue = self->_serviceQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serviceQueue);
  v6 = objc_alloc(MEMORY[0x277D095D0]);
  v7 = [(FCTypicalDayProvider *)self _typicalDayIntervalFromToday];
  v8 = [v6 initForDateInterval:v7 delegate:self];
  typicalDayModel = self->_typicalDayModel;
  self->_typicalDayModel = v8;

  v10 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  lastRebuildDate = self->_lastRebuildDate;
  self->_lastRebuildDate = v10;

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_24B55B000, v12, OS_LOG_TYPE_DEFAULT, "Loaded typical day model", v14, 2u);
  }

  v13 = [v5 currentActivitySummaryHelper];

  [v13 addObserver:self];
  [(FCTypicalDayProvider *)self _onqueue_registerForSignificantTimeChanges];
}

- (void)_onqueue_registerForSignificantTimeChanges
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  objc_initWeak(&location, self);
  v3 = [@"SignificantTimeChangeNotification" UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__FCTypicalDayProvider__onqueue_registerForSignificantTimeChanges__block_invoke;
  v10 = &unk_27900B558;
  objc_copyWeak(&v11, &location);
  notify_register_dispatch(v3, &self->_significantTimeChangeToken, v4, &v7);

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__significantTimeChangeOccurred_ name:*MEMORY[0x277CBE580] object:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__FCTypicalDayProvider__onqueue_registerForSignificantTimeChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _significantTimeChangeOccurred:0];
}

- (void)_significantTimeChangeOccurred:(id)a3
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B55B000, v4, OS_LOG_TYPE_DEFAULT, "Significant time change occurred", buf, 2u);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FCTypicalDayProvider__significantTimeChangeOccurred___block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

- (void)_onqueue_rebuildTypicalDayModelForced:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  v5 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  if (a3)
  {
    goto LABEL_7;
  }

  if (self->_lastRebuildDate)
  {
    v6 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
    v7 = [v6 isDate:v5 inSameDayAsDate:self->_lastRebuildDate];

    if (v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v9 = "Already rebuilt the typical day model today";
LABEL_13:
        _os_log_impl(&dword_24B55B000, v8, OS_LOG_TYPE_DEFAULT, v9, &v16, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v12 = [v11 isProtectedDataAvailable];

  if (v12)
  {
LABEL_7:
    v13 = [(FCTypicalDayProvider *)self _typicalDayIntervalFromToday];
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_24B55B000, v14, OS_LOG_TYPE_DEFAULT, "Rebuilding typical day model with interval: %@", &v16, 0xCu);
    }

    [(FITypicalDayActivityModel *)self->_typicalDayModel rebuildWithInterval:v13];

    goto LABEL_10;
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    v9 = "Waiting for protected to be available before rebuilding typical day model";
    goto LABEL_13;
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleUpdatedActivitySummary:(id)a3
{
  objc_storeStrong(&self->_currentActivitySummary, a3);
  v5 = a3;
  [(FITypicalDayActivityModel *)self->_typicalDayModel handleUpdatedCurrentActivitySummary:v5];
}

- (id)_typicalDayIntervalFromToday
{
  v3 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  v4 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v5 = [v3 startOfDayForDate:v4];

  v6 = [v3 hk_startOfDateBySubtractingDays:*MEMORY[0x277D09570] fromDate:v5];
  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v5];

  return v7;
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)a3 toDateComponents:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277D10588];
  v12 = a4;
  v13 = a3;
  v14 = [v11 alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 initWithProfile:WeakRetained];

  [v16 setShouldIncludePrivateProperties:1];
  [v16 setShouldIncludeStatistics:1];
  v17 = HDActivityCacheEntityPredicateForCachesInDateComponentsRange();

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__FCTypicalDayProvider_enumerateActivitySummariesFromDateComponents_toDateComponents_error_handler___block_invoke;
  v20[3] = &unk_27900B580;
  v21 = v10;
  v18 = v10;
  LOBYTE(a5) = [v16 enumerateActivitySummariesWithPredicate:v17 error:a5 handler:v20];

  return a5;
}

- (id)onServiceQueue_currentActivityCacheSummary
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  currentActivitySummary = self->_currentActivitySummary;

  return currentActivitySummary;
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v6 = a4;
  objc_initWeak(&location, self);
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__FCTypicalDayProvider_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke;
  block[3] = &unk_27900B5A8;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v8 = v6;
  dispatch_async(serviceQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __97__FCTypicalDayProvider_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onqueue_handleUpdatedActivitySummary:*(a1 + 32)];
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v13 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = a5;
      _os_log_impl(&dword_24B55B000, v7, OS_LOG_TYPE_DEFAULT, "Yesterday summary changed, rebuilding typical day model (changed fields = %lu", buf, 0xCu);
    }

    serviceQueue = self->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__FCTypicalDayProvider_currentActivitySummaryHelper_didUpdateYesterdayActivitySummary_changedFields___block_invoke;
    block[3] = &unk_27900B3B0;
    block[4] = self;
    dispatch_async(serviceQueue, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end