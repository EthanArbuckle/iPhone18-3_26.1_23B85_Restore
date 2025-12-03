@interface HUServiceGroupEditorGridItemManager
- (BOOL)_shouldHideServiceItem:(id)item containedInServiceGroupItem:(id)groupItem;
- (HUServiceGroupEditorGridItemManager)initWithDelegate:(id)delegate shouldGroupByRoom:(BOOL)room itemProvidersCreator:(id)creator;
- (HUServiceGroupEditorGridItemManager)initWithServiceGroupBuilder:(id)builder delegate:(id)delegate;
- (id)_itemsToHideInSet:(id)set;
- (id)_roomComparator;
@end

@implementation HUServiceGroupEditorGridItemManager

- (HUServiceGroupEditorGridItemManager)initWithDelegate:(id)delegate shouldGroupByRoom:(BOOL)room itemProvidersCreator:(id)creator
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithServiceGroupBuilder_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceGroupEditorGridItemManager.m" lineNumber:29 description:{@"%s is unavailable; use %@ instead", "-[HUServiceGroupEditorGridItemManager initWithDelegate:shouldGroupByRoom:itemProvidersCreator:]", v8}];

  return 0;
}

- (HUServiceGroupEditorGridItemManager)initWithServiceGroupBuilder:(id)builder delegate:(id)delegate
{
  builderCopy = builder;
  delegateCopy = delegate;
  v9 = [HUSelectableServiceGridViewController defaultItemProviderCreatorWithOptions:9];
  v17.receiver = self;
  v17.super_class = HUServiceGroupEditorGridItemManager;
  v10 = [(HUServiceGridItemManager *)&v17 initWithDelegate:delegateCopy shouldGroupByRoom:1 itemProvidersCreator:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_serviceGroupBuilder, builder);
    v11 = MEMORY[0x277CBEB98];
    serviceGroupBuilder = [(HUServiceGroupEditorGridItemManager *)v10 serviceGroupBuilder];
    services = [serviceGroupBuilder services];
    v14 = [services na_map:&__block_literal_global_108];
    v15 = [v11 setWithArray:v14];
    [(HUServiceGroupEditorGridItemManager *)v10 setPrioritizedRooms:v15];
  }

  return v10;
}

- (id)_itemsToHideInSet:(id)set
{
  v32 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v30.receiver = self;
  v30.super_class = HUServiceGroupEditorGridItemManager;
  v5 = [(HUServiceGridItemManager *)&v30 _itemsToHideInSet:setCopy];
  v24 = [v5 mutableCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = setCopy;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if (([v10 conformsToProtocol:&unk_28251AFC0] & 1) == 0)
        {
          NSLog(&cfstr_ItemDoesnTConf.isa, v10);
        }

        if ([v10 conformsToProtocol:&unk_28251AFC0])
        {
          v11 = v10;
          services = [v11 services];
          v13 = [services count];

          services2 = [v11 services];
          anyObject = [services2 anyObject];

          if (v13 != 1 || (-[HUServiceGroupEditorGridItemManager serviceGroupBuilder](self, "serviceGroupBuilder"), v16 = objc_claimAutoreleasedReturnValue(), [v16 services], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", anyObject), v17, v16, (v18 & 1) == 0) && (-[HUServiceGroupEditorGridItemManager serviceGroupBuilder](self, "serviceGroupBuilder"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "services"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "anyObject"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v19, "shouldAllowAddingService:", v21), v21, v20, v19, (v22 & 1) == 0))
          {
            [v24 addObject:v11];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  return v24;
}

- (BOOL)_shouldHideServiceItem:(id)item containedInServiceGroupItem:(id)groupItem
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUServiceGroupEditorGridItemManager;
  v7 = [(HFItemManager *)&v15 _shouldHideServiceItem:itemCopy containedInServiceGroupItem:groupItem];
  v8 = MEMORY[0x277CBEB98];
  serviceGroupBuilder = [(HUServiceGroupEditorGridItemManager *)self serviceGroupBuilder];
  services = [serviceGroupBuilder services];
  v11 = [v8 setWithArray:services];

  v12 = [MEMORY[0x277CBEB98] set];
  if ([itemCopy conformsToProtocol:&unk_28251AFC0])
  {
    services2 = [itemCopy services];

    v12 = services2;
  }

  if (v7)
  {
    v7 = [v11 intersectsSet:v12] ^ 1;
  }

  return v7;
}

- (id)_roomComparator
{
  prioritizedRooms = [(HUServiceGroupEditorGridItemManager *)self prioritizedRooms];
  v12.receiver = self;
  v12.super_class = HUServiceGroupEditorGridItemManager;
  _roomComparator = [(HUServiceGridItemManager *)&v12 _roomComparator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HUServiceGroupEditorGridItemManager__roomComparator__block_invoke;
  v9[3] = &unk_277DBCF50;
  v10 = prioritizedRooms;
  v11 = _roomComparator;
  v5 = _roomComparator;
  v6 = prioritizedRooms;
  v7 = _Block_copy(v9);

  return v7;
}

uint64_t __54__HUServiceGroupEditorGridItemManager__roomComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) containsObject:v5];
  if (v7 == [*(a1 + 32) containsObject:v6])
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  else if (v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end