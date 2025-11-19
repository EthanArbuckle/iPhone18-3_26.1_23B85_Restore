@interface CPLEnginePushRepository
- (BOOL)acknowledgeContributorsUpdates:(id)a3 error:(id *)a4;
- (BOOL)checkInBatchStorage:(id)a3 error:(id *)a4;
- (BOOL)deleteAllChangesWithError:(id *)a3;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)discardChangeWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4;
- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)a3;
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3;
- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4;
- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (BOOL)hasChangesWithScopeFilter:(id)a3;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3;
- (BOOL)reinjectChange:(id)a3 dequeueOrder:(int64_t)a4 overwrittenRecord:(BOOL *)a5 error:(id *)a6;
- (BOOL)reinjectChange:(id)a3 priority:(unint64_t)a4 error:(id *)a5;
- (BOOL)reinjectExtractedBatch:(id)a3 overwrittenRecordIdentifiers:(id *)a4 error:(id *)a5;
- (BOOL)resetPriorityForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 error:(id *)a6;
- (BOOL)storeChange:(id)a3 pushContext:(id)a4 error:(id *)a5;
- (BOOL)storeExtractedBatch:(id)a3 error:(id *)a4;
- (CPLEnginePushRepository)initWithEngineStore:(id)a3 name:(id)a4;
- (id)_outgoingResources;
- (id)_timingStatisticStatuses;
- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4;
- (id)allChangesWithScopeIdentifier:(id)a3;
- (id)changeWithScopedIdentifier:(id)a3;
- (id)checkOutBatchStorageWithPriority:(unint64_t)a3 error:(id *)a4;
- (id)contributorsUpdatesForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4;
- (id)countPerFlagsForScopeWithIdentifier:(id)a3;
- (id)scopedIdentifiersForChangesWithFlag:(int64_t)a3 forScopeWithIdentifier:(id)a4;
- (id)status;
- (id)storedExtractedBatch;
- (unint64_t)countOfChangesInScopeWithIdentifier:(id)a3;
- (unint64_t)maximumResourceSizePerBatchForRemainingTime:(double)a3;
- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)a3;
- (void)addPushObserver:(id)a3 withIdentifier:(id)a4;
- (void)notePushRepositoryStoredSomeChanges;
- (void)setExtractionStrategy:(id)a3;
- (void)updateApproximativeUploadRate:(double)a3;
- (void)updateTimingStatisticForKey:(id)a3 duration:(double)a4 recordCount:(unint64_t)a5 error:(BOOL)a6 cancelled:(BOOL)a7;
@end

@implementation CPLEnginePushRepository

- (id)status
{
  v19.receiver = self;
  v19.super_class = CPLEnginePushRepository;
  v3 = [(CPLEngineStorage *)&v19 status];
  v4 = [v3 mutableCopy];

  extractionStrategy = self->_extractionStrategy;
  if (extractionStrategy)
  {
    v6 = [(CPLBatchExtractionStrategy *)extractionStrategy name];
    v7 = [(CPLBatchExtractionStrategy *)self->_extractionStrategy currentStepDescription];
    [v4 appendFormat:@"\nCurrent strategy: %@ (step: %@)", v6, v7];
  }

  else if (self->_lastStrategyName)
  {
    [v4 appendFormat:@"\nLast strategy: %@", self->_lastStrategyName];
  }

  uploadRateQueue = self->_uploadRateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CPLEnginePushRepository_status__block_invoke;
  block[3] = &unk_1E861B290;
  block[4] = self;
  v9 = v4;
  v18 = v9;
  dispatch_sync(uploadRateQueue, block);
  v10 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[CPLEnginePushRepository maximumResourceSizePerBatchForRemainingTime:](self countStyle:{"maximumResourceSizePerBatchForRemainingTime:", 3600.0), 1}];
  [v9 appendFormat:@"\nBatch max size: %@", v10];

  v11 = [(CPLEnginePushRepository *)self _timingStatisticStatuses];
  if ([v11 count])
  {
    v12 = [v11 componentsJoinedByString:@"\n\t"];
    [v9 appendFormat:@"\nTiming stats:\n\t%@", v12];
  }

  if ([(NSMutableDictionary *)self->_pushObservers count])
  {
    v13 = [(NSMutableDictionary *)self->_pushObservers allKeys];
    v14 = [v13 componentsJoinedByString:{@", "}];
    [v9 appendFormat:@"\nObservers: %@", v14];
  }

  v15 = v9;

  return v9;
}

void __33__CPLEnginePushRepository_status__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80))
  {
    v3 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(v1 + 96) countStyle:1];
    v4 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 80) now:0];
    [v3 appendFormat:@"\nLast approx. upload rate: %@/s - %@", v5, v4];
  }
}

- (void)addPushObserver:(id)a3 withIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_pushObservers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pushObservers = self->_pushObservers;
    self->_pushObservers = v7;
  }

  v9 = [v11 copy];
  v10 = MEMORY[0x1E128EBA0]();
  [(NSMutableDictionary *)self->_pushObservers setObject:v10 forKeyedSubscript:v6];
}

- (BOOL)acknowledgeContributorsUpdates:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 acknowledgeContributorsUpdates:v6 error:a4];

  return a4;
}

- (id)contributorsUpdatesForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 contributorsUpdatesForScopeWithIdentifier:v6 maxCount:a4];

  return v8;
}

- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v8 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v8 deleteSharingFlagsWithMaxCount:a3 deletedCount:a4 error:a5];

  return a5;
}

- (id)scopedIdentifiersForChangesWithFlag:(int64_t)a3 forScopeWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 scopedIdentifiersForChangesWithFlag:a3 forScopeWithIdentifier:v6];

  return v8;
}

- (id)countPerFlagsForScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 countPerFlagsForScopeWithIdentifier:v4];

  return v6;
}

- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a3) = [v7 getRelatedScopedIdentifier:a3 forRecordWithScopedIdentifier:v6];

  return a3;
}

- (id)_timingStatisticStatuses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__883;
  v10 = __Block_byref_object_dispose__884;
  v11 = 0;
  timingStatisticQueue = self->_timingStatisticQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CPLEnginePushRepository__timingStatisticStatuses__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(timingStatisticQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __51__CPLEnginePushRepository__timingStatisticStatuses__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 88))
  {
    v1 = result;
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(result + 32) + 88), "count")}];
    v3 = *(*(v1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(v1 + 32) + 88);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__CPLEnginePushRepository__timingStatisticStatuses__block_invoke_2;
    v6[3] = &unk_1E861BAB0;
    v6[4] = *(v1 + 40);
    return [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

void __51__CPLEnginePushRepository__timingStatisticStatuses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"%@: %@", v7, v6];

  [v4 addObject:v8];
}

- (void)updateTimingStatisticForKey:(id)a3 duration:(double)a4 recordCount:(unint64_t)a5 error:(BOOL)a6 cancelled:(BOOL)a7
{
  v12 = a3;
  timingStatisticQueue = self->_timingStatisticQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__CPLEnginePushRepository_updateTimingStatisticForKey_duration_recordCount_error_cancelled___block_invoke;
  block[3] = &unk_1E861BA88;
  block[4] = self;
  v16 = v12;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v14 = v12;
  dispatch_sync(timingStatisticQueue, block);
}

void __92__CPLEnginePushRepository_updateTimingStatisticForKey_duration_recordCount_error_cancelled___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v3 = objc_alloc_init(_CPLTimingStatistic);
    [*(*(a1 + 32) + 88) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    v2 = v3;
  }

  v4 = v2;
  [v2 updateWithDuration:*(a1 + 56) recordCount:*(a1 + 64) error:*(a1 + 65) cancelled:*(a1 + 48)];
}

- (unint64_t)maximumResourceSizePerBatchForRemainingTime:(double)a3
{
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 engineLibrary];
  v7 = [v6 systemMonitor];

  if (![v7 isOnCellularOrUnknown])
  {
    if (a3 < 10.0)
    {
      v9 = 10485760;
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    uploadRateQueue = self->_uploadRateQueue;
    v16 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__CPLEnginePushRepository_maximumResourceSizePerBatchForRemainingTime___block_invoke;
    block[3] = &unk_1E861BA60;
    block[4] = self;
    block[5] = &v13;
    block[6] = fmin(a3, 120.0);
    dispatch_sync(uploadRateQueue, block);
    v9 = v14[3];
    _Block_object_dispose(&v13, 8);
    goto LABEL_8;
  }

  v8 = [v7 isDataBudgetOverriden];
  v9 = 10485760;
  if (a3 >= 10.0 && (v8 & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

void *__71__CPLEnginePushRepository_maximumResourceSizePerBatchForRemainingTime___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result && (result = [result timeIntervalSinceNow], v3 >= -600.0))
  {
    v4 = (*(*(a1 + 32) + 96) * *(a1 + 48));
    if (v4 >= 0x6400000)
    {
      v4 = 104857600;
    }

    if (v4 <= 0xA00000)
    {
      v4 = 10485760;
    }
  }

  else
  {
    v4 = 10485760;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (void)updateApproximativeUploadRate:(double)a3
{
  if (a3 > 0.0)
  {
    v15[6] = v6;
    v15[7] = v5;
    v15[14] = v3;
    v15[15] = v4;
    uploadRateQueue = self->_uploadRateQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__CPLEnginePushRepository_updateApproximativeUploadRate___block_invoke;
    v15[3] = &unk_1E861B100;
    v15[4] = self;
    *&v15[5] = a3;
    dispatch_async(uploadRateQueue, v15);
    v10 = [(CPLEngineStorage *)self engineStore];
    v11 = [v10 engineLibrary];
    v12 = [v11 scheduler];
    v13 = [v12 predictor];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [v13 updatePredictedValue:v14 forType:@"uploadSpeed"];
  }
}

double __57__CPLEnginePushRepository_updateApproximativeUploadRate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  result = *(a1 + 40);
  *(*(a1 + 32) + 96) = result;
  return result;
}

- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasAnyChangeWithRelatedScopedIdentifier:v4];

  return v6;
}

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 hasChangesWithRelatedScopedIdentifier:v6 class:a4];

  return a4;
}

- (id)allChangesWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 allChangesWithScopeIdentifier:v4];

  return v6;
}

- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 allChangesWithClass:a3 relatedScopedIdentifier:v6];

  return v8;
}

- (id)changeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 changeWithScopedIdentifier:v4];

  return v6;
}

- (void)setExtractionStrategy:(id)a3
{
  v5 = a3;
  extractionStrategy = self->_extractionStrategy;
  if (extractionStrategy != v5)
  {
    if (v5)
    {
      lastStrategyName = self->_lastStrategyName;
      self->_lastStrategyName = 0;
    }

    else
    {
      lastStrategyName = [(CPLBatchExtractionStrategy *)extractionStrategy name];
      v8 = [lastStrategyName copy];
      v9 = self->_lastStrategyName;
      self->_lastStrategyName = v8;
    }

    objc_storeStrong(&self->_extractionStrategy, a3);
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)checkInBatchStorage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 checkInBatchStorage:v6 error:a4];

  return a4;
}

- (id)checkOutBatchStorageWithPriority:(unint64_t)a3 error:(id *)a4
{
  v6 = [(CPLEngineStorage *)self platformObject];
  v7 = [v6 checkOutBatchStorageWithPriority:a3 error:a4];

  return v7;
}

- (BOOL)resetPriorityForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v11 resetPriorityForScopeWithIdentifier:v10 maxCount:a4 hasMore:a5 error:a6];

  return a6;
}

- (BOOL)reinjectChange:(id)a3 priority:(unint64_t)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [v9 _pushContext];
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ should have a push context here", buf, 0xCu);
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [v19 handleFailureInMethod:a2 object:self file:v20 lineNumber:254 description:{@"%@ should have a push context here", v9}];

    abort();
  }

  v11 = v10;
  if ([v10 priority] > a4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v26 = v9;
        v27 = 2048;
        v28 = a4;
        v29 = 2048;
        v30 = [v11 priority];
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Trying to re-inject %@ with priority %lu while its priority is already %lu", buf, 0x20u);
      }
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [v22 handleFailureInMethod:a2 object:self file:v23 lineNumber:255 description:{@"Trying to re-inject %@ with priority %lu while its priority is already %lu", v9, a4, objc_msgSend(v11, "priority")}];

    abort();
  }

  v12 = [v11 copyContextWithPriority:a4];
  [v9 _setPushContext:v12];
  v13 = [v9 dequeueOrder];
  v24 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStorageOSLogDomain_909();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v26 = v9;
      v27 = 2048;
      v28 = a4;
      v29 = 2048;
      v30 = [v11 priority];
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Re-injecting %@ with priority %lu (previously was %lu)", buf, 0x20u);
    }
  }

  v15 = [(CPLEnginePushRepository *)self reinjectChange:v9 dequeueOrder:v13 overwrittenRecord:&v24 error:a5];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)storedExtractedBatch
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 storedExtractedBatch];

  return v3;
}

- (BOOL)reinjectExtractedBatch:(id)a3 overwrittenRecordIdentifiers:(id *)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(CPLEngineStorage *)self engineStore];
  v11 = [v10 resourceStorage];
  v12 = [v11 fileStorage];
  [v12 setTrackAllStoresAndDeletesUntilEndOfTransaction:1];

  v13 = [v9 clientCacheIdentifier];
  if (!v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v38 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v38, OS_LOG_TYPE_ERROR, "Can't re-inject an extracted batch without a client cache identifier", buf, 2u);
      }
    }

    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [v39 handleFailureInMethod:a2 object:self file:v40 lineNumber:214 description:@"Can't re-inject an extracted batch without a client cache identifier"];

    abort();
  }

  v14 = v13;
  v15 = [(CPLEngineStorage *)self engineStore];
  v16 = [v15 clientCacheIdentifier];

  if (v16 && ([v14 isEqual:v16] & 1) != 0)
  {
    v41 = v14;
    v42 = a4;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = v9;
    v18 = [v9 batch];
    v19 = [v18 records];

    v20 = [MEMORY[0x1E695DF00] date];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = [v19 count];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = v19;
    v25 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = v23 + v22;
      v28 = *v45;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v44 + 1) + 8 * i);
          buf[0] = 0;
          if (![(CPLEnginePushRepository *)self reinjectChange:v30 dequeueOrder:v27 overwrittenRecord:buf error:a5])
          {

            v35 = v17;
            v33 = 0;
            *v42 = v17;
            goto LABEL_21;
          }

          if (buf[0] == 1)
          {
            v31 = [v30 scopedIdentifier];
            [v17 addObject:v31];
          }

          --v27;
        }

        v26 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v32 = v17;
    *v42 = v17;
    [(CPLEnginePushRepository *)self notePushRepositoryStoredSomeChanges];
    v33 = 1;
LABEL_21:

    v9 = v43;
    v14 = v41;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v34 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_ERROR, "Ignoring extracted batch for re-inject because a reset sync has happened after the extraction", buf, 2u);
      }
    }

    *a4 = MEMORY[0x1E695E0F0];
    v33 = 1;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)storeExtractedBatch:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    v8 = [(CPLEngineStorage *)self engineStore];
    v9 = [v8 clientCacheIdentifier];

    v10 = [v7 clientCacheIdentifier];

    if (v10)
    {
      v11 = v9;
      v12 = [v7 clientCacheIdentifier];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [v11 isEqual:v12];

        if ((v14 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {

        if (v11 | v13)
        {
LABEL_6:
          if ((_CPLSilentLogging & 1) == 0)
          {
            v15 = __CPLStorageOSLogDomain_909();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [v7 clientCacheIdentifier];
              *buf = 138412546;
              v28 = v11;
              v29 = 2112;
              v30 = v16;
              _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Trying to store extracted batch with the wrong client cache identifier (%@ vs. %@)", buf, 0x16u);
            }
          }

          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
          v19 = [v7 clientCacheIdentifier];
          [v17 handleFailureInMethod:a2 object:self file:v18 lineNumber:194 description:{@"Trying to store extracted batch with the wrong client cache identifier (%@ vs. %@)", v11, v19}];

          abort();
        }
      }
    }

    else
    {
      if (!v9)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v24 = __CPLStorageOSLogDomain_909();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Trying to store an extracted batch but we don't have a client cache identifier", buf, 2u);
          }
        }

        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
        [v25 handleFailureInMethod:a2 object:self file:v26 lineNumber:198 description:@"Trying to store an extracted batch but we don't have a client cache identifier"];

        abort();
      }

      [v7 setClientCacheIdentifier:v9];
    }
  }

  v20 = [(CPLEngineStorage *)self platformObject];
  v21 = [v20 storeExtractedBatch:v7 error:a4];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)deleteAllChangesWithError:(id *)a3
{
  v4 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a3) = [v4 deleteAllChangesWithError:a3];

  return a3;
}

- (BOOL)discardChangeWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v12 = 0;
  v8 = [v7 deleteChangeWithScopedIdentifier:v6 discardedUploadIdentifier:&v12 error:a4];

  v9 = v12;
  if (v8 && v9)
  {
    v10 = [(CPLEnginePushRepository *)self _outgoingResources];
    LOBYTE(v8) = [v10 deleteResourcesToUploadWithUploadIdentifier:v9 error:a4];
  }

  return v8;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasSomeChangeWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)reinjectChange:(id)a3 dequeueOrder:(int64_t)a4 overwrittenRecord:(BOOL *)a5 error:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [v11 _pushContext];
  if (!v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "%@ should come with a push context", buf, 0xCu);
      }
    }

    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [v25 handleFailureInMethod:a2 object:self file:v26 lineNumber:149 description:{@"%@ should come with a push context", v11}];

    abort();
  }

  v13 = v12;
  if ([v11 supportsResources])
  {
    if ([v11 hasChangeType:8])
    {
      v14 = [v13 uploadIdentifier];

      if (!v14)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStorageOSLogDomain_909();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v11;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Trying to reinject %@ without an upload identifier", buf, 0xCu);
          }
        }

        if (a6)
        {
          [CPLErrors cplErrorWithCode:100 description:@"Trying to reinject a resourceful change without an upload identifier"];
          v17 = 0;
          *a6 = v20 = 0;
          goto LABEL_19;
        }

        v17 = 0;
        goto LABEL_18;
      }
    }
  }

  v15 = [(CPLEngineStorage *)self platformObject];
  v27 = 0;
  v16 = [v15 reinjectChange:v11 dequeueOrder:a4 discardedUploadIdentifier:&v27 overwrittenRecord:a5 error:a6];
  v17 = v27;

  if (v16 && v17)
  {
    v18 = [(CPLEnginePushRepository *)self _outgoingResources];
    v19 = [v18 deleteResourcesToUploadWithUploadIdentifier:v17 error:a6];

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

LABEL_10:
  [(CPLBatchExtractionStrategy *)self->_extractionStrategy resetConditionallyFromNewIncomingChange:v11];
  [(CPLEnginePushRepository *)self notePushRepositoryStoredSomeChanges];
  v20 = 1;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)storeChange:(id)a3 pushContext:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "%@ should be pushed with push context", buf, 0xCu);
      }
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [v24 handleFailureInMethod:a2 object:self file:v25 lineNumber:123 description:{@"%@ should be pushed with push context", v9}];

    abort();
  }

  v11 = v10;
  if ([v9 supportsResources])
  {
    if ([v9 hasChangeType:8])
    {
      v12 = [v11 uploadIdentifier];

      if (!v12)
      {
        v13 = [v11 pushContextAddingUploadIdentifier];

        v11 = v13;
      }
    }
  }

  v14 = [(CPLEngineStorage *)self platformObject];
  v29 = 0;
  v15 = [v14 storeChange:v9 pushContext:v11 discardedUploadIdentifier:&v29 error:a5];
  v16 = v29;

  if (!v15 || !v16)
  {
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_11:
    [(CPLBatchExtractionStrategy *)self->_extractionStrategy resetConditionallyFromNewIncomingChange:v9];
    pushObservers = self->_pushObservers;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__CPLEnginePushRepository_storeChange_pushContext_error___block_invoke;
    v26[3] = &unk_1E861BA38;
    v27 = v9;
    v28 = v11;
    [(NSMutableDictionary *)pushObservers enumerateKeysAndObjectsUsingBlock:v26];
    [(CPLEnginePushRepository *)self notePushRepositoryStoredSomeChanges];

    v19 = 1;
    goto LABEL_12;
  }

  v17 = [(CPLEnginePushRepository *)self _outgoingResources];
  v18 = [v17 deleteResourcesToUploadWithUploadIdentifier:v16 error:a5];

  if (v18)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)hasChangesWithScopeFilter:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasChangesWithScopeFilter:v4];

  return v6;
}

- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a3) = [v7 hasChangesWithPriorityGreaterThanPriority:a3 inScopeWithIdentifier:v6];

  return a3;
}

- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a3) = [v7 hasChangesWithPriorityLowerThanPriority:a3 inScopeWithIdentifier:v6];

  return a3;
}

- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 minimumPriorityForChangesInScopeWithIdentifier:v4];

  return v6;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasChangesInScopeWithIdentifier:v4];

  return v6;
}

- (unint64_t)countOfChangesInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 countOfChangesInScopeWithIdentifier:v4];

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = [(CPLEngineStorage *)self platformObject];
  v26 = 0;
  LODWORD(a4) = [v11 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 discardedUploadIdentifiers:&v26 error:a6];
  v12 = v26;

  if (a4)
  {
    if ([v12 count])
    {
      v13 = [(CPLEnginePushRepository *)self _outgoingResources];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if (![v13 deleteResourcesToUploadWithUploadIdentifier:*(*(&v22 + 1) + 8 * i) error:{a6, v22}])
            {
              v19 = 0;
              goto LABEL_14;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v19 = 1;
LABEL_14:
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)notePushRepositoryStoredSomeChanges
{
  v2 = [(CPLEngineStorage *)self engineStore];
  [v2 notePushRepositoryStoredSomeChanges];
}

- (id)_outgoingResources
{
  v2 = [(CPLEngineStorage *)self engineStore];
  v3 = [v2 outgoingResources];

  return v3;
}

- (CPLEnginePushRepository)initWithEngineStore:(id)a3 name:(id)a4
{
  v14.receiver = self;
  v14.super_class = CPLEnginePushRepository;
  v4 = [(CPLEngineStorage *)&v14 initWithEngineStore:a3 name:a4];
  if (v4)
  {
    v5 = CPLCopyDefaultSerialQueueAttributes();
    v6 = dispatch_queue_create("com.apple.cpl.uploadrate", v5);
    uploadRateQueue = v4->_uploadRateQueue;
    v4->_uploadRateQueue = v6;

    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("com.apple.cpl.timingstatistic", v8);
    timingStatisticQueue = v4->_timingStatisticQueue;
    v4->_timingStatisticQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    timingStatistics = v4->_timingStatistics;
    v4->_timingStatistics = v11;
  }

  return v4;
}

@end