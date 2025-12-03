@interface HFAbstractGroupedStatusItem
+ (id)sortKey;
+ (id)statusItemClasses;
- (BOOL)_hasRequiredStatusItems;
- (BOOL)shouldEncapsulateItem:(id)item;
- (NSSet)items;
- (id)_statusItemOfClass:(Class)class;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addItem:(id)item;
- (void)removeItem:(id)item;
@end

@implementation HFAbstractGroupedStatusItem

- (NSSet)items
{
  displayedItems = self->_displayedItems;
  if (displayedItems)
  {
    v3 = displayedItems;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  return v3;
}

- (BOOL)shouldEncapsulateItem:(id)item
{
  itemCopy = item;
  statusItemClasses = [objc_opt_class() statusItemClasses];
  if ([statusItemClasses containsObject:objc_opt_class()])
  {
    latestResults = [itemCopy latestResults];
    v6 = [latestResults objectForKeyedSubscript:@"hidden"];
    v7 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  if (!self->_allItems)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    allItems = self->_allItems;
    self->_allItems = v4;
  }

  allItems = [(HFAbstractGroupedStatusItem *)self allItems];
  [allItems addObject:itemCopy];
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  allItems = [(HFAbstractGroupedStatusItem *)self allItems];
  [allItems removeObject:itemCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HFAbstractGroupedStatusItem;
  v5 = [(HFStatusItem *)&v9 copyWithZone:?];
  allItems = [(HFAbstractGroupedStatusItem *)self allItems];
  v7 = [allItems copyWithZone:zone];
  [v5 setAllItems:v7];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v30[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (-[HFAbstractGroupedStatusItem _hasRequiredStatusItems](self, "_hasRequiredStatusItems") && ([optionsCopy objectForKey:HFItemUpdateOptionFastInitialUpdate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, !v6))
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    allItems = [(HFAbstractGroupedStatusItem *)self allItems];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __59__HFAbstractGroupedStatusItem__subclass_updateWithOptions___block_invoke;
    v27[3] = &unk_277DF4310;
    v28 = optionsCopy;
    v13 = [allItems na_map:v27];

    v14 = MEMORY[0x277D2C900];
    allObjects = [v13 allObjects];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v17 = [v14 combineAllFutures:allObjects ignoringErrors:1 scheduler:mainThreadScheduler];

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__HFAbstractGroupedStatusItem__subclass_updateWithOptions___block_invoke_2;
    v23[3] = &unk_277DF4360;
    objc_copyWeak(&v25, &location);
    v18 = v11;
    v24 = v18;
    v19 = [v17 addCompletionBlock:v23];
    v20 = v24;
    v8 = v18;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);

    v9 = v28;
    v10 = v8;
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    v29 = @"hidden";
    v30[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v9 = [HFItemUpdateOutcome outcomeWithResults:v8];
    v10 = [v7 futureWithResult:v9];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

void __59__HFAbstractGroupedStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__10;
    v49 = __Block_byref_object_dispose__10;
    v50 = objc_opt_new();
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = -1;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 4;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__10;
    v35 = __Block_byref_object_dispose__10;
    v36 = [MEMORY[0x277CBEB58] set];
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__10;
    v29 = __Block_byref_object_dispose__10;
    v30 = [MEMORY[0x277CBEB58] set];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__10;
    v23 = __Block_byref_object_dispose__10;
    v24 = [MEMORY[0x277CBEB58] set];
    v9 = [WeakRetained allItems];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__HFAbstractGroupedStatusItem__subclass_updateWithOptions___block_invoke_7;
    v18[3] = &unk_277DF98E0;
    v18[4] = WeakRetained;
    v18[5] = &v45;
    v18[6] = &v19;
    v18[7] = &v41;
    v18[8] = &v37;
    v18[9] = &v31;
    v18[10] = &v25;
    [v9 na_each:v18];

    [WeakRetained setDisplayedItems:v46[5]];
    [v8 setObject:v26[5] forKeyedSubscript:@"dependentHomeKitObjects"];
    [v8 setObject:v32[5] forKeyedSubscript:@"dependentServiceTypes"];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v42[3]];
    [v8 setObject:v10 forKeyedSubscript:@"priority"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38[3]];
    [v8 setObject:v11 forKeyedSubscript:@"statusItemCategory"];

    [v8 setObject:v20[5] forKeyedSubscript:@"representedHomeKitObjects"];
    v12 = [objc_opt_class() sortKey];
    [v8 setObject:v12 forKeyedSubscript:@"sortKey"];

    v13 = *(a1 + 32);
    v14 = [HFItemUpdateOutcome outcomeWithResults:v8];
    [v13 finishWithResult:v14];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v15 = *(a1 + 32);
    v51 = @"hidden";
    v52[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v16 = [HFItemUpdateOutcome outcomeWithResults:v8];
    [v15 finishWithResult:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __59__HFAbstractGroupedStatusItem__subclass_updateWithOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [*(a1 + 32) shouldEncapsulateItem:v27];
  v4 = v27;
  if (v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v27];
    v5 = *(*(*(a1 + 48) + 8) + 40);
    v6 = [v27 latestResults];
    v7 = [v6 objectForKeyedSubscript:@"representedHomeKitObjects"];
    if (v7)
    {
      [v5 unionSet:v7];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB98] set];
      [v5 unionSet:v8];
    }

    v9 = [v27 latestResults];
    v10 = [v9 objectForKeyedSubscript:@"priority"];
    v11 = [v10 integerValue];

    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 24);
    if (v13 <= v11)
    {
      v13 = v11;
    }

    *(v12 + 24) = v13;
    v14 = [v27 latestResults];
    v15 = [v14 objectForKeyedSubscript:@"statusItemCategory"];
    v16 = [v15 integerValue];

    v4 = v27;
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 24);
    if (v18 >= v16)
    {
      v18 = v16;
    }

    *(v17 + 24) = v18;
  }

  v19 = *(*(*(a1 + 72) + 8) + 40);
  v20 = [v4 latestResults];
  v21 = [v20 objectForKeyedSubscript:@"dependentServiceTypes"];
  if (v21)
  {
    [v19 unionSet:v21];
  }

  else
  {
    v22 = [MEMORY[0x277CBEB98] set];
    [v19 unionSet:v22];
  }

  v23 = *(*(*(a1 + 80) + 8) + 40);
  v24 = [v27 latestResults];
  v25 = [v24 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  if (v25)
  {
    [v23 unionSet:v25];
  }

  else
  {
    v26 = [MEMORY[0x277CBEB98] set];
    [v23 unionSet:v26];
  }
}

- (BOOL)_hasRequiredStatusItems
{
  statusItemClasses = [objc_opt_class() statusItemClasses];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HFAbstractGroupedStatusItem__hasRequiredStatusItems__block_invoke;
  v5[3] = &unk_277DF9908;
  v5[4] = self;
  LOBYTE(self) = [statusItemClasses na_any:v5];

  return self ^ 1;
}

BOOL __54__HFAbstractGroupedStatusItem__hasRequiredStatusItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _statusItemOfClass:a2];
  v3 = v2 == 0;

  return v3;
}

- (id)_statusItemOfClass:(Class)class
{
  allItems = [(HFAbstractGroupedStatusItem *)self allItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HFAbstractGroupedStatusItem__statusItemOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e22_B16__0__HFStatusItem_8lu32l8;
  v7[4] = class;
  v5 = [allItems na_firstObjectPassingTest:v7];

  return v5;
}

+ (id)statusItemClasses
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractGroupedStatusItem.m" lineNumber:160 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractGroupedStatusItem statusItemClasses]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

+ (id)sortKey
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractGroupedStatusItem.m" lineNumber:166 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractGroupedStatusItem sortKey]", objc_opt_class()}];

  return 0;
}

@end