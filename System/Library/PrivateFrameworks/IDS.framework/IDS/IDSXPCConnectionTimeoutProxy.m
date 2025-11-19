@interface IDSXPCConnectionTimeoutProxy
- (BOOL)_invocationHasBlock:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (IDSXPCConnectionTimeoutProxy)initWithTarget:(id)a3 connection:(id)a4 timeoutInSeconds:(double)a5 errorHandler:(id)a6;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation IDSXPCConnectionTimeoutProxy

- (IDSXPCConnectionTimeoutProxy)initWithTarget:(id)a3 connection:(id)a4 timeoutInSeconds:(double)a5 errorHandler:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v12 queue];
  dispatch_assert_queue_V2(v14);

  v15 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    v27 = 2048;
    v28 = self;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Alloc'ing IDSXPCConnectionTimeoutProxy {target: %{public}@, connection: %{public}@, pointer: %p}", buf, 0x20u);
  }

  v22.receiver = self;
  v22.super_class = IDSXPCConnectionTimeoutProxy;
  v16 = [(IDSXPCConnectionTimeoutProxy *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_target, a3);
    objc_storeStrong(&v17->_connection, a4);
    v17->_timeout = a5;
    v18 = MEMORY[0x19A8BBEF0](v13);
    errorHandler = v17->_errorHandler;
    v17->_errorHandler = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    target = self->_target;
    connection = self->_connection;
    *buf = 138543874;
    v9 = target;
    v10 = 2114;
    v11 = connection;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSXPCConnectionTimeoutProxy {target: %{public}@, connection: %{public}@, pointer: %p}", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = IDSXPCConnectionTimeoutProxy;
  [(IDSXPCConnectionTimeoutProxy *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)forwardInvocation:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IDSXPCConnectionTimeoutProxy *)self connection];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([(IDSXPCConnectionTimeoutProxy *)self _invocationHasBlock:v4])
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = NSStringFromSelector([v4 selector]);
    v9 = MEMORY[0x1E696AD98];
    [(IDSXPCConnectionTimeoutProxy *)self timeout];
    v10 = [v9 numberWithDouble:?];
    v11 = [(IDSXPCConnectionTimeoutProxy *)self connection];
    v12 = [v11 queue];
    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v12);

    [(IDSXPCConnectionTimeoutProxy *)self timeout];
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    dispatch_source_set_timer(v13, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_195AE4298;
    handler[3] = &unk_1E743EEE8;
    v16 = v8;
    v40 = v16;
    v17 = v7;
    v41 = v17;
    v18 = v10;
    v42 = v18;
    v43 = self;
    dispatch_source_set_event_handler(v13, handler);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_195AE4494;
    v35[3] = &unk_1E743E620;
    v19 = v16;
    v36 = v19;
    v20 = v17;
    v37 = v20;
    v21 = v13;
    v38 = v21;
    v22 = MEMORY[0x19A8BBEF0](v35);
    v23 = [(IDSXPCConnectionTimeoutProxy *)self connection];
    v24 = [v23 pendingTransactions];
    [v24 setObject:v22 forKeyedSubscript:v20];

    dispatch_resume(v21);
    v25 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v47 = v19;
      v48 = 2114;
      v49 = v20;
      v50 = 2114;
      v51 = v18;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "Starting timeout for xpc message {selector: %{public}@, uuid: %{public}@, timeout: %{public}@}", buf, 0x20u);
    }

    v26 = [(IDSXPCConnectionTimeoutProxy *)self target];
    v44 = @"IDSXPCConnectionTransactionUUID";
    v45 = v20;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_195AE4558;
    v33[3] = &unk_1E74423C0;
    v33[4] = self;
    v34 = v20;
    v28 = v20;
    v29 = [v26 remoteObjectProxyWithUserInfo:v27 errorHandler:v33];
  }

  else
  {
    v30 = [(IDSXPCConnectionTimeoutProxy *)self target];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_195AE461C;
    v32[3] = &unk_1E7442868;
    v32[4] = self;
    v29 = [v30 remoteObjectProxyWithErrorHandler:v32];
  }

  [v4 invokeWithTarget:v29];

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v4 = [(IDSXPCConnectionTimeoutProxy *)self connection];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IDSXPCConnectionTimeoutProxy *)self target];
  v7 = objc_opt_respondsToSelector();

  return v7 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(IDSXPCConnectionTimeoutProxy *)self connection];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(IDSXPCConnectionTimeoutProxy *)self target];
  v8 = [v7 methodSignatureForSelector:a3];

  return v8;
}

- (BOOL)_invocationHasBlock:(id)a3
{
  v3 = [a3 methodSignature];
  if ([v3 numberOfArguments])
  {
    v4 = 0;
    while (1)
    {
      v5 = [v3 getArgumentTypeAtIndex:v4];
      if (*v5 == 64 && v5[1] == 63 && !v5[2])
      {
        break;
      }

      if (++v4 >= [v3 numberOfArguments])
      {
        goto LABEL_7;
      }
    }

    v6 = 1;
  }

  else
  {
LABEL_7:
    v6 = 0;
  }

  return v6;
}

@end