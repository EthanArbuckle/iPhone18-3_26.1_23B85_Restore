@interface HUDashboardAccessoryTransformItemProvider
- (BOOL)wantsRoomTransformForItem:(id)item;
- (HMHome)home;
- (HUDashboardAccessoryTransformItemProvider)initWithSourceProvider:(id)provider inHome:(id)home;
- (id)_roomTransformedItemsForItem:(id)item;
- (id)allTransformedItemsForItem:(id)item;
- (id)invalidationReasons;
- (id)reloadItems;
- (id)roomTransformedItemsForItem:(id)item;
- (id)transformSourceResults:(id)results;
- (void)clearTransformedItemsForItem:(id)item;
@end

@implementation HUDashboardAccessoryTransformItemProvider

- (HUDashboardAccessoryTransformItemProvider)initWithSourceProvider:(id)provider inHome:(id)home
{
  providerCopy = provider;
  homeCopy = home;
  v16.receiver = self;
  v16.super_class = HUDashboardAccessoryTransformItemProvider;
  v9 = [(HFItemProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceItemProvider, provider);
    v11 = [MEMORY[0x277CBEB58] set];
    allItems = v10->_allItems;
    v10->_allItems = v11;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    roomTransformedItems = v10->_roomTransformedItems;
    v10->_roomTransformedItems = strongToStrongObjectsMapTable;

    objc_storeWeak(&v10->_home, homeCopy);
    v10->_splitAccessoryGroupsByRoom = 1;
  }

  return v10;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  sourceItemProvider = [(HUDashboardAccessoryTransformItemProvider *)self sourceItemProvider];
  reloadItems = [sourceItemProvider reloadItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HUDashboardAccessoryTransformItemProvider_reloadItems__block_invoke;
  v7[3] = &unk_277DB7FA8;
  objc_copyWeak(&v8, &location);
  v5 = [reloadItems flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

id __56__HUDashboardAccessoryTransformItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained transformSourceResults:v3];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:0 removedItems:0 existingItems:0];
  }

  v7 = v6;
  v8 = [v5 allItems];
  v9 = [v7 allItems];
  [v8 setSet:v9];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v10;
}

- (id)invalidationReasons
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUDashboardAccessoryTransformItemProvider;
  invalidationReasons = [(HFItemProvider *)&v11 invalidationReasons];
  v4 = [invalidationReasons mutableCopy];

  sourceItemProvider = [(HUDashboardAccessoryTransformItemProvider *)self sourceItemProvider];
  invalidationReasons2 = [sourceItemProvider invalidationReasons];
  [v4 unionSet:invalidationReasons2];

  if ([(HUDashboardAccessoryTransformItemProvider *)self splitAccessoryGroupsByRoom])
  {
    v7 = *MEMORY[0x277D13B70];
    v12[0] = *MEMORY[0x277D13B60];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [v4 addObjectsFromArray:v8];
  }

  v9 = [v4 copy];

  return v9;
}

- (id)transformSourceResults:(id)results
{
  v43 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if ([(HUDashboardAccessoryTransformItemProvider *)self needsTransform])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__HUDashboardAccessoryTransformItemProvider_transformSourceResults___block_invoke;
    aBlock[3] = &unk_277DBF530;
    aBlock[4] = self;
    v6 = v5;
    v40 = v6;
    v7 = _Block_copy(aBlock);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = resultsCopy;
    addedItems = [resultsCopy addedItems];
    v9 = [addedItems countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(addedItems);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          if ([(HUDashboardAccessoryTransformItemProvider *)self wantsRoomTransformForItem:v13])
          {
            v14 = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItemsForItem:v13];
            v7[2](v7, v14, v13);
          }

          else
          {
            [v6 addObject:v13];
          }
        }

        v10 = [addedItems countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v10);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    existingItems = [v30 existingItems];
    v16 = [existingItems countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(existingItems);
          }

          v20 = *(*(&v31 + 1) + 8 * j);
          if ([(HUDashboardAccessoryTransformItemProvider *)self wantsRoomTransformForItem:v20])
          {
            v21 = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItemsForItem:v20];
            v7[2](v7, v21, v20);
          }

          else
          {
            [v6 addObject:v20];
          }
        }

        v17 = [existingItems countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v17);
    }

    allItems = [(HUDashboardAccessoryTransformItemProvider *)self allItems];
    v23 = [v6 na_setByRemovingObjectsFromSet:allItems];

    allItems2 = [(HUDashboardAccessoryTransformItemProvider *)self allItems];
    v25 = [v6 na_setByIntersectingWithSet:allItems2];

    allItems3 = [(HUDashboardAccessoryTransformItemProvider *)self allItems];
    v27 = [allItems3 na_setByRemovingObjectsFromSet:v6];

    v28 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:v23 removedItems:v27 existingItems:v25];
    resultsCopy = v30;
  }

  else
  {
    v28 = resultsCopy;
  }

  return v28;
}

void __68__HUDashboardAccessoryTransformItemProvider_transformSourceResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 roomTransformedItems];
  v9 = [v7 allItems];
  [v8 setObject:v9 forKey:v6];

  v10 = *(a1 + 40);
  v11 = [v7 allItems];

  [v10 unionSet:v11];
}

- (id)roomTransformedItemsForItem:(id)item
{
  itemCopy = item;
  roomTransformedItems = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItems];
  v6 = [roomTransformedItems objectForKey:itemCopy];

  v7 = [(HUDashboardAccessoryTransformItemProvider *)self _roomTransformedItemsForItem:itemCopy];

  v8 = [MEMORY[0x277D14AE8] diffFromSet:v6 toSet:v7];
  additions = [v8 additions];
  deletions = [v8 deletions];
  toSet = [v8 toSet];
  v12 = [v6 na_setByIntersectingWithSet:toSet];

  v13 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:additions removedItems:deletions existingItems:v12];

  return v13;
}

- (id)_roomTransformedItemsForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  accessoryRepresentableObject = [itemCopy accessoryRepresentableObject];
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  home = [(HUDashboardAccessoryTransformItemProvider *)self home];
  hf_allRooms = [home hf_allRooms];

  v9 = [hf_allRooms countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(hf_allRooms);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([accessoryRepresentableObject hf_isInRoom:v13])
        {
          v14 = [[HUSplitRoomTransformedItem alloc] initWithSourceItem:itemCopy room:v13];
          [v6 addObject:v14];
        }
      }

      v10 = [hf_allRooms countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v6 copy];

  return v15;
}

- (id)allTransformedItemsForItem:(id)item
{
  itemCopy = item;
  roomTransformedItems = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItems];
  v6 = [roomTransformedItems objectForKey:itemCopy];

  return v6;
}

- (void)clearTransformedItemsForItem:(id)item
{
  itemCopy = item;
  roomTransformedItems = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItems];
  [roomTransformedItems removeObjectForKey:itemCopy];
}

- (BOOL)wantsRoomTransformForItem:(id)item
{
  itemCopy = item;
  if ([(HUDashboardAccessoryTransformItemProvider *)self splitAccessoryGroupsByRoom])
  {
    accessoryRepresentableObject = [itemCopy accessoryRepresentableObject];
    hf_canSpanMultipleRooms = [accessoryRepresentableObject hf_canSpanMultipleRooms];
  }

  else
  {
    hf_canSpanMultipleRooms = 0;
  }

  return hf_canSpanMultipleRooms;
}

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

@end