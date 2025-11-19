@interface _DKCalendarMonitor
+ (id)_eventWithTitle:(id)a3 interaction:(id)a4;
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
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__receiveDatabaseChangeNotification_ name:*MEMORY[0x277CC5948] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

+ (id)_eventWithTitle:(id)a3 interaction:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CFE1B0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 interaction];
  v18 = v8;
  v19[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v10 = MEMORY[0x277CFE1D8];
  v11 = [MEMORY[0x277CFE298] calendarEventStream];
  v12 = [v6 startDate];
  v13 = [v6 endDate];
  v14 = [MEMORY[0x277CFE2A0] withTitle:v7];

  v15 = [v10 eventWithStream:v11 startDate:v12 endDate:v13 value:v14 metadata:v9];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)update
{
  v3 = [(_DKMonitor *)self queue];
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
  dispatch_async(v3, block);
}

@end