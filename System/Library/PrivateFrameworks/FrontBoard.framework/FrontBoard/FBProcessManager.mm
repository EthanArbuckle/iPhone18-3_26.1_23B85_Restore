@interface FBProcessManager
+ (id)_sharedInstanceCreateIfNeeded:(BOOL)needed;
- (FBApplicationProcess)systemApplicationProcess;
- (FBProcessManager)init;
- (NSString)description;
- (id)_bootstrapProcessWithExecutionContext:(id)context synchronously:(BOOL)synchronously error:(id *)error;
- (id)_bootstrapProcessWithHandle:(id)handle synchronously:(BOOL)synchronously error:(id *)error;
- (id)_reallyRegisterProcessForHandle:(id)handle;
- (id)allApplicationProcesses;
- (id)allProcesses;
- (id)applicationProcessesForBundleIdentifier:(id)identifier;
- (id)incomingWorkspaceEndpoint;
- (id)legacySceneManagerCreatingIfNecessary:(BOOL)necessary;
- (id)processForIdentity:(id)identity;
- (id)processForVersionedPID:(int64_t)d;
- (id)processesForBundleIdentifier:(id)identifier;
- (id)registerProcessForAuditToken:(id *)token;
- (id)registerProcessForHandle:(id)handle;
- (id)syncLocalSceneClientProvider;
- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context;
- (void)_bootstrap_consumeLock_addProcess:(id)process;
- (void)_bootstrap_consumeLock_addProcess:(id)process synchronously:(BOOL)synchronously;
- (void)_initWithWorkspaceDomain:(void *)domain;
- (void)_noteShellInitializationComplete;
- (void)_notifyObserversUsingBlock:(id)block completion:(id)completion;
- (void)_removeProcess:(id)process;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)domain:(id)domain didReceiveConnection:(id)connection withContext:(id)context;
- (void)launchProcessWithContext:(id)context;
- (void)noteProcessAssertionStateDidChange:(id)change;
- (void)removeObserver:(id)observer;
@end

@implementation FBProcessManager

- (id)incomingWorkspaceEndpoint
{
  domain = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
  endpointPromise = [(FBWorkspaceDomain *)domain endpointPromise];
  endpoint = [(FBWorkspaceEndpointPromise *)endpointPromise endpoint];

  return endpoint;
}

- (id)allProcesses
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_lock_processesByPID allValues];
  v4 = [allValues copy];

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (FBApplicationProcess)systemApplicationProcess
{
  if ([(FBProcess *)self->_currentProcess isApplicationProcess])
  {
    v3 = self->_currentProcess;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_sharedInstanceCreateIfNeeded:(BOOL)needed
{
  if (needed)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__FBProcessManager__sharedInstanceCreateIfNeeded___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (_sharedInstanceCreateIfNeeded__onceToken != -1)
    {
      dispatch_once(&_sharedInstanceCreateIfNeeded__onceToken, block);
    }
  }

  v3 = atomic_load(&_sharedInstanceCreateIfNeeded____SharedManager);

  return v3;
}

void __50__FBProcessManager__sharedInstanceCreateIfNeeded___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [FBWorkspaceDomain alloc];
  v3 = [MEMORY[0x1E699FCC0] _sharedInstance];
  v4 = [MEMORY[0x1E699FCB8] _findDomainSpecification];
  v5 = [(FBWorkspaceDomain *)v2 _initWithCoupler:v3 specification:v4];

  v6 = [(FBWorkspaceDomain *)v5 selfAssertRuntime];
  if (v6)
  {
    v7 = v6;
    v8 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromFBWorkspaceDomainSelfAssertRuntime(v7);
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "This process will acquire %{public}@ workspace self-assertions.", &v12, 0xCu);
    }
  }

  v10 = [(FBProcessManager *)objc_alloc(*(a1 + 32)) _initWithWorkspaceDomain:v5];
  atomic_store(v10, &_sharedInstanceCreateIfNeeded____SharedManager);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_initWithWorkspaceDomain:(void *)domain
{
  v3 = a2;
  v4 = v3;
  if (domain)
  {
    v5 = v3;
    if (!v5)
    {
      [FBProcessManager _initWithWorkspaceDomain:?];
    }

    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(FBProcessManager *)v6 _initWithWorkspaceDomain:domain];
    }

    v64.receiver = domain;
    v64.super_class = FBProcessManager;
    domain = objc_msgSendSuper2(&v64, sel_init);
    if (domain)
    {
      v7 = [[FBWorkspaceEventDispatcher alloc] _initWithDomain:v6];
      v8 = domain[1];
      domain[1] = v7;

      concurrent = [MEMORY[0x1E698E698] concurrent];
      v10 = BSDispatchQueueCreate();
      v11 = domain[5];
      domain[5] = v10;

      serial = [MEMORY[0x1E698E698] serial];
      v13 = [serial serviceClass:33];
      v14 = BSDispatchQueueCreate();
      v15 = domain[6];
      domain[6] = v14;

      *(domain + 28) = 0;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v17 = domain[15];
      domain[15] = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v19 = domain[16];
      domain[16] = dictionary2;

      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v21 = domain[17];
      domain[17] = dictionary3;

      v22 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
      v23 = domain[18];
      domain[18] = v22;

      *(domain + 18) = 0;
      v24 = [MEMORY[0x1E695DFA8] set];
      v25 = domain[10];
      domain[10] = v24;

      v26 = [MEMORY[0x1E695DFA8] set];
      v27 = domain[11];
      domain[11] = v26;

      v28 = +[FBApplicationProcessWatchdogPolicy defaultPolicy];
      v29 = domain[13];
      domain[13] = v28;

      currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
      if (!currentProcess)
      {
        [FBProcessManager _initWithWorkspaceDomain:?];
      }

      v31 = currentProcess;
      identity = [currentProcess identity];
      if (!identity)
      {
        [(FBProcessManager *)v31 _initWithWorkspaceDomain:?];
      }

      v33 = identity;
      v34 = objc_opt_class();
      if (!v34)
      {
        [(FBProcessManager *)v31 _initWithWorkspaceDomain:?];
      }

      v35 = [[v34 alloc] _initWithProcessManager:domain identity:v33 handle:v31 executionContext:0];
      v36 = domain[3];
      domain[3] = v35;

      v37 = domain[3];
      if (!v37)
      {
        [FBProcessManager _initWithWorkspaceDomain:?];
      }

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __45__FBProcessManager__initWithWorkspaceDomain___block_invoke;
      v62[3] = &unk_1E783CF80;
      domainCopy = domain;
      v63 = domainCopy;
      [v37 bootstrapLock:v62];
      v39 = domain[15];
      v40 = domain[3];
      v41 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      [v39 setObject:v40 forKey:v41];

      v42 = domain[16];
      v43 = domain[3];
      v44 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v43, "versionedPID")}];
      [v42 setObject:v43 forKey:v44];

      v45 = domain[17];
      v46 = [MEMORY[0x1E695DF70] arrayWithObject:domain[3]];
      identity2 = [domain[3] identity];
      [v45 setObject:v46 forKey:identity2];

      objc_initWeak(&location, domainCopy);
      v48 = MEMORY[0x1E69C75F8];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __45__FBProcessManager__initWithWorkspaceDomain___block_invoke_2;
      v58[3] = &unk_1E783CFD0;
      v49 = v6;
      v59 = v49;
      objc_copyWeak(&v60, &location);
      v50 = [v48 monitorWithConfiguration:v58];
      v51 = domainCopy[7];
      domainCopy[7] = v50;

      domain = [(FBWorkspaceEventDispatcher *)domain[1] domain];
      v52Domain = [(FBWorkspaceEventDispatcher *)domain domain];
      LOBYTE(v46) = [v52Domain _isSharedInstance];

      if (v46)
      {
        domainCopy = @"FBProcessManager-sharedInstance";
      }

      else
      {
        domainCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBProcessManager-%p", domainCopy];
      }

      domain = domainCopy;
      v55 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
      v56 = domain[8];
      domain[8] = v55;

      [(FBWorkspaceDomain *)v49 setIndirectConnectionDelegate:domain];
      objc_destroyWeak(&v60);

      objc_destroyWeak(&location);
    }
  }

  return domain;
}

- (FBProcessManager)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBProcessManager"];
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
    v16 = @"FBProcessManager.m";
    v17 = 1024;
    v18 = 117;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __45__FBProcessManager__initWithWorkspaceDomain___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69C7630]);
  [v4 setValues:3];
  [v3 setServiceClass:25];
  [v3 setStateDescriptor:v4];
  if ([(FBWorkspaceDomain *)*(a1 + 32) monitorAllSuspendableProcesses])
  {
    v5 = [MEMORY[0x1E69C7610] predicateMatchingSuspendableProcesses];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v3 setPredicates:v6];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__FBProcessManager__initWithWorkspaceDomain___block_invoke_3;
  v8[3] = &unk_1E783CFA8;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setUpdateHandler:v8];
  objc_destroyWeak(&v9);

  v7 = *MEMORY[0x1E69E9840];
}

void __45__FBProcessManager__initWithWorkspaceDomain___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    [v6 auditToken];
  }

  v9 = [WeakRetained processForVersionedPID:BSVersionedPIDForAuditToken()];

  if (v9)
  {
    [v9 _noteStateDidUpdate:v7];
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call _invalidateWithCompletion: before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_lock_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_lock_observers addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_lock_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_lock_observers removeObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)processForVersionedPID:(int64_t)d
{
  if (d == -1)
  {
    v7 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    lock_processesByVersionedPID = self->_lock_processesByVersionedPID;
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    v7 = [(NSMutableDictionary *)lock_processesByVersionedPID objectForKey:v6];

    if (!v7)
    {
      lock_processesByPID = self->_lock_processesByPID;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:d];
      v7 = [(NSMutableDictionary *)lock_processesByPID objectForKey:v9];

      if (v7)
      {
        v10 = FBLogProcess();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [FBProcessManager processForVersionedPID:];
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v7;
}

- (id)processForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_processesByIdentity objectForKey:identityCopy];

  lastObject = [v5 lastObject];

  os_unfair_lock_unlock(&self->_lock);

  return lastObject;
}

- (NSString)description
{
  allProcesses = [(FBProcessManager *)self allProcesses];
  v4 = [allProcesses sortedArrayUsingComparator:&__block_literal_global_89];

  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 appendArraySection:v4 withName:@"processes" skipIfEmpty:0];
  build = [v5 build];

  return build;
}

uint64_t __31__FBProcessManager_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 pid];
  v5 = [v4 pid];

  if (a2 < v5)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (id)allApplicationProcesses
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_lock_processesByPID objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isApplicationProcess])
        {
          [array addObject:v9];
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)processesForBundleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allProcesses = [(FBProcessManager *)self allProcesses];
  v7 = [allProcesses countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allProcesses);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        v13 = [bundleIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [allProcesses countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)applicationProcessesForBundleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allProcesses = [(FBProcessManager *)self allProcesses];
  v7 = [allProcesses countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allProcesses);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isApplicationProcess])
        {
          bundleIdentifier = [v11 bundleIdentifier];
          v13 = [bundleIdentifier isEqualToString:identifierCopy];

          if (v13)
          {
            [array addObject:v11];
          }
        }
      }

      v8 = [allProcesses countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)registerProcessForAuditToken:(id *)token
{
  v6 = *&token->var0[4];
  v28 = *token->var0;
  v29 = v6;
  v7 = BSVersionedPIDForAuditToken();
  if (v7 == -1)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v8 = v7;
  v9 = [(FBProcessManager *)self processForVersionedPID:v7];
  if (v9)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  v10 = objc_opt_respondsToSelector();
  v11 = MEMORY[0x1E69C75D0];
  if (v10)
  {
    v27 = 0;
    v12 = *&token->var0[4];
    v28 = *token->var0;
    v29 = v12;
    v13 = [MEMORY[0x1E69C75D0] handleForAuditToken:&v28 error:&v27];
    v14 = v27;
    if (v13)
    {
      [v13 auditToken];
      if (v8 != BSVersionedPIDForAuditToken())
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = NSStringFromBSVersionedPID();
        v25 = NSStringFromBSVersionedPID();
        v19 = [v23 stringWithFormat:@"handleForAudiToken: returned a mismatched vpid : requested=%@ actual=%@ handle=%@", v24, v25, v13];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBProcessManager registerProcessForAuditToken:a2];
        }

LABEL_30:
        [v19 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A2D848);
      }

      v15 = [(FBProcessManager *)self _reallyRegisterProcessForHandle:v13];
      if (v15)
      {
        v9 = v15;
        if (v8 != [v15 versionedPID])
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = NSStringFromBSVersionedPID();
          v18 = NSStringFromBSVersionedPID();
          v19 = [v16 stringWithFormat:@"_reallyRegisterProcessForHandle: returned a mismatched vpid : requested=%@ actual=%@ handle=%@", v17, v18, v9];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [FBProcessManager registerProcessForAuditToken:a2];
          }

          goto LABEL_30;
        }

        goto LABEL_24;
      }

      v21 = FBLogProcess();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FBProcessManager registerProcessForAuditToken:];
      }
    }

    else
    {
      v21 = FBLogProcess();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(FBProcessManager *)v8 registerProcessForAuditToken:v14];
      }
    }

    goto LABEL_22;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v26 = 0;
  v13 = [v11 handleForIdentifier:v20 error:&v26];
  v14 = v26;

  if (!v13)
  {
    v21 = FBLogProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FBProcessManager registerProcessForAuditToken:v14];
    }

LABEL_22:
    v9 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v9 = [(FBProcessManager *)self _reallyRegisterProcessForHandle:v13];
  if (v8 != [v9 versionedPID])
  {
    v21 = FBLogProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FBProcessManager registerProcessForAuditToken:];
    }

    goto LABEL_23;
  }

LABEL_24:

LABEL_25:

  return v9;
}

- (id)registerProcessForHandle:(id)handle
{
  auditToken = [handle auditToken];
  v5 = auditToken;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [(FBProcessManager *)self registerProcessForAuditToken:v8];

  return v6;
}

- (void)launchProcessWithContext:(id)context
{
  contextCopy = context;
  identity = [contextCopy identity];

  if (!identity)
  {
    [FBProcessManager launchProcessWithContext:a2];
  }

  v7 = [contextCopy copy];

  bootstrapQueue = self->_bootstrapQueue;
  v11 = v7;
  v9 = v7;
  v10 = BSDispatchBlockCreateWithCurrentQualityOfService();
  dispatch_async(bootstrapQueue, v10);
}

- (id)legacySceneManagerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_legacySceneManager;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !necessaryCopy;
  }

  if (!v6)
  {
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock(&self->_lock);
    lock_legacySceneManager = self->_lock_legacySceneManager;
    if (lock_legacySceneManager)
    {
      v5 = lock_legacySceneManager;
    }

    else
    {
      v8 = [[FBSceneManager alloc] _initWithProcessManager:self];
      v9 = self->_lock_legacySceneManager;
      self->_lock_legacySceneManager = v8;

      v10 = v8;
      v5 = v10;
      if (self->_lock_invalidated)
      {
        [(FBSceneManager *)v10 _invalidate];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (id)syncLocalSceneClientProvider
{
  os_unfair_lock_lock(&self->_lock);
  lock_syncLocalSceneClientProvider = self->_lock_syncLocalSceneClientProvider;
  if (!lock_syncLocalSceneClientProvider)
  {
    v4 = [FBLocalSynchronousSceneClientProvider alloc];
    domain = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    v5Domain = [(FBWorkspaceEventDispatcher *)domain domain];
    v7 = [(FBLocalSynchronousSceneClientProvider *)&v4->super.isa _initWithWorkspaceCoupler:v5Domain currentProcess:self->_currentProcess eventDispatcher:self->_eventDispatcher];
    v8 = self->_lock_syncLocalSceneClientProvider;
    self->_lock_syncLocalSceneClientProvider = v7;

    lock_syncLocalSceneClientProvider = self->_lock_syncLocalSceneClientProvider;
    if (self->_lock_invalidated)
    {
      [(FBLocalSynchronousSceneClientProvider *)lock_syncLocalSceneClientProvider _invalidate];
      lock_syncLocalSceneClientProvider = self->_lock_syncLocalSceneClientProvider;
    }
  }

  v9 = lock_syncLocalSceneClientProvider;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)_noteShellInitializationComplete
{
  callOutQueue = self->_callOutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__FBProcessManager__noteShellInitializationComplete__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_async(callOutQueue, block);
}

void __52__FBProcessManager__noteShellInitializationComplete__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 112));
  *(*(a1 + 32) + 160) = 1;
  v2 = [*(*(a1 + 32) + 120) allValues];
  v3 = [v2 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 112));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v8++) noteProcessPublished];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context
{
  contextCopy = context;
  processCopy = process;
  defaultWatchdogPolicy = [(FBProcessManager *)self defaultWatchdogPolicy];
  v9 = [defaultWatchdogPolicy watchdogPolicyForProcess:processCopy eventContext:contextCopy];

  return v9;
}

- (void)noteProcessAssertionStateDidChange:(id)change
{
  v54 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  domain = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
  selfAssertRuntime = [(FBWorkspaceDomain *)domain selfAssertRuntime];

  if (!selfAssertRuntime)
  {
    goto LABEL_25;
  }

  v8 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v46 = 0u;
  allProcesses = [(FBProcessManager *)self allProcesses];
  v10 = [allProcesses countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(allProcesses);
        }

        v8 = FBWorkspaceStateCombine(v8, [*(*(&v46 + 1) + 8 * v13++) workspaceState]);
      }

      while (v11 != v13);
      v11 = [allProcesses countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v11);
  }

  os_unfair_lock_lock(&self->_bootstrapLock);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = self->_bootstrap_pendingProcesses;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      v18 = 0;
      do
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v8 = FBWorkspaceStateCombine(v8, [*(*(&v42 + 1) + 8 * v18++) workspaceState]);
      }

      while (v16 != v18);
      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v16);
  }

  os_unfair_lock_unlock(&self->_bootstrapLock);
  v41 = v8;
  domain2 = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
  v20 = [(FBWorkspaceDomain *)domain2 selfAssertionAttributesForWorkspaceState:?];

  os_unfair_lock_lock(&self->_lock);
  lock_assertion = self->_lock_assertion;
  if (self->_lock_invalidated)
  {
    if (lock_assertion)
    {
      [FBProcessManager noteProcessAssertionStateDidChange:a2];
    }

    goto LABEL_20;
  }

  fb_workspaceState = [(RBSAssertion *)lock_assertion fb_workspaceState];
  if (FBWorkspaceStateEqual(v41, fb_workspaceState))
  {
LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  v26 = FBLogProcessWorkspace();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = NSStringFromFBWorkspaceState(v41);
    *buf = 138543362;
    v51 = v27;
    _os_log_impl(&dword_1A89DD000, v26, OS_LOG_TYPE_DEFAULT, "Updating self-assertion for unified workspace priority: %{public}@", buf, 0xCu);
  }

  v23 = self->_lock_assertion;
  v28 = self->_lock_assertion;
  self->_lock_assertion = 0;

  if (v20)
  {
    selfCopy = self;
    v30 = objc_alloc(MEMORY[0x1E69C7548]);
    currentProcess = [MEMORY[0x1E69C7640] currentProcess];
    v24 = [v30 initWithExplanation:@"FBWorkspace Self-Assert" target:currentProcess attributes:v20];
    v32 = self->_lock_assertion;
    self->_lock_assertion = v24;

    [(RBSAssertion *)self->_lock_assertion fb_setWorkspaceState:v41];
    v33 = self->_lock_assertion;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __55__FBProcessManager_noteProcessAssertionStateDidChange___block_invoke;
    v39[3] = &unk_1E783D040;
    v40 = selfCopy;
    v34 = selfCopy;
    [(RBSAssertion *)v33 setInvalidationHandler:v39];

    os_unfair_lock_unlock(&self->_lock);
    if (v24)
    {
      v38 = 0;
      v35 = [(RBSAssertion *)v24 acquireWithError:&v38];
      v36 = v38;
      if ((v35 & 1) == 0)
      {
        v37 = FBLogProcessWorkspace();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [FBProcessManager noteProcessAssertionStateDidChange:v36];
        }
      }
    }

    goto LABEL_22;
  }

LABEL_21:
  os_unfair_lock_unlock(&self->_lock);
  v24 = 0;
LABEL_22:
  if (v23)
  {
    [(RBSAssertion *)v23 invalidate];
  }

LABEL_25:
  v25 = *MEMORY[0x1E69E9840];
}

void __55__FBProcessManager_noteProcessAssertionStateDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = FBLogProcessWorkspace();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __55__FBProcessManager_noteProcessAssertionStateDidChange___block_invoke_cold_1(v5);
  }

  os_unfair_lock_lock((*(a1 + 32) + 112));
  v8 = *(a1 + 32);
  v9 = *(v8 + 152);

  if (v9 == v6)
  {
    [v9 invalidate];
    v10 = *(a1 + 32);
    v11 = *(v10 + 152);
    *(v10 + 152) = 0;

    os_unfair_lock_unlock((*(a1 + 32) + 112));
    v12 = dispatch_time(0, 1000000000);
    v13 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__FBProcessManager_noteProcessAssertionStateDidChange___block_invoke_118;
    block[3] = &unk_1E783B580;
    v15 = *(a1 + 32);
    dispatch_after(v12, v13, block);
  }

  else
  {
    os_unfair_lock_unlock((v8 + 112));
  }
}

- (void)domain:(id)domain didReceiveConnection:(id)connection withContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  remoteToken = [connectionCopy remoteToken];
  v8 = remoteToken;
  if (remoteToken)
  {
    [remoteToken realToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v9 = [(FBProcessManager *)self registerProcessForAuditToken:v17];
  v10 = v9;
  if (v9)
  {
    workspace = [v9 workspace];
    v12 = FBLogProcessWorkspace();
    v13 = v12;
    if (workspace)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        workspace2 = [v10 workspace];
        LODWORD(v17[0]) = 134218242;
        *(v17 + 4) = workspace2;
        WORD6(v17[0]) = 2114;
        *(v17 + 14) = v10;
        _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_INFO, "FBWorkspaceDomain: Assigning new workspace connection to workspace (%p) owned by process: %{public}@", v17, 0x16u);
      }

      [(FBWorkspace *)workspace _setIncomingConnection:connectionCopy];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [FBProcessManager domain:didReceiveConnection:withContext:];
      }

      [connectionCopy invalidate];
    }
  }

  else
  {
    v15 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FBProcessManager domain:didReceiveConnection:withContext:];
    }

    [connectionCopy invalidate];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_reallyRegisterProcessForHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy)
  {
    NSClassFromString(&cfstr_Rbsprocesshand_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBProcessManager _reallyRegisterProcessForHandle:a2];
    }

    identity = [handleCopy identity];
    hostIdentifier = [identity hostIdentifier];
    v8 = hostIdentifier;
    if (hostIdentifier)
    {
      v9 = -[FBProcessManager processForPID:](self, "processForPID:", [hostIdentifier pid]);

      if (!v9)
      {
        objc_opt_class();
        if (objc_opt_respondsToSelector())
        {
          [MEMORY[0x1E69C75D0] forceLookupIdentifer:v8 error:0];
        }

        else
        {
          [MEMORY[0x1E69C75D0] handleForIdentifier:v8 error:0];
        }
        v11 = ;
        v12 = [(FBProcessManager *)self _reallyRegisterProcessForHandle:v11];
      }
    }

    v10 = [(FBProcessManager *)self _bootstrapProcessWithHandle:handleCopy synchronously:1 error:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_bootstrapProcessWithExecutionContext:(id)context synchronously:(BOOL)synchronously error:(id *)error
{
  synchronouslyCopy = synchronously;
  v61 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    [FBProcessManager _bootstrapProcessWithExecutionContext:a2 synchronously:? error:?];
  }

  v10 = contextCopy;
  v11 = [contextCopy copy];

  completion = [v11 completion];
  [v11 setCompletion:0];
  identity = [v11 identity];
  v14 = identity;
  if (!identity || ![identity supportsLaunchingDirectly])
  {
    v20 = MEMORY[0x1E696ABC0];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_4;
    v48[3] = &unk_1E783BC58;
    v49 = v14;
    v19 = [v20 bs_errorWithDomain:@"FBProcessManager" code:1 configuration:v48];

    v17 = 0;
    goto LABEL_9;
  }

  os_unfair_lock_lock(&self->_bootstrapLock);
  v15 = FBLogProcess();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v59 = v14;
    _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "Asked to bootstrap a new process with identity: %{public}@", buf, 0xCu);
  }

  v16 = [(FBProcessManager *)self processForIdentity:v14];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0x1E696ABC0];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_3;
    v50[3] = &unk_1E783BC58;
    v51 = v14;
    v19 = [v18 bs_errorWithDomain:@"FBProcessManager" code:2 configuration:v50];
    os_unfair_lock_unlock(&self->_bootstrapLock);

    goto LABEL_9;
  }

  v39 = synchronouslyCopy;
  errorCopy = error;
  selfCopy = self;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = self->_bootstrap_pendingProcesses;
  v29 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v55;
LABEL_27:
    v32 = 0;
    while (1)
    {
      if (*v55 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v54 + 1) + 8 * v32);
      identity2 = [v33 identity];
      v35 = [identity2 isEqual:v14];

      if (v35)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v30)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

    v17 = v33;

    if (!v17)
    {
      goto LABEL_36;
    }

    v36 = MEMORY[0x1E696ABC0];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_2;
    v52[3] = &unk_1E783BC58;
    v53 = v14;
    v19 = [v36 bs_errorWithDomain:@"FBProcessManager" code:2 configuration:v52];

    error = errorCopy;
    self = selfCopy;
    goto LABEL_41;
  }

LABEL_33:

LABEL_36:
  error = errorCopy;
  self = selfCopy;
  if (selfCopy->_bootstrapLock_invalidated)
  {
    v37 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBProcessManager" code:3 configuration:&__block_literal_global_135];
  }

  else
  {
    v38 = FBLogProcess();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v59 = v39;
      *&v59[4] = 2114;
      *&v59[6] = v14;
      _os_log_impl(&dword_1A89DD000, v38, OS_LOG_TYPE_DEFAULT, "Creating process (sync=%{BOOL}u) with identity: %{public}@", buf, 0x12u);
    }

    v17 = [objc_alloc(objc_msgSend(v14 "fb_processClass"))];
    [(NSMutableSet *)selfCopy->_bootstrap_pendingProcesses addObject:v17];
    v19 = 0;
    v37 = 0;
    if (v17)
    {
LABEL_41:
      [(FBProcessManager *)self _bootstrap_consumeLock_addProcess:v17 synchronously:v39];
      goto LABEL_9;
    }
  }

  os_unfair_lock_unlock(&selfCopy->_bootstrapLock);
  v17 = 0;
  v19 = v37;
LABEL_9:
  if (completion)
  {
    if (!v17)
    {
      v23 = +[FBProcess calloutQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_6;
      block[3] = &unk_1E783C368;
      v44 = completion;
      v24 = v19;
      v43 = v24;
      dispatch_async(v23, block);

      if (!v24)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_5;
    v45[3] = &unk_1E783D068;
    v47 = completion;
    v46 = v19;
    [v17 _executeBlockAfterBootstrap:v45];
  }

  if (!v19)
  {
    goto LABEL_20;
  }

  if (!v17)
  {
LABEL_17:
    v21 = FBLogProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FBProcessManager _bootstrapProcessWithExecutionContext:v19 synchronously:? error:?];
    }

    goto LABEL_19;
  }

  v21 = FBLogProcess();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    localizedFailureReason = [v19 localizedFailureReason];
    *buf = 138543362;
    *v59 = localizedFailureReason;
    _os_log_impl(&dword_1A89DD000, v21, OS_LOG_TYPE_DEFAULT, "Did not create a new process: %{public}@", buf, 0xCu);
  }

LABEL_19:

LABEL_20:
  if (error)
  {
    v25 = v19;
    *error = v19;
  }

  os_unfair_lock_assert_not_owner(&self->_bootstrapLock);

  v26 = *MEMORY[0x1E69E9840];

  return v17;
}

void __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFailureDescription:@"Ignoring execution context."];
  [v2 setFailureReason:@"ProcessManager has been invalidated."];
  [v2 setCodeDescription:@"invalidated"];
}

void __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Ignoring execution context."];
  [v3 setFailureReason:{@"A pending process for %@ already exists.", *(a1 + 32)}];
  [v3 setCodeDescription:@"already-exists"];
}

void __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Ignoring execution context."];
  [v3 setFailureReason:{@"A process for %@ already exists.", *(a1 + 32)}];
  [v3 setCodeDescription:@"already-exists"];
}

void __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Ignoring execution context."];
  [v3 setFailureReason:{@"RunningBoard does not support directly launching %@", *(a1 + 32)}];
  [v3 setCodeDescription:@"not-supported"];
}

uint64_t __78__FBProcessManager__bootstrapProcessWithExecutionContext_synchronously_error___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    a3 = *(a1 + 32);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3);
}

- (id)_bootstrapProcessWithHandle:(id)handle synchronously:(BOOL)synchronously error:(id *)error
{
  synchronouslyCopy = synchronously;
  v60 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (!handleCopy)
  {
    [FBProcessManager _bootstrapProcessWithHandle:a2 synchronously:? error:?];
  }

  v10 = handleCopy;
  [handleCopy auditToken];
  v11 = BSVersionedPIDForAuditToken();
  if (v11 != -1)
  {
    v12 = v11;
    os_unfair_lock_lock(&self->_bootstrapLock);
    v13 = FBLogProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v59 = v10;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "Asked to bootstrap a new process for handle: %{public}@", buf, 0xCu);
    }

    v14 = [(FBProcessManager *)self processForVersionedPID:v12];
    if (v14)
    {
      v15 = v14;
      v16 = FBLogProcess();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v59 = v15;
        _os_log_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_DEFAULT, "A process already exists for this handle: %{public}@", buf, 0xCu);
      }

      v17 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A588];
      v52 = @"A process already exists for this handle.";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v19 = [v17 errorWithDomain:@"FBProcessManager" code:2 userInfo:v18];

      os_unfair_lock_unlock(&self->_bootstrapLock);
      if (!error)
      {
        goto LABEL_10;
      }

LABEL_9:
      v20 = v19;
      *error = v19;
LABEL_10:
      os_unfair_lock_assert_not_owner(&self->_bootstrapLock);
LABEL_15:

      goto LABEL_16;
    }

    v43 = synchronouslyCopy;
    errorCopy = error;
    identity = [v10 identity];
    if (!identity)
    {
      [FBProcessManager _bootstrapProcessWithHandle:v10 synchronously:a2 error:?];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v25 = self->_bootstrap_pendingProcesses;
    v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v48;
LABEL_22:
      v29 = 0;
      while (1)
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v47 + 1) + 8 * v29);
        versionedPID = [v30 versionedPID];
        if (v12 == versionedPID)
        {
          break;
        }

        if (versionedPID == -1)
        {
          identity2 = [v30 identity];
          v33 = [identity isEqual:identity2];

          if (v33)
          {
            break;
          }
        }

        if (v27 == ++v29)
        {
          v27 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v27)
          {
            goto LABEL_22;
          }

          goto LABEL_30;
        }
      }

      v15 = v30;

      if (!v15)
      {
        goto LABEL_35;
      }

      v34 = FBLogProcess();
      error = errorCopy;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v59 = v15;
        _os_log_impl(&dword_1A89DD000, v34, OS_LOG_TYPE_DEFAULT, "A pending process already exists for this handle: %{public}@", buf, 0xCu);
      }

      v35 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A588];
      v54 = @"A pending process already exists for this handle.";
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v19 = [v35 errorWithDomain:@"FBProcessManager" code:2 userInfo:v36];

      goto LABEL_41;
    }

LABEL_30:

LABEL_35:
    error = errorCopy;
    if (self->_bootstrapLock_invalidated)
    {
      v37 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBProcessManager" code:3 configuration:&__block_literal_global_166];
    }

    else
    {
      v38 = FBLogProcess();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v59 = v43;
        *&v59[4] = 2114;
        *&v59[6] = v10;
        _os_log_impl(&dword_1A89DD000, v38, OS_LOG_TYPE_DEFAULT, "Creating process (sync=%{BOOL}u) for handle: %{public}@", buf, 0x12u);
      }

      v15 = [objc_alloc(objc_msgSend(identity "fb_processClass"))];
      [(NSMutableSet *)self->_bootstrap_pendingProcesses addObject:v15];
      v19 = 0;
      v37 = 0;
      if (v15)
      {
LABEL_41:
        [(FBProcessManager *)self _bootstrap_consumeLock_addProcess:v15 synchronously:v43];
        if (v43 && v12 != [v15 versionedPID])
        {
          v39 = FBLogProcess();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = NSStringFromBSVersionedPID();
            *buf = 138543618;
            *v59 = v40;
            *&v59[8] = 2114;
            *&v59[10] = v15;
            _os_log_impl(&dword_1A89DD000, v39, OS_LOG_TYPE_DEFAULT, "resolved process does not match handle %{public}@: %{public}@", buf, 0x16u);
          }

          v46 = 0;
          v41 = [(FBProcessManager *)self _bootstrapProcessWithHandle:v10 synchronously:1 error:&v46];
          v42 = v46;

          v15 = v41;
          v19 = v42;
        }

LABEL_47:

        if (!error)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    os_unfair_lock_unlock(&self->_bootstrapLock);
    v15 = 0;
    v19 = v37;
    goto LABEL_47;
  }

  v21 = FBLogProcess();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [FBProcessManager _bootstrapProcessWithHandle:synchronously:error:];
  }

  if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A588];
    v57 = @"Specified process is not valid.";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [v22 errorWithDomain:@"FBProcessManager" code:1 userInfo:v19];
    *error = v15 = 0;
    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

void __68__FBProcessManager__bootstrapProcessWithHandle_synchronously_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFailureDescription:@"Ignoring execution context."];
  [v2 setFailureReason:@"ProcessManager has been invalidated."];
  [v2 setCodeDescription:@"invalidated"];
}

- (void)_bootstrap_consumeLock_addProcess:(id)process synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  processCopy = process;
  if (!processCopy)
  {
    [FBProcessManager _bootstrap_consumeLock_addProcess:a2 synchronously:?];
  }

  v8 = processCopy;
  os_unfair_lock_assert_owner(&self->_bootstrapLock);
  if (synchronouslyCopy)
  {
    [(FBProcessManager *)self _bootstrap_consumeLock_addProcess:v8];
  }

  else
  {
    bootstrapQueue = self->_bootstrapQueue;
    v11 = v8;
    v10 = BSDispatchBlockCreateWithCurrentQualityOfService();
    dispatch_async(bootstrapQueue, v10);

    os_unfair_lock_unlock(&self->_bootstrapLock);
  }

  os_unfair_lock_assert_not_owner(&self->_bootstrapLock);
}

uint64_t __68__FBProcessManager__bootstrap_consumeLock_addProcess_synchronously___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _bootstrap_consumeLock_addProcess:v3 synchronously:1];
}

- (void)_bootstrap_consumeLock_addProcess:(id)process
{
  processCopy = process;
  if (!processCopy)
  {
    [FBProcessManager _bootstrap_consumeLock_addProcess:a2];
  }

  v6 = processCopy;
  os_unfair_lock_assert_owner(&self->_bootstrapLock);
  if ([(NSMutableSet *)self->_bootstrap_bootstrappingProcesses containsObject:v6])
  {
    os_unfair_lock_unlock(&self->_bootstrapLock);
    [v6 bootstrapLock:0];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__FBProcessManager__bootstrap_consumeLock_addProcess___block_invoke;
    v7[3] = &unk_1E783D0E0;
    v7[4] = self;
    v8 = v6;
    [v8 bootstrapLock:v7];
    os_unfair_lock_assert_not_owner(&self->_bootstrapLock);
  }
}

void __54__FBProcessManager__bootstrap_consumeLock_addProcess___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 88);
  v5 = a2;
  [v4 addObject:v3];
  os_unfair_lock_unlock((*(a1 + 32) + 72));
  LODWORD(v3) = [v5 bootstrapWithDelegate:*(a1 + 32)];

  os_unfair_lock_lock((*(a1 + 32) + 72));
  [*(*(a1 + 32) + 80) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
  if (v3)
  {
    v6 = FBLogProcess();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v44 = v7;
      _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, "Adding: %{public}@", buf, 0xCu);
    }

    os_unfair_lock_lock((*(a1 + 32) + 112));
    v8 = [*(a1 + 40) identity];
    v9 = [*(*(a1 + 32) + 136) objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      [v9 addObject:*(a1 + 40)];
    }

    else
    {
      v13 = *(*(a1 + 32) + 136);
      v14 = [MEMORY[0x1E695DF70] arrayWithObject:*(a1 + 40)];
      [v13 setObject:v14 forKey:v8];
    }

    v15 = [*(a1 + 40) pid];
    if (v15 >= 1)
    {
      v16 = *(a1 + 40);
      v17 = *(*(a1 + 32) + 120);
      v18 = [MEMORY[0x1E696AD98] numberWithInt:v15];
      [v17 setObject:v16 forKey:v18];
    }

    v19 = [*(a1 + 40) versionedPID];
    if (v19 != -1)
    {
      v20 = *(a1 + 40);
      v21 = *(*(a1 + 32) + 128);
      v22 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
      [v21 setObject:v20 forKey:v22];
    }

    v23 = *(a1 + 32);
    if (*(v23 + 162))
    {
      goto LABEL_15;
    }

    v25 = [(FBWorkspaceEventDispatcher *)*(v23 + 8) domain];
    if (([(FBWorkspaceDomain *)v25 monitorAllSuspendableProcesses]& 1) != 0)
    {
      goto LABEL_17;
    }

    v31 = [*(a1 + 40) rbsHandle];
    v32 = [v31 fb_canTaskSuspend];

    if (!v32)
    {
LABEL_15:
      v24 = 0;
LABEL_19:
      v26 = *(a1 + 32);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __54__FBProcessManager__bootstrap_consumeLock_addProcess___block_invoke_179;
      v41[3] = &unk_1E783D090;
      v41[4] = v26;
      v42 = *(a1 + 40);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __54__FBProcessManager__bootstrap_consumeLock_addProcess___block_invoke_2;
      v39[3] = &unk_1E783B240;
      v27 = *(a1 + 40);
      v39[4] = *(a1 + 32);
      v40 = v27;
      [v26 _notifyObserversUsingBlock:v41 completion:v39];
      os_unfair_lock_unlock((*(a1 + 32) + 112));
      v28 = *(a1 + 32);
      if (v24)
      {
        os_unfair_lock_lock(v28 + 19);
        os_unfair_lock_unlock((*(a1 + 32) + 72));
        v29 = *(*(a1 + 32) + 56);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __54__FBProcessManager__bootstrap_consumeLock_addProcess___block_invoke_3;
        v37[3] = &unk_1E783D0B8;
        v38 = v24;
        [v29 updateConfiguration:v37];
        os_unfair_lock_unlock((*(a1 + 32) + 76));
      }

      else
      {
        os_unfair_lock_unlock(v28 + 18);
      }

      v30 = *MEMORY[0x1E69E9840];
      return;
    }

    v25 = [*(a1 + 40) processPredicate];
    if (!v25 || ([*(*(a1 + 32) + 96) containsObject:v25] & 1) != 0)
    {
LABEL_17:
      v24 = 0;
    }

    else
    {
      v33 = *(*(a1 + 32) + 96);
      if (v33)
      {
        [v33 addObject:v25];
      }

      else
      {
        v34 = [MEMORY[0x1E695DFA8] setWithObject:v25];
        v35 = *(a1 + 32);
        v36 = *(v35 + 96);
        *(v35 + 96) = v34;
      }

      v24 = [*(*(a1 + 32) + 96) allObjects];
    }

    goto LABEL_19;
  }

  v11 = *MEMORY[0x1E69E9840];
  v12 = (*(a1 + 32) + 72);

  os_unfair_lock_unlock(v12);
}

void __54__FBProcessManager__bootstrap_consumeLock_addProcess___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 112));
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  os_unfair_lock_unlock((v2 + 112));
  if (v3 == 1)
  {
    v4 = *(a1 + 40);

    [v4 noteProcessPublished];
  }
}

- (void)_removeProcess:(id)process
{
  v31 = *MEMORY[0x1E69E9840];
  processCopy = process;
  if (!processCopy)
  {
    [FBProcessManager _removeProcess:a2];
  }

  v6 = processCopy;
  [processCopy bootstrapLock:&__block_literal_global_182];
  v7 = FBLogProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "Removing: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_bootstrapLock);
  os_unfair_lock_lock(&self->_lock);
  identity = [v6 identity];
  if (identity)
  {
    lock_processesByIdentity = self->_lock_processesByIdentity;
    identity2 = [v6 identity];
    v11 = [(NSMutableDictionary *)lock_processesByIdentity objectForKey:identity2];

    if ([v11 containsObject:v6])
    {
      if ([v11 count] == 1)
      {
        [(NSMutableDictionary *)self->_lock_processesByIdentity removeObjectForKey:identity];
      }

      else
      {
        [v11 removeObject:v6];
      }
    }
  }

  v12 = [v6 pid];
  if (v12 >= 1)
  {
    lock_processesByPID = self->_lock_processesByPID;
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v12];
    [(NSMutableDictionary *)lock_processesByPID removeObjectForKey:v14];
  }

  if (self->_bootstrapLock_invalidated || ([(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(FBWorkspaceDomain *)v15 monitorAllSuspendableProcesses], v15, (v16 & 1) != 0))
  {
    allObjects = 0;
  }

  else
  {
    processPredicate = [v6 processPredicate];
    if (processPredicate && [(NSMutableSet *)self->_bootstrap_processPredicates containsObject:processPredicate])
    {
      [(NSMutableSet *)self->_bootstrap_processPredicates removeObject:processPredicate];
      allObjects = [(NSMutableSet *)self->_bootstrap_processPredicates allObjects];
    }

    else
    {
      allObjects = 0;
    }
  }

  versionedPID = [v6 versionedPID];
  if (versionedPID != -1)
  {
    lock_processesByVersionedPID = self->_lock_processesByVersionedPID;
    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:versionedPID];
    [(NSMutableDictionary *)lock_processesByVersionedPID removeObjectForKey:v21];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (allObjects)
  {
    os_unfair_lock_lock(&self->_bootstrapPredicatesLock);
    os_unfair_lock_unlock(&self->_bootstrapLock);
    processMonitor = self->_processMonitor;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __35__FBProcessManager__removeProcess___block_invoke_183;
    v27[3] = &unk_1E783D0B8;
    v28 = allObjects;
    [(RBSProcessMonitor *)processMonitor updateConfiguration:v27];
    os_unfair_lock_unlock(&self->_bootstrapPredicatesLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_bootstrapLock);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __35__FBProcessManager__removeProcess___block_invoke_2;
  v25[3] = &unk_1E783D090;
  v25[4] = self;
  v26 = v6;
  v23 = v6;
  [(FBProcessManager *)self _notifyObserversUsingBlock:v25 completion:0];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversUsingBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  callOutQueue = self->_callOutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FBProcessManager__notifyObserversUsingBlock_completion___block_invoke;
  block[3] = &unk_1E783D128;
  block[4] = self;
  v12 = blockCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = blockCopy;
  dispatch_async(callOutQueue, block);
}

void __58__FBProcessManager__notifyObserversUsingBlock_completion___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1[4] + 112));
  v2 = [*(a1[4] + 144) copy];
  os_unfair_lock_unlock((a1[4] + 112));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        (*(a1[5] + 16))(a1[5]);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_initWithWorkspaceDomain:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"workspaceDomain", v7, v9];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    v20 = a3;
    v21 = 2114;
    v22 = @"FBProcessManager.m";
    v23 = 1024;
    v24 = 122;
    v25 = 2114;
    v26 = v10;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v14 = v10;
  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceDomain:(char *)a1 .cold.2(char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must have a current process."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceDomain:(uint64_t)a1 .cold.3(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown processClass for currentProcessHandle : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceDomain:(uint64_t)a1 .cold.4(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RunningBoard returned a currentProcess with no identity : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceDomain:(char *)a1 .cold.5(char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to communicate with RunningBoard"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceDomain:(const char *)a1 .cold.6(const char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v14 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"workspaceDomain", v13, 2u);
  }

  v12 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)processForVersionedPID:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromBSVersionedPID();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerProcessForAuditToken:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromBSVersionedPID();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerProcessForAuditToken:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 succinctDescription];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerProcessForAuditToken:(const char *)a1 .cold.3(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerProcessForAuditToken:(const char *)a1 .cold.4(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerProcessForAuditToken:.cold.5()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromBSVersionedPID();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerProcessForAuditToken:(uint64_t)a1 .cold.6(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromBSVersionedPID();
  v10 = [a2 succinctDescription];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)launchProcessWithContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[context identity] != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteProcessAssertionStateDidChange:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)noteProcessAssertionStateDidChange:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must not have an assertion if we're invalidated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __55__FBProcessManager_noteProcessAssertionStateDidChange___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)domain:didReceiveConnection:withContext:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_ERROR, "FBWorkspaceDomain: Unable to assign new incoming connection to a process because its server was unable to be found for process=%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)domain:didReceiveConnection:withContext:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1A89DD000, v1, OS_LOG_TYPE_ERROR, "FBWorkspaceDomain: Unable to assign new incoming connection to a process because a process was unable to be found or created for connection=%@ with remoteToken=%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_reallyRegisterProcessForHandle:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:RBSProcessHandleClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_bootstrapProcessWithExecutionContext:(void *)a1 synchronously:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedFailureReason];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_bootstrapProcessWithExecutionContext:(char *)a1 synchronously:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"executionContext != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_bootstrapProcessWithHandle:(uint64_t)a1 synchronously:(char *)a2 error:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RunningBoard returned no identity for a processHandle : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_bootstrapProcessWithHandle:synchronously:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_ERROR, "Not registering process %{public}@ with an invalid audit token.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_bootstrapProcessWithHandle:(char *)a1 synchronously:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"processHandle != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_bootstrap_consumeLock_addProcess:(char *)a1 synchronously:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_bootstrap_consumeLock_addProcess:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_removeProcess:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end