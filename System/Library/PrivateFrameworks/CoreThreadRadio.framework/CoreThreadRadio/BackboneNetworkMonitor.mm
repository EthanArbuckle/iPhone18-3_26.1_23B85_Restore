@interface BackboneNetworkMonitor
- (BOOL)isOdeonInterface;
- (const)getInterfaceName;
- (void)startNetworkMonitoring;
- (void)stopNetworkMonitoring;
@end

@implementation BackboneNetworkMonitor

- (void)startNetworkMonitoring
{
  v3 = objc_autoreleasePoolPush();
  v4 = nw_path_monitor_create();
  [(BackboneNetworkMonitor *)self setMonitor:v4];

  monitor = [(BackboneNetworkMonitor *)self monitor];
  nw_path_monitor_prohibit_interface_type(monitor, nw_interface_type_other);

  monitor2 = [(BackboneNetworkMonitor *)self monitor];
  monitorQueue = [(BackboneNetworkMonitor *)self monitorQueue];
  nw_path_monitor_set_queue(monitor2, monitorQueue);

  monitor3 = [(BackboneNetworkMonitor *)self monitor];
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = __48__BackboneNetworkMonitor_startNetworkMonitoring__block_invoke;
  update_handler[3] = &unk_1004C1658;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(monitor3, update_handler);

  monitor4 = [(BackboneNetworkMonitor *)self monitor];
  nw_path_monitor_start(monitor4);

  objc_autoreleasePoolPop(v3);
}

void __48__BackboneNetworkMonitor_startNetworkMonitoring__block_invoke(uint64_t a1, void *a2)
{
  path = a2;
  v3 = nw_path_copy_interface();
  name = nw_interface_get_name(v3);
  if (name)
  {
    v5 = name;
    v6 = [NSString stringWithUTF8String:name];
    v7 = [*(a1 + 32) interfaceName];
    if ([v7 length])
    {
      v8 = [*(a1 + 32) interfaceName];
      v9 = [v6 isEqualToString:v8];

      if ((v9 & 1) == 0)
      {
        v10 = [*(a1 + 32) interfaceName];
        NSLog(@"BackboneInterfaceNetworkMonitor:Backbone interface was switched, old intf = %@, new intf = %@\n. Clean up the old interface", v10, v6);

        if ([*(a1 + 32) isConnected])
        {
          [*(a1 + 32) stopTimeAndCalculateCurrentDuration];
        }

        [*(a1 + 32) setIsConnected:0];
        v11 = [*(a1 + 32) interfaceName];
        updateInterfaceName([v11 UTF8String], objc_msgSend(*(a1 + 32), "isConnected"), 1);

        if (v3)
        {
          type = nw_interface_get_type(v3);
        }

        else
        {
          NSLog(@"BackboneInterfaceNetworkMonitor:%s interface is NULL\n", "[BackboneNetworkMonitor startNetworkMonitoring]_block_invoke");
          type = 0;
        }

        [*(a1 + 32) setInterfaceNameEnum:type];
      }
    }

    else
    {
    }

    v13 = [NSString stringWithUTF8String:v5];
    [*(a1 + 32) setInterfaceName:v13];

    if (nw_path_get_status(path) == nw_path_status_satisfied)
    {
      NSLog(@"BackboneInterfaceNetworkMonitor:%s interface: %s... is connected\n", "[BackboneNetworkMonitor startNetworkMonitoring]_block_invoke", v5);
      if (([*(a1 + 32) isConnected] & 1) == 0)
      {
        [*(a1 + 32) stopTimeAndCalculateCurrentDuration];
        updateInterfaceName(v5, [*(a1 + 32) isConnected], 0);
        if (v3)
        {
          v14 = nw_interface_get_type(v3);
        }

        else
        {
          NSLog(@"BackboneInterfaceNetworkMonitor:%s interface is NULL\n", "[BackboneNetworkMonitor startNetworkMonitoring]_block_invoke");
          v14 = 0;
        }

        [*(a1 + 32) setInterfaceNameEnum:v14];
        if (!strcmp(v5, "ir0"))
        {
          [*(a1 + 32) setInterfaceNameEnum:5];
        }

        [*(a1 + 32) startTimeAndGetCurrentDimension];
      }

      [*(a1 + 32) setIsConnected:1];
      updateInterfaceName(v5, [*(a1 + 32) isConnected], 0);
    }

    else
    {
      NSLog(@"BackboneInterfaceNetworkMonitor:%s interface: %s... is disconnected\n", "[BackboneNetworkMonitor startNetworkMonitoring]_block_invoke", v5);
      if ([*(a1 + 32) isConnected])
      {
        [*(a1 + 32) stopTimeAndCalculateCurrentDuration];
      }

      [*(a1 + 32) setIsConnected:0];
      updateInterfaceName(v5, [*(a1 + 32) isConnected], 0);
      if (v3)
      {
        v15 = nw_interface_get_type(v3);
      }

      else
      {
        NSLog(@"BackboneInterfaceNetworkMonitor:%s interface is NULL\n", "[BackboneNetworkMonitor startNetworkMonitoring]_block_invoke");
        v15 = 0;
      }

      [*(a1 + 32) setInterfaceNameEnum:v15];
    }
  }

  else
  {
    NSLog(@"BackboneInterfaceNetworkMonitor:name is NULL\n");
    if ([*(a1 + 32) isConnected])
    {
      NSLog(@"BackboneInterfaceNetworkMonitor:name is NULL, previously connected interface is now disconnected\n");
      [*(a1 + 32) stopTimeAndCalculateCurrentDuration];
      [*(a1 + 32) setIsConnected:0];
      updateInterfaceName(0, [*(a1 + 32) isConnected], 0);
      [*(a1 + 32) setInterfaceNameEnum:0];
    }

    else
    {
      updateInterfaceName(0, [*(a1 + 32) isConnected], 0);
    }
  }
}

- (void)stopNetworkMonitoring
{
  v3 = objc_autoreleasePoolPush();
  monitor = [(BackboneNetworkMonitor *)self monitor];

  if (monitor)
  {
    monitor2 = [(BackboneNetworkMonitor *)self monitor];
    nw_path_monitor_cancel(monitor2);
  }

  [(BackboneNetworkMonitor *)self setMonitor:0];

  objc_autoreleasePoolPop(v3);
}

- (const)getInterfaceName
{
  interfaceName = [(BackboneNetworkMonitor *)self interfaceName];
  v3 = [interfaceName cStringUsingEncoding:4];

  return v3;
}

- (BOOL)isOdeonInterface
{
  interfaceName = [(BackboneNetworkMonitor *)self interfaceName];
  v3 = [interfaceName cStringUsingEncoding:4];

  return v3 && strcmp(v3, "ir0") == 0;
}

@end