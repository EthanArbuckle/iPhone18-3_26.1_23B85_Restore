@interface CPLEnginePushRepository
- (BOOL)acknowledgeContributorsUpdates:(id)updates error:(id *)error;
- (BOOL)checkInBatchStorage:(id)storage error:(id *)error;
- (BOOL)deleteAllChangesWithError:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)count deletedCount:(unint64_t *)deletedCount error:(id *)error;
- (BOOL)discardChangeWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier;
- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)identifier;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier;
- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (BOOL)hasChangesWithScopeFilter:(id)filter;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier;
- (BOOL)reinjectChange:(id)change dequeueOrder:(int64_t)order overwrittenRecord:(BOOL *)record error:(id *)error;
- (BOOL)reinjectChange:(id)change priority:(unint64_t)priority error:(id *)error;
- (BOOL)reinjectExtractedBatch:(id)batch overwrittenRecordIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)resetPriorityForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more error:(id *)error;
- (BOOL)storeChange:(id)change pushContext:(id)context error:(id *)error;
- (BOOL)storeExtractedBatch:(id)batch error:(id *)error;
- (CPLEnginePushRepository)initWithEngineStore:(id)store name:(id)name;
- (id)_outgoingResources;
- (id)_timingStatisticStatuses;
- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier;
- (id)allChangesWithScopeIdentifier:(id)identifier;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)checkOutBatchStorageWithPriority:(unint64_t)priority error:(id *)error;
- (id)contributorsUpdatesForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count;
- (id)countPerFlagsForScopeWithIdentifier:(id)identifier;
- (id)scopedIdentifiersForChangesWithFlag:(int64_t)flag forScopeWithIdentifier:(id)identifier;
- (id)status;
- (id)storedExtractedBatch;
- (unint64_t)countOfChangesInScopeWithIdentifier:(id)identifier;
- (unint64_t)maximumResourceSizePerBatchForRemainingTime:(double)time;
- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)identifier;
- (void)addPushObserver:(id)observer withIdentifier:(id)identifier;
- (void)notePushRepositoryStoredSomeChanges;
- (void)setExtractionStrategy:(id)strategy;
- (void)updateApproximativeUploadRate:(double)rate;
- (void)updateTimingStatisticForKey:(id)key duration:(double)duration recordCount:(unint64_t)count error:(BOOL)error cancelled:(BOOL)cancelled;
@end

@implementation CPLEnginePushRepository

- (id)status
{
  v19.receiver = self;
  v19.super_class = CPLEnginePushRepository;
  status = [(CPLEngineStorage *)&v19 status];
  v4 = [status mutableCopy];

  extractionStrategy = self->_extractionStrategy;
  if (extractionStrategy)
  {
    name = [(CPLBatchExtractionStrategy *)extractionStrategy name];
    currentStepDescription = [(CPLBatchExtractionStrategy *)self->_extractionStrategy currentStepDescription];
    [v4 appendFormat:@"\nCurrent strategy: %@ (step: %@)", name, currentStepDescription];
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

  _timingStatisticStatuses = [(CPLEnginePushRepository *)self _timingStatisticStatuses];
  if ([_timingStatisticStatuses count])
  {
    v12 = [_timingStatisticStatuses componentsJoinedByString:@"\n\t"];
    [v9 appendFormat:@"\nTiming stats:\n\t%@", v12];
  }

  if ([(NSMutableDictionary *)self->_pushObservers count])
  {
    allKeys = [(NSMutableDictionary *)self->_pushObservers allKeys];
    v14 = [allKeys componentsJoinedByString:{@", "}];
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

- (void)addPushObserver:(id)observer withIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  if (!self->_pushObservers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pushObservers = self->_pushObservers;
    self->_pushObservers = v7;
  }

  v9 = [observerCopy copy];
  v10 = MEMORY[0x1E128EBA0]();
  [(NSMutableDictionary *)self->_pushObservers setObject:v10 forKeyedSubscript:identifierCopy];
}

- (BOOL)acknowledgeContributorsUpdates:(id)updates error:(id *)error
{
  updatesCopy = updates;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject acknowledgeContributorsUpdates:updatesCopy error:error];

  return error;
}

- (id)contributorsUpdatesForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject contributorsUpdatesForScopeWithIdentifier:identifierCopy maxCount:count];

  return v8;
}

- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)count deletedCount:(unint64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteSharingFlagsWithMaxCount:count deletedCount:deletedCount error:error];

  return error;
}

- (id)scopedIdentifiersForChangesWithFlag:(int64_t)flag forScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject scopedIdentifiersForChangesWithFlag:flag forScopeWithIdentifier:identifierCopy];

  return v8;
}

- (id)countPerFlagsForScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject countPerFlagsForScopeWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier
{
  scopedIdentifierCopy = scopedIdentifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(identifier) = [platformObject getRelatedScopedIdentifier:identifier forRecordWithScopedIdentifier:scopedIdentifierCopy];

  return identifier;
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

- (void)updateTimingStatisticForKey:(id)key duration:(double)duration recordCount:(unint64_t)count error:(BOOL)error cancelled:(BOOL)cancelled
{
  keyCopy = key;
  timingStatisticQueue = self->_timingStatisticQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__CPLEnginePushRepository_updateTimingStatisticForKey_duration_recordCount_error_cancelled___block_invoke;
  block[3] = &unk_1E861BA88;
  block[4] = self;
  v16 = keyCopy;
  durationCopy = duration;
  countCopy = count;
  errorCopy = error;
  cancelledCopy = cancelled;
  v14 = keyCopy;
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

- (unint64_t)maximumResourceSizePerBatchForRemainingTime:(double)time
{
  engineStore = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore engineLibrary];
  systemMonitor = [engineLibrary systemMonitor];

  if (![systemMonitor isOnCellularOrUnknown])
  {
    if (time < 10.0)
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
    block[6] = fmin(time, 120.0);
    dispatch_sync(uploadRateQueue, block);
    v9 = v14[3];
    _Block_object_dispose(&v13, 8);
    goto LABEL_8;
  }

  isDataBudgetOverriden = [systemMonitor isDataBudgetOverriden];
  v9 = 10485760;
  if (time >= 10.0 && (isDataBudgetOverriden & 1) != 0)
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

- (void)updateApproximativeUploadRate:(double)rate
{
  if (rate > 0.0)
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
    *&v15[5] = rate;
    dispatch_async(uploadRateQueue, v15);
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    scheduler = [engineLibrary scheduler];
    predictor = [scheduler predictor];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:rate];
    [predictor updatePredictedValue:v14 forType:@"uploadSpeed"];
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

- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasAnyChangeWithRelatedScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(class) = [platformObject hasChangesWithRelatedScopedIdentifier:identifierCopy class:class];

  return class;
}

- (id)allChangesWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject allChangesWithScopeIdentifier:identifierCopy];

  return v6;
}

- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject allChangesWithClass:class relatedScopedIdentifier:identifierCopy];

  return v8;
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject changeWithScopedIdentifier:identifierCopy];

  return v6;
}

- (void)setExtractionStrategy:(id)strategy
{
  strategyCopy = strategy;
  extractionStrategy = self->_extractionStrategy;
  if (extractionStrategy != strategyCopy)
  {
    if (strategyCopy)
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

    objc_storeStrong(&self->_extractionStrategy, strategy);
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)checkInBatchStorage:(id)storage error:(id *)error
{
  storageCopy = storage;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject checkInBatchStorage:storageCopy error:error];

  return error;
}

- (id)checkOutBatchStorageWithPriority:(unint64_t)priority error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject checkOutBatchStorageWithPriority:priority error:error];

  return v7;
}

- (BOOL)resetPriorityForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject resetPriorityForScopeWithIdentifier:identifierCopy maxCount:count hasMore:more error:error];

  return error;
}

- (BOOL)reinjectChange:(id)change priority:(unint64_t)priority error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _pushContext = [changeCopy _pushContext];
  if (!_pushContext)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ should have a push context here", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v20 lineNumber:254 description:{@"%@ should have a push context here", changeCopy}];

    abort();
  }

  v11 = _pushContext;
  if ([_pushContext priority] > priority)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v26 = changeCopy;
        v27 = 2048;
        priorityCopy2 = priority;
        v29 = 2048;
        priority = [v11 priority];
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Trying to re-inject %@ with priority %lu while its priority is already %lu", buf, 0x20u);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [currentHandler2 handleFailureInMethod:a2 object:self file:v23 lineNumber:255 description:{@"Trying to re-inject %@ with priority %lu while its priority is already %lu", changeCopy, priority, objc_msgSend(v11, "priority")}];

    abort();
  }

  v12 = [v11 copyContextWithPriority:priority];
  [changeCopy _setPushContext:v12];
  dequeueOrder = [changeCopy dequeueOrder];
  v24 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStorageOSLogDomain_909();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v26 = changeCopy;
      v27 = 2048;
      priorityCopy2 = priority;
      v29 = 2048;
      priority = [v11 priority];
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Re-injecting %@ with priority %lu (previously was %lu)", buf, 0x20u);
    }
  }

  v15 = [(CPLEnginePushRepository *)self reinjectChange:changeCopy dequeueOrder:dequeueOrder overwrittenRecord:&v24 error:error];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)storedExtractedBatch
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  storedExtractedBatch = [platformObject storedExtractedBatch];

  return storedExtractedBatch;
}

- (BOOL)reinjectExtractedBatch:(id)batch overwrittenRecordIdentifiers:(id *)identifiers error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  engineStore = [(CPLEngineStorage *)self engineStore];
  resourceStorage = [engineStore resourceStorage];
  fileStorage = [resourceStorage fileStorage];
  [fileStorage setTrackAllStoresAndDeletesUntilEndOfTransaction:1];

  clientCacheIdentifier = [batchCopy clientCacheIdentifier];
  if (!clientCacheIdentifier)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v40 lineNumber:214 description:@"Can't re-inject an extracted batch without a client cache identifier"];

    abort();
  }

  v14 = clientCacheIdentifier;
  engineStore2 = [(CPLEngineStorage *)self engineStore];
  clientCacheIdentifier2 = [engineStore2 clientCacheIdentifier];

  if (clientCacheIdentifier2 && ([v14 isEqual:clientCacheIdentifier2] & 1) != 0)
  {
    v41 = v14;
    identifiersCopy = identifiers;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = batchCopy;
    batch = [batchCopy batch];
    records = [batch records];

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = [records count];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = records;
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
          if (![(CPLEnginePushRepository *)self reinjectChange:v30 dequeueOrder:v27 overwrittenRecord:buf error:error])
          {

            v35 = v17;
            v33 = 0;
            *identifiersCopy = v17;
            goto LABEL_21;
          }

          if (buf[0] == 1)
          {
            scopedIdentifier = [v30 scopedIdentifier];
            [v17 addObject:scopedIdentifier];
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
    *identifiersCopy = v17;
    [(CPLEnginePushRepository *)self notePushRepositoryStoredSomeChanges];
    v33 = 1;
LABEL_21:

    batchCopy = v43;
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

    *identifiers = MEMORY[0x1E695E0F0];
    v33 = 1;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)storeExtractedBatch:(id)batch error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  if (batchCopy)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    clientCacheIdentifier = [engineStore clientCacheIdentifier];

    clientCacheIdentifier2 = [batchCopy clientCacheIdentifier];

    if (clientCacheIdentifier2)
    {
      v11 = clientCacheIdentifier;
      clientCacheIdentifier3 = [batchCopy clientCacheIdentifier];
      v13 = clientCacheIdentifier3;
      if (v11 && clientCacheIdentifier3)
      {
        v14 = [v11 isEqual:clientCacheIdentifier3];

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
              clientCacheIdentifier4 = [batchCopy clientCacheIdentifier];
              *buf = 138412546;
              v28 = v11;
              v29 = 2112;
              v30 = clientCacheIdentifier4;
              _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Trying to store extracted batch with the wrong client cache identifier (%@ vs. %@)", buf, 0x16u);
            }
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
          clientCacheIdentifier5 = [batchCopy clientCacheIdentifier];
          [currentHandler handleFailureInMethod:a2 object:self file:v18 lineNumber:194 description:{@"Trying to store extracted batch with the wrong client cache identifier (%@ vs. %@)", v11, clientCacheIdentifier5}];

          abort();
        }
      }
    }

    else
    {
      if (!clientCacheIdentifier)
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

        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
        [currentHandler2 handleFailureInMethod:a2 object:self file:v26 lineNumber:198 description:@"Trying to store an extracted batch but we don't have a client cache identifier"];

        abort();
      }

      [batchCopy setClientCacheIdentifier:clientCacheIdentifier];
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v21 = [platformObject storeExtractedBatch:batchCopy error:error];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)deleteAllChangesWithError:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteAllChangesWithError:error];

  return error;
}

- (BOOL)discardChangeWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = 0;
  v8 = [platformObject deleteChangeWithScopedIdentifier:identifierCopy discardedUploadIdentifier:&v12 error:error];

  v9 = v12;
  if (v8 && v9)
  {
    _outgoingResources = [(CPLEnginePushRepository *)self _outgoingResources];
    LOBYTE(v8) = [_outgoingResources deleteResourcesToUploadWithUploadIdentifier:v9 error:error];
  }

  return v8;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasSomeChangeWithScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)reinjectChange:(id)change dequeueOrder:(int64_t)order overwrittenRecord:(BOOL *)record error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _pushContext = [changeCopy _pushContext];
  if (!_pushContext)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "%@ should come with a push context", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v26 lineNumber:149 description:{@"%@ should come with a push context", changeCopy}];

    abort();
  }

  v13 = _pushContext;
  if ([changeCopy supportsResources])
  {
    if ([changeCopy hasChangeType:8])
    {
      uploadIdentifier = [v13 uploadIdentifier];

      if (!uploadIdentifier)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStorageOSLogDomain_909();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = changeCopy;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Trying to reinject %@ without an upload identifier", buf, 0xCu);
          }
        }

        if (error)
        {
          [CPLErrors cplErrorWithCode:100 description:@"Trying to reinject a resourceful change without an upload identifier"];
          v17 = 0;
          *error = v20 = 0;
          goto LABEL_19;
        }

        v17 = 0;
        goto LABEL_18;
      }
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v27 = 0;
  v16 = [platformObject reinjectChange:changeCopy dequeueOrder:order discardedUploadIdentifier:&v27 overwrittenRecord:record error:error];
  v17 = v27;

  if (v16 && v17)
  {
    _outgoingResources = [(CPLEnginePushRepository *)self _outgoingResources];
    v19 = [_outgoingResources deleteResourcesToUploadWithUploadIdentifier:v17 error:error];

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
  [(CPLBatchExtractionStrategy *)self->_extractionStrategy resetConditionallyFromNewIncomingChange:changeCopy];
  [(CPLEnginePushRepository *)self notePushRepositoryStoredSomeChanges];
  v20 = 1;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)storeChange:(id)change pushContext:(id)context error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  contextCopy = context;
  if (!contextCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLStorageOSLogDomain_909();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "%@ should be pushed with push context", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEnginePushRepository.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v25 lineNumber:123 description:{@"%@ should be pushed with push context", changeCopy}];

    abort();
  }

  v11 = contextCopy;
  if ([changeCopy supportsResources])
  {
    if ([changeCopy hasChangeType:8])
    {
      uploadIdentifier = [v11 uploadIdentifier];

      if (!uploadIdentifier)
      {
        pushContextAddingUploadIdentifier = [v11 pushContextAddingUploadIdentifier];

        v11 = pushContextAddingUploadIdentifier;
      }
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v29 = 0;
  v15 = [platformObject storeChange:changeCopy pushContext:v11 discardedUploadIdentifier:&v29 error:error];
  v16 = v29;

  if (!v15 || !v16)
  {
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_11:
    [(CPLBatchExtractionStrategy *)self->_extractionStrategy resetConditionallyFromNewIncomingChange:changeCopy];
    pushObservers = self->_pushObservers;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__CPLEnginePushRepository_storeChange_pushContext_error___block_invoke;
    v26[3] = &unk_1E861BA38;
    v27 = changeCopy;
    v28 = v11;
    [(NSMutableDictionary *)pushObservers enumerateKeysAndObjectsUsingBlock:v26];
    [(CPLEnginePushRepository *)self notePushRepositoryStoredSomeChanges];

    v19 = 1;
    goto LABEL_12;
  }

  _outgoingResources = [(CPLEnginePushRepository *)self _outgoingResources];
  v18 = [_outgoingResources deleteResourcesToUploadWithUploadIdentifier:v16 error:error];

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

- (BOOL)hasChangesWithScopeFilter:(id)filter
{
  filterCopy = filter;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasChangesWithScopeFilter:filterCopy];

  return v6;
}

- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(priority) = [platformObject hasChangesWithPriorityGreaterThanPriority:priority inScopeWithIdentifier:identifierCopy];

  return priority;
}

- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(priority) = [platformObject hasChangesWithPriorityLowerThanPriority:priority inScopeWithIdentifier:identifierCopy];

  return priority;
}

- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject minimumPriorityForChangesInScopeWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasChangesInScopeWithIdentifier:identifierCopy];

  return v6;
}

- (unint64_t)countOfChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject countOfChangesInScopeWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v26 = 0;
  LODWORD(count) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount discardedUploadIdentifiers:&v26 error:error];
  v12 = v26;

  if (count)
  {
    if ([v12 count])
    {
      _outgoingResources = [(CPLEnginePushRepository *)self _outgoingResources];
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

            if (![_outgoingResources deleteResourcesToUploadWithUploadIdentifier:*(*(&v22 + 1) + 8 * i) error:{error, v22}])
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
  engineStore = [(CPLEngineStorage *)self engineStore];
  [engineStore notePushRepositoryStoredSomeChanges];
}

- (id)_outgoingResources
{
  engineStore = [(CPLEngineStorage *)self engineStore];
  outgoingResources = [engineStore outgoingResources];

  return outgoingResources;
}

- (CPLEnginePushRepository)initWithEngineStore:(id)store name:(id)name
{
  v14.receiver = self;
  v14.super_class = CPLEnginePushRepository;
  v4 = [(CPLEngineStorage *)&v14 initWithEngineStore:store name:name];
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