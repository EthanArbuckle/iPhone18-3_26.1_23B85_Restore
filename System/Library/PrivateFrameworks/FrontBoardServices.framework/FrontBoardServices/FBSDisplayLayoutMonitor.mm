@interface FBSDisplayLayoutMonitor
+ (BSServiceInterface)interface;
+ (id)_endpointForDisplayType:(int64_t)type;
+ (id)monitorWithConfiguration:(id)configuration;
+ (id)sharedMonitorForDisplayType:(int64_t)type;
- (FBSDisplayLayout)currentLayout;
- (FBSDisplayLayoutMonitor)init;
- (FBSDisplayLayoutMonitor)initWithDisplayType:(int64_t)type qualityOfService:(unint64_t)service handler:(id)handler;
- (id)_initWithConfiguration:(id)configuration singleton:(BOOL)singleton needsDefaultPriority:(BOOL)priority mutable:(BOOL)mutable displayType:(int64_t)type mutableHandler:(id)handler;
- (id)handler;
- (unint64_t)qualityOfService;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handler;
- (void)invalidate;
- (void)qualityOfService;
- (void)removeObserver:(id)observer;
- (void)setHandler:(id)handler;
@end

@implementation FBSDisplayLayoutMonitor

- (FBSDisplayLayout)currentLayout
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  lock_handlerAssertion = self->_lock_handlerAssertion;
  if (lock_handlerAssertion)
  {
    currentLayout = [(_FBSDisplayLayoutServiceAssertion *)lock_handlerAssertion currentLayout];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    objectEnumerator = [(NSMapTable *)self->_lock_deprecated_observerAssertions objectEnumerator];
    if ([objectEnumerator countByEnumeratingWithState:v7 objects:v8 count:16])
    {
      currentLayout = [**(&v7[0] + 1) currentLayout];
    }

    else
    {
      currentLayout = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return currentLayout;
}

+ (BSServiceInterface)interface
{
  if (interface_onceToken_1 != -1)
  {
    +[FBSDisplayLayoutMonitor interface];
  }

  v3 = interface___interface_0;

  return v3;
}

void __36__FBSDisplayLayoutMonitor_interface__block_invoke()
{
  v0 = +[FBSDisplayLayoutMonitor serviceIdentifier];
  v4 = [off_1E76BC9F8 interfaceWithIdentifier:v0];

  v1 = [off_1E76BCA10 protocolForProtocol:&unk_1F15B87C8];
  [v4 setClient:v1];

  [v4 setClientMessagingExpectation:1];
  v2 = [v4 copy];
  v3 = interface___interface_0;
  interface___interface_0 = v2;
}

- (void)invalidate
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_deprecated_singleton)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_lock_invalidated)
    {
      self->_lock_invalidated = 1;
      [(_FBSDisplayLayoutServiceAssertion *)self->_lock_handlerAssertion invalidate];
      lock_handlerAssertion = self->_lock_handlerAssertion;
      self->_lock_handlerAssertion = 0;

      lock_deprecated_handler = self->_lock_deprecated_handler;
      self->_lock_deprecated_handler = 0;

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      objectEnumerator = [(NSMapTable *)self->_lock_deprecated_observerAssertions objectEnumerator];
      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            [*(*(&v11 + 1) + 8 * v9++) invalidate];
          }

          while (v7 != v9);
          v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      lock_deprecated_observerAssertions = self->_lock_deprecated_observerAssertions;
      self->_lock_deprecated_observerAssertions = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the shared monitor should never dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSDisplayLayoutMonitor)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBSDisplayLayoutMonitor"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSDisplayLayoutMonitor.m";
    v16 = 1024;
    v17 = 81;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithConfiguration:(id)configuration singleton:(BOOL)singleton needsDefaultPriority:(BOOL)priority mutable:(BOOL)mutable displayType:(int64_t)type mutableHandler:(id)handler
{
  mutableCopy = mutable;
  LODWORD(v11) = priority;
  configurationCopy = configuration;
  handlerCopy = handler;
  if (!configurationCopy)
  {
    [FBSDisplayLayoutMonitor _initWithConfiguration:a2 singleton:? needsDefaultPriority:? mutable:? displayType:? mutableHandler:?];
  }

  v17 = handlerCopy;
  v33.receiver = self;
  v33.super_class = FBSDisplayLayoutMonitor;
  v18 = [(FBSDisplayLayoutMonitor *)&v33 init];
  if (v18)
  {
    endpoint = [configurationCopy endpoint];
    if ([configurationCopy needsUserInteractivePriority])
    {
      v11 = 2;
    }

    else
    {
      v11 = v11;
    }

    v18->_deprecated_singleton = singleton;
    if (mutableCopy)
    {
      v18->_deprecated_mutable = 1;
      objc_storeStrong(&v18->_deprecated_endpoint, endpoint);
      v18->_deprecated_qos = v11;
    }

    v18->_deprecated_displayType = type;
    v20 = MEMORY[0x1A58E80F0](v17);
    lock_deprecated_handler = v18->_lock_deprecated_handler;
    v18->_lock_deprecated_handler = v20;

    if (endpoint)
    {
      transitionHandler = [configurationCopy transitionHandler];
      if (transitionHandler)
      {
        objc_initWeak(&location, v18);
        v23 = [_FBSDisplayLayoutServiceAssertion alloc];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __116__FBSDisplayLayoutMonitor__initWithConfiguration_singleton_needsDefaultPriority_mutable_displayType_mutableHandler___block_invoke;
        v29[3] = &unk_1E76BE5C0;
        objc_copyWeak(&v31, &location);
        v30 = transitionHandler;
        v24 = [(_FBSDisplayLayoutServiceAssertion *)v23 initWithEndpoint:endpoint qos:v11 observer:v29];
        lock_handlerAssertion = v18->_lock_handlerAssertion;
        v18->_lock_handlerAssertion = v24;

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      else if (!v18->_deprecated_mutable)
      {
        v26 = [[_FBSDisplayLayoutServiceAssertion alloc] initWithEndpoint:endpoint qos:v11 observer:0];
        v27 = v18->_lock_handlerAssertion;
        v18->_lock_handlerAssertion = v26;
      }
    }
  }

  return v18;
}

void __116__FBSDisplayLayoutMonitor__initWithConfiguration_singleton_needsDefaultPriority_mutable_displayType_mutableHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)monitorWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [FBSDisplayLayoutMonitor monitorWithConfiguration:a2];
  }

  v5 = configurationCopy;
  v6 = [[FBSDisplayLayoutMonitor alloc] _initWithConfiguration:configurationCopy singleton:0 needsDefaultPriority:0 mutable:0 displayType:-1 mutableHandler:0];

  return v6;
}

+ (id)_endpointForDisplayType:(int64_t)type
{
  v4 = +[FBSDisplayLayoutMonitor serviceIdentifier];
  if (type)
  {
    if (type == 3)
    {
      v5 = off_1E76BCA30;
      v6 = @"com.apple.CarPlayApp.non-launching-service";
      type = @"com.apple.CarPlayApp.Dashboard";
      goto LABEL_8;
    }

    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%li)", type];
    v5 = off_1E76BCA30;
    if (type == 6)
    {
      v6 = @"com.apple.CarPlayApp.non-launching-service";
      goto LABEL_8;
    }
  }

  else
  {
    type = +[FBSDisplayLayoutMonitor mainDisplayInstanceIdentifier];
    v5 = off_1E76BCA30;
  }

  environmentAliases = [off_1E76BC9E0 environmentAliases];
  defaultShellMachName = [off_1E76BCA30 defaultShellMachName];
  v6 = [environmentAliases resolveMachService:defaultShellMachName];

LABEL_8:
  v10 = [v5 endpointForMachName:v6 service:v4 instance:type];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [off_1E76BCA30 nullEndpointForService:v4 instance:type];
  }

  v13 = v12;

  return v13;
}

+ (id)sharedMonitorForDisplayType:(int64_t)type
{
  os_unfair_lock_lock(&sharedMonitorForDisplayType____lock);
  v4 = sharedMonitorForDisplayType____monitors;
  if (!sharedMonitorForDisplayType____monitors)
  {
    v5 = objc_opt_new();
    v6 = sharedMonitorForDisplayType____monitors;
    sharedMonitorForDisplayType____monitors = v5;

    v4 = sharedMonitorForDisplayType____monitors;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [v4 objectForKey:v7];

  if (!v8)
  {
    v9 = [FBSDisplayLayoutMonitor _endpointForDisplayType:type];
    v10 = [FBSDisplayLayoutMonitorConfiguration configurationWithEndpoint:v9];

    v8 = [[FBSDisplayLayoutMonitor alloc] _initWithConfiguration:v10 singleton:1 needsDefaultPriority:1 mutable:1 displayType:type mutableHandler:0];
    v11 = sharedMonitorForDisplayType____monitors;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v11 setObject:v8 forKey:v12];
  }

  os_unfair_lock_unlock(&sharedMonitorForDisplayType____lock);

  return v8;
}

- (FBSDisplayLayoutMonitor)initWithDisplayType:(int64_t)type qualityOfService:(unint64_t)service handler:(id)handler
{
  handlerCopy = handler;
  if ((FBSDisplayTypeIsValid(type) & 1) == 0)
  {
    [FBSDisplayLayoutMonitor initWithDisplayType:a2 qualityOfService:? handler:?];
  }

  v10 = [FBSDisplayLayoutMonitor _endpointForDisplayType:type];
  v11 = [FBSDisplayLayoutMonitorConfiguration configurationWithEndpoint:v10];

  if (handlerCopy)
  {
    v12 = [handlerCopy copy];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__FBSDisplayLayoutMonitor_initWithDisplayType_qualityOfService_handler___block_invoke;
    v15[3] = &unk_1E76BE5E8;
    handlerCopy = v12;
    v16 = handlerCopy;
    [v11 setTransitionHandler:v15];
  }

  v13 = [(FBSDisplayLayoutMonitor *)self _initWithConfiguration:v11 singleton:0 needsDefaultPriority:service == 21 mutable:1 displayType:type mutableHandler:handlerCopy];

  return v13;
}

- (id)handler
{
  if (!self->_deprecated_mutable)
  {
    [(FBSDisplayLayoutMonitor *)a2 handler];
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x1A58E80F0](self->_lock_deprecated_handler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x1A58E80F0](v3);

  return v4;
}

- (void)setHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_deprecated_mutable)
  {
    [FBSDisplayLayoutMonitor setHandler:a2];
  }

  v6 = handlerCopy;
  v7 = [handlerCopy copy];

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_deprecated_handler != v7 && !self->_lock_invalidated)
  {
    v8 = self->_lock_handlerAssertion;
    lock_handlerAssertion = self->_lock_handlerAssertion;
    self->_lock_handlerAssertion = 0;

    v10 = MEMORY[0x1A58E80F0](v7);
    lock_deprecated_handler = self->_lock_deprecated_handler;
    self->_lock_deprecated_handler = v10;

    if (self->_lock_deprecated_handler && self->_deprecated_endpoint)
    {
      v12 = [_FBSDisplayLayoutServiceAssertion alloc];
      deprecated_endpoint = self->_deprecated_endpoint;
      deprecated_qos = self->_deprecated_qos;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __38__FBSDisplayLayoutMonitor_setHandler___block_invoke;
      v17[3] = &unk_1E76BE610;
      v18 = v7;
      v15 = [(_FBSDisplayLayoutServiceAssertion *)v12 initWithEndpoint:deprecated_endpoint qos:deprecated_qos observer:v17];
      v16 = self->_lock_handlerAssertion;
      self->_lock_handlerAssertion = v15;
    }

    [(_FBSDisplayLayoutServiceAssertion *)v8 invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!self->_deprecated_mutable)
  {
    [FBSDisplayLayoutMonitor addObserver:a2];
  }

  v6 = observerCopy;
  os_unfair_lock_lock(&self->_lock);
  if (v6)
  {
    v7 = [(NSMapTable *)self->_lock_deprecated_observerAssertions objectForKey:v6];
    if (v7 || self->_lock_invalidated)
    {
    }

    else if (self->_deprecated_endpoint)
    {
      if (!self->_lock_deprecated_observerAssertions)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        lock_deprecated_observerAssertions = self->_lock_deprecated_observerAssertions;
        self->_lock_deprecated_observerAssertions = weakToStrongObjectsMapTable;
      }

      objc_initWeak(&location, self);
      objc_initWeak(&from, v6);
      v10 = [_FBSDisplayLayoutServiceAssertion alloc];
      deprecated_endpoint = self->_deprecated_endpoint;
      deprecated_qos = self->_deprecated_qos;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __39__FBSDisplayLayoutMonitor_addObserver___block_invoke;
      v17 = &unk_1E76BE638;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      v13 = [(_FBSDisplayLayoutServiceAssertion *)v10 initWithEndpoint:deprecated_endpoint qos:deprecated_qos observer:&v14];
      [(NSMapTable *)self->_lock_deprecated_observerAssertions setObject:v13 forKey:v6, v14, v15, v16, v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __39__FBSDisplayLayoutMonitor_addObserver___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (WeakRetained && v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 layoutMonitor:WeakRetained didUpdateDisplayLayout:v9 withContext:v5];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v8 layoutMonitor:WeakRetained didUpdateDisplayLayout:v9];
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (!self->_deprecated_mutable)
  {
    [FBSDisplayLayoutMonitor removeObserver:a2];
  }

  v8 = observerCopy;
  os_unfair_lock_lock(&self->_lock);
  if (v8)
  {
    v6 = [(NSMapTable *)self->_lock_deprecated_observerAssertions objectForKey:v8];
    [v6 invalidate];

    [(NSMapTable *)self->_lock_deprecated_observerAssertions removeObjectForKey:v8];
  }

  if (![(NSMapTable *)self->_lock_deprecated_observerAssertions count])
  {
    lock_deprecated_observerAssertions = self->_lock_deprecated_observerAssertions;
    self->_lock_deprecated_observerAssertions = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)qualityOfService
{
  if (!self->_deprecated_mutable)
  {
    [(FBSDisplayLayoutMonitor *)a2 qualityOfService];
  }

  if (self->_deprecated_qos == 1)
  {
    return 21;
  }

  else
  {
    return 17;
  }
}

- (void)_initWithConfiguration:(char *)a1 singleton:needsDefaultPriority:mutable:displayType:mutableHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"config", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)monitorWithConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"configuration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithDisplayType:(char *)a1 qualityOfService:handler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"FBSDisplayTypeIsValid(displayType)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)handler
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is deprecated and only works with monitors created using the deprecated interfaces"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, "[FBSDisplayLayoutMonitor handler]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setHandler:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is deprecated and only works with monitors created using the deprecated interfaces"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, "[FBSDisplayLayoutMonitor setHandler:]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addObserver:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is deprecated and only works with monitors created using the deprecated interfaces"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, "[FBSDisplayLayoutMonitor addObserver:]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)removeObserver:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is deprecated and only works with monitors created using the deprecated interfaces"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, "[FBSDisplayLayoutMonitor removeObserver:]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)qualityOfService
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is deprecated and only works with monitors created using the deprecated interfaces"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, "[FBSDisplayLayoutMonitor qualityOfService]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end