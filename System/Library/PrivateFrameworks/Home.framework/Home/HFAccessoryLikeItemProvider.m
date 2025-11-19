@interface HFAccessoryLikeItemProvider
- (HFAccessoryLikeItemProvider)initWithAccessoryContainer:(id)a3 inHome:(id)a4;
- (HFAccessoryLikeItemProvider)initWithRoom:(id)a3;
- (id)buildItemForAccessoryRepresentable:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFAccessoryLikeItemProvider

- (HFAccessoryLikeItemProvider)initWithAccessoryContainer:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HFAccessoryLikeItemProvider;
  v9 = [(HFItemProvider *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    accessoryLikeItems = v9->_accessoryLikeItems;
    v9->_accessoryLikeItems = v10;

    objc_storeStrong(&v9->_accessoryContainer, a3);
    objc_storeStrong(&v9->_home, a4);
    v12 = [v8 hf_characteristicValueManager];
    valueSource = v9->_valueSource;
    v9->_valueSource = v12;
  }

  return v9;
}

- (HFAccessoryLikeItemProvider)initWithRoom:(id)a3
{
  v4 = a3;
  v5 = [v4 home];
  v6 = [(HFAccessoryLikeItemProvider *)self initWithAccessoryContainer:v4 inHome:v5];

  return v6;
}

- (id)reloadItems
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HFAccessoryLikeItemProvider *)self accessoryContainer];
  v4 = [v3 hf_accessoryLikeObjects];

  v5 = [(HFAccessoryLikeItemProvider *)self objectLevel];
  v6 = [(HFAccessoryLikeItemProvider *)self accessoryTypeGroups];
  v7 = [HFAccessoryListUtilities accessoryRepresentableObjectsFromAccessoryLikeObjects:v4 objectLevel:v5 accessoryTypeGroups:v6];

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    v8 = [(HFAccessoryLikeItemProvider *)self accessoryContainer];
    if ([v8 conformsToProtocol:&unk_28257F920])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [v10 hf_demoModeAccessories];

    v12 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@: including demo mode accessories: %@", buf, 0x16u);
    }

    v13 = [v7 arrayByAddingObjectsFromArray:v11];

    v7 = v13;
  }

  v14 = [(HFAccessoryLikeItemProvider *)self accessoryContainerFilter];

  if (v14)
  {
    v15 = [(HFAccessoryLikeItemProvider *)self accessoryContainerFilter];
    v16 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v17 = [v15 filterAccessoryRepresentableObjects:v16];
    v18 = [v17 allObjects];

    v7 = v18;
  }

  v24[4] = self;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __42__HFAccessoryLikeItemProvider_reloadItems__block_invoke_3;
  v25[3] = &unk_277DF5C10;
  v25[4] = self;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __42__HFAccessoryLikeItemProvider_reloadItems__block_invoke_4;
  v24[3] = &unk_277E01F48;
  v19 = [(HFItemProvider *)self reloadItemsWithObjects:v7 keyAdaptor:&__block_literal_global_230 itemAdaptor:&__block_literal_global_51_4 filter:v25 itemMap:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__HFAccessoryLikeItemProvider_reloadItems__block_invoke_5;
  v23[3] = &unk_277DF6960;
  v23[4] = self;
  v20 = [v19 flatMap:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __42__HFAccessoryLikeItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_homeKitObject];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

id __42__HFAccessoryLikeItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessoryRepresentableObject];
  v3 = [v2 hf_homeKitObject];
  v4 = [v3 uniqueIdentifier];

  return v4;
}

uint64_t __42__HFAccessoryLikeItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) filterBlock];

  if (v4)
  {
    v5 = [*(a1 + 32) filterBlock];
    v6 = (v5)[2](v5, v3);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id __42__HFAccessoryLikeItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accessoryLikeItems];
  v6 = [v4 removedItems];
  [v5 minusSet:v6];

  v7 = [*(a1 + 32) accessoryLikeItems];
  v8 = [v4 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

- (id)invalidationReasons
{
  v6.receiver = self;
  v6.super_class = HFAccessoryLikeItemProvider;
  v2 = [(HFItemProvider *)&v6 invalidationReasons];
  v3 = [v2 mutableCopy];

  [v3 addObject:@"accessory"];
  [v3 addObject:@"service"];
  [v3 addObject:@"serviceGroup"];
  [v3 addObject:@"mediaSystem"];
  v4 = [v3 copy];

  return v4;
}

- (id)buildItemForAccessoryRepresentable:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryLikeItemProvider *)self valueSource];
  v6 = [HFAccessoryListUtilities accessoryRepresentableItemForAccessoryRepresentable:v4 valueSource:v5];

  return v6;
}

@end