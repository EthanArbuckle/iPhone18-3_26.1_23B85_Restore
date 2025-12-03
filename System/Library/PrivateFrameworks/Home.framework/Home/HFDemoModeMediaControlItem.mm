@interface HFDemoModeMediaControlItem
- (HFDemoModeMediaControlItem)initWithDisplayResults:(id)results;
- (HFDemoModeMediaControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HMAccessory)accessory;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)readValueAndPopulateStandardResults;
- (id)toggleValue;
@end

@implementation HFDemoModeMediaControlItem

- (HFDemoModeMediaControlItem)initWithDisplayResults:(id)results
{
  resultsCopy = results;
  v5 = objc_alloc_init(HFNullValueSource);
  v6 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v7 = [MEMORY[0x277CBEB98] set];
  v8 = [(HFSimpleAggregatedCharacteristicValueSource *)v6 initWithValueSource:v5 characteristics:v7 primaryServiceDescriptor:0];

  v9 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v12.receiver = self;
  v12.super_class = HFDemoModeMediaControlItem;
  v10 = [(HFControlItem *)&v12 initWithValueSource:v8 characteristicOptions:v9 displayResults:resultsCopy];

  if (v10)
  {
    objc_storeStrong(&v10->_mediaValueSource, v5);
  }

  return v10;
}

- (HFDemoModeMediaControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithDisplayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDemoModeMediaControlItem.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HFDemoModeMediaControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  v5 = objc_alloc(objc_opt_class());
  displayResults = [(HFControlItem *)self displayResults];
  v7 = [v5 initWithDisplayResults:displayResults];

  return v7;
}

- (id)readValueAndPopulateStandardResults
{
  v22.receiver = self;
  v22.super_class = HFDemoModeMediaControlItem;
  readValueAndPopulateStandardResults = [(HFControlItem *)&v22 readValueAndPopulateStandardResults];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accessory = [(HFDemoModeMediaControlItem *)self accessory];
  applicationData = [accessory applicationData];
  v7 = [applicationData objectForKeyedSubscript:@"primaryDisplayState"];

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

  integerValue = [v10 integerValue];
  if (integerValue == 2)
  {
    v12 = &unk_282523E98;
  }

  else
  {
    v12 = &unk_282523EB0;
  }

  [dictionary setObject:v12 forKeyedSubscript:@"value"];
  [dictionary setObject:&unk_282523EC8 forKeyedSubscript:@"controlItemPurpose"];
  mediaValueSource = [(HFDemoModeMediaControlItem *)self mediaValueSource];
  v14 = [mediaValueSource mediaProfileContainerForRouteID:&stru_2824B1A78];
  hf_serviceNameComponents = [v14 hf_serviceNameComponents];

  if (hf_serviceNameComponents)
  {
    [dictionary setObject:hf_serviceNameComponents forKeyedSubscript:@"serviceNameComponents"];
    composedString = [hf_serviceNameComponents composedString];
    if (composedString)
    {
      [dictionary setObject:composedString forKeyedSubscript:@"title"];
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__HFDemoModeMediaControlItem_readValueAndPopulateStandardResults__block_invoke;
  v20[3] = &unk_277DF3FD0;
  v21 = dictionary;
  v17 = dictionary;
  v18 = [readValueAndPopulateStandardResults flatMap:v20];

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
  accessory = [(HFDemoModeMediaControlItem *)self accessory];
  applicationData = [accessory applicationData];
  v5 = [applicationData objectForKeyedSubscript:@"primaryDisplayState"];

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

  integerValue = [v9 integerValue];
  if (integerValue == 1)
  {
    v11 = &unk_282523E98;
  }

  else
  {
    v11 = &unk_282523EB0;
  }

  accessory2 = [(HFDemoModeMediaControlItem *)self accessory];
  applicationData2 = [accessory2 applicationData];
  [applicationData2 setObject:v11 forKeyedSubscript:@"primaryDisplayState"];

  v14 = +[HFDemoModeAccessoryManager sharedManager];
  accessory3 = [(HFDemoModeMediaControlItem *)self accessory];
  [v14 dispatchUpdateMessageForAccessory:accessory3];

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end