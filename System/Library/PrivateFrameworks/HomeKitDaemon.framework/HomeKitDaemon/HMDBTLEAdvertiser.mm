@interface HMDBTLEAdvertiser
+ (id)sharedAdvertiser;
- (BOOL)isAdvertisingForAccessory:(id)accessory;
- (BOOL)isReady;
- (HMDBTLEAdvertiser)init;
- (void)_advertisementTimeout;
- (void)_cancelOn:(id)on;
- (void)_clearAdvertiser;
- (void)_completePendingPowerOnRequest:(id)request;
- (void)_flushQueue:(id)queue;
- (void)_flushQueues;
- (void)_startAdvertising;
- (void)_stopAdvertisement:(id)advertisement;
- (void)cancelOn:(id)on;
- (void)didUpdateBTLEState:(int64_t)state;
- (void)powerOn:(id)on;
- (void)stopAdvertisement:(id)advertisement;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDBTLEAdvertiser

- (BOOL)isReady
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  workQueue = [(HMDBTLEAdvertiser *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__HMDBTLEAdvertiser_isReady__block_invoke;
  v5[3] = &unk_27868A688;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __28__HMDBTLEAdvertiser_isReady__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) centralManager];
  v3 = [v2 state];

  if (v3 > 5 || ((1 << v3) & 0x29) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)isAdvertisingForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    workQueue = [(HMDBTLEAdvertiser *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HMDBTLEAdvertiser_isAdvertisingForAccessory___block_invoke;
    block[3] = &unk_27868A4D8;
    block[4] = self;
    v9 = accessoryCopy;
    v10 = &v11;
    dispatch_sync(workQueue, block);

    v6 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __47__HMDBTLEAdvertiser_isAdvertisingForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) powerOnQueues];
  v3 = [v2 whichQueueForAccessory:*(a1 + 40)];

  if (v3 || (v4 = *(a1 + 40), [*(a1 + 32) accessory], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 == v5))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)timerDidFire:(id)fire
{
  v22 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__64390;
  v14[4] = __Block_byref_object_dispose__64391;
  fireCopy = fire;
  v15 = fireCopy;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    accessory = [(HMDBTLEAdvertiser *)selfCopy accessory];
    identifier = [accessory identifier];
    *buf = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = fireCopy;
    v20 = 2112;
    v21 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Wireless Timer: %@ did fire for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDBTLEAdvertiser *)selfCopy workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__HMDBTLEAdvertiser_timerDidFire___block_invoke;
  v13[3] = &unk_27868A688;
  v13[4] = selfCopy;
  v13[5] = v14;
  dispatch_async(workQueue, v13);

  _Block_object_dispose(v14, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __34__HMDBTLEAdvertiser_timerDidFire___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(a1 + 32) advertisementTimer];

  if (v2 == v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 identifier];
      v19 = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Wireless BTLE Advertisement timeout for %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) _advertisementTimeout];
  }

  else
  {
    v4 = [*(a1 + 32) powerOnQueues];
    v5 = [v4 getAccessoryForContext:*(*(*(a1 + 40) + 8) + 40) fromQueue:@"ReachabilityQueue"];

    if (v5)
    {
      [*(*(*(a1 + 40) + 8) + 40) suspend];
      [*(a1 + 32) _completePendingPowerOnRequest:v5];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 32) accessory];
        v17 = [v16 identifier];
        v19 = 138543618;
        v20 = v15;
        v21 = 2112;
        v22 = v17;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected BTLE Advertisement timer for %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_advertisementTimeout
{
  v23 = *MEMORY[0x277D85DE8];
  leAdvertiser = [(HMDBTLEAdvertiser *)self leAdvertiser];

  if (leAdvertiser)
  {
    advertisementTimer = [(HMDBTLEAdvertiser *)self advertisementTimer];
    [advertisementTimer cancel];

    [(HMDBTLEAdvertiser *)self setAdvertisementTimer:0];
    accessory = [(HMDBTLEAdvertiser *)self accessory];
    [(HMDBTLEAdvertiser *)self setAccessory:0];
    [(HMDBTLEAdvertiser *)self _clearAdvertiser];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      identifier = [accessory identifier];
      v19 = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = identifier;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Wireless - Starting reachable timer for accessory: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if ([accessory isReachable])
    {
      [(HMDBTLEAdvertiser *)selfCopy _completePendingPowerOnRequest:accessory];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D0F920]);
      [(HMDBTLEAdvertiser *)selfCopy reachabilityTimeInterval];
      v16 = [v15 initWithTimeInterval:1 options:?];
      [v16 setDelegate:selfCopy];
      [v16 resume];
      powerOnQueues = [(HMDBTLEAdvertiser *)selfCopy powerOnQueues];
      [powerOnQueues addAccessory:accessory toQueue:@"ReachabilityQueue" context:v16];
    }

    [(HMDBTLEAdvertiser *)selfCopy _startAdvertising];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Wireless LE Timeout - no gleAdvertiser", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    accessory = [(HMDBTLEAdvertiser *)selfCopy2 accessory];
    [(HMDBTLEAdvertiser *)selfCopy2 _completePendingPowerOnRequest:accessory];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)powerOn:(id)on
{
  onCopy = on;
  workQueue = [(HMDBTLEAdvertiser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HMDBTLEAdvertiser_powerOn___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = onCopy;
  v6 = onCopy;
  dispatch_async(workQueue, v7);
}

void __29__HMDBTLEAdvertiser_powerOn___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) centralManager];
  v3 = [v2 state];

  if (v3 > 5 || ((1 << v3) & 0x29) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) identifier];
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Wireless - Ignoring power on request -- Bluetooth not in a state to turn on accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:54 userInfo:0];
    [*(a1 + 40) powerOnComplete:v14];

    goto LABEL_12;
  }

  v5 = [*(a1 + 32) accessory];
  v6 = *(a1 + 40);

  if (v5 == v6)
  {
LABEL_12:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = [*(a1 + 32) powerOnQueues];
  [v7 addAccessory:*(a1 + 40) toQueue:@"AdvertisementQueue" context:0];

  [*(a1 + 32) _startAdvertising];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotificationName:@"kHMDAccessoryWakeNotificationStarted" object:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startAdvertising
{
  v31 = *MEMORY[0x277D85DE8];
  leAdvertiser = [(HMDBTLEAdvertiser *)self leAdvertiser];

  if (!leAdvertiser)
  {
    powerOnQueues = [(HMDBTLEAdvertiser *)self powerOnQueues];
    v5 = [powerOnQueues countForQueue:@"AdvertisementQueue"];

    if (v5)
    {
      powerOnQueues2 = [(HMDBTLEAdvertiser *)self powerOnQueues];
      v7 = [powerOnQueues2 popAccessoryFromQueue:@"AdvertisementQueue"];
      [(HMDBTLEAdvertiser *)self setAccessory:v7];

      v8 = objc_alloc_init(MEMORY[0x277D02830]);
      [(HMDBTLEAdvertiser *)self setLeAdvertiser:v8];

      v9 = objc_alloc(MEMORY[0x277D0F808]);
      accessory = [(HMDBTLEAdvertiser *)self accessory];
      pairingUsername = [accessory pairingUsername];
      v12 = [v9 initWithAddressString:pairingUsername length:6];

      data = [v12 data];
      leAdvertiser2 = [(HMDBTLEAdvertiser *)self leAdvertiser];
      [leAdvertiser2 setLgDeviceID:data];

      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        accessory2 = [(HMDBTLEAdvertiser *)selfCopy accessory];
        identifier = [accessory2 identifier];
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = identifier;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Wireless - Starting BT LE Advertisement for %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      leAdvertiser3 = [(HMDBTLEAdvertiser *)selfCopy leAdvertiser];
      [leAdvertiser3 activate];

      v22 = objc_alloc(MEMORY[0x277D0F920]);
      [(HMDBTLEAdvertiser *)selfCopy advertisementTimeInterval];
      v23 = [v22 initWithTimeInterval:1 options:?];
      [(HMDBTLEAdvertiser *)selfCopy setAdvertisementTimer:v23];

      advertisementTimer = [(HMDBTLEAdvertiser *)selfCopy advertisementTimer];
      [advertisementTimer setDelegate:selfCopy];

      advertisementTimer2 = [(HMDBTLEAdvertiser *)selfCopy advertisementTimer];
      [advertisementTimer2 resume];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cancelOn:(id)on
{
  onCopy = on;
  workQueue = [(HMDBTLEAdvertiser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HMDBTLEAdvertiser_cancelOn___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = onCopy;
  v6 = onCopy;
  dispatch_async(workQueue, v7);
}

- (void)_cancelOn:(id)on
{
  v21 = *MEMORY[0x277D85DE8];
  onCopy = on;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [onCopy identifier];
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Wireless - Cancelling advertisement timer for %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (onCopy)
  {
    if (([onCopy custom1WoBLE] & 1) != 0 && (-[HMDBTLEAdvertiser accessory](selfCopy, "accessory"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, -[HMDBTLEAdvertiser accessory](selfCopy, "accessory"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12 == onCopy))
    {
      [(HMDBTLEAdvertiser *)selfCopy setAccessory:0];
      advertisementTimer = [(HMDBTLEAdvertiser *)selfCopy advertisementTimer];
      [advertisementTimer cancel];

      [(HMDBTLEAdvertiser *)selfCopy setAdvertisementTimer:0];
      powerOnQueues = [(HMDBTLEAdvertiser *)selfCopy powerOnQueues];
      v16 = [powerOnQueues getContextForAccessory:onCopy];

      [v16 suspend];
      [(HMDBTLEAdvertiser *)selfCopy _clearAdvertiser];
      [(HMDBTLEAdvertiser *)selfCopy _completePendingPowerOnRequest:onCopy];
      [(HMDBTLEAdvertiser *)selfCopy _startAdvertising];
    }

    else
    {
      [(HMDBTLEAdvertiser *)selfCopy _completePendingPowerOnRequest:onCopy];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_completePendingPowerOnRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isReachable])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:4 userInfo:0];
  }

  if (requestCopy)
  {
    powerOnQueues = [(HMDBTLEAdvertiser *)self powerOnQueues];
    [powerOnQueues removeAccessory:requestCopy];

    [requestCopy powerOnComplete:v4];
  }
}

- (void)stopAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  workQueue = [(HMDBTLEAdvertiser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDBTLEAdvertiser_stopAdvertisement___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = advertisementCopy;
  v6 = advertisementCopy;
  dispatch_async(workQueue, v7);
}

- (void)_stopAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  accessory = [(HMDBTLEAdvertiser *)self accessory];

  if (advertisementCopy)
  {
    if (accessory == advertisementCopy)
    {
      leAdvertiser = [(HMDBTLEAdvertiser *)self leAdvertiser];

      if (leAdvertiser)
      {

        [(HMDBTLEAdvertiser *)self _clearAdvertiser];
      }
    }
  }
}

- (void)_clearAdvertiser
{
  leAdvertiser = [(HMDBTLEAdvertiser *)self leAdvertiser];

  if (leAdvertiser)
  {
    leAdvertiser2 = [(HMDBTLEAdvertiser *)self leAdvertiser];
    [leAdvertiser2 invalidate];

    [(HMDBTLEAdvertiser *)self setLeAdvertiser:0];
  }
}

- (void)didUpdateBTLEState:(int64_t)state
{
  workQueue = [(HMDBTLEAdvertiser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HMDBTLEAdvertiser_didUpdateBTLEState___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(workQueue, v6);
}

uint64_t __40__HMDBTLEAdvertiser_didUpdateBTLEState___block_invoke(uint64_t result)
{
  if (*(result + 40) != 5)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = [v3 accessory];
    [v3 stopAdvertisement:v4];

    v5 = *(v2 + 32);

    return [v5 _flushQueues];
  }

  return result;
}

- (void)_flushQueues
{
  [(HMDBTLEAdvertiser *)self _flushQueue:@"AdvertisementQueue"];

  [(HMDBTLEAdvertiser *)self _flushQueue:@"ReachabilityQueue"];
}

- (void)_flushQueue:(id)queue
{
  queueCopy = queue;
  powerOnQueues = [(HMDBTLEAdvertiser *)self powerOnQueues];
  v5 = [powerOnQueues popAccessoryFromQueue:queueCopy];

  if (v5)
  {
    do
    {
      [(HMDBTLEAdvertiser *)self _completePendingPowerOnRequest:v5];
      powerOnQueues2 = [(HMDBTLEAdvertiser *)self powerOnQueues];
      v7 = [powerOnQueues2 popAccessoryFromQueue:queueCopy];

      v5 = v7;
    }

    while (v7);
  }
}

- (HMDBTLEAdvertiser)init
{
  v21.receiver = self;
  v21.super_class = HMDBTLEAdvertiser;
  v2 = [(HMDBTLEAdvertiser *)&v21 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    getInstance = [MEMORY[0x277CFEA60] getInstance];
    centralManager = v2->_centralManager;
    v2->_centralManager = getInstance;

    [(HAPBTLECentralManager *)v2->_centralManager registerCentralManagerDelegate:v2];
    v10 = objc_alloc_init(HMDAccessoryQueues);
    powerOnQueues = v2->_powerOnQueues;
    v2->_powerOnQueues = v10;

    [(HMDAccessoryQueues *)v2->_powerOnQueues createQueue:@"AdvertisementQueue"];
    [(HMDAccessoryQueues *)v2->_powerOnQueues createQueue:@"ReachabilityQueue"];
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v13 = [mEMORY[0x277D0F8D0] preferenceForKey:@"BTLEAdvertisingTimeout"];
    numberValue = [v13 numberValue];

    [numberValue doubleValue];
    v2->_advertisementTimeInterval = v15;
    mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v17 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"wirelessReachabilityTimeout"];
    numberValue2 = [v17 numberValue];

    [numberValue2 doubleValue];
    v2->_reachabilityTimeInterval = v19;
  }

  return v2;
}

+ (id)sharedAdvertiser
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDBTLEAdvertiser_sharedAdvertiser__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAdvertiser_onceToken != -1)
  {
    dispatch_once(&sharedAdvertiser_onceToken, block);
  }

  v2 = sharedAdvertiser_sharedAdvertiser;

  return v2;
}

void __37__HMDBTLEAdvertiser_sharedAdvertiser__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedAdvertiser_sharedAdvertiser;
  sharedAdvertiser_sharedAdvertiser = v1;
}

@end