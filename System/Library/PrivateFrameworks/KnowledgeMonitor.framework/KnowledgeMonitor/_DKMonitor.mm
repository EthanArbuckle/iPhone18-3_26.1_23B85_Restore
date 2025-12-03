@interface _DKMonitor
- (BOOL)_instantMonitorNeedsActivation;
- (BOOL)_instantMonitorNeedsDeactivation;
- (BOOL)historicalStateHasChanged:(id)changed;
- (BOOL)instantMonitorNeedsActivation;
- (BOOL)instantMonitorNeedsDeactivation;
- (_DKEvent)currentEvent;
- (_DKMonitor)init;
- (id)loadState;
- (void)dealloc;
- (void)endCurrentEvent:(id)event;
- (void)saveState;
- (void)setCurrentEvent:(id)event inferHistoricalState:(BOOL)state;
- (void)setLastUpdate:(id)update;
- (void)systemClockDidChange:(id)change;
@end

@implementation _DKMonitor

- (_DKEvent)currentEvent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  eventQueue = self->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26___DKMonitor_currentEvent__block_invoke;
  v5[3] = &unk_27856F390;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)saveState
{
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23___DKMonitor_saveState__block_invoke;
  v7[3] = &unk_27856F060;
  v7[4] = self;
  v3 = v7;
  v4 = queue;
  v5 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_1;
  block[3] = &unk_27856F178;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  dispatch_async(v4, block);
}

- (_DKMonitor)init
{
  v38.receiver = self;
  v38.super_class = _DKMonitor;
  v2 = [(_DKMonitor *)&v38 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = os_log_create("com.apple.coreduet.monitors", Name);
    log = v2->_log;
    v2->_log = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if ([objc_opt_class() qualityOfService])
    {
      qualityOfService = [objc_opt_class() qualityOfService];
      v9 = dispatch_queue_attr_make_with_qos_class(v7, qualityOfService, 0);

      v7 = v9;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = dispatch_queue_create([v11 UTF8String], v7);
    queue = v2->_queue;
    v2->_queue = v12;

    v14 = [v11 stringByAppendingString:@".event"];
    v15 = dispatch_queue_create([v14 UTF8String], v7);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v15;

    loadState = [(_DKMonitor *)v2 loadState];
    state = v2->_state;
    v2->_state = loadState;

    v19 = [(NSDictionary *)v2->_state objectForKeyedSubscript:@"kInstantState"];
    instantState = v2->_instantState;
    v2->_instantState = v19;

    v21 = [(NSDictionary *)v2->_state objectForKeyedSubscript:@"kHistoricalState"];
    historicalState = v2->_historicalState;
    v2->_historicalState = v21;

    v23 = [(NSMutableDictionary *)v2->_historicalState objectForKeyedSubscript:@"kLastUpdateDate"];
    lastUpdate = v2->_lastUpdate;
    v2->_lastUpdate = v23;

    eventComparator = v2->_eventComparator;
    v2->_eventComparator = &__block_literal_global_2;

    filter = v2->_filter;
    v2->_filter = &__block_literal_global_20;

    if ([objc_opt_class() shouldMergeUnchangedEvents])
    {
      v27 = [(NSMutableDictionary *)v2->_instantState objectForKeyedSubscript:@"kCurrentEvent"];
      currentEvent = v2->_currentEvent;
      v2->_currentEvent = v27;
    }

    v29 = [MEMORY[0x277CBEB98] setWithObjects:{@"Backlight", @"ScreenLockState", @"AppUsage", 0}];
    eventStream = [objc_opt_class() eventStream];
    if (eventStream)
    {
      v31 = eventStream;
      eventStream2 = [objc_opt_class() eventStream];
      v33 = [v29 containsObject:eventStream2];

      if (v33)
      {
        v2->_machTimeAtLastClockChange = mach_continuous_time();
        date = [MEMORY[0x277CBEAA8] date];
        dateAtLastClockChange = v2->_dateAtLastClockChange;
        v2->_dateAtLastClockChange = date;

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:v2 selector:sel_systemClockDidChange_ name:*MEMORY[0x277CBE778] object:0];
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE778] object:0];

  v4.receiver = self;
  v4.super_class = _DKMonitor;
  [(_DKMonitor *)&v4 dealloc];
}

- (id)loadState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23___DKMonitor_loadState__block_invoke;
  v5[3] = &unk_27856F368;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)instantMonitorNeedsActivation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43___DKMonitor_instantMonitorNeedsActivation__block_invoke;
  v5[3] = &unk_27856F390;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_instantMonitorNeedsActivation
{
  dispatch_assert_queue_V2(self->_queue);
  references = self->_references;
  self->_references = references + 1;
  return references == 0;
}

- (BOOL)instantMonitorNeedsDeactivation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45___DKMonitor_instantMonitorNeedsDeactivation__block_invoke;
  v5[3] = &unk_27856F390;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_instantMonitorNeedsDeactivation
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_references - 1;
  self->_references = v3;
  return v3 == 0;
}

- (void)endCurrentEvent:(id)event
{
  v12[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [(NSMutableDictionary *)self->_instantState objectForKeyedSubscript:@"kCurrentEvent"];
  if (v5)
  {
    filter = [(_DKMonitor *)self filter];
    v7 = (filter)[2](filter, v5);

    if ((v7 & 1) == 0)
    {
      [v5 setEndDate:eventCopy];
      historicalHandler = [(_DKMonitor *)self historicalHandler];

      if (historicalHandler)
      {
        historicalHandler2 = [(_DKMonitor *)self historicalHandler];
        v12[0] = v5;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
        (historicalHandler2)[2](historicalHandler2, v10);
      }
    }

    [(NSMutableDictionary *)self->_instantState removeObjectForKey:@"kCurrentEvent"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)historicalStateHasChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(NSMutableDictionary *)self->_instantState objectForKeyedSubscript:@"kCurrentEvent"];
  if (v5)
  {
    v6 = (*(self->_eventComparator + 2))() != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setCurrentEvent:(id)event inferHistoricalState:(BOOL)state
{
  eventCopy = event;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke;
  v13[3] = &unk_27856F3B8;
  v13[4] = self;
  v14 = eventCopy;
  stateCopy = state;
  v8 = v13;
  v9 = queue;
  v10 = eventCopy;
  v11 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_1;
  block[3] = &unk_27856F178;
  v17 = v11;
  v18 = v8;
  v12 = v11;
  dispatch_async(v9, block);
}

- (void)setLastUpdate:(id)update
{
  updateCopy = update;
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  objc_storeStrong(&self->_lastUpdate, update);
  lastUpdate = self->_lastUpdate;
  if (lastUpdate)
  {
    historicalState = [(_DKMonitor *)self historicalState];
    [historicalState setObject:lastUpdate forKeyedSubscript:@"kLastUpdateDate"];

    [(_DKMonitor *)self saveState];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)systemClockDidChange:(id)change
{
  changeCopy = change;
  if (systemClockDidChange__onceToken != -1)
  {
    [_DKMonitor systemClockDidChange:];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35___DKMonitor_systemClockDidChange___block_invoke_2;
  v6[3] = &unk_27856F368;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(eventQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [(_DKMonitor *)self invalidateInstantState];
    [(_DKMonitor *)self synchronouslyReflectCurrentValue];
  }

  _Block_object_dispose(&v7, 8);
}

@end