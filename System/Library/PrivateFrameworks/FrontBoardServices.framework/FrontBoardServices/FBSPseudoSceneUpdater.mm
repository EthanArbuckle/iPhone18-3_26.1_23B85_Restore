@interface FBSPseudoSceneUpdater
- (NSCopying)identifier;
- (id)_initWithCallOutQueue:(id)queue;
- (id)createSceneFutureWithDefinition:(id)definition;
- (void)activateSceneFuture:(id)future completion:(id)completion;
- (void)requestSceneWithOptions:(id)options completion:(id)completion;
- (void)scene:(id)scene didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)scene:(id)scene invalidateWithTransitionContext:(id)context;
- (void)scene:(id)scene sendInvocation:(id)invocation;
- (void)scene:(id)scene sendMessage:(id)message withResponse:(id)response;
- (void)sendActions:(id)actions toWorkspaceID:(id)d completion:(id)completion;
- (void)sendBatchedMessages;
@end

@implementation FBSPseudoSceneUpdater

- (id)_initWithCallOutQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    [(FBSPseudoSceneUpdater *)a2 _initWithCallOutQueue:?];
  }

  v7 = queueCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBSPseudoSceneUpdater *)v7 _initWithCallOutQueue:a2, self];
  }

  v11.receiver = self;
  v11.super_class = FBSPseudoSceneUpdater;
  v8 = [(FBSPseudoSceneUpdater *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_callOutQueue, queue);
  }

  return v9;
}

- (void)sendBatchedMessages
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not supported"];
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
    v15 = @"FBSPseudoSceneUpdater.m";
    v16 = 1024;
    v17 = 42;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)scene:(id)scene didReceiveActions:(id)actions forExtension:(Class)extension
{
  sceneCopy = scene;
  v6 = FBLogSceneClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FBSPseudoSceneUpdater scene:sceneCopy didReceiveActions:? forExtension:?];
  }
}

- (void)scene:(id)scene sendMessage:(id)message withResponse:(id)response
{
  sceneCopy = scene;
  messageCopy = message;
  responseCopy = response;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = 138544642;
    v17 = v13;
    v18 = 2114;
    v19 = v15;
    v20 = 2048;
    selfCopy = self;
    v22 = 2114;
    v23 = @"FBSPseudoSceneUpdater.m";
    v24 = 1024;
    v25 = 54;
    v26 = 2114;
    v27 = v12;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v16, 0x3Au);
  }

  [v12 UTF8String];
  _bs_set_crash_log_message();
}

- (void)scene:(id)scene invalidateWithTransitionContext:(id)context
{
  callOutQueue = self->_callOutQueue;
  sceneCopy = scene;
  [(BSServiceQueue *)callOutQueue assertBarrierOnQueue];
  [sceneCopy _callOutQueue_willDestroyWithTransitionContext:0 completion:0];
  [sceneCopy _callOutQueue_invalidate];
}

- (void)scene:(id)scene sendInvocation:(id)invocation
{
  sceneCopy = scene;
  invocationCopy = invocation;
  v7 = FBLogSceneClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [FBSPseudoSceneUpdater scene:sceneCopy sendInvocation:?];
  }

  [invocationCopy cannotResolveForReason:@"Pseudo scenes do not support sending invocations"];
}

- (void)sendActions:(id)actions toWorkspaceID:(id)d completion:(id)completion
{
  actionsCopy = actions;
  dCopy = d;
  completionCopy = completion;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = 138544642;
    v17 = v13;
    v18 = 2114;
    v19 = v15;
    v20 = 2048;
    selfCopy = self;
    v22 = 2114;
    v23 = @"FBSPseudoSceneUpdater.m";
    v24 = 1024;
    v25 = 73;
    v26 = 2114;
    v27 = v12;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v16, 0x3Au);
  }

  [v12 UTF8String];
  _bs_set_crash_log_message();
}

- (id)createSceneFutureWithDefinition:(id)definition
{
  definitionCopy = definition;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"FBSPseudoSceneUpdater.m";
    v18 = 1024;
    v19 = 77;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

- (void)activateSceneFuture:(id)future completion:(id)completion
{
  futureCopy = future;
  completionCopy = completion;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"FBSPseudoSceneUpdater.m";
    v21 = 1024;
    v22 = 81;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
}

- (void)requestSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"FBSPseudoSceneUpdater.m";
    v21 = 1024;
    v22 = 85;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
}

- (NSCopying)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_initWithCallOutQueue:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"callOutQueue", v7, v9];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"FBSPseudoSceneUpdater.m";
    v22 = 1024;
    v23 = 20;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithCallOutQueue:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"callOutQueue", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = a2;
    v17 = 2114;
    v18 = @"FBSPseudoSceneUpdater.m";
    v19 = 1024;
    v20 = 20;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
}

- (void)scene:(void *)a1 didReceiveActions:forExtension:.cold.1(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_0_3(&dword_1A2DBB000, v2, v3, "[%{public}@] Pseudo scenes do not support sending actions.", v4, v5, v6, v7, 2u);
}

- (void)scene:(void *)a1 sendInvocation:.cold.1(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_0_3(&dword_1A2DBB000, v2, v3, "[%{public}@] Pseudo scenes do not support sending invocations.", v4, v5, v6, v7, 2u);
}

@end