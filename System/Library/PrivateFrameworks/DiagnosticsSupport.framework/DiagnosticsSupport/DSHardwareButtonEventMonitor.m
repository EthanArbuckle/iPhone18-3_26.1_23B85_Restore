@interface DSHardwareButtonEventMonitor
- (BOOL)_triggerHandlers:(id)a3 event:(unint64_t)a4;
- (BOOL)hasTarget:(id)a3;
- (DSHardwareButtonEventMonitor)init;
- (id)_handlersForEvent:(unint64_t)a3;
- (id)_handlersForTarget:(id)a3;
- (void)addTarget:(id)a3 action:(SEL)a4 forButtonEvents:(unint64_t)a5 propagate:(BOOL)a6;
- (void)removeTarget:(id)a3;
- (void)removeTarget:(id)a3 action:(SEL)a4 forButtonEvents:(unint64_t)a5 propagate:(BOOL)a6;
- (void)startWithPriority:(int64_t)a3 completion:(id)a4;
- (void)stopWithCompletion:(id)a3;
@end

@implementation DSHardwareButtonEventMonitor

- (DSHardwareButtonEventMonitor)init
{
  if ([DSEntitlementUtilities currentProcessHasEntitlement:@"com.apple.DiagnosticsSupport.HardwareButtonAccess"])
  {
    v17.receiver = self;
    v17.super_class = DSHardwareButtonEventMonitor;
    v3 = [(DSHardwareButtonEventMonitor *)&v17 init];
    v4 = v3;
    if (v3)
    {
      v3->_allowEvents = 1;
      v5 = [MEMORY[0x277CBEB58] set];
      buttonEventHandlers = v4->_buttonEventHandlers;
      v4->_buttonEventHandlers = v5;

      v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
      eventHandlerChangeLock = v4->_eventHandlerChangeLock;
      v4->_eventHandlerChangeLock = v7;

      v9 = +[DSTestAutomation sharedInstance];
      testAutomation = v4->_testAutomation;
      v4->_testAutomation = v9;

      v11 = dispatch_queue_create("com.apple.DiagnosticsSupport.buttonEventMonitor.targetQueue", 0);
      targetQueue = v4->_targetQueue;
      v4->_targetQueue = v11;

      v13 = dispatch_queue_create("com.apple.DiagnosticsSupport.buttonEventMonitor.systemClientCreationQueue", 0);
      systemClientCreationQueue = v4->_systemClientCreationQueue;
      v4->_systemClientCreationQueue = v13;
    }

    self = v4;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)startWithPriority:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(DSHardwareButtonEventMonitor *)self systemClientCreationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__DSHardwareButtonEventMonitor_startWithPriority_completion___block_invoke;
  v9[3] = &unk_278F6E4A8;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __61__DSHardwareButtonEventMonitor_startWithPriority_completion___block_invoke(uint64_t a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && !WeakRetained[1])
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.DiagnosticsSupport.buttonEventMonitor.buttonEventQueue", v4);
    v6 = v3[6];
    v3[6] = v5;

    v7 = *MEMORY[0x277CBECE8];
    v3[1] = IOHIDEventSystemClientCreateWithType();
    v21[0] = @"PrimaryUsagePage";
    v21[1] = @"PrimaryUsage";
    v22[0] = &unk_285B95B08;
    v22[1] = &unk_285B95B20;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19[0] = @"PrimaryUsagePage";
    v19[1] = @"PrimaryUsage";
    v20[0] = &unk_285B95B38;
    v20[1] = &unk_285B95B50;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v10 = v3[1];
    v18[0] = v8;
    v18[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    IOHIDEventSystemClientSetMatchingMultiple();

    v12 = v3[1];
    v13 = v3[6];
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    v14 = v3[1];
    v15 = *(a1 + 48);
    IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority();
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DSHardwareButtonEventMonitor *)self systemClientCreationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke;
  block[3] = &unk_278F6E4F8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[6];
    if (v4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke_2;
      block[3] = &unk_278F6E4D0;
      objc_copyWeak(&v7, (a1 + 40));
      dispatch_sync(v4, block);
      objc_destroyWeak(&v7);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    if (v3)
    {
      v6 = v2;
      MEMORY[0x24C1E6830](v3, v2[6]);
      v4 = v6[1];
      IOHIDEventSystemClientUnregisterEventFilterCallback();
      CFRelease(v6[1]);
      v6[1] = 0;
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)addTarget:(id)a3 action:(SEL)a4 forButtonEvents:(unint64_t)a5 propagate:(BOOL)a6
{
  v10 = a3;
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DSHardwareButtonEventMonitor_addTarget_action_forButtonEvents_propagate___block_invoke;
  block[3] = &unk_278F6E520;
  v18 = a6;
  v16 = a4;
  v17 = a5;
  v14 = v10;
  v15 = self;
  v12 = v10;
  dispatch_async(v11, block);
}

void __75__DSHardwareButtonEventMonitor_addTarget_action_forButtonEvents_propagate___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(DSHardwareButtonEventHandler);
  [(DSHardwareButtonEventHandler *)v5 setTarget:*(a1 + 32)];
  [(DSHardwareButtonEventHandler *)v5 setAction:*(a1 + 48)];
  [(DSHardwareButtonEventHandler *)v5 setPreventPropagation:(*(a1 + 64) & 1) == 0];
  [(DSHardwareButtonEventHandler *)v5 setEvents:*(a1 + 56)];
  v2 = [*(a1 + 40) eventHandlerChangeLock];
  [v2 lock];

  v3 = [*(a1 + 40) buttonEventHandlers];
  [v3 addObject:v5];

  v4 = [*(a1 + 40) eventHandlerChangeLock];
  [v4 unlock];
}

- (void)removeTarget:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__DSHardwareButtonEventMonitor_removeTarget___block_invoke;
  v7[3] = &unk_278F6E548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__DSHardwareButtonEventMonitor_removeTarget___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _handlersForTarget:*(a1 + 40)];
  v2 = [*(a1 + 32) eventHandlerChangeLock];
  [v2 lock];

  v3 = [*(a1 + 32) buttonEventHandlers];
  [v3 minusSet:v5];

  v4 = [*(a1 + 32) eventHandlerChangeLock];
  [v4 unlock];
}

- (void)removeTarget:(id)a3 action:(SEL)a4 forButtonEvents:(unint64_t)a5 propagate:(BOOL)a6
{
  v10 = a3;
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__DSHardwareButtonEventMonitor_removeTarget_action_forButtonEvents_propagate___block_invoke;
  block[3] = &unk_278F6E520;
  v18 = a6;
  v16 = a4;
  v17 = a5;
  v14 = v10;
  v15 = self;
  v12 = v10;
  dispatch_async(v11, block);
}

void __78__DSHardwareButtonEventMonitor_removeTarget_action_forButtonEvents_propagate___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(DSHardwareButtonEventHandler);
  [(DSHardwareButtonEventHandler *)v5 setTarget:*(a1 + 32)];
  [(DSHardwareButtonEventHandler *)v5 setAction:*(a1 + 48)];
  [(DSHardwareButtonEventHandler *)v5 setPreventPropagation:(*(a1 + 64) & 1) == 0];
  [(DSHardwareButtonEventHandler *)v5 setEvents:*(a1 + 56)];
  v2 = [*(a1 + 40) eventHandlerChangeLock];
  [v2 lock];

  v3 = [*(a1 + 40) buttonEventHandlers];
  [v3 removeObject:v5];

  v4 = [*(a1 + 40) eventHandlerChangeLock];
  [v4 unlock];
}

- (BOOL)hasTarget:(id)a3
{
  v3 = [(DSHardwareButtonEventMonitor *)self _handlersForTarget:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_handlersForTarget:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [v6 lock];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(DSHardwareButtonEventMonitor *)self buttonEventHandlers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 target];

        if (v13 == v4)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [v14 unlock];

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_handlersForEvent:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [v6 lock];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(DSHardwareButtonEventMonitor *)self buttonEventHandlers];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 events] & a3) != 0)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [v13 unlock];

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_triggerHandlers:(id)a3 event:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(DSHardwareButtonEventMonitor *)self targetQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__DSHardwareButtonEventMonitor__triggerHandlers_event___block_invoke;
        block[3] = &unk_278F6E570;
        block[4] = v11;
        block[5] = a4;
        dispatch_async(v12, block);

        if (v8)
        {
          v8 = 1;
        }

        else
        {
          v8 = [v11 preventPropagation];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void __55__DSHardwareButtonEventMonitor__triggerHandlers_event___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) target];
  v3 = [v2 methodForSelector:{objc_msgSend(*(a1 + 32), "action")}];

  v4 = [*(a1 + 32) target];
  v3(v4, [*(a1 + 32) action], *(a1 + 40));
}

@end