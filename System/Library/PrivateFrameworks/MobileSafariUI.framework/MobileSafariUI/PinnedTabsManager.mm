@interface PinnedTabsManager
- (NSArray)pinnedTabs;
- (NSArray)privatePinnedTabs;
- (PinnedTabsManager)initWithBrowserState:(id)state tabCollection:(id)collection;
- (id)_tabWithUUID:(id)d inContainer:(id)container;
- (id)_tabsByUUIDInContainer:(id)container;
- (id)_tabsInContainer:(id)container;
- (id)containerForTabWithUUID:(id)d;
- (id)duplicateTab:(id)tab;
- (id)pinnedTabsInContainer:(id)container;
- (id)tabWithUUID:(id)d;
- (int)_pinnedTabsFolderIDForContainer:(id)container;
- (void)_cacheTab:(id)tab inContainer:(id)container;
- (void)_clearPinnedTabsForProfileWithIdentifier:(id)identifier;
- (void)_loadPinnedTabsForProfileWithIdentifier:(id)identifier;
- (void)_notifyObserversAfterUpdatesIfNeeded;
- (void)_updateCache;
- (void)addPinnedTabsObserver:(id)observer;
- (void)appendTab:(id)tab inContainer:(id)container;
- (void)didDeselectProfileWithIdentifier:(id)identifier;
- (void)moveTab:(id)tab toTabGroup:(id)group afterTab:(id)afterTab;
- (void)notifyObserversOfUpdatedPinnedTabsInContainer:(id)container;
- (void)notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:(id)identifier;
- (void)notifyObserversOfUpdatedPinnedTabsIsPrivate:(BOOL)private;
- (void)performUpdatesUsingBlock:(id)block;
- (void)removeTabWithUUID:(id)d persist:(BOOL)persist;
- (void)updatePinnedTabWithUUID:(id)d inContainer:(id)container usingBlock:(id)block;
- (void)updatePinnedTabsInContainer:(id)container usingBlock:(id)block;
- (void)willSelectProfileWithIdentifier:(id)identifier;
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
        uuid = [v8 uuid];
        [(NSMutableDictionary *)pinnedTabsByUUID setObject:v8 forKeyedSubscript:uuid];
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
        uuid2 = [v16 uuid];
        [(NSMutableDictionary *)privatePinnedTabsByUUID setObject:v16 forKeyedSubscript:uuid2];
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

- (PinnedTabsManager)initWithBrowserState:(id)state tabCollection:(id)collection
{
  stateCopy = state;
  collectionCopy = collection;
  v37.receiver = self;
  v37.super_class = PinnedTabsManager;
  v8 = [(PinnedTabsManager *)&v37 init];
  if (v8)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = weakObjectsHashTable;

    pinnedTabs = [stateCopy pinnedTabs];
    v12 = [pinnedTabs safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_32];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      array = v13;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    pinnedTabs = v8->_pinnedTabs;
    v8->_pinnedTabs = array;

    privatePinnedTabs = [stateCopy privatePinnedTabs];
    v18 = [privatePinnedTabs safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_3_0];
    v19 = [v18 mutableCopy];
    v20 = v19;
    if (v19)
    {
      array2 = v19;
    }

    else
    {
      array2 = [MEMORY[0x277CBEB18] array];
    }

    privatePinnedTabs = v8->_privatePinnedTabs;
    v8->_privatePinnedTabs = array2;

    objc_storeStrong(&v8->_tabCollection, collection);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pinnedTabsByUUID = v8->_pinnedTabsByUUID;
    v8->_pinnedTabsByUUID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    privatePinnedTabsByUUID = v8->_privatePinnedTabsByUUID;
    v8->_privatePinnedTabsByUUID = dictionary2;

    v27 = [MEMORY[0x277CCA940] set];
    activeProfileIdentifiers = v8->_activeProfileIdentifiers;
    v8->_activeProfileIdentifiers = v27;

    v29 = [MEMORY[0x277CBEB58] set];
    pendingUpdatedProfileIdentifiers = v8->_pendingUpdatedProfileIdentifiers;
    v8->_pendingUpdatedProfileIdentifiers = v29;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    pinnedTabsByProfileIdentifier = v8->_pinnedTabsByProfileIdentifier;
    v8->_pinnedTabsByProfileIdentifier = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    pinnedTabsByUUIDAndProfileIdentifier = v8->_pinnedTabsByUUIDAndProfileIdentifier;
    v8->_pinnedTabsByUUIDAndProfileIdentifier = dictionary4;

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

- (id)pinnedTabsInContainer:(id)container
{
  v3 = [(PinnedTabsManager *)self _tabsInContainer:container];
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

- (void)_cacheTab:(id)tab inContainer:(id)container
{
  tabCopy = tab;
  v8 = [(PinnedTabsManager *)self _tabsByUUIDInContainer:container];
  uuid = [tabCopy uuid];
  [v8 setObject:tabCopy forKeyedSubscript:uuid];
}

- (int)_pinnedTabsFolderIDForContainer:(id)container
{
  containerCopy = container;
  if ([containerCopy isPrivateBrowsingEnabled])
  {
    privatePinnedTabsFolderID = [(WBTabCollection *)self->_tabCollection privatePinnedTabsFolderID];
  }

  else
  {
    isInDefaultProfile = [containerCopy isInDefaultProfile];
    tabCollection = self->_tabCollection;
    if (!isInDefaultProfile)
    {
      activeProfileIdentifier = [containerCopy activeProfileIdentifier];
      v8 = [(WBTabCollection *)tabCollection pinnedTabsFolderIDForProfileWithIdentifier:activeProfileIdentifier];

      goto LABEL_7;
    }

    privatePinnedTabsFolderID = [(WBTabCollection *)tabCollection pinnedTabsFolderID];
  }

  v8 = privatePinnedTabsFolderID;
LABEL_7:

  return v8;
}

- (id)_tabsInContainer:(id)container
{
  containerCopy = container;
  if ([containerCopy isPrivateBrowsingEnabled])
  {
    privatePinnedTabs = self->_privatePinnedTabs;
LABEL_5:
    v6 = privatePinnedTabs;
    goto LABEL_7;
  }

  if ([containerCopy isInDefaultProfile])
  {
    privatePinnedTabs = self->_pinnedTabs;
    goto LABEL_5;
  }

  pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
  activeProfileIdentifier = [containerCopy activeProfileIdentifier];
  v6 = [(NSMutableDictionary *)pinnedTabsByProfileIdentifier objectForKeyedSubscript:activeProfileIdentifier];

LABEL_7:

  return v6;
}

- (id)_tabsByUUIDInContainer:(id)container
{
  containerCopy = container;
  if ([containerCopy isPrivateBrowsingEnabled])
  {
    privatePinnedTabsByUUID = self->_privatePinnedTabsByUUID;
LABEL_5:
    v6 = privatePinnedTabsByUUID;
    goto LABEL_7;
  }

  if ([containerCopy isInDefaultProfile])
  {
    privatePinnedTabsByUUID = self->_pinnedTabsByUUID;
    goto LABEL_5;
  }

  pinnedTabsByUUIDAndProfileIdentifier = self->_pinnedTabsByUUIDAndProfileIdentifier;
  activeProfileIdentifier = [containerCopy activeProfileIdentifier];
  v6 = [(NSMutableDictionary *)pinnedTabsByUUIDAndProfileIdentifier objectForKeyedSubscript:activeProfileIdentifier];

LABEL_7:

  return v6;
}

- (id)_tabWithUUID:(id)d inContainer:(id)container
{
  dCopy = d;
  v7 = [(PinnedTabsManager *)self _tabsByUUIDInContainer:container];
  v8 = [v7 objectForKeyedSubscript:dCopy];

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

- (id)containerForTabWithUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_pinnedTabsByUUID objectForKeyedSubscript:dCopy];

  if (v5)
  {
    v6 = 0;
LABEL_5:
    v8 = [PinnedTabsContainer containerWithPrivateBrowsing:v6];
    goto LABEL_6;
  }

  v7 = [(NSMutableDictionary *)self->_privatePinnedTabsByUUID objectForKeyedSubscript:dCopy];

  if (v7)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:dCopy];

        if (v17)
        {
          v8 = [PinnedTabsContainer containerWithActiveProfileIdentifier:v15];

          goto LABEL_6;
        }
      }

      v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)tabWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_pinnedTabsByUUID objectForKeyedSubscript:dCopy];
  if (v5 || ([(NSMutableDictionary *)self->_privatePinnedTabsByUUID objectForKeyedSubscript:dCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    allValues = v5;
    v7 = [v5 copy];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier allValues];
    v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:dCopy];
          if (v11)
          {
            v12 = v11;
            v7 = [v11 copy];

            allValues = v12;
            goto LABEL_4;
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)updatePinnedTabWithUUID:(id)d inContainer:(id)container usingBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  blockCopy = block;
  v11 = [(PinnedTabsManager *)self _tabWithUUID:dCopy inContainer:containerCopy];
  if (v11)
  {
    blockCopy[2](blockCopy, v11);
    [(WBTabCollection *)self->_tabCollection saveItem:v11 completionHandler:0];
    [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:containerCopy];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = dCopy;
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_INFO, "Not updating pinned tab with uuid %{public}@ because it does not exist.", &v13, 0xCu);
    }
  }
}

- (void)updatePinnedTabsInContainer:(id)container usingBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  blockCopy = block;
  v8 = [(PinnedTabsManager *)self _tabsByUUIDInContainer:containerCopy];
  v9 = blockCopy[2](blockCopy, v8);

  v10 = [(PinnedTabsManager *)self _tabsInContainer:containerCopy];
  if (([v9 isEqualToArray:v10] & 1) == 0)
  {
    v19 = blockCopy;
    [v10 removeAllObjects];
    [v10 addObjectsFromArray:v9];
    v18 = [(PinnedTabsManager *)self _pinnedTabsFolderIDForContainer:containerCopy];
    isPrivateBrowsingEnabled = [containerCopy isPrivateBrowsingEnabled];
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
          [v17 setInUnnamedTabGroup:isPrivateBrowsingEnabled ^ 1];
          [v17 setPrivateBrowsing:isPrivateBrowsingEnabled];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(WBTabCollection *)self->_tabCollection updateItems:v9 inParentWithID:v18 completionHandler:0];
    [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:containerCopy];
    [(PinnedTabsManager *)self _updateCache];
    blockCopy = v19;
  }
}

- (id)duplicateTab:(id)tab
{
  v16[1] = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  uuid = [tabCopy uuid];
  v6 = [(PinnedTabsManager *)self containerForTabWithUUID:uuid];

  v7 = [(PinnedTabsManager *)self _tabsInContainer:v6];
  v8 = [v7 indexOfObject:tabCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    mutableDuplicate = [tabCopy mutableDuplicate];
    [mutableDuplicate setSyncable:0];
    [v7 insertObject:mutableDuplicate atIndex:v10 + 1];
    v12 = [(PinnedTabsManager *)self _pinnedTabsFolderIDForContainer:v6];
    tabCollection = self->_tabCollection;
    v16[0] = mutableDuplicate;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(WBTabCollection *)tabCollection insertItems:v14 inParentWithID:v12 afterItem:tabCopy];

    [(PinnedTabsManager *)self _cacheTab:mutableDuplicate inContainer:v6];
    [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:v6];
    v9 = [mutableDuplicate copy];
  }

  return v9;
}

- (void)appendTab:(id)tab inContainer:(id)container
{
  v14[1] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  tabCopy = tab;
  v8 = [(PinnedTabsManager *)self _tabsInContainer:containerCopy];
  isPrivateBrowsingEnabled = [containerCopy isPrivateBrowsingEnabled];
  lastObject = [v8 lastObject];
  [v8 addObject:tabCopy];
  [tabCopy setSyncable:0];
  [tabCopy didRemoveFromTabGroup];
  [tabCopy setInUnnamedTabGroup:isPrivateBrowsingEnabled ^ 1];
  [tabCopy setPrivateBrowsing:isPrivateBrowsingEnabled];
  v11 = [(PinnedTabsManager *)self _pinnedTabsFolderIDForContainer:containerCopy];
  tabCollection = self->_tabCollection;
  v14[0] = tabCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(WBTabCollection *)tabCollection insertItems:v13 inParentWithID:v11 afterItem:lastObject];

  [(PinnedTabsManager *)self _cacheTab:tabCopy inContainer:containerCopy];
  [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInContainer:containerCopy];
}

- (void)moveTab:(id)tab toTabGroup:(id)group afterTab:(id)afterTab
{
  v13[1] = *MEMORY[0x277D85DE8];
  afterTabCopy = afterTab;
  groupCopy = group;
  tabCopy = tab;
  uuid = [tabCopy uuid];
  [(PinnedTabsManager *)self removeTabWithUUID:uuid persist:0];

  v13[0] = tabCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  [groupCopy insertTabs:v12 afterTab:afterTabCopy];
}

- (void)removeTabWithUUID:(id)d persist:(BOOL)persist
{
  persistCopy = persist;
  v33[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  pinnedTabs = self->_pinnedTabs;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __47__PinnedTabsManager_removeTabWithUUID_persist___block_invoke;
  v30[3] = &unk_2781D8A30;
  v8 = dCopy;
  v31 = v8;
  v9 = [(NSMutableArray *)pinnedTabs safari_firstObjectPassingTest:v30];
  v10 = v9;
  if (v9)
  {
    pinnedTabsByUUID = self->_pinnedTabsByUUID;
    uuid = [v9 uuid];
    [(NSMutableDictionary *)pinnedTabsByUUID removeObjectForKey:uuid];

    [(NSMutableArray *)self->_pinnedTabs removeObject:v10];
    if (persistCopy)
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
      uuid2 = [v17 uuid];
      [(NSMutableDictionary *)privatePinnedTabsByUUID removeObjectForKey:uuid2];

      [(NSMutableArray *)self->_privatePinnedTabs removeObject:v18];
      if (persistCopy)
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
    selfCopy = self;
    v27 = persistCopy;
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

- (void)willSelectProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSCountedSet *)self->_activeProfileIdentifiers containsObject:?]& 1) == 0)
  {
    [(PinnedTabsManager *)self _loadPinnedTabsForProfileWithIdentifier:identifierCopy];
  }

  [(NSCountedSet *)self->_activeProfileIdentifiers addObject:identifierCopy];
}

- (void)didDeselectProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSCountedSet *)self->_activeProfileIdentifiers removeObject:identifierCopy];
  if (([(NSCountedSet *)self->_activeProfileIdentifiers containsObject:identifierCopy]& 1) == 0)
  {
    [(PinnedTabsManager *)self _clearPinnedTabsForProfileWithIdentifier:identifierCopy];
  }
}

- (void)_loadPinnedTabsForProfileWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(WBTabCollection *)self->_tabCollection pinnedTabsForProfileWithIdentifier:identifierCopy];
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_12];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    array = v7;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v10 = array;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        uuid = [v17 uuid];
        [dictionary setObject:v17 forKeyedSubscript:uuid];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [(NSMutableDictionary *)self->_pinnedTabsByProfileIdentifier setObject:v12 forKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier setObject:dictionary forKeyedSubscript:identifierCopy];
}

id __61__PinnedTabsManager__loadPinnedTabsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

- (void)_clearPinnedTabsForProfileWithIdentifier:(id)identifier
{
  pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
  identifierCopy = identifier;
  [(NSMutableDictionary *)pinnedTabsByProfileIdentifier setObject:0 forKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->_pinnedTabsByUUIDAndProfileIdentifier setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)performUpdatesUsingBlock:(id)block
{
  ++self->_updateSuppressionCount;
  (*(block + 2))(block, a2);
  --self->_updateSuppressionCount;

  [(PinnedTabsManager *)self _notifyObserversAfterUpdatesIfNeeded];
}

- (void)addPinnedTabsObserver:(id)observer
{
  observerCopy = observer;
  [(NSHashTable *)self->_observers addObject:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy pinnedTabsManager:self didUpdatePinnedTabs:self->_pinnedTabs isPrivate:0];
    [observerCopy pinnedTabsManager:self didUpdatePinnedTabs:self->_privatePinnedTabs isPrivate:1];
  }

  if (objc_opt_respondsToSelector())
  {
    pinnedTabsByProfileIdentifier = self->_pinnedTabsByProfileIdentifier;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__PinnedTabsManager_addPinnedTabsObserver___block_invoke;
    v6[3] = &unk_2781D8A80;
    v7 = observerCopy;
    selfCopy = self;
    [(NSMutableDictionary *)pinnedTabsByProfileIdentifier enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)notifyObserversOfUpdatedPinnedTabsInContainer:(id)container
{
  containerCopy = container;
  if ([containerCopy isPrivateBrowsingEnabled])
  {
    selfCopy2 = self;
    v5 = 1;
LABEL_5:
    [(PinnedTabsManager *)selfCopy2 notifyObserversOfUpdatedPinnedTabsIsPrivate:v5];
    goto LABEL_7;
  }

  if ([containerCopy isInDefaultProfile])
  {
    selfCopy2 = self;
    v5 = 0;
    goto LABEL_5;
  }

  activeProfileIdentifier = [containerCopy activeProfileIdentifier];
  [(PinnedTabsManager *)self notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:activeProfileIdentifier];

LABEL_7:
}

- (void)notifyObserversOfUpdatedPinnedTabsIsPrivate:(BOOL)private
{
  privateCopy = private;
  v18 = *MEMORY[0x277D85DE8];
  if (self->_updateSuppressionCount)
  {
    v5 = 1;
    if (private)
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
      if (privateCopy)
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
            [v12 pinnedTabsManager:self didUpdatePinnedTabs:*(&self->super.isa + v10) isPrivate:{privateCopy, v13}];
          }
        }

        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)notifyObserversOfUpdatedPinnedTabsInProfileWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self->_updateSuppressionCount)
  {
    [(NSMutableSet *)self->_pendingUpdatedProfileIdentifiers addObject:identifierCopy];
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
            v11 = [(NSMutableDictionary *)self->_pinnedTabsByProfileIdentifier objectForKeyedSubscript:identifierCopy, v12];
            [v10 pinnedTabsManager:self didUpdatePinnedTabs:v11 inProfileWithIdentifier:identifierCopy];
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