@interface MIBUNWConnection
- (MIBUNWConnection)initWithConfiguration:(id)a3 messageFramer:(id)a4 dispatchQueue:(id)a5 statusDelegate:(id)a6;
- (MIBUNWConnection)initWithNWConnection:(id)a3 dispatchQueue:(id)a4 statusDelegate:(id)a5;
- (id)_getRemoteIPv6AddressFromConnection:(id)a3;
- (id)description;
- (void)_cancelTimerForWaitingState;
- (void)_close;
- (void)_handleNewConnectionState:(int)a3 error:(id)a4;
- (void)_open;
- (void)_scheduleNextMessageReception;
- (void)_sendMessage:(id)a3 withCompletion:(id)a4;
- (void)_setupTimerForWaitingState;
- (void)close;
- (void)open;
- (void)sendMessage:(id)a3 withCompletion:(id)a4;
- (void)setState:(unint64_t)a3;
@end

@implementation MIBUNWConnection

- (MIBUNWConnection)initWithNWConnection:(id)a3 dispatchQueue:(id)a4 statusDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MIBUNWConnection;
  v12 = [(MIBUNWConnection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_state = 0;
    objc_storeStrong(&v12->_connection, a3);
    objc_storeStrong(&v13->_queue, a4);
    objc_storeStrong(&v13->_delegate, a5);
    v14 = [(MIBUNWConnection *)v13 _getRemoteIPv6AddressFromConnection:v9];
    remoteIPv6Address = v13->_remoteIPv6Address;
    v13->_remoteIPv6Address = v14;
  }

  return v13;
}

- (MIBUNWConnection)initWithConfiguration:(id)a3 messageFramer:(id)a4 dispatchQueue:(id)a5 statusDelegate:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 objectForKey:@"RemoteAddress"];
  v15 = [v10 objectForKey:@"RemotePort"];
  v16 = v15;
  if (v14 && v15)
  {
    host = nw_endpoint_create_host([v14 UTF8String], objc_msgSend(v15, "UTF8String"));
    if (!host)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
      }

      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
      }

      v23 = 0;
      goto LABEL_37;
    }

    v18 = [v10 objectForKey:@"InterfaceName"];
    parameters = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
    v31 = v13;
    if (!v18)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
      }

      v30 = v12;
      v24 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = self;
        _os_log_impl(&dword_259B04000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: connection with no interface name specified", buf, 0xCu);
      }

      goto LABEL_25;
    }

    if (MIBUOnceToken != -1)
    {
      [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
    }

    v19 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v34 = self;
      v35 = 2114;
      v36 = v18;
      _os_log_impl(&dword_259B04000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: configure connection with interface name: %{public}@", buf, 0x16u);
    }

    [v18 UTF8String];
    v20 = nw_interface_create_with_name();
    if (v20)
    {
      v21 = v20;
      v30 = v12;
      nw_parameters_require_interface(parameters, v20);

LABEL_25:
      v25 = nw_parameters_copy_default_protocol_stack(parameters);
      options = nw_framer_create_options(v11);
      nw_protocol_stack_prepend_application_protocol(v25, options);

      v27 = nw_connection_create(host, parameters);
      if (v27)
      {
        self = [(MIBUNWConnection *)self initWithNWConnection:v27 dispatchQueue:v30 statusDelegate:v31];
        v23 = self;
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
        }

        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
        }

        v23 = 0;
      }

      v12 = v30;
      goto LABEL_36;
    }

    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        v23 = 0;
LABEL_36:
        v13 = v31;

LABEL_37:
        goto LABEL_38;
      }
    }

    else
    {
      [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }
    }

    [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
    goto LABEL_35;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
  }

  v22 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v34 = self;
    v35 = 2114;
    v36 = v14;
    v37 = 2114;
    v38 = v16;
    _os_log_error_impl(&dword_259B04000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Invalid remote address or remote port specified: %{public}@:%{public}@", buf, 0x20u);
  }

  v23 = 0;
LABEL_38:

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

void __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_7()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_13()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_16()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_19()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_22()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)open
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__MIBUNWConnection_open__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MIBUNWConnection_close__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sendMessage:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MIBUNWConnection_sendMessage_withCompletion___block_invoke;
  block[3] = &unk_2798EB9D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v6 = self->_delegate;

      [(MIBUNWConnectionDelegate *)v6 unicastConnection:self didEnterNewState:a3];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@[%p]: %@>", v5, self, self->_remoteIPv6Address];

  return v6;
}

- (void)_open
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_259B04000, v4, v5, "%{public}@: Cannot open connection when in state: %lu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __25__MIBUNWConnection__open__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __25__MIBUNWConnection__open__block_invoke_32(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = NSErrorFromNWError(a3);
  [*(a1 + 32) _handleNewConnectionState:a2 error:v5];
}

- (void)_close
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_259B04000, v4, v5, "%{public}@: Cannot close connection when in state: %lu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __26__MIBUNWConnection__close__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_sendMessage:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if ([(MIBUNWConnection *)self state]== 2)
  {
    v8 = [v6 createContent];
    v9 = [v6 createContentContext];
    connection = self->_connection;
    completion[0] = MEMORY[0x277D85DD0];
    completion[1] = 3221225472;
    completion[2] = __48__MIBUNWConnection__sendMessage_withCompletion___block_invoke_38;
    completion[3] = &unk_2798EBA20;
    v13 = v7;
    nw_connection_send(connection, v8, v9, 1, completion);
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWConnection _sendMessage:withCompletion:];
    }

    v11 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNWConnection _sendMessage:v11 withCompletion:?];
    }
  }
}

void __48__MIBUNWConnection__sendMessage_withCompletion___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__MIBUNWConnection__sendMessage_withCompletion___block_invoke_38(uint64_t a1, NSObject *a2)
{
  v3 = NSErrorFromNWError(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)_scheduleNextMessageReception
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_259B04000, v4, v5, "%{public}@: Cannot schedule next message reception when in state: %lu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke_42(uint64_t a1, void *a2, void *a3, int a4, NSObject *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = NSErrorFromNWError(a5);
  if (v11)
  {
    if (MIBUOnceToken != -1)
    {
      __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke_42_cold_1();
    }

    v12 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke_42_cold_2(a1, v11, v12);
    }

    [*(a1 + 32) _close];
    goto LABEL_17;
  }

  if (!a4)
  {
LABEL_16:
    [*(a1 + 32) _scheduleNextMessageReception];
    goto LABEL_17;
  }

  if (!nw_content_context_get_is_final(v10))
  {
    v15 = [[MIBUNWMessage alloc] initWithContent:v9 andContext:v10];
    if (v15)
    {
      [*(*(a1 + 32) + 8) unicastConnection:*(a1 + 32) didReceiveMessage:v15];
    }

    goto LABEL_16;
  }

  if (MIBUOnceToken != -1)
  {
    __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke_42_cold_3();
  }

  v13 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Receive message got connection closed.", &v17, 0xCu);
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke_45()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_handleNewConnectionState:(int)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWConnection _handleNewConnectionState:error:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = NSStringFromNWConnectionState(a3);
    v15 = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: New connection state: %{public}@, error: %{public}@", &v15, 0x20u);
  }

  [(MIBUNWConnection *)self _cancelTimerForWaitingState];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      [(MIBUNWConnection *)self _close];
    }

    else if (a3 == 5)
    {
      connection = self->_connection;
      self->_connection = 0;

      [(MIBUNWConnection *)self setState:4];
      delegate = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        [(MIBUNWConnectionDelegate *)self->_delegate unicastConnectionDidClose:self withError:v6];
      }
    }
  }

  else if (a3 == 1)
  {
    [(MIBUNWConnection *)self _setupTimerForWaitingState];
  }

  else if (a3 == 3)
  {
    [(MIBUNWConnection *)self setState:2];
    v10 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(MIBUNWConnectionDelegate *)self->_delegate unicastConnectionDidOpen:self];
    }

    v11 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(MIBUNWConnection *)self _scheduleNextMessageReception];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __52__MIBUNWConnection__handleNewConnectionState_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_getRemoteIPv6AddressFromConnection:(id)a3
{
  v3 = nw_connection_copy_endpoint(a3);
  v4 = v3;
  if (v3)
  {
    v5 = nw_endpoint_copy_address_string(v3);
    if (v5)
    {
      v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], v5, 0x600u, *MEMORY[0x277CBECF0]);
      goto LABEL_13;
    }

    if (MIBUOnceToken != -1)
    {
      [MIBUNWConnection _getRemoteIPv6AddressFromConnection:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNWConnection _getRemoteIPv6AddressFromConnection:];
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWConnection _getRemoteIPv6AddressFromConnection:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNWConnection _getRemoteIPv6AddressFromConnection:];
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

void __56__MIBUNWConnection__getRemoteIPv6AddressFromConnection___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __56__MIBUNWConnection__getRemoteIPv6AddressFromConnection___block_invoke_60()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_setupTimerForWaitingState
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  waitingTimer = self->_waitingTimer;
  self->_waitingTimer = v3;

  v5 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(self->_waitingTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  v6 = self->_waitingTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__MIBUNWConnection__setupTimerForWaitingState__block_invoke;
  handler[3] = &unk_2798EB9A8;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_resume(self->_waitingTimer);
}

uint64_t __46__MIBUNWConnection__setupTimerForWaitingState__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    __46__MIBUNWConnection__setupTimerForWaitingState__block_invoke_cold_1();
  }

  v2 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 1024;
    v9 = 30;
    _os_log_impl(&dword_259B04000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection timed out after staying in waiting state for %d seconds.", &v6, 0x12u);
  }

  [*(a1 + 32) _close];
  result = [*(a1 + 32) _cancelTimerForWaitingState];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __46__MIBUNWConnection__setupTimerForWaitingState__block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_cancelTimerForWaitingState
{
  waitingTimer = self->_waitingTimer;
  if (waitingTimer)
  {
    dispatch_source_cancel(waitingTimer);
    v4 = self->_waitingTimer;
    self->_waitingTimer = 0;
  }
}

- (void)initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(uint64_t)a1 withCompletion:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_259B04000, v4, v5, "%{public}@: Cannot send message reception when in state: %lu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWConnection__scheduleNextMessageReception__block_invoke_42_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_259B04000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to receive message from connection: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_getRemoteIPv6AddressFromConnection:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_getRemoteIPv6AddressFromConnection:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end