@interface HAPBTLECentralManager
+ (id)getInstance;
- (HAPBTLECentralManager)init;
- (id)_getCentralManager;
- (void)centralManagerDidUpdateState:(id)state;
- (void)registerCentralManagerDelegate:(id)delegate;
@end

@implementation HAPBTLECentralManager

- (void)registerCentralManagerDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = [(HAPBTLECentralManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HAPBTLECentralManager_registerCentralManagerDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_async(workQueue, v7);
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

- (void)centralManagerDidUpdateState:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  state = [state state];
  [(HAPBTLECentralManager *)self setState:state];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  delegates = [(HAPBTLECentralManager *)self delegates];
  v6 = [delegates countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(delegates);
        }

        centralManagerDelegate = [*(*(&v12 + 1) + 8 * v9) centralManagerDelegate];
        [centralManagerDelegate didUpdateBTLEState:state];

        ++v9;
      }

      while (v7 != v9);
      v7 = [delegates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getCentralManager
{
  centralManager = [(HAPBTLECentralManager *)self centralManager];

  if (!centralManager)
  {
    v4 = objc_alloc(MEMORY[0x277CBDFF8]);
    workQueue = [(HAPBTLECentralManager *)self workQueue];
    v6 = [v4 initWithDelegate:self queue:workQueue];
    [(HAPBTLECentralManager *)self setCentralManager:v6];

    centralManager2 = [(HAPBTLECentralManager *)self centralManager];
    -[HAPBTLECentralManager setState:](self, "setState:", [centralManager2 state]);
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
  block[4] = self;
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