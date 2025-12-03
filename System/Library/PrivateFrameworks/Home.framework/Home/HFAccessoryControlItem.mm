@interface HFAccessoryControlItem
- (BOOL)supportsItemRepresentingServices:(id)services;
- (HFAccessoryControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFAccessoryControlItem)initWithValueSource:(id)source parentAccessory:(id)accessory displayResults:(id)results;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
@end

@implementation HFAccessoryControlItem

- (HFAccessoryControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_parentAccessory_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryControlItem.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFAccessoryControlItem)initWithValueSource:(id)source parentAccessory:(id)accessory displayResults:(id)results
{
  accessoryCopy = accessory;
  resultsCopy = results;
  sourceCopy = source;
  v12 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v13 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  hf_visibleServices = [accessoryCopy hf_visibleServices];
  hf_primaryService = [accessoryCopy hf_primaryService];
  hf_serviceDescriptor = [hf_primaryService hf_serviceDescriptor];
  v17 = [(HFSimpleAggregatedCharacteristicValueSource *)v13 initWithValueSource:sourceCopy services:hf_visibleServices primaryServiceDescriptor:hf_serviceDescriptor];

  v20.receiver = self;
  v20.super_class = HFAccessoryControlItem;
  v18 = [(HFControlItem *)&v20 initWithValueSource:v17 characteristicOptions:v12 displayResults:resultsCopy];

  if (v18)
  {
    objc_storeStrong(&v18->_accessory, accessory);
  }

  return v18;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  v5 = [HFAccessoryControlItem alloc];
  valueSource = [(HFControlItem *)self valueSource];
  v6ValueSource = [valueSource valueSource];
  accessory = [(HFAccessoryControlItem *)self accessory];
  displayResults = [(HFControlItem *)self displayResults];
  v10 = [(HFAccessoryControlItem *)v5 initWithValueSource:v6ValueSource parentAccessory:accessory displayResults:displayResults];

  [(HFItem *)v10 copyLatestResultsFromItem:self];
  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  accessory = [(HFAccessoryControlItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];

  v6 = [HFCharacteristicBatchReadResponse alloc];
  v7 = [MEMORY[0x277CBEB98] set];
  v8 = [(HFCharacteristicBatchReadResponse *)v6 initWithReadResponses:v7 contextProvider:0];
  v9 = [(HFControlItem *)self resultsForBatchReadResponse:v8];
  v10 = [v9 mutableCopy];

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __54__HFAccessoryControlItem__subclass_updateWithOptions___block_invoke;
  v25 = &unk_277DF8848;
  v11 = v10;
  v26 = v11;
  v12 = hf_visibleServices;
  v27 = v12;
  v13 = __54__HFAccessoryControlItem__subclass_updateWithOptions___block_invoke(&v22);
  [v11 setObject:v13 forKeyedSubscript:{@"dependentHomeKitObjects", v22, v23, v24, v25}];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v11 objectForKeyedSubscript:@"actionRequiresDeviceUnlock"];
  if ([v15 BOOLValue])
  {
    v16 = 1;
  }

  else
  {
    v16 = [v12 na_any:&__block_literal_global_174];
  }

  v17 = [v14 numberWithInt:v16];
  [v11 setObject:v17 forKeyedSubscript:@"actionRequiresDeviceUnlock"];

  v18 = MEMORY[0x277D2C900];
  v19 = [HFItemUpdateOutcome outcomeWithResults:v11];
  v20 = [v18 futureWithResult:v19];

  return v20;
}

id __54__HFAccessoryControlItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
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
  accessory = [(HFAccessoryControlItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  v7 = [servicesCopy isSubsetOfSet:hf_visibleServices];

  return v7;
}

@end