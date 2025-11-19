@interface MIBUNWClientListener
- (MIBUNWClientListener)initWithConfiguration:(id)a3 delegate:(id)a4;
- (id)description;
- (void)_handleNewListenerState:(int)a3 error:(id)a4;
- (void)_handleNewNetworkConnection:(id)a3;
- (void)_start;
- (void)_stopWithReason:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MIBUNWClientListener

- (MIBUNWClientListener)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = MIBUNWClientListener;
  v8 = [(MIBUNWClientListener *)&v36 init];
  if (!v8)
  {
LABEL_24:
    v27 = v8;
    goto LABEL_26;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.MIBUNWClientListenerQueue", v9);
  v11 = *(v8 + 2);
  *(v8 + 2) = v10;

  objc_storeStrong(v8 + 1, a4);
  v12 = [v6 objectForKey:@"ProtocolType"];
  v13 = [v12 unsignedIntegerValue];

  if (v13 == 2)
  {
    secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
  }

  else
  {
    if (v13 != 1)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNWClientListener initWithConfiguration:delegate:];
      }

      v28 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      [(MIBUNWClientListener *)v8 initWithConfiguration:v13 delegate:v28];
      v27 = 0;
      goto LABEL_26;
    }

    secure_tcp = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
  }

  v15 = secure_tcp;
  v16 = [v6 objectForKey:@"HostAddress"];
  v17 = [v6 objectForKey:@"HostPort"];
  v18 = v17;
  if (v16 && v17)
  {
    host = nw_endpoint_create_host([v16 UTF8String], objc_msgSend(v17, "UTF8String"));
    nw_parameters_set_local_endpoint(v15, host);
    nw_parameters_set_reuse_local_address(v15, 1);
    v19 = nw_parameters_copy_default_protocol_stack(v15);
    v20 = +[MIBUNWMessage sharedFramer];
    options = nw_framer_create_options(v20);
    nw_protocol_stack_prepend_application_protocol(v19, options);

    v22 = nw_listener_create(v15);
    v23 = v22;
    if (v22)
    {
      nw_listener_set_queue(v22, *(v8 + 2));
      nw_listener_set_new_connection_limit(v23, 0xFFFFFFFF);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __55__MIBUNWClientListener_initWithConfiguration_delegate___block_invoke_17;
      handler[3] = &unk_2798EB9F8;
      v24 = v8;
      v35 = v24;
      nw_listener_set_state_changed_handler(v23, handler);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __55__MIBUNWClientListener_initWithConfiguration_delegate___block_invoke_2;
      v32[3] = &unk_2798EBAC8;
      v25 = v24;
      v33 = v25;
      nw_listener_set_new_connection_handler(v23, v32);
      objc_storeStrong(v25 + 3, v23);
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNWClientListener initWithConfiguration:delegate:];
      }

      v29 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [MIBUNWClientListener initWithConfiguration:v8 delegate:v29];
      }
    }

    if (v23)
    {
      goto LABEL_24;
    }

LABEL_25:
    v27 = 0;
    goto LABEL_26;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientListener initWithConfiguration:delegate:];
  }

  v26 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNWClientListener initWithConfiguration:v8 delegate:v26];
  }

  v27 = 0;
LABEL_26:

  return v27;
}

void __55__MIBUNWClientListener_initWithConfiguration_delegate___block_invoke()
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

void __55__MIBUNWClientListener_initWithConfiguration_delegate___block_invoke_11()
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

void __55__MIBUNWClientListener_initWithConfiguration_delegate___block_invoke_14()
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

void __55__MIBUNWClientListener_initWithConfiguration_delegate___block_invoke_17(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = NSErrorFromNWError(a3);
  [*(a1 + 32) _handleNewListenerState:a2 error:v5];
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MIBUNWClientListener_start__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MIBUNWClientListener_stop__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@>", v4];

  return v5;
}

- (void)_start
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientListener _start];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting client listener.", &v5, 0xCu);
  }

  nw_listener_start(self->_listener);
  v4 = *MEMORY[0x277D85DE8];
}

void __30__MIBUNWClientListener__start__block_invoke()
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

- (void)_stopWithReason:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientListener _stopWithReason:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping client listener due to: %{public}@", &v8, 0x16u);
  }

  nw_listener_cancel(self->_listener);
  delegate = self->_delegate;
  if (delegate)
  {
    [(MIBUNWClientListenerDelegate *)delegate clientListenerDidStop:self withError:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__MIBUNWClientListener__stopWithReason___block_invoke()
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

- (void)_handleNewListenerState:(int)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientListener _handleNewListenerState:error:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = NSStringFromNWListenerState(a3);
    v15 = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Handle new listener state: %{public}@, error: %{public}@", &v15, 0x20u);
  }

  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        delegate = self->_delegate;
        if (delegate)
        {
          [(MIBUNWClientListenerDelegate *)delegate clientListenerDidStart:self];
        }
      }

      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (a3 == 3)
  {
LABEL_13:
    v12 = self->_delegate;
    if (v12)
    {
      [(MIBUNWClientListenerDelegate *)v12 clientListenerDidStop:self withError:v6];
    }

    v13 = [v6 localizedDescription];
    [(MIBUNWClientListener *)self _stopWithReason:v13];

    goto LABEL_16;
  }

  if (a3 == 4)
  {
    listener = self->_listener;
    self->_listener = 0;
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

void __54__MIBUNWClientListener__handleNewListenerState_error___block_invoke()
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

- (void)_handleNewNetworkConnection:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientListener _handleNewNetworkConnection:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Handle new network connection: %{public}@", &v9, 0x16u);
  }

  v6 = [[MIBUNWClientDevice alloc] initWithNWConnection:v4];
  delegate = self->_delegate;
  if (delegate)
  {
    [(MIBUNWClientListenerDelegate *)delegate clientListener:self didReceiveNewClientDevice:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__MIBUNWClientListener__handleNewNetworkConnection___block_invoke()
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259B04000, a2, OS_LOG_TYPE_ERROR, "%{public}@: No host address or port specified.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:(uint64_t)a1 delegate:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259B04000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create network listener.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:(os_log_t)log delegate:.cold.6(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_259B04000, log, OS_LOG_TYPE_ERROR, "%{public}@: Invalid listener protocol type specified: %lu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end