@interface _FBSDisplayLayoutService
- (id)_initWithEndpoint:(id)a3 qos:(char)a4;
- (id)currentLayout;
- (void)_noteDisconnected;
- (void)addObserver:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserverForKey:(id)a3;
- (void)updateLayout:(id)a3 withTransition:(id)a4;
@end

@implementation _FBSDisplayLayoutService

- (id)currentLayout
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_layout;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_noteDisconnected
{
  os_unfair_lock_lock(&self->_lock);
  lock_layout = self->_lock_layout;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_layout)
  {
    v5 = objc_opt_new();
    v4 = [MEMORY[0x1E695DFB8] orderedSetWithObject:@"FBSDisplayLayoutMonitorDisconnected"];
    [v5 setTransitionReasons:v4];

    BSCreateSerializedBSXPCEncodableObject();
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_keyedObservers = self->_lock_keyedObservers;
  self->_lock_keyedObservers = 0;

  os_unfair_lock_unlock(&self->_lock);
  connection = self->_connection;

  [(BSServiceConnection *)connection invalidate];
}

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _FBSDisplayLayoutService;
  [(_FBSDisplayLayoutService *)&v3 dealloc];
}

- (id)_initWithEndpoint:(id)a3 qos:(char)a4
{
  v4 = a4;
  v7 = a3;
  v30.receiver = self;
  v30.super_class = _FBSDisplayLayoutService;
  v8 = [(_FBSDisplayLayoutService *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endpoint, a3);
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v7 service];
    v12 = [v7 targetDescription];
    v13 = [v7 instance];
    v14 = _NSStringFromFBSDisplayLayoutQOS(v4);
    v15 = [v10 stringWithFormat:@"%@:%@-%@-%@", v11, v12, v13, v14];

    v16 = _serviceQualityForFBSDisplayLayoutQOS(v4);
    v17 = [off_1E76BCA48 queueWithName:v15 serviceQuality:v16];
    callOutQueue = v9->_callOutQueue;
    v9->_callOutQueue = v17;

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __50___FBSDisplayLayoutService__initWithEndpoint_qos___block_invoke;
    v28[3] = &__block_descriptor_33_e25_v16__0___BSXPCEncoding__8l;
    v29 = v4;
    v19 = [off_1E76BCA28 connectionWithEndpoint:v7 clientContextBuilder:v28];
    connection = v9->_connection;
    v9->_connection = v19;

    v21 = v9->_connection;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50___FBSDisplayLayoutService__initWithEndpoint_qos___block_invoke_2;
    v26[3] = &unk_1E76BE6A8;
    v22 = v9;
    v27 = v22;
    [(BSServiceConnection *)v21 configureConnection:v26];
    v22->_lock._os_unfair_lock_opaque = 0;
    v23 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:1];
    lock_keyedObservers = v22->_lock_keyedObservers;
    v22->_lock_keyedObservers = v23;

    [(BSServiceConnection *)v9->_connection activate];
  }

  return v9;
}

- (void)addObserver:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v8 = [a3 copy];
  if (!v8)
  {
    [_FBSDisplayLayoutService addObserver:a2 forKey:?];
  }

  if (!v7)
  {
    [_FBSDisplayLayoutService addObserver:a2 forKey:?];
  }

  v9 = v8;
  os_unfair_lock_lock(&self->_lock);
  lock_keyedObservers = self->_lock_keyedObservers;
  v11 = MEMORY[0x1A58E80F0](v9);
  [(NSMapTable *)lock_keyedObservers setObject:v11 forKey:v7];

  lock_layoutGeneration = self->_lock_layoutGeneration;
  os_unfair_lock_unlock(&self->_lock);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __47___FBSDisplayLayoutService_addObserver_forKey___block_invoke;
  v20 = &unk_1E76BE6D0;
  v21 = self;
  v24 = lock_layoutGeneration;
  v13 = v7;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = MEMORY[0x1A58E80F0](&v17);
  callOutQueue = self->_callOutQueue;
  if (lock_layoutGeneration)
  {
    [(BSServiceDispatchQueue *)callOutQueue performAsync:v15, v17, v18, v19, v20, v21, v22];
  }

  else
  {
    [(BSServiceDispatchQueue *)callOutQueue performAfter:v15 withBlock:1.0, v17, v18, v19, v20, v21, v22];
  }
}

- (void)removeObserverForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [_FBSDisplayLayoutService removeObserverForKey:a2];
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_keyedObservers removeObjectForKey:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateLayout:(id)a3 withTransition:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a4;
  BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary();
}

- (void)addObserver:(char *)a1 forKey:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"key", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addObserver:(char *)a1 forKey:.cold.2(char *a1)
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

- (void)removeObserverForKey:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"key", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end