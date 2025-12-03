@interface DBKeybagMonitor
- (BOOL)isBlocked;
- (BOOL)isLocked;
- (DBKeybagMonitor)init;
- (int64_t)currentState;
- (void)_handleKeybagStatusChanged;
- (void)_queue_updateLockedState;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation DBKeybagMonitor

- (DBKeybagMonitor)init
{
  v17.receiver = self;
  v17.super_class = DBKeybagMonitor;
  v2 = [(DBKeybagMonitor *)&v17 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;

    v5 = BSDispatchQueueCreateSerial();
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v7 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285B0B488 callbackQueue:v2->_callbackQueue];
    observers = v2->_observers;
    v2->_observers = v7;

    objc_initWeak(&location, v2);
    v2->_lockStateNotificationToken = -1;
    v9 = v2->_callbackQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __23__DBKeybagMonitor_init__block_invoke;
    handler[3] = &unk_278F02A80;
    objc_copyWeak(&v15, &location);
    notify_register_dispatch("com.apple.springboard.passcodeLockedOrBlocked", &v2->_lockStateNotificationToken, v9, handler);
    v10 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__DBKeybagMonitor_init__block_invoke_2;
    block[3] = &unk_278F01580;
    v13 = v2;
    dispatch_async(v10, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __23__DBKeybagMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleKeybagStatusChanged];
}

- (void)dealloc
{
  notify_cancel([(DBKeybagMonitor *)self lockStateNotificationToken]);
  v3.receiver = self;
  v3.super_class = DBKeybagMonitor;
  [(DBKeybagMonitor *)&v3 dealloc];
}

- (BOOL)isLocked
{
  v10 = *MEMORY[0x277D85DE8];
  currentState = [(DBKeybagMonitor *)self currentState];
  v3 = currentState;
  if (currentState != 3 && currentState)
  {
    v4 = DBLogForCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v8 = 134217984;
    v9 = v3;
    v5 = "keybag is locked! state: %ld";
  }

  else
  {
    v4 = DBLogForCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v8 = 134217984;
    v9 = v3;
    v5 = "keybag is not locked! state: %ld";
  }

  _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
LABEL_8:

  return v3 != 3 && v3 != 0;
}

- (int64_t)currentState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(DBKeybagMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__DBKeybagMonitor_currentState__block_invoke;
  v6[3] = &unk_278F02AA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __31__DBKeybagMonitor_currentState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockedState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isBlocked
{
  [(DBKeybagMonitor *)self backoffInterval];
  if (v3 > 0.0 || [(DBKeybagMonitor *)self permanentlyBlocked])
  {
    v4 = DBLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Device is blocked!", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    v4 = DBLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Device is not blocked.", v7, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBKeybagMonitor *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBKeybagMonitor *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)_handleKeybagStatusChanged
{
  callbackQueue = [(DBKeybagMonitor *)self callbackQueue];
  BSDispatchQueueAssert();

  queue = [(DBKeybagMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DBKeybagMonitor__handleKeybagStatusChanged__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_sync(queue, block);

  observers = [(DBKeybagMonitor *)self observers];
  [observers keybagMonitorLockStateDidChange:self];
}

- (void)_queue_updateLockedState
{
  queue = [(DBKeybagMonitor *)self queue];
  BSDispatchQueueAssert();

  [(DBKeybagMonitor *)self setLockedState:MKBGetDeviceLockState()];
  v7 = MKBGetDeviceLockStateInfo();
  v4 = [v7 objectForKey:*MEMORY[0x277D28AE8]];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 floatValue];
    [(DBKeybagMonitor *)self setBackoffInterval:v5];
  }

  v6 = [v7 objectForKey:*MEMORY[0x277D28B08]];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    -[DBKeybagMonitor setPermanentlyBlocked:](self, "setPermanentlyBlocked:", [v6 BOOLValue]);
  }
}

@end