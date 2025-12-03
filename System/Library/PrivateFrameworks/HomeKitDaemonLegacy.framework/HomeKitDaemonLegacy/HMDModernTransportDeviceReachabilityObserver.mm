@interface HMDModernTransportDeviceReachabilityObserver
+ (id)logCategory;
- (HMDModernTransportDeviceReachabilityObserver)init;
- (HMDModernTransportDeviceReachabilityObserver)initWithTimerProvider:(id)provider dateProvider:(id)dateProvider;
- (id)isDeviceAddressReachable:(id)reachable;
- (void)_clearUnreachablePendingForContext:(id)context;
- (void)_evaluateDebounceTimer;
- (void)_serviceExpiredUnreachableDevices;
- (void)_setUnreachablePendingForContext:(id)context;
- (void)addListener:(id)listener forDeviceAddress:(id)address;
- (void)removeListener:(id)listener forDeviceAddress:(id)address;
- (void)setDebounceTimer:(uint64_t)timer;
- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable;
@end

@implementation HMDModernTransportDeviceReachabilityObserver

- (void)_serviceExpiredUnreachableDevices
{
  v37 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
  firstObject = [(NSMutableArray *)v5 firstObject];

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

  if (firstObject)
  {
    v11 = MEMORY[0x277CBEC28];
    do
    {
      [firstObject unreachableStartTime];
      if (v12 + 20.0 - v10 > 0.01)
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        address = [firstObject address];
        *buf = 138543618;
        v34 = v16;
        v35 = 2112;
        v36 = address;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Unreachable Debounce timer did fire for device address %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if (self)
      {
        v18 = selfCopy->_devicesWithPendingUnreachability;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [(NSMutableArray *)v19 removeObjectAtIndex:0];

      [firstObject setReachability:v11];
      if (self)
      {
        deviceToListenersMap = selfCopy->_deviceToListenersMap;
      }

      else
      {
        deviceToListenersMap = 0;
      }

      v21 = deviceToListenersMap;
      address2 = [firstObject address];
      idsIdentifier = [address2 idsIdentifier];
      v24 = [(NSMapTable *)v21 objectForKey:idsIdentifier];

      if (v24)
      {
        listeners = [firstObject listeners];
        allObjects = [listeners allObjects];
        address3 = [firstObject address];
        [dictionary setObject:allObjects forKey:address3];
      }

      v28 = self ? selfCopy->_devicesWithPendingUnreachability : 0;
      v29 = v28;
      firstObject2 = [(NSMutableArray *)v29 firstObject];

      firstObject = firstObject2;
    }

    while (firstObject2);
  }

  [(HMDModernTransportDeviceReachabilityObserver *)self _evaluateDebounceTimer];

  os_unfair_lock_unlock(&self->_lock);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __81__HMDModernTransportDeviceReachabilityObserver__serviceExpiredUnreachableDevices__block_invoke;
  v32[3] = &unk_27972FF58;
  v32[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v32];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setDebounceTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 48), a2);
  }
}

- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v28 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  identifierCopy = identifier;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = @"unreachable";
    *v25 = 138543874;
    *&v25[4] = v13;
    *&v25[12] = 2112;
    if (reachableCopy)
    {
      v14 = @"reachable";
    }

    *&v25[14] = v14;
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Device with idsIdentifier reporting %@: %@ ", v25, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    deviceToListenersMap = selfCopy->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v16 = deviceToListenersMap;
  v17 = [(NSMapTable *)v16 objectForKey:identifierCopy];

  if (!v17)
  {
    goto LABEL_13;
  }

  if (!reachableCopy)
  {
    [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _setUnreachablePendingForContext:v17];
LABEL_13:

    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_14;
  }

  [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _clearUnreachablePendingForContext:v17];
  reachability = [v17 reachability];
  if (reachability)
  {
    reachability2 = [v17 reachability];
    bOOLValue = [reachability2 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_13;
    }
  }

  [v17 setReachability:{MEMORY[0x277CBEC38], *v25}];
  address = [v17 address];
  listeners = [v17 listeners];
  allObjects = [listeners allObjects];

  os_unfair_lock_unlock(&selfCopy->_lock);
  [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _notifyListeners:allObjects address:address isReachable:1];

LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_clearUnreachablePendingForContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  [contextCopy setUnreachableStartTime:0.0];
  if (self)
  {
    devicesWithPendingUnreachability = self->_devicesWithPendingUnreachability;
  }

  else
  {
    devicesWithPendingUnreachability = 0;
  }

  [(NSMutableArray *)devicesWithPendingUnreachability removeObject:contextCopy];
}

- (void)_setUnreachablePendingForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([(NSMutableArray *)self->_devicesWithPendingUnreachability containsObject:contextCopy]& 1) == 0)
  {
    reachability = [contextCopy reachability];
    if (!reachability || (v6 = reachability, [contextCopy reachability], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, v8))
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        address = [contextCopy address];
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = address;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Device address %@ reported unreachable.  Debouncing reachability", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [(HMFDateProvider *)selfCopy->_dateProvider timeIntervalSince1970];
      [contextCopy setUnreachableStartTime:?];
      [(NSMutableArray *)self->_devicesWithPendingUnreachability addObject:contextCopy];
      [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _evaluateDebounceTimer];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateDebounceTimer
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self || !self->_debounceTimer)
  {
    firstObject = [(NSMutableArray *)self->_devicesWithPendingUnreachability firstObject];
    if (firstObject)
    {
      v9 = firstObject;
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
      firstObject = v9;
    }
  }
}

- (id)isDeviceAddressReachable:(id)reachable
{
  reachableCopy = reachable;
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
  idsIdentifier = [reachableCopy idsIdentifier];
  v8 = [(NSMapTable *)v6 objectForKey:idsIdentifier];

  if (v8)
  {
    reachability = [v8 reachability];
  }

  else
  {
    reachability = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return reachability;
}

- (void)removeListener:(id)listener forDeviceAddress:(id)address
{
  v29 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  addressCopy = address;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v23 = 138543874;
    v24 = v11;
    v25 = 2048;
    v26 = listenerCopy;
    v27 = 2112;
    v28 = addressCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing listener %p for address: %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    deviceToListenersMap = selfCopy->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v13 = deviceToListenersMap;
  idsIdentifier = [addressCopy idsIdentifier];
  v15 = [(NSMapTable *)v13 objectForKey:idsIdentifier];

  if (v15)
  {
    listeners = [v15 listeners];
    [listeners removeObject:listenerCopy];

    listeners2 = [v15 listeners];
    v18 = [listeners2 count] == 0;

    if (v18)
    {
      [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _clearUnreachablePendingForContext:v15];
      if (selfCopy)
      {
        v19 = selfCopy->_deviceToListenersMap;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      idsIdentifier2 = [addressCopy idsIdentifier];
      [(NSMapTable *)v20 removeObjectForKey:idsIdentifier2];
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)listener forDeviceAddress:(id)address
{
  v27 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  addressCopy = address;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v11;
    v23 = 2048;
    v24 = listenerCopy;
    v25 = 2112;
    v26 = addressCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding listener %p for address: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    deviceToListenersMap = selfCopy->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v13 = deviceToListenersMap;
  idsIdentifier = [addressCopy idsIdentifier];
  v15 = [(NSMapTable *)v13 objectForKey:idsIdentifier];

  if (!v15)
  {
    v15 = [[HMDModernTransportDeviceReachabilityObserverListenerContext alloc] initWithAddress:addressCopy];
    if (selfCopy)
    {
      v16 = selfCopy->_deviceToListenersMap;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    idsIdentifier2 = [addressCopy idsIdentifier];
    [(NSMapTable *)v17 setObject:v15 forKey:idsIdentifier2];
  }

  listeners = [(HMDModernTransportDeviceReachabilityObserverListenerContext *)v15 listeners];
  [listeners addObject:listenerCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (HMDModernTransportDeviceReachabilityObserver)initWithTimerProvider:(id)provider dateProvider:(id)dateProvider
{
  providerCopy = provider;
  dateProviderCopy = dateProvider;
  v15.receiver = self;
  v15.super_class = HMDModernTransportDeviceReachabilityObserver;
  v9 = [(HMDModernTransportDeviceReachabilityObserver *)&v15 init];
  if (v9)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceToListenersMap = v9->_deviceToListenersMap;
    v9->_deviceToListenersMap = strongToStrongObjectsMapTable;

    array = [MEMORY[0x277CBEB18] array];
    devicesWithPendingUnreachability = v9->_devicesWithPendingUnreachability;
    v9->_devicesWithPendingUnreachability = array;

    objc_storeStrong(&v9->_timerProvider, provider);
    objc_storeStrong(&v9->_dateProvider, dateProvider);
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
  if (logCategory__hmf_once_t12_158018 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_158018, &__block_literal_global_158019);
  }

  v3 = logCategory__hmf_once_v13_158020;

  return v3;
}

uint64_t __59__HMDModernTransportDeviceReachabilityObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_158020;
  logCategory__hmf_once_v13_158020 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end