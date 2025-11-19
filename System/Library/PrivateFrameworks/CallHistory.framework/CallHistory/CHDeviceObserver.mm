@interface CHDeviceObserver
- (BOOL)isBootLockEnabled;
- (CHDeviceObserver)init;
- (CHDeviceObserver)initWithQueue:(id)a3;
- (CHDeviceObserver)initWithQueue:(id)a3 dataSource:(id)a4;
- (void)performDelegateSelector:(SEL)a3 withDelegate:(id)a4;
- (void)setBootLockEnabled:(BOOL)a3;
@end

@implementation CHDeviceObserver

- (CHDeviceObserver)init
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CallHistory.queue.%@.%p", objc_opt_class(), self];
  v4 = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);

  v7 = [(CHDeviceObserver *)self initWithQueue:v6];
  return v7;
}

- (BOOL)isBootLockEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CHDeviceObserver *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CHDeviceObserver_isBootLockEnabled__block_invoke;
  v5[3] = &unk_1E81DC2F8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (CHDeviceObserver)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHDeviceDataSource);
  v6 = [(CHDeviceObserver *)self initWithQueue:v4 dataSource:v5];

  return v6;
}

- (CHDeviceObserver)initWithQueue:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CHDeviceObserver;
  v9 = [(CHDelegateManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_dataSource, a4);
    queue = v10->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__CHDeviceObserver_initWithQueue_dataSource___block_invoke;
    v13[3] = &unk_1E81DBE38;
    v14 = v8;
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

- (void)setBootLockEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CHDeviceObserver *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_bootLockEnabled != v3)
  {
    self->_bootLockEnabled = v3;

    [(CHDelegateManager *)self performDelegateSelector:sel_didChangeBootLockEnabledForDeviceObserver_];
  }
}

- (void)performDelegateSelector:(SEL)a3 withDelegate:(id)a4
{
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_1F43A3840])
  {
    v6 = sel_didChangeBootLockEnabledForDeviceObserver_ == a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [v7 didChangeBootLockEnabledForDeviceObserver:self];
  }
}

@end