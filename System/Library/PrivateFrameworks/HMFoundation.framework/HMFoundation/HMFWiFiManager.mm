@interface HMFWiFiManager
+ (HMFWiFiManager)sharedManager;
+ (id)logCategory;
- (BOOL)currentNetworkRequiresPassword;
- (BOOL)isActive;
- (BOOL)isCaptive;
- (HMFWiFiManager)init;
- (HMFWiFiManager)initWithWorkQueue:(id)queue dataSource:(id)source;
- (HMFWifiNetworkAssociation)currentNetworkAssociation;
- (NSNumber)currentNetworkRSSI;
- (NSString)currentNetworkSSID;
- (id)beginActiveAssertionWithOptions:(unint64_t)options reason:(id)reason;
- (void)__updateActiveAssertions;
- (void)currentNetworkDidChangeForDataSource:(id)source;
- (void)dataSource:(id)source didChangeLinkAvailability:(BOOL)availability;
- (void)dataSource:(id)source didChangeWoWState:(BOOL)state;
- (void)endActiveAssertion:(id)assertion;
- (void)releaseWoWAssertion;
- (void)takeWoWAssertion;
@end

@implementation HMFWiFiManager

- (BOOL)isCaptive
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v4 = dataSource;
  isCaptive = [(HMFWiFiManagerDataSource *)v4 isCaptive];

  os_unfair_lock_unlock(&self->_lock);
  return isCaptive;
}

- (void)__updateActiveAssertions
{
  v36 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v2 = *(self + 48);
    v3 = 0;
    v4 = 0;
    v5 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v5)
    {
      v6 = *v28;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          if ([v8 isValid])
          {
            v3 |= [v8 options];
            v4 = 1;
          }
        }

        v5 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v5);
    }

    v9 = *(self + 32);
    isAssertionActive = [v9 isAssertionActive];

    if ((v4 ^ isAssertionActive))
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      if (v4)
      {
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier(selfCopy);
          v15 = HMFWiFiAssertionOptionsDescription(v3);
          *buf = 138543618;
          v32 = v14;
          v33 = 2112;
          v34 = v15;
          _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@Activating with options: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        v16 = selfCopy[4];
        [v16 activateWithOptions:v3];
      }

      else
      {
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier(selfCopy);
          *buf = 138543362;
          v32 = v25;
          _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_INFO, "%{public}@Deactivating", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        v16 = selfCopy[4];
        [v16 deactivate];
      }
    }

    else
    {
      v17 = *(self + 32);
      v18 = v3 == [v17 assertionOptions];

      if (v18)
      {
LABEL_24:
        os_unfair_lock_unlock((self + 8));
        goto LABEL_25;
      }

      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier(selfCopy2);
        v23 = HMFWiFiAssertionOptionsDescription(v3);
        *buf = 138543618;
        v32 = v22;
        v33 = 2112;
        v34 = v23;
        _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating activation with options: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v16 = selfCopy2[4];
      [v16 activateWithOptions:v3];
    }

    goto LABEL_24;
  }

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];
}

+ (HMFWiFiManager)sharedManager
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_9);
  }

  v3 = qword_280AFC218;

  return v3;
}

uint64_t __31__HMFWiFiManager_sharedManager__block_invoke()
{
  qword_280AFC218 = objc_alloc_init(HMFWiFiManager);

  return MEMORY[0x2821F96F8]();
}

- (HMFWiFiManager)init
{
  v3 = HMFDispatchQueueName(self, 0);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v5 = dispatch_queue_create(v3, v4);

  v6 = [[HMFWiFiManagerDataSource alloc] initWithWorkQueue:v5];
  v7 = [(HMFWiFiManager *)self initWithWorkQueue:v5 dataSource:v6];

  return v7;
}

- (HMFWiFiManager)initWithWorkQueue:(id)queue dataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = HMFWiFiManager;
  v9 = [(HMFWiFiManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    activeAssertions = v10->_activeAssertions;
    v10->_activeAssertions = weakObjectsHashTable;

    objc_storeStrong(&v10->_dataSource, source);
    [(HMFWiFiManagerDataSource *)v10->_dataSource setDelegate:v10];
    dataSource = v10->_dataSource;
    mACAddressString = [objc_opt_class() MACAddressString];
    v15 = [[HMFMACAddress alloc] initWithMACAddressString:mACAddressString];
    MACAddress = v10->_MACAddress;
    v10->_MACAddress = v15;

    workQueue = v10->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HMFWiFiManager_initWithWorkQueue_dataSource___block_invoke;
    block[3] = &unk_2786E6C80;
    v20 = v10;
    dispatch_async(workQueue, block);
  }

  return v10;
}

uint64_t __47__HMFWiFiManager_initWithWorkQueue_dataSource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[4];
  }

  else
  {
    v2 = 0;
  }

  return [v1 currentNetworkDidChangeForDataSource:v2];
}

- (NSString)currentNetworkSSID
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v4 = dataSource;
  currentNetworkAssociation = [(HMFWiFiManagerDataSource *)v4 currentNetworkAssociation];
  sSID = [currentNetworkAssociation SSID];

  os_unfair_lock_unlock(&self->_lock);

  return sSID;
}

- (HMFWifiNetworkAssociation)currentNetworkAssociation
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v4 = dataSource;
  currentNetworkAssociation = [(HMFWiFiManagerDataSource *)v4 currentNetworkAssociation];

  os_unfair_lock_unlock(&self->_lock);

  return currentNetworkAssociation;
}

- (BOOL)currentNetworkRequiresPassword
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v4 = dataSource;
  currentNetworkAssociation = [(HMFWiFiManagerDataSource *)v4 currentNetworkAssociation];
  requiresPassword = [currentNetworkAssociation requiresPassword];

  os_unfair_lock_unlock(&self->_lock);
  return requiresPassword;
}

- (NSNumber)currentNetworkRSSI
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v4 = dataSource;
  currentNetworkRSSI = [(HMFWiFiManagerDataSource *)v4 currentNetworkRSSI];

  os_unfair_lock_unlock(&self->_lock);

  return currentNetworkRSSI;
}

- (BOOL)isActive
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v4 = dataSource;
  isAssertionActive = [(HMFWiFiManagerDataSource *)v4 isAssertionActive];

  os_unfair_lock_unlock(&self->_lock);
  return isAssertionActive;
}

- (id)beginActiveAssertionWithOptions:(unint64_t)options reason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier(selfCopy);
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Taking active assertion with reason: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [[__HMFWiFiAssertion alloc] initWithOptions:options manager:selfCopy reason:reasonCopy];
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)selfCopy->_activeAssertions addObject:v11];
  os_unfair_lock_unlock(&selfCopy->_lock);
  [(__HMFWiFiAssertion *)v11 acquire:0];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)endActiveAssertion:(id)assertion
{
  assertionCopy = assertion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = assertionCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    os_unfair_lock_lock_with_options();
    [(NSHashTable *)self->_activeAssertions removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    [v5 invalidate];
  }
}

- (void)takeWoWAssertion
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMFWiFiManager_takeWoWAssertion__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __34__HMFWiFiManager_takeWoWAssertion__block_invoke(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (v1 && (*(v1 + 12) & 1) == 0 && *(v1 + 32))
  {
    v2 = result;
    v3 = objc_autoreleasePoolPush();
    v4 = *(v2 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier(v4);
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Taking WoW assertion", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = *(v2 + 32);
    if (v7 && (*(v7 + 12) = 1, (v8 = *(v2 + 32)) != 0))
    {
      v9 = *(v8 + 32);
    }

    else
    {
      v9 = 0;
    }

    result = [v9 setWoWAsserted:1];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)releaseWoWAssertion
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMFWiFiManager_releaseWoWAssertion__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __37__HMFWiFiManager_releaseWoWAssertion__block_invoke(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (v1 && *(v1 + 12) == 1 && *(v1 + 32))
  {
    v2 = result;
    v3 = objc_autoreleasePoolPush();
    v4 = *(v2 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier(v4);
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Releasing WoW assertion", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = *(v2 + 32);
    if (v7 && (*(v7 + 12) = 0, (v8 = *(v2 + 32)) != 0))
    {
      v9 = *(v8 + 32);
    }

    else
    {
      v9 = 0;
    }

    result = [v9 setWoWAsserted:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)logCategory
{
  if (qword_280AFC220 != -1)
  {
    dispatch_once(&qword_280AFC220, &__block_literal_global_79);
  }

  v3 = qword_280AFC228;

  return v3;
}

uint64_t __29__HMFWiFiManager_logCategory__block_invoke()
{
  qword_280AFC228 = HMFCreateOSLogHandle(@"Networking.WiFi.Manager", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

- (void)dataSource:(id)source didChangeWoWState:(BOOL)state
{
  selfCopy = self;
  if (self)
  {
    self = self->_workQueue;
  }

  dispatch_assert_queue_V2(&self->super.super);
  if (selfCopy && !state && selfCopy->_shouldAssertWoW)
  {
    dataSource = selfCopy->_dataSource;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__HMFWiFiManager_dataSource_didChangeWoWState___block_invoke;
    v7[3] = &unk_2786E6C80;
    v7[4] = selfCopy;
    [(HMFWiFiManagerDataSource *)dataSource performBlockAfterWoWReassertionDelay:v7];
  }
}

void __47__HMFWiFiManager_dataSource_didChangeWoWState___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(v3);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Re-Enabling WoW", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (v6 && *(v6 + 12) == 1)
  {
    [*(v6 + 32) setWoWAsserted:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dataSource:(id)source didChangeLinkAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  v19 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier(selfCopy);
    v12 = v11;
    v13 = @"Down";
    if (availabilityCopy)
    {
      v13 = @"Up";
    }

    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@WiFi link is %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (self && !availabilityCopy)
  {
    selfCopy->_shouldAssertWoW = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)currentNetworkDidChangeForDataSource:(id)source
{
  v25 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    dataSource = self->_dataSource;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    dataSource = 0;
  }

  v6 = dataSource;
  currentNetworkAssociation = [(HMFWiFiManagerDataSource *)v6 currentNetworkAssociation];
  sSID = [currentNetworkAssociation SSID];

  if (self)
  {
    savedNetworkSSID = self->_savedNetworkSSID;
  }

  else
  {
    savedNetworkSSID = 0;
  }

  if ((HMFEqualObjects(savedNetworkSSID, sSID) & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier(selfCopy);
      v14 = v13;
      if (self)
      {
        v15 = selfCopy->_savedNetworkSSID;
      }

      else
      {
        v15 = 0;
      }

      v19 = 138543874;
      v20 = v13;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = sSID;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Current network SSID updated from %@ to %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    if (self)
    {
      objc_setProperty_nonatomic_copy(selfCopy, v16, sSID, 40);
    }

    v17 = +[HMFNotificationCenter defaultCenter];
    [v17 postNotificationName:@"HMFWiFiManagerCurrentNetworkDidChangeNotification" object:selfCopy];
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end