@interface BRKRoutineManager
+ (void)fetchLocationsOfInterestWithSingleRetryOfType:(int64_t)type routineManager:(id)manager withHandler:(id)handler;
@end

@implementation BRKRoutineManager

+ (void)fetchLocationsOfInterestWithSingleRetryOfType:(int64_t)type routineManager:(id)manager withHandler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__BRKRoutineManager_fetchLocationsOfInterestWithSingleRetryOfType_routineManager_withHandler___block_invoke;
  v12[3] = &unk_278D287C8;
  v14 = handlerCopy;
  typeCopy = type;
  v13 = managerCopy;
  v9 = handlerCopy;
  v10 = managerCopy;
  v11 = MEMORY[0x245D05110](v12);
  [v10 fetchLocationsOfInterestOfType:type withHandler:v11];
}

void __94__BRKRoutineManager_fetchLocationsOfInterestWithSingleRetryOfType_routineManager_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 code] == 8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __94__BRKRoutineManager_fetchLocationsOfInterestWithSingleRetryOfType_routineManager_withHandler___block_invoke_cold_1(v7);
    }

    [*(a1 + 32) fetchLocationsOfInterestOfType:*(a1 + 48) withHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __94__BRKRoutineManager_fetchLocationsOfInterestWithSingleRetryOfType_routineManager_withHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[BRKRoutineManager fetchLocationsOfInterestWithSingleRetryOfType:routineManager:withHandler:]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_241EE4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Retrying once %{public}@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end