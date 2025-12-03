@interface HMDRemoteEventRouterAssertionController
+ (id)logCategory;
- (HMDRemoteEventRouterAssertionController)initWithQueue:(id)queue notificationCenter:(id)center;
- (id)takeEventRouterAssertion;
- (uint64_t)hasActiveClients;
- (void)_notifyDidChangeHasForegroundClient;
- (void)assertionDidBecomeInactive:(id)inactive;
- (void)configure;
- (void)handleConnectionActiveStateUpdatedNotification:(id)notification;
- (void)registerClient:(id)client;
@end

@implementation HMDRemoteEventRouterAssertionController

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_221989 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_221989, &__block_literal_global_221990);
  }

  v3 = logCategory__hmf_once_v9_221991;

  return v3;
}

- (void)assertionDidBecomeInactive:(id)inactive
{
  v19 = *MEMORY[0x277D85DE8];
  inactiveCopy = inactive;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = inactiveCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Event router active assertion became inactive: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v9, 56, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  [v11 removeObject:inactiveCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (selfCopy)
  {
    queue = selfCopy->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDRemoteEventRouterAssertionController_assertionDidBecomeInactive___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDidChangeHasForegroundClient
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    active = [(HMDRemoteEventRouterAssertionController *)self hasActiveClients];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(self + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) didChangeHasForegroundClient:{active, v9}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)hasActiveClients
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = objc_getProperty(self, v2, 56, 1);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v9 + 1) + 8 * i) isActive])
          {
            v4 = 1;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    os_unfair_lock_unlock(self + 2);
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)takeEventRouterAssertion
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [[HMDRemoteEventRouterAssertion alloc] initWithAssertionController:self];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Did take event router active assertion: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v8, 56, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  [v10 addObject:v3];

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (selfCopy)
  {
    queue = selfCopy->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDRemoteEventRouterAssertionController_takeEventRouterAssertion__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDRemoteEventRouterAssertionController_registerClient___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

uint64_t __58__HMDRemoteEventRouterAssertionController_registerClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  result = [v3 containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 32);
    }

    else
    {
      v6 = 0;
    }

    [v6 addObject:*(a1 + 40)];
    [*(a1 + 40) didChangeHasForegroundClient:-[HMDRemoteEventRouterAssertionController hasActiveClients](*(a1 + 32))];
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v8)
    {
      LOBYTE(v8) = *(v8 + 12);
    }

    return [v7 didChangeFetchAvailableCondition:v8 & 1];
  }

  return result;
}

- (void)configure
{
  v3 = objc_alloc_init(HMDEventRouterTimerProvider);
  if (self)
  {
    objc_storeStrong(&self->_timerProvider, v3);
  }

  v4 = [HMDRemoteEventRouterProcessStateChangeAssertion alloc];
  if (self)
  {
    v20 = self->_queue;
    v5 = self->_timerProvider;
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCFE40]];

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:30.0];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD09C8]];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCFD80]];

    if (isInternalBuild())
    {
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
      [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCFD70]];
    }

    else
    {
      [v6 setObject:0 forKeyedSubscript:*MEMORY[0x277CCFD70]];
    }

    if (isInternalBuild())
    {
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
      [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD0038]];
    }

    else
    {
      [v6 setObject:0 forKeyedSubscript:*MEMORY[0x277CD0038]];
    }

    if (isInternalBuild())
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
      [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD0040]];
    }

    else
    {
      [v6 setObject:0 forKeyedSubscript:*MEMORY[0x277CD0040]];
    }

    if (isInternalBuild())
    {
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
      [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD1220]];
    }

    else
    {
      [v6 setObject:0 forKeyedSubscript:*MEMORY[0x277CD1220]];
    }

    v14 = [v6 copy];

    v15 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v4 initWithQueue:v20 timerProvider:v5 applicationsAndIntervals:v14 dataSource:self];
  }

  else
  {
    v14 = 0;
    v20 = 0;
    v5 = 0;
    v15 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v4 initWithQueue:0 timerProvider:0 applicationsAndIntervals:0 dataSource:0];
  }

  v16 = v15;

  if (self)
  {
    objc_setProperty_atomic(self, v17, v16, 48);

    out_token = 0;
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __68__HMDRemoteEventRouterAssertionController__registerForNotifications__block_invoke;
    handler[3] = &unk_278681818;
    handler[4] = self;
    notify_register_dispatch("kIOPSNotifyPowerSource", &out_token, queue, handler);
    [objc_getProperty(self v19];
  }

  else
  {
  }
}

void __68__HMDRemoteEventRouterAssertionController__registerForNotifications__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = IOPSDrawingUnlimitedPower();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v2;
    dispatch_assert_queue_V2(*(v3 + 16));
    if (v4 != *(v3 + 12))
    {
      v5 = objc_autoreleasePoolPush();
      v6 = v3;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [MEMORY[0x277CCABB0] numberWithBool:v4];
        *buf = 138543618;
        v21 = v8;
        v22 = 2114;
        v23 = v9;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Plugged in state changed to %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      *(v3 + 12) = v4;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v6[4];
      v11 = [v10 countByEnumeratingWithState:&v16 objects:buf count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v16 + 1) + 8 * v14++) didChangeFetchAvailableCondition:{v4, v16}];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:buf count:16];
        }

        while (v12);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionActiveStateUpdatedNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__HMDRemoteEventRouterAssertionController_handleConnectionActiveStateUpdatedNotification___block_invoke;
    v18[3] = &unk_27868A750;
    v19 = v7;
    selfCopy = self;
    dispatch_async(queue, v18);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      name = [notificationCopy name];
      object2 = [notificationCopy object];
      object3 = [notificationCopy object];
      *buf = 138544130;
      v22 = v12;
      v23 = 2112;
      v24 = name;
      v25 = 2112;
      v26 = object2;
      v27 = 2112;
      v28 = objc_opt_class();
      v16 = v28;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_FAULT, "%{public}@%@ notification object was not a HMDXPCClientConnection: %@ (%@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __90__HMDRemoteEventRouterAssertionController_handleConnectionActiveStateUpdatedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sendPolicyParameters];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 isActive];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v9;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification that connection active state is now %{BOOL}d", &v16, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 48, 1);
  }

  v12 = *(a1 + 32);
  v13 = Property;
  v14 = [v12 clientIdentifier];
  [v13 handleProcessWithBundleIdentifier:v14 updatedIsActive:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteEventRouterAssertionController)initWithQueue:(id)queue notificationCenter:(id)center
{
  queueCopy = queue;
  centerCopy = center;
  v16.receiver = self;
  v16.super_class = HMDRemoteEventRouterAssertionController;
  v9 = [(HMDRemoteEventRouterAssertionController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_notificationCenter, center);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    clients = v10->_clients;
    v10->_clients = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    daemonAssertions = v10->_daemonAssertions;
    v10->_daemonAssertions = weakObjectsHashTable2;

    v10->_isPluggedIn = IOPSDrawingUnlimitedPower();
    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

void __54__HMDRemoteEventRouterAssertionController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_221991;
  logCategory__hmf_once_v9_221991 = v1;
}

@end