@interface BLTReachabilityManager
+ (id)sharedInstance;
- (BLTReachabilityManager)init;
- (void)interfaceRadioHotnessChanged:(id)a3;
- (void)interfaceReachabilityChanged:(id)a3;
@end

@implementation BLTReachabilityManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BLTReachabilityManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance___sharedInstance_0;

  return v2;
}

uint64_t __40__BLTReachabilityManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BLTReachabilityManager)init
{
  v24 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = BLTReachabilityManager;
  v2 = [(BLTReachabilityManager *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.bulletindistributor.reachability-updates", v3);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v4;

    v6 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
    [v6 addDelegate:v2 queue:v2->_updateQueue];

    v7 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
    [v7 addDelegate:v2 queue:v2->_updateQueue];

    v8 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
    if ([v8 isInternetReachable])
    {
      v2->_internetReachable = 1;
      p_internetReachable = &v2->_internetReachable;
    }

    else
    {
      v10 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
      v2->_internetReachable = [v10 isInternetReachable];
      p_internetReachable = &v2->_internetReachable;
    }

    v11 = blt_ids_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
      v13 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
      v14 = [MEMORY[0x277CCABB0] numberWithBool:*p_internetReachable];
      *buf = 138412802;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "according to sPCInterfaceMonitorWWAN=%@ sPCInterfaceMonitorNonCellular=%@ internet reachability = %@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)interfaceReachabilityChanged:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 1;
  v6 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
  if (([v6 isInternetReachable] & 1) == 0)
  {
    v7 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
    v5 = [v7 isInternetReachable];
  }

  if (self->_internetReachable != v5)
  {
    v8 = blt_ids_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_internetReachable];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v5];
      v13 = 138412802;
      v14 = v4;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Internet reachability via %@ changed from %@ to %@", &v13, 0x20u);
    }

    [(BLTReachabilityManager *)self setInternetReachable:v5];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"BLTIDSDeviceConnectionStatusChangedNotification" object:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)interfaceRadioHotnessChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = blt_ids_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isRadioHot")}];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_INFO, "interfaceLinkQualityChanged %@ hotness %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end