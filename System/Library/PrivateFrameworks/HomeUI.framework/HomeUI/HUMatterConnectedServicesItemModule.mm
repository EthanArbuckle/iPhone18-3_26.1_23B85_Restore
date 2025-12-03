@interface HUMatterConnectedServicesItemModule
- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)updater accessory:(id)accessory;
- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)updater accessory:(id)accessory home:(id)home itemProvider:(id)provider;
- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)updater home:(id)home;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUMatterConnectedServicesItemModule

- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)updater accessory:(id)accessory home:(id)home itemProvider:(id)provider
{
  updaterCopy = updater;
  accessoryCopy = accessory;
  homeCopy = home;
  providerCopy = provider;
  if ((accessoryCopy != 0) == (homeCopy != 0))
  {
    NSLog(&cfstr_ExactlyOneShou.isa);
  }

  v19.receiver = self;
  v19.super_class = HUMatterConnectedServicesItemModule;
  v14 = [(HFItemModule *)&v19 initWithItemUpdater:updaterCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accessory, accessory);
    objc_storeStrong(&v15->_home, home);
    objc_storeStrong(&v15->_connectedServicesItemProvider, provider);
    v16 = [[HUMatterConnectedServicesListItem alloc] initWithAccessory:accessoryCopy home:homeCopy itemProvider:providerCopy];
    connectedServicesListItem = v15->_connectedServicesListItem;
    v15->_connectedServicesListItem = &v16->super;
  }

  return v15;
}

- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)updater accessory:(id)accessory
{
  accessoryCopy = accessory;
  updaterCopy = updater;
  v8 = [[HUMatterAccessoryConnectedEcosystemItemProvider alloc] initWithAccessory:accessoryCopy];
  v9 = [(HUMatterConnectedServicesItemModule *)self initWithItemUpdater:updaterCopy accessory:accessoryCopy home:0 itemProvider:v8];

  return v9;
}

- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  updaterCopy = updater;
  v8 = [[HUMatterHomeConnectedEcosystemItemProvider alloc] initWithHome:homeCopy];
  v9 = [(HUMatterConnectedServicesItemModule *)self initWithItemUpdater:updaterCopy accessory:0 home:homeCopy itemProvider:v8];

  return v9;
}

- (id)buildItemProviders
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D14B40]);
  v4 = MEMORY[0x277CBEB98];
  connectedServicesListItem = [(HUMatterConnectedServicesItemModule *)self connectedServicesListItem];
  v6 = [v4 setWithObject:connectedServicesListItem];
  v7 = [v3 initWithItems:v6];

  v8 = MEMORY[0x277CBEB98];
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v8 setWithArray:v9];

  return v10;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"HUMatterConnectedServicesIdentifier"];
  connectedServicesListItem = [(HUMatterConnectedServicesItemModule *)self connectedServicesListItem];
  v14[0] = connectedServicesListItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v6 setItems:v8];

  v9 = MEMORY[0x277D14778];
  v13 = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [v9 filterSections:v10 toDisplayedItems:itemsCopy];

  return v11;
}

@end