@interface FBSceneLayerManager
- (FBScene)scene;
- (id)_initWithScene:(id)scene;
- (id)_suspendUpdatesWithReason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)layerWithContextID:(unsigned int)d;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_objc_initiateDealloc;
- (void)_observer_didStartTrackingLayers;
- (void)_observer_didStopTrackingLayers;
- (void)_observer_sceneLayerManagerDidUpdateLayers;
- (void)_rebuildLayers;
- (void)_removeSuspendAssertion:(id)assertion;
- (void)_setLayers:(id)layers;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation FBSceneLayerManager

- (void)_observer_sceneLayerManagerDidUpdateLayers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 sceneLayerManagerDidUpdateLayers:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_observer_didStartTrackingLayers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 sceneLayerManagerDidStartTrackingLayers:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_observer_didStopTrackingLayers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 sceneLayerManagerDidStopTrackingLayers:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_objc_initiateDealloc
{
  if (pthread_main_np())
  {

    MEMORY[0x1EEE667E0](self);
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E58D8];

    dispatch_async_f(v3, self, v4);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneLayerManager addObserver:]");
  }

  v4 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    if (!observers)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:4];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneLayerManager removeObserver:]");
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (id)layerWithContextID:(unsigned int)d
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_layers;
  v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 contextID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSceneLayerManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(FBSceneLayerManager *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"identifier"];

  v6 = [v3 appendBool:self->_needsRebuildLayers withName:@"needsRebuild" ifEqualTo:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSceneLayerManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSceneLayerManager *)self succinctDescriptionBuilder];
  if ([(NSOrderedSet *)self->_layers count])
  {
    array = [(NSOrderedSet *)self->_layers array];
    [succinctDescriptionBuilder appendArraySection:array withName:@"layers" multilinePrefix:prefixCopy skipIfEmpty:1];
  }

  else
  {
    v7 = [succinctDescriptionBuilder appendObject:@"(none)" withName:@"layers"];
  }

  if ([(NSHashTable *)self->_suspendAssertions count])
  {
    allObjects = [(NSHashTable *)self->_suspendAssertions allObjects];
    [succinctDescriptionBuilder appendArraySection:allObjects withName:@"suspendAssertions" skipIfEmpty:1];
  }

  else
  {
    v9 = [succinctDescriptionBuilder appendObject:@"(none)" withName:@"suspendAssertions"];
  }

  return succinctDescriptionBuilder;
}

- (id)_initWithScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [(FBSceneLayerManager *)a2 _initWithScene:?];
  }

  v6 = sceneCopy;
  if (_initWithScene__onceToken != -1)
  {
    [FBSceneLayerManager _initWithScene:];
  }

  v13.receiver = self;
  v13.super_class = FBSceneLayerManager;
  v7 = [(FBSceneLayerManager *)&v13 init];
  if (v7)
  {
    identifier = [v6 identifier];
    identifier = v7->_identifier;
    v7->_identifier = identifier;

    objc_storeWeak(&v7->_scene, v6);
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    layers = v7->_layers;
    v7->_layers = orderedSet;
  }

  return v7;
}

uint64_t __38__FBSceneLayerManager__initWithScene___block_invoke()
{
  v0 = objc_opt_class();

  return MEMORY[0x1EEE667A8](v0);
}

- (void)_setLayers:(id)layers
{
  layersCopy = layers;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneLayerManager _setLayers:]");
  }

  fbsLayers = self->_fbsLayers;
  if ((BSEqualObjects() & 1) == 0)
  {
    self->_needsRebuildLayers = 1;
    v5 = [layersCopy copy];
    v6 = self->_fbsLayers;
    self->_fbsLayers = v5;
  }

  if (self->_needsRebuildLayers && ![(NSHashTable *)self->_suspendAssertions count])
  {
    [(FBSceneLayerManager *)self _rebuildLayers];
  }
}

- (id)_suspendUpdatesWithReason:(id)reason
{
  reasonCopy = reason;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneLayerManager _suspendUpdatesWithReason:]");
  }

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __49__FBSceneLayerManager__suspendUpdatesWithReason___block_invoke;
  v14 = &unk_1E783CF58;
  objc_copyWeak(&v15, &location);
  v6 = [v5 initWithReason:reasonCopy invalidatedWithContextBlock:&v11];
  suspendAssertions = self->_suspendAssertions;
  if (!suspendAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = self->_suspendAssertions;
    self->_suspendAssertions = weakObjectsHashTable;

    suspendAssertions = self->_suspendAssertions;
  }

  [(NSHashTable *)suspendAssertions addObject:v6, v11, v12, v13, v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v6;
}

void __49__FBSceneLayerManager__suspendUpdatesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AF00];
  v4 = a2;
  if (([v3 isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneLayerManager _suspendUpdatesWithReason:]_block_invoke");
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 assertion];

  [WeakRetained _removeSuspendAssertion:v5];
}

- (void)_rebuildLayers
{
  v30 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneLayerManager _rebuildLayers]");
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v18 = [(NSOrderedSet *)self->_layers count];
  v3 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{-[NSOrderedSet count](self->_fbsLayers, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v4 = self->_fbsLayers;
  v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [FBSceneLayer layerWithFBSSceneLayer:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = FBLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            clientHandle = [WeakRetained clientHandle];
            *buf = 138543618;
            v26 = v9;
            v27 = 2114;
            v28 = clientHandle;
            _os_log_error_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_ERROR, "Ignoring bogus scene layer %{public}@ from %{public}@", buf, 0x16u);
          }
        }
      }

      v6 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];
  layers = selfCopy->_layers;
  selfCopy->_layers = v13;

  selfCopy->_needsRebuildLayers = 0;
  if ([WeakRetained isValid])
  {
    v15 = [v3 count];
    v16 = v15;
    if (!v15 || v18)
    {
      if (v15 | v18)
      {
        [(FBSceneLayerManager *)selfCopy _observer_sceneLayerManagerDidUpdateLayers];
        if (!v16)
        {
          if (v18)
          {
            [(FBSceneLayerManager *)selfCopy _observer_didStopTrackingLayers];
          }
        }
      }
    }

    else
    {
      [(FBSceneLayerManager *)selfCopy _observer_didStartTrackingLayers];
      [(FBSceneLayerManager *)selfCopy _observer_sceneLayerManagerDidUpdateLayers];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_removeSuspendAssertion:(id)assertion
{
  [(NSHashTable *)self->_suspendAssertions removeObject:assertion];
  if (![(NSHashTable *)self->_suspendAssertions count])
  {
    suspendAssertions = self->_suspendAssertions;
    self->_suspendAssertions = 0;

    if (self->_needsRebuildLayers)
    {

      [(FBSceneLayerManager *)self _rebuildLayers];
    }
  }
}

- (void)_initWithScene:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSceneLayerManager.m";
    v16 = 1024;
    v17 = 115;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end