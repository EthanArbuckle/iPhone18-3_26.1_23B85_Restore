@interface MTEventRecorder
+ (id)_compositePromiseWithPromises:(id)promises resolvingResultFromPromise:(id)promise;
+ (id)_metricsDataApplyingAllowlisting:(id)allowlisting usingRecorder:(id)recorder;
- (BOOL)monitorsLifecycleEvents;
- (MTEventRecorder)init;
- (MTEventRecorder)initWithMetricsKit:(id)kit;
- (MTEventRecorderDelegate)delegate;
- (NSMutableArray)eventListeners;
- (id)_amsDelegate;
- (id)_flushUnreportedEventsUsingRecorder:(id)recorder;
- (id)_recordEvent:(id)event toTopic:(id)topic usingRecorder:(id)recorder;
- (id)_recordEvent:(id)event usingRecorder:(id)recorder;
- (id)flushUnreportedEvents;
- (id)recordEvent:(id)event shouldSkipValidation:(BOOL)validation;
- (id)recordEvent:(id)event toTopic:(id)topic;
- (id)sendMethod;
- (void)addEventListener:(id)listener;
- (void)dealloc;
- (void)maybeSubscribeToFlushNotification;
- (void)removeEventListener:(id)listener;
- (void)setDelegate:(id)delegate;
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

- (MTEventRecorder)initWithMetricsKit:(id)kit
{
  v6.receiver = self;
  v6.super_class = MTEventRecorder;
  v3 = [(MTObject *)&v6 initWithMetricsKit:kit];
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
  isInternalBuild = [v3 isInternalBuild];

  if (isInternalBuild)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _MTHandleFlushNotification, @"MTEventRecorderFlushNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)dealloc
{
  v3 = +[MTFrameworkEnvironment sharedEnvironment];
  isInternalBuild = [v3 isInternalBuild];

  if (isInternalBuild)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  }

  v6.receiver = self;
  v6.super_class = MTEventRecorder;
  [(MTEventRecorder *)&v6 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    metricsKit = [(MTObject *)self metricsKit];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setMetricsKit:metricsKit];
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

- (void)addEventListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    metricsKit = [(MTObject *)selfCopy metricsKit];
    [listenerCopy setMetricsKit:metricsKit];
  }

  eventListeners = [(MTEventRecorder *)selfCopy eventListeners];
  [eventListeners addObject:listenerCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeEventListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventListeners = [(MTEventRecorder *)selfCopy eventListeners];
  [eventListeners removeObject:listenerCopy];

  objc_sync_exit(selfCopy);
}

- (id)flushUnreportedEvents
{
  delegate = [(MTEventRecorder *)self delegate];
  v4 = [(MTEventRecorder *)self _flushUnreportedEventsUsingRecorder:delegate];

  eventListeners = [(MTEventRecorder *)self eventListeners];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MTEventRecorder_flushUnreportedEvents__block_invoke;
  v9[3] = &unk_2798CD928;
  v9[4] = self;
  v6 = [eventListeners mt_map:v9];

  v7 = [MTEventRecorder _compositePromiseWithPromises:v6 resolvingResultFromPromise:v4];

  return v7;
}

- (id)sendMethod
{
  delegate = [(MTEventRecorder *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventRecorder *)self delegate];
    sendMethod = [delegate2 sendMethod];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEventRecorder sendMethod]", v5, v6, v7, v8, v9, v10, v11);
    sendMethod = 0;
  }

  return sendMethod;
}

- (id)recordEvent:(id)event toTopic:(id)topic
{
  eventCopy = event;
  topicCopy = topic;
  delegate = [(MTEventRecorder *)self delegate];
  v9 = [(MTEventRecorder *)self _recordEvent:eventCopy toTopic:topicCopy usingRecorder:delegate];

  eventListeners = [(MTEventRecorder *)self eventListeners];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__MTEventRecorder_recordEvent_toTopic___block_invoke;
  v16[3] = &unk_2798CD950;
  v16[4] = self;
  v17 = eventCopy;
  v18 = topicCopy;
  v11 = topicCopy;
  v12 = eventCopy;
  v13 = [eventListeners mt_map:v16];

  v14 = [MTEventRecorder _compositePromiseWithPromises:v13 resolvingResultFromPromise:v9];

  return v14;
}

- (id)recordEvent:(id)event shouldSkipValidation:(BOOL)validation
{
  v6 = [MTPromise promiseWithResult:event];
  if (!validation)
  {
    v7 = [MTFinalValidationFilter alloc];
    metricsKit = [(MTObject *)self metricsKit];
    v9 = [(MTObject *)v7 initWithMetricsKit:metricsKit];

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

- (id)_flushUnreportedEventsUsingRecorder:(id)recorder
{
  recorderCopy = recorder;
  if (objc_opt_respondsToSelector())
  {
    [recorderCopy flushUnreportedEvents];
  }

  else
  {
    [MTPromise promiseWithResult:&unk_286A4C260];
  }
  v4 = ;

  return v4;
}

- (id)_recordEvent:(id)event usingRecorder:(id)recorder
{
  eventCopy = event;
  recorderCopy = recorder;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([recorderCopy shouldRecordEvent:eventCopy] & 1) == 0)
  {
    v12 = [MTPromise promiseWithResult:&unk_286A4C260];
  }

  else
  {
    v8 = [MTEventRecorder _metricsDataApplyingAllowlisting:eventCopy usingRecorder:recorderCopy];
    if (objc_opt_respondsToSelector())
    {
      v9 = [recorderCopy recordEvent:v8];
    }

    else
    {
      metricsKit = [(MTObject *)self metricsKit];
      topic = [metricsKit topic];
      v9 = [(MTEventRecorder *)self _recordEvent:v8 toTopic:topic usingRecorder:recorderCopy];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__MTEventRecorder__recordEvent_usingRecorder___block_invoke;
    v14[3] = &unk_2798CD480;
    v15 = eventCopy;
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

- (id)_recordEvent:(id)event toTopic:(id)topic usingRecorder:(id)recorder
{
  eventCopy = event;
  topicCopy = topic;
  recorderCopy = recorder;
  if (objc_opt_respondsToSelector())
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![recorderCopy shouldRecordEvent:eventCopy])
    {
      null = [MEMORY[0x277CBEB68] null];
      v17 = [MTPromise promiseWithResult:null];
    }

    else
    {
      null = [MTEventRecorder _metricsDataApplyingAllowlisting:eventCopy usingRecorder:recorderCopy];
      v17 = [recorderCopy recordEvent:null toTopic:topicCopy];
    }
  }

  else
  {
    null = MTConfigurationError(101, @"Required method 'recordEvent:toTopic' is not implemented on recorder '%@'", v10, v11, v12, v13, v14, v15, recorderCopy);
    v17 = [MTPromise promiseWithError:null];
  }

  v18 = v17;

  return v18;
}

+ (id)_metricsDataApplyingAllowlisting:(id)allowlisting usingRecorder:(id)recorder
{
  allowlistingCopy = allowlisting;
  recorderCopy = recorder;
  if ([recorderCopy conformsToProtocol:&unk_286A5BBE8])
  {
    v7 = recorderCopy;
    if (objc_opt_respondsToSelector())
    {
      allowlistedFields = [v7 allowlistedFields];
      v9 = [allowlistingCopy mt_removingKeys:allowlistedFields];
    }

    else
    {
      v9 = allowlistingCopy;
    }
  }

  else
  {
    v9 = allowlistingCopy;
  }

  return v9;
}

+ (id)_compositePromiseWithPromises:(id)promises resolvingResultFromPromise:(id)promise
{
  v16[2] = *MEMORY[0x277D85DE8];
  promiseCopy = promise;
  v16[0] = promiseCopy;
  v16[1] = promises;
  v6 = MEMORY[0x277CBEA60];
  promisesCopy = promises;
  v8 = [v6 arrayWithObjects:v16 count:2];
  v9 = [MTPromise promiseWithComposition:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__MTEventRecorder__compositePromiseWithPromises_resolvingResultFromPromise___block_invoke;
  v14[3] = &unk_2798CD570;
  v15 = promiseCopy;
  v10 = promiseCopy;
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
  _amsDelegate = [(MTEventRecorder *)self _amsDelegate];
  if (_amsDelegate)
  {
    _amsDelegate2 = [(MTEventRecorder *)self _amsDelegate];
    monitorsLifecycleEvents = [_amsDelegate2 monitorsLifecycleEvents];
  }

  else
  {
    monitorsLifecycleEvents = 1;
  }

  return monitorsLifecycleEvents;
}

- (id)_amsDelegate
{
  delegate = [(MTEventRecorder *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end