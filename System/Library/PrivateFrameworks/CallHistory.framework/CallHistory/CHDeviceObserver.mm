@interface CHDeviceObserver
- (BOOL)isBootLockEnabled;
- (CHDeviceObserver)init;
- (CHDeviceObserver)initWithQueue:(id)queue;
- (CHDeviceObserver)initWithQueue:(id)queue dataSource:(id)source;
- (void)performDelegateSelector:(SEL)selector withDelegate:(id)delegate;
- (void)setBootLockEnabled:(BOOL)enabled;
@end

@implementation CHDeviceObserver

- (CHDeviceObserver)init
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CallHistory.queue.%@.%p", objc_opt_class(), self];
  uTF8String = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(uTF8String, v5);

  v7 = [(CHDeviceObserver *)self initWithQueue:v6];
  return v7;
}

- (BOOL)isBootLockEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CHDeviceObserver *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CHDeviceObserver_isBootLockEnabled__block_invoke;
  v5[3] = &unk_1E81DC2F8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (CHDeviceObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(CHDeviceDataSource);
  v6 = [(CHDeviceObserver *)self initWithQueue:queueCopy dataSource:v5];

  return v6;
}

- (CHDeviceObserver)initWithQueue:(id)queue dataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = CHDeviceObserver;
  v9 = [(CHDelegateManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_dataSource, source);
    queue = v10->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__CHDeviceObserver_initWithQueue_dataSource___block_invoke;
    v13[3] = &unk_1E81DBE38;
    v14 = sourceCopy;
    v15 = v10;
    dispatch_async(queue, v13);
  }

  return v10;
}

void __45__CHDeviceObserver_initWithQueue_dataSource___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isBootLockEnabled])
  {
    *(*(a1 + 40) + 24) = 1;
    objc_initWeak(&location, *(a1 + 40));
    v2 = [CHNotifyObserver alloc];
    v3 = *(*(a1 + 40) + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__CHDeviceObserver_initWithQueue_dataSource___block_invoke_2;
    v5[3] = &unk_1E81DC0A0;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 32);
    v4 = [(CHNotifyObserver *)v2 initWithName:@"com.apple.mobile.keybagd.first_unlock" queue:v3 callback:v5];
    [*(a1 + 40) setFirstUnlockNotifyObserver:v4];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __45__CHDeviceObserver_initWithQueue_dataSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setBootLockEnabled:{objc_msgSend(*(a1 + 32), "isBootLockEnabled")}];
    WeakRetained = v3;
  }
}

- (void)setBootLockEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CHDeviceObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_bootLockEnabled != enabledCopy)
  {
    self->_bootLockEnabled = enabledCopy;

    [(CHDelegateManager *)self performDelegateSelector:sel_didChangeBootLockEnabledForDeviceObserver_];
  }
}

- (void)performDelegateSelector:(SEL)selector withDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([delegateCopy conformsToProtocol:&unk_1F43A3840])
  {
    v6 = sel_didChangeBootLockEnabledForDeviceObserver_ == selector;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [delegateCopy didChangeBootLockEnabledForDeviceObserver:self];
  }
}

@end