@interface DNDSLocationLifetimeMonitor
- (DNDSLifetimeMonitorDelegate)delegate;
- (DNDSLocationLifetimeMonitor)initWithMeDeviceService:(id)a3;
- (DNDSLocationLifetimeMonitorDataSource)dataSource;
- (NSArray)activeLifetimeAssertionUUIDs;
- (NSString)sysdiagnoseDataIdentifier;
- (unint64_t)availableRegions;
- (void)_queue_refreshMonitorForDate:(id)a3;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)meDeviceService:(id)a3 didReceiveMeDeviceStateUpdate:(id)a4;
- (void)refreshMonitorForDate:(id)a3;
@end

@implementation DNDSLocationLifetimeMonitor

- (DNDSLocationLifetimeMonitor)initWithMeDeviceService:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = DNDSLocationLifetimeMonitor;
  v6 = [(DNDSLocationLifetimeMonitor *)&v24 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.donotdisturb.server.LocationLifetimeMonitor", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_meDeviceService, a3);
    [v5 addListener:v6];
    v10 = [[DNDSUntilExitLocationLifetimeMonitor alloc] initWithAggregateMonitor:v6];
    untilExitMonitor = v6->_untilExitMonitor;
    v6->_untilExitMonitor = v10;

    v12 = [[DNDSExplicitRegionLocationLifetimeMonitor alloc] initWithAggregateMonitor:v6];
    explicitRegionMonitor = v6->_explicitRegionMonitor;
    v6->_explicitRegionMonitor = v12;

    v14 = v6->_untilExitMonitor;
    v25[0] = v6->_explicitRegionMonitor;
    v25[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    children = v6->_children;
    v6->_children = v15;

    v17 = [v5 meDeviceState];
    v18 = [v17 meDeviceStatus];

    if (v18 == 2)
    {
      v19 = v6->_queue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__DNDSLocationLifetimeMonitor_initWithMeDeviceService___block_invoke;
      v22[3] = &unk_278F89ED0;
      v23 = v6;
      dispatch_sync(v19, v22);
    }

    DNDSRegisterSysdiagnoseDataProvider(v6);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

void __55__DNDSLocationLifetimeMonitor_initWithMeDeviceService___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v7 = [MEMORY[0x277CCA8D8] dnd_locationBundle];
  v3 = [v7 bundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3 delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 8)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

- (NSArray)activeLifetimeAssertionUUIDs
{
  v3 = [(DNDSExplicitRegionLocationLifetimeMonitor *)self->_explicitRegionMonitor activeLifetimeAssertionUUIDs];
  v4 = [(DNDSUntilExitLocationLifetimeMonitor *)self->_untilExitMonitor activeLifetimeAssertionUUIDs];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)refreshMonitorForDate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__DNDSLocationLifetimeMonitor_refreshMonitorForDate___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (unint64_t)availableRegions
{
  v3 = [(CLLocationManager *)self->_locationManager monitoredRegions];
  v4 = [v3 count];
  v5 = ~v4 + [(DNDSUntilExitLocationLifetimeMonitor *)self->_untilExitMonitor hasCurrentRegion];

  return v5 + 20;
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_children;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 locationManager:v8 monitoringDidFailForRegion:v9 withError:{v10, v18}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_children;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 locationManager:v8 didDetermineState:a4 forRegion:{v9, v17}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_children;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 locationManager:v6 didUpdateLocations:{v7, v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_children;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 locationManager:v6 didFailWithError:{v7, v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)meDeviceService:(id)a3 didReceiveMeDeviceStateUpdate:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__DNDSLocationLifetimeMonitor_meDeviceService_didReceiveMeDeviceStateUpdate___block_invoke;
  v8[3] = &unk_278F89F48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

uint64_t __77__DNDSLocationLifetimeMonitor_meDeviceService_didReceiveMeDeviceStateUpdate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) meDeviceStatus];
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  if (result == 2)
  {
    if (v4)
    {
      return result;
    }

    v5 = objc_alloc(MEMORY[0x277CBFC10]);
    v6 = [MEMORY[0x277CCA8D8] dnd_locationBundle];
    v7 = [v6 bundlePath];
    v8 = [v5 initWithEffectiveBundlePath:v7 delegate:*(a1 + 40) onQueue:*(*(a1 + 40) + 8)];
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CBEAA8] date];
    result = [v11 _queue_refreshMonitorForDate:v12];
    v4 = v12;
  }

  else
  {
    *(v3 + 16) = 0;
  }

  return MEMORY[0x2821F96F8](result, v4);
}

- (void)_queue_refreshMonitorForDate:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(DNDSExplicitRegionLocationLifetimeMonitor *)self->_explicitRegionMonitor refreshMonitorForDate:v5];
  [(DNDSUntilExitLocationLifetimeMonitor *)self->_untilExitMonitor refreshMonitorForDate:v5];
}

- (NSString)sysdiagnoseDataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"com.apple.donotdisturb.%@", v4];

  return v5;
}

id __63__DNDSLocationLifetimeMonitor_sysdiagnoseDataForDate_redacted___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    [a2 identifier];
  }

  else
  {
    [a2 debugDescription];
  }
  v2 = ;

  return v2;
}

- (DNDSLocationLifetimeMonitorDataSource)dataSource
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