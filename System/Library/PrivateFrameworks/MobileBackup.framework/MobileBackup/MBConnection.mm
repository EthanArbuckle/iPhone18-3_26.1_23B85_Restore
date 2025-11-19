@interface MBConnection
- (MBConnection)initWithServiceName:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (MBConnection)initWithXPCConnection:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (MBConnectionDelegate)delegate;
- (id)description;
- (id)sendMessageWithReplyAndSync:(id)a3 error:(id *)a4;
- (void)_handleXPCError:(id)a3;
- (void)_handleXPCEvent:(id)a3;
- (void)_refreshProcessInfoWithXPCConnection:(id)a3;
- (void)_setEventHandlerForXPCConnection:(id)a3;
- (void)cancel;
- (void)sendMessage:(id)a3;
- (void)sendMessage:(id)a3 barrierBlock:(id)a4;
@end

@implementation MBConnection

- (MBConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = atomic_load(&self->_pid);
  if (v3)
  {
    v4 = [(MBConnection *)self processName];
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    if (v4)
    {
      [v5 stringWithFormat:@"<%@: %p; %@(%d)>", v6, self, v4, v3];
    }

    else
    {
      [v5 stringWithFormat:@"<%@: %p; %d>", v6, self, v3, v9];
    }
    v7 = ;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  }

  return v7;
}

- (MBConnection)initWithXPCConnection:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [MBConnection initWithXPCConnection:delegate:delegateQueue:];
  }

  v12 = v11;
  if (!v11)
  {
    [MBConnection initWithXPCConnection:delegate:delegateQueue:];
  }

  v19.receiver = self;
  v19.super_class = MBConnection;
  v13 = [(MBConnection *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v10);
    objc_storeStrong(&v14->_queue, a5);
    xpc_connection_set_target_queue(v9, v12);
    [(MBConnection *)v14 _setEventHandlerForXPCConnection:v9];
    [(MBConnection *)v14 _refreshProcessInfoWithXPCConnection:v9];
    objc_storeStrong(&v14->_xpcConnection, a3);
    v15 = [MEMORY[0x1E69DF078] currentPersona];
    v16 = [v15 userPersonaUniqueString];
    personaIdentifier = v14->_personaIdentifier;
    v14->_personaIdentifier = v16;
  }

  return v14;
}

- (MBConnection)initWithServiceName:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = MBConnection;
  v11 = [(MBConnection *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v9);
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = objc_opt_class();
    v15 = [v13 initWithFormat:@"%s.%p", class_getName(v14), v12];
    v16 = v15;
    if (!v10)
    {
      v17 = [v15 UTF8String];
      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create(v17, v18);
    }

    objc_storeStrong(&v12->_queue, v10);
    v19 = objc_opt_class();
    Name = class_getName(v19);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(Name, v21);

    mach_service = xpc_connection_create_mach_service([v8 UTF8String], v22, 0);
    [(MBConnection *)v12 _setEventHandlerForXPCConnection:mach_service];
    atomic_store(0, &v12->_pid);
    xpcConnection = v12->_xpcConnection;
    v12->_xpcConnection = mach_service;
  }

  return v12;
}

- (void)_refreshProcessInfoWithXPCConnection:(id)a3
{
  v3 = MEMORY[0x1EEE9AC00](self, a2, a3);
  v12 = *MEMORY[0x1E69E9840];
  pid = xpc_connection_get_pid(v4);
  if (pid)
  {
    v6 = pid;
    atomic_store(pid, v3 + 2);
    if (MBIsRunningInDaemon())
    {
      v7 = proc_pidpath(v6, buffer, 0x1000u);
      if (v7 < 1)
      {
        v9 = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v7 encoding:4];
        v9 = [v8 lastPathComponent];
      }

      [v3 setProcessName:v9];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setEventHandlerForXPCConnection:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MBConnection__setEventHandlerForXPCConnection___block_invoke;
  v6[3] = &unk_1E8684850;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  xpc_connection_set_event_handler(v5, v6);
}

void __49__MBConnection__setEventHandlerForXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MBConnection__setEventHandlerForXPCConnection___block_invoke_2;
  block[3] = &unk_1E8684758;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __49__MBConnection__setEventHandlerForXPCConnection___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!atomic_load((*(a1 + 32) + 8)))
  {
    [*(a1 + 32) _refreshProcessInfoWithXPCConnection:*(a1 + 40)];
  }

  v3 = MEMORY[0x1E12C5CD0](*(a1 + 48));
  if (v3 == MEMORY[0x1E69E9E80])
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = *MEMORY[0x1E69E9840];

    [v16 _handleXPCEvent:v17];
  }

  else
  {
    if (v3 != MEMORY[0x1E69E9E98])
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 48);
        v7 = MBStringWithXPCObject();
        *buf = 138412546;
        v24 = v5;
        v25 = 2112;
        v26 = v7;
        _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "%@ Received unexpected XPC message: %@", buf, 0x16u);

        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        v22 = MBStringWithXPCObject();
        _MBLog(@"E ", "%@ Received unexpected XPC message: %@", v10, v11, v12, v13, v14, v15, v8);
      }

      goto LABEL_12;
    }

    [*(a1 + 32) _handleXPCError:*(a1 + 48)];
    if (*(a1 + 48) != MEMORY[0x1E69E9E18] || !atomic_exchange((*(a1 + 32) + 8), 0))
    {
LABEL_12:
      v19 = *MEMORY[0x1E69E9840];
      return;
    }

    v20 = *(a1 + 32);
    v21 = *MEMORY[0x1E69E9840];

    [v20 setProcessName:0];
  }
}

- (void)_handleXPCEvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MBConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [[MBMessage alloc] _initWithXPCObject:v4];
  if ((MBIsRunningInDaemon() & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_INFO, "%{public}@ received %{public}@", buf, 0x16u);
      _MBLog(@"I ", "%{public}@ received %{public}@", v8, v9, v10, v11, v12, v13, self);
    }
  }

  v14 = [(MBConnection *)self delegate];
  [v14 connection:self didReceiveMessage:v6];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleXPCError:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(MBConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MBConnection *)self delegate];
  if (a3 == MEMORY[0x1E69E9E20])
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 1024;
      v25 = v6 != 0;
      _os_log_impl(&dword_1DEB5D000, v14, OS_LOG_TYPE_INFO, "%{public}@ was invalidated (%d)", buf, 0x12u);
      _MBLog(@"I ", "%{public}@ was invalidated (%d)", v15, v16, v17, v18, v19, v20, self);
    }

    [v6 connectionWasInvalidated:self];
  }

  else if (a3 == MEMORY[0x1E69E9E18])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 1024;
      v25 = v6 != 0;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_INFO, "%{public}@ was interrupted (%d)", buf, 0x12u);
      _MBLog(@"I ", "%{public}@ was interrupted (%d)", v8, v9, v10, v11, v12, v13, self);
    }

    [v6 connectionWasInterrupted:self];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ sending %@", buf, 0x16u);
    _MBLog(@"Db", "%{public}@ sending %@", v6, v7, v8, v9, v10, v11, self);
  }

  v12 = [v4 _xpcObject];
  xpc_connection_send_message(self->_xpcConnection, v12);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)a3 barrierBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sending (barrier) %@", buf, 0x16u);
    _MBLog(@"Df", "%{public}@ sending (barrier) %@", v9, v10, v11, v12, v13, v14, self);
  }

  v15 = [v6 _xpcObject];
  xpc_connection_send_message(self->_xpcConnection, v15);
  xpc_connection_send_barrier(self->_xpcConnection, v7);

  v16 = *MEMORY[0x1E69E9840];
}

- (id)sendMessageWithReplyAndSync:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 name];

  if (!v8)
  {
    [MBConnection sendMessageWithReplyAndSync:a2 error:self];
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ sending %@", buf, 0x16u);
    v28 = v7;
    _MBLog(@"Db", "%{public}@ sending %@", v10, v11, v12, v13, v14, v15, self);
  }

  v16 = [v7 _xpcObject];
  v17 = self->_xpcConnection;
  v18 = xpc_connection_send_message_with_reply_sync(v17, v16);
  if (MEMORY[0x1E12C5CD0]() == MEMORY[0x1E69E9E80])
  {
    v22 = [[MBMessage alloc] _initWithXPCObject:v18];
    v23 = 0;
  }

  else
  {
    v19 = v18;
    v20 = v19;
    if (v19 == MEMORY[0x1E69E9E20])
    {
      v21 = MBStringWithXPCObject();
      [MBError errorWithCode:20 format:@"%@", v21, v28];
    }

    else if (v19 == MEMORY[0x1E69E9E18])
    {
      v21 = MBStringWithXPCObject();
      [MBError errorWithCode:19 format:@"%@", v21, v28];
    }

    else
    {
      v21 = MBStringWithXPCObject();
      [MBError errorWithCode:18 format:@"%@", v21, v28];
    }
    v23 = ;

    v22 = 0;
  }

  if (!atomic_load(&self->_pid))
  {
    [(MBConnection *)self _refreshProcessInfoWithXPCConnection:v17];
  }

  if (a4 && v23)
  {
    v25 = v23;
    *a4 = v23;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_INFO, "Canceling %{public}@", buf, 0xCu);
    _MBLog(@"I ", "Canceling %{public}@", v4, v5, v6, v7, v8, v9, self);
  }

  [(MBConnection *)self setDelegate:0];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sendMessageWithReplyAndSync:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBConnection.m" lineNumber:170 description:@"message must have a name"];
}

@end