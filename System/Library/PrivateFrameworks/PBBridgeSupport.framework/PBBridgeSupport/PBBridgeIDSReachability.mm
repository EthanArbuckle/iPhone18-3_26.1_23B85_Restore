@interface PBBridgeIDSReachability
+ (id)deviceStatusFromIDSDevices:(id)devices nrDevices:(id)nrDevices;
+ (id)nrDevices;
+ (id)sharedInstance;
- (PBBridgeIDSReachability)init;
- (id)getDeviceStatusChangeFromIDSDevices:(id)devices nrDevices:(id)nrDevices;
- (unint64_t)reachabilityForDevice:(id)device;
- (void)_processDevices:(id)devices;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service linkedDevicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
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
  block[4] = self;
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

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    observers = v2->_observers;
    v2->_observers = orderedSet;

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

        bluetoothIdentifier = [*(*(&v14 + 1) + 8 * i) bluetoothIdentifier];
        if (bluetoothIdentifier)
        {
          mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
          v11 = [mEMORY[0x277D2BCF8] deviceForBluetoothID:bluetoothIdentifier];
          [dictionary setObject:v11 forKeyedSubscript:bluetoothIdentifier];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)deviceStatusFromIDSDevices:(id)devices nrDevices:(id)nrDevices
{
  v23 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  nrDevicesCopy = nrDevices;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = devicesCopy;
  nsuuid = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (nsuuid)
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

      if (nsuuid == ++v10)
      {
        nsuuid = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (nsuuid)
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

    nsuuid = [v11 nsuuid];
    if (!nsuuid)
    {
      goto LABEL_18;
    }

    nsuuid2 = [v11 nsuuid];
    v13 = [nrDevicesCopy objectForKeyedSubscript:nsuuid2];

    if (v13)
    {
      nsuuid = objc_opt_new();
      nsuuid3 = [v11 nsuuid];
      [nsuuid setIdsDeviceID:nsuuid3];

      if ([v11 isConnected])
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      [nsuuid setReachability:v15];
    }

    else
    {
LABEL_17:
      nsuuid = 0;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];

  return nsuuid;
}

- (id)getDeviceStatusChangeFromIDSDevices:(id)devices nrDevices:(id)nrDevices
{
  nrDevicesCopy = nrDevices;
  devicesCopy = devices;
  v8 = [objc_opt_class() deviceStatusFromIDSDevices:devicesCopy nrDevices:nrDevicesCopy];

  array = [MEMORY[0x277CBEB18] array];
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
    v16 = array;
    v15 = v8;
    goto LABEL_8;
  }

  if (v8)
  {
    v12 = [(PBBridgeIDSReachabilityStatusObject *)activeDeviceStatus isEqual:v8];
    v13 = *p_activeDeviceStatus;
    if (v12)
    {
      reachability = [*p_activeDeviceStatus reachability];
      if (reachability == [v8 reachability])
      {
        goto LABEL_12;
      }

      objc_storeStrong(&self->_activeDeviceStatus, v8);
      v15 = *p_activeDeviceStatus;
      v16 = array;
LABEL_8:
      [v16 addObject:v15];
      goto LABEL_12;
    }

    v20 = v8;
    v21 = *p_activeDeviceStatus;
    *p_activeDeviceStatus = v20;
    v17 = v13;

    [(PBBridgeIDSReachabilityStatusObject *)v17 setReachability:0];
    [array addObject:v17];
    v18 = array;
    v19 = v20;
  }

  else
  {
    *p_activeDeviceStatus = 0;
    v17 = activeDeviceStatus;

    [(PBBridgeIDSReachabilityStatusObject *)v17 setReachability:0];
    v18 = array;
    v19 = v17;
  }

  [v18 addObject:v19];

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (unint64_t)reachabilityForDevice:(id)device
{
  v4 = [device valueForProperty:*MEMORY[0x277D2BD40]];
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    idsDeviceID = [(PBBridgeIDSReachabilityStatusObject *)self->_activeDeviceStatus idsDeviceID];
    v6 = [idsDeviceID isEqual:v4];

    if (v6)
    {
      reachability = [(PBBridgeIDSReachabilityStatusObject *)self->_activeDeviceStatus reachability];
    }

    else
    {
      reachability = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    reachability = 0;
  }

  return reachability;
}

- (void)_processDevices:(id)devices
{
  v22 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  nrDevices = [objc_opt_class() nrDevices];
  v6 = [(PBBridgeIDSReachability *)self getDeviceStatusChangeFromIDSDevices:devicesCopy nrDevices:nrDevices];
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

          [*(*(&v15 + 1) + 8 * v13++) fireReachability:self deviceStatus:v6 devices:{nrDevices, v15}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  v21 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
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
    v20 = observerCopy;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s %@[%p]", buf, 0x20u);
  }

  v8 = objc_opt_new();
  [v8 setObserver:observerCopy];
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

- (void)removeObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
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
        observer = [v11 observer];
        if (observer)
        {
          v13 = observer;
          observer2 = [v11 observer];

          if (observer2 != observerCopy)
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

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:nearbyDevicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  pb_mineTinkerDevices = [serviceCopy pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:pb_mineTinkerDevices];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:connectedDevicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  pb_mineTinkerDevices = [serviceCopy pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:pb_mineTinkerDevices];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:activeAccountsChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  pb_mineTinkerDevices = [serviceCopy pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:pb_mineTinkerDevices];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service linkedDevicesChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:linkedDevicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  pb_mineTinkerDevices = [serviceCopy pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:pb_mineTinkerDevices];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[PBBridgeIDSReachability service:devicesChanged:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  pb_mineTinkerDevices = [serviceCopy pb_mineTinkerDevices];

  [(PBBridgeIDSReachability *)self _processDevices:pb_mineTinkerDevices];
  v8 = *MEMORY[0x277D85DE8];
}

@end