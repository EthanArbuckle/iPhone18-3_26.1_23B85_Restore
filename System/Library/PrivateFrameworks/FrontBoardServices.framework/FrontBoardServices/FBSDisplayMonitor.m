@interface FBSDisplayMonitor
- (BOOL)allowsUnknownDisplays;
- (BOOL)canPostToBookendObserver;
- (FBSDisplayConfiguration)mainConfiguration;
- (FBSDisplayIdentity)mainIdentity;
- (FBSDisplayMonitor)initWithInitializationCompletion:(id)a3;
- (FBSDisplayMonitor)initWithTransformer:(id)a3;
- (FBSDisplayObserving)bookendObserver;
- (NSArray)observers;
- (NSSet)connectedIdentities;
- (NSString)debugDescription;
- (NSString)description;
- (id)_initWithBookendObserver:(id)a3 transformer:(id)a4;
- (id)_sortedSources;
- (id)configurationForIdentity:(id)a3;
- (void)_lock_enumerateConnectedWithBlock:(id)a3;
- (void)_lock_enumerateSourcesWithBlock:(id)a3;
- (void)_postInitialBookendObserverConnections;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)setAllowsUnknownDisplays:(BOOL)a3;
- (void)updateTransformsWithCompletion:(id)a3;
@end

@implementation FBSDisplayMonitor

- (FBSDisplayConfiguration)mainConfiguration
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(FBSDisplaySource *)self->_mainDisplaySource connectedConfigurations];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isMainRootDisplay])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (FBSDisplayIdentity)mainIdentity
{
  v2 = [(FBSDisplayMonitor *)self mainConfiguration];
  v3 = [v2 identity];

  return v3;
}

- (NSSet)connectedIdentities
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x1E695DFA8] set];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__FBSDisplayMonitor_connectedIdentities__block_invoke;
  v6[3] = &unk_1E76BFA38;
  v4 = v3;
  v7 = v4;
  [(FBSDisplayMonitor *)self _lock_enumerateConnectedWithBlock:v6];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

void __40__FBSDisplayMonitor_connectedIdentities__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identity];
  [v2 addObject:v3];
}

- (void)dealloc
{
  [(FBSDisplayMonitor *)self invalidate];
  v3.receiver = self;
  v3.super_class = FBSDisplayMonitor;
  [(FBSDisplayMonitor *)&v3 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_bookendObserver, 0);
  lock_observers = self->_lock_observers;
  self->_lock_observers = 0;

  [(FBSDisplayMonitor *)self _lock_enumerateSourcesWithBlock:&__block_literal_global_33];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)canPostToBookendObserver
{
  os_unfair_lock_lock(&self->_lock);
  lock_canPostToBookendObserver = self->_lock_canPostToBookendObserver;
  os_unfair_lock_unlock(&self->_lock);
  return lock_canPostToBookendObserver;
}

- (NSArray)observers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_initWithBookendObserver:(id)a3 transformer:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v41.receiver = self;
  v41.super_class = FBSDisplayMonitor;
  v9 = [(FBSDisplayMonitor *)&v41 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_callOutQueue, MEMORY[0x1E69E96A0]);
    objc_storeWeak(&v10->_lock_bookendObserver, v7);
    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:4];
    lock_observers = v10->_lock_observers;
    v10->_lock_observers = v11;

    objc_storeStrong(&v10->_transformer, a4);
    if (!getCADisplayClass())
    {
      [FBSDisplayMonitor _initWithBookendObserver:a2 transformer:?];
    }

    v13 = [getCADisplayClass() displays];
    v14 = [v13 firstObject];
    mainDisplay = v10->_mainDisplay;
    v10->_mainDisplay = v14;

    if (!v10->_mainDisplay)
    {
      [FBSDisplayMonitor _initWithBookendObserver:a2 transformer:?];
    }

    v16 = [[FBSDisplaySource alloc] initWithDisplay:1 alwaysConnected:[(CADisplay *)v10->_mainDisplay isExternal] triggers:v10 monitor:?];
    mainDisplaySource = v10->_mainDisplaySource;
    v10->_mainDisplaySource = v16;

    if (!v10->_mainDisplaySource)
    {
      [FBSDisplayMonitor _initWithBookendObserver:a2 transformer:?];
    }

    v18 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:2];
    lock_sourcesByDisplay = v10->_lock_sourcesByDisplay;
    v10->_lock_sourcesByDisplay = v18;

    [(NSMapTable *)v10->_lock_sourcesByDisplay setObject:v10->_mainDisplaySource forKey:v10->_mainDisplay];
    v20 = [(FBSDisplayMonitor *)v10 mainIdentity];
    v21 = [v20 isMainDisplay];

    if ((v21 & 1) == 0)
    {
      [FBSDisplayMonitor _initWithBookendObserver:v10 transformer:a2];
    }

    v35 = v8;
    v34 = a2;
    v22 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v13, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v13;
    v23 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v37 + 1) + 8 * i);
          v28 = [(CADisplay *)v27 displayId];
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v28];
          if ([v22 containsObject:v29])
          {
            v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"two CADisplays had the same displayID(%u) -> $@", v28, obj];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [FBSDisplayMonitor _initWithBookendObserver:v34 transformer:?];
            }

            [v33 UTF8String];
            _bs_set_crash_log_message();
          }

          [v22 addObject:v29];
          if (v10->_mainDisplay != v27)
          {
            v30 = [[FBSDisplaySource alloc] initWithDisplay:v27 alwaysConnected:0 triggers:1 monitor:v10];
            if (!v30)
            {
              [FBSDisplayMonitor _initWithBookendObserver:v27 transformer:v34];
            }

            v31 = v30;
            [(NSMapTable *)v10->_lock_sourcesByDisplay setObject:v30 forKey:v27];
            [(FBSDisplaySource *)v31 setAllowsUnknown:?];
          }
        }

        v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v24);
    }

    v8 = v35;
  }

  return v10;
}

- (FBSDisplayMonitor)initWithInitializationCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FBSDisplayMonitor *)self _initWithBookendObserver:0 transformer:0];
  v6 = v5;
  if (v4 && v5)
  {
    callOutQueue = v5->_callOutQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__FBSDisplayMonitor_initWithInitializationCompletion___block_invoke;
    v9[3] = &unk_1E76BDA90;
    v10 = v5;
    v11 = v4;
    dispatch_async(callOutQueue, v9);
  }

  return v6;
}

void __54__FBSDisplayMonitor_initWithInitializationCompletion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__FBSDisplayMonitor_initWithInitializationCompletion___block_invoke_2;
  v5[3] = &unk_1E76BFA38;
  v6 = v2;
  v4 = v2;
  [v3 _lock_enumerateConnectedWithBlock:v5];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  (*(*(a1 + 40) + 16))();
}

- (id)configurationForIdentity:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__FBSDisplayMonitor_configurationForIdentity___block_invoke;
  v9[3] = &unk_1E76BFA60;
  v6 = v5;
  v10 = v6;
  v11 = self;
  v12 = &v14;
  v13 = a2;
  [(FBSDisplayMonitor *)self _lock_enumerateConnectedWithBlock:v9];
  os_unfair_lock_unlock(&self->_lock);
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __46__FBSDisplayMonitor_configurationForIdentity___block_invoke(uint64_t a1, void *a2)
{
  [a2 identity];
  objc_claimAutoreleasedReturnValue();
  BSEqualObjects();
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_lock_observers containsObject:v4])
  {
    [(NSHashTable *)self->_lock_observers addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_lock_observers containsObject:v4])
  {
    [(NSHashTable *)self->_lock_observers removeObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (FBSDisplayMonitor)initWithTransformer:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSDisplayMonitor initWithTransformer:a2];
  }

  v6 = v5;
  v7 = [(FBSDisplayMonitor *)self _initWithBookendObserver:0 transformer:v5];

  return v7;
}

- (void)updateTransformsWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__FBSDisplayMonitor_updateTransformsWithCompletion___block_invoke;
  v16[3] = &unk_1E76BFAA8;
  v6 = v5;
  v17 = v6;
  [(FBSDisplayMonitor *)self _lock_enumerateSourcesWithBlock:v16];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(FBSDisplaySource *)*(*(&v12 + 1) + 8 * v11++) updateTransforms];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v9);
  }

  if (v4)
  {
    dispatch_async(self->_callOutQueue, v4);
  }
}

- (BOOL)allowsUnknownDisplays
{
  os_unfair_lock_lock(&self->_lock);
  lock_allowsUnknownDisplays = self->_lock_allowsUnknownDisplays;
  os_unfair_lock_unlock(&self->_lock);
  return lock_allowsUnknownDisplays;
}

- (void)setAllowsUnknownDisplays:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&setAllowsUnknownDisplays____allowsUnknownLock);
  v5 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_allowsUnknownDisplays != v3)
  {
    self->_lock_allowsUnknownDisplays = v3;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__FBSDisplayMonitor_setAllowsUnknownDisplays___block_invoke;
    v15[3] = &unk_1E76BFAA8;
    v16 = v5;
    [(FBSDisplayMonitor *)self _lock_enumerateSourcesWithBlock:v15];
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(FBSDisplaySource *)*(*(&v11 + 1) + 8 * v10++) setAllowsUnknown:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&setAllowsUnknownDisplays____allowsUnknownLock);
}

void __59__FBSDisplayMonitor__postInitialBookendObserverConnections__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 identity];
  v4 = [*(a1 + 32) identity];

  if (v3 != v4)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      [v5 addObject:v9];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA8] setWithObject:v9];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

- (FBSDisplayObserving)bookendObserver
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_bookendObserver);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (NSString)description
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 activeMultilinePrefix];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __32__FBSDisplayMonitor_description__block_invoke;
  v11 = &unk_1E76BCD60;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v5 appendBodySectionWithName:@"sources" multilinePrefix:v4 block:&v8];

  v6 = [v5 build];

  return v6;
}

void __32__FBSDisplayMonitor_description__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _sortedSources];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) succinctDescription];
        [v7 appendString:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (NSString)debugDescription
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__FBSDisplayMonitor_debugDescription__block_invoke;
  v11 = &unk_1E76BCD60;
  v12 = v3;
  v13 = self;
  v4 = v3;
  v5 = [v4 modifyBody:&v8];
  v6 = [v4 build];

  return v6;
}

void __37__FBSDisplayMonitor_debugDescription__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _sortedSources];
  [v1 appendArraySection:v2 withName:@"sources" skipIfEmpty:0];
}

- (id)_sortedSources
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMapTable *)self->_lock_sourcesByDisplay objectEnumerator];
  v5 = [v4 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__FBSDisplayMonitor__sortedSources__block_invoke;
  v8[3] = &unk_1E76BFAF8;
  v8[4] = self;
  v8[5] = a2;
  v6 = [v5 sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __35__FBSDisplayMonitor__sortedSources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(FBSDisplaySource *)v5 displayID];
  v8 = [(FBSDisplaySource *)v6 displayID];
  if (v7 == v8)
  {
    __35__FBSDisplayMonitor__sortedSources__block_invoke_cold_1(a1);
  }

  if (v7 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_lock_enumerateSourcesWithBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMapTable *)self->_lock_sourcesByDisplay objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_lock_enumerateConnectedWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__FBSDisplayMonitor__lock_enumerateConnectedWithBlock___block_invoke;
    v6[3] = &unk_1E76BFB20;
    v7 = v4;
    [(FBSDisplayMonitor *)self _lock_enumerateSourcesWithBlock:v6];
  }
}

void __55__FBSDisplayMonitor__lock_enumerateConnectedWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(FBSDisplaySource *)a2 connectedConfigurations];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(a1 + 32) + 16))();
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_initWithBookendObserver:(void *)a1 transformer:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 mainConfiguration];
  v4 = [v3 stringWithFormat:@"failed to initialize mainConfiguration -> %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v14 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithBookendObserver:(uint64_t)a1 transformer:(char *)a2 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to initialize display source -> display=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithBookendObserver:(const char *)a1 transformer:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);
}

- (void)_initWithBookendObserver:(uint64_t *)a1 transformer:(char *)a2 .cold.4(uint64_t *a1, char *a2)
{
  v11 = *a1;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to initialize mainDisplay source -> mainDisplay=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithBookendObserver:(char *)a1 transformer:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find the main CADisplay"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithBookendObserver:(char *)a1 transformer:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find the symbol for CADisplay"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __46__FBSDisplayMonitor_configurationForIdentity___block_invoke_cold_1(uint64_t a1)
{
  v10 = *(a1 + 40);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"somehow we ended up with two connected displays with the same identity - this shouldn't be possible : manager=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v12 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithTransformer:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"transformer", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_postInitialBookendObserverConnections
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_DEBUG, "posting bookend initialization %@", &v2, 0xCu);
}

void __35__FBSDisplayMonitor__sortedSources__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we previously guaranteed that they can never be the same"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = objc_opt_class();
    v10 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end