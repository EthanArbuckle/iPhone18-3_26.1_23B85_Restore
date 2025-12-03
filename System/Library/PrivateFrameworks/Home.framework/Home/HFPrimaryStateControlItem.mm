@interface HFPrimaryStateControlItem
- (BOOL)canCopyWithCharacteristicOptions:(id)options;
- (HFPrimaryStateControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFPrimaryStateControlItem)initWithValueSource:(id)source characteristicType:(id)type valueTransformer:(id)transformer displayResults:(id)results;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)toggleValue;
- (id)valueForCharacteristicValues:(id)values;
- (id)writePrimaryState:(int64_t)state;
- (id)writeValue:(id)value;
@end

@implementation HFPrimaryStateControlItem

- (HFPrimaryStateControlItem)initWithValueSource:(id)source characteristicType:(id)type valueTransformer:(id)transformer displayResults:(id)results
{
  v25[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  transformerCopy = transformer;
  resultsCopy = results;
  sourceCopy = source;
  v14 = [HFControlItemCharacteristicOptions alloc];
  v24 = &unk_282524E40;
  v15 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
  v25[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v17 = [(HFControlItemCharacteristicOptions *)v14 initWithCharacteristicTypesByUsage:v16];

  v23.receiver = self;
  v23.super_class = HFPrimaryStateControlItem;
  v18 = [(HFControlItem *)&v23 initWithValueSource:sourceCopy characteristicOptions:v17 displayResults:resultsCopy];

  if (v18)
  {
    objc_storeStrong(&v18->_valueTransformer, transformer);
    v19 = [typeCopy copy];
    primaryStateCharacteristicType = v18->_primaryStateCharacteristicType;
    v18->_primaryStateCharacteristicType = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HFPrimaryStateControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  v6.receiver = self;
  v6.super_class = HFPrimaryStateControlItem;
  return [(HFControlItem *)&v6 initWithValueSource:source characteristicOptions:options displayResults:results];
}

- (BOOL)canCopyWithCharacteristicOptions:(id)options
{
  optionsCopy = options;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  v6 = [optionsCopy isEqual:characteristicOptions];

  return v6;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFPrimaryStateControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = objc_alloc(objc_opt_class());
    primaryStateCharacteristicType = [(HFPrimaryStateControlItem *)self primaryStateCharacteristicType];
    valueTransformer = [(HFPrimaryStateControlItem *)self valueTransformer];
    displayResults = [(HFControlItem *)self displayResults];
    v11 = [v7 initWithValueSource:sourceCopy characteristicType:primaryStateCharacteristicType valueTransformer:valueTransformer displayResults:displayResults];

    [v11 copyLatestResultsFromItem:self];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)writeValue:(id)value
{
  v5.receiver = self;
  v5.super_class = HFPrimaryStateControlItem;
  v3 = [(HFControlItem *)&v5 writeValue:value];

  return v3;
}

- (id)writePrimaryState:(int64_t)state
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v5 = [(HFPrimaryStateControlItem *)self writeValue:v4];

  return v5;
}

- (id)toggleValue
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];
  v6 = off_277DF0150;
  if (!hasOptedToHH2)
  {
    v6 = off_277DF0158;
  }

  v7 = *v6;
  v8 = objc_opt_new();

  valueSource = [(HFControlItem *)self valueSource];
  [valueSource beginTransactionWithReason:@"HFPrimaryStateControlItem-Toggle" readPolicy:v8 logger:0];

  readValueAndPopulateStandardResults = [(HFControlItem *)self readValueAndPopulateStandardResults];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__HFPrimaryStateControlItem_toggleValue__block_invoke;
  v14[3] = &unk_277DF3FD0;
  v14[4] = self;
  v11 = [readValueAndPopulateStandardResults flatMap:v14];

  valueSource2 = [(HFControlItem *)self valueSource];
  [valueSource2 commitTransactionWithReason:@"HFPrimaryStateControlItem-Toggle"];

  return v11;
}

id __40__HFPrimaryStateControlItem_toggleValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"value"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (v5 == 1);
    }

    v7 = [*(a1 + 32) writePrimaryState:v6];
  }

  else
  {
    v8 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v7 = [v8 futureWithError:v9];
  }

  return v7;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  primaryStateCharacteristicType = [(HFPrimaryStateControlItem *)self primaryStateCharacteristicType];
  v6 = [valuesCopy objectForKeyedSubscript:primaryStateCharacteristicType];

  valueTransformer = [(HFPrimaryStateControlItem *)self valueTransformer];
  v8 = [valueTransformer transformedValueForValue:v6];

  return v8;
}

- (id)characteristicValuesForValue:(id)value
{
  v13[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  valueTransformer = [(HFPrimaryStateControlItem *)self valueTransformer];
  v6 = [valueTransformer valueForTransformedValue:valueCopy];

  primaryStateCharacteristicType = [(HFPrimaryStateControlItem *)self primaryStateCharacteristicType];
  v12 = primaryStateCharacteristicType;
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end