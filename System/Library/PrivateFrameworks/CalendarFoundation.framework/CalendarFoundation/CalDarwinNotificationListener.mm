@interface CalDarwinNotificationListener
- (BOOL)_addObserver;
- (BOOL)_removeObserver;
- (CalDarwinNotificationListener)initWithNotificationName:(id)name callback:(id)callback queue:(id)queue;
- (id)description;
- (void)_addObserver;
- (void)_notificationWithNameReceived:(id)received;
- (void)_removeObserver;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
@end

@implementation CalDarwinNotificationListener

- (CalDarwinNotificationListener)initWithNotificationName:(id)name callback:(id)callback queue:(id)queue
{
  nameCopy = name;
  callbackCopy = callback;
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = CalDarwinNotificationListener;
  v12 = [(CalDarwinNotificationListener *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notificationName, name);
    v14 = _Block_copy(callbackCopy);
    callback = v13->_callback;
    v13->_callback = v14;

    v16 = objc_opt_class();
    v17 = CalGenerateQualifiedIdentifierWithClassAndSubdomain(v16, @"work");
    uTF8String = [v17 UTF8String];

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String, v19);
    workQueue = v13->_workQueue;
    v13->_workQueue = v20;

    if (queueCopy)
    {
      v22 = queueCopy;
      callbackQueue = v13->_callbackQueue;
      v13->_callbackQueue = v22;
    }

    else
    {
      v24 = objc_opt_class();
      v25 = CalGenerateQualifiedIdentifierWithClassAndSubdomain(v24, @"callback");
      uTF8String2 = [v25 UTF8String];

      callbackQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v27 = dispatch_queue_create(uTF8String2, callbackQueue);
      v28 = v13->_callbackQueue;
      v13->_callbackQueue = v27;
    }
  }

  return v13;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v0, v1, "The listener has been stopped.  Listener: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v9.receiver = self;
  v9.super_class = CalDarwinNotificationListener;
  v4 = [(CalDarwinNotificationListener *)&v9 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  notificationName = [(CalDarwinNotificationListener *)self notificationName];
  [(CalDescriptionBuilder *)v5 setKey:@"notificationName" withString:notificationName];

  [(CalDescriptionBuilder *)v5 setKey:@"listening" withBoolean:[(CalDarwinNotificationListener *)self listening]];
  build = [(CalDescriptionBuilder *)v5 build];

  return build;
}

- (void)activate
{
  workQueue = [(CalDarwinNotificationListener *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CalDarwinNotificationListener_activate__block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __41__CalDarwinNotificationListener_activate__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) listening])
  {
    v2 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __41__CalDarwinNotificationListener_activate__block_invoke_cold_2(v1);
    }
  }

  else if ([*v1 _addObserver])
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __41__CalDarwinNotificationListener_activate__block_invoke_cold_1(v1);
    }

    [*v1 setListening:1];
  }
}

- (void)deactivate
{
  workQueue = [(CalDarwinNotificationListener *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CalDarwinNotificationListener_deactivate__block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __43__CalDarwinNotificationListener_deactivate__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) listening])
  {
    if ([*v1 _removeObserver])
    {
      v2 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        __43__CalDarwinNotificationListener_deactivate__block_invoke_cold_2(v1);
      }

      [*v1 setListening:0];
    }
  }

  else
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __43__CalDarwinNotificationListener_deactivate__block_invoke_cold_1(v1);
    }
  }
}

- (void)_notificationWithNameReceived:(id)received
{
  receivedCopy = received;
  v5 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CalDarwinNotificationListener _notificationWithNameReceived:];
  }

  workQueue = [(CalDarwinNotificationListener *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CalDarwinNotificationListener__notificationWithNameReceived___block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __63__CalDarwinNotificationListener__notificationWithNameReceived___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) listening])
  {
    v2 = [*(a1 + 32) callback];
    if (v2)
    {
      v3 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__CalDarwinNotificationListener__notificationWithNameReceived___block_invoke_2;
      block[3] = &unk_1E7EC64B8;
      v5 = v2;
      dispatch_async(v3, block);
    }
  }
}

- (BOOL)_addObserver
{
  notificationName = [(CalDarwinNotificationListener *)self notificationName];
  if (notificationName)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, CalDarwinNotificationListener_ObservationCallback, notificationName, 0, 1024);
  }

  else
  {
    v5 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CalDarwinNotificationListener _addObserver];
    }
  }

  return notificationName != 0;
}

- (BOOL)_removeObserver
{
  notificationName = [(CalDarwinNotificationListener *)self notificationName];
  if (notificationName)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, notificationName, 0);
  }

  else
  {
    v5 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CalDarwinNotificationListener _removeObserver];
    }
  }

  return notificationName != 0;
}

void __41__CalDarwinNotificationListener_activate__block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v1, v2, "The listener has been started.  Listener: [%@]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __41__CalDarwinNotificationListener_activate__block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v1, v2, "The listener is already listening.  Will not start listening.  Listener: [%@]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __43__CalDarwinNotificationListener_deactivate__block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v1, v2, "The listener is not listening.  Will not stop listening.  Listener: [%@]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __43__CalDarwinNotificationListener_deactivate__block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v1, v2, "The listener has been stopped.  Listener: [%@]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_notificationWithNameReceived:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1B990D000, v1, OS_LOG_TYPE_DEBUG, "Received notification with name: [%@].  Listener: [%@]", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_addObserver
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v0, v1, "The listener was given a 'nil' notification name.  Will not add it as an observer.  Listener: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, v0, v1, "The listener was given a 'nil' notification name.  Will not remove it as an observer.  Listener: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end