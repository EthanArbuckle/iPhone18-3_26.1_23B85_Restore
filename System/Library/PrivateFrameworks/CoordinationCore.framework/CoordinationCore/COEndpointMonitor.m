@interface COEndpointMonitor
- (COEndpointMonitor)init;
- (COEndpointMonitorDelegate)delegate;
- (void)_activateLink;
- (void)startMonitoring;
@end

@implementation COEndpointMonitor

- (COEndpointMonitor)init
{
  v7.receiver = self;
  v7.super_class = COEndpointMonitor;
  v2 = [(COEndpointMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Coordination.EndpointMonitoring", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)startMonitoring
{
  v2 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(COEndpointMonitor *)v2 startMonitoring];
  }
}

- (void)_activateLink
{
  objc_initWeak(&location, self);
  client = self->_client;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__COEndpointMonitor__activateLink__block_invoke;
  v4[3] = &unk_278E156D8;
  objc_copyWeak(&v5, &location);
  [(RPCompanionLinkClient *)client activateWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__COEndpointMonitor__activateLink__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = COCoreLogForCategory(6);
    v5 = v4;
    if (a2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __34__COEndpointMonitor__activateLink__block_invoke_cold_1(v5);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "Successfully activated link to monitor endpoints", v6, 2u);
    }
  }
}

- (COEndpointMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end