@interface FBUpdateSceneTransaction
- (FBScene)scene;
- (FBSynchronizedTransactionDelegate)synchronizationDelegate;
- (FBUpdateSceneTransaction)initWithSceneIdentifier:(id)a3 process:(id)a4 parameters:(id)a5 transitionContext:(id)a6;
- (FBUpdateSceneTransaction)initWithSceneToUpdate:(id)a3 newSettings:(id)a4 transitionContext:(id)a5;
- (id)_customizedDescriptionProperties;
- (id)_initWithSceneDefinition:(id)a3 parameters:(id)a4 transitionContext:(id)a5;
- (void)_begin;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_commitSceneOrWait;
- (void)_commitSceneUpdate:(id)a3;
- (void)_createScene;
- (void)_didComplete;
- (void)_noteDidCommit:(BOOL)a3;
- (void)_noteDidCreate;
- (void)_noteWillCommit;
- (void)_noteWillUpdate;
- (void)_performCommit;
- (void)_updateScene;
- (void)add:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)performSynchronizedCommit;
- (void)remove:(id)a3;
- (void)removeObserver:(id)a3;
- (void)scene;
- (void)sceneDidInvalidate:(id)a3;
- (void)setWaitsForSceneCommit:(BOOL)a3;
@end

@implementation FBUpdateSceneTransaction

- (void)_begin
{
  v3 = [(FBUpdateSceneTransaction *)self scene];
  v4 = [v3 clientProcess];
  v5 = v4;
  if (v3 && [v4 isPendingExit])
  {
    if ([(FBUpdateSceneTransaction *)self isAuditHistoryEnabled])
    {
      [(FBUpdateSceneTransaction *)self _addAuditHistoryItem:@"Scene exists but is invalidated. Waiting for it to be destroyed..."];
    }

    v6 = [[FBWaitForSceneDestructionTransaction alloc] initWithScene:v3];
    destructionTransaction = self->_destructionTransaction;
    self->_destructionTransaction = v6;

    [(FBUpdateSceneTransaction *)self addChildTransaction:self->_destructionTransaction];
  }

  else
  {
    [(FBUpdateSceneTransaction *)self _commitSceneOrWait];
  }

  v8.receiver = self;
  v8.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v8 _begin];
}

- (FBScene)scene
{
  v4 = [(FBUpdateSceneTransaction *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(FBSceneManager *)self->_sceneManager sceneWithIdentifier:self->_sceneID];
  v6 = v5;
  if (v5 && ([(FBScene *)v5 _isLegacy]& 1) == 0)
  {
    [(FBUpdateSceneTransaction *)a2 scene];
  }

  return v6;
}

- (void)_commitSceneOrWait
{
  self->_readyToCommit = 1;
  [(FBUpdateSceneTransaction *)self addMilestone:@"synchronizedCommit"];
  v3 = [(FBUpdateSceneTransaction *)self synchronizationDelegate];
  v4 = v3;
  if (v3)
  {
    [v3 synchronizedTransactionReadyToCommit:self];
  }

  else
  {
    [(FBUpdateSceneTransaction *)self performSynchronizedCommit];
  }
}

- (FBSynchronizedTransactionDelegate)synchronizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_synchronizationDelegate);

  return WeakRetained;
}

- (void)performSynchronizedCommit
{
  if ([(FBUpdateSceneTransaction *)self isReadyForSynchronizedCommit])
  {
    self->_didCommit = 1;
    if ([(FBUpdateSceneTransaction *)self isAuditHistoryEnabled])
    {
      [(FBUpdateSceneTransaction *)self _addAuditHistoryItem:@"Performing synchronized commit."];
    }

    v3 = [(FBUpdateSceneTransaction *)self synchronizationDelegate];
    [v3 synchronizedTransaction:self willCommitSynchronizedTransactions:0];
    [(FBUpdateSceneTransaction *)self _performCommit];
    [v3 synchronizedTransaction:self didCommitSynchronizedTransactions:0];
    [(FBUpdateSceneTransaction *)self satisfyMilestone:@"synchronizedCommit"];
  }
}

- (void)_performCommit
{
  v3 = [(FBUpdateSceneTransaction *)self scene];

  if (v3)
  {

    [(FBUpdateSceneTransaction *)self _updateScene];
  }

  else
  {

    [(FBUpdateSceneTransaction *)self _createScene];
  }
}

- (void)_createScene
{
  v3 = [(FBSSceneDefinition *)self->_definition clientIdentity];
  if (([v3 isLocal] & 1) == 0)
  {
    v4 = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
    v5 = [v4 isEqual:v3];

    if (!v5)
    {
      v7 = +[FBProcessManager sharedInstance];
      v8 = [(FBSSceneDefinition *)self->_definition clientIdentity];
      v9 = [v8 processIdentity];
      v10 = [v7 processForIdentity:v9];
      v6 = [v10 workspace];

      if (v6)
      {
        goto LABEL_4;
      }

LABEL_6:
      v11 = MEMORY[0x1E696AEC0];
      v12 = [(FBSSceneDefinition *)self->_definition clientIdentity];
      v13 = [v11 stringWithFormat:@"no client provider for client with identity %@", v12];
      [(FBUpdateSceneTransaction *)self _failWithReason:@"scene update failed" description:v13];

      goto LABEL_7;
    }
  }

  v6 = +[FBLocalSynchronousSceneClientProvider sharedInstance];
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_4:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__FBUpdateSceneTransaction__createScene__block_invoke;
  v14[3] = &unk_1E783B240;
  v14[4] = self;
  v15 = v6;
  [(FBUpdateSceneTransaction *)self _commitSceneUpdate:v14];

LABEL_7:
}

uint64_t __40__FBUpdateSceneTransaction__createScene__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  v4 = *(v2 + 168);
  v5 = [*(v2 + 176) settings];
  v6 = [*(*(a1 + 32) + 176) clientSettings];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 184);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__FBUpdateSceneTransaction__createScene__block_invoke_2;
  v12[3] = &unk_1E783C948;
  v12[4] = v8;
  v10 = [v3 _createSceneWithDefinition:v4 settings:v5 initialClientSettings:v6 transitionContext:v9 fromRemnant:0 usingClientProvider:v7 completion:v12];

  [*(a1 + 32) _noteDidCreate];
  return [*(a1 + 32) _noteWillCommit];
}

- (void)_noteDidCreate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__FBUpdateSceneTransaction__noteDidCreate__block_invoke;
  v2[3] = &unk_1E783C970;
  v2[4] = self;
  [(FBUpdateSceneTransaction *)self _enumerateObserversWithBlock:v2];
}

void __42__FBUpdateSceneTransaction__noteDidCreate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateSceneTransactionDidCreateScene:*(a1 + 32)];
  }
}

- (void)_noteWillCommit
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__FBUpdateSceneTransaction__noteWillCommit__block_invoke;
  v2[3] = &unk_1E783C970;
  v2[4] = self;
  [(FBUpdateSceneTransaction *)self _enumerateObserversWithBlock:v2];
}

void __43__FBUpdateSceneTransaction__noteWillCommit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateSceneTransactionWillCommitUpdate:*(a1 + 32)];
  }
}

- (void)_didComplete
{
  v3 = [(FBUpdateSceneTransaction *)self scene];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v4 _didComplete];
}

- (void)dealloc
{
  v3 = self->_sceneID;
  v4 = self->_sceneManager;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __35__FBUpdateSceneTransaction_dealloc__block_invoke;
  v11 = &unk_1E783C920;
  v12 = v4;
  v13 = v3;
  v14 = self;
  v5 = v3;
  v6 = v4;
  BSDispatchMain();

  v7.receiver = self;
  v7.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v7 dealloc];
}

void __35__FBUpdateSceneTransaction_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneWithIdentifier:*(a1 + 40)];
  [v2 removeObserver:*(a1 + 48)];
}

- (void)_updateScene
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scene expected to update."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __40__FBUpdateSceneTransaction__updateScene__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _noteWillUpdate];
  v2 = [*(a1 + 32) scene];
  v3 = [*(a1 + 32) settings];
  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FBUpdateSceneTransaction__updateScene__block_invoke_2;
  v7[3] = &unk_1E783B218;
  v7[4] = v4;
  [v2 updateSettings:v3 withTransitionContext:v5 completion:v7];

  return [*(a1 + 32) _noteWillCommit];
}

- (void)_noteWillUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__FBUpdateSceneTransaction__noteWillUpdate__block_invoke;
  v2[3] = &unk_1E783C970;
  v2[4] = self;
  [(FBUpdateSceneTransaction *)self _enumerateObserversWithBlock:v2];
}

void __43__FBUpdateSceneTransaction__noteWillUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateSceneTransactionWillUpdateScene:*(a1 + 32)];
  }
}

- (id)_initWithSceneDefinition:(id)a3 parameters:(id)a4 transitionContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  NSClassFromString(&cfstr_Fbsscenedefini.isa);
  if (!v12)
  {
    [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
  }

  v13 = v10;
  NSClassFromString(&cfstr_Fbssceneparame.isa);
  if (!v13)
  {
    [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
  }

  if (([v12 isValid] & 1) == 0)
  {
    [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
  }

  v14 = v11;
  if (v14)
  {
    NSClassFromString(&cfstr_Fbsscenetransi_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
    }
  }

  v29.receiver = self;
  v29.super_class = FBUpdateSceneTransaction;
  v15 = [(FBTransaction *)&v29 init];
  if (v15)
  {
    v16 = +[FBSceneManager sharedInstance];
    sceneManager = v15->_sceneManager;
    v15->_sceneManager = v16;

    v18 = [v12 identity];
    v19 = [v18 identifier];
    v20 = [v19 copy];
    sceneID = v15->_sceneID;
    v15->_sceneID = v20;

    v22 = [v12 copy];
    definition = v15->_definition;
    v15->_definition = v22;

    v24 = [v13 copy];
    parameters = v15->_parameters;
    v15->_parameters = v24;

    v26 = [v14 copy];
    transitionContext = v15->_transitionContext;
    v15->_transitionContext = v26;

    v15->_waitsForSceneCommit = 1;
  }

  return v15;
}

- (FBUpdateSceneTransaction)initWithSceneIdentifier:(id)a3 process:(id)a4 parameters:(id)a5 transitionContext:(id)a6
{
  v10 = MEMORY[0x1E699FB50];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 definition];
  v16 = [MEMORY[0x1E699FC10] identityForIdentifier:v14];

  [v15 setIdentity:v16];
  v17 = MEMORY[0x1E699FBD8];
  v18 = [v13 identity];

  v19 = [v17 identityForProcessIdentity:v18];
  [v15 setClientIdentity:v19];

  v20 = [v12 specification];
  [v15 setSpecification:v20];

  v21 = [(FBUpdateSceneTransaction *)self _initWithSceneDefinition:v15 parameters:v12 transitionContext:v11];
  return v21;
}

- (FBUpdateSceneTransaction)initWithSceneToUpdate:(id)a3 newSettings:(id)a4 transitionContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [FBUpdateSceneTransaction initWithSceneToUpdate:a2 newSettings:? transitionContext:?];
  }

  if (!v10)
  {
    [FBUpdateSceneTransaction initWithSceneToUpdate:a2 newSettings:? transitionContext:?];
  }

  v12 = v11;
  v13 = +[FBSceneManager sharedInstance];
  v14 = [v13 sceneWithIdentifier:v9];

  if (([(FBScene *)v14 _isLegacy]& 1) == 0)
  {
    [FBUpdateSceneTransaction initWithSceneToUpdate:a2 newSettings:? transitionContext:?];
  }

  v15 = [v14 parameters];
  [v15 setSettings:v10];
  v16 = [v14 definition];
  v17 = [(FBUpdateSceneTransaction *)self _initWithSceneDefinition:v16 parameters:v15 transitionContext:v12];

  return v17;
}

- (void)setWaitsForSceneCommit:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBUpdateSceneTransaction *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_waitsForSceneCommit != v3)
  {
    self->_waitsForSceneCommit = v3;
    v6 = [(FBUpdateSceneTransaction *)self isWaitingForMilestone:@"sceneUpdateDidCommit"];
    if (self->_waitsForSceneCommit || !v6)
    {
      if (!(v6 & 1 | !self->_waitsForSceneCommit) && ([(FBUpdateSceneTransaction *)self isComplete]& 1) == 0)
      {

        [(FBUpdateSceneTransaction *)self addMilestone:@"sceneUpdateDidCommit"];
      }
    }

    else
    {

      [(FBUpdateSceneTransaction *)self removeMilestone:@"sceneUpdateDidCommit"];
    }
  }
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 removeObserver:a3];
}

- (void)add:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 addObserver:a3];
}

- (void)remove:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 removeObserver:a3];
}

- (void)_commitSceneUpdate:(id)a3
{
  v11 = a3;
  if (self->_waitsForSceneCommit)
  {
    [(FBUpdateSceneTransaction *)self addMilestone:@"sceneUpdateDidCommit"];
  }

  v4 = [(FBUpdateSceneTransaction *)self settings];
  if ([v4 isForeground] && -[FBSSceneTransitionContext _uikitShimming_isUISubclass](self->_transitionContext, "_uikitShimming_isUISubclass"))
  {
    waitsForSceneCommit = self->_waitsForSceneCommit;

    if (!waitsForSceneCommit)
    {
      goto LABEL_12;
    }

    v4 = [(FBSSceneTransitionContext *)self->_transitionContext watchdogTransitionContext];
    v6 = [v4 watchdogBehavior];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    [v4 setWatchdogBehavior:v7];
    if ([(FBUpdateSceneTransaction *)self isAuditHistoryEnabled])
    {
      v8 = NSStringFromFBWatchdogBehavior(v7);
      [(FBUpdateSceneTransaction *)self _addAuditHistoryItem:@"Updating scene with watchdog policy: %@", v8];
    }
  }

LABEL_12:
  v11[2]();
  v9 = [(FBUpdateSceneTransaction *)self scene];
  [v9 addObserver:self];

  v10 = [(FBSSceneTransitionContext *)self->_transitionContext animationFence];
  [v10 invalidate];
}

- (void)_childTransactionDidComplete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_destructionTransaction == v4)
  {
    if (([(FBWaitForSceneDestructionTransaction *)v4 isFailed]& 1) == 0 && ([(FBWaitForSceneDestructionTransaction *)v5 isInterrupted]& 1) == 0)
    {
      if ([(FBUpdateSceneTransaction *)self isAuditHistoryEnabled])
      {
        [(FBUpdateSceneTransaction *)self _addAuditHistoryItem:@"Invalidated scene was destroyed."];
      }

      [(FBUpdateSceneTransaction *)self _commitSceneOrWait];
    }

    destructionTransaction = self->_destructionTransaction;
    self->_destructionTransaction = 0;
  }

  v7.receiver = self;
  v7.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v7 _childTransactionDidComplete:v5];
}

- (id)_customizedDescriptionProperties
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  if (self->_sceneID)
  {
    sceneID = self->_sceneID;
  }

  else
  {
    sceneID = @"(none)";
  }

  [v3 setObject:sceneID forKey:@"SceneID"];
  v6 = [(FBUpdateSceneTransaction *)self settings];

  if (v6)
  {
    v7 = [(FBUpdateSceneTransaction *)self settings];
    if ([v7 isForeground])
    {
      v8 = @"Foreground";
    }

    else
    {
      v8 = @"Background";
    }

    [v4 setObject:v8 forKey:@"Scene Visibility"];
  }

  waitsForSceneCommit = self->_waitsForSceneCommit;
  v10 = NSStringFromBOOL();
  [v4 setObject:v10 forKey:@"Wait for Commit"];

  return v4;
}

- (void)_noteDidCommit:(BOOL)a3
{
  if (a3)
  {
    if (([(FBUpdateSceneTransaction *)self isFailed]& 1) == 0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __43__FBUpdateSceneTransaction__noteDidCommit___block_invoke;
      v5[3] = &unk_1E783C970;
      v5[4] = self;
      [(FBUpdateSceneTransaction *)self _enumerateObserversWithBlock:v5];
      [(FBUpdateSceneTransaction *)self satisfyMilestone:@"sceneUpdateDidCommit"];
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scene update failed"];
    [(FBUpdateSceneTransaction *)self _failWithReason:@"scene update failed" description:v4];
  }
}

void __43__FBUpdateSceneTransaction__noteDidCommit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateSceneTransactionDidCommitUpdate:*(a1 + 32)];
  }
}

- (void)sceneDidInvalidate:(id)a3
{
  v4 = a3;
  [v4 removeObserver:self];
  self->_destroyed = 1;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scene destroyed: %@", v4];

  [(FBUpdateSceneTransaction *)self _failWithReason:@"scene update failed" description:v5];
}

- (void)_initWithSceneDefinition:(char *)a1 parameters:transitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneDefinitionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithSceneDefinition:(char *)a1 parameters:transitionContext:.cold.2(char *a1)
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

- (void)_initWithSceneDefinition:(char *)a1 parameters:transitionContext:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[definition isValid]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithSceneDefinition:(char *)a1 parameters:transitionContext:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneTransitionContextClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithSceneDefinition:(char *)a1 parameters:transitionContext:.cold.5(char *a1)
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

- (void)_initWithSceneDefinition:(char *)a1 parameters:transitionContext:.cold.6(char *a1)
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

- (void)initWithSceneToUpdate:(char *)a1 newSettings:transitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this transaction only supports legacy scenes"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSceneToUpdate:(char *)a1 newSettings:transitionContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"newSettings", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSceneToUpdate:(char *)a1 newSettings:transitionContext:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"sceneID", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this transaction only supports legacy scenes"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end