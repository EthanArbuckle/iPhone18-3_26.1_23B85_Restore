@interface HFTransformItemProvider
- (HFTransformItemProvider)init;
- (HFTransformItemProvider)initWithSourceProvider:(id)a3 transformationBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HFTransformItemProvider

- (HFTransformItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSourceProvider_transformationBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFTransformItemProvider.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[HFTransformItemProvider init]", v5}];

  return 0;
}

- (HFTransformItemProvider)initWithSourceProvider:(id)a3 transformationBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HFTransformItemProvider;
  v9 = [(HFItemProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceProvider, a3);
    v11 = _Block_copy(v8);
    transformationBlock = v10->_transformationBlock;
    v10->_transformationBlock = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    transformedItems = v10->_transformedItems;
    v10->_transformedItems = v13;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFTransformItemProvider *)self sourceProvider];
  v6 = [(HFTransformItemProvider *)self transformationBlock];
  v7 = [v4 initWithSourceProvider:v5 transformationBlock:v6];

  return v7;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HFTransformItemProvider *)self sourceProvider];
  v4 = [v3 reloadItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HFTransformItemProvider_reloadItems__block_invoke;
  v7[3] = &unk_277DF30B8;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

id __38__HFTransformItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 addedItems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = MEMORY[0x277CBEB58];
    v8 = [v3 addedItems];
    v9 = [v7 setWithCapacity:{objc_msgSend(v8, "count")}];

    v10 = [v3 addedItems];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __38__HFTransformItemProvider_reloadItems__block_invoke_2;
    v37[3] = &unk_277DFB148;
    v37[4] = WeakRetained;
    v38 = v9;
    v11 = v9;
    [v10 na_each:v37];

    [v3 setAddedItems:v11];
  }

  v12 = [v3 existingItems];
  v13 = [v12 count];

  if (v13)
  {
    v14 = MEMORY[0x277CBEB58];
    v15 = [v3 existingItems];
    v16 = [v14 setWithCapacity:{objc_msgSend(v15, "count")}];

    v17 = [v3 existingItems];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __38__HFTransformItemProvider_reloadItems__block_invoke_3;
    v34[3] = &unk_277DFB148;
    v35 = v16;
    v36 = WeakRetained;
    v18 = v16;
    [v17 na_each:v34];

    [v3 setExistingItems:v18];
  }

  v19 = [v3 removedItems];
  v20 = [v19 count];

  if (v20)
  {
    v21 = MEMORY[0x277CBEB58];
    v22 = [v3 removedItems];
    v23 = [v21 setWithCapacity:{objc_msgSend(v22, "count")}];

    v24 = [v3 removedItems];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __38__HFTransformItemProvider_reloadItems__block_invoke_4;
    v31 = &unk_277DFB148;
    v32 = v23;
    v33 = WeakRetained;
    v25 = v23;
    [v24 na_each:&v28];

    [v3 setRemovedItems:{v25, v28, v29, v30, v31}];
  }

  v26 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v26;
}

void __38__HFTransformItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 transformationBlock];
  v8 = (v5)[2](v5, v4);

  v6 = [*(a1 + 32) transformedItems];
  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];

  [v6 setObject:v8 forKeyedSubscript:v7];
  [*(a1 + 40) na_safeAddObject:v8];
}

void __38__HFTransformItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v7 = [v3 transformedItems];
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];

  v6 = [v7 objectForKeyedSubscript:v5];
  [v2 na_safeAddObject:v6];
}

void __38__HFTransformItemProvider_reloadItems__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) transformedItems];
  v5 = [v4 objectForKeyedSubscript:v7];
  [v3 na_safeAddObject:v5];

  v6 = [*(a1 + 40) transformedItems];
  [v6 removeObjectForKey:v7];
}

- (id)items
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFTransformItemProvider *)self transformedItems];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)invalidationReasons
{
  v8.receiver = self;
  v8.super_class = HFTransformItemProvider;
  v3 = [(HFItemProvider *)&v8 invalidationReasons];
  v4 = [(HFTransformItemProvider *)self sourceProvider];
  v5 = [v4 invalidationReasons];
  v6 = [v3 setByAddingObjectsFromSet:v5];

  return v6;
}

@end