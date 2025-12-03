@interface HUMatterHomeConnectedEcosystemItem
- (HUMatterHomeConnectedEcosystemItem)initWithConnectedEcosystem:(id)ecosystem accessoryUUIDs:(id)ds;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUMatterHomeConnectedEcosystemItem

- (HUMatterHomeConnectedEcosystemItem)initWithConnectedEcosystem:(id)ecosystem accessoryUUIDs:(id)ds
{
  ecosystemCopy = ecosystem;
  dsCopy = ds;
  v12.receiver = self;
  v12.super_class = HUMatterHomeConnectedEcosystemItem;
  v9 = [(HUMatterHomeConnectedEcosystemItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectedEcosystem, ecosystem);
    objc_storeStrong(&v10->_accessoryUUIDs, ds);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D13F60];
  connectedEcosystem = [(HUMatterHomeConnectedEcosystemItem *)self connectedEcosystem];
  vendor = [connectedEcosystem vendor];
  name = [vendor name];
  v22[0] = name;
  v21[1] = *MEMORY[0x277D13E20];
  accessoryUUIDs = [(HUMatterHomeConnectedEcosystemItem *)self accessoryUUIDs];
  v8 = [accessoryUUIDs count];
  v15 = HULocalizedStringWithFormat(@"HUNumberOfAccessories", @"%lu", v9, v10, v11, v12, v13, v14, v8);
  v22[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v17 = MEMORY[0x277D2C900];
  v18 = [MEMORY[0x277D14780] outcomeWithResults:v16];
  v19 = [v17 futureWithResult:v18];

  return v19;
}

@end