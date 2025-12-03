@interface HUMatterConnectedEcosystemDetailItemManager
- (HUMatterConnectedEcosystemDetailItemManager)initWithConnectedEcosystem:(id)ecosystem connectedEcosystemItemProvider:(id)provider delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_roomForItem:(id)item;
@end

@implementation HUMatterConnectedEcosystemDetailItemManager

- (HUMatterConnectedEcosystemDetailItemManager)initWithConnectedEcosystem:(id)ecosystem connectedEcosystemItemProvider:(id)provider delegate:(id)delegate
{
  ecosystemCopy = ecosystem;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = HUMatterConnectedEcosystemDetailItemManager;
  v11 = [(HFItemManager *)&v15 initWithDelegate:delegate sourceItem:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connectedEcosystem, ecosystem);
    objc_storeStrong(&v12->_connectedEcosystemItemProvider, provider);
    home = [providerCopy home];
    [(HFItemManager *)v12 setHome:home];
  }

  return v12;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = [HUInstructionsItem alloc];
  connectedEcosystem = [(HUMatterConnectedEcosystemDetailItemManager *)self connectedEcosystem];
  vendor = [connectedEcosystem vendor];
  name = [vendor name];
  v14 = HULocalizedStringWithFormat(@"HUMatterConnectedEcosystemDetailInfoTitle", @"%@", v8, v9, v10, v11, v12, v13, name);
  v15 = [(HUInstructionsItem *)v4 initWithStyle:4 title:v14 description:0];
  [(HUMatterConnectedEcosystemDetailItemManager *)self setInstructionsItem:v15];

  v16 = objc_alloc(MEMORY[0x277D14B40]);
  v17 = MEMORY[0x277CBEB98];
  instructionsItem = [(HUMatterConnectedEcosystemDetailItemManager *)self instructionsItem];
  v19 = [v17 setWithObject:instructionsItem];
  v20 = [v16 initWithItems:v19];

  v21 = [HUMatterConnectedEcosystemDetailItemProvider alloc];
  connectedEcosystem2 = [(HUMatterConnectedEcosystemDetailItemManager *)self connectedEcosystem];
  connectedEcosystemItemProvider = [(HUMatterConnectedEcosystemDetailItemManager *)self connectedEcosystemItemProvider];
  home = [(HFItemManager *)self home];
  v25 = [(HUMatterConnectedEcosystemDetailItemProvider *)v21 initWithConnectedEcosystem:connectedEcosystem2 connectedEcosystemItemProvider:connectedEcosystemItemProvider home:home];

  v26 = [objc_alloc(MEMORY[0x277D14C38]) initWithSourceProvider:v25 transformationBlock:&__block_literal_global_12];
  [(HUMatterConnectedEcosystemDetailItemManager *)self setConnectedEcosystemAccessoryItemProvider:v26];

  v30[0] = v20;
  connectedEcosystemAccessoryItemProvider = [(HUMatterConnectedEcosystemDetailItemManager *)self connectedEcosystemAccessoryItemProvider];
  v30[1] = connectedEcosystemAccessoryItemProvider;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  return v28;
}

id __74__HUMatterConnectedEcosystemDetailItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14C30];
  v3 = a2;
  v4 = [[v2 alloc] initWithSourceItem:v3 transformationBlock:&__block_literal_global_15];

  return v4;
}

id __74__HUMatterConnectedEcosystemDetailItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  objc_opt_class();
  v7 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13F00]];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 serviceName];
  [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v11 = *MEMORY[0x277D13E88];
  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  v13 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];

  v14 = [MEMORY[0x277D14AC0] displayIconDescriptorFromIconDescriptor:v12 symbolName:v13];
  [v6 setObject:v14 forKeyedSubscript:v11];

  v15 = [v6 copy];

  return v15;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v40[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ConnectedEcosystemDetailInstructions"];
  instructionsItem = [(HUMatterConnectedEcosystemDetailItemManager *)self instructionsItem];
  v40[0] = instructionsItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v6 setItems:v8];

  v31 = v6;
  v32 = array;
  [array addObject:v6];
  connectedEcosystemAccessoryItemProvider = [(HUMatterConnectedEcosystemDetailItemManager *)self connectedEcosystemAccessoryItemProvider];
  items = [connectedEcosystemAccessoryItemProvider items];
  allObjects = [items allObjects];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __80__HUMatterConnectedEcosystemDetailItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v37[3] = &unk_277DB8040;
  v37[4] = self;
  v12 = v5;
  v38 = v12;
  [allObjects na_each:v37];

  home = [(HFItemManager *)self home];
  hf_orderedRooms = [home hf_orderedRooms];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = hf_orderedRooms;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        uniqueIdentifier = [v20 uniqueIdentifier];
        v22 = [v12 objectForKeyedSubscript:uniqueIdentifier];

        items2 = [v22 items];
        v24 = [items2 count];

        if (v24)
        {
          v25 = [objc_alloc(MEMORY[0x277D149B0]) initWithApplicationDataContainer:v20 category:@"roomAccessories"];
          items3 = [v22 items];
          sortedHomeKitItemComparator = [v25 sortedHomeKitItemComparator];
          v28 = [items3 sortedArrayUsingComparator:sortedHomeKitItemComparator];
          [v22 setItems:v28];

          [v22 setForceShowHeaderTitle:1];
          [v32 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v17);
  }

  v29 = [v32 copy];

  return v29;
}

void __80__HUMatterConnectedEcosystemDetailItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sourceItem];
  v6 = [v4 _roomForItem:v5];

  if (v6)
  {
    v7 = [v6 uniqueIdentifier];
    v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 items];
      v11 = [v10 arrayByAddingObject:v3];
      [v9 setItems:v11];
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277D14850]);
      v13 = [v7 UUIDString];
      v9 = [v12 initWithIdentifier:v13];

      v16[0] = v3;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [v9 setItems:v14];

      v15 = [v6 name];
      [v9 setHeaderTitle:v15];

      [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
    }
  }
}

- (id)_roomForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251B0C8])
  {
    v4 = itemCopy;
  }

  else
  {
    v4 = 0;
  }

  homeKitObject = [v4 homeKitObject];

  if ([homeKitObject conformsToProtocol:&unk_282547DB8])
  {
    v6 = homeKitObject;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  hf_parentRoom = [v7 hf_parentRoom];

  return hf_parentRoom;
}

@end