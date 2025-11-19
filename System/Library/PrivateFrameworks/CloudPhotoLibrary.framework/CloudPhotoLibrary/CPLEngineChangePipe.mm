@interface CPLEngineChangePipe
- (BOOL)appendChangeBatch:(id)a3 error:(id *)a4;
- (BOOL)compactChangeBatchesWithError:(id *)a3;
- (BOOL)deleteAllChangeBatchesWithError:(id *)a3;
- (BOOL)deleteAllChangesWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasQueuedBatches;
- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)a3;
- (BOOL)hasSomeChangeWithScopeFilter:(id)a3;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3;
- (BOOL)isEmpty;
- (BOOL)popChangeBatch:(id *)a3 error:(id *)a4;
- (BOOL)popNextBatchWithError:(id *)a3;
- (id)addDequeueObserverWithDequeueSignalBlock:(id)a3;
- (id)allChangeBatches;
- (id)nextBatch;
- (unint64_t)countOfQueuedBatches;
- (void)_notifyQueueRemovedChanges;
- (void)addDequeueObserver:(id)a3;
- (void)notifyClientDidAcknowledgeBatch:(id)a3;
- (void)notifyClientWillAcknowledgeBatch:(id)a3;
@end

@implementation CPLEngineChangePipe

- (void)_notifyQueueRemovedChanges
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_dequeueObservers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) changePipeDidRemoveChanges];
        (v8)[2](v8, self);

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientDidAcknowledgeBatch:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_dequeueObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) clientDidAcknowledgeBatchBlock];
        (v10)[2](v10, self, v4);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientWillAcknowledgeBatch:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_dequeueObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) clientWillAcknowledgeBatchBlock];
        (v10)[2](v10, self, v4);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)addDequeueObserverWithDequeueSignalBlock:(id)a3
{
  v4 = a3;
  v5 = [[CPLEngineDequeueObserver alloc] initWithDequeueSignalBlock:v4];

  [(CPLEngineChangePipe *)self addDequeueObserver:v5];

  return v5;
}

- (void)addDequeueObserver:(id)a3
{
  v4 = a3;
  dequeueObservers = self->_dequeueObservers;
  v8 = v4;
  if (!dequeueObservers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dequeueObservers;
    self->_dequeueObservers = v6;

    v4 = v8;
    dequeueObservers = self->_dequeueObservers;
  }

  [(NSMutableArray *)dequeueObservers addObject:v4];
}

- (id)allChangeBatches
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 allChangeBatches];

  return v3;
}

- (BOOL)compactChangeBatchesWithError:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "%@ compacting batches", &v10, 0xCu);
    }
  }

  v6 = [(CPLEngineStorage *)self platformObject];
  v7 = [v6 compactChangeBatchesWithError:a3];

  if (v7)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)deleteAllChangesWithScopeFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 deleteAllChangesWithScopeFilter:v6 error:a4];

  if (v8)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  return v8;
}

- (BOOL)deleteAllChangeBatchesWithError:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "%@ deleting all batches", &v10, 0xCu);
    }
  }

  v6 = [(CPLEngineStorage *)self platformObject];
  v7 = [v6 deleteAllChangeBatchesWithError:a3];

  if (v7)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)hasSomeChangeWithScopeFilter:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasSomeChangeWithScopeFilter:v4];

  return v6;
}

- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasSomeChangeInScopesWithIdentifiers:v4];

  return v6;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasSomeChangeWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)popNextBatchWithError:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 popNextBatchWithError:a3];

  if (v6 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%@ popped next batch", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)nextBatch
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(CPLEngineStorage *)self platformObject];
  v4 = [v3 nextBatch];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412546;
      v9 = self;
      v10 = 2048;
      v11 = [v4 count];
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "%@ getting %lu changes", &v8, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)popChangeBatch:(id *)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 popChangeBatch:a3 error:a4];

  if (v8 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*a3 count];
      v13 = 138412546;
      v14 = self;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "%@ popped %lu changes", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)appendChangeBatch:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2048;
      v15 = [v6 count];
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%@ appending %lu changes", &v12, 0x16u);
    }
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 appendChangeBatch:v6 error:a4];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)hasQueuedBatches
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasQueuedBatches];

  return v3;
}

- (BOOL)isEmpty
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasQueuedBatches];

  return v3 ^ 1;
}

- (unint64_t)countOfQueuedBatches
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 countOfQueuedBatches];

  return v3;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v11 = [(CPLEngineStorage *)self platformObject];
  v12 = [v11 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  if (v12)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  return v12;
}

@end