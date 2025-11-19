@interface _DKNotificationScreenLockImputedMonitor
+ (id)_eventWithState:(id)a3;
- (id)fetchMostRecentScreenLockStateEventFromKnowledgeStore;
- (void)dealloc;
- (void)fetchMostRecentScreenLockStateEventFromKnowledgeStore;
- (void)receiveNotificationEvent:(id)a3;
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

+ (id)_eventWithState:(id)a3
{
  v3 = a3;
  if ([v3 BOOLValue])
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v4 = ;
  v5 = [v3 BOOLValue];

  [_DKNotificationScreenLockImputedMonitor setIsLocked:v5];
  v6 = MEMORY[0x277CFE1D8];
  v7 = [MEMORY[0x277CFE298] deviceIsLockedImputedStream];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v6 eventWithStream:v7 startDate:v8 endDate:v9 value:v4];

  return v10;
}

- (id)fetchMostRecentScreenLockStateEventFromKnowledgeStore
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v3 = MEMORY[0x277CFE1E0];
  v4 = [MEMORY[0x277CFE298] deviceIsLockedImputedStream];
  v18[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v17 = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v7 = [v3 eventQueryWithPredicate:0 eventStreams:v5 offset:0 limit:1 sortDescriptors:v6];

  v8 = [MEMORY[0x277CFE208] knowledgeStore];
  v16 = 0;
  v9 = [v8 executeQuery:v7 error:&v16];
  v10 = v16;

  if (!v9)
  {
    v11 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_DKNotificationScreenLockImputedMonitor *)v10 fetchMostRecentScreenLockStateEventFromKnowledgeStore];
    }
  }

  v12 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(_DKNotificationScreenLockImputedMonitor *)v9 fetchMostRecentScreenLockStateEventFromKnowledgeStore];
  }

  v13 = [v9 firstObject];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setCurrentEventInInstantStateUsingLastKnowledgeStoreEvent
{
  v3 = [(_DKNotificationScreenLockImputedMonitor *)self fetchMostRecentScreenLockStateEventFromKnowledgeStore];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 value];
    v6 = [MEMORY[0x277CFE1A0] yes];
    if (v5 == v6)
    {
      [MEMORY[0x277CFE1A0] no];
    }

    else
    {
      [MEMORY[0x277CFE1A0] yes];
    }
    v7 = ;

    v8 = MEMORY[0x277CFE1D8];
    v9 = [MEMORY[0x277CFE298] deviceIsLockedImputedStream];
    v10 = [v4 endDate];
    v11 = [MEMORY[0x277CBEAA8] distantFuture];
    v12 = [v8 eventWithStream:v9 startDate:v10 endDate:v11 value:v7];

    v13 = [(_DKMonitor *)self instantState];
    [v13 setObject:v12 forKeyedSubscript:@"kCurrentEvent"];
  }

  else
  {
    v5 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_DKNotificationScreenLockImputedMonitor *)v5 setCurrentEventInInstantStateUsingLastKnowledgeStoreEvent];
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
  v3 = [(_DKMonitor *)self currentEvent];

  if (!v3)
  {
    out_token = 0;
    v4 = [@"com.apple.springboard.lockstate" UTF8String];
    v5 = [(_DKMonitor *)self queue];
    notify_register_dispatch(v4, &out_token, v5, &__block_literal_global_138);

    v6 = 0;
    if (!notify_get_state(out_token, &v6))
    {
      [_DKNotificationScreenLockImputedMonitor setIsLocked:v6 != 0];
    }

    notify_cancel(out_token);
  }
}

- (void)receiveNotificationEvent:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v6 = [v4 objectForKeyedSubscript:@"Notification"];
    v7 = [v6 isEqual:@"com.apple.springboard.lockstate"];

    if (v7)
    {
      v8 = [(_DKMonitor *)self queue];
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
      dispatch_async(v8, block);

      v12 = [v4 objectForKeyedSubscript:@"_State"];
      v13 = [_DKNotificationScreenLockImputedMonitor _eventWithState:v12];
      [(_DKMonitor *)self setCurrentEvent:v13 inferHistoricalState:1];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)fetchMostRecentScreenLockStateEventFromKnowledgeStore
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 count];
  v5 = [a1 firstObject];
  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "ScreenLockStateImputed: length of query results: %lu, %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end