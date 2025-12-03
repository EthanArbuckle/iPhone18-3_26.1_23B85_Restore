@interface HFAccessoryLikeItemProvider
- (HFAccessoryLikeItemProvider)initWithAccessoryContainer:(id)container inHome:(id)home;
- (HFAccessoryLikeItemProvider)initWithRoom:(id)room;
- (id)buildItemForAccessoryRepresentable:(id)representable;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFAccessoryLikeItemProvider

- (HFAccessoryLikeItemProvider)initWithAccessoryContainer:(id)container inHome:(id)home
{
  containerCopy = container;
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HFAccessoryLikeItemProvider;
  v9 = [(HFItemProvider *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    accessoryLikeItems = v9->_accessoryLikeItems;
    v9->_accessoryLikeItems = v10;

    objc_storeStrong(&v9->_accessoryContainer, container);
    objc_storeStrong(&v9->_home, home);
    hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
    valueSource = v9->_valueSource;
    v9->_valueSource = hf_characteristicValueManager;
  }

  return v9;
}

- (HFAccessoryLikeItemProvider)initWithRoom:(id)room
{
  roomCopy = room;
  home = [roomCopy home];
  v6 = [(HFAccessoryLikeItemProvider *)self initWithAccessoryContainer:roomCopy inHome:home];

  return v6;
}

- (id)reloadItems
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryContainer = [(HFAccessoryLikeItemProvider *)self accessoryContainer];
  hf_accessoryLikeObjects = [accessoryContainer hf_accessoryLikeObjects];

  objectLevel = [(HFAccessoryLikeItemProvider *)self objectLevel];
  accessoryTypeGroups = [(HFAccessoryLikeItemProvider *)self accessoryTypeGroups];
  v7 = [HFAccessoryListUtilities accessoryRepresentableObjectsFromAccessoryLikeObjects:hf_accessoryLikeObjects objectLevel:objectLevel accessoryTypeGroups:accessoryTypeGroups];

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    accessoryContainer2 = [(HFAccessoryLikeItemProvider *)self accessoryContainer];
    if ([accessoryContainer2 conformsToProtocol:&unk_28257F920])
    {
      v9 = accessoryContainer2;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    hf_demoModeAccessories = [v10 hf_demoModeAccessories];

    v12 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v28 = 2112;
      v29 = hf_demoModeAccessories;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@: including demo mode accessories: %@", buf, 0x16u);
    }

    v13 = [v7 arrayByAddingObjectsFromArray:hf_demoModeAccessories];

    v7 = v13;
  }

  accessoryContainerFilter = [(HFAccessoryLikeItemProvider *)self accessoryContainerFilter];

  if (accessoryContainerFilter)
  {
    accessoryContainerFilter2 = [(HFAccessoryLikeItemProvider *)self accessoryContainerFilter];
    v16 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v17 = [accessoryContainerFilter2 filterAccessoryRepresentableObjects:v16];
    allObjects = [v17 allObjects];

    v7 = allObjects;
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
  invalidationReasons = [(HFItemProvider *)&v6 invalidationReasons];
  v3 = [invalidationReasons mutableCopy];

  [v3 addObject:@"accessory"];
  [v3 addObject:@"service"];
  [v3 addObject:@"serviceGroup"];
  [v3 addObject:@"mediaSystem"];
  v4 = [v3 copy];

  return v4;
}

- (id)buildItemForAccessoryRepresentable:(id)representable
{
  representableCopy = representable;
  valueSource = [(HFAccessoryLikeItemProvider *)self valueSource];
  v6 = [HFAccessoryListUtilities accessoryRepresentableItemForAccessoryRepresentable:representableCopy valueSource:valueSource];

  return v6;
}

@end