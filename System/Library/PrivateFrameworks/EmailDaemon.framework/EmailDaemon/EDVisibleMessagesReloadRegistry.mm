@interface EDVisibleMessagesReloadRegistry
+ (id)log;
- (EDVisibleMessagesReloadRegistry)init;
- (id)addVisibleMessagesObserver:(id)observer;
- (void)_reloadVisibleMessages;
- (void)dealloc;
@end

@implementation EDVisibleMessagesReloadRegistry

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDVisibleMessagesReloadRegistry_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_111 != -1)
  {
    dispatch_once(&log_onceToken_111, block);
  }

  v2 = log_log_111;

  return v2;
}

void __38__EDVisibleMessagesReloadRegistry_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_111;
  log_log_111 = v1;
}

- (EDVisibleMessagesReloadRegistry)init
{
  v22.receiver = self;
  v22.super_class = EDVisibleMessagesReloadRegistry;
  v2 = [(EDVisibleMessagesReloadRegistry *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.EDVisibleMessagesReloadRegistry.notify", v7);

    v9 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.EDVisibleMessagesReloadRegistry.observation"];
    observationScheduler = v3->_observationScheduler;
    v3->_observationScheduler = v9;

    objc_initWeak(&location, v3);
    uTF8String = [*MEMORY[0x1E69ADA40] UTF8String];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __39__EDVisibleMessagesReloadRegistry_init__block_invoke;
    handler[3] = &unk_1E82591F0;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(uTF8String, &v3->_notifyToken, v8, handler);
    v12 = objc_alloc(MEMORY[0x1E699B7A8]);
    v13 = v3->_observationScheduler;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __39__EDVisibleMessagesReloadRegistry_init__block_invoke_2;
    v17[3] = &unk_1E82567B0;
    objc_copyWeak(&v18, &location);
    v14 = [v12 initWithTimeInterval:v13 scheduler:0 startAfter:v17 block:1.0];
    reloadDebouncer = v3->_reloadDebouncer;
    v3->_reloadDebouncer = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __39__EDVisibleMessagesReloadRegistry_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleVisibleMessageReload];
}

void __39__EDVisibleMessagesReloadRegistry_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadVisibleMessages];
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = EDVisibleMessagesReloadRegistry;
  [(EDVisibleMessagesReloadRegistry *)&v3 dealloc];
}

- (id)addVisibleMessagesObserver:(id)observer
{
  objc_initWeak(&location, observer);
  v4 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&from, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__EDVisibleMessagesReloadRegistry_addVisibleMessagesObserver___block_invoke;
  v11 = &unk_1E8255050;
  objc_copyWeak(&v12, &from);
  objc_copyWeak(&v13, &location);
  [v4 addCancelationBlock:&v8];
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  v6 = objc_loadWeakRetained(&location);
  [(NSHashTable *)observers addObject:v6, v8, v9, v10, v11];

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v4;
}

void __62__EDVisibleMessagesReloadRegistry_addVisibleMessagesObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    v3 = *&v5[4]._os_unfair_lock_opaque;
    v4 = objc_loadWeakRetained((a1 + 40));
    [v3 removeObject:v4];

    os_unfair_lock_unlock(v5 + 2);
    WeakRetained = v5;
  }
}

- (void)_reloadVisibleMessages
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allObjects;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) reload];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end