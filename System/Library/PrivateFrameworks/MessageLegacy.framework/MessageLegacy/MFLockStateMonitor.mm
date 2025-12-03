@interface MFLockStateMonitor
+ (id)sharedInstance;
- (BOOL)isLocked;
- (EFObservable)lockStateObservable;
- (MFLockStateMonitor)init;
- (void)dealloc;
@end

@implementation MFLockStateMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MFLockStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

uint64_t __36__MFLockStateMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
  }

  v4.receiver = self;
  v4.super_class = MFLockStateMonitor;
  [(MFLockStateMonitor *)&v4 dealloc];
}

- (MFLockStateMonitor)init
{
  v13.receiver = self;
  v13.super_class = MFLockStateMonitor;
  v2 = [(MFLockStateMonitor *)&v13 init];
  if (v2)
  {
    observableObserver = [MEMORY[0x277D07180] observableObserver];
    observable = v2->_observable;
    v2->_observable = observableObserver;

    v5 = dispatch_queue_create("com.apple.message.lockStateMonitor", MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_create("com.apple.message.lockStateMonitor.notifyq", 0);
    objc_initWeak(&location, v2);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __26__MFLockStateMonitor_init__block_invoke;
    v10[3] = &unk_2798B7460;
    objc_copyWeak(&v11, &location);
    v8 = _Block_copy(v10);
    if (notify_register_dispatch("com.apple.springboard.lockstate", &v2->_token, v7, v8))
    {
      v2->_token = -1;
    }

    else
    {
      v8[2](v8, v2->_token);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__MFLockStateMonitor_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state64 = 0;
  notify_get_state(a2, &state64);
  [WeakRetained _receiveLockState:state64 != 0];
}

- (EFObservable)lockStateObservable
{
  v9[1] = *MEMORY[0x277D85DE8];
  distinctUntilChanged = [(EFObserver *)self->_observable distinctUntilChanged];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[MFLockStateMonitor isLocked](self, "isLocked")}];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [distinctUntilChanged startWith:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isLocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__MFLockStateMonitor_isLocked__block_invoke;
  v5[3] = &unk_2798B6E00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end