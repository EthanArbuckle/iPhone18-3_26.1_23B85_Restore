@interface HDHRDailyHeartRateManager
- (HDHRDailyHeartRateManager)initWithProfile:(id)a3;
- (void)_queue_cleanupValuesForTodayCacheIndex:(int64_t)a3 yesterdayCacheIndex:(int64_t)a4;
- (void)_queue_deleteHeartRateOfType:(id)a3 forCacheIndex:(int64_t)a4 replacementUUID:(id)a5;
- (void)_queue_replaceHeartRate:(id)a3 ofType:(id)a4 forCacheIndex:(int64_t)a5 dateInterval:(id)a6 heartRateByCacheIndex:(id)a7;
- (void)activityCacheManager:(id)a3 changedHeartRateSummary:(id)a4 isToday:(BOOL)a5;
- (void)daemonReady:(id)a3;
- (void)dealloc;
@end

@implementation HDHRDailyHeartRateManager

- (HDHRDailyHeartRateManager)initWithProfile:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HDHRDailyHeartRateManager;
  v5 = [(HDHRDailyHeartRateManager *)&v20 init];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v5->_profile, v4);
    v9 = HDDispatchQueueName();
    v10 = dispatch_queue_create(v9, 0);
    queue = v5->_queue;
    v5->_queue = v10;

    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    v13 = [WeakRetained healthDaemon];
    [v13 registerForDaemonReady:v5];

    v14 = [MEMORY[0x277CBEB38] dictionary];
    restingHeartRateByActivityCacheIndex = v5->_restingHeartRateByActivityCacheIndex;
    v5->_restingHeartRateByActivityCacheIndex = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    walkingAverageHeartRateByActivityCacheIndex = v5->_walkingAverageHeartRateByActivityCacheIndex;
    v5->_walkingAverageHeartRateByActivityCacheIndex = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_activityCacheInterface);
  [WeakRetained removeActivityCacheObserver:self];

  v4.receiver = self;
  v4.super_class = HDHRDailyHeartRateManager;
  [(HDHRDailyHeartRateManager *)&v4 dealloc];
}

- (void)daemonReady:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received daemon ready", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained activityCacheInterface];
  objc_storeWeak(&self->_activityCacheInterface, v8);

  v9 = objc_loadWeakRetained(&self->_activityCacheInterface);
  [v9 addActivityCacheObserver:self];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)activityCacheManager:(id)a3 changedHeartRateSummary:(id)a4 isToday:(BOOL)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "activityCacheIndex")}];
    v11 = [v6 restingHeartRate];
    v12 = [v6 walkingAverageHeartRate];
    *buf = 138544130;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received heart rate summary (%{public}@) with resting: %@, walking: %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HDHRDailyHeartRateManager_activityCacheManager_changedHeartRateSummary_isToday___block_invoke;
  v16[3] = &unk_27865FE98;
  v17 = v6;
  v18 = self;
  v14 = v6;
  dispatch_async(queue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __82__HDHRDailyHeartRateManager_activityCacheManager_changedHeartRateSummary_isToday___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityCacheIndex];
  v15 = [*(a1 + 32) heartRateDateInterval];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) restingHeartRate];
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC20]];
  [v3 _queue_replaceHeartRate:v4 ofType:v5 forCacheIndex:v2 dateInterval:v15 heartRateByCacheIndex:*(*(a1 + 40) + 32)];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) walkingAverageHeartRate];
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCB8]];
  [v6 _queue_replaceHeartRate:v7 ofType:v8 forCacheIndex:v2 dateInterval:v15 heartRateByCacheIndex:*(*(a1 + 40) + 40)];

  v9 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained(v9 + 2);
  v11 = [WeakRetained currentActivityCache];
  v12 = [v11 cacheIndex];
  v13 = objc_loadWeakRetained((*(a1 + 40) + 16));
  v14 = [v13 yesterdayActivityCache];
  [v9 _queue_cleanupValuesForTodayCacheIndex:v12 yesterdayCacheIndex:{objc_msgSend(v14, "cacheIndex")}];
}

- (void)_queue_replaceHeartRate:(id)a3 ofType:(id)a4 forCacheIndex:(int64_t)a5 dateInterval:(id)a6 heartRateByCacheIndex:(id)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v13 identifier];
  if (v12 && ![v12 _isZero])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    v46 = v15;
    v20 = [v15 objectForKeyedSubscript:v19];
    v21 = [v12 isEqual:v20];

    if (v21)
    {
      _HKInitializeLogging();
      v17 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
        *buf = 138543874;
        v52 = v22;
        v53 = 2114;
        v54 = v16;
        v55 = 2112;
        v56 = v12;
        _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[Daily HR] ignoring activity cache (%{public}@) for %{public}@ because value (%@) did not change", buf, 0x20u);
      }

      v15 = v46;
    }

    else
    {
      v49 = *MEMORY[0x277CCDF98];
      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
      v50 = v23;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

      v24 = MEMORY[0x277CCD800];
      v25 = [v14 startDate];
      v45 = v14;
      [v14 endDate];
      v27 = v26 = self;
      v28 = [v24 quantitySampleWithType:v13 quantity:v12 startDate:v25 endDate:v27 metadata:v17];

      WeakRetained = objc_loadWeakRetained(&v26->_profile);
      v29 = [WeakRetained dataManager];
      v43 = v28;
      v48 = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      v40 = v26;
      v31 = objc_loadWeakRetained(&v26->_profile);
      v32 = [v31 dataProvenanceManager];
      v33 = [v32 defaultLocalDataProvenance];
      v47 = 0;
      v41 = [v29 insertDataObjects:v30 withProvenance:v33 creationDate:&v47 error:CFAbsoluteTimeGetCurrent()];
      v44 = v47;

      _HKInitializeLogging();
      v34 = HKLogHeartRateCategory();
      v35 = v34;
      if (v41)
      {
        v15 = v46;
        v36 = v43;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v52 = v16;
          v53 = 2112;
          v54 = v43;
          _os_log_impl(&dword_229486000, v35, OS_LOG_TYPE_DEFAULT, "[Daily HR] saved new %{public}@: %@", buf, 0x16u);
        }

        v37 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
        [v46 setObject:v12 forKeyedSubscript:v37];

        v35 = [v43 UUID];
        [(HDHRDailyHeartRateManager *)v40 _queue_deleteHeartRateOfType:v13 forCacheIndex:a5 replacementUUID:v35];
        v38 = v44;
        v14 = v45;
      }

      else
      {
        v15 = v46;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v38 = v44;
          [HDHRDailyHeartRateManager _queue_replaceHeartRate:ofType:forCacheIndex:dateInterval:heartRateByCacheIndex:];
          v14 = v45;
        }

        else
        {
          v38 = v44;
          v14 = v45;
        }

        v36 = v43;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
      *buf = 138543618;
      v52 = v18;
      v53 = 2114;
      v54 = v16;
      _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[Daily HR] ignoring activity cache (%{public}@) with no value for %{public}@", buf, 0x16u);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteHeartRateOfType:(id)a3 forCacheIndex:(int64_t)a4 replacementUUID:(id)a5
{
  v36[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = HDSampleEntityPredicateForDataType();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained metadataManager];
  v13 = *MEMORY[0x277CCDF98];
  v14 = MEMORY[0x277CBEB98];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v16 = [v14 setWithObject:v15];
  v17 = [v12 predicateWithMetadataKey:v13 allowedValues:v16];

  v18 = MEMORY[0x277D10B20];
  v19 = HDDataEntityPredicateForDataUUID();

  v20 = [v18 negatedPredicate:v19];

  v21 = MEMORY[0x277D10B20];
  v36[0] = v10;
  v36[1] = v17;
  v36[2] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v23 = [v21 predicateMatchingAllPredicates:v22];

  v35 = 0;
  v24 = objc_loadWeakRetained(&self->_profile);
  v25 = [v24 dataManager];
  v26 = HDSampleEntityClassForDataType();
  v27 = *MEMORY[0x277D10C08];
  v34 = 0;
  LOBYTE(v33) = 0;
  LOBYTE(v16) = [v25 deleteDataObjectsOfClass:v26 predicate:v23 limit:v27 deletedSampleCount:&v35 notifyObservers:1 generateDeletedObjects:1 userRequested:v33 recursiveDeleteAuthorizationBlock:0 error:&v34];
  v28 = v34;

  _HKInitializeLogging();
  v29 = HKLogHeartRateCategory();
  v30 = v29;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [HDHRDailyHeartRateManager _queue_deleteHeartRateOfType:v8 forCacheIndex:v28 replacementUUID:v30];
    }

    goto LABEL_7;
  }

  v31 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);

  if (v31)
  {
    v30 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [HDHRDailyHeartRateManager _queue_deleteHeartRateOfType:v8 forCacheIndex:&v35 replacementUUID:v30];
    }

LABEL_7:
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_queue_cleanupValuesForTodayCacheIndex:(int64_t)a3 yesterdayCacheIndex:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  v17 = v16 = self;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(NSMutableDictionary *)self->_restingHeartRateByActivityCacheIndex allKeys];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
        if ([v11 isEqualToNumber:v12])
        {
        }

        else
        {
          v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
          v14 = [v11 isEqualToNumber:v13];

          if ((v14 & 1) == 0)
          {
            [v17 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)v16->_restingHeartRateByActivityCacheIndex removeObjectsForKeys:v17];
  [(NSMutableDictionary *)v16->_walkingAverageHeartRateByActivityCacheIndex removeObjectsForKeys:v17];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_replaceHeartRate:ofType:forCacheIndex:dateInterval:heartRateByCacheIndex:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  v4 = v0;
  _os_log_error_impl(&dword_229486000, v1, OS_LOG_TYPE_ERROR, "[Daily HR] error saving new %{public}@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteHeartRateOfType:(void *)a1 forCacheIndex:(uint64_t)a2 replacementUUID:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_0_11();
  v8 = a2;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[Daily HR] error deleting %@ heart rate sample(s): %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteHeartRateOfType:(void *)a1 forCacheIndex:(void *)a2 replacementUUID:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a2];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_229486000, a3, OS_LOG_TYPE_DEBUG, "[Daily HR] deleted %@ previous %@ heart rate sample(s)", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end