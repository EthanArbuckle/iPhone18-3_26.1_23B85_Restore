@interface HUQuickControlPresentationItemManager
- (HUQuickControlPresentationItemManager)initWithHomeKitObjectUUID:(id)d type:(unint64_t)type;
- (id)_buildItemProvidersForHome:(id)home;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items;
@end

@implementation HUQuickControlPresentationItemManager

- (HUQuickControlPresentationItemManager)initWithHomeKitObjectUUID:(id)d type:(unint64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = HUQuickControlPresentationItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:0 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_homeKitObjectUUID, d);
    v9->_presentationItemType = type;
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  homeKitObjectUUID = [(HUQuickControlPresentationItemManager *)self homeKitObjectUUID];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HUQuickControlPresentationItemManager__buildItemProvidersForHome___block_invoke;
  aBlock[3] = &unk_277DB83E8;
  v6 = homeKitObjectUUID;
  v30 = v6;
  v7 = _Block_copy(aBlock);
  presentationItemType = [(HUQuickControlPresentationItemManager *)self presentationItemType];
  switch(presentationItemType)
  {
    case 3uLL:
      v18 = [objc_alloc(MEMORY[0x277D144A8]) initWithHome:homeCopy];
      [(HUQuickControlPresentationItemManager *)self setCameraItemProvider:v18];

      cameraItemProvider = [(HUQuickControlPresentationItemManager *)self cameraItemProvider];
      break;
    case 2uLL:
      v17 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:homeCopy];
      [(HUQuickControlPresentationItemManager *)self setServiceItemProvider:v17];

      cameraItemProvider = [(HUQuickControlPresentationItemManager *)self serviceItemProvider];
      break;
    case 1uLL:
      v9 = [objc_alloc(MEMORY[0x277D142F0]) initWithHome:homeCopy];
      [(HUQuickControlPresentationItemManager *)self setAccessoryItemProvider:v9];

      accessoryItemProvider = [(HUQuickControlPresentationItemManager *)self accessoryItemProvider];
      [accessoryItemProvider setFilter:v7];

      v11 = [objc_alloc(MEMORY[0x277D146B0]) initWithHome:homeCopy];
      [(HUQuickControlPresentationItemManager *)self setGenericItemProvider:v11];

      genericItemProvider = [(HUQuickControlPresentationItemManager *)self genericItemProvider];
      [genericItemProvider setFilter:v7];

      v13 = [objc_alloc(MEMORY[0x277D14BA8]) initWithHome:homeCopy];
      [(HUQuickControlPresentationItemManager *)self setTargetControlItemProvider:v13];

      targetControlItemProvider = [(HUQuickControlPresentationItemManager *)self targetControlItemProvider];
      [targetControlItemProvider setFilter:v7];

      v15 = [objc_alloc(MEMORY[0x277D147F0]) initWithHome:homeCopy];
      [(HUQuickControlPresentationItemManager *)self setMediaAccessoryItemProvider:v15];

      cameraItemProvider = [(HUQuickControlPresentationItemManager *)self mediaAccessoryItemProvider];
      break;
    default:
      goto LABEL_8;
  }

  v19 = cameraItemProvider;
  [cameraItemProvider setFilter:v7];

LABEL_8:
  array = [MEMORY[0x277CBEB18] array];
  accessoryItemProvider2 = [(HUQuickControlPresentationItemManager *)self accessoryItemProvider];
  [array na_safeAddObject:accessoryItemProvider2];

  genericItemProvider2 = [(HUQuickControlPresentationItemManager *)self genericItemProvider];
  [array na_safeAddObject:genericItemProvider2];

  targetControlItemProvider2 = [(HUQuickControlPresentationItemManager *)self targetControlItemProvider];
  [array na_safeAddObject:targetControlItemProvider2];

  mediaAccessoryItemProvider = [(HUQuickControlPresentationItemManager *)self mediaAccessoryItemProvider];
  [array na_safeAddObject:mediaAccessoryItemProvider];

  serviceItemProvider = [(HUQuickControlPresentationItemManager *)self serviceItemProvider];
  [array na_safeAddObject:serviceItemProvider];

  cameraItemProvider2 = [(HUQuickControlPresentationItemManager *)self cameraItemProvider];
  [array na_safeAddObject:cameraItemProvider2];

  v27 = [array copy];

  return v27;
}

uint64_t __68__HUQuickControlPresentationItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items
{
  v13 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([(HUQuickControlPresentationItemManager *)self presentationItemType]== 1)
  {
    allObjects = [itemsCopy allObjects];
    v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_271];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = [itemsCopy anyObject];
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = itemsCopy;
    v11 = 2112;
    v12 = firstObject;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "_didFinishUpdateTransactionWithAffectedItems: %@, picked item %@", &v9, 0x16u);
  }

  [(HFItemManager *)self setSourceItem:firstObject];
}

uint64_t __86__HUQuickControlPresentationItemManager__didFinishUpdateTransactionWithAffectedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v16[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v7 = objc_opt_class();

  v8 = [v6 indexOfObject:v7];
  v9 = objc_opt_class();

  v10 = [v6 indexOfObject:v9];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v13 = v10 == 0x7FFFFFFFFFFFFFFFLL || v8 < v10;
    v14 = v13 << 63 >> 63;
    if (v8 > v10)
    {
      v14 = 1;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 1;
    }

    else
    {
      v11 = v14;
    }
  }

  return v11;
}

@end