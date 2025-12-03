@interface _DKNotificationScreenLockImputedMonitor
+ (id)_eventWithState:(id)state;
- (id)fetchMostRecentScreenLockStateEventFromKnowledgeStore;
- (void)dealloc;
- (void)fetchMostRecentScreenLockStateEventFromKnowledgeStore;
- (void)receiveNotificationEvent:(id)event;
- (void)setCurrentEventInInstantStateUsingLastKnowledgeStoreEvent;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKNotificationScreenLockImputedMonitor

- (void)dealloc
{
  [(_DKNotificationScreenLockImputedMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNotificationScreenLockImputedMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)_eventWithState:(id)state
{
  stateCopy = state;
  if ([stateCopy BOOLValue])
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v4 = ;
  bOOLValue = [stateCopy BOOLValue];

  [_DKNotificationScreenLockImputedMonitor setIsLocked:bOOLValue];
  v6 = MEMORY[0x277CFE1D8];
  deviceIsLockedImputedStream = [MEMORY[0x277CFE298] deviceIsLockedImputedStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v6 eventWithStream:deviceIsLockedImputedStream startDate:date endDate:distantFuture value:v4];

  return v10;
}

- (id)fetchMostRecentScreenLockStateEventFromKnowledgeStore
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v3 = MEMORY[0x277CFE1E0];
  deviceIsLockedImputedStream = [MEMORY[0x277CFE298] deviceIsLockedImputedStream];
  v18[0] = deviceIsLockedImputedStream;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v17 = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v7 = [v3 eventQueryWithPredicate:0 eventStreams:v5 offset:0 limit:1 sortDescriptors:v6];

  knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
  v16 = 0;
  v9 = [knowledgeStore executeQuery:v7 error:&v16];
  v10 = v16;

  if (!v9)
  {
    knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_ERROR))
    {
      [(_DKNotificationScreenLockImputedMonitor *)v10 fetchMostRecentScreenLockStateEventFromKnowledgeStore];
    }
  }

  knowledgeChannel2 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(knowledgeChannel2, OS_LOG_TYPE_DEBUG))
  {
    [(_DKNotificationScreenLockImputedMonitor *)v9 fetchMostRecentScreenLockStateEventFromKnowledgeStore];
  }

  firstObject = [v9 firstObject];

  v14 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)setCurrentEventInInstantStateUsingLastKnowledgeStoreEvent
{
  fetchMostRecentScreenLockStateEventFromKnowledgeStore = [(_DKNotificationScreenLockImputedMonitor *)self fetchMostRecentScreenLockStateEventFromKnowledgeStore];
  v4 = fetchMostRecentScreenLockStateEventFromKnowledgeStore;
  if (fetchMostRecentScreenLockStateEventFromKnowledgeStore)
  {
    value = [fetchMostRecentScreenLockStateEventFromKnowledgeStore value];
    v6 = [MEMORY[0x277CFE1A0] yes];
    if (value == v6)
    {
      [MEMORY[0x277CFE1A0] no];
    }

    else
    {
      [MEMORY[0x277CFE1A0] yes];
    }
    v7 = ;

    v8 = MEMORY[0x277CFE1D8];
    deviceIsLockedImputedStream = [MEMORY[0x277CFE298] deviceIsLockedImputedStream];
    endDate = [v4 endDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v12 = [v8 eventWithStream:deviceIsLockedImputedStream startDate:endDate endDate:distantFuture value:v7];

    instantState = [(_DKMonitor *)self instantState];
    [instantState setObject:v12 forKeyedSubscript:@"kCurrentEvent"];
  }

  else
  {
    value = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(value, OS_LOG_TYPE_DEBUG))
    {
      [(_DKNotificationScreenLockImputedMonitor *)value setCurrentEventInInstantStateUsingLastKnowledgeStoreEvent];
    }
  }
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = _DKNotificationScreenLockImputedMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsActivation])
  {
    self->_enabled = 1;
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNotificationScreenLockImputedMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNotificationScreenLockImputedMonitor *)self deactivate];
  }
}

- (void)synchronouslyReflectCurrentValue
{
  currentEvent = [(_DKMonitor *)self currentEvent];

  if (!currentEvent)
  {
    out_token = 0;
    uTF8String = [@"com.apple.springboard.lockstate" UTF8String];
    queue = [(_DKMonitor *)self queue];
    notify_register_dispatch(uTF8String, &out_token, queue, &__block_literal_global_138);

    v6 = 0;
    if (!notify_get_state(out_token, &v6))
    {
      [_DKNotificationScreenLockImputedMonitor setIsLocked:v6 != 0];
    }

    notify_cancel(out_token);
  }
}

- (void)receiveNotificationEvent:(id)event
{
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v6 = [eventCopy objectForKeyedSubscript:@"Notification"];
    v7 = [v6 isEqual:@"com.apple.springboard.lockstate"];

    if (v7)
    {
      queue = [(_DKMonitor *)self queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __68___DKNotificationScreenLockImputedMonitor_receiveNotificationEvent___block_invoke;
      v14[3] = &unk_27856F060;
      v14[4] = self;
      v9 = v14;
      v10 = os_transaction_create();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __cd_dispatch_async_capture_tx_block_invoke_2;
      block[3] = &unk_27856F178;
      v16 = v10;
      v17 = v9;
      v11 = v10;
      dispatch_async(queue, block);

      v12 = [eventCopy objectForKeyedSubscript:@"_State"];
      v13 = [_DKNotificationScreenLockImputedMonitor _eventWithState:v12];
      [(_DKMonitor *)self setCurrentEvent:v13 inferHistoricalState:1];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)fetchMostRecentScreenLockStateEventFromKnowledgeStore
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [self count];
  firstObject = [self firstObject];
  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = firstObject;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "ScreenLockStateImputed: length of query results: %lu, %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end