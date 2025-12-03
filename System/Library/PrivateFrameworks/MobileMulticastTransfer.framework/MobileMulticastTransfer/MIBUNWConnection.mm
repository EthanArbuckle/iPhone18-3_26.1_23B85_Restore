@interface MIBUNWConnection
- (MIBUNWConnection)initWithConfiguration:(id)configuration messageFramer:(id)framer dispatchQueue:(id)queue statusDelegate:(id)delegate;
- (MIBUNWConnection)initWithNWConnection:(id)connection dispatchQueue:(id)queue statusDelegate:(id)delegate;
- (id)_getRemoteIPv6AddressFromConnection:(id)connection;
- (id)description;
- (void)_cancelTimerForWaitingState;
- (void)_close;
- (void)_handleNewConnectionState:(int)state error:(id)error;
- (void)_open;
- (void)_scheduleNextMessageReception;
- (void)_sendMessage:(id)message withCompletion:(id)completion;
- (void)_setupTimerForWaitingState;
- (void)close;
- (void)open;
- (void)sendMessage:(id)message withCompletion:(id)completion;
- (void)setState:(unint64_t)state;
@end

@implementation MIBUNWConnection

- (MIBUNWConnection)initWithNWConnection:(id)connection dispatchQueue:(id)queue statusDelegate:(id)delegate
{
  connectionCopy = connection;
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = MIBUNWConnection;
  v12 = [(MIBUNWConnection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_state = 0;
    objc_storeStrong(&v12->_connection, connection);
    objc_storeStrong(&v13->_queue, queue);
    objc_storeStrong(&v13->_delegate, delegate);
    v14 = [(MIBUNWConnection *)v13 _getRemoteIPv6AddressFromConnection:connectionCopy];
    remoteIPv6Address = v13->_remoteIPv6Address;
    v13->_remoteIPv6Address = v14;
  }

  return v13;
}

- (MIBUNWConnection)initWithConfiguration:(id)configuration messageFramer:(id)framer dispatchQueue:(id)queue statusDelegate:(id)delegate
{
  v39 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  framerCopy = framer;
  queueCopy = queue;
  delegateCopy = delegate;
  v14 = [configurationCopy objectForKey:@"RemoteAddress"];
  v15 = [configurationCopy objectForKey:@"RemotePort"];
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

      selfCopy3 = 0;
      goto LABEL_37;
    }

    v18 = [configurationCopy objectForKey:@"InterfaceName"];
    parameters = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
    v31 = delegateCopy;
    if (!v18)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNWConnection initWithConfiguration:messageFramer:dispatchQueue:statusDelegate:];
      }

      v30 = queueCopy;
      v24 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy4 = self;
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
      selfCopy4 = self;
      v35 = 2114;
      v36 = v18;
      _os_log_impl(&dword_259B04000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: configure connection with interface name: %{public}@", buf, 0x16u);
    }

    [v18 UTF8String];
    v20 = nw_interface_create_with_name();
    if (v20)
    {
      v21 = v20;
      v30 = queueCopy;
      nw_parameters_require_interface(parameters, v20);

LABEL_25:
      v25 = nw_parameters_copy_default_protocol_stack(parameters);
      options = nw_framer_create_options(framerCopy);
      nw_protocol_stack_prepend_application_protocol(v25, options);

      v27 = nw_connection_create(host, parameters);
      if (v27)
      {
        self = [(MIBUNWConnection *)self initWithNWConnection:v27 dispatchQueue:v30 statusDelegate:v31];
        selfCopy3 = self;
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

        selfCopy3 = 0;
      }

      queueCopy = v30;
      goto LABEL_36;
    }

    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        selfCopy3 = 0;
LABEL_36:
        delegateCopy = v31;

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
    selfCopy4 = self;
    v35 = 2114;
    v36 = v14;
    v37 = 2114;
    v38 = v16;
    _os_log_error_impl(&dword_259B04000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Invalid remote address or remote port specified: %{public}@:%{public}@", buf, 0x20u);
  }

  selfCopy3 = 0;
LABEL_38:

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy3;
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

- (void)sendMessage:(id)message withCompletion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MIBUNWConnection_sendMessage_withCompletion___block_invoke;
  block[3] = &unk_2798EB9D0;
  block[4] = self;
  v12 = messageCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v6 = self->_delegate;

      [(MIBUNWConnectionDelegate *)v6 unicastConnection:self didEnterNewState:state];
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

- (void)_sendMessage:(id)message withCompletion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if ([(MIBUNWConnection *)self state]== 2)
  {
    createContent = [messageCopy createContent];
    createContentContext = [messageCopy createContentContext];
    connection = self->_connection;
    completion[0] = MEMORY[0x277D85DD0];
    completion[1] = 3221225472;
    completion[2] = __48__MIBUNWConnection__sendMessage_withCompletion___block_invoke_38;
    completion[3] = &unk_2798EBA20;
    v13 = completionCopy;
    nw_connection_send(connection, createContent, createContentContext, 1, completion);
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

- (void)_handleNewConnectionState:(int)state error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWConnection _handleNewConnectionState:error:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = NSStringFromNWConnectionState(state);
    v15 = 138543874;
    selfCopy = self;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = errorCopy;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: New connection state: %{public}@, error: %{public}@", &v15, 0x20u);
  }

  [(MIBUNWConnection *)self _cancelTimerForWaitingState];
  if (state > 3)
  {
    if (state == 4)
    {
      [(MIBUNWConnection *)self _close];
    }

    else if (state == 5)
    {
      connection = self->_connection;
      self->_connection = 0;

      [(MIBUNWConnection *)self setState:4];
      delegate = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        [(MIBUNWConnectionDelegate *)self->_delegate unicastConnectionDidClose:self withError:errorCopy];
      }
    }
  }

  else if (state == 1)
  {
    [(MIBUNWConnection *)self _setupTimerForWaitingState];
  }

  else if (state == 3)
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

- (id)_getRemoteIPv6AddressFromConnection:(id)connection
{
  v3 = nw_connection_copy_endpoint(connection);
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