@interface HFItemGroupItem
- (HFItemGroupItem)init;
- (HFItemGroupItem)initWithItems:(id)items;
- (id)_subclass_updateWithOptions:(id)options;
- (void)setItems:(id)items;
@end

@implementation HFItemGroupItem

- (HFItemGroupItem)init
{
  v6.receiver = self;
  v6.super_class = HFItemGroupItem;
  v2 = [(HFItemGroupItem *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

- (HFItemGroupItem)initWithItems:(id)items
{
  itemsCopy = items;
  v6 = [(HFItemGroupItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
  }

  return v7;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  if (self->_items != itemsCopy)
  {
    v6 = itemsCopy;
    objc_storeStrong(&self->_items, items);
    itemsCopy = v6;
  }
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  items = [(HFItemGroupItem *)self items];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke;
  v20[3] = &unk_277E027D0;
  v21 = optionsCopy;
  v7 = optionsCopy;
  v8 = [items na_map:v20];

  v9 = MEMORY[0x277D2C900];
  allObjects = [v8 allObjects];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v12 = [v9 combineAllFutures:allObjects ignoringErrors:1 scheduler:mainThreadScheduler];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_2;
  v18[3] = &unk_277DF50B0;
  v18[4] = self;
  v13 = v5;
  v19 = v13;
  v14 = [v12 addCompletionBlock:v18];
  v15 = v19;
  v16 = v13;

  return v13;
}

void __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__27;
  v26 = __Block_byref_object_dispose__27;
  v27 = [MEMORY[0x277CBEB58] set];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__27;
  v20 = __Block_byref_object_dispose__27;
  v21 = [MEMORY[0x277CBEB58] set];
  v7 = [*(a1 + 32) items];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_4;
  v15[3] = &unk_277E027F8;
  v15[4] = &v16;
  v15[5] = &v22;
  v15[6] = &v28;
  [v7 na_each:v15];

  v8 = v17[5];
  v32[0] = @"dependentHomeKitClasses";
  v32[1] = @"dependentHomeKitObjects";
  v9 = v23[5];
  v33[0] = v8;
  v33[1] = v9;
  v32[2] = @"hidden";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v29 + 24)];
  v33[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

  v12 = *(a1 + 40);
  v13 = [HFItemUpdateOutcome outcomeWithResults:v11];
  [v12 finishWithResult:v13];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[4] + 8) + 40);
  v15 = v3;
  v5 = [v3 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"dependentHomeKitClasses"];
  if (v6)
  {
    [v4 unionSet:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    [v4 unionSet:v7];
  }

  v8 = *(*(a1[5] + 8) + 40);
  v9 = [v15 latestResults];
  v10 = [v9 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  if (v10)
  {
    [v8 unionSet:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
    [v8 unionSet:v11];
  }

  v12 = [v15 latestResults];
  v13 = [v12 objectForKeyedSubscript:@"hidden"];
  v14 = [v13 BOOLValue];

  if ((v14 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

@end