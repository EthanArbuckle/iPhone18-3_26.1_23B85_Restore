@interface HFTransformItem
- (HFItem)transformedSourceItem;
- (HFTransformItem)init;
- (HFTransformItem)initWithSourceItem:(id)a3 resultKeyExclusionFilter:(id)a4;
- (HFTransformItem)initWithSourceItem:(id)a3 resultKeyFilter:(id)a4;
- (HFTransformItem)initWithSourceItem:(id)a3 updateOptionsTransformBlock:(id)a4 resultsAndItemTransformBlock:(id)a5;
- (HFTransformItem)initWithSourceItem:(id)a3 updateOptionsTransformBlock:(id)a4 resultsTransformBlock:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFTransformItem

- (HFItem)transformedSourceItem
{
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v3 = self;
  v4 = HFTransformItem.transformedSourceItem.getter();

  return v4;
}

- (HFTransformItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSourceItem_transformationBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFTransformItem.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HFTransformItem init]", v5}];

  return 0;
}

- (HFTransformItem)initWithSourceItem:(id)a3 resultKeyFilter:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HFTransformItem_initWithSourceItem_resultKeyFilter___block_invoke;
  v10[3] = &unk_277E00148;
  v11 = v6;
  v7 = v6;
  v8 = [(HFTransformItem *)self initWithSourceItem:a3 transformationBlock:v10];

  return v8;
}

id __54__HFTransformItem_initWithSourceItem_resultKeyFilter___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:{v10, v14}];
        [v4 na_safeSetObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HFTransformItem)initWithSourceItem:(id)a3 resultKeyExclusionFilter:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HFTransformItem_initWithSourceItem_resultKeyExclusionFilter___block_invoke;
  v10[3] = &unk_277E00148;
  v11 = v6;
  v7 = v6;
  v8 = [(HFTransformItem *)self initWithSourceItem:a3 transformationBlock:v10];

  return v8;
}

id __63__HFTransformItem_initWithSourceItem_resultKeyExclusionFilter___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a2];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObjectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HFTransformItem)initWithSourceItem:(id)a3 updateOptionsTransformBlock:(id)a4 resultsAndItemTransformBlock:(id)a5
{
  v8 = a5;
  v9 = [(HFTransformItem *)self initWithSourceItem:a3 updateOptionsTransformBlock:a4 resultsTransformBlock:&__block_literal_global_193];
  v10 = _Block_copy(v8);

  resultsAndItemTransformBlock = v9->_resultsAndItemTransformBlock;
  v9->_resultsAndItemTransformBlock = v10;

  return v9;
}

- (HFTransformItem)initWithSourceItem:(id)a3 updateOptionsTransformBlock:(id)a4 resultsTransformBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = HFTransformItem;
  v12 = [(HFTransformItem *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceItem, a3);
    v14 = _Block_copy(v10);
    optionsTransformBlock = v13->_optionsTransformBlock;
    v13->_optionsTransformBlock = v14;

    v16 = _Block_copy(v11);
    resultsTransformBlock = v13->_resultsTransformBlock;
    v13->_resultsTransformBlock = v16;

    resultsAndItemTransformBlock = v13->_resultsAndItemTransformBlock;
    v13->_resultsAndItemTransformBlock = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFTransformItem *)self sourceItem];
  v6 = [(HFTransformItem *)self optionsTransformBlock];
  v7 = [(HFTransformItem *)self resultsTransformBlock];
  v8 = [v4 initWithSourceItem:v5 updateOptionsTransformBlock:v6 resultsTransformBlock:v7];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFTransformItem *)self sourceItem];

  if (!v5)
  {
    NSLog(&cfstr_MustHaveASourc.isa);
  }

  v6 = [(HFTransformItem *)self resultsTransformBlock];

  if (!v6)
  {
    NSLog(&cfstr_MustSpecifyATr.isa);
  }

  v7 = [(HFTransformItem *)self sourceItem];
  if (v7 && (v8 = v7, [(HFTransformItem *)self resultsTransformBlock], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__HFTransformItem__subclass_updateWithOptions___block_invoke;
    v19[3] = &unk_277DF78D8;
    v20 = v4;
    v21 = self;
    v10 = __47__HFTransformItem__subclass_updateWithOptions___block_invoke(v19);
    v11 = [(HFTransformItem *)self sourceItem];
    v12 = [v11 updateWithOptions:v10];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__HFTransformItem__subclass_updateWithOptions___block_invoke_2;
    v17[3] = &unk_277DF5A08;
    objc_copyWeak(&v18, &location);
    v13 = [v12 flatMap:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v13 = [v14 futureWithError:v15];
  }

  return v13;
}

id __47__HFTransformItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:HFItemUpdateOptionAllowInFlightResults];
  v3 = [*(a1 + 40) optionsTransformBlock];
  if (v3)
  {
    v4 = [*(a1 + 40) optionsTransformBlock];
    v5 = (v4)[2](v4, v2);
  }

  else
  {
    v5 = [v2 copy];
  }

  return v5;
}

id __47__HFTransformItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained resultsAndItemTransformBlock];

  if (v5)
  {
    v6 = [WeakRetained resultsAndItemTransformBlock];
    v7 = [v3 results];

    (v6)[2](v6, WeakRetained, v7);
  }

  else
  {
    v6 = [WeakRetained resultsTransformBlock];
    v7 = [v3 results];

    (v6[2])(v6, v7);
  }
  v8 = ;

  v9 = MEMORY[0x277D2C900];
  v10 = [HFItemUpdateOutcome outcomeWithResults:v8];
  v11 = [v9 futureWithResult:v10];

  return v11;
}

@end