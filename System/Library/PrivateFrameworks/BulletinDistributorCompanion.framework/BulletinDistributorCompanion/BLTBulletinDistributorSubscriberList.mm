@interface BLTBulletinDistributorSubscriberList
- (BLTBulletinDistributorSubscriberList)init;
- (BOOL)hasSubscribersForSectionID:(id)a3;
- (id)subscribedSectionIDs;
- (void)_removeSubscribersWithMachServiceName:(id)a3 exceptFor:(id)a4;
- (void)addSubscriber:(id)a3;
- (void)pingWithBulletin:(id)a3 ack:(id)a4;
- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4;
- (void)removeSubscriber:(id)a3;
- (void)subscriber:(id)a3 subscribedWithMachServiceName:(id)a4;
@end

@implementation BLTBulletinDistributorSubscriberList

- (BLTBulletinDistributorSubscriberList)init
{
  v9.receiver = self;
  v9.super_class = BLTBulletinDistributorSubscriberList;
  v2 = [(BLTBulletinDistributorSubscriberList *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    subscribers = v2->_subscribers;
    v2->_subscribers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bulletindistributor.subscriberlist", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

- (void)addSubscriber:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__BLTBulletinDistributorSubscriberList_addSubscriber___block_invoke;
  v7[3] = &unk_278D31400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __54__BLTBulletinDistributorSubscriberList_addSubscriber___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) machServiceName];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Adding subscriber with machServiceName %@", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) machServiceName];
  [v4 _removeSubscribersWithMachServiceName:v5 exceptFor:*(a1 + 32)];

  [*(a1 + 32) setDelegate:*(a1 + 40)];
  result = [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeSubscriber:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BLTBulletinDistributorSubscriberList_removeSubscriber___block_invoke;
  v7[3] = &unk_278D31400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __57__BLTBulletinDistributorSubscriberList_removeSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) machServiceName];

  if (!v2)
  {
    [*(a1 + 32) setDelegate:0];
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 8);

    [v4 removeObject:v3];
  }
}

- (void)pingWithBulletin:(id)a3 ack:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BLTBulletinDistributorSubscriberList_pingWithBulletin_ack___block_invoke;
  block[3] = &unk_278D316A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __61__BLTBulletinDistributorSubscriberList_pingWithBulletin_ack___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) pingWithBulletin:a1[5] ack:{a1[6], v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__BLTBulletinDistributorSubscriberList_pingWithRecordID_forSectionID___block_invoke;
  block[3] = &unk_278D316C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __70__BLTBulletinDistributorSubscriberList_pingWithRecordID_forSectionID___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) pingWithRecordID:a1[5] forSectionID:{a1[6], v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)subscribedSectionIDs
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = [MEMORY[0x277CBEB58] set];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__BLTBulletinDistributorSubscriberList_subscribedSectionIDs__block_invoke;
  v6[3] = &unk_278D32FA0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__BLTBulletinDistributorSubscriberList_subscribedSectionIDs__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) sectionIDs];
        [v7 unionSet:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSubscribersForSectionID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BLTBulletinDistributorSubscriberList_hasSubscribersForSectionID___block_invoke;
  block[3] = &unk_278D32FC8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

void __67__BLTBulletinDistributorSubscriberList_hasSubscribersForSectionID___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) sectionIDs];
        v8 = [v7 containsObject:a1[5]];

        if (v8)
        {
          *(*(a1[6] + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)a3 subscribedWithMachServiceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__BLTBulletinDistributorSubscriberList_subscriber_subscribedWithMachServiceName___block_invoke;
  block[3] = &unk_278D316C8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

- (void)_removeSubscribersWithMachServiceName:(id)a3 exceptFor:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    dispatch_assert_queue_V2(self->_queue);
    v8 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = self;
    v9 = self->_subscribers;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          if (v14 != v7)
          {
            v15 = [*(*(&v19 + 1) + 8 * v13) machServiceName];
            v16 = [v15 isEqualToString:v6];

            if (v16)
            {
              [v8 addObject:v14];
              [v14 setDelegate:0];
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)v18->_subscribers removeObjectsInArray:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end