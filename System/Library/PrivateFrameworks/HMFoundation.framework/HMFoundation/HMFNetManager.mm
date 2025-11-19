@interface HMFNetManager
+ (HMFNetManager)sharedManager;
- (HMFNetManager)init;
- (HMFNetManager)initWithWiFiManager:(id)a3;
- (_HMFNetManagerWoWAssertion)wowAssertion;
- (void)deregisterWoWAssertionForObject:(id)a3;
- (void)registerWoWAssertionForObject:(id)a3;
@end

@implementation HMFNetManager

+ (HMFNetManager)sharedManager
{
  if (_MergedGlobals_1_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1_1, &__block_literal_global_25);
  }

  v3 = qword_280AFC4F0;

  return v3;
}

uint64_t __30__HMFNetManager_sharedManager__block_invoke()
{
  qword_280AFC4F0 = objc_alloc_init(HMFNetManager);

  return MEMORY[0x2821F96F8]();
}

- (HMFNetManager)initWithWiFiManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HMFNetManager;
  v6 = [(HMFNetManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v8 = HMFDispatchQueueName(v6, 0);
    v9 = dispatch_queue_create(v8, 0);
    clientQueue = v7->_clientQueue;
    v7->_clientQueue = v9;

    objc_storeStrong(&v7->_wifiManager, a3);
  }

  return v7;
}

- (HMFNetManager)init
{
  v3 = +[HMFWiFiManager sharedManager];
  v4 = [(HMFNetManager *)self initWithWiFiManager:v3];

  return v4;
}

- (void)registerWoWAssertionForObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMFNetManager *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__HMFNetManager_registerWoWAssertionForObject___block_invoke;
    v6[3] = &unk_2786E6D18;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __47__HMFNetManager_registerWoWAssertionForObject___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) wowAssertion];
  if (!v3)
  {
    v4 = [_HMFNetManagerWoWAssertion alloc];
    v5 = [*(a1 + 32) wifiManager];
    v3 = [(_HMFNetManagerWoWAssertion *)v4 initWithWifiManager:v5];

    [*(a1 + 32) setWowAssertion:v3];
  }

  objc_setAssociatedObject(*(a1 + 40), "HMF.wowAssertionKey", v3, 1);

  objc_autoreleasePoolPop(v2);
}

- (void)deregisterWoWAssertionForObject:(id)a3
{
  if (a3)
  {
    objc_setAssociatedObject(a3, "HMF.wowAssertionKey", 0, 1);
  }
}

- (_HMFNetManagerWoWAssertion)wowAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_wowAssertion);

  return WeakRetained;
}

@end