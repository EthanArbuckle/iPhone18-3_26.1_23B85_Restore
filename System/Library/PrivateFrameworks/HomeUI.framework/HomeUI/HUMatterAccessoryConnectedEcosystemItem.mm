@interface HUMatterAccessoryConnectedEcosystemItem
- (HUMatterAccessoryConnectedEcosystemItem)initWithConnectedEcosystem:(id)a3 chipAccessoryPairings:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUMatterAccessoryConnectedEcosystemItem

- (HUMatterAccessoryConnectedEcosystemItem)initWithConnectedEcosystem:(id)a3 chipAccessoryPairings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUMatterAccessoryConnectedEcosystemItem;
  v9 = [(HUMatterAccessoryConnectedEcosystemItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectedEcosystem, a3);
    objc_storeStrong(&v10->_chipAccessoryPairings, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = [(HUMatterAccessoryConnectedEcosystemItem *)self connectedEcosystem];
  v5 = [v4 vendor];
  v27 = [v5 isSystemCommissionerVendor];

  v30[0] = *MEMORY[0x277D13F60];
  v28 = [(HUMatterAccessoryConnectedEcosystemItem *)self connectedEcosystem];
  v6 = [v28 vendor];
  v7 = [v6 name];
  v31[0] = v7;
  v30[1] = *MEMORY[0x277D13E30];
  v8 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
  v31[1] = v8;
  v30[2] = @"HUMatterAccessoryConnectedEcosystemItemIsAppleVendor";
  v9 = MEMORY[0x277CCABB0];
  v10 = [(HUMatterAccessoryConnectedEcosystemItem *)self connectedEcosystem];
  v11 = [v10 vendor];
  v12 = [v9 numberWithBool:{objc_msgSend(v11, "isAppleVendor")}];
  v31[2] = v12;
  v30[3] = @"HUMatterAccessoryConnectedEcosystemItemIsSystemCommissioner";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v27];
  v31[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v29 = [v14 mutableCopy];

  if (v27)
  {
    v15 = 0;
  }

  else
  {
    v16 = [(HUMatterAccessoryConnectedEcosystemItem *)self chipAccessoryPairings];
    v17 = [v16 na_map:&__block_literal_global_175];
    v18 = [v17 allObjects];
    v15 = [v18 sortedArrayUsingSelector:sel_localizedStandardCompare_];
  }

  if ([v15 count])
  {
    v19 = _HULocalizedStringWithDefaultValue(@"HUMatterConnectedEcosystemHomesSeparator", @"HUMatterConnectedEcosystemHomesSeparator", 1);
    v20 = [v15 componentsJoinedByString:v19];
    [v29 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  v21 = MEMORY[0x277D2C900];
  v22 = MEMORY[0x277D14780];
  v23 = [v29 copy];
  v24 = [v22 outcomeWithResults:v23];
  v25 = [v21 futureWithResult:v24];

  return v25;
}

id __71__HUMatterAccessoryConnectedEcosystemItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 home];
  v3 = [v2 name];

  return v3;
}

@end