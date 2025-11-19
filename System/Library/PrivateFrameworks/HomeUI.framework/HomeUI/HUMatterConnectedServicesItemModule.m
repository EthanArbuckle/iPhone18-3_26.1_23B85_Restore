@interface HUMatterConnectedServicesItemModule
- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)a3 accessory:(id)a4;
- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)a3 accessory:(id)a4 home:(id)a5 itemProvider:(id)a6;
- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUMatterConnectedServicesItemModule

- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)a3 accessory:(id)a4 home:(id)a5 itemProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((v11 != 0) == (v12 != 0))
  {
    NSLog(&cfstr_ExactlyOneShou.isa);
  }

  v19.receiver = self;
  v19.super_class = HUMatterConnectedServicesItemModule;
  v14 = [(HFItemModule *)&v19 initWithItemUpdater:v10];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accessory, a4);
    objc_storeStrong(&v15->_home, a5);
    objc_storeStrong(&v15->_connectedServicesItemProvider, a6);
    v16 = [[HUMatterConnectedServicesListItem alloc] initWithAccessory:v11 home:v12 itemProvider:v13];
    connectedServicesListItem = v15->_connectedServicesListItem;
    v15->_connectedServicesListItem = &v16->super;
  }

  return v15;
}

- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)a3 accessory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUMatterAccessoryConnectedEcosystemItemProvider alloc] initWithAccessory:v6];
  v9 = [(HUMatterConnectedServicesItemModule *)self initWithItemUpdater:v7 accessory:v6 home:0 itemProvider:v8];

  return v9;
}

- (HUMatterConnectedServicesItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUMatterHomeConnectedEcosystemItemProvider alloc] initWithHome:v6];
  v9 = [(HUMatterConnectedServicesItemModule *)self initWithItemUpdater:v7 accessory:0 home:v6 itemProvider:v8];

  return v9;
}

- (id)buildItemProviders
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D14B40]);
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HUMatterConnectedServicesItemModule *)self connectedServicesListItem];
  v6 = [v4 setWithObject:v5];
  v7 = [v3 initWithItems:v6];

  v8 = MEMORY[0x277CBEB98];
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v8 setWithArray:v9];

  return v10;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"HUMatterConnectedServicesIdentifier"];
  v7 = [(HUMatterConnectedServicesItemModule *)self connectedServicesListItem];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v6 setItems:v8];

  v9 = MEMORY[0x277D14778];
  v13 = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [v9 filterSections:v10 toDisplayedItems:v5];

  return v11;
}

@end