@interface _EMMessageRepositoryCountingQueryObserver
- (_EMMessageRepositoryCountingQueryObserver)initWithRepository:(id)a3 queryIdentifier:(id)a4 includingServerCountsForMailboxScope:(id)a5 observer:(id)a6;
- (void)_performQueryWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4;
- (void)countDidChange:(int64_t)a3 acknowledgementToken:(id)a4;
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

- (_EMMessageRepositoryCountingQueryObserver)initWithRepository:(id)a3 queryIdentifier:(id)a4 includingServerCountsForMailboxScope:(id)a5 observer:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = _EMMessageRepositoryCountingQueryObserver;
  v15 = [(_EMMessageRepositoryCountingQueryObserver *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_repository, a3);
    objc_storeStrong(&v16->_serverCountMailboxScope, a5);
    objc_storeWeak(&v16->_observer, v14);
    v17 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    token = v16->_token;
    v16->_token = v17;

    objc_storeStrong(&v16->_queryIdentifier, a4);
  }

  return v16;
}

- (void)_performQueryWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    if (v4)
    {
      [(EFManualCancelationToken *)self->_token removeAllCancelationBlocks];
    }

    v7 = [v6 remoteObjectProxy];
    v8 = [(EFPair *)self->_queryIdentifier first];
    serverCountMailboxScope = self->_serverCountMailboxScope;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91___EMMessageRepositoryCountingQueryObserver__performQueryWithRemoteConnection_forRecovery___block_invoke;
    v10[3] = &unk_1E826CD58;
    v10[4] = self;
    [v7 startCountingQuery:v8 includingServerCountsForMailboxScope:serverCountMailboxScope withObserver:self completionHandler:v10];
  }
}

- (void)countDidChange:(int64_t)a3 acknowledgementToken:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = +[EMMessageRepository log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(_EMMessageRepositoryCountingQueryObserver *)self queryIdentifier];
    v17 = 134218498;
    v18 = self;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Acknowledging count update for %{public}@: %{public}@", &v17, 0x20u);
  }

  [v6 invoke];
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (WeakRetained)
    {
      repository = self->_repository;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v12 = [(_EMMessageRepositoryCountingQueryObserver *)self queryIdentifier];
      [(EMMessageRepository *)repository setQueryCount:v11 forQueryIdentifier:v12];

      v13 = [(EMRepository *)self->_repository trampoliningObserverForObserver:WeakRetained];
      v14 = self->_repository;
      v15 = [(EFPair *)self->_queryIdentifier first];
      [v13 messageRepository:v14 query:v15 countDidChange:a3];
    }

    else
    {
      [(_EMMessageRepositoryCountingQueryObserver *)self cancel];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end