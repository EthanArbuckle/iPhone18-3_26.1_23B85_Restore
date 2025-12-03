@interface FIUIWeeklyGoalModel
- (FIUIWeeklyGoalModel)initWithHealthStore:(id)store;
- (void)fetchMostRecentWeeklyGoalWithCompletion:(id)completion;
- (void)saveNewWeeklyGoal:(id)goal forDate:(id)date;
- (void)saveNewWeeklyGoal:(id)goal forDate:(id)date completion:(id)completion;
- (void)saveNewWeeklyGoal:(id)goal quantityType:(id)type forDate:(id)date completion:(id)completion;
@end

@implementation FIUIWeeklyGoalModel

- (FIUIWeeklyGoalModel)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = FIUIWeeklyGoalModel;
  v6 = [(FIUIWeeklyGoalModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
  }

  return v7;
}

- (void)fetchMostRecentWeeklyGoalWithCompletion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = MEMORY[0x1E696AE18];
    date = [MEMORY[0x1E695DF00] date];
    v7 = [v5 predicateWithFormat:@"startDate <= %@", date];

    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:0];
    v9 = objc_alloc(MEMORY[0x1E696C3C8]);
    calorieGoal = [MEMORY[0x1E696C2E0] calorieGoal];
    v15[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__FIUIWeeklyGoalModel_fetchMostRecentWeeklyGoalWithCompletion___block_invoke;
    v13[3] = &unk_1E878CB00;
    v14 = completionCopy;
    v12 = [v9 initWithSampleType:calorieGoal predicate:v7 limit:1 sortDescriptors:v11 resultsHandler:v13];

    [(HKHealthStore *)self->_healthStore executeQuery:v12];
  }
}

void __63__FIUIWeeklyGoalModel_fetchMostRecentWeeklyGoalWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v8 = [a3 lastObject];
  v7 = [v8 quantity];
  (*(*(a1 + 32) + 16))();
}

- (void)saveNewWeeklyGoal:(id)goal forDate:(id)date
{
  v6 = MEMORY[0x1E696C2E0];
  dateCopy = date;
  goalCopy = goal;
  calorieGoal = [v6 calorieGoal];
  [(FIUIWeeklyGoalModel *)self saveNewWeeklyGoal:goalCopy quantityType:calorieGoal forDate:dateCopy completion:0];
}

- (void)saveNewWeeklyGoal:(id)goal forDate:(id)date completion:(id)completion
{
  v8 = MEMORY[0x1E696C2E0];
  completionCopy = completion;
  dateCopy = date;
  goalCopy = goal;
  calorieGoal = [v8 calorieGoal];
  [(FIUIWeeklyGoalModel *)self saveNewWeeklyGoal:goalCopy quantityType:calorieGoal forDate:dateCopy completion:completionCopy];
}

- (void)saveNewWeeklyGoal:(id)goal quantityType:(id)type forDate:(id)date completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v11 = [MEMORY[0x1E696C358] quantitySampleWithType:type quantity:goal startDate:date endDate:date];
  _HKInitializeLogging();
  v12 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEBUG))
  {
    [FIUIWeeklyGoalModel saveNewWeeklyGoal:v12 quantityType:v11 forDate:self completion:?];
  }

  healthStore = self->_healthStore;
  v18[0] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__FIUIWeeklyGoalModel_saveNewWeeklyGoal_quantityType_forDate_completion___block_invoke;
  v16[3] = &unk_1E878CB50;
  v17 = completionCopy;
  v15 = completionCopy;
  [(HKHealthStore *)healthStore saveObjects:v14 withCompletion:v16];
}

void __73__FIUIWeeklyGoalModel_saveNewWeeklyGoal_quantityType_forDate_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__FIUIWeeklyGoalModel_saveNewWeeklyGoal_quantityType_forDate_completion___block_invoke_2;
  v8[3] = &unk_1E878CB28;
  v10 = a2;
  v6 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v6);
  }
}

void __73__FIUIWeeklyGoalModel_saveNewWeeklyGoal_quantityType_forDate_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B928];
  v4 = *MEMORY[0x1E696B928];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E5D0F000, v3, OS_LOG_TYPE_DEFAULT, "Successfully saved new weekly goal", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__FIUIWeeklyGoalModel_saveNewWeeklyGoal_quantityType_forDate_completion___block_invoke_2_cold_1(a1, v3);
  }
}

void __42__FIUIWeeklyGoalModel_saveNewWeeklyGoals___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__FIUIWeeklyGoalModel_saveNewWeeklyGoals___block_invoke_2;
  v6[3] = &unk_1E878CB28;
  v8 = a2;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __42__FIUIWeeklyGoalModel_saveNewWeeklyGoals___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B928];
  v4 = *MEMORY[0x1E696B928];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E5D0F000, v3, OS_LOG_TYPE_DEFAULT, "Successfully saved new weekly goal", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__FIUIWeeklyGoalModel_saveNewWeeklyGoals___block_invoke_2_cold_1(a1, v3);
  }
}

- (void)saveNewWeeklyGoal:(uint64_t)a3 quantityType:forDate:completion:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = HKLogSafeDescription();
  v6 = *(a3 + 8);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1E5D0F000, v4, OS_LOG_TYPE_DEBUG, "Saving weekly goal, quantity sample = %@. healthStore = %@", &v7, 0x16u);
}

void __73__FIUIWeeklyGoalModel_saveNewWeeklyGoal_quantityType_forDate_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "Could not save weekly goal to HealthKit database: %{public}@", &v3, 0xCu);
}

void __42__FIUIWeeklyGoalModel_saveNewWeeklyGoals___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "Could not save weekly goals to HealthKit database: %{public}@", &v3, 0xCu);
}

@end