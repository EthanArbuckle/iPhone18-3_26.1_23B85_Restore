@interface HFChildServiceControlItem
- (BOOL)supportsItemRepresentingServices:(id)a3;
- (HFChildServiceControlItem)initWithBaseValueSource:(id)a3 parentService:(id)a4 childServiceFilter:(id)a5 displayResults:(id)a6;
- (HFChildServiceControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
@end

@implementation HFChildServiceControlItem

- (HFChildServiceControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithBaseValueSource_parentService_childServiceFilter_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFChildServiceControlItem.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFChildServiceControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFChildServiceControlItem)initWithBaseValueSource:(id)a3 parentService:(id)a4 childServiceFilter:(id)a5 displayResults:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  v15 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v16 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v17 = [v11 hf_childServices];
  v18 = [v11 hf_serviceDescriptor];
  v19 = [(HFSimpleAggregatedCharacteristicValueSource *)v16 initWithValueSource:v14 services:v17 primaryServiceDescriptor:v18];

  v23.receiver = self;
  v23.super_class = HFChildServiceControlItem;
  v20 = [(HFControlItem *)&v23 initWithValueSource:v19 characteristicOptions:v15 displayResults:v13];

  if (v20)
  {
    objc_storeStrong(&v20->_parentService, a4);
    v21 = v12;
    if (!v12)
    {
      v21 = [[HFChildServiceFilter alloc] initWithChildServiceTypes:0];
    }

    objc_storeStrong(&v20->_childServiceFilter, v21);
    if (!v12)
    {
    }
  }

  return v20;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(objc_opt_class());
  v7 = [v5 valueSource];

  v8 = [(HFChildServiceControlItem *)self parentService];
  v9 = [(HFChildServiceControlItem *)self childServiceFilter];
  v10 = [(HFControlItem *)self displayResults];
  v11 = [v6 initWithBaseValueSource:v7 parentService:v8 childServiceFilter:v9 displayResults:v10];

  [v11 copyLatestResultsFromItem:self];
  return v11;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__HFChildServiceControlItem__subclass_updateWithOptions___block_invoke;
  v20[3] = &unk_277DF8820;
  v20[4] = self;
  v4 = __57__HFChildServiceControlItem__subclass_updateWithOptions___block_invoke(v20);
  v5 = [HFCharacteristicBatchReadResponse alloc];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(HFCharacteristicBatchReadResponse *)v5 initWithReadResponses:v6 contextProvider:0];
  v8 = [(HFControlItem *)self resultsForBatchReadResponse:v7];
  v9 = [v8 mutableCopy];

  [v9 setObject:v4 forKeyedSubscript:@"childServices"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__HFChildServiceControlItem__subclass_updateWithOptions___block_invoke_2;
  v17[3] = &unk_277DF8848;
  v18 = v9;
  v19 = v4;
  v10 = v4;
  v11 = v9;
  v12 = __57__HFChildServiceControlItem__subclass_updateWithOptions___block_invoke_2(v17);
  [v11 setObject:v12 forKeyedSubscript:@"dependentHomeKitObjects"];

  v13 = MEMORY[0x277D2C900];
  v14 = [HFItemUpdateOutcome outcomeWithResults:v11];
  v15 = [v13 futureWithResult:v14];

  return v15;
}

id __57__HFChildServiceControlItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) childServiceFilter];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 childServiceFilter];
    v5 = [*(a1 + 32) parentService];
    v6 = [v4 filteredChildServicesForParentService:v5];
  }

  else
  {
    v4 = [v3 parentService];
    v6 = [v4 hf_childServices];
  }

  return v6;
}

id __57__HFChildServiceControlItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
    v4 = [v5 mutableCopy];
  }

  [v4 unionSet:*(a1 + 40)];

  return v4;
}

- (BOOL)supportsItemRepresentingServices:(id)a3
{
  v4 = a3;
  v5 = [(HFChildServiceControlItem *)self parentService];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end