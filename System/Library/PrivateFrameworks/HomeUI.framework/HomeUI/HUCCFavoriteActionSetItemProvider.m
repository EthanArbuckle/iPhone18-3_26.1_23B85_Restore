@interface HUCCFavoriteActionSetItemProvider
- (HUCCFavoriteActionSetItemProvider)init;
- (HUCCFavoriteActionSetItemProvider)initWithHome:(id)a3 actionSetItemStyle:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUCCFavoriteActionSetItemProvider

- (HUCCFavoriteActionSetItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_actionSetItemStyle_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCCFavoriteActionSetItemProvider.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[HUCCFavoriteActionSetItemProvider init]", v5}];

  return 0;
}

- (HUCCFavoriteActionSetItemProvider)initWithHome:(id)a3 actionSetItemStyle:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HUCCFavoriteActionSetItemProvider;
  v8 = [(HFItemProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a3);
    v10 = [MEMORY[0x277CBEB58] set];
    actionSetItems = v9->_actionSetItems;
    v9->_actionSetItems = v10;

    v9->_maximumNumberOfItems = -1;
    v9->_actionSetItemStyle = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUCCFavoriteActionSetItemProvider *)self home];
  v6 = [v4 initWithHome:v5 actionSetItemStyle:{-[HUCCFavoriteActionSetItemProvider actionSetItemStyle](self, "actionSetItemStyle")}];

  return v6;
}

- (id)reloadItems
{
  v3 = MEMORY[0x277D14770];
  v4 = [(HUCCFavoriteActionSetItemProvider *)self home];
  v5 = [v3 favoriteActionSetsForHome:v4 withLimit:{-[HUCCFavoriteActionSetItemProvider maximumNumberOfItems](self, "maximumNumberOfItems")}];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HUCCFavoriteActionSetItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DB7F08;
  objc_copyWeak(&v13, &location);
  v6 = _Block_copy(aBlock);
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:0 itemMap:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HUCCFavoriteActionSetItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DB7FA8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

id __48__HUCCFavoriteActionSetItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc(MEMORY[0x277D143A0]);
  v6 = [WeakRetained actionSetItemStyle];
  v7 = [WeakRetained home];
  v8 = [v7 hf_characteristicValueManager];
  v9 = [v5 initWithActionSet:v3 actionSetItemStyle:v6 valueSource:v8];

  return v9;
}

id __48__HUCCFavoriteActionSetItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained actionSetItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained actionSetItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUCCFavoriteActionSetItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B48];
  v8[0] = *MEMORY[0x277D13B30];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v2 setByAddingObjectsFromArray:v4];

  return v5;
}

@end