@interface _DKCalendarMonitor
+ (id)_eventWithTitle:(id)title interaction:(id)interaction;
- (_DKCalendarMonitor)init;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)update;
@end

@implementation _DKCalendarMonitor

- (_DKCalendarMonitor)init
{
  v6.receiver = self;
  v6.super_class = _DKCalendarMonitor;
  v2 = [(_DKMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC5A40]);
    [v3 requestAccessToEntityType:0 completion:&__block_literal_global_12];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__receiveDatabaseChangeNotification_ name:*MEMORY[0x277CC5948] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(_DKCalendarMonitor *)self deactivate];
  v4.receiver = self;
  v4.super_class = _DKCalendarMonitor;
  [(_DKMonitor *)&v4 dealloc];
}

- (void)start
{
  v2.receiver = self;
  v2.super_class = _DKCalendarMonitor;
  [(_DKMonitor *)&v2 instantMonitorNeedsActivation];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKCalendarMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKCalendarMonitor *)self deactivate];
  }
}

+ (id)_eventWithTitle:(id)title interaction:(id)interaction
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CFE1B0];
  interactionCopy = interaction;
  titleCopy = title;
  interaction = [v5 interaction];
  v18 = interaction;
  v19[0] = interactionCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v10 = MEMORY[0x277CFE1D8];
  calendarEventStream = [MEMORY[0x277CFE298] calendarEventStream];
  startDate = [interactionCopy startDate];
  endDate = [interactionCopy endDate];
  v14 = [MEMORY[0x277CFE2A0] withTitle:titleCopy];

  v15 = [v10 eventWithStream:calendarEventStream startDate:startDate endDate:endDate value:v14 metadata:v9];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)update
{
  queue = [(_DKMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28___DKCalendarMonitor_update__block_invoke;
  v7[3] = &unk_27856F060;
  v7[4] = self;
  v4 = v7;
  v5 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_8;
  block[3] = &unk_27856F178;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(queue, block);
}

@end