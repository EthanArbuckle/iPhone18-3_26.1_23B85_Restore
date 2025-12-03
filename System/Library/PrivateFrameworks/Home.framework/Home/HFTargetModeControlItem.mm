@interface HFTargetModeControlItem
- (HFTargetModeControlItem)initWithValueSource:(id)source characteristicType:(id)type possibleValueSet:(id)set displayResults:(id)results;
- (HFTargetModeControlItem)initWithValueSource:(id)source targetModeCharacteristicType:(id)type targetModeValueSet:(id)set primaryPowerStateControlItem:(id)item displayResults:(id)results;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)toggleValue;
- (id)updateWithOptions:(id)options;
- (id)valueForCharacteristicValues:(id)values;
@end

@implementation HFTargetModeControlItem

- (HFTargetModeControlItem)initWithValueSource:(id)source targetModeCharacteristicType:(id)type targetModeValueSet:(id)set primaryPowerStateControlItem:(id)item displayResults:(id)results
{
  v36[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  typeCopy = type;
  setCopy = set;
  itemCopy = item;
  resultsCopy = results;
  v14 = [setCopy copy];
  v35 = @"title";
  v15 = _HFLocalizedStringWithDefaultValue(@"HFControlTargetModeOff", @"HFControlTargetModeOff", 1);
  v36[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  [v14 addValue:&unk_2825249C0 displayResults:v16 addOnlyIfValid:0];

  objc_initWeak(&location, v14);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __139__HFTargetModeControlItem_initWithValueSource_targetModeCharacteristicType_targetModeValueSet_primaryPowerStateControlItem_displayResults___block_invoke;
  v31[3] = &unk_277DFEF10;
  objc_copyWeak(&v33, &location);
  v17 = setCopy;
  v32 = v17;
  [v14 setValueComparator:v31];
  characteristicOptions = [itemCopy characteristicOptions];
  v19 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
  v20 = [characteristicOptions optionsByAddingCharacteristicTypes:v19 forUsage:0];

  v30.receiver = self;
  v30.super_class = HFTargetModeControlItem;
  v21 = [(HFMultiStateControlItem *)&v30 initWithValueSource:sourceCopy multiStateCharacteristicType:typeCopy allCharacteristicOptions:v20 possibleValueSet:v14 displayResults:resultsCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_targetModeCharacteristicType, type);
    objc_storeStrong(&v22->_targetModeValueSet, set);
    v23 = [itemCopy copy];
    primaryPowerStateControlItem = v22->_primaryPowerStateControlItem;
    v22->_primaryPowerStateControlItem = v23;
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __139__HFTargetModeControlItem_initWithValueSource_targetModeCharacteristicType_targetModeValueSet_primaryPowerStateControlItem_displayResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && ([v5 isEqual:v6] & 1) == 0)
  {
    if ([v5 isEqual:&unk_2825249C0])
    {
      v9 = [WeakRetained count] == 2;
      v10 = -1;
    }

    else
    {
      if (![v6 isEqual:&unk_2825249C0])
      {
        v11 = [*(a1 + 32) valueComparator];
        v8 = (v11)[2](v11, v5, v6);

        goto LABEL_12;
      }

      v9 = [WeakRetained count] == 2;
      v10 = 1;
    }

    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = -v10;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (HFTargetModeControlItem)initWithValueSource:(id)source characteristicType:(id)type possibleValueSet:(id)set displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithValueSource_targetModeCharacteristicType_targetModeValueSet_primaryPowerStateControlItem_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTargetModeControlItem.m" lineNumber:66 description:{@"%s is unavailable; use %@ instead", "-[HFTargetModeControlItem initWithValueSource:characteristicType:possibleValueSet:displayResults:]", v9}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  primaryPowerStateControlItem = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  v7 = [primaryPowerStateControlItem copyWithValueSource:sourceCopy];

  v8 = objc_alloc(objc_opt_class());
  targetModeCharacteristicType = [(HFTargetModeControlItem *)self targetModeCharacteristicType];
  targetModeValueSet = [(HFTargetModeControlItem *)self targetModeValueSet];
  v11 = [targetModeValueSet copy];
  displayResults = [(HFControlItem *)self displayResults];
  v13 = [v8 initWithValueSource:sourceCopy targetModeCharacteristicType:targetModeCharacteristicType targetModeValueSet:v11 primaryPowerStateControlItem:v7 displayResults:displayResults];

  [v13 copyLatestResultsFromItem:self];
  return v13;
}

- (id)updateWithOptions:(id)options
{
  v15[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  primaryPowerStateControlItem = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  v6 = [primaryPowerStateControlItem updateWithOptions:optionsCopy];

  v7 = MEMORY[0x277D2C900];
  v14.receiver = self;
  v14.super_class = HFTargetModeControlItem;
  v8 = [(HFItem *)&v14 updateWithOptions:optionsCopy];

  v15[0] = v8;
  v15[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v7 combineAllFutures:v9];
  v11 = [v10 flatMap:&__block_literal_global_177];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __45__HFTargetModeControlItem_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 firstObject];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  primaryPowerStateControlItem = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  v6 = [primaryPowerStateControlItem valueForCharacteristicValues:valuesCopy];
  integerValue = [v6 integerValue];

  if (integerValue == 2)
  {
    v10.receiver = self;
    v10.super_class = HFTargetModeControlItem;
    v8 = [(HFMultiStateControlItem *)&v10 valueForCharacteristicValues:valuesCopy];
  }

  else
  {
    v8 = &unk_2825249C0;
  }

  return v8;
}

- (id)characteristicValuesForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    if ([valueCopy isEqual:&unk_2825249C0])
    {
      primaryPowerStateControlItem = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
      v7 = [primaryPowerStateControlItem characteristicValuesForValue:&unk_2825249D8];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = HFTargetModeControlItem;
      v9 = [(HFMultiStateControlItem *)&v12 characteristicValuesForValue:valueCopy];

      primaryPowerStateControlItem2 = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
      v7 = [primaryPowerStateControlItem2 characteristicValuesForValue:&unk_2825249F0];

      dictionary = v9;
    }

    v8 = [v7 mutableCopy];
    [v8 addEntriesFromDictionary:dictionary];
  }

  else
  {
    NSLog(&cfstr_UnexpectedDisp.isa, valueCopy);
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)toggleValue
{
  primaryPowerStateControlItem = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  toggleValue = [primaryPowerStateControlItem toggleValue];

  return toggleValue;
}

@end