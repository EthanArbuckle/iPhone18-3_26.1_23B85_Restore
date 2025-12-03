@interface HUAssociatedSceneListItem
- (HUAssociatedSceneListItem)initWithHome:(id)home serviceLikeItem:(id)item context:(unint64_t)context;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUAssociatedSceneListItem

- (HUAssociatedSceneListItem)initWithHome:(id)home serviceLikeItem:(id)item context:(unint64_t)context
{
  homeCopy = home;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = HUAssociatedSceneListItem;
  v11 = [(HUAssociatedSceneListItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, home);
    objc_storeStrong(&v12->_serviceLikeItem, item);
    v12->_context = context;
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277D2C900];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HUAssociatedSceneListItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_277DB7AB8;
  v10[4] = self;
  v5 = [&unk_282492900 na_map:v10];
  v6 = [v4 combineAllFutures:v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HUAssociatedSceneListItem__subclass_updateWithOptions___block_invoke_2;
  v9[3] = &unk_277DB7A90;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

id __57__HUAssociatedSceneListItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = [*(a1 + 32) serviceLikeItem];
  v5 = [*(a1 + 32) home];
  v6 = [HUAccessorySceneListContentItemManager computeNumberOfItemsToDisplayForContentSource:v3 serviceLikeItem:v4 home:v5];

  return v6;
}

id __57__HUAssociatedSceneListItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 unsignedIntegerValue];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [v6 unsignedIntegerValue];
  v8 = [*(a1 + 32) context];
  v9 = objc_alloc_init(MEMORY[0x277D14858]);
  v10 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  if (v5)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = v11 && v7 == 0;
  v14 = [*(a1 + 32) home];
  v15 = [v14 hf_currentUserIsRestrictedGuest];

  v16 = MEMORY[0x277CBEC38];
  v17 = MEMORY[0x277D13FB8];
  if ((v15 & 1) == 0 && (v13 & 1) == 0)
  {
    if (v8)
    {
      v18 = v5 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = @"HUAssociatedSceneItemTitleSuggestedScenes";
    }

    else
    {
      v19 = @"HUAssociatedSceneItemTitleIncludedScenes";
    }

    if (v18)
    {
      v20 = v7;
    }

    else
    {
      v20 = v5;
    }

    v21 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
    [v9 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", v20];
    [v9 setObject:v22 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v16 = @"AccessoryDetails.SuggestedScenes";
    v17 = MEMORY[0x277D13DC8];
  }

  [v9 setObject:v16 forKeyedSubscript:*v17];
  v23 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v23;
}

@end