@interface PinnedTabsManager
- (NSArray)pinnedTabs;
- (NSArray)privatePinnedTabs;
- (PinnedTabsManager)initWithBrowserState:(id)a3 tabCollection:(id)a4;
- (id)_tabWithUUID:(id)a3 inContainer:(id)a4;
- (id)_tabsByUUIDInContainer:(id)a3;
- (id)_tabsInContainer:(id)a3;
- (id)containerForTabWithUUID:(id)a3;
- (id)duplicateTab:(id)a3;
- (id)pinnedTabsInContainer:(id)a3;
- (id)tabWithUUID:(id)a3;
- (int)_pinnedTabsFolderIDForContainer:(id)a3;
- (void)_cacheTab:(id)a3 inContainer:(id)a4;
- (void)_clearPinnedTabsForProfileWithIdentifier:(id)a3;
- (void)_loadPinnedTabsForProfileWithIdentifier:(id)a3;
- (void)_notifyObserversAfterUpdatesIfNeeded;
- (void)_updateCache;
- (void)addPinnedTabsObserver:(id)a3;
- (void)appendTab:(id)a3 inContainer:(id)a4;
- (void)didDeselectProfileWithIdentifier:(id)a3;
- (void)moveTab:(id)a3 toTabGroup:(id)a4 afterTab:(id)a5;
- (void)notifyObserversOfUpdatedPinnedTabsInContainer:(id)a3;
- (void)notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:(id)a3;
- (void)notifyObserversOfUpdatedPinnedTabsIsPrivate:(BOOL)a3;
- (void)performUpdatesUsingBlock:(id)a3;
- (void)removeTabWithUUID:(id)a3 persist:(BOOL)a4;
- (void)updatePinnedTabWithUUID:(id)a3 inContainer:(id)a4 usingBlock:(id)a5;
- (void)updatePinnedTabsInContainer:(id)a3 usingBlock:(id)a4;
- (void)willSelectProfileWithIdentifier:(id)a3;
@end

@implementation PinnedTabsManager

- (void)_updateCache
{
  v31 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_pinnedTabsByUUID removeAllObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_pinnedTabs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        pinnedTabsByUUID = self->_pinnedTabsByUUID;
        v10 = [v8 uuid];
        [(NSMutableDictionary *)pinnedTabsByUUID setObject:v8 forKeyedSubscript:v10];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_privatePinnedTabsByUUID removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_privatePinnedTabs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        privatePinnedTabsByUUID = self->_privatePinnedTabsByUUID;
        v18 = [v16 uuid];
        [(NSMutableDictionary *)privatePinnedTabsByUUID setObject:v16 forKeyedSubscript:v18];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier removeAllObjects];
  pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __33__PinnedTabsManager__updateCache__block_invoke;
  v20[3] = &unk_2781D8A08;
  v20[4] = self;
  [(NSMutableDictionary *)pinnedTabsByProfileIdentifier enumerateKeysAndObjectsUsingBlock:v20];
}

- (NSArray)pinnedTabs
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_pinnedTabs copyItems:1];

  return v2;
}

- (NSArray)privatePinnedTabs
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_privatePinnedTabs copyItems:1];

  return v2;
}

- (PinnedTabsManager)initWithBrowserState:(id)a3 tabCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = PinnedTabsManager;
  v8 = [(PinnedTabsManager *)&v37 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [v6 pinnedTabs];
    v12 = [v11 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_32];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB18] array];
    }

    pinnedTabs = v8->_pinnedTabs;
    v8->_pinnedTabs = v15;

    v17 = [v6 privatePinnedTabs];
    v18 = [v17 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_3_0];
    v19 = [v18 mutableCopy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [MEMORY[0x277CBEB18] array];
    }

    privatePinnedTabs = v8->_privatePinnedTabs;
    v8->_privatePinnedTabs = v21;

    objc_storeStrong(&v8->_tabCollection, a4);
    v23 = [MEMORY[0x277CBEB38] dictionary];
    pinnedTabsByUUID = v8->_pinnedTabsByUUID;
    v8->_pinnedTabsByUUID = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    privatePinnedTabsByUUID = v8->_privatePinnedTabsByUUID;
    v8->_privatePinnedTabsByUUID = v25;

    v27 = [MEMORY[0x277CCA940] set];
    activeProfileIdentifiers = v8->_activeProfileIdentifiers;
    v8->_activeProfileIdentifiers = v27;

    v29 = [MEMORY[0x277CBEB58] set];
    pendingUpdatedProfileIdentifiers = v8->_pendingUpdatedProfileIdentifiers;
    v8->_pendingUpdatedProfileIdentifiers = v29;

    v31 = [MEMORY[0x277CBEB38] dictionary];
    pinnedTabsByProfileIdentifier = v8->_pinnedTabsByProfileIdentifier;
    v8->_pinnedTabsByProfileIdentifier = v31;

    v33 = [MEMORY[0x277CBEB38] dictionary];
    pinnedTabsByUUIDAndProfileIdentifier = v8->_pinnedTabsByUUIDAndProfileIdentifier;
    v8->_pinnedTabsByUUIDAndProfileIdentifier = v33;

    [(PinnedTabsManager *)v8 _updateCache];
    v35 = v8;
  }

  return v8;
}

id __56__PinnedTabsManager_initWithBrowserState_tabCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

id __56__PinnedTabsManager_initWithBrowserState_tabCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

- (id)pinnedTabsInContainer:(id)a3
{
  v3 = [(PinnedTabsManager *)self _tabsInContainer:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v3 copyItems:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)_cacheTab:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v8 = [(PinnedTabsManager *)self _tabsByUUIDInContainer:a4];
  v7 = [v6 uuid];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (int)_pinnedTabsFolderIDForContainer:(id)a3
{
  v4 = a3;
  if ([v4 isPrivateBrowsingEnabled])
  {
    v5 = [(WBTabCollection *)self->_tabCollection privatePinnedTabsFolderID];
  }

  else
  {
    v6 = [v4 isInDefaultProfile];
    tabCollection = self->_tabCollection;
    if (!v6)
    {
      v9 = [v4 activeProfileIdentifier];
      v8 = [(WBTabCollection *)tabCollection pinnedTabsFolderIDForProfileWithIdentifier:v9];

      goto LABEL_7;
    }

    v5 = [(WBTabCollection *)tabCollection pinnedTabsFolderID];
  }

  v8 = v5;
LABEL_7:

  return v8;
}

- (id)_tabsInContainer:(id)a3
{
  v4 = a3;
  if ([v4 isPrivateBrowsingEnabled])
  {
    privatePinnedTabs = self->_privatePinnedTabs;
LABEL_5:
    v6 = privatePinnedTabs;
    goto LABEL_7;
  }

  if ([v4 isInDefaultProfile])
  {
    privatePinnedTabs = self->_pinnedTabs;
    goto LABEL_5;
  }

  pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
  v8 = [v4 activeProfileIdentifier];
  v6 = [(NSMutableDictionary *)pinnedTabsByProfileIdentifier objectForKeyedSubscript:v8];

LABEL_7:

  return v6;
}

- (id)_tabsByUUIDInContainer:(id)a3
{
  v4 = a3;
  if ([v4 isPrivateBrowsingEnabled])
  {
    privatePinnedTabsByUUID = self->_privatePinnedTabsByUUID;
LABEL_5:
    v6 = privatePinnedTabsByUUID;
    goto LABEL_7;
  }

  if ([v4 isInDefaultProfile])
  {
    privatePinnedTabsByUUID = self->_pinnedTabsByUUID;
    goto LABEL_5;
  }

  pinnedTabsByUUIDAndProfileIdentifier = self->_pinnedTabsByUUIDAndProfileIdentifier;
  v8 = [v4 activeProfileIdentifier];
  v6 = [(NSMutableDictionary *)pinnedTabsByUUIDAndProfileIdentifier objectForKeyedSubscript:v8];

LABEL_7:

  return v6;
}

- (id)_tabWithUUID:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = [(PinnedTabsManager *)self _tabsByUUIDInContainer:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

void __33__PinnedTabsManager__updateCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 uuid];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [*(*(a1 + 32) + 96) setObject:v7 forKeyedSubscript:v5];
}

- (id)containerForTabWithUUID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pinnedTabsByUUID objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = 0;
LABEL_5:
    v8 = [PinnedTabsContainer containerWithPrivateBrowsing:v6];
    goto LABEL_6;
  }

  v7 = [(NSMutableDictionary *)self->_privatePinnedTabsByUUID objectForKeyedSubscript:v4];

  if (v7)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier allKeys];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:v4];

        if (v17)
        {
          v8 = [PinnedTabsContainer containerWithActiveProfileIdentifier:v15];

          goto LABEL_6;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)tabWithUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pinnedTabsByUUID objectForKeyedSubscript:v4];
  if (v5 || ([(NSMutableDictionary *)self->_privatePinnedTabsByUUID objectForKeyedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 copy];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier allValues];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:v4];
          if (v11)
          {
            v12 = v11;
            v7 = [v11 copy];

            v6 = v12;
            goto LABEL_4;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_4:

  return v7;
}

- (void)updatePinnedTabWithUUID:(id)a3 inContainer:(id)a4 usingBlock:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PinnedTabsManager *)self _tabWithUUID:v8 inContainer:v9];
  if (v11)
  {
    v10[2](v10, v11);
    [(WBTabCollection *)self->_tabCollection saveItem:v11 completionHandler:0];
    [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:v9];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_INFO, "Not updating pinned tab with uuid %{public}@ because it does not exist.", &v13, 0xCu);
    }
  }
}

- (void)updatePinnedTabsInContainer:(id)a3 usingBlock:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PinnedTabsManager *)self _tabsByUUIDInContainer:v6];
  v9 = v7[2](v7, v8);

  v10 = [(PinnedTabsManager *)self _tabsInContainer:v6];
  if (([v9 isEqualToArray:v10] & 1) == 0)
  {
    v19 = v7;
    [v10 removeAllObjects];
    [v10 addObjectsFromArray:v9];
    v18 = [(PinnedTabsManager *)self _pinnedTabsFolderIDForContainer:v6];
    v11 = [v6 isPrivateBrowsingEnabled];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          [v17 setSyncable:0];
          [v17 didRemoveFromTabGroup];
          [v17 setInUnnamedTabGroup:v11 ^ 1];
          [v17 setPrivateBrowsing:v11];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(WBTabCollection *)self->_tabCollection updateItems:v9 inParentWithID:v18 completionHandler:0];
    [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:v6];
    [(PinnedTabsManager *)self _updateCache];
    v7 = v19;
  }
}

- (id)duplicateTab:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(PinnedTabsManager *)self containerForTabWithUUID:v5];

  v7 = [(PinnedTabsManager *)self _tabsInContainer:v6];
  v8 = [v7 indexOfObject:v4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    v11 = [v4 mutableDuplicate];
    [v11 setSyncable:0];
    [v7 insertObject:v11 atIndex:v10 + 1];
    v12 = [(PinnedTabsManager *)self _pinnedTabsFolderIDForContainer:v6];
    tabCollection = self->_tabCollection;
    v16[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(WBTabCollection *)tabCollection insertItems:v14 inParentWithID:v12 afterItem:v4];

    [(PinnedTabsManager *)self _cacheTab:v11 inContainer:v6];
    [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:v6];
    v9 = [v11 copy];
  }

  return v9;
}

- (void)appendTab:(id)a3 inContainer:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(PinnedTabsManager *)self _tabsInContainer:v6];
  v9 = [v6 isPrivateBrowsingEnabled];
  v10 = [v8 lastObject];
  [v8 addObject:v7];
  [v7 setSyncable:0];
  [v7 didRemoveFromTabGroup];
  [v7 setInUnnamedTabGroup:v9 ^ 1];
  [v7 setPrivateBrowsing:v9];
  v11 = [(PinnedTabsManager *)self _pinnedTabsFolderIDForContainer:v6];
  tabCollection = self->_tabCollection;
  v14[0] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(WBTabCollection *)tabCollection insertItems:v13 inParentWithID:v11 afterItem:v10];

  [(PinnedTabsManager *)self _cacheTab:v7 inContainer:v6];
  [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:v6];
}

- (void)moveTab:(id)a3 toTabGroup:(id)a4 afterTab:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 uuid];
  [(PinnedTabsManager *)self removeTabWithUUID:v11 persist:0];

  v13[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  [v9 insertTabs:v12 afterTab:v8];
}

- (void)removeTabWithUUID:(id)a3 persist:(BOOL)a4
{
  v4 = a4;
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  pinnedTabs = self->_pinnedTabs;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke;
  v30[3] = &unk_2781D8A30;
  v8 = v6;
  v31 = v8;
  v9 = [(NSMutableArray *)pinnedTabs safari_firstObjectPassingTest:v30];
  v10 = v9;
  if (v9)
  {
    pinnedTabsByUUID = self->_pinnedTabsByUUID;
    v12 = [v9 uuid];
    [(NSMutableDictionary *)pinnedTabsByUUID removeObjectForKey:v12];

    [(NSMutableArray *)self->_pinnedTabs removeObject:v10];
    if (v4)
    {
      tabCollection = self->_tabCollection;
      v33[0] = v10;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [(WBTabCollection *)tabCollection deleteItems:v14 leaveTombstones:0];
    }

    [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsIsPrivate:0];
  }

  else
  {
    privatePinnedTabs = self->_privatePinnedTabs;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke_2;
    v28[3] = &unk_2781D8A30;
    v16 = v8;
    v29 = v16;
    v17 = [(NSMutableArray *)privatePinnedTabs safari_firstObjectPassingTest:v28];
    v18 = v17;
    if (v17)
    {
      privatePinnedTabsByUUID = self->_privatePinnedTabsByUUID;
      v20 = [v17 uuid];
      [(NSMutableDictionary *)privatePinnedTabsByUUID removeObjectForKey:v20];

      [(NSMutableArray *)self->_privatePinnedTabs removeObject:v18];
      if (v4)
      {
        v21 = self->_tabCollection;
        v32 = v18;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
        [(WBTabCollection *)v21 deleteItems:v22 leaveTombstones:0];
      }

      [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsIsPrivate:1];
    }

    pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke_3;
    v24[3] = &unk_2781D8A58;
    v25 = v16;
    v26 = self;
    v27 = v4;
    [(NSMutableDictionary *)pinnedTabsByProfileIdentifier enumerateKeysAndObjectsUsingBlock:v24];
  }
}

uint64_t __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = WBSIsEqual();

  return v3;
}

uint64_t __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = WBSIsEqual();

  return v3;
}

void __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke_4;
  v14[3] = &unk_2781D8A30;
  v15 = *(a1 + 32);
  v9 = [v8 safari_firstObjectPassingTest:v14];
  if (v9)
  {
    v10 = [*(*(a1 + 40) + 96) objectForKeyedSubscript:v7];
    v11 = [v9 uuid];
    [v10 removeObjectForKey:v11];

    [v8 removeObject:v9];
    if (*(a1 + 48) == 1)
    {
      v12 = *(*(a1 + 40) + 16);
      v16[0] = v9;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [v12 deleteItems:v13 leaveTombstones:0];
    }

    [*(a1 + 40) notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:v7];
    *a4 = 1;
  }
}

uint64_t __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = WBSIsEqual();

  return v3;
}

- (void)willSelectProfileWithIdentifier:(id)a3
{
  v4 = a3;
  if (([(NSCountedSet *)self->_activeProfileIdentifiers containsObject:?]& 1) == 0)
  {
    [(PinnedTabsManager *)self _loadPinnedTabsForProfileWithIdentifier:v4];
  }

  [(NSCountedSet *)self->_activeProfileIdentifiers addObject:v4];
}

- (void)didDeselectProfileWithIdentifier:(id)a3
{
  v4 = a3;
  [(NSCountedSet *)self->_activeProfileIdentifiers removeObject:v4];
  if (([(NSCountedSet *)self->_activeProfileIdentifiers containsObject:v4]& 1) == 0)
  {
    [(PinnedTabsManager *)self _clearPinnedTabsForProfileWithIdentifier:v4];
  }
}

- (void)_loadPinnedTabsForProfileWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WBTabCollection *)self->_tabCollection pinnedTabsForProfileWithIdentifier:v4];
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_12];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] array];
  }

  v10 = v9;

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        v18 = [v17 uuid];
        [v11 setObject:v17 forKeyedSubscript:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [(NSMutableDictionary *)self->_pinnedTabsByProfileIdentifier setObject:v12 forKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier setObject:v11 forKeyedSubscript:v4];
}

id __61__PinnedTabsManager__loadPinnedTabsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

- (void)_clearPinnedTabsForProfileWithIdentifier:(id)a3
{
  pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
  v5 = a3;
  [(NSMutableDictionary *)pinnedTabsByProfileIdentifier setObject:0 forKeyedSubscript:v5];
  [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier setObject:0 forKeyedSubscript:v5];
}

- (void)performUpdatesUsingBlock:(id)a3
{
  ++self->_updateSuppressionCount;
  (*(a3 + 2))(a3, a2);
  --self->_updateSuppressionCount;

  [(PinnedTabsManager *)self _notifyObserversAfterUpdatesIfNeeded];
}

- (void)addPinnedTabsObserver:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_observers addObject:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 pinnedTabsManager:self didUpdatePinnedTabs:self->_pinnedTabs isPrivate:0];
    [v4 pinnedTabsManager:self didUpdatePinnedTabs:self->_privatePinnedTabs isPrivate:1];
  }

  if (objc_opt_respondsToSelector())
  {
    pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__PinnedTabsManager_addPinnedTabsObserver___block_invoke;
    v6[3] = &unk_2781D8A80;
    v7 = v4;
    v8 = self;
    [(NSMutableDictionary *)pinnedTabsByProfileIdentifier enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)notifyObserversOfUpdatedPinnedTabsInContainer:(id)a3
{
  v7 = a3;
  if ([v7 isPrivateBrowsingEnabled])
  {
    v4 = self;
    v5 = 1;
LABEL_5:
    [(PinnedTabsManager *)v4 notifyObserversOfUpdatedPinnedTabsIsPrivate:v5];
    goto LABEL_7;
  }

  if ([v7 isInDefaultProfile])
  {
    v4 = self;
    v5 = 0;
    goto LABEL_5;
  }

  v6 = [v7 activeProfileIdentifier];
  [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:v6];

LABEL_7:
}

- (void)notifyObserversOfUpdatedPinnedTabsIsPrivate:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (self->_updateSuppressionCount)
  {
    v5 = 1;
    if (a3)
    {
      v5 = 2;
    }

    self->_updateFlags |= v5;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      if (v3)
      {
        v10 = 32;
      }

      else
      {
        v10 = 24;
      }

      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 pinnedTabsManager:self didUpdatePinnedTabs:*(&self->super.isa + v10) isPrivate:{v3, v13}];
          }
        }

        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_updateSuppressionCount)
  {
    [(NSMutableSet *)self->_pendingUpdatedProfileIdentifiers addObject:v4];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_observers;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            v11 = [(NSMutableDictionary *)self->_pinnedTabsByProfileIdentifier objectForKeyedSubscript:v4, v12];
            [v10 pinnedTabsManager:self didUpdatePinnedTabs:v11 inProfileWithIdentifier:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyObserversAfterUpdatesIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_updateSuppressionCount)
  {
    updateFlags = self->_updateFlags;
    if (updateFlags)
    {
      [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsIsPrivate:0];
      updateFlags = self->_updateFlags;
    }

    if ((updateFlags & 2) != 0)
    {
      [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsIsPrivate:1];
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_pendingUpdatedProfileIdentifiers;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:*(*(&v9 + 1) + 8 * v8++), v9];
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    self->_updateFlags = 0;
    [(NSMutableSet *)self->_pendingUpdatedProfileIdentifiers removeAllObjects];
  }
}

@end