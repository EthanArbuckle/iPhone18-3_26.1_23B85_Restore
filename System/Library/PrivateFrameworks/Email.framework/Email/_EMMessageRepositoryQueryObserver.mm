@interface _EMMessageRepositoryQueryObserver
- (_EMMessageRepositoryQueryObserver)initWithRepository:(id)a3 query:(id)a4 observer:(id)a5;
- (id)trampoliningObserver;
- (void)_performQueryWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4;
- (void)dealloc;
- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedChangesForObjectIDs:(id)a4;
- (void)observer:(id)a3 matchedDeletedObjectIDs:(id)a4;
- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedOldestItemsUpdatedForMailboxes:(id)a4;
- (void)observer:(id)a3 replacedExistingObjectID:(id)a4 withNewObjectID:(id)a5;
- (void)observer:(id)a3 wasUpdated:(id)a4;
- (void)observerDidFailInitialLoad:(id)a3 extraInfo:(id)a4;
- (void)observerDidFinishInitialLoad:(id)a3 extraInfo:(id)a4;
- (void)observerDidFinishRemoteSearch:(id)a3;
- (void)observerWillRestart:(id)a3;
- (void)recoverWithRemoteConnection:(id)a3;
- (void)refreshQueryWithRemoteConnection:(id)a3;
@end

@implementation _EMMessageRepositoryQueryObserver

- (id)trampoliningObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (WeakRetained)
  {
    v4 = [(EMRepository *)self->_repository trampoliningObserverForObserver:WeakRetained];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_token cancel];
  v3.receiver = self;
  v3.super_class = _EMMessageRepositoryQueryObserver;
  [(_EMMessageRepositoryQueryObserver *)&v3 dealloc];
}

- (_EMMessageRepositoryQueryObserver)initWithRepository:(id)a3 query:(id)a4 observer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = _EMMessageRepositoryQueryObserver;
  v12 = [(_EMMessageRepositoryQueryObserver *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_repository, a3);
    objc_storeStrong(&v13->_query, a4);
    v14 = [v11 objectID];
    observationIdentifier = v13->_observationIdentifier;
    v13->_observationIdentifier = v14;

    objc_storeWeak(&v13->_observer, v11);
    v16 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    token = v13->_token;
    v13->_token = v16;

    v18 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"_EMMessageRepositoryQueryObserver.recoveryScheduler"];
    recoveryScheduler = v13->_recoveryScheduler;
    v13->_recoveryScheduler = v18;

    v13->_recoveryLock._os_unfair_lock_opaque = 0;
    v13->_recoveryAttempt = 0;
  }

  return v13;
}

- (void)refreshQueryWithRemoteConnection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EMMessageRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    observationIdentifier = self->_observationIdentifier;
    query = self->_query;
    v8 = [(EMQuery *)query debugDescription];
    v11 = 134218754;
    v12 = self;
    v13 = 2114;
    v14 = observationIdentifier;
    v15 = 2048;
    v16 = query;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Observer:%{public}@ refreshing query<%p>: %@", &v11, 0x2Au);
  }

  v9 = [(_EMMessageRepositoryQueryObserver *)self remoteCancelable];
  [v9 cancel];

  [(_EMMessageRepositoryQueryObserver *)self _performQueryWithRemoteConnection:v4 forRecovery:1];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)recoverWithRemoteConnection:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_recoveryLock);
  recoveryAttempt = self->_recoveryAttempt;
  if (self->_recoveryIsScheduled)
  {
    os_unfair_lock_unlock(&self->_recoveryLock);
    v6 = +[EMMessageRepository log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      observationIdentifier = self->_observationIdentifier;
      query = self->_query;
      v9 = [(EMQuery *)query debugDescription];
      *buf = 134219010;
      v26 = self;
      v27 = 2114;
      v28 = observationIdentifier;
      v29 = 2048;
      v30 = recoveryAttempt;
      v31 = 2048;
      v32 = *&query;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Observer:%{public}@ recovery attempt %ld already scheduled for query<%p>: %@", buf, 0x34u);
    }
  }

  else
  {
    self->_recoveryAttempt = recoveryAttempt + 1;
    if (recoveryAttempt)
    {
      self->_recoveryIsScheduled = 1;
      os_unfair_lock_unlock(&self->_recoveryLock);
      if (recoveryAttempt <= 1)
      {
        v10 = 2.0;
      }

      else
      {
        v10 = 4.0;
      }

      v11 = +[EMMessageRepository log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_observationIdentifier;
        v13 = self->_query;
        v14 = [(EMQuery *)v13 debugDescription];
        *buf = 134219266;
        v26 = self;
        v27 = 2114;
        v28 = v12;
        v29 = 2048;
        v30 = recoveryAttempt;
        v31 = 2048;
        v32 = v10;
        v33 = 2048;
        v34 = v13;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Observer:%{public}@ scheduling recovery %ld with %fs delay for query<%p>: %@", buf, 0x3Eu);
      }

      objc_initWeak(buf, self);
      recoveryScheduler = self->_recoveryScheduler;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __65___EMMessageRepositoryQueryObserver_recoverWithRemoteConnection___block_invoke;
      v22[3] = &unk_1E826EE90;
      objc_copyWeak(v24, buf);
      v24[1] = recoveryAttempt;
      v23 = v4;
      v16 = [(EFScheduler *)recoveryScheduler afterDelay:v22 performBlock:v10];

      objc_destroyWeak(v24);
      objc_destroyWeak(buf);
    }

    else
    {
      os_unfair_lock_unlock(&self->_recoveryLock);
      v17 = +[EMMessageRepository log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_observationIdentifier;
        v19 = self->_query;
        v20 = [(EMQuery *)v19 debugDescription];
        *buf = 134219010;
        v26 = self;
        v27 = 2114;
        v28 = v18;
        v29 = 2048;
        v30 = 0;
        v31 = 2048;
        v32 = *&v19;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "<%p> Observer:%{public}@ attempting recovery %ld for query<%p>: %@", buf, 0x34u);
      }

      [(_EMMessageRepositoryQueryObserver *)self _performQueryWithRemoteConnection:v4 forRecovery:1];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_performQueryWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    if (v4)
    {
      v7 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
      [v7 queryDidStartRecovery];

      [(EFManualCancelationToken *)self->_token removeAllCancelationBlocks];
    }

    v8 = [v6 remoteObjectProxy];
    query = self->_query;
    observationIdentifier = self->_observationIdentifier;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83___EMMessageRepositoryQueryObserver__performQueryWithRemoteConnection_forRecovery___block_invoke;
    v11[3] = &unk_1E826CD58;
    v11[4] = self;
    [v8 performQuery:query withObserver:self observationIdentifier:observationIdentifier completionHandler:v11];
  }
}

- (void)observer:(id)a3 wasUpdated:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v8 = +[EMMessageRepository log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218498;
      v11 = self;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Acknowledging update for %{public}@: %{public}@", &v10, 0x20u);
    }

    [v7 invoke];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v14 = [(EMMessageRepository *)self->_repository _addPrecachedItemsFromExtraInfoIfNeeded:v13];
    v15 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v15 queryMatchedAddedObjectIDs:v11 before:v12 extraInfo:v14];

    repository = self->_repository;
    observationIdentifier = self->_observationIdentifier;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85___EMMessageRepositoryQueryObserver_observer_matchedAddedObjectIDs_before_extraInfo___block_invoke;
    v18[3] = &unk_1E826EEB8;
    v18[4] = self;
    v19 = v10;
    [(EMMessageRepository *)repository _detectChangesForMatchedAddedObjectIDs:v11 observerationIdentifier:observationIdentifier matchedChangesHandler:v18];
  }
}

- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v14 = [(EMMessageRepository *)self->_repository _addPrecachedItemsFromExtraInfoIfNeeded:v13];
    v15 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v15 queryMatchedAddedObjectIDs:v11 after:v12 extraInfo:v14];

    repository = self->_repository;
    observationIdentifier = self->_observationIdentifier;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84___EMMessageRepositoryQueryObserver_observer_matchedAddedObjectIDs_after_extraInfo___block_invoke;
    v18[3] = &unk_1E826EEB8;
    v18[4] = self;
    v19 = v10;
    [(EMMessageRepository *)repository _detectChangesForMatchedAddedObjectIDs:v11 observerationIdentifier:observationIdentifier matchedChangesHandler:v18];
  }
}

- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v11 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v11 queryMatchedMovedObjectIDs:v12 before:v9 extraInfo:v10];
  }
}

- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v11 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v11 queryMatchedMovedObjectIDs:v12 after:v9 extraInfo:v10];
  }
}

- (void)observer:(id)a3 matchedChangesForObjectIDs:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    [(EMMessageRepository *)self->_repository _applyChangesToCachedObjects:v5];
    v10 = @"changesByObjectID";
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if (v7)
    {
      v8 = [v5 allKeys];
      [v7 queryMatchedChangedObjectIDs:v8 extraInfo:v6];
    }

    else
    {
      v8 = +[EMMessageRepository log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_EMMessageRepositoryQueryObserver observer:v8 matchedChangesForObjectIDs:?];
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)a3 matchedDeletedObjectIDs:(id)a4
{
  v6 = a4;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v5 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v5 queryMatchedDeletedObjectIDs:v6];
  }
}

- (void)observerDidFinishInitialLoad:(id)a3 extraInfo:(id)a4
{
  v6 = a4;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_recoveryLock);
    self->_recoveryAttempt = 0;
    os_unfair_lock_unlock(&self->_recoveryLock);
    v5 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if ([v5 conformsToProtocol:&unk_1F462C2E0])
    {
      [v5 queryDidFinishInitialLoadWithExtraInfo:v6];
    }

    else
    {
      [v5 queryDidFinishInitialLoad];
    }
  }
}

- (void)observerDidFailInitialLoad:(id)a3 extraInfo:(id)a4
{
  v6 = a4;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v5 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if ([v5 conformsToProtocol:&unk_1F462C2E0])
    {
      [v5 queryDidFailInitialLoadWithExtraInfo:v6];
    }
  }
}

- (void)observerDidFinishRemoteSearch:(id)a3
{
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v4 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v4 queryDidFinishRemoteSearch];
  }
}

- (void)observer:(id)a3 replacedExistingObjectID:(id)a4 withNewObjectID:(id)a5
{
  v9 = a4;
  v7 = a5;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v8 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v8 queryReplacedObjectID:v9 withNewObjectID:v7];
  }
}

- (void)observerWillRestart:(id)a3
{
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v4 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [v4 queryDidStartRecovery];
  }
}

- (void)observer:(id)a3 matchedOldestItemsUpdatedForMailboxes:(id)a4
{
  v6 = a4;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v5 = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if ([v5 conformsToProtocol:&unk_1F462C2E0])
    {
      [v5 queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:v6];
    }
  }
}

- (void)observer:(uint64_t)a1 matchedChangesForObjectIDs:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "<%{public}@> dropping notification due to nil trampoliningObserver", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end