@interface FBSSceneSnapshotRequestHandle
+ (id)handleForRequestType:(unint64_t)type context:(id)context;
- (FBSSceneSnapshotRequestHandle)initWithRequestType:(unint64_t)type context:(id)context;
- (void)_clearAction;
- (void)cancelRequest;
- (void)performRequestForScene:(id)scene;
@end

@implementation FBSSceneSnapshotRequestHandle

+ (id)handleForRequestType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  v7 = [[self alloc] initWithRequestType:type context:contextCopy];

  return v7;
}

- (FBSSceneSnapshotRequestHandle)initWithRequestType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  v8 = [(FBSSceneSnapshotRequestHandle *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

- (void)performRequestForScene:(id)scene
{
  v21 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [FBSSceneSnapshotRequestHandle performRequestForScene:a2];
  }

  v6 = sceneCopy;
  identifier = [sceneCopy identifier];
  sceneID = [(FBSSceneSnapshotContext *)self->_context sceneID];
  v9 = [identifier isEqualToString:sceneID];

  if ((v9 & 1) == 0)
  {
    [FBSSceneSnapshotRequestHandle performRequestForScene:a2];
  }

  if (self->_responder)
  {
    [(FBSSceneSnapshotRequestHandle *)a2 performRequestForScene:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_canceled)
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      type = selfCopy->_type;
      *buf = 134218240;
      v18 = selfCopy;
      v19 = 2048;
      v20 = type;
      _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "Performing snapshot request %p (type %lu)", buf, 0x16u);
    }

    if (selfCopy->_type == 1)
    {
      v13 = dispatch_semaphore_create(0);
    }

    else
    {
      v13 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke;
    v16[3] = &unk_1E76BF4E8;
    v16[4] = selfCopy;
    v16[5] = v13;
    v14 = [off_1E76BC978 responderWithHandler:v16];
    responder = self->_responder;
    self->_responder = v14;

    BSDispatchQueueCreateSerialWithQoS();
  }

  objc_sync_exit(selfCopy);
}

void __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 _clearAction];
  v6 = [v5 error];

  v7 = FBLogCommon();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke_cold_1(v4, v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *v4;
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_1A2DBB000, v8, OS_LOG_TYPE_DEFAULT, "Snapshot request %p complete", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    dispatch_semaphore_signal(v10);
  }
}

- (void)cancelRequest
{
  v6 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_canceled)
  {
    v3 = FBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = selfCopy;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "Snapshot request %p canceled", &v4, 0xCu);
    }

    selfCopy->_canceled = 1;
    [(BSActionResponder *)selfCopy->_responder annul];
    [(FBSSceneSnapshotRequestHandle *)selfCopy _clearAction];
  }

  objc_sync_exit(selfCopy);
}

- (void)_clearAction
{
  obj = self;
  objc_sync_enter(obj);
  responder = obj->_responder;
  obj->_responder = 0;

  objc_sync_exit(obj);
}

- (void)performRequestForScene:(const char *)a1 .cold.1(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[scene identifier] isEqualToString:[_context sceneID]]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v9 = @"FBSSceneSnapshotRequestHandle.m";
    v10 = 1024;
    v11 = 35;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)performRequestForScene:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot perform this twice"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"FBSSceneSnapshotRequestHandle.m";
    v17 = 1024;
    v18 = 36;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)performRequestForScene:(const char *)a1 .cold.3(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v9 = @"FBSSceneSnapshotRequestHandle.m";
    v10 = 1024;
    v11 = 34;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v6 = 134218242;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "Snapshot request %p complete with error: %{public}@", &v6, 0x16u);
}

@end