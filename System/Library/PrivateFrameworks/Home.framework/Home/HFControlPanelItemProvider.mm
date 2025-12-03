@interface HFControlPanelItemProvider
- (HFControlPanelItemProvider)init;
- (HFControlPanelItemProvider)initWithItem:(id)item valueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFControlPanelItemProvider

- (HFControlPanelItemProvider)initWithItem:(id)item valueSource:(id)source
{
  itemCopy = item;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HFControlPanelItemProvider;
  v8 = [(HFItemProvider *)&v14 init];
  if (v8)
  {
    v9 = [itemCopy copy];
    item = v8->_item;
    v8->_item = v9;

    objc_storeStrong(&v8->_valueSource, source);
    v11 = [MEMORY[0x277CBEB98] set];
    controlPanelItems = v8->_controlPanelItems;
    v8->_controlPanelItems = v11;
  }

  return v8;
}

- (HFControlPanelItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItem_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFControlPanelItemProvider.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HFControlPanelItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  item = [(HFControlPanelItemProvider *)self item];
  valueSource = [(HFControlPanelItemProvider *)self valueSource];
  v7 = [v4 initWithItem:item valueSource:valueSource];

  return v7;
}

- (id)reloadItems
{
  valueSource = [(HFControlPanelItemProvider *)self valueSource];
  v4 = [HFStaticReadPolicy policyWithDecision:0];
  [valueSource beginTransactionWithReason:@"disableControlPanelReads" readPolicy:v4 logger:0];

  v5 = objc_opt_new();
  item = [(HFControlPanelItemProvider *)self item];
  latestResults = [item latestResults];
  [v5 na_safeSetObject:latestResults forKey:HFItemUpdateOptionPreviousResults];

  item2 = [(HFControlPanelItemProvider *)self item];
  v9 = [item2 updateWithOptions:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__HFControlPanelItemProvider_reloadItems__block_invoke;
  v13[3] = &unk_277DF43A8;
  v13[4] = self;
  v10 = [v9 flatMap:v13];

  valueSource2 = [(HFControlPanelItemProvider *)self valueSource];
  [valueSource2 commitTransactionWithReason:@"disableControlPanelReads"];

  return v10;
}

id __41__HFControlPanelItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"childItems"];
  v4 = [v3 na_filter:&__block_literal_global_89];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v6;

  v8 = [HFControlPanelItem standardControlPanelItemsForControlItems:v7];
  v9 = [*(a1 + 32) filter];

  if (v9)
  {
    v10 = [*(a1 + 32) filter];
    v11 = [v8 na_filter:v10];

    v8 = v11;
  }

  v12 = [*(a1 + 32) controlPanelItems];
  v13 = [v12 na_setByDiffingWithSet:v8];

  v14 = [*(a1 + 32) controlPanelItems];
  v15 = [HFSetDiff diffFromSet:v14 toSet:v13];

  v16 = [HFItemProviderReloadResults alloc];
  v17 = [v15 additions];
  v18 = [v15 deletions];
  v19 = [v15 updates];
  v20 = [(HFItemProviderReloadResults *)v16 initWithAddedItems:v17 removedItems:v18 existingItems:v19];

  [*(a1 + 32) setControlPanelItems:v13];
  v21 = [MEMORY[0x277D2C900] futureWithResult:v20];

  return v21;
}

uint64_t __41__HFControlPanelItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFControlPanelItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"service";
  v8[1] = @"serviceGroup";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __56__HFControlPanelItemProvider_controlPanelItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortPriority];
  if (v6 != [v5 sortPriority])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "sortPriority")}];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "sortPriority")}];
LABEL_9:
    v12 = [v8 compare:v10];
    goto LABEL_10;
  }

  v7 = [v4 latestResults];
  v8 = [v7 objectForKeyedSubscript:@"title"];

  v9 = [v5 latestResults];
  v10 = [v9 objectForKeyedSubscript:@"title"];

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

@end