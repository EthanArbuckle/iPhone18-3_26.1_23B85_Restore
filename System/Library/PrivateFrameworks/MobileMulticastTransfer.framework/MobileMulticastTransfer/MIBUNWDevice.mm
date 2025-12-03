@interface MIBUNWDevice
- (MIBUNWDevice)init;
- (void)_sendMessage:(id)message;
- (void)_sendOutgoingMessage:(id)message synchronous:(BOOL)synchronous shouldWait:(BOOL *)wait;
- (void)bootstrap;
- (void)invalidate;
- (void)sendOutgoingMessage:(id)message synchronous:(BOOL)synchronous;
@end

@implementation MIBUNWDevice

- (MIBUNWDevice)init
{
  v9.receiver = self;
  v9.super_class = MIBUNWDevice;
  v2 = [(MIBUNWDevice *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MIBUNWDevice", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    messages = v2->_messages;
    v2->_messages = v6;
  }

  return v2;
}

- (void)bootstrap
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MIBUNWDevice_bootstrap__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__MIBUNWDevice_invalidate__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __26__MIBUNWDevice_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    [v2 close];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (void)sendOutgoingMessage:(id)message synchronous:(BOOL)synchronous
{
  messageCopy = message;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __48__MIBUNWDevice_sendOutgoingMessage_synchronous___block_invoke;
  v13 = &unk_2798EBCF8;
  selfCopy = self;
  v8 = messageCopy;
  synchronousCopy = synchronous;
  v15 = v8;
  v16 = &v18;
  dispatch_sync(queue, &v10);
  if (*(v19 + 24) == 1)
  {
    syncSemaphore = [v8 syncSemaphore];
    dispatch_semaphore_wait(syncSemaphore, 0xFFFFFFFFFFFFFFFFLL);

    [v8 setSyncSemaphore:0];
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_sendOutgoingMessage:(id)message synchronous:(BOOL)synchronous shouldWait:(BOOL *)wait
{
  synchronousCopy = synchronous;
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  *wait = 0;
  if (synchronousCopy)
  {
    v9 = dispatch_semaphore_create(0);
    [messageCopy setSyncSemaphore:v9];

    if (self->_connection)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [messageCopy setSyncSemaphore:0];
    if (self->_connection)
    {
LABEL_3:
      [(MIBUNWDevice *)self _sendMessage:messageCopy];
      if (synchronousCopy)
      {
LABEL_4:
        *wait = 1;
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  if (self->_connectOnDemand && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(NSMutableArray *)self->_messages addObject:messageCopy];
    [(MIBUNWDevice *)self performSelector:sel_connect];
    if (!synchronousCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNWDevice _sendOutgoingMessage:synchronous:shouldWait:];
  }

  v10 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "Cannot send outgoing message because there is no connection and on-demand connection is not enabled.", v11, 2u);
  }

  [messageCopy setSyncSemaphore:0];
LABEL_15:
}

void __60__MIBUNWDevice__sendOutgoingMessage_synchronous_shouldWait___block_invoke()
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

- (void)_sendMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWDevice _sendMessage:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    type = [messageCopy type];
    payload = [messageCopy payload];
    *buf = 138543874;
    selfCopy = self;
    v16 = 1024;
    v17 = type;
    v18 = 2114;
    v19 = payload;
    _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending message of type: %u with payload: %{public}@", buf, 0x1Cu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__MIBUNWDevice__sendMessage___block_invoke_8;
  v12[3] = &unk_2798EBD20;
  v12[4] = self;
  v13 = messageCopy;
  v10 = messageCopy;
  [(MIBUNWConnection *)connection sendMessage:v10 withCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __29__MIBUNWDevice__sendMessage___block_invoke()
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

void __29__MIBUNWDevice__sendMessage___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (MIBUOnceToken != -1)
    {
      __29__MIBUNWDevice__sendMessage___block_invoke_8_cold_1();
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __29__MIBUNWDevice__sendMessage___block_invoke_8_cold_2(a1, v3, v4);
    }

    [*(a1 + 32) invalidate];
  }

  v5 = [*(a1 + 40) syncSemaphore];

  if (v5)
  {
    v6 = [*(a1 + 40) syncSemaphore];
    dispatch_semaphore_signal(v6);
  }
}

void __29__MIBUNWDevice__sendMessage___block_invoke_2()
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

void __29__MIBUNWDevice__sendMessage___block_invoke_8_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_259B04000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send outgoing message: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end