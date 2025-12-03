@interface HDWorkoutSeriesDataAggregator
+ (BOOL)_shouldAggregateToSeriesIsAppleWatch:(BOOL)watch hasActiveWorkout:(BOOL)workout hasForegroundAnchoredObjectQuery:(BOOL)query workoutIsFirstParty:(BOOL)party;
- (BOOL)_hasForegroundAnchoredObjectQuery:(id)query;
- (BOOL)shouldAggregateToSeriesForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options;
- (id)_isWorkoutFirstParty:(id)party;
- (void)setConfiguration:(id)configuration;
@end

@implementation HDWorkoutSeriesDataAggregator

- (BOOL)shouldAggregateToSeriesForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options
{
  v9 = [(HDDataAggregator *)self dataCollectionManager:state];
  profile = [v9 profile];

  if (HKFeatureFlagWorkoutSeriesFirstPartyOnly())
  {
    v11 = [(HDWorkoutSeriesDataAggregator *)self _isWorkoutFirstParty:profile];
    if (!v11)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v12 = v11;
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  v17 = [(HDWorkoutSeriesDataAggregator *)self _hasForegroundAnchoredObjectQuery:profile];
  configuration = [(HDDataAggregator *)self configuration];
  hasActiveWorkout = [configuration hasActiveWorkout];

  v20 = [objc_opt_class() _shouldAggregateToSeriesIsAppleWatch:isAppleWatch hasActiveWorkout:hasActiveWorkout hasForegroundAnchoredObjectQuery:v17 workoutIsFirstParty:bOOLValue];
LABEL_6:

  return v20;
}

+ (BOOL)_shouldAggregateToSeriesIsAppleWatch:(BOOL)watch hasActiveWorkout:(BOOL)workout hasForegroundAnchoredObjectQuery:(BOOL)query workoutIsFirstParty:(BOOL)party
{
  if (watch && workout)
  {
    return party & ~query;
  }

  else
  {
    return workout & ~watch;
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  hasActiveWorkout = [configurationCopy hasActiveWorkout];
  configuration = [(HDDataAggregator *)self configuration];
  hasActiveWorkout2 = [configuration hasActiveWorkout];

  if (hasActiveWorkout != hasActiveWorkout2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__HDWorkoutSeriesDataAggregator_setConfiguration___block_invoke;
    v10[3] = &unk_2786130B0;
    v10[4] = self;
    [(HDActiveDataAggregator *)self requestAggregationThroughDate:date mode:0 options:3 completion:v10];
  }

  v9.receiver = self;
  v9.super_class = HDWorkoutSeriesDataAggregator;
  [(HDDataAggregator *)&v9 setConfiguration:configurationCopy];
}

void __50__HDWorkoutSeriesDataAggregator_setConfiguration___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  v7 = *MEMORY[0x277CCC298];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v13 = 138543362;
      v14 = v8;
      _os_log_debug_impl(&dword_228986000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: setConfiguration requestedAggregation success", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = v6;
    v12 = [v5 localizedDescription];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: setConfiguration requestedAggregation error: %{public}@", &v13, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_isWorkoutFirstParty:(id)party
{
  workoutManager = [party workoutManager];
  currentWorkout = [workoutManager currentWorkout];

  if (currentWorkout)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(currentWorkout, "isFirstParty")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasForegroundAnchoredObjectQuery:(id)query
{
  daemon = [query daemon];
  queryManager = [daemon queryManager];
  quantityType = [(HDActiveQuantityDataAggregator *)self quantityType];
  v7 = [queryManager foregroundAnchoredObjectQueryBundleIdentifiersForType:quantityType];

  LOBYTE(quantityType) = [v7 count] != 0;
  return quantityType;
}

@end