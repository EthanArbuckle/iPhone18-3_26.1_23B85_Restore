@interface FBSDisplayLayoutPublisher
+ (id)publisherWithConfiguration:(id)a3;
- (FBSDisplayLayoutPublisher)init;
- (id)_addElement:(id)a3 forKey:(id)a4;
- (id)_initWithConfiguration:(id)a3;
- (void)_removeElement:(id)a3 forKey:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation FBSDisplayLayoutPublisher

void __34__FBSDisplayLayoutPublisher_flush__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 8 * *(a1 + 56) + 48), *(a1 + 40));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(a1 + 32) + 8 * *(a1 + 56) + 72);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 138412290;
    v18 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        v8 = objc_opt_respondsToSelector();
        v9 = MEMORY[0x1E69C75D0];
        if (v8)
        {
          v10 = [v7 remoteToken];
          v11 = v10;
          if (v10)
          {
            [v10 realToken];
          }

          else
          {
            *buf = 0u;
            v25 = 0u;
          }

          v14 = [v9 handleForAuditToken:buf error:{0, v18}];
        }

        else
        {
          v12 = MEMORY[0x1E696AD98];
          v11 = [v7 remoteToken];
          v13 = [v12 numberWithInt:{objc_msgSend(v11, "pid")}];
          v14 = [v9 handleForIdentifier:v13 error:0];
        }

        if (([v14 isDaemon] & 1) != 0 || (objc_msgSend(v14, "currentState"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "taskState"), v15, v16 != 3))
        {
          v17 = [v7 remoteTarget];
          [v17 updateLayout:*(a1 + 40) withTransition:*(a1 + 48)];
        }

        else
        {
          v17 = FBLogCommon();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            *&buf[4] = v14;
            _os_log_impl(&dword_1A2DBB000, v17, OS_LOG_TYPE_INFO, "not sending layout update to suspended process %@", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }
}

- (FBSDisplayLayoutPublisher)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSDisplayLayoutPublisher"];
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
    v13 = self;
    v14 = 2114;
    v15 = @"FBSDisplayLayoutPublisher.m";
    v16 = 1024;
    v17 = 50;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithConfiguration:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = FBSDisplayLayoutPublisher;
  v5 = [(FBSDisplayLayoutPublisher *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    invalidatedSignal = v5->_invalidatedSignal;
    v5->_invalidatedSignal = v6;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__FBSDisplayLayoutPublisher__initWithConfiguration___block_invoke;
    v16[3] = &unk_1E76BF738;
    v16[4] = v4;
    v8 = v5;
    v16[5] = v8;
    v9 = [off_1E76BCA40 listenerWithConfigurator:v16];
    listener = v8->_listener;
    v8->_listener = v9;

    v11 = objc_opt_new();
    mutableLayout = v8->_mutableLayout;
    v8->_mutableLayout = v11;

    [(FBSDisplayLayout *)v8->_mutableLayout finalizeLayout];
    v13 = [MEMORY[0x1E695DFA8] set];
    mutableElementKeys = v8->_mutableElementKeys;
    v8->_mutableElementKeys = v13;

    BSCreateSerializedBSXPCEncodableObject();
  }

  return 0;
}

void __52__FBSDisplayLayoutPublisher__initWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 domainIdentifier];
  [v7 setDomain:v4];

  v5 = +[FBSDisplayLayoutMonitor serviceIdentifier];
  [v7 setService:v5];

  v6 = [*(a1 + 32) instanceIdentifier];
  [v7 setInstance:v6];

  [v7 setDelegate:*(a1 + 40)];
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"publisher was not invalidated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"FBSDisplayLayoutPublisher.m";
    v15 = 1024;
    v16 = 79;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)publisherWithConfiguration:(id)a3
{
  v4 = a3;
  NSClassFromString(&cfstr_Fbsdisplaylayo_7.isa);
  if (!v4)
  {
    [FBSDisplayLayoutPublisher publisherWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSDisplayLayoutPublisher publisherWithConfiguration:a2];
  }

  v5 = [v4 domainIdentifier];
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    [FBSDisplayLayoutPublisher publisherWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSDisplayLayoutPublisher publisherWithConfiguration:a2];
  }

  v6 = [v4 instanceIdentifier];
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v6)
  {
    [FBSDisplayLayoutPublisher publisherWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSDisplayLayoutPublisher publisherWithConfiguration:a2];
  }

  v7 = [[FBSDisplayLayoutPublisher alloc] _initWithConfiguration:v4];

  return v7;
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidatedSignal signal])
  {
    [(BSServiceConnectionListener *)self->_listener invalidate];
    v3 = 0;
    v4 = MEMORY[0x1E69E9820];
    do
    {
      v5 = self->_queuesByQOS[v3];
      v6[0] = v4;
      v6[1] = 3221225472;
      v6[2] = __39__FBSDisplayLayoutPublisher_invalidate__block_invoke;
      v6[3] = &unk_1E76BF288;
      v6[4] = self;
      v7 = v3;
      [(BSServiceDispatchQueue *)v5 performAsync:v6];
      ++v3;
    }

    while (v3 != 3);
  }
}

void __39__FBSDisplayLayoutPublisher_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8 * *(a1 + 40) + 72) enumerateObjectsUsingBlock:&__block_literal_global_31];
  v2 = *(a1 + 32) + 8 * *(a1 + 40);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    BSDispatchQueueAssertMain();
  }

  [FBSDisplayLayoutPublisher addObserver:a2];
}

- (id)_addElement:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  BSDispatchQueueAssertMain();
}

- (void)_removeElement:(id)a3 forKey:(id)a4
{
  a3;
  v5 = a4;
  BSDispatchQueueAssertMain();
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 remoteToken];
  v11 = [v10 hasEntitlement:@"com.apple.frontboardservices.display-layout-monitor"];

  if (v11 && (v12 = [v9 decodeInt64ForKey:@"qos"], v12 <= 2u))
  {
    v13 = self->_queuesByQOS[v12 & 3];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke;
    v14[3] = &unk_1E76BF848;
    v14[4] = self;
    v17 = v12;
    v15 = v8;
    v16 = a2;
    [(BSServiceDispatchQueue *)v13 performAsyncAndWait:v14];
  }

  else
  {
    [v8 invalidate];
  }
}

void __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) hasBeenSignalled];
  v3 = *(a1 + 40);
  if (v2)
  {

    [v3 invalidate];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke_2;
    v11[3] = &unk_1E76BF820;
    v4 = *(a1 + 32);
    v12 = *(a1 + 56);
    v5 = *(a1 + 48);
    v11[4] = v4;
    v11[5] = v5;
    [v3 configureConnection:v11];
    v6 = *(*(a1 + 32) + 8 * *(a1 + 56) + 72);
    if (v6)
    {
      [v6 addObject:*(a1 + 40)];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFA8] setWithObject:*(a1 + 40)];
      v8 = *(a1 + 32) + 8 * *(a1 + 56);
      v9 = *(v8 + 72);
      *(v8 + 72) = v7;
    }

    [*(a1 + 40) activate];
    v10 = [*(a1 + 40) remoteTarget];
    [v10 updateLayout:*(*(a1 + 32) + 8 * *(a1 + 56) + 48) withTransition:0];
  }
}

void __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8 * *(a1 + 48) + 24);
  v4 = a2;
  [v4 setQueue:v3];
  v5 = +[FBSDisplayLayoutMonitor interface];
  [v4 setInterface:v5];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke_3;
  v6[3] = &unk_1E76BF7F8;
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  [v4 setInvalidationHandler:v6];
}

void __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8 * *(a1 + 48) + 72);
  v12 = v3;
  if (v4)
  {
    v5 = [v4 containsObject:v3];
    v6 = *(a1 + 48);
    if (!v5)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = _NSStringFromFBSDisplayLayoutQOS(v6);
      v11 = [v9 stringWithFormat:@"could not find connection=%@ in tracked(%@)=%@", v12, v10, *(*(a1 + 32) + 8 * *(a1 + 48) + 72)];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke_3_cold_1(a1, (a1 + 32), v11);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
    }

    v4 = *(*(a1 + 32) + 8 * v6 + 72);
    v3 = v12;
  }

  [v4 removeObject:v3];
  if (![*(*(a1 + 32) + 8 * *(a1 + 48) + 72) count])
  {
    v7 = *(a1 + 32) + 8 * *(a1 + 48);
    v8 = *(v7 + 72);
    *(v7 + 72) = 0;
  }
}

+ (void)publisherWithConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayLayoutPublisherConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)publisherWithConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)publisherWithConfiguration:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)publisherWithConfiguration:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)publisherWithConfiguration:(char *)a1 .cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)publisherWithConfiguration:(char *)a1 .cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)transitionAssertionWithReason:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addObserver:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"observer", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addElement:(char *)a1 forKey:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayLayoutElementClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addElement:(char *)a1 forKey:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addElement:(uint64_t)a1 forKey:(char *)a2 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have an element with identifier=%@"];
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

- (void)_addElement:(char *)a1 forKey:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[element identifier] != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addElement:(char *)a1 forKey:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_removeElement:(uint64_t)a1 forKey:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing an element with identifier=%@"];
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

void __71__FBSDisplayLayoutPublisher_listener_didReceiveConnection_withContext___block_invoke_3_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(*(a1 + 40));
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *a2;
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  v15 = 2114;
  v16 = @"FBSDisplayLayoutPublisher.m";
  v17 = 1024;
  v18 = 378;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
}

@end