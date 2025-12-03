@interface HFChildServiceControlItem
- (BOOL)supportsItemRepresentingServices:(id)services;
- (HFChildServiceControlItem)initWithBaseValueSource:(id)source parentService:(id)service childServiceFilter:(id)filter displayResults:(id)results;
- (HFChildServiceControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
@end

@implementation HFChildServiceControlItem

- (HFChildServiceControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithBaseValueSource_parentService_childServiceFilter_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFChildServiceControlItem.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFChildServiceControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFChildServiceControlItem)initWithBaseValueSource:(id)source parentService:(id)service childServiceFilter:(id)filter displayResults:(id)results
{
  serviceCopy = service;
  filterCopy = filter;
  resultsCopy = results;
  sourceCopy = source;
  v15 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v16 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  hf_childServices = [serviceCopy hf_childServices];
  hf_serviceDescriptor = [serviceCopy hf_serviceDescriptor];
  v19 = [(HFSimpleAggregatedCharacteristicValueSource *)v16 initWithValueSource:sourceCopy services:hf_childServices primaryServiceDescriptor:hf_serviceDescriptor];

  v23.receiver = self;
  v23.super_class = HFChildServiceControlItem;
  v20 = [(HFControlItem *)&v23 initWithValueSource:v19 characteristicOptions:v15 displayResults:resultsCopy];

  if (v20)
  {
    objc_storeStrong(&v20->_parentService, service);
    v21 = filterCopy;
    if (!filterCopy)
    {
      v21 = [[HFChildServiceFilter alloc] initWithChildServiceTypes:0];
    }

    objc_storeStrong(&v20->_childServiceFilter, v21);
    if (!filterCopy)
    {
    }
  }

  return v20;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  v6 = objc_alloc(objc_opt_class());
  valueSource = [sourceCopy valueSource];

  parentService = [(HFChildServiceControlItem *)self parentService];
  childServiceFilter = [(HFChildServiceControlItem *)self childServiceFilter];
  displayResults = [(HFControlItem *)self displayResults];
  v11 = [v6 initWithBaseValueSource:valueSource parentService:parentService childServiceFilter:childServiceFilter displayResults:displayResults];

  [v11 copyLatestResultsFromItem:self];
  return v11;
}

- (id)_subclass_updateWithOptions:(id)options
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

- (BOOL)supportsItemRepresentingServices:(id)services
{
  servicesCopy = services;
  parentService = [(HFChildServiceControlItem *)self parentService];
  v6 = [servicesCopy containsObject:parentService];

  return v6;
}

@end