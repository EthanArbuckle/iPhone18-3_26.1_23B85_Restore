@interface PBBridgeIDSReachability
+ (id)deviceStatusFromIDSDevices:(id)a3 nrDevices:(id)a4;
+ (id)nrDevices;
+ (id)sharedInstance;
- (PBBridgeIDSReachability)init;
- (id)getDeviceStatusChangeFromIDSDevices:(id)a3 nrDevices:(id)a4;
- (unint64_t)reachabilityForDevice:(id)a3;
- (void)_processDevices:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 linkedDevicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
@end

@implementation PBBridgeIDSReachability

uint64_t __41__PBBridgeIDSReachability_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_object = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PBBridgeIDSReachability_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_object;

  return v2;
}

- (PBBridgeIDSReachability)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = PBBridgeIDSReachability;
  v2 = [(PBBridgeIDSReachability *)&v13 init];
  if (v2)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = "[PBBridgeIDSReachability init]";
      _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.bridge.COSIDSReachability.ids", 0);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277CBEB40] orderedSet];
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__PBBridgeIDSReachability_init__block_invoke;
    block[3] = &unk_2799F4468;
    v12 = v2;
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

void __31__PBBridgeIDSReachability_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.pbbridge.connectivity"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(*(a1 + 32) + 16) addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 24)];
  v5 = *(a1 + 32);
  v6 = [v5[2] pb_mineTinkerDevices];
  [v5 _processDevices:v6];
}

+ (id)nrDevices
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = PBGetSetupCompletedDevicesWeShouldList();
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) bluetoothIdentifier];
        if (v9)
        {
          v10 = [MEMORY[0x277D2BCF8] sharedInstance];
          v11 = [v10 deviceForBluetoothID:v9];
          [v3 setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)deviceStatusFromIDSDevices:(id)a3 nrDevices:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if ([v11 isDefaultPairedDevice])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    if (![v11 isNearby])
    {
      goto LABEL_17;
    }

    v8 = [v11 nsuuid];
    if (!v8)
    {
      goto LABEL_18;
    }

    v12 = [v11 nsuuid];
    v13 = [v6 objectForKeyedSubscript:v12];

    if (v13)
    {
      v8 = objc_opt_new();
      v14 = [v11 nsuuid];
      [v8 setIdsDeviceID:v14];

      if ([v11 isConnected])
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      [v8 setReachability:v15];
    }

    else
    {
LABEL_17:
      v8 = 0;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getDeviceStatusChangeFromIDSDevices:(id)a3 nrDevices:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() deviceStatusFromIDSDevices:v7 nrDevices:v6];

  v9 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_lock);
  p_activeDeviceStatus = &self->_activeDeviceStatus;
  activeDeviceStatus = self->_activeDeviceStatus;
  if (!activeDeviceStatus)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    objc_storeStrong(&self->_activeDeviceStatus, v8);
    v16 = v9;
    v15 = v8;
    goto LABEL_8;
  }

  if (v8)
  {
    v12 = [(PBBridgeIDSReachabilityStatusObject *)activeDeviceStatus isEqual:v8];
    v13 = *p_activeDeviceStatus;
    if (v12)
    {
      v14 = [*p_activeDeviceStatus reachability];
      if (v14 == [v8 reachability])
      {
        goto LABEL_12;
      }

      objc_storeStrong(&self->_activeDeviceStatus, v8);
      v15 = *p_activeDeviceStatus;
      v16 = v9;
LABEL_8:
      [v16 addObject:v15];
      goto LABEL_12;
    }

    v20 = v8;
    v21 = *p_activeDeviceStatus;
    *p_activeDeviceStatus = v20;
    v17 = v13;

    [(PBBridgeIDSReachabilityStatusObject *)v17 setReachability:0];
    [v9 addObject:v17];
    v18 = v9;
    v19 = v20;
  }

  else
  {
    *p_activeDeviceStatus = 0;
    v17 = activeDeviceStatus;

    [(PBBridgeIDSReachabilityStatusObject *)v17 setReachability:0];
    v18 = v9;
    v19 = v17;
  }

  [v18 addObject:v19];

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (unint64_t)reachabilityForDevice:(id)a3
{
  v4 = [a3 valueForProperty:*MEMORY[0x277D2BD40]];
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(PBBridgeIDSReachabilityStatusObject *)self->_activeDeviceStatus idsDeviceID];
    v6 = [v5 isEqual:v4];

    if (v6)
    {
      v7 = [(PBBridgeIDSReachabilityStatusObject *)self->_activeDeviceStatus reachability];
    }

    else
    {
      v7 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processDevices:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() nrDevices];
  v6 = [(PBBridgeIDSReachability *)self getDeviceStatusChangeFromIDSDevices:v4 nrDevices:v5];
  if ([v6 count])
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "IDSDevice status change: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    v8 = [(NSMutableOrderedSet *)self->_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) fireReachability:self deviceStatus:v6 devices:{v5, v15}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 136315650;
    v16 = "[PBBridgeIDSReachability addObserver:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2048;
    v20 = v4;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s %@[%p]", buf, 0x20u);
  }

  v8 = objc_opt_new();
  [v8 setObserver:v4];
  os_unfair_lock_lock(&self->_lock);
  v9 = self->_activeDeviceStatus;
  [(NSMutableOrderedSet *)self->_observers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PBBridgeIDSReachability_addObserver___block_invoke;
    block[3] = &unk_2799F4738;
    block[4] = self;
    v13 = v8;
    v14 = v9;
    dispatch_async(queue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __39__PBBridgeIDSReachability_addObserver___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [objc_opt_class() nrDevices];
  v4 = a1[4];
  v3 = a1[5];
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:a1[6]];
  [v3 fireReachability:v4 deviceStatus:v5 devices:v6];
}

- (void)removeObserver:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "[PBBridgeIDSReachability removeObserver:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableOrderedSet *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 observer];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 observer];

          if (v14 != v4)
          {
            continue;
          }
        }

        [(NSMutableOrderedSet *)self->_observers removeObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:nearbyDevicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  v7 = [v5 pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:connectedDevicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  v7 = [v5 pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:activeAccountsChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  v7 = [v5 pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 linkedDevicesChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:linkedDevicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  v7 = [v5 pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:devicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  v7 = [v5 pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:v7];
  v8 = *MEMORY[0x277D85DE8];
}

@end