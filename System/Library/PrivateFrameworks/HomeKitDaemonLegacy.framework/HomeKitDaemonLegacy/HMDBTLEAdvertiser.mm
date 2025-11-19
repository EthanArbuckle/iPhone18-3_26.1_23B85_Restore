@interface HMDBTLEAdvertiser
+ (id)sharedAdvertiser;
- (BOOL)isAdvertisingForAccessory:(id)a3;
- (BOOL)isReady;
- (HMDBTLEAdvertiser)init;
- (void)_advertisementTimeout;
- (void)_cancelOn:(id)a3;
- (void)_clearAdvertiser;
- (void)_completePendingPowerOnRequest:(id)a3;
- (void)_flushQueue:(id)a3;
- (void)_flushQueues;
- (void)_startAdvertising;
- (void)_stopAdvertisement:(id)a3;
- (void)cancelOn:(id)a3;
- (void)didUpdateBTLEState:(int64_t)a3;
- (void)powerOn:(id)a3;
- (void)stopAdvertisement:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDBTLEAdvertiser

- (BOOL)isReady
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(HMDBTLEAdvertiser *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__HMDBTLEAdvertiser_isReady__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
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

- (BOOL)isAdvertisingForAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v5 = [(HMDBTLEAdvertiser *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HMDBTLEAdvertiser_isAdvertisingForAccessory___block_invoke;
    block[3] = &unk_279735BC0;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(v5, block);

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

- (void)timerDidFire:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__42241;
  v14[4] = __Block_byref_object_dispose__42242;
  v4 = a3;
  v15 = v4;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDBTLEAdvertiser *)v6 accessory];
    v10 = [v9 identifier];
    *buf = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Wireless Timer: %@ did fire for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [(HMDBTLEAdvertiser *)v6 workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__HMDBTLEAdvertiser_timerDidFire___block_invoke;
  v13[3] = &unk_279734898;
  v13[4] = v6;
  v13[5] = v14;
  dispatch_async(v11, v13);

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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Wireless BTLE Advertisement timeout for %@", &v19, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected BTLE Advertisement timer for %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_advertisementTimeout
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBTLEAdvertiser *)self leAdvertiser];

  if (v3)
  {
    v4 = [(HMDBTLEAdvertiser *)self advertisementTimer];
    [v4 cancel];

    [(HMDBTLEAdvertiser *)self setAdvertisementTimer:0];
    v5 = [(HMDBTLEAdvertiser *)self accessory];
    [(HMDBTLEAdvertiser *)self setAccessory:0];
    [(HMDBTLEAdvertiser *)self _clearAdvertiser];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v5 identifier];
      v19 = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Wireless - Starting reachable timer for accessory: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if ([v5 isReachable])
    {
      [(HMDBTLEAdvertiser *)v7 _completePendingPowerOnRequest:v5];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D0F920]);
      [(HMDBTLEAdvertiser *)v7 reachabilityTimeInterval];
      v16 = [v15 initWithTimeInterval:1 options:?];
      [v16 setDelegate:v7];
      [v16 resume];
      v17 = [(HMDBTLEAdvertiser *)v7 powerOnQueues];
      [v17 addAccessory:v5 toQueue:@"ReachabilityQueue" context:v16];
    }

    [(HMDBTLEAdvertiser *)v7 _startAdvertising];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Wireless LE Timeout - no gleAdvertiser", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v5 = [(HMDBTLEAdvertiser *)v12 accessory];
    [(HMDBTLEAdvertiser *)v12 _completePendingPowerOnRequest:v5];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)powerOn:(id)a3
{
  v4 = a3;
  v5 = [(HMDBTLEAdvertiser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HMDBTLEAdvertiser_powerOn___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Wireless - Ignoring power on request -- Bluetooth not in a state to turn on accessory: %@", buf, 0x16u);
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
  v3 = [(HMDBTLEAdvertiser *)self leAdvertiser];

  if (!v3)
  {
    v4 = [(HMDBTLEAdvertiser *)self powerOnQueues];
    v5 = [v4 countForQueue:@"AdvertisementQueue"];

    if (v5)
    {
      v6 = [(HMDBTLEAdvertiser *)self powerOnQueues];
      v7 = [v6 popAccessoryFromQueue:@"AdvertisementQueue"];
      [(HMDBTLEAdvertiser *)self setAccessory:v7];

      v8 = objc_alloc_init(MEMORY[0x277D02830]);
      [(HMDBTLEAdvertiser *)self setLeAdvertiser:v8];

      v9 = objc_alloc(MEMORY[0x277D0F808]);
      v10 = [(HMDBTLEAdvertiser *)self accessory];
      v11 = [v10 pairingUsername];
      v12 = [v9 initWithAddressString:v11 length:6];

      v13 = [v12 data];
      v14 = [(HMDBTLEAdvertiser *)self leAdvertiser];
      [v14 setLgDeviceID:v13];

      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMDBTLEAdvertiser *)v16 accessory];
        v20 = [v19 identifier];
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Wireless - Starting BT LE Advertisement for %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = [(HMDBTLEAdvertiser *)v16 leAdvertiser];
      [v21 activate];

      v22 = objc_alloc(MEMORY[0x277D0F920]);
      [(HMDBTLEAdvertiser *)v16 advertisementTimeInterval];
      v23 = [v22 initWithTimeInterval:1 options:?];
      [(HMDBTLEAdvertiser *)v16 setAdvertisementTimer:v23];

      v24 = [(HMDBTLEAdvertiser *)v16 advertisementTimer];
      [v24 setDelegate:v16];

      v25 = [(HMDBTLEAdvertiser *)v16 advertisementTimer];
      [v25 resume];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cancelOn:(id)a3
{
  v4 = a3;
  v5 = [(HMDBTLEAdvertiser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HMDBTLEAdvertiser_cancelOn___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_cancelOn:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 identifier];
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Wireless - Cancelling advertisement timer for %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    if (([v4 custom1WoBLE] & 1) != 0 && (-[HMDBTLEAdvertiser accessory](v6, "accessory"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, -[HMDBTLEAdvertiser accessory](v6, "accessory"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12 == v4))
    {
      [(HMDBTLEAdvertiser *)v6 setAccessory:0];
      v14 = [(HMDBTLEAdvertiser *)v6 advertisementTimer];
      [v14 cancel];

      [(HMDBTLEAdvertiser *)v6 setAdvertisementTimer:0];
      v15 = [(HMDBTLEAdvertiser *)v6 powerOnQueues];
      v16 = [v15 getContextForAccessory:v4];

      [v16 suspend];
      [(HMDBTLEAdvertiser *)v6 _clearAdvertiser];
      [(HMDBTLEAdvertiser *)v6 _completePendingPowerOnRequest:v4];
      [(HMDBTLEAdvertiser *)v6 _startAdvertising];
    }

    else
    {
      [(HMDBTLEAdvertiser *)v6 _completePendingPowerOnRequest:v4];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_completePendingPowerOnRequest:(id)a3
{
  v6 = a3;
  if ([v6 isReachable])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:4 userInfo:0];
  }

  if (v6)
  {
    v5 = [(HMDBTLEAdvertiser *)self powerOnQueues];
    [v5 removeAccessory:v6];

    [v6 powerOnComplete:v4];
  }
}

- (void)stopAdvertisement:(id)a3
{
  v4 = a3;
  v5 = [(HMDBTLEAdvertiser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDBTLEAdvertiser_stopAdvertisement___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_stopAdvertisement:(id)a3
{
  v4 = a3;
  v5 = [(HMDBTLEAdvertiser *)self accessory];

  if (v4)
  {
    if (v5 == v4)
    {
      v6 = [(HMDBTLEAdvertiser *)self leAdvertiser];

      if (v6)
      {

        [(HMDBTLEAdvertiser *)self _clearAdvertiser];
      }
    }
  }
}

- (void)_clearAdvertiser
{
  v3 = [(HMDBTLEAdvertiser *)self leAdvertiser];

  if (v3)
  {
    v4 = [(HMDBTLEAdvertiser *)self leAdvertiser];
    [v4 invalidate];

    [(HMDBTLEAdvertiser *)self setLeAdvertiser:0];
  }
}

- (void)didUpdateBTLEState:(int64_t)a3
{
  v5 = [(HMDBTLEAdvertiser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HMDBTLEAdvertiser_didUpdateBTLEState___block_invoke;
  v6[3] = &unk_279734BB8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
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

- (void)_flushQueue:(id)a3
{
  v8 = a3;
  v4 = [(HMDBTLEAdvertiser *)self powerOnQueues];
  v5 = [v4 popAccessoryFromQueue:v8];

  if (v5)
  {
    do
    {
      [(HMDBTLEAdvertiser *)self _completePendingPowerOnRequest:v5];
      v6 = [(HMDBTLEAdvertiser *)self powerOnQueues];
      v7 = [v6 popAccessoryFromQueue:v8];

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
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = [MEMORY[0x277CFEA60] getInstance];
    centralManager = v2->_centralManager;
    v2->_centralManager = v8;

    [(HAPBTLECentralManager *)v2->_centralManager registerCentralManagerDelegate:v2];
    v10 = objc_alloc_init(HMDAccessoryQueues);
    powerOnQueues = v2->_powerOnQueues;
    v2->_powerOnQueues = v10;

    [(HMDAccessoryQueues *)v2->_powerOnQueues createQueue:@"AdvertisementQueue"];
    [(HMDAccessoryQueues *)v2->_powerOnQueues createQueue:@"ReachabilityQueue"];
    v12 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v13 = [v12 preferenceForKey:@"BTLEAdvertisingTimeout"];
    v14 = [v13 numberValue];

    [v14 doubleValue];
    v2->_advertisementTimeInterval = v15;
    v16 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v17 = [v16 preferenceForKey:@"wirelessReachabilityTimeout"];
    v18 = [v17 numberValue];

    [v18 doubleValue];
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
  block[4] = a1;
  if (sharedAdvertiser_onceToken != -1)
  {
    dispatch_once(&sharedAdvertiser_onceToken, block);
  }

  v2 = sharedAdvertiser_sharedAdvertiser;

  return v2;
}

uint64_t __37__HMDBTLEAdvertiser_sharedAdvertiser__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedAdvertiser_sharedAdvertiser;
  sharedAdvertiser_sharedAdvertiser = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end