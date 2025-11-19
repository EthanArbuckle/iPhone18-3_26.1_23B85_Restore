@interface HAPBTLECentralManager
+ (id)getInstance;
- (HAPBTLECentralManager)init;
- (id)_getCentralManager;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)registerCentralManagerDelegate:(id)a3;
@end

@implementation HAPBTLECentralManager

- (void)registerCentralManagerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAPBTLECentralManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HAPBTLECentralManager_registerCentralManagerDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__HAPBTLECentralManager_registerCentralManagerDelegate___block_invoke(uint64_t a1)
{
  v6 = [[HAPComponent alloc] initWithDelegate:*(a1 + 32)];
  v2 = [*(a1 + 40) delegates];
  [v2 addObject:v6];

  v3 = [*(a1 + 40) _getCentralManager];
  v4 = [v3 state];
  if ([*(a1 + 40) state])
  {
    v5 = [(HAPComponent *)v6 centralManagerDelegate];
    [v5 didUpdateBTLEState:v4];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 state];
  [(HAPBTLECentralManager *)self setState:v4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HAPBTLECentralManager *)self delegates];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) centralManagerDelegate];
        [v10 didUpdateBTLEState:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getCentralManager
{
  v3 = [(HAPBTLECentralManager *)self centralManager];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBDFF8]);
    v5 = [(HAPBTLECentralManager *)self workQueue];
    v6 = [v4 initWithDelegate:self queue:v5];
    [(HAPBTLECentralManager *)self setCentralManager:v6];

    v7 = [(HAPBTLECentralManager *)self centralManager];
    -[HAPBTLECentralManager setState:](self, "setState:", [v7 state]);
  }

  return [(HAPBTLECentralManager *)self centralManager];
}

- (HAPBTLECentralManager)init
{
  v10.receiver = self;
  v10.super_class = HAPBTLECentralManager;
  v2 = [(HAPBTLECentralManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.HAPBTLECentralManager", v3);
    workQueue = v2->workQueue;
    v2->workQueue = v4;

    centralManager = v2->centralManager;
    v2->centralManager = 0;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    delegates = v2->delegates;
    v2->delegates = v7;

    v2->state = 0;
  }

  return v2;
}

+ (id)getInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HAPBTLECentralManager_getInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (getInstance_onceToken != -1)
  {
    dispatch_once(&getInstance_onceToken, block);
  }

  v2 = getInstance_hapCentralManager;

  return v2;
}

uint64_t __36__HAPBTLECentralManager_getInstance__block_invoke(uint64_t a1)
{
  getInstance_hapCentralManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end