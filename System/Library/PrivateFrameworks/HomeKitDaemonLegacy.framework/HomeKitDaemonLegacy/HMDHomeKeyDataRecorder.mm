@interface HMDHomeKeyDataRecorder
+ (id)sharedRecorder;
- (HMDHomeKeyDataRecorder)init;
- (NSArray)records;
- (NSMutableArray)mutableRecords;
- (void)addRecord:(id)a3 clearPrevious:(BOOL)a4;
- (void)recordAddedWalletKey:(id)a3;
- (void)recordAddedWalletKey:(id)a3 passJSONDict:(id)a4;
- (void)recordInitialWalletKeys:(id)a3;
- (void)recordRemovedWalletKeyWithSerialNumber:(id)a3 noWalletKeysRemaining:(BOOL)a4;
- (void)recordUpdatedWalletKey:(id)a3;
- (void)recordUpdatedWalletKey:(id)a3 passJSONDict:(id)a4;
@end

@implementation HMDHomeKeyDataRecorder

- (void)addRecord:(id)a3 clearPrevious:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(HMDHomeKeyDataRecorder *)self mutableRecords];
  if (v4)
  {
    v7 = [MEMORY[0x277CBEB18] array];

    v6 = v7;
  }

  [v6 addObject:v10];
  if ([v6 count] - 10 >= 1)
  {
    [v6 removeObjectsInRange:0];
  }

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v6 copy];
  [v8 setObject:v9 forKey:@"HMDHomeKeyDataRecorderRecordsKey"];
}

- (NSMutableArray)mutableRecords
{
  v2 = [(HMDHomeKeyDataRecorder *)self records];
  v3 = [v2 mutableCopy];

  return v3;
}

- (NSArray)records
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 arrayForKey:@"HMDHomeKeyDataRecorderRecordsKey"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA60] array];
  }

  v5 = v4;

  return v5;
}

- (void)recordRemovedWalletKeyWithSerialNumber:(id)a3 noWalletKeysRemaining:(BOOL)a4
{
  v6 = a3;
  v7 = [(HMDHomeKeyDataRecorder *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDHomeKeyDataRecorder_recordRemovedWalletKeyWithSerialNumber_noWalletKeysRemaining___block_invoke;
  block[3] = &unk_279734938;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __87__HMDHomeKeyDataRecorder_recordRemovedWalletKeyWithSerialNumber_noWalletKeysRemaining___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ removedWalletKeyWithSerialNumber: %@", v5, *(a1 + 40)];
  [v2 addRecord:v4 clearPrevious:*(a1 + 48)];
}

- (void)recordUpdatedWalletKey:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeKeyDataRecorder *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDHomeKeyDataRecorder_recordUpdatedWalletKey___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__HMDHomeKeyDataRecorder_recordUpdatedWalletKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ updatedWalletKey: %@", v5, *(a1 + 40)];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordUpdatedWalletKey:(id)a3 passJSONDict:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKeyDataRecorder *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDHomeKeyDataRecorder_recordUpdatedWalletKey_passJSONDict___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __62__HMDHomeKeyDataRecorder_recordUpdatedWalletKey_passJSONDict___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ updatedWalletKey: %@, passJSONDict: %@", v5, a1[5], a1[6]];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordAddedWalletKey:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeKeyDataRecorder *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDHomeKeyDataRecorder_recordAddedWalletKey___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__HMDHomeKeyDataRecorder_recordAddedWalletKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ addedWalletKey: %@", v5, *(a1 + 40)];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordAddedWalletKey:(id)a3 passJSONDict:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKeyDataRecorder *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHomeKeyDataRecorder_recordAddedWalletKey_passJSONDict___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __60__HMDHomeKeyDataRecorder_recordAddedWalletKey_passJSONDict___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ addedWalletKey: %@, passJSONDict: %@", v5, a1[5], a1[6]];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordInitialWalletKeys:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeKeyDataRecorder *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDHomeKeyDataRecorder_recordInitialWalletKeys___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__HMDHomeKeyDataRecorder_recordInitialWalletKeys___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ initialWalletKeysOnDeviceSetup: %@", v5, *(a1 + 40)];
  [v2 addRecord:v4 clearPrevious:0];
}

- (HMDHomeKeyDataRecorder)init
{
  v3 = HMDispatchQueueNameString();
  v4 = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);

  v10.receiver = self;
  v10.super_class = HMDHomeKeyDataRecorder;
  v7 = [(HMDHomeKeyDataRecorder *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_workQueue, v6);
  }

  return v8;
}

+ (id)sharedRecorder
{
  if (sharedRecorder_onceToken != -1)
  {
    dispatch_once(&sharedRecorder_onceToken, &__block_literal_global_112993);
  }

  v3 = sharedRecorder_sharedRecorder;

  return v3;
}

uint64_t __40__HMDHomeKeyDataRecorder_sharedRecorder__block_invoke()
{
  result = isInternalBuild();
  if (result)
  {
    v1 = objc_alloc_init(HMDHomeKeyDataRecorder);
    v2 = sharedRecorder_sharedRecorder;
    sharedRecorder_sharedRecorder = v1;

    return MEMORY[0x2821F96F8](v1, v2);
  }

  return result;
}

@end