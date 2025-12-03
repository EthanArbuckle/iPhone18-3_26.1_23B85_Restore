@interface _EMMessageRepositoryCountingQueryObserver
- (_EMMessageRepositoryCountingQueryObserver)initWithRepository:(id)repository queryIdentifier:(id)identifier includingServerCountsForMailboxScope:(id)scope observer:(id)observer;
- (void)_performQueryWithRemoteConnection:(id)connection forRecovery:(BOOL)recovery;
- (void)countDidChange:(int64_t)change acknowledgementToken:(id)token;
- (void)dealloc;
@end

@implementation _EMMessageRepositoryCountingQueryObserver

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_token cancel];
  v3.receiver = self;
  v3.super_class = _EMMessageRepositoryCountingQueryObserver;
  [(_EMMessageRepositoryCountingQueryObserver *)&v3 dealloc];
}

- (_EMMessageRepositoryCountingQueryObserver)initWithRepository:(id)repository queryIdentifier:(id)identifier includingServerCountsForMailboxScope:(id)scope observer:(id)observer
{
  repositoryCopy = repository;
  identifierCopy = identifier;
  scopeCopy = scope;
  observerCopy = observer;
  v20.receiver = self;
  v20.super_class = _EMMessageRepositoryCountingQueryObserver;
  v15 = [(_EMMessageRepositoryCountingQueryObserver *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_repository, repository);
    objc_storeStrong(&v16->_serverCountMailboxScope, scope);
    objc_storeWeak(&v16->_observer, observerCopy);
    v17 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    token = v16->_token;
    v16->_token = v17;

    objc_storeStrong(&v16->_queryIdentifier, identifier);
  }

  return v16;
}

- (void)_performQueryWithRemoteConnection:(id)connection forRecovery:(BOOL)recovery
{
  recoveryCopy = recovery;
  connectionCopy = connection;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    if (recoveryCopy)
    {
      [(EFManualCancelationToken *)self->_token removeAllCancelationBlocks];
    }

    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    first = [(EFPair *)self->_queryIdentifier first];
    serverCountMailboxScope = self->_serverCountMailboxScope;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91___EMMessageRepositoryCountingQueryObserver__performQueryWithRemoteConnection_forRecovery___block_invoke;
    v10[3] = &unk_1E826CD58;
    v10[4] = self;
    [remoteObjectProxy startCountingQuery:first includingServerCountsForMailboxScope:serverCountMailboxScope withObserver:self completionHandler:v10];
  }
}

- (void)countDidChange:(int64_t)change acknowledgementToken:(id)token
{
  v23 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v7 = +[EMMessageRepository log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    queryIdentifier = [(_EMMessageRepositoryCountingQueryObserver *)self queryIdentifier];
    v17 = 134218498;
    selfCopy = self;
    v19 = 2114;
    v20 = queryIdentifier;
    v21 = 2114;
    v22 = tokenCopy;
    _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Acknowledging count update for %{public}@: %{public}@", &v17, 0x20u);
  }

  [tokenCopy invoke];
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (WeakRetained)
    {
      repository = self->_repository;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:change];
      queryIdentifier2 = [(_EMMessageRepositoryCountingQueryObserver *)self queryIdentifier];
      [(EMMessageRepository *)repository setQueryCount:v11 forQueryIdentifier:queryIdentifier2];

      v13 = [(EMRepository *)self->_repository trampoliningObserverForObserver:WeakRetained];
      v14 = self->_repository;
      first = [(EFPair *)self->_queryIdentifier first];
      [v13 messageRepository:v14 query:first countDidChange:change];
    }

    else
    {
      [(_EMMessageRepositoryCountingQueryObserver *)self cancel];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end