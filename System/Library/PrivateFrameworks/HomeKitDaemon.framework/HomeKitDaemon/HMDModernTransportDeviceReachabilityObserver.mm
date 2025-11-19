@interface HMDModernTransportDeviceReachabilityObserver
+ (id)logCategory;
- (HMDModernTransportDeviceReachabilityObserver)init;
- (HMDModernTransportDeviceReachabilityObserver)initWithTimerProvider:(id)a3 dateProvider:(id)a4;
- (id)isDeviceAddressReachable:(id)a3;
- (void)_clearUnreachablePendingForContext:(id)a3;
- (void)_evaluateDebounceTimer;
- (void)_serviceExpiredUnreachableDevices;
- (void)_setUnreachablePendingForContext:(id)a3;
- (void)addListener:(id)a3 forDeviceAddress:(id)a4;
- (void)removeListener:(id)a3 forDeviceAddress:(id)a4;
- (void)setDebounceTimer:(uint64_t)a1;
- (void)transport:(id)a3 idsIdentifier:(id)a4 didAppearReachable:(BOOL)a5;
@end

@implementation HMDModernTransportDeviceReachabilityObserver

- (void)_serviceExpiredUnreachableDevices
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock_with_options();
  [(HMDModernTransportDeviceReachabilityObserver *)self setDebounceTimer:?];
  if (self)
  {
    devicesWithPendingUnreachability = self->_devicesWithPendingUnreachability;
  }

  else
  {
    devicesWithPendingUnreachability = 0;
  }

  v5 = devicesWithPendingUnreachability;
  v6 = [(NSMutableArray *)v5 firstObject];

  if (self)
  {
    dateProvider = self->_dateProvider;
  }

  else
  {
    dateProvider = 0;
  }

  v8 = dateProvider;
  [(HMFDateProvider *)v8 timeIntervalSince1970];
  v10 = v9;

  if (v6)
  {
    v11 = MEMORY[0x277CBEC28];
    do
    {
      [v6 unreachableStartTime];
      if (v12 + 20.0 - v10 > 0.01)
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v6 address];
        *buf = 138543618;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Unreachable Debounce timer did fire for device address %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if (self)
      {
        v18 = v14->_devicesWithPendingUnreachability;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [(NSMutableArray *)v19 removeObjectAtIndex:0];

      [v6 setReachability:v11];
      if (self)
      {
        deviceToListenersMap = v14->_deviceToListenersMap;
      }

      else
      {
        deviceToListenersMap = 0;
      }

      v21 = deviceToListenersMap;
      v22 = [v6 address];
      v23 = [v22 idsIdentifier];
      v24 = [(NSMapTable *)v21 objectForKey:v23];

      if (v24)
      {
        v25 = [v6 listeners];
        v26 = [v25 allObjects];
        v27 = [v6 address];
        [v3 setObject:v26 forKey:v27];
      }

      v28 = self ? v14->_devicesWithPendingUnreachability : 0;
      v29 = v28;
      v30 = [(NSMutableArray *)v29 firstObject];

      v6 = v30;
    }

    while (v30);
  }

  [(HMDModernTransportDeviceReachabilityObserver *)self _evaluateDebounceTimer];

  os_unfair_lock_unlock(&self->_lock);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __81__HMDModernTransportDeviceReachabilityObserver__serviceExpiredUnreachableDevices__block_invoke;
  v32[3] = &unk_27866EE28;
  v32[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v32];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setDebounceTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)transport:(id)a3 idsIdentifier:(id)a4 didAppearReachable:(BOOL)a5
{
  v5 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = @"unreachable";
    *v25 = 138543874;
    *&v25[4] = v13;
    *&v25[12] = 2112;
    if (v5)
    {
      v14 = @"reachable";
    }

    *&v25[14] = v14;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Device with idsIdentifier reporting %@: %@ ", v25, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  os_unfair_lock_lock_with_options();
  if (v11)
  {
    deviceToListenersMap = v11->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v16 = deviceToListenersMap;
  v17 = [(NSMapTable *)v16 objectForKey:v9];

  if (!v17)
  {
    goto LABEL_13;
  }

  if (!v5)
  {
    [(HMDModernTransportDeviceReachabilityObserver *)v11 _setUnreachablePendingForContext:v17];
LABEL_13:

    os_unfair_lock_unlock(&v11->_lock);
    goto LABEL_14;
  }

  [(HMDModernTransportDeviceReachabilityObserver *)v11 _clearUnreachablePendingForContext:v17];
  v18 = [v17 reachability];
  if (v18)
  {
    v19 = [v17 reachability];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      goto LABEL_13;
    }
  }

  [v17 setReachability:{MEMORY[0x277CBEC38], *v25}];
  v21 = [v17 address];
  v22 = [v17 listeners];
  v23 = [v22 allObjects];

  os_unfair_lock_unlock(&v11->_lock);
  [(HMDModernTransportDeviceReachabilityObserver *)v11 _notifyListeners:v23 address:v21 isReachable:1];

LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_clearUnreachablePendingForContext:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  [v5 setUnreachableStartTime:0.0];
  if (self)
  {
    devicesWithPendingUnreachability = self->_devicesWithPendingUnreachability;
  }

  else
  {
    devicesWithPendingUnreachability = 0;
  }

  [(NSMutableArray *)devicesWithPendingUnreachability removeObject:v5];
}

- (void)_setUnreachablePendingForContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([(NSMutableArray *)self->_devicesWithPendingUnreachability containsObject:v4]& 1) == 0)
  {
    v5 = [v4 reachability];
    if (!v5 || (v6 = v5, [v4 reachability], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, v8))
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v4 address];
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Device address %@ reported unreachable.  Debouncing reachability", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [(HMFDateProvider *)v10->_dateProvider timeIntervalSince1970];
      [v4 setUnreachableStartTime:?];
      [(NSMutableArray *)self->_devicesWithPendingUnreachability addObject:v4];
      [(HMDModernTransportDeviceReachabilityObserver *)v10 _evaluateDebounceTimer];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateDebounceTimer
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self || !self->_debounceTimer)
  {
    v3 = [(NSMutableArray *)self->_devicesWithPendingUnreachability firstObject];
    if (v3)
    {
      v9 = v3;
      [(HMFDateProvider *)self->_dateProvider timeIntervalSince1970];
      v5 = v4;
      [v9 unreachableStartTime];
      v7 = v6 + 20.0 - v5;
      if (v7 <= 0.01)
      {
        v7 = 0.01;
      }

      v8 = [(HMFTimerProvider *)self->_timerProvider timerWithTimeInterval:0 options:v7];
      objc_storeStrong(&self->_debounceTimer, v8);

      [(HMFTimer *)self->_debounceTimer setDelegate:self];
      [(HMFTimer *)self->_debounceTimer resume];
      v3 = v9;
    }
  }
}

- (id)isDeviceAddressReachable:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    deviceToListenersMap = self->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v6 = deviceToListenersMap;
  v7 = [v4 idsIdentifier];
  v8 = [(NSMapTable *)v6 objectForKey:v7];

  if (v8)
  {
    v9 = [v8 reachability];
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)removeListener:(id)a3 forDeviceAddress:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v23 = 138543874;
    v24 = v11;
    v25 = 2048;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing listener %p for address: %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  if (v9)
  {
    deviceToListenersMap = v9->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v13 = deviceToListenersMap;
  v14 = [v7 idsIdentifier];
  v15 = [(NSMapTable *)v13 objectForKey:v14];

  if (v15)
  {
    v16 = [v15 listeners];
    [v16 removeObject:v6];

    v17 = [v15 listeners];
    v18 = [v17 count] == 0;

    if (v18)
    {
      [(HMDModernTransportDeviceReachabilityObserver *)v9 _clearUnreachablePendingForContext:v15];
      if (v9)
      {
        v19 = v9->_deviceToListenersMap;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [v7 idsIdentifier];
      [(NSMapTable *)v20 removeObjectForKey:v21];
    }
  }

  os_unfair_lock_unlock(&v9->_lock);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)a3 forDeviceAddress:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v11;
    v23 = 2048;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding listener %p for address: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  if (v9)
  {
    deviceToListenersMap = v9->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v13 = deviceToListenersMap;
  v14 = [v7 idsIdentifier];
  v15 = [(NSMapTable *)v13 objectForKey:v14];

  if (!v15)
  {
    v15 = [[HMDModernTransportDeviceReachabilityObserverListenerContext alloc] initWithAddress:v7];
    if (v9)
    {
      v16 = v9->_deviceToListenersMap;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v7 idsIdentifier];
    [(NSMapTable *)v17 setObject:v15 forKey:v18];
  }

  v19 = [(HMDModernTransportDeviceReachabilityObserverListenerContext *)v15 listeners];
  [v19 addObject:v6];

  os_unfair_lock_unlock(&v9->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (HMDModernTransportDeviceReachabilityObserver)initWithTimerProvider:(id)a3 dateProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HMDModernTransportDeviceReachabilityObserver;
  v9 = [(HMDModernTransportDeviceReachabilityObserver *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceToListenersMap = v9->_deviceToListenersMap;
    v9->_deviceToListenersMap = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    devicesWithPendingUnreachability = v9->_devicesWithPendingUnreachability;
    v9->_devicesWithPendingUnreachability = v12;

    objc_storeStrong(&v9->_timerProvider, a3);
    objc_storeStrong(&v9->_dateProvider, a4);
  }

  return v9;
}

- (HMDModernTransportDeviceReachabilityObserver)init
{
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277D0F798]);
  v5 = [(HMDModernTransportDeviceReachabilityObserver *)self initWithTimerProvider:v3 dateProvider:v4];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_8085 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_8085, &__block_literal_global_8086);
  }

  v3 = logCategory__hmf_once_v13_8087;

  return v3;
}

void __59__HMDModernTransportDeviceReachabilityObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_8087;
  logCategory__hmf_once_v13_8087 = v1;
}

@end