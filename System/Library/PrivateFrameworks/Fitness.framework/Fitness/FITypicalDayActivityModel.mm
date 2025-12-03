@interface FITypicalDayActivityModel
+ (id)_emptySimpleHistogram;
- (BOOL)_queue_enumerateActivitySummariesOrderedByCacheIndexWithCalendar:(id)calendar error:(id *)error handler:(id)handler;
- (BOOL)_willCompleteGoalWithType:(int64_t)type bufferPercentage:(double)percentage;
- (BOOL)isSleepAlarmEnabledForToday;
- (BOOL)projectedToBeatMoveRecordByEndOfDay;
- (BOOL)shouldSuggestWalkWithActivitySettingsController:(id)controller;
- (BOOL)willCompleteStandGoalOrItIsTooLateWithBufferPercentage:(double)percentage;
- (BOOL)willCompletingMoveRingEarnStreakAchievement;
- (FITypicalDayActivityModelDelegate)delegate;
- (NSString)debugDescription;
- (double)_percentageOfTypicalDayComparedToNowForGoal:(int64_t)goal;
- (double)_queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:(id)birth biologicalSex:(int64_t)sex height:(id)height weight:(id)weight wheelchairUse:(int64_t)use experienceType:(unint64_t)type;
- (double)_queue_currentValueForHistogram:(id)histogram;
- (double)briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController:(id)controller;
- (double)currentExerciseGoalPercentage;
- (double)currentMoveGoalPercentage;
- (double)currentStandGoalPercentage;
- (double)projectedDayDuration;
- (double)valueOfTypicalDayBriskMinutesEarnedByNow;
- (double)valueOfTypicalDayMoveEarnedByNow;
- (id)_goodMorningAlertDismissedDateForToday;
- (id)_queue_calculateProjectedOffWristDateFromHistogram:(id)histogram activeDays:(int64_t)days;
- (id)currentCalendar;
- (id)currentDate;
- (id)endOfToday;
- (id)initForDateInterval:(id)interval delegate:(id)delegate;
- (id)initForDateInterval:(id)interval delegate:(id)delegate sleepDataProvider:(id)provider;
- (id)projectedOffWrist;
- (id)sleepUserDay;
- (id)startOfToday;
- (id)userEndOfDay;
- (id)userStartOfDay;
- (id)userWakeUpDateForToday;
- (int64_t)_bucketIndexForDate:(id)date startOfDay:(id)day bucketDates:(id)dates;
- (int64_t)totalActiveDays;
- (void)_queue_populateHistogramsAndOffWristDateForToday;
- (void)_queue_updateHistogram:(id)histogram goalType:(int64_t)type activitySummary:(id)summary;
- (void)_queue_updateProjectedOffWristDateHistogram:(id)histogram activitySummary:(id)summary activeDays:(int64_t *)days;
- (void)_setSleepUserDay:(id)day;
- (void)_updateSleepUserDay;
- (void)_waitUntilActivitySummaryLoaded;
- (void)handleUpdatedCurrentActivitySummary:(id)summary;
- (void)rebuildWithInterval:(id)interval;
- (void)sleepDataProviderLastAlarmWakeUpDateDidChange;
- (void)sleepDataProviderLastGoodMorningDismissedDateDidChange;
- (void)sleepDataProviderUserDayDidUpdate;
@end

@implementation FITypicalDayActivityModel

- (id)initForDateInterval:(id)interval delegate:(id)delegate
{
  v6 = MEMORY[0x277D62528];
  delegateCopy = delegate;
  intervalCopy = interval;
  v9 = objc_alloc_init(v6);
  v10 = [[FISleepDataProvider alloc] initWithSleepStore:v9 delegate:self];
  v11 = [(FITypicalDayActivityModel *)self initForDateInterval:intervalCopy delegate:delegateCopy sleepDataProvider:v10];

  return v11;
}

- (id)initForDateInterval:(id)interval delegate:(id)delegate sleepDataProvider:(id)provider
{
  intervalCopy = interval;
  delegateCopy = delegate;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = FITypicalDayActivityModel;
  v12 = [(FITypicalDayActivityModel *)&v23 init];
  v13 = v12;
  if (v12)
  {
    [(FITypicalDayActivityModel *)v12 setDelegate:delegateCopy];
    objc_storeStrong(&v13->_interval, interval);
    objc_storeStrong(&v13->_sleepDataProvider, provider);
    v13->_sleepUserDayLock._os_unfair_lock_opaque = 0;
    [(FISleepDataProvider *)v13->_sleepDataProvider activate];
    [(FITypicalDayActivityModel *)v13 _updateSleepUserDay];
    v14 = HKCreateSerialDispatchQueue();
    queue = v13->_queue;
    v13->_queue = v14;

    v16 = v13->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__FITypicalDayActivityModel_initForDateInterval_delegate_sleepDataProvider___block_invoke;
    block[3] = &unk_279004B60;
    v17 = v13;
    v22 = v17;
    dispatch_sync(v16, block);
    *(v17 + 48) = 0;
    v18 = dispatch_group_create();
    v19 = v17[7];
    v17[7] = v18;

    dispatch_group_enter(v17[7]);
  }

  return v13;
}

- (void)_updateSleepUserDay
{
  os_unfair_lock_lock(&self->_sleepUserDayLock);
  sleepUserDay = [(FISleepDataProvider *)self->_sleepDataProvider sleepUserDay];
  sleepUserDay = self->_sleepUserDay;
  self->_sleepUserDay = sleepUserDay;

  os_unfair_lock_unlock(&self->_sleepUserDayLock);
}

- (id)sleepUserDay
{
  os_unfair_lock_lock(&self->_sleepUserDayLock);
  v3 = self->_sleepUserDay;
  os_unfair_lock_unlock(&self->_sleepUserDayLock);

  return v3;
}

- (id)startOfToday
{
  delegate = [(FITypicalDayActivityModel *)self delegate];
  currentCalendar = [delegate currentCalendar];
  delegate2 = [(FITypicalDayActivityModel *)self delegate];
  currentDate = [delegate2 currentDate];
  v7 = [currentCalendar startOfDayForDate:currentDate];

  return v7;
}

- (id)endOfToday
{
  startOfToday = [(FITypicalDayActivityModel *)self startOfToday];
  delegate = [(FITypicalDayActivityModel *)self delegate];
  currentCalendar = [delegate currentCalendar];
  v6 = [currentCalendar dateByAddingUnit:16 value:1 toDate:startOfToday options:0];

  return v6;
}

- (double)_queue_currentValueForHistogram:(id)histogram
{
  histogramCopy = histogram;
  dispatch_assert_queue_V2(self->_queue);
  delegate = [(FITypicalDayActivityModel *)self delegate];
  currentDate = [delegate currentDate];

  _startDate = [(HKActivitySummary *)self->_queue_currentActivitySummary _startDate];
  v8 = [(FITypicalDayActivityModel *)self _bucketIndexForDate:currentDate startOfDay:_startDate bucketDates:self->_queue_bucketDates];

  v9 = 0.0;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  else
  {
    [currentDate timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = [(NSMutableArray *)self->_queue_bucketDates objectAtIndex:v8];
    [v14 timeIntervalSinceReferenceDate];
    v11 = v13 - v15;

    if (v8 < 0 || [histogramCopy bucketCount] < 1)
    {
      v10 = 0.0;
    }

    else
    {
      v16 = 0;
      v10 = 0.0;
      do
      {
        [histogramCopy valueForBucketAtIndex:v16];
        v9 = v17;
        v10 = v10 + v17;
        if (v8 == v16)
        {
          break;
        }

        ++v16;
      }

      while (v16 < [histogramCopy bucketCount]);
    }
  }

  v18 = v10 - v9 * (1.0 - v11 / (60 * (0x5A0uLL / [(NSMutableArray *)self->_queue_bucketDates count])));

  return v18;
}

- (double)_percentageOfTypicalDayComparedToNowForGoal:(int64_t)goal
{
  [(FITypicalDayActivityModel *)self _waitUntilActivitySummaryLoaded];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__FITypicalDayActivityModel__percentageOfTypicalDayComparedToNowForGoal___block_invoke;
  block[3] = &unk_279005408;
  block[5] = &v9;
  block[6] = goal;
  block[4] = self;
  dispatch_sync(queue, block);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __73__FITypicalDayActivityModel__percentageOfTypicalDayComparedToNowForGoal___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = *(a1 + 48);
  v5 = 0.0;
  if (v4 > 2)
  {
    if ((v4 - 3) < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  switch(v4)
  {
    case 0:
      return;
    case 1:
      v5 = MoveValueForActivitySummary(v2);
      v9 = 24;
      goto LABEL_10;
    case 2:
      v6 = [v2 appleExerciseTime];
      v7 = [MEMORY[0x277CCDAB0] minuteUnit];
      [v6 doubleValueForUnit:v7];
      v5 = v8;

      v9 = 32;
LABEL_10:
      v3 = *(*(a1 + 32) + v9);
      break;
  }

LABEL_11:
  v11 = v3;
  [*(a1 + 32) _queue_currentValueForHistogram:v3];
  *(*(*(a1 + 40) + 8) + 24) = v5 / v10;
}

- (double)valueOfTypicalDayBriskMinutesEarnedByNow
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__FITypicalDayActivityModel_valueOfTypicalDayBriskMinutesEarnedByNow__block_invoke;
  v5[3] = &unk_279005430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __69__FITypicalDayActivityModel_valueOfTypicalDayBriskMinutesEarnedByNow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_currentValueForHistogram:*(*(a1 + 32) + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)valueOfTypicalDayMoveEarnedByNow
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__FITypicalDayActivityModel_valueOfTypicalDayMoveEarnedByNow__block_invoke;
  v5[3] = &unk_279005430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __61__FITypicalDayActivityModel_valueOfTypicalDayMoveEarnedByNow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_currentValueForHistogram:*(*(a1 + 32) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)_willCompleteGoalWithType:(int64_t)type bufferPercentage:(double)percentage
{
  [(FITypicalDayActivityModel *)self _waitUntilActivitySummaryLoaded];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__FITypicalDayActivityModel__willCompleteGoalWithType_bufferPercentage___block_invoke;
  v9[3] = &unk_279005458;
  v9[5] = &v10;
  v9[6] = type;
  *&v9[7] = percentage;
  v9[4] = self;
  dispatch_sync(queue, v9);
  LOBYTE(type) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return type;
}

id __72__FITypicalDayActivityModel__willCompleteGoalWithType_bufferPercentage___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (!result)
  {
    return result;
  }

  v3 = 0;
  v4 = *(a1 + 48);
  if (v4 > 2)
  {
    if ((v4 - 3) < 2)
    {
      return result;
    }

    goto LABEL_15;
  }

  switch(v4)
  {
    case 0:
      return result;
    case 1:
      v8 = MoveValueForActivitySummary(result);
      v12 = MoveGoalValueForActivitySummary(*(*(a1 + 32) + 16));
      v13 = 24;
      break;
    case 2:
      v5 = [result appleExerciseTime];
      v6 = [MEMORY[0x277CCDAB0] minuteUnit];
      [v5 doubleValueForUnit:v6];
      v8 = v7;

      v9 = [*(*(a1 + 32) + 16) appleExerciseTimeGoal];
      v10 = [MEMORY[0x277CCDAB0] minuteUnit];
      [v9 doubleValueForUnit:v10];
      v12 = v11;

      v13 = 32;
      break;
    default:
      goto LABEL_15;
  }

  result = *(*(a1 + 32) + v13);
  v3 = result;
  if (v8 < v12)
  {
    v30 = result;
    v14 = [*(a1 + 32) delegate];
    v15 = [v14 currentDate];

    v16 = *(a1 + 32);
    v17 = [v16[2] _startDate];
    v18 = [v16 _bucketIndexForDate:v15 startOfDay:v17 bucketDates:*(*(a1 + 32) + 40)];

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v18 + 1;
      v20 = [v30 bucketCount];
      v21 = 0.0;
      while (v19 < v20)
      {
        [v30 valueForBucketAtIndex:v19];
        v21 = v21 + v22;
        ++v19;
        v20 = [v30 bucketCount];
      }

      [v15 timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = [*(*(a1 + 32) + 40) objectAtIndex:v18];
      [v25 timeIntervalSinceReferenceDate];
      v27 = v24 - v26;

      v28 = (60 * (0x5A0uLL / [*(*(a1 + 32) + 40) count]));
      [v30 valueForBucketAtIndex:v18];
      *(*(*(a1 + 40) + 8) + 24) = v8 + v21 + v29 * (1.0 - v27 / v28) >= v12 * (*(a1 + 56) + 1.0);
    }

    v3 = v30;
    goto LABEL_18;
  }

LABEL_15:
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_18:

  return MEMORY[0x2821F96F8](result, v3);
}

- (BOOL)willCompleteStandGoalOrItIsTooLateWithBufferPercentage:(double)percentage
{
  [(FITypicalDayActivityModel *)self _waitUntilActivitySummaryLoaded];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  userEndOfDay = [(FITypicalDayActivityModel *)self userEndOfDay];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__FITypicalDayActivityModel_willCompleteStandGoalOrItIsTooLateWithBufferPercentage___block_invoke;
  v9[3] = &unk_279005480;
  v9[4] = self;
  v10 = userEndOfDay;
  percentageCopy = percentage;
  v11 = &v13;
  v7 = userEndOfDay;
  dispatch_sync(queue, v9);
  LOBYTE(queue) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return queue;
}

void __84__FITypicalDayActivityModel_willCompleteStandGoalOrItIsTooLateWithBufferPercentage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = [v2 delegate];
    v30 = [v3 currentDate];

    [*(*(a1 + 32) + 16) _standHoursCompletionPercentage];
    if (v4 < 1.0)
    {
      [v30 timeIntervalSinceReferenceDate];
      v6 = v5;
      [*(a1 + 40) timeIntervalSinceReferenceDate];
      v8 = v7;
      v9 = [*(a1 + 32) delegate];
      v10 = [v9 currentCalendar];
      v11 = [v10 component:32 fromDate:v30];

      if (v6 >= v8)
      {
        if (v11)
        {
          v18 = 24 - v11;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = 24;
        }

        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) delegate];
        v15 = [v14 currentCalendar];
        v16 = [v15 component:32 fromDate:v13];
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = 24;
        }

        v18 = v17 - v12;
      }

      v19 = [*(*(a1 + 32) + 16) appleStandHoursGoal];
      v20 = [MEMORY[0x277CCDAB0] countUnit];
      [v19 doubleValueForUnit:v20];
      v22 = v21;

      v23 = [*(*(a1 + 32) + 16) appleStandHours];
      v24 = [MEMORY[0x277CCDAB0] countUnit];
      [v23 doubleValueForUnit:v24];
      v26 = v25;

      v27 = (v22 - v26);
      v28 = __OFSUB__(v18, v27);
      v29 = v18 - v27;
      if (v29 < 0 == v28 && v22 * *(a1 + 56) >= v29)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }
  }
}

- (double)currentMoveGoalPercentage
{
  [(FITypicalDayActivityModel *)self _waitUntilActivitySummaryLoaded];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__FITypicalDayActivityModel_currentMoveGoalPercentage__block_invoke;
  v6[3] = &unk_279005430;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (double)currentExerciseGoalPercentage
{
  [(FITypicalDayActivityModel *)self _waitUntilActivitySummaryLoaded];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__FITypicalDayActivityModel_currentExerciseGoalPercentage__block_invoke;
  v6[3] = &unk_279005430;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __58__FITypicalDayActivityModel_currentExerciseGoalPercentage__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) _exerciseTimeCompletionPercentage];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)currentStandGoalPercentage
{
  [(FITypicalDayActivityModel *)self _waitUntilActivitySummaryLoaded];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__FITypicalDayActivityModel_currentStandGoalPercentage__block_invoke;
  v6[3] = &unk_279005430;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __55__FITypicalDayActivityModel_currentStandGoalPercentage__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) _standHoursCompletionPercentage];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)willCompletingMoveRingEarnStreakAchievement
{
  delegate = [(FITypicalDayActivityModel *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(FITypicalDayActivityModel *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate3 = [(FITypicalDayActivityModel *)self delegate];
      if ([delegate3 bestMoveStreak])
      {
        delegate4 = [(FITypicalDayActivityModel *)self delegate];
        v8 = [delegate4 bestMoveStreak] - 1;
      }

      else
      {
        v8 = 0;
      }

      delegate5 = [(FITypicalDayActivityModel *)self delegate];
      v9 = [delegate5 currentMoveStreak] >= v8;

      return v9;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
  {
    [FITypicalDayActivityModel willCompletingMoveRingEarnStreakAchievement];
  }

  return 0;
}

- (BOOL)projectedToBeatMoveRecordByEndOfDay
{
  v38 = *MEMORY[0x277D85DE8];
  delegate = [(FITypicalDayActivityModel *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_7:
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FITypicalDayActivityModel projectedToBeatMoveRecordByEndOfDay];
    }

    goto LABEL_9;
  }

  delegate2 = [(FITypicalDayActivityModel *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  delegate3 = [(FITypicalDayActivityModel *)self delegate];
  totalMoveGoalsAttempted = [delegate3 totalMoveGoalsAttempted];

  if (totalMoveGoalsAttempted < 8)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v8, OS_LOG_TYPE_DEFAULT, "Not projected to beat move record by EOD because too few days of Activity history to earn achievement", buf, 2u);
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  delegate4 = [(FITypicalDayActivityModel *)self delegate];
  [delegate4 bestMoveValue];
  v14 = v13;

  *buf = 0;
  v31 = buf;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__FITypicalDayActivityModel_projectedToBeatMoveRecordByEndOfDay__block_invoke;
  v21[3] = &unk_2790054A8;
  v21[4] = self;
  v21[5] = buf;
  v21[6] = &v26;
  v21[7] = &v22;
  dispatch_sync(queue, v21);
  v16 = v27[3];
  v17 = v23[3];
  v18 = *(v31 + 3);
  _HKInitializeLogging();
  v19 = v16 - v17 + v18;
  v20 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 134218240;
    v35 = v19;
    v36 = 2048;
    v37 = v14;
    _os_log_impl(&dword_24B35E000, v20, OS_LOG_TYPE_DEFAULT, "Projected to earn %f move credit by EOD; current record is %f", v34, 0x16u);
  }

  v9 = v19 > v14;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(buf, 8);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void __64__FITypicalDayActivityModel_projectedToBeatMoveRecordByEndOfDay__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) valueForBucketAtIndex:{objc_msgSend(*(*(a1 + 32) + 24), "bucketCount") - 1}];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  [*(a1 + 32) _queue_currentValueForHistogram:*(*(a1 + 32) + 24)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  *(*(*(a1 + 56) + 8) + 24) = MoveGoalValueForActivitySummary(*(*(a1 + 32) + 16));
}

- (void)rebuildWithInterval:(id)interval
{
  objc_storeStrong(&self->_interval, interval);
  intervalCopy = interval;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__FITypicalDayActivityModel_rebuildWithInterval___block_invoke;
  block[3] = &unk_279004B60;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __49__FITypicalDayActivityModel_rebuildWithInterval___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _queue_populateHistogramsAndOffWristDateForToday];
}

- (NSString)debugDescription
{
  v33[9] = *MEMORY[0x277D85DE8];
  v32[0] = @"startOfToday";
  startOfToday = [(FITypicalDayActivityModel *)self startOfToday];
  v30 = [startOfToday description];
  v33[0] = v30;
  v32[1] = @"endOfToday";
  endOfToday = [(FITypicalDayActivityModel *)self endOfToday];
  v28 = [endOfToday description];
  v33[1] = v28;
  v32[2] = @"percentageOfTypicalDayMoveComparedToNow";
  v3 = MEMORY[0x277CCABB0];
  [(FITypicalDayActivityModel *)self percentageOfTypicalDayMoveComparedToNow];
  v27 = [v3 numberWithDouble:?];
  v26 = [v27 description];
  v33[2] = v26;
  v32[3] = @"percentageOfTypicalDayBriskMinutesEarnedComparedToNow";
  v4 = MEMORY[0x277CCABB0];
  [(FITypicalDayActivityModel *)self percentageOfTypicalDayBriskMinutesEarnedComparedToNow];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 description];
  v33[3] = v6;
  v32[4] = @"userEndOfDay";
  userEndOfDay = [(FITypicalDayActivityModel *)self userEndOfDay];
  v8 = [userEndOfDay description];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_285E60370;
  }

  v33[4] = v10;
  v32[5] = @"userStartOfDay";
  userStartOfDay = [(FITypicalDayActivityModel *)self userStartOfDay];
  v12 = [userStartOfDay description];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_285E60370;
  }

  v33[5] = v14;
  v32[6] = @"moveHistogram";
  descriptionArray = [(FISimpleHistogram *)self->_queue_moveHistogram descriptionArray];
  v16 = descriptionArray;
  if (descriptionArray)
  {
    v17 = descriptionArray;
  }

  else
  {
    v17 = &stru_285E60370;
  }

  v33[6] = v17;
  v32[7] = @"exerciseHistogram";
  descriptionArray2 = [(FISimpleHistogram *)self->_queue_exerciseHistogram descriptionArray];
  v19 = descriptionArray2;
  if (descriptionArray2)
  {
    v20 = descriptionArray2;
  }

  else
  {
    v20 = &stru_285E60370;
  }

  v33[7] = v20;
  v32[8] = @"totalActiveDays";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FITypicalDayActivityModel totalActiveDays](self, "totalActiveDays")}];
  v33[8] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:9];

  v23 = [v22 description];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)shouldSuggestWalkWithActivitySettingsController:(id)controller
{
  controllerCopy = controller;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__FITypicalDayActivityModel_shouldSuggestWalkWithActivitySettingsController___block_invoke;
  block[3] = &unk_279005430;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(queue, block);
  if (v26[3] == 2)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v7 = "User is in move minutes mode, not suggesting walk";
LABEL_10:
      _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, v7, v23, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([controllerCopy experienceType] != 1)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v7 = "User is in the fitness jr. experience, not suggesting walk";
      goto LABEL_10;
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  [(FITypicalDayActivityModel *)self briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController:controllerCopy];
  v9 = v8;
  delegate = [(FITypicalDayActivityModel *)self delegate];
  currentCalendar = [delegate currentCalendar];
  delegate2 = [(FITypicalDayActivityModel *)self delegate];
  currentDate = [delegate2 currentDate];
  v14 = [currentCalendar hk_startOfDateByAddingDays:1 toDate:currentDate];
  delegate3 = [(FITypicalDayActivityModel *)self delegate];
  currentDate2 = [delegate3 currentDate];
  [v14 timeIntervalSinceDate:currentDate2];
  v18 = v17;
  v19 = vcvtpd_u64_f64(v9 / 60.0);

  v20 = vcvtmd_u64_f64(v18 / 60.0);
  if (v20 >= 0x1E)
  {
    v20 = 30;
  }

  v21 = v19 - 1 < v20;
LABEL_12:
  _Block_object_dispose(&v25, 8);

  return v21;
}

uint64_t __77__FITypicalDayActivityModel_shouldSuggestWalkWithActivitySettingsController___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) activityMoveMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController:(id)controller
{
  controllerCopy = controller;
  [(FITypicalDayActivityModel *)self _waitUntilActivitySummaryLoaded];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__FITypicalDayActivityModel_briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController___block_invoke;
  block[3] = &unk_2790054D0;
  v10 = controllerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = controllerCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __92__FITypicalDayActivityModel_briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) dateOfBirth];
  v3 = [*(a1 + 40) biologicalSex];
  v4 = [*(a1 + 40) height];
  v5 = [*(a1 + 40) weight];
  [v2 _queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:v7 biologicalSex:v3 height:v4 weight:v5 wheelchairUse:objc_msgSend(*(a1 + 40) experienceType:{"wheelchairUse"), objc_msgSend(*(a1 + 40), "experienceType")}];
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

- (double)_queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:(id)birth biologicalSex:(int64_t)sex height:(id)height weight:(id)weight wheelchairUse:(int64_t)use experienceType:(unint64_t)type
{
  birthCopy = birth;
  heightCopy = height;
  weightCopy = weight;
  if ([(HKActivitySummary *)self->_queue_currentActivitySummary activityMoveMode]== HKActivityMoveModeAppleMoveTime)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC290];
    v18 = 0.0;
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v53) = 0;
      v19 = "Not computing brisk walk time for user in move minutes mode.";
LABEL_22:
      _os_log_impl(&dword_24B35E000, v17, OS_LOG_TYPE_DEFAULT, v19, &v53, 2u);
    }
  }

  else if (type == 1)
  {
    if ([(HKActivitySummary *)self->_queue_currentActivitySummary _hasEnergyBurnedGoal])
    {
      activeEnergyBurnedGoal = [(HKActivitySummary *)self->_queue_currentActivitySummary activeEnergyBurnedGoal];
      smallCalorieUnit = [MEMORY[0x277CCDAB0] smallCalorieUnit];
      [activeEnergyBurnedGoal doubleValueForUnit:smallCalorieUnit];
      v23 = v22;

      activeEnergyBurned = [(HKActivitySummary *)self->_queue_currentActivitySummary activeEnergyBurned];
      smallCalorieUnit2 = [MEMORY[0x277CCDAB0] smallCalorieUnit];
      [activeEnergyBurned doubleValueForUnit:smallCalorieUnit2];
      v27 = v26;

      if (v23 - v27 >= 0.0)
      {
        v28 = v23 - v27;
      }

      else
      {
        v28 = 0.0;
      }

      delegate = [(FITypicalDayActivityModel *)self delegate];
      currentDate = [delegate currentDate];
      delegate2 = [(FITypicalDayActivityModel *)self delegate];
      currentCalendar = [delegate2 currentCalendar];
      v33 = FIAgeInYearsForDateOfBirthWithCurrentDateAndCalendar(birthCopy, currentDate, currentCalendar);

      v34 = sex != 2;
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [heightCopy doubleValueForUnit:meterUnit];
      v37 = v36;

      v38 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:9];
      [weightCopy doubleValueForUnit:v38];
      v40 = v39;

      v41 = FICMotionConditionForWheelchairUse(use);
      v58 = 0;
      v59 = &v58;
      v60 = 0x2050000000;
      v42 = getCMCalorieUserInfoClass_softClass;
      v61 = getCMCalorieUserInfoClass_softClass;
      if (!getCMCalorieUserInfoClass_softClass)
      {
        v53 = MEMORY[0x277D85DD0];
        v54 = 3221225472;
        v55 = __getCMCalorieUserInfoClass_block_invoke;
        v56 = &unk_279005548;
        v57 = &v58;
        __getCMCalorieUserInfoClass_block_invoke(&v53);
        v42 = v59[3];
      }

      v43 = v42;
      _Block_object_dispose(&v58, 8);
      v44 = [[v42 alloc] initWithAge:v34 gender:v41 height:v33 weight:v37 condition:v40];
      v58 = 0;
      v59 = &v58;
      v60 = 0x2050000000;
      v45 = getCMNatalimeterClass_softClass;
      v61 = getCMNatalimeterClass_softClass;
      if (!getCMNatalimeterClass_softClass)
      {
        v53 = MEMORY[0x277D85DD0];
        v54 = 3221225472;
        v55 = __getCMNatalimeterClass_block_invoke;
        v56 = &unk_279005548;
        v57 = &v58;
        __getCMNatalimeterClass_block_invoke(&v53);
        v45 = v59[3];
      }

      v46 = v45;
      _Block_object_dispose(&v58, 8);
      v47 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
      [v45 computeTimeToActiveCalories:v47 user:v44 workoutType:1];
      v49 = v48;

      _HKInitializeLogging();
      v50 = MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEBUG))
      {
        [FITypicalDayActivityModel _queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:biologicalSex:height:weight:wheelchairUse:experienceType:];
      }

      _HKInitializeLogging();
      v51 = os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG);
      if (v49 >= 1200.0)
      {
        v18 = ceil(v49 / 300.0) * 300.0;
        if (v51)
        {
          [FITypicalDayActivityModel _queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:biologicalSex:height:weight:wheelchairUse:experienceType:];
        }
      }

      else
      {
        v18 = ceil(v49 / 60.0) * 60.0;
        if (v51)
        {
          [FITypicalDayActivityModel _queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:biologicalSex:height:weight:wheelchairUse:experienceType:];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC290];
      v18 = 0.0;
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v53) = 0;
        v19 = "Not computing brisk walk time because activity summary has no energy burned goal set.";
        goto LABEL_22;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC290];
    v18 = 0.0;
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v53) = 0;
      v19 = "Not computing brisk walk time for user in the fitness jr. experience.";
      goto LABEL_22;
    }
  }

  return v18;
}

- (id)userStartOfDay
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (v5 = objc_loadWeakRetained(&self->_delegate), [v5 clientProvidedUserStartOfDay], startOfDay = objc_claimAutoreleasedReturnValue(), v5, !startOfDay))
  {
    os_unfair_lock_lock(&self->_sleepUserDayLock);
    startOfDay = [(FISleepUserDay *)self->_sleepUserDay startOfDay];
    os_unfair_lock_unlock(&self->_sleepUserDayLock);
    if (!startOfDay)
    {
      delegate = [(FITypicalDayActivityModel *)self delegate];
      startOfDay = [delegate firstOnWristDateToday];
    }
  }

  return startOfDay;
}

- (id)userEndOfDay
{
  v23 = *MEMORY[0x277D85DE8];
  delegate = [(FITypicalDayActivityModel *)self delegate];
  currentDate = [delegate currentDate];

  delegate2 = [(FITypicalDayActivityModel *)self delegate];
  currentCalendar = [delegate2 currentCalendar];

  v7 = [currentCalendar hk_startOfDateByAddingDays:1 toDate:currentDate];
  userStartOfDay = [(FITypicalDayActivityModel *)self userStartOfDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0 || (v11 = objc_loadWeakRetained(&self->_delegate), [v11 clientProvidedUserEndOfDay], endOfDay = objc_claimAutoreleasedReturnValue(), v11, !endOfDay))
  {
    os_unfair_lock_lock(&self->_sleepUserDayLock);
    endOfDay = [(FISleepUserDay *)self->_sleepUserDay endOfDay];
    os_unfair_lock_unlock(&self->_sleepUserDayLock);
  }

  if ([endOfDay hk_isAfterDate:v7])
  {
    v13 = v7;

    endOfDay = v13;
  }

  if (!endOfDay)
  {
    endOfDay = [(FITypicalDayActivityModel *)self projectedOffWrist];
    if (!endOfDay)
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegate);
        endOfDay = [v16 clientProvidedDefaultEndOfDay];
      }

      else
      {
        v17 = [userStartOfDay dateByAddingTimeInterval:43200.0];
        endOfDay = [v7 earlierDate:v17];

        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC290];
        if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = endOfDay;
          _os_log_impl(&dword_24B35E000, v18, OS_LOG_TYPE_DEFAULT, "Projected off wrist date is nil, using earliest of default day length or midnight: %@", &v21, 0xCu);
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return endOfDay;
}

- (id)projectedOffWrist
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__FITypicalDayActivityModel_projectedOffWrist__block_invoke;
  v5[3] = &unk_279005430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (double)projectedDayDuration
{
  userStartOfDay = [(FITypicalDayActivityModel *)self userStartOfDay];
  userEndOfDay = [(FITypicalDayActivityModel *)self userEndOfDay];
  v5 = userEndOfDay;
  v6 = 43200.0;
  if (userStartOfDay && userEndOfDay)
  {
    [userEndOfDay timeIntervalSinceDate:userStartOfDay];
    v6 = v7;
  }

  return v6;
}

- (BOOL)isSleepAlarmEnabledForToday
{
  sleepUserDay = [(FISleepDataProvider *)self->_sleepDataProvider sleepUserDay];
  v3 = sleepUserDay != 0;

  return v3;
}

- (id)_goodMorningAlertDismissedDateForToday
{
  lastGoodMorningDismissedDate = [(FISleepDataProvider *)self->_sleepDataProvider lastGoodMorningDismissedDate];
  os_unfair_lock_lock(&self->_sleepUserDayLock);
  startOfDay = [(FISleepUserDay *)self->_sleepUserDay startOfDay];
  v5 = [lastGoodMorningDismissedDate hk_isAfterOrEqualToDate:startOfDay];

  os_unfair_lock_unlock(&self->_sleepUserDayLock);
  if (v5)
  {
    v6 = lastGoodMorningDismissedDate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)userWakeUpDateForToday
{
  os_unfair_lock_lock(&self->_sleepUserDayLock);
  startOfDay = [(FISleepUserDay *)self->_sleepUserDay startOfDay];
  os_unfair_lock_unlock(&self->_sleepUserDayLock);
  if (![(FISleepDataProvider *)self->_sleepDataProvider isGoodMorningAlertNotificationEnabled]|| ([(FITypicalDayActivityModel *)self _goodMorningAlertDismissedDateForToday], (lastAlarmWakeUpDate = objc_claimAutoreleasedReturnValue()) == 0))
  {
    lastAlarmWakeUpDate = [(FISleepDataProvider *)self->_sleepDataProvider lastAlarmWakeUpDate];
  }

  v5 = lastAlarmWakeUpDate;
  if (([lastAlarmWakeUpDate hk_isAfterOrEqualToDate:startOfDay] & 1) == 0)
  {
    if ([(FISleepDataProvider *)self->_sleepDataProvider isUserAwake])
    {
      v5 = startOfDay;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = v5;

  return v5;
}

- (void)handleUpdatedCurrentActivitySummary:(id)summary
{
  summaryCopy = summary;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__FITypicalDayActivityModel_handleUpdatedCurrentActivitySummary___block_invoke;
  v7[3] = &unk_279004F80;
  v8 = summaryCopy;
  selfCopy = self;
  v6 = summaryCopy;
  dispatch_async(queue, v7);
}

void __65__FITypicalDayActivityModel_handleUpdatedCurrentActivitySummary___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && ([v2 _isDataLoading] & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (!*(v5 + 16))
    {
      dispatch_group_leave(*(v5 + 56));
      v5 = *(a1 + 40);
    }

    objc_storeStrong((v5 + 16), *(a1 + 32));
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__FITypicalDayActivityModel_handleUpdatedCurrentActivitySummary___block_invoke_2;
    block[3] = &unk_279004B60;
    block[4] = *(a1 + 40);
    dispatch_async(v6, block);
  }

  else
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_24B35E000, v3, OS_LOG_TYPE_DEFAULT, "Activity Summary (%@) is still loading.", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__FITypicalDayActivityModel_handleUpdatedCurrentActivitySummary___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"FITypicalDayActivityModelTodayActivityDidChange" object:*(a1 + 32)];
}

- (void)sleepDataProviderUserDayDidUpdate
{
  [(FITypicalDayActivityModel *)self _updateSleepUserDay];
  delegate = [(FITypicalDayActivityModel *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(FITypicalDayActivityModel *)self delegate];
    [delegate2 typicalDayActivityModelDidUpdate];
  }
}

- (void)sleepDataProviderLastGoodMorningDismissedDateDidChange
{
  delegate = [(FITypicalDayActivityModel *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(FITypicalDayActivityModel *)self delegate];
    [delegate2 typicalDayActivityModelDidUpdate];
  }
}

- (void)sleepDataProviderLastAlarmWakeUpDateDidChange
{
  delegate = [(FITypicalDayActivityModel *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(FITypicalDayActivityModel *)self delegate];
    [delegate2 typicalDayActivityModelDidUpdate];
  }
}

- (id)currentDate
{
  delegate = [(FITypicalDayActivityModel *)self delegate];
  currentDate = [delegate currentDate];

  return currentDate;
}

- (id)currentCalendar
{
  delegate = [(FITypicalDayActivityModel *)self delegate];
  currentCalendar = [delegate currentCalendar];

  return currentCalendar;
}

- (void)_waitUntilActivitySummaryLoaded
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)_emptySimpleHistogram
{
  v2 = [FISimpleHistogram alloc];
  v3 = [(FISimpleHistogram *)v2 initWithNumberOfBuckets:0x5A0uLL / *MEMORY[0x277CCE2E8]];

  return v3;
}

- (void)_queue_updateHistogram:(id)histogram goalType:(int64_t)type activitySummary:(id)summary
{
  v56 = *MEMORY[0x277D85DE8];
  histogramCopy = histogram;
  summaryCopy = summary;
  dispatch_assert_queue_V2(self->_queue);
  if (type <= 4 && ((1 << type) & 0x19) != 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_24B35E000, v10, OS_LOG_TYPE_DEFAULT, "Cannot build histogram for goal type %lu", buf, 0xCu);
    }

    goto LABEL_36;
  }

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEBUG))
  {
    [FITypicalDayActivityModel _queue_updateHistogram:v11 goalType:summaryCopy activitySummary:type];
  }

  if (type == 2)
  {
    _dailyBriskMinutesStatistics = [summaryCopy _dailyBriskMinutesStatistics];
    minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
    goto LABEL_11;
  }

  if (type == 1)
  {
    _dailyBriskMinutesStatistics = MoveStatisticsForActivitySummary(summaryCopy);
    minuteUnit = UnitForMoveGoal([summaryCopy activityMoveMode]);
LABEL_11:
    v48 = minuteUnit;
    goto LABEL_13;
  }

  v48 = 0;
  _dailyBriskMinutesStatistics = 0;
LABEL_13:
  if ([_dailyBriskMinutesStatistics count] && v48)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    _startDate = [summaryCopy _startDate];
    if ([histogramCopy bucketCount] >= 1)
    {
      v16 = 0;
      do
      {
        v17 = [(FITypicalDayActivityModel *)self _bucketDateForIndex:v16 startOfDay:_startDate];
        [v14 addObject:v17];

        ++v16;
      }

      while (v16 < [histogramCopy bucketCount]);
    }

    typeCopy2 = type;
    v44 = histogramCopy;
    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = _dailyBriskMinutesStatistics;
    obj = _dailyBriskMinutesStatistics;
    v18 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v46 = *v50;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v50 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v49 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          startDate = [v21 startDate];
          v24 = [(FITypicalDayActivityModel *)self _bucketIndexForDate:startDate startOfDay:_startDate bucketDates:v14];
          v25 = _startDate;
          v26 = v14;
          selfCopy = self;
          v28 = v24;

          quantityValue = [v21 quantityValue];
          [quantityValue doubleValueForUnit:v48];
          v31 = v30;

          v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
          v33 = v28;
          self = selfCopy;
          v14 = v26;
          _startDate = v25;
          v34 = [MEMORY[0x277CCABB0] numberWithInteger:v33];
          [v47 setObject:v32 forKey:v34];

          objc_autoreleasePoolPop(v22);
        }

        v19 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v19);
    }

    v35 = [v47 objectForKeyedSubscript:&unk_285E6A710];

    if (v35)
    {
      _HKInitializeLogging();
      v36 = *MEMORY[0x277CCC290];
      histogramCopy = v44;
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        [FITypicalDayActivityModel _queue_updateHistogram:v36 goalType:summaryCopy activitySummary:?];
      }
    }

    else
    {
      histogramCopy = v44;
      if ([v44 bucketCount] >= 1)
      {
        v37 = 0;
        do
        {
          v38 = [MEMORY[0x277CCABB0] numberWithInteger:{v37, typeCopy2}];
          v39 = [v47 objectForKey:v38];

          if (v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = &unk_285E6B160;
          }

          [v40 doubleValue];
          [v44 addValue:v37 toBucketAtIndex:?];

          ++v37;
        }

        while (v37 < [v44 bucketCount]);
      }
    }

    _dailyBriskMinutesStatistics = v43;
  }

LABEL_36:
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateProjectedOffWristDateHistogram:(id)histogram activitySummary:(id)summary activeDays:(int64_t *)days
{
  v38 = *MEMORY[0x277D85DE8];
  histogramCopy = histogram;
  summaryCopy = summary;
  dispatch_assert_queue_V2(self->_queue);
  v10 = MoveStatisticsForActivitySummary(summaryCopy);
  v11 = MEMORY[0x277CCAC30];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __100__FITypicalDayActivityModel__queue_updateProjectedOffWristDateHistogram_activitySummary_activeDays___block_invoke;
  v30[3] = &unk_2790054F8;
  v12 = summaryCopy;
  v31 = v12;
  v13 = [v11 predicateWithBlock:v30];
  v14 = [v10 filteredArrayUsingPredicate:v13];

  if ([v14 count])
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    _startDate = [v12 _startDate];
    if ([histogramCopy bucketCount] >= 1)
    {
      v17 = 0;
      do
      {
        v18 = [(FITypicalDayActivityModel *)self _bucketDateForIndex:v17 startOfDay:_startDate];
        [v15 addObject:v18];

        ++v17;
      }

      while (v17 < [histogramCopy bucketCount]);
    }

    lastObject = [v14 lastObject];
    startDate = [lastObject startDate];
    v21 = [(FITypicalDayActivityModel *)self _bucketIndexForDate:startDate startOfDay:_startDate bucketDates:v15];

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        [FITypicalDayActivityModel _queue_updateProjectedOffWristDateHistogram:v22 activitySummary:v12 activeDays:lastObject];
      }
    }

    else
    {
      ++*days;
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        log = v23;
        _startDate2 = [v12 _startDate];
        startDate2 = [lastObject startDate];
        *buf = 134218498;
        v33 = v21;
        v34 = 2114;
        v35 = _startDate2;
        v36 = 2114;
        v37 = startDate2;
        _os_log_impl(&dword_24B35E000, log, OS_LOG_TYPE_DEFAULT, "Last active index: %ld, for start date: %{public}@, object date: %{public}@", buf, 0x20u);
      }

      if ((v21 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        v26 = v21 + 1;
        do
        {
          [histogramCopy addValue:v25++ toBucketAtIndex:1.0];
        }

        while (v26 != v25);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

BOOL __100__FITypicalDayActivityModel__queue_updateProjectedOffWristDateHistogram_activitySummary_activeDays___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 quantityValue];
  v4 = UnitForMoveGoal([*(a1 + 32) activityMoveMode]);
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  return v6 >= 1.0;
}

- (id)_queue_calculateProjectedOffWristDateFromHistogram:(id)histogram activeDays:(int64_t)days
{
  histogramCopy = histogram;
  dispatch_assert_queue_V2(self->_queue);
  if (days < 7)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v12, OS_LOG_TYPE_DEFAULT, "Not enough activity data to predict off wrist time", buf, 2u);
    }
  }

  else
  {
    bucketCount = [histogramCopy bucketCount];
    v8 = vcvtd_n_f64_s64(days, 1uLL);
    while (bucketCount-- >= 1)
    {
      if (v8 <= [histogramCopy numberOfValuesInBucketAtIndex:bucketCount])
      {
        startOfToday = [(FITypicalDayActivityModel *)self startOfToday];
        v11 = [(FITypicalDayActivityModel *)self _bucketDateForIndex:bucketCount + 1 startOfDay:startOfToday];

        goto LABEL_9;
      }
    }
  }

  v11 = 0;
LABEL_9:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__FITypicalDayActivityModel__queue_calculateProjectedOffWristDateFromHistogram_activeDays___block_invoke;
  v14[3] = &unk_279004B38;
  v14[4] = self;
  v14[5] = days;
  dispatch_async(MEMORY[0x277D85CD0], v14);

  return v11;
}

- (int64_t)totalActiveDays
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    return self->_totalActiveDays;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__FITypicalDayActivityModel_totalActiveDays__block_invoke;
  v5[3] = &unk_279005430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(MEMORY[0x277D85CD0], v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_queue_populateHistogramsAndOffWristDateForToday
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Error enumerating activity summaries %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __77__FITypicalDayActivityModel__queue_populateHistogramsAndOffWristDateForToday__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 activityMoveMode] == *(a1 + 72))
  {
    [*(a1 + 32) _queue_updateHistogram:*(a1 + 40) goalType:1 activitySummary:v3];
    [*(a1 + 32) _queue_updateHistogram:*(a1 + 48) goalType:2 activitySummary:v3];
    [*(a1 + 32) _queue_updateProjectedOffWristDateHistogram:*(a1 + 56) activitySummary:v3 activeDays:*(*(a1 + 64) + 8) + 24];
  }
}

- (BOOL)_queue_enumerateActivitySummariesOrderedByCacheIndexWithCalendar:(id)calendar error:(id *)error handler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  calendarCopy = calendar;
  dispatch_assert_queue_V2(queue);
  v11 = *MEMORY[0x277CCE1D0];
  startDate = [(NSDateInterval *)self->_interval startDate];
  v13 = [calendarCopy components:v11 fromDate:startDate];

  endDate = [(NSDateInterval *)self->_interval endDate];
  v15 = [calendarCopy components:v11 fromDate:endDate];

  delegate = [(FITypicalDayActivityModel *)self delegate];
  LOBYTE(error) = [delegate enumerateActivitySummariesFromDateComponents:v13 toDateComponents:v15 error:error handler:handlerCopy];

  return error;
}

- (int64_t)_bucketIndexForDate:(id)date startOfDay:(id)day bucketDates:(id)dates
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dayCopy = day;
  datesCopy = dates;
  if ([datesCopy count])
  {
    v12 = 0;
    *&v11 = 138544130;
    v22 = v11;
    do
    {
      v13 = [datesCopy objectAtIndexedSubscript:{v12, v22}];
      v14 = v12 + 1;
      if (v12 >= [datesCopy count] - 1)
      {
        [(FITypicalDayActivityModel *)self _bucketDateForIndex:v12 + 1 startOfDay:dayCopy];
      }

      else
      {
        [datesCopy objectAtIndexedSubscript:v12 + 1];
      }
      v15 = ;
      v16 = v15;
      if (v13 && v15)
      {
        if ([v13 compare:v15] == 1)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC290];
          if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v24 = v13;
            v25 = 2114;
            v26 = v16;
            v27 = 2114;
            v28 = datesCopy;
            v29 = 2048;
            v30 = v12;
            _os_log_impl(&dword_24B35E000, v17, OS_LOG_TYPE_DEFAULT, "TypicalDayModel: binDate later than nextDate! %{public}@, %{public}@, %{public}@, %ld", buf, 0x2Au);
          }
        }

        else
        {
          v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v16];
          v19 = [v18 containsDate:dateCopy];

          if (v19)
          {

            goto LABEL_14;
          }
        }
      }

      ++v12;
    }

    while (v14 < [datesCopy count]);
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_setSleepUserDay:(id)day
{
  dayCopy = day;
  os_unfair_lock_lock(&self->_sleepUserDayLock);
  sleepUserDay = self->_sleepUserDay;
  self->_sleepUserDay = dayCopy;

  os_unfair_lock_unlock(&self->_sleepUserDayLock);
}

- (FITypicalDayActivityModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:biologicalSex:height:weight:wheelchairUse:experienceType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:biologicalSex:height:weight:wheelchairUse:experienceType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_briskWalkTimeToCompleteMoveGoalWithDateOfBirth:biologicalSex:height:weight:wheelchairUse:experienceType:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateHistogram:(void *)a1 goalType:(void *)a2 activitySummary:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 _startDate];
  v8 = 134218242;
  v9 = a3;
  v10 = 2114;
  v11 = v6;
  _os_log_debug_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEBUG, "Building typical-day histogram (goaltype=%lu) with activity summary for date: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateHistogram:(void *)a1 goalType:(void *)a2 activitySummary:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _startDate];
  OUTLINED_FUNCTION_2_1(&dword_24B35E000, v5, v6, "Skipping summary with start date %{public}@ for ring type %lu because it has more data then we have buckets (over 24 hour day)", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateProjectedOffWristDateHistogram:(void *)a1 activitySummary:(void *)a2 activeDays:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 _startDate];
  v14 = [a3 startDate];
  OUTLINED_FUNCTION_2_1(&dword_24B35E000, v7, v8, "Last active index is NOT FOUND, for start date: %{public}@, object date: %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

@end