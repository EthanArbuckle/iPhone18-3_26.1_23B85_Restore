@interface IDSXPCConnectionRemoteObjectPromise
- (BOOL)respondsToSelector:(SEL)selector;
- (IDSXPCConnectionRemoteObjectPromise)initWithInterface:(id)interface queue:(id)queue;
- (NSMutableArray)pendingInvocations;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_assertVoidReturnValueInInvocation:(id)invocation;
- (void)dealloc;
- (void)failWithError:(id)error;
- (void)forwardInvocation:(id)invocation;
- (void)fulfillWithRemoteObject:(id)object;
@end

@implementation IDSXPCConnectionRemoteObjectPromise

- (NSMutableArray)pendingInvocations
{
  queue = [(IDSXPCConnectionRemoteObjectPromise *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingInvocations = self->_pendingInvocations;
  if (!pendingInvocations)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_pendingInvocations;
    self->_pendingInvocations = v5;

    pendingInvocations = self->_pendingInvocations;
  }

  return pendingInvocations;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    target = self->_target;
    *buf = 138543618;
    v8 = target;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSXPCConnectionRemoteObjectPromise {target: %{public}@, pointer: %p}", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = IDSXPCConnectionRemoteObjectPromise;
  [(IDSXPCConnectionRemoteObjectPromise *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (IDSXPCConnectionRemoteObjectPromise)initWithInterface:(id)interface queue:(id)queue
{
  v17 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  queueCopy = queue;
  v9 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Alloc'ing IDSXPCConnectionRemoteObjectPromise {pointer: %p}", buf, 0xCu);
  }

  dispatch_assert_queue_V2(queueCopy);
  v14.receiver = self;
  v14.super_class = IDSXPCConnectionRemoteObjectPromise;
  v10 = [(IDSXPCConnectionRemoteObjectPromise *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_interface, interface);
    objc_storeStrong(&v11->_queue, queue);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)fulfillWithRemoteObject:(id)object
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  queue = [(IDSXPCConnectionRemoteObjectPromise *)self queue];
  dispatch_assert_queue_V2(queue);

  target = [(IDSXPCConnectionRemoteObjectPromise *)self target];

  if (target)
  {
    sub_195B2B48C(a2, self);
  }

  [(IDSXPCConnectionRemoteObjectPromise *)self setTarget:objectCopy];
  if ([(NSMutableArray *)self->_pendingInvocations count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_pendingInvocations;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          target2 = [(IDSXPCConnectionRemoteObjectPromise *)self target];
          [v13 invokeWithTarget:target2];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    pendingInvocations = self->_pendingInvocations;
    self->_pendingInvocations = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)failWithError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([(NSMutableArray *)self->_pendingInvocations count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_pendingInvocations, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_pendingInvocations;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = NSStringFromSelector([*(*(&v16 + 1) + 8 * v10) selector]);
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B500(v5, errorCopy, v12);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = errorCopy;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Failing xpcRemoteObjectPromise with no pending invocations {error: %{public}@}", buf, 0xCu);
    }
  }

  queue = [(IDSXPCConnectionRemoteObjectPromise *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingInvocations = self->_pendingInvocations;
  self->_pendingInvocations = 0;

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  queue = [(IDSXPCConnectionRemoteObjectPromise *)self queue];
  dispatch_assert_queue_V2(queue);

  interface = [(IDSXPCConnectionRemoteObjectPromise *)self interface];
  v7 = [interface _respondsToRemoteSelector:selector];

  if (v7 == 2)
  {
    return 0;
  }

  if (v7 != 1)
  {
    return 1;
  }

  v9.receiver = self;
  v9.super_class = IDSXPCConnectionRemoteObjectPromise;
  return [(IDSXPCConnectionRemoteObjectPromise *)&v9 respondsToSelector:selector];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  queue = [(IDSXPCConnectionRemoteObjectPromise *)self queue];
  dispatch_assert_queue_V2(queue);

  interface = [(IDSXPCConnectionRemoteObjectPromise *)self interface];
  v7 = [interface _methodSignatureForRemoteSelector:selector];

  if (!v7)
  {
    v9.receiver = self;
    v9.super_class = IDSXPCConnectionRemoteObjectPromise;
    v7 = [(IDSXPCConnectionRemoteObjectPromise *)&v9 methodSignatureForSelector:selector];
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  queue = [(IDSXPCConnectionRemoteObjectPromise *)self queue];
  dispatch_assert_queue_V2(queue);

  [(IDSXPCConnectionRemoteObjectPromise *)self _assertVoidReturnValueInInvocation:invocationCopy];
  target = [(IDSXPCConnectionRemoteObjectPromise *)self target];

  if (target)
  {
    target2 = [(IDSXPCConnectionRemoteObjectPromise *)self target];
    [invocationCopy invokeWithTarget:target2];
  }

  else
  {
    [invocationCopy retainArguments];
    target2 = [(IDSXPCConnectionRemoteObjectPromise *)self pendingInvocations];
    [target2 addObject:invocationCopy];
  }
}

- (void)_assertVoidReturnValueInInvocation:(id)invocation
{
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  if (strncmp([methodSignature methodReturnType], "v", objc_msgSend(methodSignature, "methodReturnLength")))
  {
    v4 = NSStringFromSelector([invocationCopy selector]);
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"XPC methods must have void return values {selector: %@}", v4}];
  }
}

@end