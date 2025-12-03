@interface _EMMessageRepositoryQueryObserver
- (_EMMessageRepositoryQueryObserver)initWithRepository:(id)repository query:(id)query observer:(id)observer;
- (id)trampoliningObserver;
- (void)_performQueryWithRemoteConnection:(id)connection forRecovery:(BOOL)recovery;
- (void)dealloc;
- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)observer:(id)observer matchedChangesForObjectIDs:(id)ds;
- (void)observer:(id)observer matchedDeletedObjectIDs:(id)ds;
- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)observer:(id)observer matchedOldestItemsUpdatedForMailboxes:(id)mailboxes;
- (void)observer:(id)observer replacedExistingObjectID:(id)d withNewObjectID:(id)iD;
- (void)observer:(id)observer wasUpdated:(id)updated;
- (void)observerDidFailInitialLoad:(id)load extraInfo:(id)info;
- (void)observerDidFinishInitialLoad:(id)load extraInfo:(id)info;
- (void)observerDidFinishRemoteSearch:(id)search;
- (void)observerWillRestart:(id)restart;
- (void)recoverWithRemoteConnection:(id)connection;
- (void)refreshQueryWithRemoteConnection:(id)connection;
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

- (_EMMessageRepositoryQueryObserver)initWithRepository:(id)repository query:(id)query observer:(id)observer
{
  repositoryCopy = repository;
  queryCopy = query;
  observerCopy = observer;
  v21.receiver = self;
  v21.super_class = _EMMessageRepositoryQueryObserver;
  v12 = [(_EMMessageRepositoryQueryObserver *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_repository, repository);
    objc_storeStrong(&v13->_query, query);
    objectID = [observerCopy objectID];
    observationIdentifier = v13->_observationIdentifier;
    v13->_observationIdentifier = objectID;

    objc_storeWeak(&v13->_observer, observerCopy);
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

- (void)refreshQueryWithRemoteConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = +[EMMessageRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    observationIdentifier = self->_observationIdentifier;
    query = self->_query;
    v8 = [(EMQuery *)query debugDescription];
    v11 = 134218754;
    selfCopy = self;
    v13 = 2114;
    v14 = observationIdentifier;
    v15 = 2048;
    v16 = query;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Observer:%{public}@ refreshing query<%p>: %@", &v11, 0x2Au);
  }

  remoteCancelable = [(_EMMessageRepositoryQueryObserver *)self remoteCancelable];
  [remoteCancelable cancel];

  [(_EMMessageRepositoryQueryObserver *)self _performQueryWithRemoteConnection:connectionCopy forRecovery:1];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)recoverWithRemoteConnection:(id)connection
{
  v37 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
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
      selfCopy3 = self;
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
        selfCopy3 = self;
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
      v23 = connectionCopy;
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
        selfCopy3 = self;
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

      [(_EMMessageRepositoryQueryObserver *)self _performQueryWithRemoteConnection:connectionCopy forRecovery:1];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_performQueryWithRemoteConnection:(id)connection forRecovery:(BOOL)recovery
{
  recoveryCopy = recovery;
  connectionCopy = connection;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    if (recoveryCopy)
    {
      trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
      [trampoliningObserver queryDidStartRecovery];

      [(EFManualCancelationToken *)self->_token removeAllCancelationBlocks];
    }

    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    query = self->_query;
    observationIdentifier = self->_observationIdentifier;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83___EMMessageRepositoryQueryObserver__performQueryWithRemoteConnection_forRecovery___block_invoke;
    v11[3] = &unk_1E826CD58;
    v11[4] = self;
    [remoteObjectProxy performQuery:query withObserver:self observationIdentifier:observationIdentifier completionHandler:v11];
  }
}

- (void)observer:(id)observer wasUpdated:(id)updated
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  updatedCopy = updated;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v8 = +[EMMessageRepository log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = observerCopy;
      v14 = 2114;
      v15 = updatedCopy;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Acknowledging update for %{public}@: %{public}@", &v10, 0x20u);
    }

    [updatedCopy invoke];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds before:(id)before extraInfo:(id)info
{
  observerCopy = observer;
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v14 = [(EMMessageRepository *)self->_repository _addPrecachedItemsFromExtraInfoIfNeeded:infoCopy];
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryMatchedAddedObjectIDs:dsCopy before:beforeCopy extraInfo:v14];

    repository = self->_repository;
    observationIdentifier = self->_observationIdentifier;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85___EMMessageRepositoryQueryObserver_observer_matchedAddedObjectIDs_before_extraInfo___block_invoke;
    v18[3] = &unk_1E826EEB8;
    v18[4] = self;
    v19 = observerCopy;
    [(EMMessageRepository *)repository _detectChangesForMatchedAddedObjectIDs:dsCopy observerationIdentifier:observationIdentifier matchedChangesHandler:v18];
  }
}

- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds after:(id)after extraInfo:(id)info
{
  observerCopy = observer;
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    v14 = [(EMMessageRepository *)self->_repository _addPrecachedItemsFromExtraInfoIfNeeded:infoCopy];
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryMatchedAddedObjectIDs:dsCopy after:afterCopy extraInfo:v14];

    repository = self->_repository;
    observationIdentifier = self->_observationIdentifier;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84___EMMessageRepositoryQueryObserver_observer_matchedAddedObjectIDs_after_extraInfo___block_invoke;
    v18[3] = &unk_1E826EEB8;
    v18[4] = self;
    v19 = observerCopy;
    [(EMMessageRepository *)repository _detectChangesForMatchedAddedObjectIDs:dsCopy observerationIdentifier:observationIdentifier matchedChangesHandler:v18];
  }
}

- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info
{
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryMatchedMovedObjectIDs:dsCopy before:beforeCopy extraInfo:infoCopy];
  }
}

- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info
{
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryMatchedMovedObjectIDs:dsCopy after:afterCopy extraInfo:infoCopy];
  }
}

- (void)observer:(id)observer matchedChangesForObjectIDs:(id)ds
{
  v11[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    [(EMMessageRepository *)self->_repository _applyChangesToCachedObjects:dsCopy];
    v10 = @"changesByObjectID";
    v11[0] = dsCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if (trampoliningObserver)
    {
      allKeys = [dsCopy allKeys];
      [trampoliningObserver queryMatchedChangedObjectIDs:allKeys extraInfo:v6];
    }

    else
    {
      allKeys = +[EMMessageRepository log];
      if (os_log_type_enabled(allKeys, OS_LOG_TYPE_ERROR))
      {
        [_EMMessageRepositoryQueryObserver observer:allKeys matchedChangesForObjectIDs:?];
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)observer matchedDeletedObjectIDs:(id)ds
{
  dsCopy = ds;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryMatchedDeletedObjectIDs:dsCopy];
  }
}

- (void)observerDidFinishInitialLoad:(id)load extraInfo:(id)info
{
  infoCopy = info;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_recoveryLock);
    self->_recoveryAttempt = 0;
    os_unfair_lock_unlock(&self->_recoveryLock);
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if ([trampoliningObserver conformsToProtocol:&unk_1F462C2E0])
    {
      [trampoliningObserver queryDidFinishInitialLoadWithExtraInfo:infoCopy];
    }

    else
    {
      [trampoliningObserver queryDidFinishInitialLoad];
    }
  }
}

- (void)observerDidFailInitialLoad:(id)load extraInfo:(id)info
{
  infoCopy = info;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if ([trampoliningObserver conformsToProtocol:&unk_1F462C2E0])
    {
      [trampoliningObserver queryDidFailInitialLoadWithExtraInfo:infoCopy];
    }
  }
}

- (void)observerDidFinishRemoteSearch:(id)search
{
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryDidFinishRemoteSearch];
  }
}

- (void)observer:(id)observer replacedExistingObjectID:(id)d withNewObjectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryReplacedObjectID:dCopy withNewObjectID:iDCopy];
  }
}

- (void)observerWillRestart:(id)restart
{
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    [trampoliningObserver queryDidStartRecovery];
  }
}

- (void)observer:(id)observer matchedOldestItemsUpdatedForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    trampoliningObserver = [(_EMMessageRepositoryQueryObserver *)self trampoliningObserver];
    if ([trampoliningObserver conformsToProtocol:&unk_1F462C2E0])
    {
      [trampoliningObserver queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:mailboxesCopy];
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