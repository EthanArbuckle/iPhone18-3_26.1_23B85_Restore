@interface NFReachability
+ (id)sharedInstance;
+ (int64_t)_currentNetworkStatus;
- (NFReachability)init;
- (int64_t)_statusFromNetworkPath:(id)a3;
- (void)_updateCurrentNetworkPath:(id)a3;
- (void)dealloc;
@end

@implementation NFReachability

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NFReachability sharedInstance];
  }

  v3 = sharedInstance_s_reachability;

  return v3;
}

uint64_t __32__NFReachability_sharedInstance__block_invoke()
{
  sharedInstance_s_reachability = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (NFReachability)init
{
  v12.receiver = self;
  v12.super_class = NFReachability;
  v2 = [(NFReachability *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("NFReachability.observation", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = nw_path_monitor_create();
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    *(v2 + 1) = +[NFReachability _currentNetworkStatus];
    objc_initWeak(&location, v2);
    v7 = *(v2 + 3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __22__NFReachability_init__block_invoke;
    v9[3] = &unk_27997DEE0;
    objc_copyWeak(&v10, &location);
    nw_path_monitor_set_update_handler(v7, v9);
    nw_path_monitor_set_queue(*(v2 + 3), *(v2 + 2));
    nw_path_monitor_start(*(v2 + 3));
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (int64_t)_currentNetworkStatus
{
  v7 = *MEMORY[0x277D85DE8];
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &address);
  if (v2 && (flags = 0, SCNetworkReachabilityGetFlags(v2, &flags)))
  {
    if ((flags & 2) != 0)
    {
      if ((flags & 4) != 0 && ((flags & 0x28) == 0 || (flags & 0x10) != 0))
      {
        result = (flags >> 17) & 2;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 3;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __22__NFReachability_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCurrentNetworkPath:v3];
}

- (void)dealloc
{
  nw_path_monitor_cancel(self->_networkPathMonitor);
  v3.receiver = self;
  v3.super_class = NFReachability;
  [(NFReachability *)&v3 dealloc];
}

- (void)_updateCurrentNetworkPath:(id)a3
{
  path = a3;
  v4 = [(NFReachability *)self currentNetworkPath];
  is_equal = nw_path_is_equal(path, v4);

  if (!is_equal)
  {
    [(NFReachability *)self setCurrentNetworkPath:path];
    [(NFReachability *)self setCurrentReachabilityStatus:[(NFReachability *)self _statusFromNetworkPath:path]];
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_7);
  }
}

void __44__NFReachability__updateCurrentNetworkPath___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"kNFReachabilityChangedNotification" object:0];
}

- (int64_t)_statusFromNetworkPath:(id)a3
{
  v3 = a3;
  if ((nw_path_get_status(v3) | 2) == 3)
  {
    v4 = (MEMORY[0x25F8808D0](v3, 1) & 1) != 0 || MEMORY[0x25F8808D0](v3, 3);
    if (MEMORY[0x25F8808D0](v3, 2))
    {
      v4 |= 2uLL;
    }

    if (MEMORY[0x25F8808D0](v3, 0))
    {
      v4 |= 4uLL;
    }
  }

  else
  {
    v4 = 0;
  }

  if (MEMORY[0x25F880870](v3))
  {
    v4 |= 8uLL;
  }

  if (MEMORY[0x25F880850](v3))
  {
    v4 |= 0x10uLL;
  }

  return v4;
}

@end