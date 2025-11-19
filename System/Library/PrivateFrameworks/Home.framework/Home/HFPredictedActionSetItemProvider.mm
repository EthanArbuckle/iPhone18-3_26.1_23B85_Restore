@interface HFPredictedActionSetItemProvider
- (HFCharacteristicValueSource)valueSource;
- (HFPredictedActionSetItemProvider)init;
- (HFPredictedActionSetItemProvider)initWithHome:(id)a3 predictionsManagerDelegate:(id)a4 itemCount:(unint64_t)a5;
- (NSArray)orderedItems;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fetchUserActionPredictions;
- (id)invalidationReasons;
- (id)reloadItems;
- (void)invalidatePredictions;
@end

@implementation HFPredictedActionSetItemProvider

- (HFPredictedActionSetItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_predictionsManager_itemLimit_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFPredictedActionSetItemProvider.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFPredictedActionSetItemProvider init]", v5}];

  return 0;
}

- (HFPredictedActionSetItemProvider)initWithHome:(id)a3 predictionsManagerDelegate:(id)a4 itemCount:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = HFPredictedActionSetItemProvider;
  v11 = [(HFItemProvider *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, a3);
    v13 = [MEMORY[0x277CBEB58] set];
    allItems = v12->_allItems;
    v12->_allItems = v13;

    v12->_itemCount = a5;
    v15 = [HFPredictionsManager alloc];
    v16 = [v9 userActionPredictionController];
    v17 = [(HFPredictionsManager *)v15 initWithHome:v9 predictionsController:v16 delegate:v10 predictionLimit:a5 filterTypes:&unk_2825256C0];
    predictionsManager = v12->_predictionsManager;
    v12->_predictionsManager = v17;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFPredictedActionSetItemProvider *)self home];
  v6 = [(HFPredictedActionSetItemProvider *)self predictionsManager];
  v7 = [v6 delegate];
  v8 = [v4 initWithHome:v5 predictionsManagerDelegate:v7 itemCount:{-[HFPredictedActionSetItemProvider itemCount](self, "itemCount")}];

  return v8;
}

- (HFCharacteristicValueSource)valueSource
{
  v3 = [(HFPredictedActionSetItemProvider *)self overrideValueSource];

  if (v3)
  {
    v4 = [(HFPredictedActionSetItemProvider *)self overrideValueSource];
  }

  else
  {
    v5 = [(HFPredictedActionSetItemProvider *)self home];
    v4 = [v5 hf_characteristicValueManager];
  }

  return v4;
}

- (NSArray)orderedItems
{
  v3 = [(HFPredictedActionSetItemProvider *)self predictions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HFPredictedActionSetItemProvider_orderedItems__block_invoke;
  v6[3] = &unk_277DF6938;
  v6[4] = self;
  v4 = [v3 na_map:v6];

  return v4;
}

id __48__HFPredictedActionSetItemProvider_orderedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HFPredictedActionSetItemProvider_orderedItems__block_invoke_2;
  v8[3] = &unk_277DF6910;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __48__HFPredictedActionSetItemProvider_orderedItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 actionSet];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__HFPredictedActionSetItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v12, &location);
  v3 = _Block_copy(aBlock);
  v4 = [(HFPredictedActionSetItemProvider *)self fetchUserActionPredictions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HFPredictedActionSetItemProvider_reloadItems__block_invoke_2;
  v8[3] = &unk_277DF6988;
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v9 = v5;
  v6 = [v4 flatMap:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

HFActionSetItem *__47__HFPredictedActionSetItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [HFActionSetItem alloc];
    v9 = [WeakRetained valueSource];
    v10 = [(HFActionSetItem *)v8 initWithActionSet:v7 actionSetItemStyle:2 valueSource:v9];
  }

  else
  {
    NSLog(&cfstr_UnsupportedHom.isa, v5);
    v10 = 0;
  }

  return v10;
}

id __47__HFPredictedActionSetItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained reloadItemsWithHomeKitObjects:v3 filter:0 itemMap:*(a1 + 32)];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HFPredictedActionSetItemProvider_reloadItems__block_invoke_3;
  v8[3] = &unk_277DF6960;
  v8[4] = WeakRetained;
  v6 = [v5 flatMap:v8];

  return v6;
}

id __47__HFPredictedActionSetItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allItems];
  v6 = [v4 addedItems];
  [v5 unionSet:v6];

  v7 = [*(a1 + 32) allItems];
  v8 = [v4 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFPredictedActionSetItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"actionSet";
  v8[1] = @"home";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)invalidatePredictions
{
  v3 = [(HFPredictedActionSetItemProvider *)self predictionsManager];
  [v3 invalidateUserActionPredictions];

  v4 = [(HFPredictedActionSetItemProvider *)self fetchUserActionPredictions];
}

- (id)fetchUserActionPredictions
{
  v3 = [(HFPredictedActionSetItemProvider *)self predictionsManager];
  v4 = [v3 fetchUserActionPredictions];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HFPredictedActionSetItemProvider_fetchUserActionPredictions__block_invoke;
  v7[3] = &unk_277DF52E0;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __62__HFPredictedActionSetItemProvider_fetchUserActionPredictions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained itemCount];
    v7 = v6 - [v3 count];
    if (v7 >= 1)
    {
      v8 = [v5 home];
      v9 = [v8 hf_orderedActionSets];
      v10 = [v9 mutableCopy];

      [v10 removeObjectsInArray:v3];
      if ([v10 count])
      {
        v11 = [v10 count];
        if (v7 >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v7;
        }

        v13 = [v10 subarrayWithRange:{0, v12}];
        v14 = [v3 arrayByAddingObjectsFromArray:v13];

        v3 = v14;
      }
    }

    [v5 setPredictions:v3];
    v15 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v15 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v16 = v15;

  return v16;
}

@end