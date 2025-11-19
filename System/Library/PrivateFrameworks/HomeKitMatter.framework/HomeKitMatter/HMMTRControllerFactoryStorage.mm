@interface HMMTRControllerFactoryStorage
- (BOOL)removeStorageDataForKey:(id)a3;
- (BOOL)setStorageData:(id)a3 forKey:(id)a4;
- (HMMTRControllerFactoryStorage)init;
- (id)dictionaryCopy;
- (id)storageDataForKey:(id)a3;
- (void)clear;
@end

@implementation HMMTRControllerFactoryStorage

- (void)clear
{
  v3 = [(HMMTRControllerFactoryStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMMTRControllerFactoryStorage_clear__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __38__HMMTRControllerFactoryStorage_clear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mtrControllerFactoryKeyValueStore];
  [v1 removeAllObjects];
}

- (HMMTRControllerFactoryStorage)init
{
  v8.receiver = self;
  v8.super_class = HMMTRControllerFactoryStorage;
  v2 = [(HMMTRControllerFactoryStorage *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("HMMTRControllerFactoryStorage", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    mtrControllerFactoryKeyValueStore = v2->_mtrControllerFactoryKeyValueStore;
    v2->_mtrControllerFactoryKeyValueStore = v5;
  }

  return v2;
}

- (id)dictionaryCopy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3457;
  v11 = __Block_byref_object_dispose__3458;
  v12 = 0;
  v3 = [(HMMTRControllerFactoryStorage *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HMMTRControllerFactoryStorage_dictionaryCopy__block_invoke;
  v6[3] = &unk_2786EDE38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__HMMTRControllerFactoryStorage_dictionaryCopy__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mtrControllerFactoryKeyValueStore];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)removeStorageDataForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRControllerFactoryStorage *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMMTRControllerFactoryStorage_removeStorageDataForKey___block_invoke;
  v8[3] = &unk_2786EF328;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_sync(v5, v8);

  return 1;
}

void __57__HMMTRControllerFactoryStorage_removeStorageDataForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mtrControllerFactoryKeyValueStore];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (BOOL)setStorageData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRControllerFactoryStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMMTRControllerFactoryStorage_setStorageData_forKey___block_invoke;
  block[3] = &unk_2786EF3C8;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);

  return 1;
}

void __55__HMMTRControllerFactoryStorage_setStorageData_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) mtrControllerFactoryKeyValueStore];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (id)storageDataForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3457;
  v16 = __Block_byref_object_dispose__3458;
  v17 = 0;
  v5 = [(HMMTRControllerFactoryStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMMTRControllerFactoryStorage_storageDataForKey___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__HMMTRControllerFactoryStorage_storageDataForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mtrControllerFactoryKeyValueStore];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end