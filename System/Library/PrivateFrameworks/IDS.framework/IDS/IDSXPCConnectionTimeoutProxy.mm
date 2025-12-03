@interface IDSXPCConnectionTimeoutProxy
- (BOOL)_invocationHasBlock:(id)block;
- (BOOL)respondsToSelector:(SEL)selector;
- (IDSXPCConnectionTimeoutProxy)initWithTarget:(id)target connection:(id)connection timeoutInSeconds:(double)seconds errorHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IDSXPCConnectionTimeoutProxy

- (IDSXPCConnectionTimeoutProxy)initWithTarget:(id)target connection:(id)connection timeoutInSeconds:(double)seconds errorHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  connectionCopy = connection;
  handlerCopy = handler;
  queue = [connectionCopy queue];
  dispatch_assert_queue_V2(queue);

  v15 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v24 = targetCopy;
    v25 = 2114;
    v26 = connectionCopy;
    v27 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Alloc'ing IDSXPCConnectionTimeoutProxy {target: %{public}@, connection: %{public}@, pointer: %p}", buf, 0x20u);
  }

  v22.receiver = self;
  v22.super_class = IDSXPCConnectionTimeoutProxy;
  v16 = [(IDSXPCConnectionTimeoutProxy *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_target, target);
    objc_storeStrong(&v17->_connection, connection);
    v17->_timeout = seconds;
    v18 = MEMORY[0x19A8BBEF0](handlerCopy);
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
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSXPCConnectionTimeoutProxy {target: %{public}@, connection: %{public}@, pointer: %p}", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = IDSXPCConnectionTimeoutProxy;
  [(IDSXPCConnectionTimeoutProxy *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)forwardInvocation:(id)invocation
{
  v52 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  connection = [(IDSXPCConnectionTimeoutProxy *)self connection];
  queue = [connection queue];
  dispatch_assert_queue_V2(queue);

  if ([(IDSXPCConnectionTimeoutProxy *)self _invocationHasBlock:invocationCopy])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v8 = NSStringFromSelector([invocationCopy selector]);
    v9 = MEMORY[0x1E696AD98];
    [(IDSXPCConnectionTimeoutProxy *)self timeout];
    v10 = [v9 numberWithDouble:?];
    connection2 = [(IDSXPCConnectionTimeoutProxy *)self connection];
    queue2 = [connection2 queue];
    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue2);

    [(IDSXPCConnectionTimeoutProxy *)self timeout];
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    dispatch_source_set_timer(v13, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_195AE4298;
    handler[3] = &unk_1E743EEE8;
    v16 = v8;
    v40 = v16;
    v17 = uUID;
    v41 = v17;
    v18 = v10;
    v42 = v18;
    selfCopy = self;
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
    connection3 = [(IDSXPCConnectionTimeoutProxy *)self connection];
    pendingTransactions = [connection3 pendingTransactions];
    [pendingTransactions setObject:v22 forKeyedSubscript:v20];

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

    target = [(IDSXPCConnectionTimeoutProxy *)self target];
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
    v29 = [target remoteObjectProxyWithUserInfo:v27 errorHandler:v33];
  }

  else
  {
    target2 = [(IDSXPCConnectionTimeoutProxy *)self target];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_195AE461C;
    v32[3] = &unk_1E7442868;
    v32[4] = self;
    v29 = [target2 remoteObjectProxyWithErrorHandler:v32];
  }

  [invocationCopy invokeWithTarget:v29];

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  connection = [(IDSXPCConnectionTimeoutProxy *)self connection];
  queue = [connection queue];
  dispatch_assert_queue_V2(queue);

  target = [(IDSXPCConnectionTimeoutProxy *)self target];
  v7 = objc_opt_respondsToSelector();

  return v7 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  connection = [(IDSXPCConnectionTimeoutProxy *)self connection];
  queue = [connection queue];
  dispatch_assert_queue_V2(queue);

  target = [(IDSXPCConnectionTimeoutProxy *)self target];
  v8 = [target methodSignatureForSelector:selector];

  return v8;
}

- (BOOL)_invocationHasBlock:(id)block
{
  methodSignature = [block methodSignature];
  if ([methodSignature numberOfArguments])
  {
    v4 = 0;
    while (1)
    {
      v5 = [methodSignature getArgumentTypeAtIndex:v4];
      if (*v5 == 64 && v5[1] == 63 && !v5[2])
      {
        break;
      }

      if (++v4 >= [methodSignature numberOfArguments])
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