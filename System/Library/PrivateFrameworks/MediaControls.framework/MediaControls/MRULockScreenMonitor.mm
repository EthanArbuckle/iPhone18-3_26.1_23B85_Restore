@interface MRULockScreenMonitor
+ (id)sharedMonitor;
- (NSArray)observers;
- (id)_init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setDeviceLocked:(BOOL)locked;
- (void)updateDeviceLocked;
@end

@implementation MRULockScreenMonitor

void __42__MRULockScreenMonitor_updateDeviceLocked__block_invoke_2(uint64_t a1)
{
  v4 = 0;
  SBSGetScreenLockStatus();
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__MRULockScreenMonitor_updateDeviceLocked__block_invoke_3;
  v2[3] = &unk_1E7663F38;
  v2[4] = *(a1 + 32);
  v3 = 0;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (NSArray)observers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_weakObservers allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[MRULockScreenMonitor sharedMonitor];
  }

  v3 = sharedMonitor_monitor;

  return v3;
}

uint64_t __37__MRULockScreenMonitor_sharedMonitor__block_invoke()
{
  v0 = [[MRULockScreenMonitor alloc] _init];
  v1 = sharedMonitor_monitor;
  sharedMonitor_monitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_init
{
  v16.receiver = self;
  v16.super_class = MRULockScreenMonitor;
  v2 = [(MRULockScreenMonitor *)&v16 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    weakObservers = v2->_weakObservers;
    v2->_weakObservers = weakObjectsHashTable;

    objc_initWeak(&location, v2);
    v5 = *MEMORY[0x1E69B1A70];
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __29__MRULockScreenMonitor__init__block_invoke;
    v13 = &unk_1E76649F0;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch(v5, &v2->_mobileKeyBagLockStatusNotifyToken, v6, &v10);

    v8 = objc_loadWeakRetained(&location);
    [v8 updateDeviceLocked];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__MRULockScreenMonitor__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDeviceLocked];
}

- (void)dealloc
{
  notify_cancel(self->_mobileKeyBagLockStatusNotifyToken);
  v3.receiver = self;
  v3.super_class = MRULockScreenMonitor;
  [(MRULockScreenMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_weakObservers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_weakObservers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)setDeviceLocked:(BOOL)locked
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_deviceLocked != locked)
  {
    lockedCopy = locked;
    self->_deviceLocked = locked;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    observers = [(MRULockScreenMonitor *)self observers];
    v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(observers);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 lockscreenMonitor:self didUpdateDeviceLocked:lockedCopy];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)updateDeviceLocked
{
  if (updateDeviceLocked_onceToken != -1)
  {
    [MRULockScreenMonitor updateDeviceLocked];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MRULockScreenMonitor_updateDeviceLocked__block_invoke_2;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(updateDeviceLocked_queue, block);
}

void __42__MRULockScreenMonitor_updateDeviceLocked__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.mediaremote.MRULockScreenMonitor.lockStateWorkerQueue", v0);
  v2 = updateDeviceLocked_queue;
  updateDeviceLocked_queue = v1;
}

@end