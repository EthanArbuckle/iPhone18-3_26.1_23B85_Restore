@interface CommunicationsFilterBlockListCache
- (CommunicationsFilterBlockListCache)init;
- (int64_t)cachedResponseForItem:(id)item;
- (void)removeItemFromCache:(id)cache;
- (void)setResponse:(BOOL)response forItem:(id)item;
- (void)syncListEmptyState;
@end

@implementation CommunicationsFilterBlockListCache

- (CommunicationsFilterBlockListCache)init
{
  v17.receiver = self;
  v17.super_class = CommunicationsFilterBlockListCache;
  v2 = [(CommunicationsFilterBlockListCache *)&v17 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [CMFNotificationObserver alloc];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(CMFSyncAgentBlockListUpdated, "UTF8String")}];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__CommunicationsFilterBlockListCache_init__block_invoke;
    v14[3] = &unk_278DE6DE8;
    objc_copyWeak(&v15, &location);
    v7 = [(CMFNotificationObserver *)v3 initWithName:v4 queue:v5 callback:v14];
    blockListUpdateObserver = v2->_blockListUpdateObserver;
    v2->_blockListUpdateObserver = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    recentItems = v2->_recentItems;
    v2->_recentItems = v9;

    v2->_listIsEmpty = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__CommunicationsFilterBlockListCache_init__block_invoke_2;
    handler[3] = &unk_278DE6E10;
    v13 = v2;
    notify_register_dispatch("_CMFBlockListIsEmptyToken", &v2->_notifyEmptyListToken, MEMORY[0x277D85CD0], handler);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__CommunicationsFilterBlockListCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _blockListChanged];
    WeakRetained = v2;
  }
}

void __42__CommunicationsFilterBlockListCache_init__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = CMFDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BDE000, v3, OS_LOG_TYPE_DEFAULT, "Notify empty token changed.", v4, 2u);
  }

  [*(a1 + 32) syncListEmptyState];
  objc_sync_exit(v2);
}

- (int64_t)cachedResponseForItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_listIsEmpty)
  {
    v6 = CMFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BDE000, v6, OS_LOG_TYPE_DEFAULT, "Since _listIsEmpty return NO", buf, 2u);
    }

    isInList = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = selfCopy->_recentItems;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = *v16;
LABEL_7:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 matchesItem:{itemCopy, v15}])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v9)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v6 = v12;

      if (!v6)
      {
        goto LABEL_16;
      }

      isInList = [v6 isInList];
    }

    else
    {
LABEL_13:

      v6 = 0;
LABEL_16:
      isInList = -1;
    }
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];
  return isInList;
}

- (void)removeItemFromCache:(id)cache
{
  v20 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = selfCopy->_recentItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 matchesItem:cacheCopy])
        {
          v11 = v10;

          if (v11)
          {
            [(NSMutableArray *)selfCopy->_recentItems removeObject:v11];
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:
  v12 = CMFDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_243BDE000, v12, OS_LOG_TYPE_DEFAULT, "", v14, 2u);
  }

  [(CommunicationsFilterBlockListCache *)selfCopy syncListEmptyState];
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setResponse:(BOOL)response forItem:(id)item
{
  responseCopy = response;
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = selfCopy->_recentItems;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if ([v12 matchesItem:{itemCopy, v17}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_12;
    }

    [(NSMutableArray *)selfCopy->_recentItems removeObject:v13];
    [(NSMutableArray *)selfCopy->_recentItems insertObject:v13 atIndex:0];
    [v13 setIsInList:responseCopy];
  }

  else
  {
LABEL_9:

LABEL_12:
    if ([(NSMutableArray *)selfCopy->_recentItems count]>= 0xA)
    {
      [(NSMutableArray *)selfCopy->_recentItems removeLastObject];
    }

    v14 = [[CommunicationFilterItemCache alloc] initWithFilterItem:itemCopy isInList:-1];
    [(NSMutableArray *)selfCopy->_recentItems insertObject:v14 atIndex:0];

    v13 = 0;
  }

  v15 = CMFDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = responseCopy;
    _os_log_impl(&dword_243BDE000, v15, OS_LOG_TYPE_DEFAULT, "cache setResponse = %d", buf, 8u);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)syncListEmptyState
{
  state64 = self->_listIsEmpty;
  notify_get_state(self->_notifyEmptyListToken, &state64);
  v3 = state64;
  self->_listIsEmpty = state64 != 0;
  v4 = CMFDefaultLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Our list is empty.";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_243BDE000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Our list is not empty.";
    v7 = &v8;
    goto LABEL_6;
  }
}

@end