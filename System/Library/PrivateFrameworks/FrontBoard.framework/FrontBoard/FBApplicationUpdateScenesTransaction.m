@interface FBApplicationUpdateScenesTransaction
- (BOOL)_shouldFailForChildTransaction:(id)a3;
- (FBApplicationProcess)process;
- (FBApplicationUpdateScenesTransaction)init;
- (FBApplicationUpdateScenesTransaction)initWithApplicationBundleID:(id)a3 executionContextProvider:(id)a4;
- (FBApplicationUpdateScenesTransaction)initWithClientIdentity:(id)a3 executionContextProvider:(id)a4;
- (FBApplicationUpdateScenesTransaction)initWithProcessIdentity:(id)a3 executionContextProvider:(id)a4;
- (NSString)bundleID;
- (id)_customizedDescriptionProperties;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_childTransactionDidFinishWork:(id)a3;
- (void)_didComplete;
- (void)_didRemoveChildTransaction:(id)a3;
- (void)_didSatisfyMilestone:(id)a3;
- (void)_executeProcessLaunchIfAppropriate;
- (void)_executeSceneUpdatesIfAppropriate;
- (void)_updateSceneWithIdentity:(id)a3 parameters:(id)a4 transitionContext:(id)a5;
- (void)_willAddChildTransaction:(id)a3;
- (void)_willBegin;
- (void)_willFailWithReason:(id)a3;
- (void)_willInterruptWithReason:(id)a3;
- (void)add:(id)a3;
- (void)addObserver:(id)a3;
- (void)remove:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setWaitsForSceneCommits:(BOOL)a3;
- (void)transaction:(id)a3 didLaunchProcess:(id)a4;
- (void)transaction:(id)a3 willLaunchProcess:(id)a4;
- (void)updateSceneTransactionDidCommitUpdate:(id)a3;
- (void)updateSceneTransactionDidCreateScene:(id)a3;
- (void)updateSceneTransactionWillCommitUpdate:(id)a3;
- (void)updateSceneTransactionWillUpdateScene:(id)a3;
- (void)updateSceneWithIdentifier:(id)a3 parameters:(id)a4 transitionContext:(id)a5;
@end

@implementation FBApplicationUpdateScenesTransaction

- (void)_executeSceneUpdatesIfAppropriate
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_processLaunched)
  {
    v3 = [(FBApplicationProcessLaunchTransaction *)self->_processLaunchTransaction process];
    if (v3)
    {
      v4 = v3;
      v5 = [(NSMutableArray *)self->_pendingUpdateTransactions count];

      if (v5)
      {
        if ([(FBApplicationUpdateScenesTransaction *)self isAuditHistoryEnabled])
        {
          [(FBApplicationUpdateScenesTransaction *)self _addAuditHistoryItem:@"Beginning scene updates."];
        }

        v6 = [(NSMutableArray *)self->_pendingUpdateTransactions copy];
        [(NSMutableArray *)self->_pendingUpdateTransactions removeAllObjects];
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v14 + 1) + 8 * i);
              [v12 addObserver:{self, v14}];
              [v12 setWaitsForSceneCommit:self->_waitsForSceneCommits];
              [(FBSynchronizedTransactionGroup *)self addSynchronizedTransaction:v12];
            }

            v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v9);
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_willBegin
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 _willBegin];
  [(FBApplicationUpdateScenesTransaction *)self _executeProcessLaunchIfAppropriate];
}

- (void)_executeProcessLaunchIfAppropriate
{
  if (!self->_hasScheduledProcessLaunch && [(FBApplicationUpdateScenesTransaction *)self _isReadyToLaunch])
  {
    self->_hasScheduledProcessLaunch = 1;
    [(FBApplicationProcessLaunchTransaction *)self->_processLaunchTransaction addObserver:self];
    processLaunchTransaction = self->_processLaunchTransaction;

    [(FBApplicationUpdateScenesTransaction *)self addChildTransaction:processLaunchTransaction];
  }
}

- (void)_didComplete
{
  v15 = *MEMORY[0x1E69E9840];
  [(FBApplicationProcessLaunchTransaction *)self->_processLaunchTransaction removeObserver:self];
  [(NSMutableArray *)self->_pendingUpdateTransactions removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_updateSceneTransactions;
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

        [*(*(&v10 + 1) + 8 * v7++) removeObserver:self];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = FBApplicationUpdateScenesTransaction;
  [(FBSynchronizedTransactionGroup *)&v9 _didComplete];
  v8 = *MEMORY[0x1E69E9840];
}

- (FBApplicationUpdateScenesTransaction)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBApplicationProcessLaunchTransaction"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"FBApplicationUpdateScenesTransaction.m";
    v17 = 1024;
    v18 = 50;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (FBApplicationUpdateScenesTransaction)initWithApplicationBundleID:(id)a3 executionContextProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBApplicationUpdateScenesTransaction initWithApplicationBundleID:a2 executionContextProvider:?];
  }

  v9 = v8;
  v10 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:v7];
  v11 = [(FBApplicationUpdateScenesTransaction *)self initWithProcessIdentity:v10 executionContextProvider:v9];

  return v11;
}

- (FBApplicationUpdateScenesTransaction)initWithClientIdentity:(id)a3 executionContextProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBApplicationUpdateScenesTransaction initWithClientIdentity:a2 executionContextProvider:?];
  }

  v9 = v8;
  v29.receiver = self;
  v29.super_class = FBApplicationUpdateScenesTransaction;
  v10 = [(FBSynchronizedTransactionGroup *)&v29 init];
  if (v10)
  {
    v11 = [v7 copy];
    clientIdentity = v10->_clientIdentity;
    v10->_clientIdentity = v11;

    v10->_waitsForSceneCommits = 1;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updateSceneTransactions = v10->_updateSceneTransactions;
    v10->_updateSceneTransactions = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingUpdateTransactions = v10->_pendingUpdateTransactions;
    v10->_pendingUpdateTransactions = v15;

    v17 = [v7 processIdentity];
    if (!v17)
    {
      [FBApplicationUpdateScenesTransaction initWithClientIdentity:a2 executionContextProvider:v10];
    }

    v18 = v17;
    objc_initWeak(&location, v10);
    v19 = [FBApplicationProcessLaunchTransaction alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88__FBApplicationUpdateScenesTransaction_initWithClientIdentity_executionContextProvider___block_invoke;
    v24[3] = &unk_1E783B7E0;
    objc_copyWeak(&v27, &location);
    v26 = v9;
    v20 = v18;
    v25 = v20;
    v21 = [(FBApplicationProcessLaunchTransaction *)v19 initWithProcessIdentity:v20 executionContextProvider:v24];
    processLaunchTransaction = v10->_processLaunchTransaction;
    v10->_processLaunchTransaction = v21;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v10;
}

id __88__FBApplicationUpdateScenesTransaction_initWithClientIdentity_executionContextProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 28);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(a1 + 40);
  if (!v6 || ((*(v6 + 16))(), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(FBProcessExecutionContext *)[FBMutableProcessExecutionContext alloc] initWithIdentity:*(a1 + 32)];
  }

  v8 = [v5 firstObject];
  v9 = [v8 settings];
  v10 = [(FBProcessExecutionContext *)v7 copyOrUpdateForSceneActivationWithSettings:v9];

  return v10;
}

- (FBApplicationUpdateScenesTransaction)initWithProcessIdentity:(id)a3 executionContextProvider:(id)a4
{
  v6 = MEMORY[0x1E699FBD8];
  v7 = a4;
  v8 = [v6 identityForProcessIdentity:a3];
  v9 = [(FBApplicationUpdateScenesTransaction *)self initWithClientIdentity:v8 executionContextProvider:v7];

  return v9;
}

- (NSString)bundleID
{
  v2 = [(FBSSceneClientIdentity *)self->_clientIdentity processIdentity];
  v3 = [v2 embeddedApplicationIdentifier];

  return v3;
}

- (void)setWaitsForSceneCommits:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_waitsForSceneCommits = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_updateSceneTransactions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setWaitsForSceneCommit:{self->_waitsForSceneCommits, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (FBApplicationProcess)process
{
  v3 = [(FBApplicationUpdateScenesTransaction *)self queue];
  dispatch_assert_queue_V2(v3);

  processLaunchTransaction = self->_processLaunchTransaction;

  return [(FBApplicationProcessLaunchTransaction *)processLaunchTransaction process];
}

- (void)updateSceneWithIdentifier:(id)a3 parameters:(id)a4 transitionContext:(id)a5
{
  v8 = MEMORY[0x1E699FC10];
  v9 = a5;
  v10 = a4;
  v11 = [v8 identityForIdentifier:a3];
  [(FBApplicationUpdateScenesTransaction *)self _updateSceneWithIdentity:v11 parameters:v10 transitionContext:v9];
}

- (void)_updateSceneWithIdentity:(id)a3 parameters:(id)a4 transitionContext:(id)a5
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  NSClassFromString(&cfstr_Fbssceneparame.isa);
  if (!v11)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  v12 = [v11 specification];
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!v12)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  if (([(FBApplicationUpdateScenesTransaction *)self isRunning]& 1) == 0 && ([(FBApplicationUpdateScenesTransaction *)self isComplete]& 1) == 0)
  {
    v13 = [(FBApplicationUpdateScenesTransaction *)self queue];
    dispatch_assert_queue_V2(v13);

    v14 = [MEMORY[0x1E699FB50] definition];
    [v14 setIdentity:v17];
    [v14 setClientIdentity:self->_clientIdentity];
    v15 = [v11 specification];
    [v14 setSpecification:v15];

    v16 = [[FBUpdateSceneTransaction alloc] initWithSceneDefinition:v14 parameters:v11 transitionContext:v10];
    [(NSMutableArray *)self->_pendingUpdateTransactions addObject:v16];
    [(FBApplicationUpdateScenesTransaction *)self _executeSceneUpdatesIfAppropriate];
  }
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 removeObserver:a3];
}

- (void)add:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 addObserver:a3];
}

- (void)remove:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 removeObserver:a3];
}

- (void)_willAddChildTransaction:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v5 _willAddChildTransaction:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_updateSceneTransactions addObject:v4];
  }
}

- (void)_didRemoveChildTransaction:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v5 _didRemoveChildTransaction:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 removeObserver:self];
    [(NSMutableArray *)self->_updateSceneTransactions removeObject:v4];
  }
}

- (BOOL)_shouldFailForChildTransaction:(id)a3
{
  if (self->_processLaunchTransaction == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_willInterruptWithReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v14 _willInterruptWithReason:a3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_updateSceneTransactions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setWaitsForSceneCommit:{0, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_willFailWithReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v14 _willFailWithReason:a3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_updateSceneTransactions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setWaitsForSceneCommit:{0, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_customizedDescriptionProperties
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_clientIdentity forKey:@"ClientIdentity"];
  waitsForSceneCommits = self->_waitsForSceneCommits;
  v5 = NSStringFromBOOL();
  [v3 setObject:v5 forKey:@"Waits for scene commits"];

  return v3;
}

- (void)_childTransactionDidComplete:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBApplicationUpdateScenesTransaction;
  [(FBSynchronizedTransactionGroup *)&v4 _childTransactionDidComplete:a3];
  [(FBApplicationUpdateScenesTransaction *)self _executeProcessLaunchIfAppropriate];
}

- (void)_childTransactionDidFinishWork:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v4 _childTransactionDidFinishWork:a3];
  [(FBApplicationUpdateScenesTransaction *)self _executeProcessLaunchIfAppropriate];
}

- (void)_didSatisfyMilestone:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v4 _didSatisfyMilestone:a3];
  [(FBApplicationUpdateScenesTransaction *)self _executeProcessLaunchIfAppropriate];
}

- (void)transaction:(id)a3 willLaunchProcess:(id)a4
{
  v5 = a4;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __70__FBApplicationUpdateScenesTransaction_transaction_willLaunchProcess___block_invoke;
  v10 = &unk_1E783B808;
  v11 = self;
  v12 = v5;
  v6 = v5;
  [(FBApplicationUpdateScenesTransaction *)self _enumerateObserversWithBlock:&v7];
  self->_processLaunched = 1;
  [(FBApplicationUpdateScenesTransaction *)self _executeSceneUpdatesIfAppropriate:v7];
}

void __70__FBApplicationUpdateScenesTransaction_transaction_willLaunchProcess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) willLaunchProcess:*(a1 + 40)];
  }
}

- (void)transaction:(id)a3 didLaunchProcess:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__FBApplicationUpdateScenesTransaction_transaction_didLaunchProcess___block_invoke;
  v7[3] = &unk_1E783B808;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(FBApplicationUpdateScenesTransaction *)self _enumerateObserversWithBlock:v7];
}

void __69__FBApplicationUpdateScenesTransaction_transaction_didLaunchProcess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) didLaunchProcess:*(a1 + 40)];
  }
}

- (void)updateSceneTransactionDidCreateScene:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FBApplicationUpdateScenesTransaction_updateSceneTransactionDidCreateScene___block_invoke;
  v6[3] = &unk_1E783B808;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(FBApplicationUpdateScenesTransaction *)self _enumerateObserversWithBlock:v6];
}

void __77__FBApplicationUpdateScenesTransaction_updateSceneTransactionDidCreateScene___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) scene];
    [v5 transaction:v3 didCreateScene:v4];
  }
}

- (void)updateSceneTransactionWillUpdateScene:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__FBApplicationUpdateScenesTransaction_updateSceneTransactionWillUpdateScene___block_invoke;
  v6[3] = &unk_1E783B808;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(FBApplicationUpdateScenesTransaction *)self _enumerateObserversWithBlock:v6];
}

void __78__FBApplicationUpdateScenesTransaction_updateSceneTransactionWillUpdateScene___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) scene];
    [v5 transaction:v3 willUpdateScene:v4];
  }
}

- (void)updateSceneTransactionWillCommitUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 scene];
  [(FBApplicationUpdateScenesTransaction *)self _noteWillCommitUpdateForScene:v5];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__FBApplicationUpdateScenesTransaction_updateSceneTransactionWillCommitUpdate___block_invoke;
  v7[3] = &unk_1E783B808;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(FBApplicationUpdateScenesTransaction *)self _enumerateObserversWithBlock:v7];
}

void __79__FBApplicationUpdateScenesTransaction_updateSceneTransactionWillCommitUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) scene];
    [v5 transaction:v3 willCommitSceneUpdate:v4];
  }
}

- (void)updateSceneTransactionDidCommitUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 scene];
  [(FBApplicationUpdateScenesTransaction *)self _noteDidCommitUpdateForScene:v5];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__FBApplicationUpdateScenesTransaction_updateSceneTransactionDidCommitUpdate___block_invoke;
  v7[3] = &unk_1E783B808;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(FBApplicationUpdateScenesTransaction *)self _enumerateObserversWithBlock:v7];
}

void __78__FBApplicationUpdateScenesTransaction_updateSceneTransactionDidCommitUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) scene];
    [v5 transaction:v3 didCommitSceneUpdate:v4];
  }
}

- (void)initWithApplicationBundleID:(char *)a1 executionContextProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"bundleID", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(char *)a1 executionContextProvider:(uint64_t)a2 .cold.1(char *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be a process identity based client identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    v8 = 138544642;
    v9 = a1;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBApplicationUpdateScenesTransaction.m";
    v16 = 1024;
    v17 = 69;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  v7 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(char *)a1 executionContextProvider:.cold.2(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"clientIdentity", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_updateSceneWithIdentity:(char *)a1 parameters:transitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneParametersClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_updateSceneWithIdentity:(char *)a1 parameters:transitionContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_updateSceneWithIdentity:(char *)a1 parameters:transitionContext:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_updateSceneWithIdentity:(char *)a1 parameters:transitionContext:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end