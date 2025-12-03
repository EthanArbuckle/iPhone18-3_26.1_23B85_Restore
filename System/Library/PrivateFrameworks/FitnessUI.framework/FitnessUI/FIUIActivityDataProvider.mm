@interface FIUIActivityDataProvider
+ (id)sharedModel;
- (BOOL)_loadingStateForActivitySummary:(id)summary;
- (FIUIActivityDataProvider)init;
- (id)_currentActivitySummaryQueryCollectionIntervalsOverride;
- (id)_queue_activityDataModelFromCurrentActivitySummary;
- (id)switcherActivityDataModel;
- (void)_broadcastCurrentModelUpdateToSubscribers:(id)subscribers;
- (void)_handleTimeChange;
- (void)_queue_restartQueriesPreservingExistingGoals:(BOOL)goals;
- (void)_queue_updateChartStatisticsWithStatisticsQueryResult:(id)result;
- (void)_queue_updateCurrentActivitySummaryWithSummary:(id)summary;
- (void)_setCurrentDate:(id)date;
- (void)addSubscriber:(id)subscriber;
- (void)dealloc;
- (void)fitnessAppsStateObserver:(id)observer restrictedStateDidChange:(int64_t)change;
- (void)getCurrentActivityDataModelWithHandler:(id)handler;
- (void)removeSubscriber:(id)subscriber;
@end

@implementation FIUIActivityDataProvider

- (FIUIActivityDataProvider)init
{
  v24.receiver = self;
  v24.super_class = FIUIActivityDataProvider;
  v2 = [(FIUIActivityDataProvider *)&v24 init];
  if (v2)
  {
    kilocalorieUnit = [MEMORY[0x1E696C510] kilocalorieUnit];
    kcalUnit = v2->_kcalUnit;
    v2->_kcalUnit = kilocalorieUnit;

    minuteUnit = [MEMORY[0x1E696C510] minuteUnit];
    minuteUnit = v2->_minuteUnit;
    v2->_minuteUnit = minuteUnit;

    countUnit = [MEMORY[0x1E696C510] countUnit];
    countUnit = v2->_countUnit;
    v2->_countUnit = countUnit;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.nanolifestyle.activity.cacheaccess", v9);
    queue = v2->_queue;
    v2->_queue = v10;

    v12 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__FIUIActivityDataProvider_init__block_invoke;
    block[3] = &unk_1E878BFE0;
    v13 = v2;
    v23 = v13;
    dispatch_async(v12, block);
    v14 = dispatch_queue_create("com.apple.nanolifestyle.activity.subscriberaccess", v9);
    subscriber_queue = v13->_subscriber_queue;
    v13->_subscriber_queue = v14;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    subscribers = v13->_subscribers;
    v13->_subscribers = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__handleTimeChange name:*MEMORY[0x1E69DDB88] object:0];
    [defaultCenter addObserver:v13 selector:sel__handleTimeChange name:*MEMORY[0x1E695D810] object:0];
    v19 = objc_alloc_init(MEMORY[0x1E699C9C8]);
    fitnessAppsStateObserver = v13->_fitnessAppsStateObserver;
    v13->_fitnessAppsStateObserver = v19;

    [(FIFitnessAppsStateObserver *)v13->_fitnessAppsStateObserver setDelegate:v13];
    v13->_areFitnessAppsRestricted = [(FIFitnessAppsStateObserver *)v13->_fitnessAppsStateObserver areFitnessAppsRestricted];
  }

  return v2;
}

uint64_t __32__FIUIActivityDataProvider_init__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = [MEMORY[0x1E696C1C0] fiui_sharedHealthStoreForCarousel];

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  fitnessAppsStateObserver = self->_fitnessAppsStateObserver;
  self->_fitnessAppsStateObserver = 0;

  v5.receiver = self;
  v5.super_class = FIUIActivityDataProvider;
  [(FIUIActivityDataProvider *)&v5 dealloc];
}

+ (id)sharedModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__FIUIActivityDataProvider_sharedModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedModel_onceToken != -1)
  {
    dispatch_once(&sharedModel_onceToken, block);
  }

  v2 = sharedModel___sharedModel;

  return v2;
}

uint64_t __39__FIUIActivityDataProvider_sharedModel__block_invoke()
{
  sharedModel___sharedModel = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)addSubscriber:(id)subscriber
{
  v15 = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  v5 = [subscriberCopy description];
  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1E5D0F000, v6, OS_LOG_TYPE_DEFAULT, "Timeline model adding subscriber: %@", buf, 0xCu);
  }

  subscriber_queue = self->_subscriber_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FIUIActivityDataProvider_addSubscriber___block_invoke;
  block[3] = &unk_1E878C008;
  block[4] = self;
  v11 = subscriberCopy;
  v12 = v5;
  v8 = v5;
  v9 = subscriberCopy;
  dispatch_async(subscriber_queue, block);
}

void __42__FIUIActivityDataProvider_addSubscriber___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (([*(*(a1 + 32) + 112) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 112) anyObject];

    [*(*(a1 + 32) + 112) addObject:*(a1 + 40)];
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1E5D0F000, v3, OS_LOG_TYPE_DEFAULT, "Timeline model: Subscriber <%@> added.", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__FIUIActivityDataProvider_addSubscriber___block_invoke_303;
    block[3] = &unk_1E878CE38;
    block[4] = v5;
    block[5] = &buf;
    dispatch_sync(v6, block);
    [*(a1 + 32) _broadcastCurrentModelUpdate:*(*(&buf + 1) + 40) toSubscriber:*(a1 + 40)];
    if (!v2)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 48);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__FIUIActivityDataProvider_addSubscriber___block_invoke_2;
      v9[3] = &unk_1E878BFE0;
      v9[4] = v7;
      dispatch_async(v8, v9);
    }

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t __42__FIUIActivityDataProvider_addSubscriber___block_invoke_303(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_activityDataModelFromCurrentActivitySummary];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42__FIUIActivityDataProvider_addSubscriber___block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E5D0F000, v2, OS_LOG_TYPE_DEFAULT, "Timeline model: First subscriber added to activity data provider, starting queries", v4, 2u);
  }

  return [*(a1 + 32) _queue_startQueries];
}

- (void)removeSubscriber:(id)subscriber
{
  v10 = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = subscriberCopy;
    _os_log_impl(&dword_1E5D0F000, v5, OS_LOG_TYPE_DEFAULT, "Timeline model removing subscriber: %@", buf, 0xCu);
  }

  subscriber_queue = self->_subscriber_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FIUIActivityDataProvider_removeSubscriber___block_invoke;
  block[3] = &unk_1E878BFE0;
  block[4] = self;
  dispatch_async(subscriber_queue, block);
}

void __45__FIUIActivityDataProvider_removeSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) anyObject];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__FIUIActivityDataProvider_removeSubscriber___block_invoke_2;
    block[3] = &unk_1E878BFE0;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

uint64_t __45__FIUIActivityDataProvider_removeSubscriber___block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E5D0F000, v2, OS_LOG_TYPE_DEFAULT, "Timeline model: Last subscriber removed from activity data provider, stopping queries", v4, 2u);
  }

  return [*(a1 + 32) _queue_stopQueriesPreservingExistingGoals:0];
}

- (id)switcherActivityDataModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__FIUIActivityDataProvider_switcherActivityDataModel__block_invoke;
  v5[3] = &unk_1E878CE38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __53__FIUIActivityDataProvider_switcherActivityDataModel__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_activityDataModelFromCurrentActivitySummary];

  return MEMORY[0x1EEE66BB8]();
}

- (void)getCurrentActivityDataModelWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__FIUIActivityDataProvider_getCurrentActivityDataModelWithHandler___block_invoke;
  v7[3] = &unk_1E878CE60;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __67__FIUIActivityDataProvider_getCurrentActivityDataModelWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_activityDataModelFromCurrentActivitySummary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__FIUIActivityDataProvider_getCurrentActivityDataModelWithHandler___block_invoke_2;
  v5[3] = &unk_1E878BF68;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (id)_currentActivitySummaryQueryCollectionIntervalsOverride
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC38]];
  v8[0] = v2;
  v9[0] = &unk_1F5F9B918;
  v3 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC48]];
  v8[1] = v3;
  v9[1] = &unk_1F5F9B918;
  v4 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC40]];
  v8[2] = v4;
  v9[2] = &unk_1F5F9B918;
  v5 = [MEMORY[0x1E696C2E0] categoryTypeForIdentifier:*MEMORY[0x1E696B560]];
  v8[3] = v5;
  v9[3] = &unk_1F5F9B918;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)_queue_restartQueriesPreservingExistingGoals:(BOOL)goals
{
  goalsCopy = goals;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E5D0F000, v5, OS_LOG_TYPE_DEFAULT, "Timeline model restarting queries", v6, 2u);
  }

  [(FIUIActivityDataProvider *)self _queue_stopQueriesPreservingExistingGoals:goalsCopy];
  [(FIUIActivityDataProvider *)self _queue_startQueries];
}

- (BOOL)_loadingStateForActivitySummary:(id)summary
{
  v12 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v7[0] = 67109634;
    v7[1] = summaryCopy == 0;
    v8 = 2112;
    v9 = summaryCopy;
    v10 = 1024;
    _isDataLoading = [summaryCopy _isDataLoading];
    _os_log_impl(&dword_1E5D0F000, v5, OS_LOG_TYPE_DEFAULT, "databaseLoading?:%u activitySummary:%@ [activitySummary _isDataLoading]:%u", v7, 0x18u);
  }

  return summaryCopy == 0;
}

- (id)_queue_activityDataModelFromCurrentActivitySummary
{
  v3 = self->_queue_currentActivitySummary;
  v4 = objc_alloc_init(FIUIActivityDataModel);
  activeEnergyBurned = [(HKActivitySummary *)v3 activeEnergyBurned];
  activeEnergyBurnedGoal = [(HKActivitySummary *)v3 activeEnergyBurnedGoal];
  appleMoveMinutes = [(HKActivitySummary *)v3 appleMoveMinutes];
  [appleMoveMinutes doubleValueForUnit:self->_minuteUnit];
  v9 = v8;

  appleMoveMinutesGoal = [(HKActivitySummary *)v3 appleMoveMinutesGoal];
  [appleMoveMinutesGoal doubleValueForUnit:self->_minuteUnit];
  v12 = v11;

  appleExerciseTime = [(HKActivitySummary *)v3 appleExerciseTime];
  [appleExerciseTime doubleValueForUnit:self->_minuteUnit];
  v15 = v14;

  appleExerciseTimeGoal = [(HKActivitySummary *)v3 appleExerciseTimeGoal];
  [appleExerciseTimeGoal doubleValueForUnit:self->_minuteUnit];
  v18 = v17;

  appleStandHours = [(HKActivitySummary *)v3 appleStandHours];
  [appleStandHours doubleValueForUnit:self->_countUnit];
  v21 = v20;

  appleStandHoursGoal = [(HKActivitySummary *)v3 appleStandHoursGoal];
  [appleStandHoursGoal doubleValueForUnit:self->_countUnit];
  v24 = v23;

  [(FIUIActivityDataModel *)v4 setActivityMoveMode:[(HKActivitySummary *)v3 _activityMoveMode]];
  [(FIUIActivityDataModel *)v4 setActiveEnergyTotal:activeEnergyBurned];
  [(FIUIActivityDataModel *)v4 setActiveEnergyGoal:activeEnergyBurnedGoal];
  [(FIUIActivityDataModel *)v4 setAppleMoveTimeTotal:v9];
  [(FIUIActivityDataModel *)v4 setAppleMoveTimeGoal:v12];
  [(FIUIActivityDataModel *)v4 setAppleExerciseTimeTotal:v15];
  [(FIUIActivityDataModel *)v4 setAppleExerciseTimeGoal:v18];
  [(FIUIActivityDataModel *)v4 setAppleStandHoursTotal:v21];
  [(FIUIActivityDataModel *)v4 setAppleStandHoursGoal:v24];
  [(FIUIActivityDataModel *)v4 setWheelchairUser:[(HKActivitySummary *)v3 _wheelchairUse]== 2];
  [(FIUIActivityDataModel *)v4 setPaused:[(FIUIActivityDataProvider *)self _isPausedForActivitySummary:v3]];
  v25 = MEMORY[0x1E695E0F0];
  if (self->_queue_currentActiveEnergyChartData)
  {
    queue_currentActiveEnergyChartData = self->_queue_currentActiveEnergyChartData;
  }

  else
  {
    queue_currentActiveEnergyChartData = MEMORY[0x1E695E0F0];
  }

  [(FIUIActivityDataModel *)v4 setActiveEnergyChartData:queue_currentActiveEnergyChartData];
  if (self->_queue_currentMoveTimeChartData)
  {
    queue_currentMoveTimeChartData = self->_queue_currentMoveTimeChartData;
  }

  else
  {
    queue_currentMoveTimeChartData = v25;
  }

  [(FIUIActivityDataModel *)v4 setAppleMoveTimeChartData:queue_currentMoveTimeChartData];
  if (self->_queue_currentExerciseChartData)
  {
    queue_currentExerciseChartData = self->_queue_currentExerciseChartData;
  }

  else
  {
    queue_currentExerciseChartData = v25;
  }

  [(FIUIActivityDataModel *)v4 setAppleExerciseTimeChartData:queue_currentExerciseChartData];
  if (self->_queue_currentStandChartData)
  {
    queue_currentStandChartData = self->_queue_currentStandChartData;
  }

  else
  {
    queue_currentStandChartData = v25;
  }

  [(FIUIActivityDataModel *)v4 setAppleStandHourChartData:queue_currentStandChartData];
  date = [MEMORY[0x1E695DF00] date];
  [(FIUIActivityDataModel *)v4 setDate:date];

  [(FIUIActivityDataModel *)v4 setDatabaseLoading:[(FIUIActivityDataProvider *)self _loadingStateForActivitySummary:v3]];
  [(FIUIActivityDataModel *)v4 setAreFitnessAppsRestricted:self->_areFitnessAppsRestricted];

  return v4;
}

- (void)_queue_updateCurrentActivitySummaryWithSummary:(id)summary
{
  v37 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  activeEnergyBurnedGoal = [(HKActivitySummary *)self->_queue_currentActivitySummary activeEnergyBurnedGoal];
  activeEnergyBurned = [(HKActivitySummary *)self->_queue_currentActivitySummary activeEnergyBurned];
  appleMoveMinutesGoal = [(HKActivitySummary *)self->_queue_currentActivitySummary appleMoveMinutesGoal];
  appleMoveMinutes = [(HKActivitySummary *)self->_queue_currentActivitySummary appleMoveMinutes];
  appleExerciseTimeGoal = [(HKActivitySummary *)self->_queue_currentActivitySummary appleExerciseTimeGoal];
  appleExerciseTime = [(HKActivitySummary *)self->_queue_currentActivitySummary appleExerciseTime];
  appleStandHoursGoal = [(HKActivitySummary *)self->_queue_currentActivitySummary appleStandHoursGoal];
  appleStandHours = [(HKActivitySummary *)self->_queue_currentActivitySummary appleStandHours];
  paused = [(HKActivitySummary *)self->_queue_currentActivitySummary paused];
  activeEnergyBurnedGoal2 = [summaryCopy activeEnergyBurnedGoal];
  activeEnergyBurned2 = [summaryCopy activeEnergyBurned];
  appleMoveMinutesGoal2 = [summaryCopy appleMoveMinutesGoal];
  appleMoveMinutes2 = [summaryCopy appleMoveMinutes];
  appleExerciseTimeGoal2 = [summaryCopy appleExerciseTimeGoal];
  appleExerciseTime2 = [summaryCopy appleExerciseTime];
  appleStandHoursGoal2 = [summaryCopy appleStandHoursGoal];
  appleStandHours2 = [summaryCopy appleStandHours];
  v6 = [(FIUIActivityDataProvider *)self _isPausedForActivitySummary:summaryCopy];
  _activitySummaryIndex = [(HKActivitySummary *)self->_queue_currentActivitySummary _activitySummaryIndex];
  _activitySummaryIndex2 = [summaryCopy _activitySummaryIndex];
  _activityMoveMode = [(HKActivitySummary *)self->_queue_currentActivitySummary _activityMoveMode];
  _activityMoveMode2 = [summaryCopy _activityMoveMode];
  _wheelchairUse = [(HKActivitySummary *)self->_queue_currentActivitySummary _wheelchairUse];
  _wheelchairUse2 = [summaryCopy _wheelchairUse];
  if (_activitySummaryIndex == _activitySummaryIndex2 && _activityMoveMode == _activityMoveMode2 && _wheelchairUse == _wheelchairUse2 && ((paused ^ v6) & 1) == 0 && [activeEnergyBurnedGoal isEqual:activeEnergyBurnedGoal2] && objc_msgSend(activeEnergyBurned, "isEqual:", activeEnergyBurned2) && objc_msgSend(appleMoveMinutesGoal, "isEqual:", appleMoveMinutesGoal2) && objc_msgSend(appleMoveMinutes, "isEqual:", appleMoveMinutes2) && objc_msgSend(appleExerciseTimeGoal, "isEqual:", appleExerciseTimeGoal2) && objc_msgSend(appleExerciseTime, "isEqual:", appleExerciseTime2) && objc_msgSend(appleStandHoursGoal, "isEqual:", appleStandHoursGoal2) && objc_msgSend(appleStandHours, "isEqual:", appleStandHours2))
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
    {
      queue_currentActivitySummary = self->_queue_currentActivitySummary;
      *buf = 138412546;
      v34 = queue_currentActivitySummary;
      v35 = 2112;
      v36 = summaryCopy;
      _os_log_impl(&dword_1E5D0F000, v13, OS_LOG_TYPE_DEFAULT, "New activity summary (%@) has same values as existing (%@), skipping update", buf, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(&self->_queue_currentActivitySummary, summary);
    _queue_activityDataModelFromCurrentActivitySummary = [(FIUIActivityDataProvider *)self _queue_activityDataModelFromCurrentActivitySummary];
    [(FIUIActivityDataProvider *)self _broadcastCurrentModelUpdateToSubscribers:_queue_activityDataModelFromCurrentActivitySummary];
  }
}

- (void)_queue_updateChartStatisticsWithStatisticsQueryResult:(id)result
{
  resultCopy = result;
  activeEnergyResults = [resultCopy activeEnergyResults];
  queue_currentActiveEnergyChartData = self->_queue_currentActiveEnergyChartData;
  self->_queue_currentActiveEnergyChartData = activeEnergyResults;

  appleMoveTimeResults = [resultCopy appleMoveTimeResults];
  queue_currentMoveTimeChartData = self->_queue_currentMoveTimeChartData;
  self->_queue_currentMoveTimeChartData = appleMoveTimeResults;

  appleExerciseTimeResults = [resultCopy appleExerciseTimeResults];
  queue_currentExerciseChartData = self->_queue_currentExerciseChartData;
  self->_queue_currentExerciseChartData = appleExerciseTimeResults;

  appleStandHourResults = [resultCopy appleStandHourResults];

  queue_currentStandChartData = self->_queue_currentStandChartData;
  self->_queue_currentStandChartData = appleStandHourResults;

  _queue_activityDataModelFromCurrentActivitySummary = [(FIUIActivityDataProvider *)self _queue_activityDataModelFromCurrentActivitySummary];
  [(FIUIActivityDataProvider *)self _broadcastCurrentModelUpdateToSubscribers:_queue_activityDataModelFromCurrentActivitySummary];
}

- (void)_handleTimeChange
{
  _HKInitializeLogging();
  v3 = MEMORY[0x1E696B928];
  v4 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E5D0F000, v4, OS_LOG_TYPE_DEFAULT, "Timeline model received time change notification", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  subscriber_queue = self->_subscriber_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FIUIActivityDataProvider__handleTimeChange__block_invoke;
  block[3] = &unk_1E878CE38;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(subscriber_queue, block);
  if (v11[24] == 1)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__FIUIActivityDataProvider__handleTimeChange__block_invoke_2;
    v8[3] = &unk_1E878BFE0;
    v8[4] = self;
    dispatch_async(queue, v8);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
    {
      [(FIUIActivityDataProvider *)v7 _handleTimeChange];
    }
  }

  _Block_object_dispose(buf, 8);
}

void __45__FIUIActivityDataProvider__handleTimeChange__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) anyObject];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void __45__FIUIActivityDataProvider__handleTimeChange__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = v2;
  if (*(*(a1 + 32) + 120) && [v2 isDateInToday:?])
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5D0F000, v4, OS_LOG_TYPE_DEFAULT, "Timeline model has subscribers, but date didn't change, so *not* restarting everything.", buf, 2u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E5D0F000, v5, OS_LOG_TYPE_DEFAULT, "Timeline model has subscribers, and the date has changed, so restarting everything", v6, 2u);
    }

    [*(a1 + 32) _queue_restartQueriesPreservingExistingGoals:1];
  }
}

- (void)_broadcastCurrentModelUpdateToSubscribers:(id)subscribers
{
  subscribersCopy = subscribers;
  subscriber_queue = self->_subscriber_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__FIUIActivityDataProvider__broadcastCurrentModelUpdateToSubscribers___block_invoke;
  v7[3] = &unk_1E878BFB8;
  v7[4] = self;
  v8 = subscribersCopy;
  v6 = subscribersCopy;
  dispatch_async(subscriber_queue, v7);
}

void __70__FIUIActivityDataProvider__broadcastCurrentModelUpdateToSubscribers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 112);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _broadcastCurrentModelUpdate:*(a1 + 40) toSubscriber:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)fitnessAppsStateObserver:(id)observer restrictedStateDidChange:(int64_t)change
{
  self->_areFitnessAppsRestricted = change == 1;
  _queue_activityDataModelFromCurrentActivitySummary = [(FIUIActivityDataProvider *)self _queue_activityDataModelFromCurrentActivitySummary];
  [(FIUIActivityDataProvider *)self _broadcastCurrentModelUpdateToSubscribers:_queue_activityDataModelFromCurrentActivitySummary];
}

- (void)_setCurrentDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FIUIActivityDataProvider__setCurrentDate___block_invoke;
  v7[3] = &unk_1E878BFB8;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(queue, v7);
}

@end