@interface MTEventRecorder
+ (id)_compositePromiseWithPromises:(id)a3 resolvingResultFromPromise:(id)a4;
+ (id)_metricsDataApplyingAllowlisting:(id)a3 usingRecorder:(id)a4;
- (BOOL)monitorsLifecycleEvents;
- (MTEventRecorder)init;
- (MTEventRecorder)initWithMetricsKit:(id)a3;
- (MTEventRecorderDelegate)delegate;
- (NSMutableArray)eventListeners;
- (id)_amsDelegate;
- (id)_flushUnreportedEventsUsingRecorder:(id)a3;
- (id)_recordEvent:(id)a3 toTopic:(id)a4 usingRecorder:(id)a5;
- (id)_recordEvent:(id)a3 usingRecorder:(id)a4;
- (id)flushUnreportedEvents;
- (id)recordEvent:(id)a3 shouldSkipValidation:(BOOL)a4;
- (id)recordEvent:(id)a3 toTopic:(id)a4;
- (id)sendMethod;
- (void)addEventListener:(id)a3;
- (void)dealloc;
- (void)maybeSubscribeToFlushNotification;
- (void)removeEventListener:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MTEventRecorder

- (MTEventRecorder)init
{
  v5.receiver = self;
  v5.super_class = MTEventRecorder;
  v2 = [(MTEventRecorder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTEventRecorder *)v2 maybeSubscribeToFlushNotification];
  }

  return v3;
}

- (MTEventRecorder)initWithMetricsKit:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTEventRecorder;
  v3 = [(MTObject *)&v6 initWithMetricsKit:a3];
  v4 = v3;
  if (v3)
  {
    [(MTEventRecorder *)v3 maybeSubscribeToFlushNotification];
  }

  return v4;
}

- (void)maybeSubscribeToFlushNotification
{
  v3 = +[MTFrameworkEnvironment sharedEnvironment];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _MTHandleFlushNotification, @"MTEventRecorderFlushNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)dealloc
{
  v3 = +[MTFrameworkEnvironment sharedEnvironment];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  }

  v6.receiver = self;
  v6.super_class = MTEventRecorder;
  [(MTEventRecorder *)&v6 dealloc];
}

- (void)setDelegate:(id)a3
{
  v8 = a3;
  v4 = objc_storeWeak(&self->_delegate, v8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MTObject *)self metricsKit];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setMetricsKit:v6];
  }
}

- (NSMutableArray)eventListeners
{
  eventListeners = self->_eventListeners;
  if (!eventListeners)
  {
    v4 = objc_opt_new();
    v5 = self->_eventListeners;
    self->_eventListeners = v4;

    eventListeners = self->_eventListeners;
  }

  return eventListeners;
}

- (void)addEventListener:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MTObject *)v4 metricsKit];
    [v7 setMetricsKit:v5];
  }

  v6 = [(MTEventRecorder *)v4 eventListeners];
  [v6 addObject:v7];

  objc_sync_exit(v4);
}

- (void)removeEventListener:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTEventRecorder *)v4 eventListeners];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (id)flushUnreportedEvents
{
  v3 = [(MTEventRecorder *)self delegate];
  v4 = [(MTEventRecorder *)self _flushUnreportedEventsUsingRecorder:v3];

  v5 = [(MTEventRecorder *)self eventListeners];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MTEventRecorder_flushUnreportedEvents__block_invoke;
  v9[3] = &unk_2798CD928;
  v9[4] = self;
  v6 = [v5 mt_map:v9];

  v7 = [MTEventRecorder _compositePromiseWithPromises:v6 resolvingResultFromPromise:v4];

  return v7;
}

- (id)sendMethod
{
  v3 = [(MTEventRecorder *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEventRecorder *)self delegate];
    v13 = [v12 sendMethod];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEventRecorder sendMethod]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)recordEvent:(id)a3 toTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTEventRecorder *)self delegate];
  v9 = [(MTEventRecorder *)self _recordEvent:v6 toTopic:v7 usingRecorder:v8];

  v10 = [(MTEventRecorder *)self eventListeners];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__MTEventRecorder_recordEvent_toTopic___block_invoke;
  v16[3] = &unk_2798CD950;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 mt_map:v16];

  v14 = [MTEventRecorder _compositePromiseWithPromises:v13 resolvingResultFromPromise:v9];

  return v14;
}

- (id)recordEvent:(id)a3 shouldSkipValidation:(BOOL)a4
{
  v6 = [MTPromise promiseWithResult:a3];
  if (!a4)
  {
    v7 = [MTFinalValidationFilter alloc];
    v8 = [(MTObject *)self metricsKit];
    v9 = [(MTObject *)v7 initWithMetricsKit:v8];

    v10 = [(MTFinalValidationFilter *)v9 apply:v6];

    v6 = v10;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__MTEventRecorder_recordEvent_shouldSkipValidation___block_invoke;
  v13[3] = &unk_2798CD570;
  v13[4] = self;
  v11 = [v6 thenWithBlock:v13];

  return v11;
}

id __52__MTEventRecorder_recordEvent_shouldSkipValidation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 delegate];
  v6 = [v4 _recordEvent:v3 usingRecorder:v5];

  v7 = [*(a1 + 32) eventListeners];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __52__MTEventRecorder_recordEvent_shouldSkipValidation___block_invoke_2;
  v15 = &unk_2798CD978;
  v16 = *(a1 + 32);
  v17 = v3;
  v8 = v3;
  v9 = [v7 mt_map:&v12];

  v10 = [MTEventRecorder _compositePromiseWithPromises:v9 resolvingResultFromPromise:v6, v12, v13, v14, v15, v16];

  return v10;
}

- (id)_flushUnreportedEventsUsingRecorder:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 flushUnreportedEvents];
  }

  else
  {
    [MTPromise promiseWithResult:&unk_286A4C260];
  }
  v4 = ;

  return v4;
}

- (id)_recordEvent:(id)a3 usingRecorder:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 shouldRecordEvent:v6] & 1) == 0)
  {
    v12 = [MTPromise promiseWithResult:&unk_286A4C260];
  }

  else
  {
    v8 = [MTEventRecorder _metricsDataApplyingAllowlisting:v6 usingRecorder:v7];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v7 recordEvent:v8];
    }

    else
    {
      v10 = [(MTObject *)self metricsKit];
      v11 = [v10 topic];
      v9 = [(MTEventRecorder *)self _recordEvent:v8 toTopic:v11 usingRecorder:v7];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__MTEventRecorder__recordEvent_usingRecorder___block_invoke;
    v14[3] = &unk_2798CD480;
    v15 = v6;
    v12 = [v9 catchWithBlock:v14];
  }

  return v12;
}

id __46__MTEventRecorder__recordEvent_usingRecorder___block_invoke(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v14[0] = @"The event recorder failed to record the metrics data.";
  v4 = *MEMORY[0x277CCA470];
  v13[0] = v3;
  v13[1] = v4;
  v5 = a2;
  v6 = [v5 localizedDescription];
  v13[2] = @"MetricsData";
  v7 = *(a1 + 32);
  v14[1] = v6;
  v14[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v9 = MTWrappedError(v5, 500, v8);

  v10 = [MTPromise promiseWithError:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_recordEvent:(id)a3 toTopic:(id)a4 usingRecorder:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (objc_opt_respondsToSelector())
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v9 shouldRecordEvent:v7])
    {
      v16 = [MEMORY[0x277CBEB68] null];
      v17 = [MTPromise promiseWithResult:v16];
    }

    else
    {
      v16 = [MTEventRecorder _metricsDataApplyingAllowlisting:v7 usingRecorder:v9];
      v17 = [v9 recordEvent:v16 toTopic:v8];
    }
  }

  else
  {
    v16 = MTConfigurationError(101, @"Required method 'recordEvent:toTopic' is not implemented on recorder '%@'", v10, v11, v12, v13, v14, v15, v9);
    v17 = [MTPromise promiseWithError:v16];
  }

  v18 = v17;

  return v18;
}

+ (id)_metricsDataApplyingAllowlisting:(id)a3 usingRecorder:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 conformsToProtocol:&unk_286A5BBE8])
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 allowlistedFields];
      v9 = [v5 mt_removingKeys:v8];
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

+ (id)_compositePromiseWithPromises:(id)a3 resolvingResultFromPromise:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v16[0] = v5;
  v16[1] = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:v16 count:2];
  v9 = [MTPromise promiseWithComposition:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__MTEventRecorder__compositePromiseWithPromises_resolvingResultFromPromise___block_invoke;
  v14[3] = &unk_2798CD570;
  v15 = v5;
  v10 = v5;
  v11 = [v9 thenWithBlock:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (MTEventRecorderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)monitorsLifecycleEvents
{
  v3 = [(MTEventRecorder *)self _amsDelegate];
  if (v3)
  {
    v4 = [(MTEventRecorder *)self _amsDelegate];
    v5 = [v4 monitorsLifecycleEvents];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_amsDelegate
{
  v2 = [(MTEventRecorder *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end