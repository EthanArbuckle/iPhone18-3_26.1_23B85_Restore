@interface FBApplicationUpdateScenesTransaction
- (BOOL)_shouldFailForChildTransaction:(id)transaction;
- (FBApplicationProcess)process;
- (FBApplicationUpdateScenesTransaction)init;
- (FBApplicationUpdateScenesTransaction)initWithApplicationBundleID:(id)d executionContextProvider:(id)provider;
- (FBApplicationUpdateScenesTransaction)initWithClientIdentity:(id)identity executionContextProvider:(id)provider;
- (FBApplicationUpdateScenesTransaction)initWithProcessIdentity:(id)identity executionContextProvider:(id)provider;
- (NSString)bundleID;
- (id)_customizedDescriptionProperties;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_childTransactionDidFinishWork:(id)work;
- (void)_didComplete;
- (void)_didRemoveChildTransaction:(id)transaction;
- (void)_didSatisfyMilestone:(id)milestone;
- (void)_executeProcessLaunchIfAppropriate;
- (void)_executeSceneUpdatesIfAppropriate;
- (void)_updateSceneWithIdentity:(id)identity parameters:(id)parameters transitionContext:(id)context;
- (void)_willAddChildTransaction:(id)transaction;
- (void)_willBegin;
- (void)_willFailWithReason:(id)reason;
- (void)_willInterruptWithReason:(id)reason;
- (void)add:(id)add;
- (void)addObserver:(id)observer;
- (void)remove:(id)remove;
- (void)removeObserver:(id)observer;
- (void)setWaitsForSceneCommits:(BOOL)commits;
- (void)transaction:(id)transaction didLaunchProcess:(id)process;
- (void)transaction:(id)transaction willLaunchProcess:(id)process;
- (void)updateSceneTransactionDidCommitUpdate:(id)update;
- (void)updateSceneTransactionDidCreateScene:(id)scene;
- (void)updateSceneTransactionWillCommitUpdate:(id)update;
- (void)updateSceneTransactionWillUpdateScene:(id)scene;
- (void)updateSceneWithIdentifier:(id)identifier parameters:(id)parameters transitionContext:(id)context;
@end

@implementation FBApplicationUpdateScenesTransaction

- (void)_executeSceneUpdatesIfAppropriate
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_processLaunched)
  {
    process = [(FBApplicationProcessLaunchTransaction *)self->_processLaunchTransaction process];
    if (process)
    {
      v4 = process;
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
    selfCopy = self;
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

- (FBApplicationUpdateScenesTransaction)initWithApplicationBundleID:(id)d executionContextProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  if (!dCopy)
  {
    [FBApplicationUpdateScenesTransaction initWithApplicationBundleID:a2 executionContextProvider:?];
  }

  v9 = providerCopy;
  v10 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:dCopy];
  v11 = [(FBApplicationUpdateScenesTransaction *)self initWithProcessIdentity:v10 executionContextProvider:v9];

  return v11;
}

- (FBApplicationUpdateScenesTransaction)initWithClientIdentity:(id)identity executionContextProvider:(id)provider
{
  identityCopy = identity;
  providerCopy = provider;
  if (!identityCopy)
  {
    [FBApplicationUpdateScenesTransaction initWithClientIdentity:a2 executionContextProvider:?];
  }

  v9 = providerCopy;
  v29.receiver = self;
  v29.super_class = FBApplicationUpdateScenesTransaction;
  v10 = [(FBSynchronizedTransactionGroup *)&v29 init];
  if (v10)
  {
    v11 = [identityCopy copy];
    clientIdentity = v10->_clientIdentity;
    v10->_clientIdentity = v11;

    v10->_waitsForSceneCommits = 1;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updateSceneTransactions = v10->_updateSceneTransactions;
    v10->_updateSceneTransactions = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingUpdateTransactions = v10->_pendingUpdateTransactions;
    v10->_pendingUpdateTransactions = v15;

    processIdentity = [identityCopy processIdentity];
    if (!processIdentity)
    {
      [FBApplicationUpdateScenesTransaction initWithClientIdentity:a2 executionContextProvider:v10];
    }

    v18 = processIdentity;
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

- (FBApplicationUpdateScenesTransaction)initWithProcessIdentity:(id)identity executionContextProvider:(id)provider
{
  v6 = MEMORY[0x1E699FBD8];
  providerCopy = provider;
  v8 = [v6 identityForProcessIdentity:identity];
  v9 = [(FBApplicationUpdateScenesTransaction *)self initWithClientIdentity:v8 executionContextProvider:providerCopy];

  return v9;
}

- (NSString)bundleID
{
  processIdentity = [(FBSSceneClientIdentity *)self->_clientIdentity processIdentity];
  embeddedApplicationIdentifier = [processIdentity embeddedApplicationIdentifier];

  return embeddedApplicationIdentifier;
}

- (void)setWaitsForSceneCommits:(BOOL)commits
{
  v15 = *MEMORY[0x1E69E9840];
  self->_waitsForSceneCommits = commits;
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
  queue = [(FBApplicationUpdateScenesTransaction *)self queue];
  dispatch_assert_queue_V2(queue);

  processLaunchTransaction = self->_processLaunchTransaction;

  return [(FBApplicationProcessLaunchTransaction *)processLaunchTransaction process];
}

- (void)updateSceneWithIdentifier:(id)identifier parameters:(id)parameters transitionContext:(id)context
{
  v8 = MEMORY[0x1E699FC10];
  contextCopy = context;
  parametersCopy = parameters;
  v11 = [v8 identityForIdentifier:identifier];
  [(FBApplicationUpdateScenesTransaction *)self _updateSceneWithIdentity:v11 parameters:parametersCopy transitionContext:contextCopy];
}

- (void)_updateSceneWithIdentity:(id)identity parameters:(id)parameters transitionContext:(id)context
{
  identityCopy = identity;
  parametersCopy = parameters;
  contextCopy = context;
  v11 = parametersCopy;
  NSClassFromString(&cfstr_Fbssceneparame.isa);
  if (!v11)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  specification = [v11 specification];
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!specification)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationUpdateScenesTransaction _updateSceneWithIdentity:a2 parameters:? transitionContext:?];
  }

  if (([(FBApplicationUpdateScenesTransaction *)self isRunning]& 1) == 0 && ([(FBApplicationUpdateScenesTransaction *)self isComplete]& 1) == 0)
  {
    queue = [(FBApplicationUpdateScenesTransaction *)self queue];
    dispatch_assert_queue_V2(queue);

    definition = [MEMORY[0x1E699FB50] definition];
    [definition setIdentity:identityCopy];
    [definition setClientIdentity:self->_clientIdentity];
    specification2 = [v11 specification];
    [definition setSpecification:specification2];

    v16 = [[FBUpdateSceneTransaction alloc] initWithSceneDefinition:definition parameters:v11 transitionContext:contextCopy];
    [(NSMutableArray *)self->_pendingUpdateTransactions addObject:v16];
    [(FBApplicationUpdateScenesTransaction *)self _executeSceneUpdatesIfAppropriate];
  }
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 removeObserver:observer];
}

- (void)add:(id)add
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 addObserver:add];
}

- (void)remove:(id)remove
{
  v3.receiver = self;
  v3.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v3 removeObserver:remove];
}

- (void)_willAddChildTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5.receiver = self;
  v5.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v5 _willAddChildTransaction:transactionCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_updateSceneTransactions addObject:transactionCopy];
  }
}

- (void)_didRemoveChildTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5.receiver = self;
  v5.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v5 _didRemoveChildTransaction:transactionCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [transactionCopy removeObserver:self];
    [(NSMutableArray *)self->_updateSceneTransactions removeObject:transactionCopy];
  }
}

- (BOOL)_shouldFailForChildTransaction:(id)transaction
{
  if (self->_processLaunchTransaction == transaction)
  {
    isKindOfClass = 1;
  }

  else
  {
    transactionCopy = transaction;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_willInterruptWithReason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v14 _willInterruptWithReason:reason];
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

- (void)_willFailWithReason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v14 _willFailWithReason:reason];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_clientIdentity forKey:@"ClientIdentity"];
  waitsForSceneCommits = self->_waitsForSceneCommits;
  v5 = NSStringFromBOOL();
  [dictionary setObject:v5 forKey:@"Waits for scene commits"];

  return dictionary;
}

- (void)_childTransactionDidComplete:(id)complete
{
  v4.receiver = self;
  v4.super_class = FBApplicationUpdateScenesTransaction;
  [(FBSynchronizedTransactionGroup *)&v4 _childTransactionDidComplete:complete];
  [(FBApplicationUpdateScenesTransaction *)self _executeProcessLaunchIfAppropriate];
}

- (void)_childTransactionDidFinishWork:(id)work
{
  v4.receiver = self;
  v4.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v4 _childTransactionDidFinishWork:work];
  [(FBApplicationUpdateScenesTransaction *)self _executeProcessLaunchIfAppropriate];
}

- (void)_didSatisfyMilestone:(id)milestone
{
  v4.receiver = self;
  v4.super_class = FBApplicationUpdateScenesTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v4 _didSatisfyMilestone:milestone];
  [(FBApplicationUpdateScenesTransaction *)self _executeProcessLaunchIfAppropriate];
}

- (void)transaction:(id)transaction willLaunchProcess:(id)process
{
  processCopy = process;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __70__FBApplicationUpdateScenesTransaction_transaction_willLaunchProcess___block_invoke;
  v10 = &unk_1E783B808;
  selfCopy = self;
  v12 = processCopy;
  v6 = processCopy;
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

- (void)transaction:(id)transaction didLaunchProcess:(id)process
{
  processCopy = process;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__FBApplicationUpdateScenesTransaction_transaction_didLaunchProcess___block_invoke;
  v7[3] = &unk_1E783B808;
  v7[4] = self;
  v8 = processCopy;
  v6 = processCopy;
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

- (void)updateSceneTransactionDidCreateScene:(id)scene
{
  sceneCopy = scene;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FBApplicationUpdateScenesTransaction_updateSceneTransactionDidCreateScene___block_invoke;
  v6[3] = &unk_1E783B808;
  v6[4] = self;
  v7 = sceneCopy;
  v5 = sceneCopy;
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

- (void)updateSceneTransactionWillUpdateScene:(id)scene
{
  sceneCopy = scene;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__FBApplicationUpdateScenesTransaction_updateSceneTransactionWillUpdateScene___block_invoke;
  v6[3] = &unk_1E783B808;
  v6[4] = self;
  v7 = sceneCopy;
  v5 = sceneCopy;
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

- (void)updateSceneTransactionWillCommitUpdate:(id)update
{
  updateCopy = update;
  scene = [updateCopy scene];
  [(FBApplicationUpdateScenesTransaction *)self _noteWillCommitUpdateForScene:scene];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__FBApplicationUpdateScenesTransaction_updateSceneTransactionWillCommitUpdate___block_invoke;
  v7[3] = &unk_1E783B808;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
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

- (void)updateSceneTransactionDidCommitUpdate:(id)update
{
  updateCopy = update;
  scene = [updateCopy scene];
  [(FBApplicationUpdateScenesTransaction *)self _noteDidCommitUpdateForScene:scene];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__FBApplicationUpdateScenesTransaction_updateSceneTransactionDidCommitUpdate___block_invoke;
  v7[3] = &unk_1E783B808;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
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