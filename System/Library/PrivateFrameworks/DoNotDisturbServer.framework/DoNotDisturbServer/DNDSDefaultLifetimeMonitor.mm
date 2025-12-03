@interface DNDSDefaultLifetimeMonitor
- (id)updateForModeAssertions:(id)assertions date:(id)date;
@end

@implementation DNDSDefaultLifetimeMonitor

- (id)updateForModeAssertions:(id)assertions date:(id)date
{
  assertionsCopy = assertions;
  queue = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = DNDSLogDefaultLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogDefaultLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Refreshing monitor", v12, 2u);
  }

  v8 = [assertionsCopy bs_mapNoNulls:&__block_literal_global_3];

  v9 = [DNDSLifetimeMonitorResult alloc];
  v10 = [(DNDSLifetimeMonitorResult *)v9 initWithActiveUUIDs:v8 expiredUUIDs:MEMORY[0x277CBEBF8]];

  return v10;
}

@end