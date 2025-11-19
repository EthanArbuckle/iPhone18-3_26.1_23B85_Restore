@interface HFAccessoryControlItem
- (BOOL)supportsItemRepresentingServices:(id)a3;
- (HFAccessoryControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFAccessoryControlItem)initWithValueSource:(id)a3 parentAccessory:(id)a4 displayResults:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
@end

@implementation HFAccessoryControlItem

- (HFAccessoryControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_parentAccessory_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFAccessoryControlItem.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFAccessoryControlItem)initWithValueSource:(id)a3 parentAccessory:(id)a4 displayResults:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v13 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v14 = [v9 hf_visibleServices];
  v15 = [v9 hf_primaryService];
  v16 = [v15 hf_serviceDescriptor];
  v17 = [(HFSimpleAggregatedCharacteristicValueSource *)v13 initWithValueSource:v11 services:v14 primaryServiceDescriptor:v16];

  v20.receiver = self;
  v20.super_class = HFAccessoryControlItem;
  v18 = [(HFControlItem *)&v20 initWithValueSource:v17 characteristicOptions:v12 displayResults:v10];

  if (v18)
  {
    objc_storeStrong(&v18->_accessory, a4);
  }

  return v18;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = [HFAccessoryControlItem alloc];
  v6 = [(HFControlItem *)self valueSource];
  v7 = [v6 valueSource];
  v8 = [(HFAccessoryControlItem *)self accessory];
  v9 = [(HFControlItem *)self displayResults];
  v10 = [(HFAccessoryControlItem *)v5 initWithValueSource:v7 parentAccessory:v8 displayResults:v9];

  [(HFItem *)v10 copyLatestResultsFromItem:self];
  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HFAccessoryControlItem *)self accessory];
  v5 = [v4 hf_visibleServices];

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
  v12 = v5;
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

- (BOOL)supportsItemRepresentingServices:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryControlItem *)self accessory];
  v6 = [v5 hf_visibleServices];
  v7 = [v4 isSubsetOfSet:v6];

  return v7;
}

@end