@interface FCTypicalDayProvider
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler;
- (FCTypicalDayProvider)initWithDateProvider:(id)provider profile:(id)profile serviceQueue:(id)queue;
- (id)_typicalDayIntervalFromToday;
- (id)onServiceQueue_currentActivityCacheSummary;
- (void)_onqueue_handleUpdatedActivitySummary:(id)summary;
- (void)_onqueue_rebuildTypicalDayModelForced:(BOOL)forced;
- (void)_onqueue_registerForSignificantTimeChanges;
- (void)_significantTimeChangeOccurred:(id)occurred;
- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation FCTypicalDayProvider

- (FCTypicalDayProvider)initWithDateProvider:(id)provider profile:(id)profile serviceQueue:(id)queue
{
  providerCopy = provider;
  profileCopy = profile;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = FCTypicalDayProvider;
  v12 = [(FCTypicalDayProvider *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateProvider, provider);
    objc_storeWeak(&v13->_profile, profileCopy);
    objc_storeStrong(&v13->_serviceQueue, queue);
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
  currentActivitySummaryHelper = [WeakRetained currentActivitySummaryHelper];
  [currentActivitySummaryHelper removeObserver:self];

  v5.receiver = self;
  v5.super_class = FCTypicalDayProvider;
  [(FCTypicalDayProvider *)&v5 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  serviceQueue = self->_serviceQueue;
  readyCopy = ready;
  dispatch_assert_queue_V2(serviceQueue);
  v6 = objc_alloc(MEMORY[0x277D095D0]);
  _typicalDayIntervalFromToday = [(FCTypicalDayProvider *)self _typicalDayIntervalFromToday];
  v8 = [v6 initForDateInterval:_typicalDayIntervalFromToday delegate:self];
  typicalDayModel = self->_typicalDayModel;
  self->_typicalDayModel = v8;

  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  lastRebuildDate = self->_lastRebuildDate;
  self->_lastRebuildDate = coachingDate;

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_24B55B000, v12, OS_LOG_TYPE_DEFAULT, "Loaded typical day model", v14, 2u);
  }

  currentActivitySummaryHelper = [readyCopy currentActivitySummaryHelper];

  [currentActivitySummaryHelper addObserver:self];
  [(FCTypicalDayProvider *)self _onqueue_registerForSignificantTimeChanges];
}

- (void)_onqueue_registerForSignificantTimeChanges
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  objc_initWeak(&location, self);
  uTF8String = [@"SignificantTimeChangeNotification" UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__FCTypicalDayProvider__onqueue_registerForSignificantTimeChanges__block_invoke;
  v10 = &unk_27900B558;
  objc_copyWeak(&v11, &location);
  notify_register_dispatch(uTF8String, &self->_significantTimeChangeToken, v4, &v7);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__significantTimeChangeOccurred_ name:*MEMORY[0x277CBE580] object:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__FCTypicalDayProvider__onqueue_registerForSignificantTimeChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _significantTimeChangeOccurred:0];
}

- (void)_significantTimeChangeOccurred:(id)occurred
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

- (void)_onqueue_rebuildTypicalDayModelForced:(BOOL)forced
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  if (forced)
  {
    goto LABEL_7;
  }

  if (self->_lastRebuildDate)
  {
    coachingCalendar = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
    v7 = [coachingCalendar isDate:coachingDate inSameDayAsDate:self->_lastRebuildDate];

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
  database = [WeakRetained database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
LABEL_7:
    _typicalDayIntervalFromToday = [(FCTypicalDayProvider *)self _typicalDayIntervalFromToday];
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = _typicalDayIntervalFromToday;
      _os_log_impl(&dword_24B55B000, v14, OS_LOG_TYPE_DEFAULT, "Rebuilding typical day model with interval: %@", &v16, 0xCu);
    }

    [(FITypicalDayActivityModel *)self->_typicalDayModel rebuildWithInterval:_typicalDayIntervalFromToday];

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

- (void)_onqueue_handleUpdatedActivitySummary:(id)summary
{
  objc_storeStrong(&self->_currentActivitySummary, summary);
  summaryCopy = summary;
  [(FITypicalDayActivityModel *)self->_typicalDayModel handleUpdatedCurrentActivitySummary:summaryCopy];
}

- (id)_typicalDayIntervalFromToday
{
  coachingCalendar = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v5 = [coachingCalendar startOfDayForDate:coachingDate];

  v6 = [coachingCalendar hk_startOfDateBySubtractingDays:*MEMORY[0x277D09570] fromDate:v5];
  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v5];

  return v7;
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v11 = MEMORY[0x277D10588];
  dateComponentsCopy = dateComponents;
  componentsCopy = components;
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
  v21 = handlerCopy;
  v18 = handlerCopy;
  LOBYTE(error) = [v16 enumerateActivitySummariesWithPredicate:v17 error:error handler:v20];

  return error;
}

- (id)onServiceQueue_currentActivityCacheSummary
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  currentActivitySummary = self->_currentActivitySummary;

  return currentActivitySummary;
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  objc_initWeak(&location, self);
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__FCTypicalDayProvider_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke;
  block[3] = &unk_27900B5A8;
  objc_copyWeak(&v11, &location);
  v10 = summaryCopy;
  v8 = summaryCopy;
  dispatch_async(serviceQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __97__FCTypicalDayProvider_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onqueue_handleUpdatedActivitySummary:*(a1 + 32)];
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  v13 = *MEMORY[0x277D85DE8];
  if (fields)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      fieldsCopy = fields;
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