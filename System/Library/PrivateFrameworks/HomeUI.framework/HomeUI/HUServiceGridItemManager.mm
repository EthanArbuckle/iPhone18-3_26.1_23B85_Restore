@interface HUServiceGridItemManager
- (HUServiceGridItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUServiceGridItemManager)initWithDelegate:(id)delegate sourceItem:(id)item shouldGroupByRoom:(BOOL)room shouldShowSectionHeaders:(BOOL)headers itemProvidersCreator:(id)creator;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (id)_roomComparator;
- (id)_roomForItem:(id)item;
@end

@implementation HUServiceGridItemManager

- (HUServiceGridItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_sourceItem_shouldGroupByRoom_shouldShowSectionHeaders_itemProvidersCreator_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceGridItemManager.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HUServiceGridItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUServiceGridItemManager)initWithDelegate:(id)delegate sourceItem:(id)item shouldGroupByRoom:(BOOL)room shouldShowSectionHeaders:(BOOL)headers itemProvidersCreator:(id)creator
{
  creatorCopy = creator;
  v16.receiver = self;
  v16.super_class = HUServiceGridItemManager;
  v13 = [(HFItemManager *)&v16 initWithDelegate:delegate sourceItem:item];
  v14 = v13;
  if (v13)
  {
    [(HUServiceGridItemManager *)v13 setItemProvidersCreator:creatorCopy];
    v14->_shouldGroupByRoom = room;
    v14->_shouldShowSectionHeaders = headers;
  }

  return v14;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  itemProvidersCreator = [(HUServiceGridItemManager *)self itemProvidersCreator];
  v6 = (itemProvidersCreator)[2](itemProvidersCreator, homeCopy);

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v60 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v48 = objc_opt_new();
  v5 = objc_opt_new();
  table = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v6 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    v11 = 0x277D14000uLL;
    obj = *v55;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v5;
LABEL_13:
          [v14 addObject:v13];
          continue;
        }

        if (![(HUServiceGridItemManager *)self shouldGroupByRoom])
        {
          v14 = v6;
          goto LABEL_13;
        }

        v15 = v11;
        v16 = v6;
        v17 = v7;
        v18 = v5;
        v19 = [(HUServiceGridItemManager *)self _roomForItem:v13];
        v20 = [(NSMapTable *)table objectForKey:v19];
        if (!v20)
        {
          v20 = objc_opt_new();
          [(NSMapTable *)table setObject:v20 forKey:v19];
        }

        [v20 addObject:v13];

        v5 = v18;
        v7 = v17;
        v6 = v16;
        v11 = v15;
        v10 = obj;
      }

      v9 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    v21 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUServiceGridActionSetsSectionIdentifier"];
    if ([(HUServiceGridItemManager *)self shouldShowSectionHeaders])
    {
      v22 = _HULocalizedStringWithDefaultValue(@"HUGridScenesSectionTitle", @"HUGridScenesSectionTitle", 1);
      [v21 setHeaderTitle:v22];
    }

    else
    {
      [v21 setHeaderTitle:0];
    }

    identifier = [v21 identifier];
    v24 = [(HFItemManager *)self _sortedItems:v5 forSectionIdentifier:identifier];
    [v21 setItems:v24];

    [v48 addObject:v21];
    -[HUServiceGridItemManager setActionSetSectionIndex:](self, "setActionSetSectionIndex:", [v48 count] - 1);
  }

  if ([(HUServiceGridItemManager *)self shouldGroupByRoom])
  {
    v25 = NSAllMapTableKeys(table);
    if ([v25 count])
    {
      v45 = v5;
      _roomComparator = [(HUServiceGridItemManager *)self _roomComparator];
      v44 = v25;
      v27 = [v25 sortedArrayUsingComparator:_roomComparator];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obja = v27;
      v28 = [obja countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v51;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(obja);
            }

            v32 = *(*(&v50 + 1) + 8 * j);
            v33 = objc_alloc(MEMORY[0x277D14850]);
            uniqueIdentifier = [v32 uniqueIdentifier];
            uUIDString = [uniqueIdentifier UUIDString];
            v36 = [v33 initWithIdentifier:uUIDString];

            if ([(HUServiceGridItemManager *)self shouldShowSectionHeaders])
            {
              name = [v32 name];
              [v36 setHeaderTitle:name];
            }

            else
            {
              [v36 setHeaderTitle:0];
            }

            v38 = [(NSMapTable *)table objectForKey:v32];
            identifier2 = [v36 identifier];
            v40 = [(HFItemManager *)self _sortedItems:v38 forSectionIdentifier:identifier2];
            [v36 setItems:v40];

            [v48 addObject:v36];
          }

          v29 = [obja countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v29);
      }

      v25 = v44;
      v5 = v45;
    }
  }

  else
  {
    if (![v6 count])
    {
      goto LABEL_37;
    }

    v25 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUServiceGridAllServicesSectionIdentifier"];
    identifier3 = [v25 identifier];
    v42 = [(HFItemManager *)self _sortedItems:v6 forSectionIdentifier:identifier3];
    [v25 setItems:v42];

    [v48 addObject:v25];
  }

LABEL_37:

  return v48;
}

- (id)_itemsToHideInSet:(id)set
{
  v24 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v22.receiver = self;
  v22.super_class = HUServiceGridItemManager;
  v5 = [(HFItemManager *)&v22 _itemsToHideInSet:setCopy];
  v6 = [v5 mutableCopy];

  delegate = [(HFItemManager *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = setCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          delegate2 = [(HFItemManager *)self delegate];
          v16 = [delegate2 serviceGridItemManager:self shouldHideItem:v14];

          if (v16)
          {
            [v6 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return v6;
}

uint64_t __60__HUServiceGridItemManager__comparatorForSectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = __60__HUServiceGridItemManager__comparatorForSectionIdentifier___block_invoke_2(v4);
  v7 = __60__HUServiceGridItemManager__comparatorForSectionIdentifier___block_invoke_2(v5);
  v8 = v7;
  if (!v6 || !v7)
  {
    goto LABEL_7;
  }

  v9 = [v6 matterEndpointID];
  v10 = [v8 matterEndpointID];
  v11 = v10;
  if (!v9 || !v10)
  {

LABEL_7:
    v9 = [MEMORY[0x277D14778] defaultItemComparator];
    v12 = (v9)[2](v9, v4, v5);
    goto LABEL_8;
  }

  v12 = [v9 compare:v10];

LABEL_8:
  return v12;
}

id __60__HUServiceGridItemManager__comparatorForSectionIdentifier___block_invoke_2(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_28251AFC0])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 services];

  v5 = [v4 anyObject];

  return v5;
}

- (id)_roomComparator
{
  home = [(HFItemManager *)self home];
  hf_dashboardSectionReorderableHomeKitObjectComparator = [home hf_dashboardSectionReorderableHomeKitObjectComparator];

  return hf_dashboardSectionReorderableHomeKitObjectComparator;
}

- (id)_roomForItem:(id)item
{
  latestResults = [item latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14090]];

  if (!v5 || (-[HFItemManager home](self, "home"), v6 = objc_claimAutoreleasedReturnValue(), [v6 hf_roomWithIdentifier:v5], roomForEntireHome = objc_claimAutoreleasedReturnValue(), v6, !roomForEntireHome))
  {
    home = [(HFItemManager *)self home];
    roomForEntireHome = [home roomForEntireHome];
  }

  return roomForEntireHome;
}

@end