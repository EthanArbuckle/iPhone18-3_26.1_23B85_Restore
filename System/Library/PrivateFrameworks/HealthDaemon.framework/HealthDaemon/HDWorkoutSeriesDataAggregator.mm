@interface HDWorkoutSeriesDataAggregator
+ (BOOL)_shouldAggregateToSeriesIsAppleWatch:(BOOL)a3 hasActiveWorkout:(BOOL)a4 hasForegroundAnchoredObjectQuery:(BOOL)a5 workoutIsFirstParty:(BOOL)a6;
- (BOOL)_hasForegroundAnchoredObjectQuery:(id)a3;
- (BOOL)shouldAggregateToSeriesForState:(id)a3 collector:(id)a4 device:(id)a5 requestedAggregationDate:(id)a6 mode:(int64_t)a7 options:(unint64_t)a8;
- (id)_isWorkoutFirstParty:(id)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation HDWorkoutSeriesDataAggregator

- (BOOL)shouldAggregateToSeriesForState:(id)a3 collector:(id)a4 device:(id)a5 requestedAggregationDate:(id)a6 mode:(int64_t)a7 options:(unint64_t)a8
{
  v9 = [(HDDataAggregator *)self dataCollectionManager:a3];
  v10 = [v9 profile];

  if (HKFeatureFlagWorkoutSeriesFirstPartyOnly())
  {
    v11 = [(HDWorkoutSeriesDataAggregator *)self _isWorkoutFirstParty:v10];
    if (!v11)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v12 = v11;
    v13 = [v11 BOOLValue];
  }

  else
  {
    v13 = 1;
  }

  v14 = [v10 daemon];
  v15 = [v14 behavior];
  v16 = [v15 isAppleWatch];

  v17 = [(HDWorkoutSeriesDataAggregator *)self _hasForegroundAnchoredObjectQuery:v10];
  v18 = [(HDDataAggregator *)self configuration];
  v19 = [v18 hasActiveWorkout];

  v20 = [objc_opt_class() _shouldAggregateToSeriesIsAppleWatch:v16 hasActiveWorkout:v19 hasForegroundAnchoredObjectQuery:v17 workoutIsFirstParty:v13];
LABEL_6:

  return v20;
}

+ (BOOL)_shouldAggregateToSeriesIsAppleWatch:(BOOL)a3 hasActiveWorkout:(BOOL)a4 hasForegroundAnchoredObjectQuery:(BOOL)a5 workoutIsFirstParty:(BOOL)a6
{
  if (a3 && a4)
  {
    return a6 & ~a5;
  }

  else
  {
    return a4 & ~a3;
  }
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 hasActiveWorkout];
  v6 = [(HDDataAggregator *)self configuration];
  v7 = [v6 hasActiveWorkout];

  if (v5 != v7)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__HDWorkoutSeriesDataAggregator_setConfiguration___block_invoke;
    v10[3] = &unk_2786130B0;
    v10[4] = self;
    [(HDActiveDataAggregator *)self requestAggregationThroughDate:v8 mode:0 options:3 completion:v10];
  }

  v9.receiver = self;
  v9.super_class = HDWorkoutSeriesDataAggregator;
  [(HDDataAggregator *)&v9 setConfiguration:v4];
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

- (id)_isWorkoutFirstParty:(id)a3
{
  v3 = [a3 workoutManager];
  v4 = [v3 currentWorkout];

  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isFirstParty")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasForegroundAnchoredObjectQuery:(id)a3
{
  v4 = [a3 daemon];
  v5 = [v4 queryManager];
  v6 = [(HDActiveQuantityDataAggregator *)self quantityType];
  v7 = [v5 foregroundAnchoredObjectQueryBundleIdentifiersForType:v6];

  LOBYTE(v6) = [v7 count] != 0;
  return v6;
}

@end