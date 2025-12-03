@interface HDCurrentActivitySummaryHelper
- (BOOL)hasLoadedActivitySummaries;
- (HDCurrentActivitySummaryHelper)initWithProfile:(id)profile;
- (HKActivitySummary)todayActivitySummary;
- (HKActivitySummary)yesterdayActivitySummary;
- (NSDate)dateOverride;
- (NSTimeZone)timezoneOverride;
- (id)_createEmptyActivitySummaryForIndex:(uint64_t)index;
- (uint64_t)_changedFieldsBetweenPreviousActivitySummary:(void *)summary andNewActivitySummary:(void *)activitySummary;
- (void)_generateCacheIndexesWithTodayIndex:(uint64_t *)index yesterdayIndex:;
- (void)_handleSignificantTimeChangeNotification:(id)notification;
- (void)_queue_alertObserversTodaySummaryUpdatedWithChangedFields:(uint64_t)fields;
- (void)_queue_alertObserversYesterdaySummaryUpdatedWithChangedFields:(uint64_t)fields;
- (void)_queue_didUpdateObservers;
- (void)_queue_setUpActivityQueryHelperOnlyIfUninitialized:(uint64_t)uninitialized;
- (void)_queue_updateTodayActivitySummary:(uint64_t)summary;
- (void)_queue_updateYesterdayActivitySummary:(uint64_t)summary;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setDateOverride:(id)override;
- (void)setTimezoneOverride:(id)override;
@end

@implementation HDCurrentActivitySummaryHelper

- (HKActivitySummary)todayActivitySummary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__83;
  v10 = __Block_byref_object_dispose__83;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HDCurrentActivitySummaryHelper_todayActivitySummary__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (HKActivitySummary)yesterdayActivitySummary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__83;
  v10 = __Block_byref_object_dispose__83;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HDCurrentActivitySummaryHelper_yesterdayActivitySummary__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasLoadedActivitySummaries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HDCurrentActivitySummaryHelper_hasLoadedActivitySummaries__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (HDCurrentActivitySummaryHelper)initWithProfile:(id)profile
{
  v27[6] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v26.receiver = self;
  v26.super_class = HDCurrentActivitySummaryHelper;
  v5 = [(HDCurrentActivitySummaryHelper *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    _HKInitializeLogging();
    v9 = objc_alloc(MEMORY[0x277CCD738]);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 initWithName:v11 loggingCategory:*MEMORY[0x277CCC308]];
    observers = v6->_observers;
    v6->_observers = v12;

    v14 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
    v27[0] = v14;
    v15 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC928]];
    v27[1] = v15;
    v16 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];
    v27[2] = v16;
    briskMinuteDataType = [MEMORY[0x277CCD720] briskMinuteDataType];
    v27[3] = briskMinuteDataType;
    v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
    v27[4] = v18;
    v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
    v27[5] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];
    typesForDataCollection = v6->_typesForDataCollection;
    v6->_typesForDataCollection = v20;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _significantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleSignificantTimeChangeNotification_ name:*MEMORY[0x277CBE580] object:0];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE580] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v5.receiver = self;
  v5.super_class = HDCurrentActivitySummaryHelper;
  [(HDCurrentActivitySummaryHelper *)&v5 dealloc];
}

- (void)setDateOverride:(id)override
{
  overrideCopy = override;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HDCurrentActivitySummaryHelper_setDateOverride___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = overrideCopy;
  v6 = overrideCopy;
  dispatch_sync(queue, v7);
}

uint64_t __50__HDCurrentActivitySummaryHelper_setDateOverride___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _handleSignificantTimeChangeNotification:0];
}

- (NSDate)dateOverride
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__83;
  v10 = __Block_byref_object_dispose__83;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__HDCurrentActivitySummaryHelper_dateOverride__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setTimezoneOverride:(id)override
{
  overrideCopy = override;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDCurrentActivitySummaryHelper_setTimezoneOverride___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = overrideCopy;
  v6 = overrideCopy;
  dispatch_sync(queue, v7);
}

uint64_t __54__HDCurrentActivitySummaryHelper_setTimezoneOverride___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _handleSignificantTimeChangeNotification:0];
}

- (NSTimeZone)timezoneOverride
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__83;
  v10 = __Block_byref_object_dispose__83;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HDCurrentActivitySummaryHelper_timezoneOverride__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_generateCacheIndexesWithTodayIndex:(uint64_t *)index yesterdayIndex:
{
  v24 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    [v6 setTimeZone:systemTimeZone];

    if (*(self + 96))
    {
      [v6 setTimeZone:?];
    }

    v8 = *(self + 88);
    if (v8)
    {
      date = v8;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v10 = date;
    v11 = [v6 dateByAddingUnit:16 value:-1 toDate:date options:0];
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
    {
      v18 = 138412802;
      selfCopy = self;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "%@: Generating cache indices for today: %@, yesterday: %@", &v18, 0x20u);
    }

    v13 = [v6 hk_activitySummaryDateComponentsFromDate:v10];
    v14 = [v6 hk_activitySummaryDateComponentsFromDate:v11];
    v15 = _HKCacheIndexFromDateComponents();
    v16 = _HKCacheIndexFromDateComponents();
    if (a2)
    {
      *a2 = v15;
    }

    if (index)
    {
      *index = v16;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setUpActivityQueryHelperOnlyIfUninitialized:(uint64_t)uninitialized
{
  v27 = *MEMORY[0x277D85DE8];
  if (uninitialized && (!a2 || !*(uninitialized + 16)))
  {
    [(HDCurrentActivitySummaryHelper *)uninitialized _generateCacheIndexesWithTodayIndex:(uninitialized + 40) yesterdayIndex:?];
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(uninitialized + 32);
      v5 = *(uninitialized + 40);
      *buf = 138543874;
      uninitializedCopy = uninitialized;
      v23 = 2048;
      v24 = v4;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting up new query helper with indices today: (%ld) and yesterday: (%ld)", buf, 0x20u);
    }

    v6 = [MEMORY[0x277CCDD08] filterWithOperatorType:4 cacheIndex:*(uninitialized + 32)];
    v7 = [MEMORY[0x277CCDD08] filterWithOperatorType:4 cacheIndex:*(uninitialized + 40)];
    v8 = MEMORY[0x277CCDD48];
    v20[0] = v6;
    v20[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v10 = [v8 orFilterWithSubfilters:v9];

    objc_initWeak(buf, uninitialized);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__HDCurrentActivitySummaryHelper__queue_setUpActivityQueryHelperOnlyIfUninitialized___block_invoke;
    aBlock[3] = &unk_278616438;
    objc_copyWeak(&v19, buf);
    v11 = _Block_copy(aBlock);
    *(uninitialized + 64) = 0;
    [*(uninitialized + 16) stop];
    v12 = [HDActivitySummaryQueryHelper alloc];
    WeakRetained = objc_loadWeakRetained((uninitialized + 8));
    v14 = [(HDActivitySummaryQueryHelper *)v12 initWithProfile:WeakRetained filter:v10 batchedInitialResultsHandler:v11 batchedUpdateHandler:v11];
    v16 = *(uninitialized + 16);
    v15 = (uninitialized + 16);
    *v15 = v14;

    [*v15 start];
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __85__HDCurrentActivitySummaryHelper__queue_setUpActivityQueryHelperOnlyIfUninitialized___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = v8;
  v10 = v7;
  if (WeakRetained)
  {
    v11 = WeakRetained[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDCurrentActivitySummaryHelper__handleBatchedActivitySummaries_error___block_invoke;
    block[3] = &unk_278613830;
    v14 = v10;
    v15 = WeakRetained;
    v16 = v9;
    dispatch_async(v11, block);
  }
}

void __72__HDCurrentActivitySummaryHelper__handleBatchedActivitySummaries_error___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543618;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Error occurred, resetting query helper: %{public}@", buf, 0x16u);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      [*(v3 + 16) stop];
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v6;
    if (v5)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:buf count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        do
        {
          v12 = 0;
          do
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v22 + 1) + 8 * v12);
            v14 = objc_autoreleasePoolPush();
            v15 = [v13 _gregorianDateComponents];
            v16 = _HKCacheIndexFromDateComponents();

            if (v16 == *(v5 + 32))
            {
              [(HDCurrentActivitySummaryHelper *)v5 _queue_updateTodayActivitySummary:v13];
            }

            else if (v16 == *(v5 + 40))
            {
              [(HDCurrentActivitySummaryHelper *)v5 _queue_updateYesterdayActivitySummary:v13];
            }

            objc_autoreleasePoolPop(v14);
            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v22 objects:buf count:16];
        }

        while (v10);
      }

      if ((*(v5 + 64) & 1) == 0 && ![v8 count])
      {
        v17 = [(HDCurrentActivitySummaryHelper *)v5 _createEmptyActivitySummaryForIndex:?];
        [(HDCurrentActivitySummaryHelper *)v5 _queue_updateTodayActivitySummary:v17];

        v18 = [(HDCurrentActivitySummaryHelper *)v5 _createEmptyActivitySummaryForIndex:?];
        [(HDCurrentActivitySummaryHelper *)v5 _queue_updateYesterdayActivitySummary:v18];
      }

      *(v5 + 64) = 1;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateTodayActivitySummary:(uint64_t)summary
{
  v5 = a2;
  v4 = [HDCurrentActivitySummaryHelper _changedFieldsBetweenPreviousActivitySummary:v5 andNewActivitySummary:?];
  objc_storeStrong((summary + 48), a2);
  [(HDCurrentActivitySummaryHelper *)summary _queue_alertObserversTodaySummaryUpdatedWithChangedFields:v4];
}

- (void)_queue_updateYesterdayActivitySummary:(uint64_t)summary
{
  v5 = a2;
  v4 = [HDCurrentActivitySummaryHelper _changedFieldsBetweenPreviousActivitySummary:v5 andNewActivitySummary:?];
  objc_storeStrong((summary + 56), a2);
  [(HDCurrentActivitySummaryHelper *)summary _queue_alertObserversYesterdaySummaryUpdatedWithChangedFields:v4];
}

- (id)_createEmptyActivitySummaryForIndex:(uint64_t)index
{
  if (index)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCCFB0]);
    [v3 _setActivitySummaryIndex:a2];
    [v3 _setDataLoading:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_changedFieldsBetweenPreviousActivitySummary:(void *)summary andNewActivitySummary:(void *)activitySummary
{
  activitySummaryCopy = activitySummary;
  summaryCopy = summary;
  activeEnergyBurnedGoal = [summaryCopy activeEnergyBurnedGoal];
  activeEnergyBurnedGoal2 = [activitySummaryCopy activeEnergyBurnedGoal];
  v48 = [activeEnergyBurnedGoal isEqual:activeEnergyBurnedGoal2];

  activeEnergyBurned = [summaryCopy activeEnergyBurned];
  activeEnergyBurned2 = [activitySummaryCopy activeEnergyBurned];
  v47 = [activeEnergyBurned isEqual:activeEnergyBurned2];

  appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];
  appleMoveTimeGoal2 = [activitySummaryCopy appleMoveTimeGoal];
  v46 = [appleMoveTimeGoal isEqual:appleMoveTimeGoal2];

  appleMoveTime = [summaryCopy appleMoveTime];
  appleMoveTime2 = [activitySummaryCopy appleMoveTime];
  v45 = [appleMoveTime isEqual:appleMoveTime2];

  exerciseTimeGoal = [summaryCopy exerciseTimeGoal];
  exerciseTimeGoal2 = [activitySummaryCopy exerciseTimeGoal];
  v44 = [exerciseTimeGoal isEqual:exerciseTimeGoal2];

  appleExerciseTime = [summaryCopy appleExerciseTime];
  appleExerciseTime2 = [activitySummaryCopy appleExerciseTime];
  v43 = [appleExerciseTime isEqual:appleExerciseTime2];

  standHoursGoal = [summaryCopy standHoursGoal];
  standHoursGoal2 = [activitySummaryCopy standHoursGoal];
  v42 = [standHoursGoal isEqual:standHoursGoal2];

  appleStandHours = [summaryCopy appleStandHours];
  appleStandHours2 = [activitySummaryCopy appleStandHours];
  v41 = [appleStandHours isEqual:appleStandHours2];

  stepCount = [summaryCopy stepCount];
  stepCount2 = [activitySummaryCopy stepCount];
  v40 = [stepCount isEqual:stepCount2];

  _deepBreathingDuration = [summaryCopy _deepBreathingDuration];
  _deepBreathingDuration2 = [activitySummaryCopy _deepBreathingDuration];
  v25 = [_deepBreathingDuration isEqual:_deepBreathingDuration2];

  _pushCount = [summaryCopy _pushCount];
  _pushCount2 = [activitySummaryCopy _pushCount];
  v28 = [_pushCount isEqual:_pushCount2];

  _flightsClimbed = [summaryCopy _flightsClimbed];
  _flightsClimbed2 = [activitySummaryCopy _flightsClimbed];
  v31 = [_flightsClimbed isEqual:_flightsClimbed2];

  _wheelchairUse = [summaryCopy _wheelchairUse];
  _wheelchairUse2 = [activitySummaryCopy _wheelchairUse];
  activityMoveMode = [summaryCopy activityMoveMode];
  activityMoveMode2 = [activitySummaryCopy activityMoveMode];
  isPaused = [summaryCopy isPaused];

  isPaused2 = [activitySummaryCopy isPaused];
  v38 = 16;
  if (v48)
  {
    v38 = 0;
  }

  if (!v47)
  {
    v38 |= 2uLL;
  }

  if (!v46)
  {
    v38 |= 0x8000uLL;
  }

  if (!v45)
  {
    v38 |= 0x4000uLL;
  }

  if (!v44)
  {
    v38 |= 0x20uLL;
  }

  if (!v43)
  {
    v38 |= 4uLL;
  }

  if (!v42)
  {
    v38 |= 0x40uLL;
  }

  if (!v41)
  {
    v38 |= 8uLL;
  }

  if (!v40)
  {
    v38 |= 0x80uLL;
  }

  if (!v25)
  {
    v38 |= 0x400uLL;
  }

  if (!v28)
  {
    v38 |= 0x800uLL;
  }

  if (!v31)
  {
    v38 |= 0x1000uLL;
  }

  if (_wheelchairUse != _wheelchairUse2)
  {
    v38 |= 0x2000uLL;
  }

  if (activityMoveMode != activityMoveMode2)
  {
    v38 |= 0x10000uLL;
  }

  if (isPaused != isPaused2)
  {
    return v38 | 0x20000;
  }

  else
  {
    return v38;
  }
}

- (void)_queue_alertObserversTodaySummaryUpdatedWithChangedFields:(uint64_t)fields
{
  if (fields)
  {
    v4 = [*(fields + 48) copy];
    v5 = *(fields + 80);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __92__HDCurrentActivitySummaryHelper__queue_alertObserversTodaySummaryUpdatedWithChangedFields___block_invoke;
    v7[3] = &unk_27861FDC8;
    v7[4] = fields;
    v8 = v4;
    v9 = a2;
    v6 = v4;
    [v5 notifyObservers:v7];
  }
}

- (void)_queue_alertObserversYesterdaySummaryUpdatedWithChangedFields:(uint64_t)fields
{
  if (fields)
  {
    v4 = [*(fields + 56) copy];
    v5 = *(fields + 80);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __96__HDCurrentActivitySummaryHelper__queue_alertObserversYesterdaySummaryUpdatedWithChangedFields___block_invoke;
    v7[3] = &unk_27861FDC8;
    v7[4] = fields;
    v8 = v4;
    v9 = a2;
    v6 = v4;
    [v5 notifyObservers:v7];
  }
}

- (void)_queue_didUpdateObservers
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (![*(self + 80) count])
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      dataCollectionManager = [WeakRetained dataCollectionManager];

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      database = *(self + 72);
      v6 = [database countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(database);
            }

            [dataCollectionManager stopDataCollectionForType:*(*(&v11 + 1) + 8 * v9++) observer:{self, v11}];
          }

          while (v7 != v9);
          v7 = [database countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v7);
      }

      goto LABEL_12;
    }

    if (!*(self + 16))
    {
      dataCollectionManager = objc_loadWeakRetained((self + 8));
      database = [dataCollectionManager database];
      v4 = *(self + 24);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__HDCurrentActivitySummaryHelper__queue_didUpdateObservers__block_invoke;
      v15[3] = &unk_278613968;
      v15[4] = self;
      [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v4 block:v15];
LABEL_12:
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(HKObserverSet *)self->_observers registerObserver:observerCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HDCurrentActivitySummaryHelper_addObserver___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __46__HDCurrentActivitySummaryHelper_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64) == 1)
  {
    v3 = [*(v2 + 48) copy];
    v4 = [*(*(a1 + 32) + 56) copy];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(v5 + 80);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__HDCurrentActivitySummaryHelper_addObserver___block_invoke_2;
    v10[3] = &unk_27861FDF0;
    v10[4] = v5;
    v11 = v3;
    v12 = v4;
    v8 = v4;
    v9 = v3;
    [v7 notifyObserver:v6 handler:v10];

    v2 = *(a1 + 32);
  }

  [(HDCurrentActivitySummaryHelper *)v2 _queue_didUpdateObservers];
}

void __46__HDCurrentActivitySummaryHelper_addObserver___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 currentActivitySummaryHelper:v3 didUpdateTodayActivitySummary:v4 changedFields:-1];
  [v5 currentActivitySummaryHelper:a1[4] didUpdateYesterdayActivitySummary:a1[6] changedFields:-1];
}

- (void)removeObserver:(id)observer
{
  [(HKObserverSet *)self->_observers unregisterObserver:observer];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HDCurrentActivitySummaryHelper_removeObserver___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleSignificantTimeChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HDCurrentActivitySummaryHelper__handleSignificantTimeChangeNotification___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __75__HDCurrentActivitySummaryHelper__handleSignificantTimeChangeNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    *buf = 0;
    [(HDCurrentActivitySummaryHelper *)v2 _generateCacheIndexesWithTodayIndex:buf yesterdayIndex:0];
    v3 = *buf;
    v4 = *(v2 + 32);
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC308];
    v6 = os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT);
    if (v3 == v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v7;
        v8 = "%{public}@: Significant time change occurred, no date change";
LABEL_7:
        _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v10;
        _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Significant time change occurred, date change occurred. Re-querying", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      v12 = [WeakRetained database];
      v13 = *(a1 + 32);
      v14 = *(v13 + 24);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __75__HDCurrentActivitySummaryHelper__handleSignificantTimeChangeNotification___block_invoke_310;
      v16[3] = &unk_278613968;
      v16[4] = v13;
      [v12 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v14 block:v16];
    }
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v9;
      v8 = "%{public}@: Significant time change occurred, query helper has not been set up yet";
      goto LABEL_7;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__HDCurrentActivitySummaryHelper__handleSignificantTimeChangeNotification___block_invoke_310(uint64_t a1)
{
  [(HDCurrentActivitySummaryHelper *)*(a1 + 32) _queue_setUpActivityQueryHelperOnlyIfUninitialized:?];
  v2 = [(HDCurrentActivitySummaryHelper *)*(a1 + 32) _createEmptyActivitySummaryForIndex:?];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = [(HDCurrentActivitySummaryHelper *)*(a1 + 32) _createEmptyActivitySummaryForIndex:?];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  [(HDCurrentActivitySummaryHelper *)*(a1 + 32) _queue_alertObserversTodaySummaryUpdatedWithChangedFields:?];
  v8 = *(a1 + 32);

  [(HDCurrentActivitySummaryHelper *)v8 _queue_alertObserversYesterdaySummaryUpdatedWithChangedFields:?];
}

@end