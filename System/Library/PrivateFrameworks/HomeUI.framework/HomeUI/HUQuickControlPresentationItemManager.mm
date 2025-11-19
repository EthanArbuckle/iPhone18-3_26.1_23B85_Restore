@interface HUQuickControlPresentationItemManager
- (HUQuickControlPresentationItemManager)initWithHomeKitObjectUUID:(id)a3 type:(unint64_t)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3;
@end

@implementation HUQuickControlPresentationItemManager

- (HUQuickControlPresentationItemManager)initWithHomeKitObjectUUID:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUQuickControlPresentationItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:0 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_homeKitObjectUUID, a3);
    v9->_presentationItemType = a4;
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlPresentationItemManager *)self homeKitObjectUUID];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HUQuickControlPresentationItemManager__buildItemProvidersForHome___block_invoke;
  aBlock[3] = &unk_277DB83E8;
  v6 = v5;
  v30 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(HUQuickControlPresentationItemManager *)self presentationItemType];
  switch(v8)
  {
    case 3uLL:
      v18 = [objc_alloc(MEMORY[0x277D144A8]) initWithHome:v4];
      [(HUQuickControlPresentationItemManager *)self setCameraItemProvider:v18];

      v16 = [(HUQuickControlPresentationItemManager *)self cameraItemProvider];
      break;
    case 2uLL:
      v17 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:v4];
      [(HUQuickControlPresentationItemManager *)self setServiceItemProvider:v17];

      v16 = [(HUQuickControlPresentationItemManager *)self serviceItemProvider];
      break;
    case 1uLL:
      v9 = [objc_alloc(MEMORY[0x277D142F0]) initWithHome:v4];
      [(HUQuickControlPresentationItemManager *)self setAccessoryItemProvider:v9];

      v10 = [(HUQuickControlPresentationItemManager *)self accessoryItemProvider];
      [v10 setFilter:v7];

      v11 = [objc_alloc(MEMORY[0x277D146B0]) initWithHome:v4];
      [(HUQuickControlPresentationItemManager *)self setGenericItemProvider:v11];

      v12 = [(HUQuickControlPresentationItemManager *)self genericItemProvider];
      [v12 setFilter:v7];

      v13 = [objc_alloc(MEMORY[0x277D14BA8]) initWithHome:v4];
      [(HUQuickControlPresentationItemManager *)self setTargetControlItemProvider:v13];

      v14 = [(HUQuickControlPresentationItemManager *)self targetControlItemProvider];
      [v14 setFilter:v7];

      v15 = [objc_alloc(MEMORY[0x277D147F0]) initWithHome:v4];
      [(HUQuickControlPresentationItemManager *)self setMediaAccessoryItemProvider:v15];

      v16 = [(HUQuickControlPresentationItemManager *)self mediaAccessoryItemProvider];
      break;
    default:
      goto LABEL_8;
  }

  v19 = v16;
  [v16 setFilter:v7];

LABEL_8:
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [(HUQuickControlPresentationItemManager *)self accessoryItemProvider];
  [v20 na_safeAddObject:v21];

  v22 = [(HUQuickControlPresentationItemManager *)self genericItemProvider];
  [v20 na_safeAddObject:v22];

  v23 = [(HUQuickControlPresentationItemManager *)self targetControlItemProvider];
  [v20 na_safeAddObject:v23];

  v24 = [(HUQuickControlPresentationItemManager *)self mediaAccessoryItemProvider];
  [v20 na_safeAddObject:v24];

  v25 = [(HUQuickControlPresentationItemManager *)self serviceItemProvider];
  [v20 na_safeAddObject:v25];

  v26 = [(HUQuickControlPresentationItemManager *)self cameraItemProvider];
  [v20 na_safeAddObject:v26];

  v27 = [v20 copy];

  return v27;
}

uint64_t __68__HUQuickControlPresentationItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUQuickControlPresentationItemManager *)self presentationItemType]== 1)
  {
    v5 = [v4 allObjects];
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_271];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = [v4 anyObject];
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "_didFinishUpdateTransactionWithAffectedItems: %@, picked item %@", &v9, 0x16u);
  }

  [(HFItemManager *)self setSourceItem:v7];
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