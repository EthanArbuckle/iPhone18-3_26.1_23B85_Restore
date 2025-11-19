@interface CALNInMemoryTriggeredEventNotificationDataStorage
- (CALNInMemoryTriggeredEventNotificationDataStorage)init;
- (id)notificationData;
- (id)notificationDataWithIdentifier:(id)a3;
- (void)addNotificationData:(id)a3 withIdentifier:(id)a4;
- (void)removeNotificationData;
- (void)removeNotificationDataWithIdentifier:(id)a3;
@end

@implementation CALNInMemoryTriggeredEventNotificationDataStorage

- (CALNInMemoryTriggeredEventNotificationDataStorage)init
{
  v9.receiver = self;
  v9.super_class = CALNInMemoryTriggeredEventNotificationDataStorage;
  v2 = [(CALNInMemoryTriggeredEventNotificationDataStorage *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.calendar.notification.inMemoryTriggeredEventNotificationDataStorage.work", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    notificationDataMap = v2->_notificationDataMap;
    v2->_notificationDataMap = v6;
  }

  return v2;
}

- (id)notificationData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(CALNInMemoryTriggeredEventNotificationDataStorage *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CALNInMemoryTriggeredEventNotificationDataStorage_notificationData__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __69__CALNInMemoryTriggeredEventNotificationDataStorage_notificationData__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) notificationDataMap];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addNotificationData:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CALNInMemoryTriggeredEventNotificationDataStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__CALNInMemoryTriggeredEventNotificationDataStorage_addNotificationData_withIdentifier___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

void __88__CALNInMemoryTriggeredEventNotificationDataStorage_addNotificationData_withIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) notificationDataMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (id)notificationDataWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = [(CALNInMemoryTriggeredEventNotificationDataStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CALNInMemoryTriggeredEventNotificationDataStorage_notificationDataWithIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __84__CALNInMemoryTriggeredEventNotificationDataStorage_notificationDataWithIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) notificationDataMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeNotificationDataWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNInMemoryTriggeredEventNotificationDataStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__CALNInMemoryTriggeredEventNotificationDataStorage_removeNotificationDataWithIdentifier___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __90__CALNInMemoryTriggeredEventNotificationDataStorage_removeNotificationDataWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationDataMap];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (void)removeNotificationData
{
  v3 = [(CALNInMemoryTriggeredEventNotificationDataStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CALNInMemoryTriggeredEventNotificationDataStorage_removeNotificationData__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __75__CALNInMemoryTriggeredEventNotificationDataStorage_removeNotificationData__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) notificationDataMap];
  [v1 removeAllObjects];
}

@end