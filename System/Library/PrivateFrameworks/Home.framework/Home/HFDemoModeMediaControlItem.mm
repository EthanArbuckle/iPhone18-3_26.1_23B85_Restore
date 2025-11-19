@interface HFDemoModeMediaControlItem
- (HFDemoModeMediaControlItem)initWithDisplayResults:(id)a3;
- (HFDemoModeMediaControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HMAccessory)accessory;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)readValueAndPopulateStandardResults;
- (id)toggleValue;
@end

@implementation HFDemoModeMediaControlItem

- (HFDemoModeMediaControlItem)initWithDisplayResults:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HFNullValueSource);
  v6 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v7 = [MEMORY[0x277CBEB98] set];
  v8 = [(HFSimpleAggregatedCharacteristicValueSource *)v6 initWithValueSource:v5 characteristics:v7 primaryServiceDescriptor:0];

  v9 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v12.receiver = self;
  v12.super_class = HFDemoModeMediaControlItem;
  v10 = [(HFControlItem *)&v12 initWithValueSource:v8 characteristicOptions:v9 displayResults:v4];

  if (v10)
  {
    objc_storeStrong(&v10->_mediaValueSource, v5);
  }

  return v10;
}

- (HFDemoModeMediaControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithDisplayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFDemoModeMediaControlItem.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HFDemoModeMediaControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFControlItem *)self displayResults];
  v7 = [v5 initWithDisplayResults:v6];

  return v7;
}

- (id)readValueAndPopulateStandardResults
{
  v22.receiver = self;
  v22.super_class = HFDemoModeMediaControlItem;
  v3 = [(HFControlItem *)&v22 readValueAndPopulateStandardResults];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFDemoModeMediaControlItem *)self accessory];
  v6 = [v5 applicationData];
  v7 = [v6 objectForKeyedSubscript:@"primaryDisplayState"];

  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 integerValue];
  if (v11 == 2)
  {
    v12 = &unk_282523E98;
  }

  else
  {
    v12 = &unk_282523EB0;
  }

  [v4 setObject:v12 forKeyedSubscript:@"value"];
  [v4 setObject:&unk_282523EC8 forKeyedSubscript:@"controlItemPurpose"];
  v13 = [(HFDemoModeMediaControlItem *)self mediaValueSource];
  v14 = [v13 mediaProfileContainerForRouteID:&stru_2824B1A78];
  v15 = [v14 hf_serviceNameComponents];

  if (v15)
  {
    [v4 setObject:v15 forKeyedSubscript:@"serviceNameComponents"];
    v16 = [v15 composedString];
    if (v16)
    {
      [v4 setObject:v16 forKeyedSubscript:@"title"];
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__HFDemoModeMediaControlItem_readValueAndPopulateStandardResults__block_invoke;
  v20[3] = &unk_277DF3FD0;
  v21 = v4;
  v17 = v4;
  v18 = [v3 flatMap:v20];

  return v18;
}

id __65__HFDemoModeMediaControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a2];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)toggleValue
{
  v3 = [(HFDemoModeMediaControlItem *)self accessory];
  v4 = [v3 applicationData];
  v5 = [v4 objectForKeyedSubscript:@"primaryDisplayState"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_282523EB0;
  }

  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 integerValue];
  if (v10 == 1)
  {
    v11 = &unk_282523E98;
  }

  else
  {
    v11 = &unk_282523EB0;
  }

  v12 = [(HFDemoModeMediaControlItem *)self accessory];
  v13 = [v12 applicationData];
  [v13 setObject:v11 forKeyedSubscript:@"primaryDisplayState"];

  v14 = +[HFDemoModeAccessoryManager sharedManager];
  v15 = [(HFDemoModeMediaControlItem *)self accessory];
  [v14 dispatchUpdateMessageForAccessory:v15];

  v16 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v16;
}

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end