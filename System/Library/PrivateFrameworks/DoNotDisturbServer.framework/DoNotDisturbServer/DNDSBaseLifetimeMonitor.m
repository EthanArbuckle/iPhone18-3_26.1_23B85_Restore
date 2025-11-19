@interface DNDSBaseLifetimeMonitor
- (DNDSBaseLifetimeMonitor)init;
- (DNDSLifetimeMonitorDataSource)dataSource;
- (DNDSLifetimeMonitorDelegate)delegate;
- (NSString)sysdiagnoseDataIdentifier;
- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4;
- (id)updateForModeAssertions:(id)a3 date:(id)a4;
- (void)dealloc;
- (void)refreshMonitorForDate:(id)a3;
- (void)refreshMonitorFromQueueForDate:(id)a3;
@end

@implementation DNDSBaseLifetimeMonitor

- (DNDSBaseLifetimeMonitor)init
{
  v13.receiver = self;
  v13.super_class = DNDSBaseLifetimeMonitor;
  v2 = [(DNDSBaseLifetimeMonitor *)&v13 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.donotdisturb.lifetime-monitor.%@", v5];

    v7 = [v6 cStringUsingEncoding:4];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    queue = v2->_queue;
    v2->_queue = v9;

    activeLifetimeAssertionUUIDs = v2->_activeLifetimeAssertionUUIDs;
    v2->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];

    DNDSRegisterSysdiagnoseDataProvider(v2);
  }

  return v2;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSBaseLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v3 dealloc];
}

- (id)updateForModeAssertions:(id)a3 date:(id)a4
{
  v4 = [DNDSLifetimeMonitorResult alloc];
  v5 = [(DNDSLifetimeMonitorResult *)v4 initWithActiveUUIDs:MEMORY[0x277CBEBF8] expiredUUIDs:MEMORY[0x277CBEBF8]];

  return v5;
}

- (void)refreshMonitorForDate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DNDSBaseLifetimeMonitor_refreshMonitorForDate___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)refreshMonitorFromQueueForDate:(id)a3
{
  v15 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(DNDSBaseLifetimeMonitor *)self dataSource];
  v5 = [v4 lifetimeMonitor:self modeAssertionsWithLifetimeClass:{objc_msgSend(objc_opt_class(), "lifetimeClass")}];
  v6 = [(NSArray *)self->_activeLifetimeAssertionUUIDs copy];
  v7 = [(DNDSBaseLifetimeMonitor *)self updateForModeAssertions:v5 date:v15];
  v8 = [v7 activeUUIDs];
  v9 = [v8 copy];
  activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
  self->_activeLifetimeAssertionUUIDs = v9;

  v11 = [(DNDSBaseLifetimeMonitor *)self delegate];
  v12 = [v7 expiredUUIDs];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v7 expiredUUIDs];
    [v11 lifetimeMonitor:self lifetimeDidExpireForAssertionUUIDs:v14 expirationDate:v15];
  }

  if (([v6 isEqual:self->_activeLifetimeAssertionUUIDs] & 1) == 0)
  {
    [v11 activeAssertionsDidChangeForLifetimeMonitor:self];
  }
}

- (NSString)sysdiagnoseDataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"com.apple.donotdisturb.lifetime-monitor.%@", v4];

  return v5;
}

- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DNDSBaseLifetimeMonitor_sysdiagnoseDataForDate_redacted___block_invoke;
  block[3] = &unk_278F89EA8;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(queue, block);
  v7 = [v13[5] bs_mapNoNulls:&__block_literal_global_0];
  v18 = @"active-uuids";
  v19[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __59__DNDSBaseLifetimeMonitor_sysdiagnoseDataForDate_redacted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLifetimeAssertionUUIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (DNDSLifetimeMonitorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSLifetimeMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end