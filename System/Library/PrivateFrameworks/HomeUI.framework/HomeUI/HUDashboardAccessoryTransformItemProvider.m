@interface HUDashboardAccessoryTransformItemProvider
- (BOOL)wantsRoomTransformForItem:(id)a3;
- (HMHome)home;
- (HUDashboardAccessoryTransformItemProvider)initWithSourceProvider:(id)a3 inHome:(id)a4;
- (id)_roomTransformedItemsForItem:(id)a3;
- (id)allTransformedItemsForItem:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
- (id)roomTransformedItemsForItem:(id)a3;
- (id)transformSourceResults:(id)a3;
- (void)clearTransformedItemsForItem:(id)a3;
@end

@implementation HUDashboardAccessoryTransformItemProvider

- (HUDashboardAccessoryTransformItemProvider)initWithSourceProvider:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HUDashboardAccessoryTransformItemProvider;
  v9 = [(HFItemProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceItemProvider, a3);
    v11 = [MEMORY[0x277CBEB58] set];
    allItems = v10->_allItems;
    v10->_allItems = v11;

    v13 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    roomTransformedItems = v10->_roomTransformedItems;
    v10->_roomTransformedItems = v13;

    objc_storeWeak(&v10->_home, v8);
    v10->_splitAccessoryGroupsByRoom = 1;
  }

  return v10;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HUDashboardAccessoryTransformItemProvider *)self sourceItemProvider];
  v4 = [v3 reloadItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HUDashboardAccessoryTransformItemProvider_reloadItems__block_invoke;
  v7[3] = &unk_277DB7FA8;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
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
  v3 = [(HFItemProvider *)&v11 invalidationReasons];
  v4 = [v3 mutableCopy];

  v5 = [(HUDashboardAccessoryTransformItemProvider *)self sourceItemProvider];
  v6 = [v5 invalidationReasons];
  [v4 unionSet:v6];

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

- (id)transformSourceResults:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v30 = v4;
    v8 = [v4 addedItems];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
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
            objc_enumerationMutation(v8);
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

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v10);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [v30 existingItems];
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
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
            objc_enumerationMutation(v15);
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

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v17);
    }

    v22 = [(HUDashboardAccessoryTransformItemProvider *)self allItems];
    v23 = [v6 na_setByRemovingObjectsFromSet:v22];

    v24 = [(HUDashboardAccessoryTransformItemProvider *)self allItems];
    v25 = [v6 na_setByIntersectingWithSet:v24];

    v26 = [(HUDashboardAccessoryTransformItemProvider *)self allItems];
    v27 = [v26 na_setByRemovingObjectsFromSet:v6];

    v28 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:v23 removedItems:v27 existingItems:v25];
    v4 = v30;
  }

  else
  {
    v28 = v4;
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

- (id)roomTransformedItemsForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItems];
  v6 = [v5 objectForKey:v4];

  v7 = [(HUDashboardAccessoryTransformItemProvider *)self _roomTransformedItemsForItem:v4];

  v8 = [MEMORY[0x277D14AE8] diffFromSet:v6 toSet:v7];
  v9 = [v8 additions];
  v10 = [v8 deletions];
  v11 = [v8 toSet];
  v12 = [v6 na_setByIntersectingWithSet:v11];

  v13 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:v9 removedItems:v10 existingItems:v12];

  return v13;
}

- (id)_roomTransformedItemsForItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryRepresentableObject];
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(HUDashboardAccessoryTransformItemProvider *)self home];
  v8 = [v7 hf_allRooms];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v5 hf_isInRoom:v13])
        {
          v14 = [[HUSplitRoomTransformedItem alloc] initWithSourceItem:v4 room:v13];
          [v6 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v6 copy];

  return v15;
}

- (id)allTransformedItemsForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItems];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)clearTransformedItemsForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUDashboardAccessoryTransformItemProvider *)self roomTransformedItems];
  [v5 removeObjectForKey:v4];
}

- (BOOL)wantsRoomTransformForItem:(id)a3
{
  v4 = a3;
  if ([(HUDashboardAccessoryTransformItemProvider *)self splitAccessoryGroupsByRoom])
  {
    v5 = [v4 accessoryRepresentableObject];
    v6 = [v5 hf_canSpanMultipleRooms];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

@end