@interface HUMatterHomeConnectedEcosystemItem
- (HUMatterHomeConnectedEcosystemItem)initWithConnectedEcosystem:(id)a3 accessoryUUIDs:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUMatterHomeConnectedEcosystemItem

- (HUMatterHomeConnectedEcosystemItem)initWithConnectedEcosystem:(id)a3 accessoryUUIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUMatterHomeConnectedEcosystemItem;
  v9 = [(HUMatterHomeConnectedEcosystemItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectedEcosystem, a3);
    objc_storeStrong(&v10->_accessoryUUIDs, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D13F60];
  v4 = [(HUMatterHomeConnectedEcosystemItem *)self connectedEcosystem];
  v5 = [v4 vendor];
  v6 = [v5 name];
  v22[0] = v6;
  v21[1] = *MEMORY[0x277D13E20];
  v7 = [(HUMatterHomeConnectedEcosystemItem *)self accessoryUUIDs];
  v8 = [v7 count];
  v15 = HULocalizedStringWithFormat(@"HUNumberOfAccessories", @"%lu", v9, v10, v11, v12, v13, v14, v8);
  v22[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v17 = MEMORY[0x277D2C900];
  v18 = [MEMORY[0x277D14780] outcomeWithResults:v16];
  v19 = [v17 futureWithResult:v18];

  return v19;
}

@end