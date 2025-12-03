@interface HMDHomeKeyDataRecorder
+ (id)sharedRecorder;
- (HMDHomeKeyDataRecorder)init;
- (NSArray)records;
- (NSMutableArray)mutableRecords;
- (void)addRecord:(id)record clearPrevious:(BOOL)previous;
- (void)recordAddedWalletKey:(id)key;
- (void)recordAddedWalletKey:(id)key passJSONDict:(id)dict;
- (void)recordInitialWalletKeys:(id)keys;
- (void)recordRemovedWalletKeyWithSerialNumber:(id)number noWalletKeysRemaining:(BOOL)remaining;
- (void)recordUpdatedWalletKey:(id)key;
- (void)recordUpdatedWalletKey:(id)key passJSONDict:(id)dict;
@end

@implementation HMDHomeKeyDataRecorder

- (void)addRecord:(id)record clearPrevious:(BOOL)previous
{
  previousCopy = previous;
  recordCopy = record;
  mutableRecords = [(HMDHomeKeyDataRecorder *)self mutableRecords];
  if (previousCopy)
  {
    array = [MEMORY[0x277CBEB18] array];

    mutableRecords = array;
  }

  [mutableRecords addObject:recordCopy];
  if ([mutableRecords count] - 10 >= 1)
  {
    [mutableRecords removeObjectsInRange:0];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [mutableRecords copy];
  [standardUserDefaults setObject:v9 forKey:@"HMDHomeKeyDataRecorderRecordsKey"];
}

- (NSMutableArray)mutableRecords
{
  records = [(HMDHomeKeyDataRecorder *)self records];
  v3 = [records mutableCopy];

  return v3;
}

- (NSArray)records
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults arrayForKey:@"HMDHomeKeyDataRecorderRecordsKey"];

  if (v3)
  {
    array = v3;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v5 = array;

  return v5;
}

- (void)recordRemovedWalletKeyWithSerialNumber:(id)number noWalletKeysRemaining:(BOOL)remaining
{
  numberCopy = number;
  workQueue = [(HMDHomeKeyDataRecorder *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDHomeKeyDataRecorder_recordRemovedWalletKeyWithSerialNumber_noWalletKeysRemaining___block_invoke;
  block[3] = &unk_279734938;
  block[4] = self;
  v10 = numberCopy;
  remainingCopy = remaining;
  v8 = numberCopy;
  dispatch_async(workQueue, block);
}

void __87__HMDHomeKeyDataRecorder_recordRemovedWalletKeyWithSerialNumber_noWalletKeysRemaining___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ removedWalletKeyWithSerialNumber: %@", v5, *(a1 + 40)];
  [v2 addRecord:v4 clearPrevious:*(a1 + 48)];
}

- (void)recordUpdatedWalletKey:(id)key
{
  keyCopy = key;
  workQueue = [(HMDHomeKeyDataRecorder *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDHomeKeyDataRecorder_recordUpdatedWalletKey___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(workQueue, v7);
}

void __49__HMDHomeKeyDataRecorder_recordUpdatedWalletKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ updatedWalletKey: %@", v5, *(a1 + 40)];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordUpdatedWalletKey:(id)key passJSONDict:(id)dict
{
  keyCopy = key;
  dictCopy = dict;
  workQueue = [(HMDHomeKeyDataRecorder *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDHomeKeyDataRecorder_recordUpdatedWalletKey_passJSONDict___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = keyCopy;
  v13 = dictCopy;
  v9 = dictCopy;
  v10 = keyCopy;
  dispatch_async(workQueue, block);
}

void __62__HMDHomeKeyDataRecorder_recordUpdatedWalletKey_passJSONDict___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ updatedWalletKey: %@, passJSONDict: %@", v5, a1[5], a1[6]];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordAddedWalletKey:(id)key
{
  keyCopy = key;
  workQueue = [(HMDHomeKeyDataRecorder *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDHomeKeyDataRecorder_recordAddedWalletKey___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(workQueue, v7);
}

void __47__HMDHomeKeyDataRecorder_recordAddedWalletKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ addedWalletKey: %@", v5, *(a1 + 40)];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordAddedWalletKey:(id)key passJSONDict:(id)dict
{
  keyCopy = key;
  dictCopy = dict;
  workQueue = [(HMDHomeKeyDataRecorder *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHomeKeyDataRecorder_recordAddedWalletKey_passJSONDict___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = keyCopy;
  v13 = dictCopy;
  v9 = dictCopy;
  v10 = keyCopy;
  dispatch_async(workQueue, block);
}

void __60__HMDHomeKeyDataRecorder_recordAddedWalletKey_passJSONDict___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 stringWithFormat:@"%@ addedWalletKey: %@, passJSONDict: %@", v5, a1[5], a1[6]];
  [v2 addRecord:v4 clearPrevious:0];
}

- (void)recordInitialWalletKeys:(id)keys
{
  keysCopy = keys;
  workQueue = [(HMDHomeKeyDataRecorder *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDHomeKeyDataRecorder_recordInitialWalletKeys___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = keysCopy;
  v6 = keysCopy;
  dispatch_async(workQueue, v7);
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
  uTF8String = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(uTF8String, v5);

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