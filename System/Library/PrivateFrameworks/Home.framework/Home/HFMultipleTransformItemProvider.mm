@interface HFMultipleTransformItemProvider
- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)a3;
- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)a3 multipleTransformationBlock:(id)a4;
- (id)_subclass_transformItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFMultipleTransformItemProvider

- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HFMultipleTransformItemProvider;
  v6 = [(HFItemProvider *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    transformedItems = v6->_transformedItems;
    v6->_transformedItems = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    allItems = v6->_allItems;
    v6->_allItems = v9;

    objc_storeStrong(&v6->_sourceProvider, a3);
  }

  return v6;
}

- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)a3 multipleTransformationBlock:(id)a4
{
  v6 = a4;
  v7 = [(HFMultipleTransformItemProvider *)self initWithSourceProvider:a3];
  if (v7)
  {
    v8 = _Block_copy(v6);
    transformationBlock = v7->_transformationBlock;
    v7->_transformationBlock = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFMultipleTransformItemProvider *)self sourceProvider];
  v6 = [(HFMultipleTransformItemProvider *)self transformationBlock];
  v7 = [v4 initWithSourceProvider:v5 multipleTransformationBlock:v6];

  return v7;
}

- (id)reloadItems
{
  v3 = [(HFMultipleTransformItemProvider *)self sourceProvider];
  v4 = [v3 reloadItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke;
  v7[3] = &unk_277DF6960;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __46__HFMultipleTransformItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 addedItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x277CBEB58];
    v7 = [v3 addedItems];
    v8 = [v6 setWithCapacity:{objc_msgSend(v7, "count")}];

    v9 = [v3 addedItems];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_2;
    v49[3] = &unk_277DFB148;
    v49[4] = *(a1 + 32);
    v50 = v8;
    v10 = v8;
    [v9 na_each:v49];

    [v3 setAddedItems:v10];
  }

  v11 = [v3 existingItems];
  v12 = [v11 count];

  if (v12)
  {
    v13 = MEMORY[0x277CBEB58];
    v14 = [v3 existingItems];
    v15 = [v13 setWithCapacity:{objc_msgSend(v14, "count")}];

    v16 = [v3 existingItems];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_3;
    v46[3] = &unk_277DFB148;
    v17 = *(a1 + 32);
    v47 = v15;
    v48 = v17;
    v18 = v15;
    [v16 na_each:v46];

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
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_4;
    v43[3] = &unk_277DFB148;
    v25 = *(a1 + 32);
    v44 = v23;
    v45 = v25;
    v26 = v23;
    [v24 na_each:v43];

    [v3 setRemovedItems:v26];
  }

  v27 = [*(a1 + 32) allItems];
  [v27 removeAllObjects];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = [*(a1 + 32) transformedItems];
  v29 = [v28 objectEnumerator];

  v30 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v40;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v39 + 1) + 8 * i);
        v35 = [*(a1 + 32) allItems];
        [v35 unionSet:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v31);
  }

  v36 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 _subclass_transformItem:v4];
  v5 = [*(a1 + 32) transformedItems];
  v6 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];

  [v5 setObject:v7 forKeyedSubscript:v6];
  [*(a1 + 40) unionSet:v7];
}

void __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v7 = [v3 transformedItems];
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];

  v6 = [v7 objectForKeyedSubscript:v5];
  [v2 unionSet:v6];
}

void __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) transformedItems];
  v5 = [v4 objectForKeyedSubscript:v7];
  [v3 unionSet:v5];

  v6 = [*(a1 + 40) transformedItems];
  [v6 removeObjectForKey:v7];
}

- (id)_subclass_transformItem:(id)a3
{
  v5 = a3;
  v6 = [(HFMultipleTransformItemProvider *)self transformationBlock];

  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFMultipleTransformItemProvider.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"self.transformationBlock"}];
  }

  v7 = [(HFMultipleTransformItemProvider *)self transformationBlock];
  v8 = (v7)[2](v7, v5);

  return v8;
}

- (id)invalidationReasons
{
  v8.receiver = self;
  v8.super_class = HFMultipleTransformItemProvider;
  v3 = [(HFItemProvider *)&v8 invalidationReasons];
  v4 = [(HFMultipleTransformItemProvider *)self sourceProvider];
  v5 = [v4 invalidationReasons];
  v6 = [v3 setByAddingObjectsFromSet:v5];

  return v6;
}

@end