@interface FBUpdateSceneTransaction
- (FBScene)scene;
- (FBSynchronizedTransactionDelegate)synchronizationDelegate;
- (FBUpdateSceneTransaction)initWithSceneIdentifier:(id)identifier process:(id)process parameters:(id)parameters transitionContext:(id)context;
- (FBUpdateSceneTransaction)initWithSceneToUpdate:(id)update newSettings:(id)settings transitionContext:(id)context;
- (id)_customizedDescriptionProperties;
- (id)_initWithSceneDefinition:(id)definition parameters:(id)parameters transitionContext:(id)context;
- (void)_begin;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_commitSceneOrWait;
- (void)_commitSceneUpdate:(id)update;
- (void)_createScene;
- (void)_didComplete;
- (void)_noteDidCommit:(BOOL)commit;
- (void)_noteDidCreate;
- (void)_noteWillCommit;
- (void)_noteWillUpdate;
- (void)_performCommit;
- (void)_updateScene;
- (void)add:(id)add;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)performSynchronizedCommit;
- (void)remove:(id)remove;
- (void)removeObserver:(id)observer;
- (void)scene;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)setWaitsForSceneCommit:(BOOL)commit;
@end

@implementation FBUpdateSceneTransaction

- (void)_begin
{
  scene = [(FBUpdateSceneTransaction *)self scene];
  clientProcess = [scene clientProcess];
  v5 = clientProcess;
  if (scene && [clientProcess isPendingExit])
  {
    if ([(FBUpdateSceneTransaction *)self isAuditHistoryEnabled])
    {
      [(FBUpdateSceneTransaction *)self _addAuditHistoryItem:@"Scene exists but is invalidated. Waiting for it to be destroyed..."];
    }

    v6 = [[FBWaitForSceneDestructionTransaction alloc] initWithScene:scene];
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
  queue = [(FBUpdateSceneTransaction *)self queue];
  dispatch_assert_queue_V2(queue);

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
  synchronizationDelegate = [(FBUpdateSceneTransaction *)self synchronizationDelegate];
  v4 = synchronizationDelegate;
  if (synchronizationDelegate)
  {
    [synchronizationDelegate synchronizedTransactionReadyToCommit:self];
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

    synchronizationDelegate = [(FBUpdateSceneTransaction *)self synchronizationDelegate];
    [synchronizationDelegate synchronizedTransaction:self willCommitSynchronizedTransactions:0];
    [(FBUpdateSceneTransaction *)self _performCommit];
    [synchronizationDelegate synchronizedTransaction:self didCommitSynchronizedTransactions:0];
    [(FBUpdateSceneTransaction *)self satisfyMilestone:@"synchronizedCommit"];
  }
}

- (void)_performCommit
{
  scene = [(FBUpdateSceneTransaction *)self scene];

  if (scene)
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
  clientIdentity = [(FBSSceneDefinition *)self->_definition clientIdentity];
  if (([clientIdentity isLocal] & 1) == 0)
  {
    identityOfCurrentProcess = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
    v5 = [identityOfCurrentProcess isEqual:clientIdentity];

    if (!v5)
    {
      v7 = +[FBProcessManager sharedInstance];
      clientIdentity2 = [(FBSSceneDefinition *)self->_definition clientIdentity];
      processIdentity = [clientIdentity2 processIdentity];
      v10 = [v7 processForIdentity:processIdentity];
      workspace = [v10 workspace];

      if (workspace)
      {
        goto LABEL_4;
      }

LABEL_6:
      v11 = MEMORY[0x1E696AEC0];
      clientIdentity3 = [(FBSSceneDefinition *)self->_definition clientIdentity];
      v13 = [v11 stringWithFormat:@"no client provider for client with identity %@", clientIdentity3];
      [(FBUpdateSceneTransaction *)self _failWithReason:@"scene update failed" description:v13];

      goto LABEL_7;
    }
  }

  workspace = +[FBLocalSynchronousSceneClientProvider sharedInstance];
  if (!workspace)
  {
    goto LABEL_6;
  }

LABEL_4:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__FBUpdateSceneTransaction__createScene__block_invoke;
  v14[3] = &unk_1E783B240;
  v14[4] = self;
  v15 = workspace;
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
  scene = [(FBUpdateSceneTransaction *)self scene];
  [scene removeObserver:self];

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
  selfCopy = self;
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
    NSStringFromSelector(self);
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

- (id)_initWithSceneDefinition:(id)definition parameters:(id)parameters transitionContext:(id)context
{
  definitionCopy = definition;
  parametersCopy = parameters;
  contextCopy = context;
  v12 = definitionCopy;
  NSClassFromString(&cfstr_Fbsscenedefini.isa);
  if (!v12)
  {
    [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBUpdateSceneTransaction _initWithSceneDefinition:a2 parameters:? transitionContext:?];
  }

  v13 = parametersCopy;
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

  v14 = contextCopy;
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

    identity = [v12 identity];
    identifier = [identity identifier];
    v20 = [identifier copy];
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

- (FBUpdateSceneTransaction)initWithSceneIdentifier:(id)identifier process:(id)process parameters:(id)parameters transitionContext:(id)context
{
  v10 = MEMORY[0x1E699FB50];
  contextCopy = context;
  parametersCopy = parameters;
  processCopy = process;
  identifierCopy = identifier;
  definition = [v10 definition];
  v16 = [MEMORY[0x1E699FC10] identityForIdentifier:identifierCopy];

  [definition setIdentity:v16];
  v17 = MEMORY[0x1E699FBD8];
  identity = [processCopy identity];

  v19 = [v17 identityForProcessIdentity:identity];
  [definition setClientIdentity:v19];

  specification = [parametersCopy specification];
  [definition setSpecification:specification];

  v21 = [(FBUpdateSceneTransaction *)self _initWithSceneDefinition:definition parameters:parametersCopy transitionContext:contextCopy];
  return v21;
}

- (FBUpdateSceneTransaction)initWithSceneToUpdate:(id)update newSettings:(id)settings transitionContext:(id)context
{
  updateCopy = update;
  settingsCopy = settings;
  contextCopy = context;
  if (!updateCopy)
  {
    [FBUpdateSceneTransaction initWithSceneToUpdate:a2 newSettings:? transitionContext:?];
  }

  if (!settingsCopy)
  {
    [FBUpdateSceneTransaction initWithSceneToUpdate:a2 newSettings:? transitionContext:?];
  }

  v12 = contextCopy;
  v13 = +[FBSceneManager sharedInstance];
  v14 = [v13 sceneWithIdentifier:updateCopy];

  if (([(FBScene *)v14 _isLegacy]& 1) == 0)
  {
    [FBUpdateSceneTransaction initWithSceneToUpdate:a2 newSettings:? transitionContext:?];
  }

  parameters = [v14 parameters];
  [parameters setSettings:settingsCopy];
  definition = [v14 definition];
  v17 = [(FBUpdateSceneTransaction *)self _initWithSceneDefinition:definition parameters:parameters transitionContext:v12];

  return v17;
}

- (void)setWaitsForSceneCommit:(BOOL)commit
{
  commitCopy = commit;
  queue = [(FBUpdateSceneTransaction *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_waitsForSceneCommit != commitCopy)
  {
    self->_waitsForSceneCommit = commitCopy;
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

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 removeObserver:observer];
}

- (void)add:(id)add
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 addObserver:add];
}

- (void)remove:(id)remove
{
  v3.receiver = self;
  v3.super_class = FBUpdateSceneTransaction;
  [(FBUpdateSceneTransaction *)&v3 removeObserver:remove];
}

- (void)_commitSceneUpdate:(id)update
{
  updateCopy = update;
  if (self->_waitsForSceneCommit)
  {
    [(FBUpdateSceneTransaction *)self addMilestone:@"sceneUpdateDidCommit"];
  }

  settings = [(FBUpdateSceneTransaction *)self settings];
  if ([settings isForeground] && -[FBSSceneTransitionContext _uikitShimming_isUISubclass](self->_transitionContext, "_uikitShimming_isUISubclass"))
  {
    waitsForSceneCommit = self->_waitsForSceneCommit;

    if (!waitsForSceneCommit)
    {
      goto LABEL_12;
    }

    settings = [(FBSSceneTransitionContext *)self->_transitionContext watchdogTransitionContext];
    watchdogBehavior = [settings watchdogBehavior];
    if (watchdogBehavior <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = watchdogBehavior;
    }

    [settings setWatchdogBehavior:v7];
    if ([(FBUpdateSceneTransaction *)self isAuditHistoryEnabled])
    {
      v8 = NSStringFromFBWatchdogBehavior(v7);
      [(FBUpdateSceneTransaction *)self _addAuditHistoryItem:@"Updating scene with watchdog policy: %@", v8];
    }
  }

LABEL_12:
  updateCopy[2]();
  scene = [(FBUpdateSceneTransaction *)self scene];
  [scene addObserver:self];

  animationFence = [(FBSSceneTransitionContext *)self->_transitionContext animationFence];
  [animationFence invalidate];
}

- (void)_childTransactionDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = completeCopy;
  if (self->_destructionTransaction == completeCopy)
  {
    if (([(FBWaitForSceneDestructionTransaction *)completeCopy isFailed]& 1) == 0 && ([(FBWaitForSceneDestructionTransaction *)v5 isInterrupted]& 1) == 0)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  if (self->_sceneID)
  {
    sceneID = self->_sceneID;
  }

  else
  {
    sceneID = @"(none)";
  }

  [dictionary setObject:sceneID forKey:@"SceneID"];
  settings = [(FBUpdateSceneTransaction *)self settings];

  if (settings)
  {
    settings2 = [(FBUpdateSceneTransaction *)self settings];
    if ([settings2 isForeground])
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

- (void)_noteDidCommit:(BOOL)commit
{
  if (commit)
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

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  [invalidateCopy removeObserver:self];
  self->_destroyed = 1;
  invalidateCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scene destroyed: %@", invalidateCopy];

  [(FBUpdateSceneTransaction *)self _failWithReason:@"scene update failed" description:invalidateCopy];
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
    NSStringFromSelector(self);
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