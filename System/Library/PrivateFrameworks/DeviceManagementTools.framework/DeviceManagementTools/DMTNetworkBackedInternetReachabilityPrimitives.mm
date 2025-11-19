@interface DMTNetworkBackedInternetReachabilityPrimitives
- (DMTNetworkBackedInternetReachabilityPrimitives)init;
- (void)dealloc;
- (void)pathDidChange:(id)a3;
@end

@implementation DMTNetworkBackedInternetReachabilityPrimitives

- (void)dealloc
{
  v3 = [(DMTNetworkBackedInternetReachabilityPrimitives *)self pathMonitor];
  nw_path_monitor_cancel(v3);

  v4.receiver = self;
  v4.super_class = DMTNetworkBackedInternetReachabilityPrimitives;
  [(DMTNetworkBackedInternetReachabilityPrimitives *)&v4 dealloc];
}

- (DMTNetworkBackedInternetReachabilityPrimitives)init
{
  v16.receiver = self;
  v16.super_class = DMTNetworkBackedInternetReachabilityPrimitives;
  v2 = [(DMTNetworkBackedInternetReachabilityPrimitives *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = objc_opt_new();
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    v9 = nw_path_monitor_create();
    v10 = *(v2 + 4);
    *(v2 + 4) = v9;

    nw_path_monitor_set_queue(*(v2 + 4), *(v2 + 3));
    objc_initWeak(&location, v2);
    v11 = *(v2 + 4);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__DMTNetworkBackedInternetReachabilityPrimitives_init__block_invoke;
    v13[3] = &unk_278F5E490;
    objc_copyWeak(&v14, &location);
    nw_path_monitor_set_update_handler(v11, v13);
    nw_path_monitor_start(*(v2 + 4));
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __54__DMTNetworkBackedInternetReachabilityPrimitives_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectorOnMainThread:sel_pathDidChange_ withObject:v3 waitUntilDone:0];
}

- (void)pathDidChange:(id)a3
{
  v4 = [(DMTNetworkBackedInternetReachabilityPrimitives *)self pathEvaluator];
  v5 = [v4 path];
  v6 = [v5 status];

  if ((v6 == 1) != [(DMTNetworkBackedInternetReachabilityPrimitives *)self reachable])
  {
    [(DMTNetworkBackedInternetReachabilityPrimitives *)self setReachable:v6 == 1];
    v7 = [(DMTNetworkBackedInternetReachabilityPrimitives *)self statusChangedBlock];
    if (v7)
    {
      v8 = v7;
      (v7)[2](v7, v6 == 1);
      v7 = v8;
    }
  }
}

@end