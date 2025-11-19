@interface MFLockStateMonitor
+ (MFLockStateMonitor)sharedInstance;
- (EFObservable)lockStateObservable;
- (MFLockStateMonitor)init;
- (void)_receiveLockState:(BOOL)a3;
- (void)dealloc;
@end

@implementation MFLockStateMonitor

+ (MFLockStateMonitor)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MFLockStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

void __36__MFLockStateMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v1;
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
  v12.receiver = self;
  v12.super_class = MFLockStateMonitor;
  v2 = [(MFLockStateMonitor *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E699B830] observableObserver];
    observable = v2->_observable;
    v2->_observable = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.message.lockStateMonitor.notifyq", v5);

    objc_initWeak(&location, v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __26__MFLockStateMonitor_init__block_invoke;
    v9[3] = &unk_1E7AA61A0;
    objc_copyWeak(&v10, &location);
    v7 = _Block_copy(v9);
    if (notify_register_dispatch("com.apple.springboard.lockstate", &v2->_token, v6, v7))
    {
      v2->_token = -1;
    }

    else
    {
      v7[2](v7, v2->_token);
    }

    objc_destroyWeak(&v10);
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
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(EFObserver *)self->_observable distinctUntilChanged];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFLockStateMonitor isLocked](self, "isLocked")}];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v3 startWith:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_receiveLockState:(BOOL)a3
{
  atomic_store(a3, &self->_isLocked);
  observable = self->_observable;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(EFObserver *)observable observerDidReceiveResult:?];
}

@end