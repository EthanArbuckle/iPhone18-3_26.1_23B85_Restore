@interface HFTargetModeControlItem
- (HFTargetModeControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 possibleValueSet:(id)a5 displayResults:(id)a6;
- (HFTargetModeControlItem)initWithValueSource:(id)a3 targetModeCharacteristicType:(id)a4 targetModeValueSet:(id)a5 primaryPowerStateControlItem:(id)a6 displayResults:(id)a7;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)toggleValue;
- (id)updateWithOptions:(id)a3;
- (id)valueForCharacteristicValues:(id)a3;
@end

@implementation HFTargetModeControlItem

- (HFTargetModeControlItem)initWithValueSource:(id)a3 targetModeCharacteristicType:(id)a4 targetModeValueSet:(id)a5 primaryPowerStateControlItem:(id)a6 displayResults:(id)a7
{
  v36[1] = *MEMORY[0x277D85DE8];
  v28 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29 = a7;
  v14 = [v12 copy];
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
  v17 = v12;
  v32 = v17;
  [v14 setValueComparator:v31];
  v18 = [v13 characteristicOptions];
  v19 = [MEMORY[0x277CBEB98] setWithObject:v11];
  v20 = [v18 optionsByAddingCharacteristicTypes:v19 forUsage:0];

  v30.receiver = self;
  v30.super_class = HFTargetModeControlItem;
  v21 = [(HFMultiStateControlItem *)&v30 initWithValueSource:v28 multiStateCharacteristicType:v11 allCharacteristicOptions:v20 possibleValueSet:v14 displayResults:v29];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_targetModeCharacteristicType, a4);
    objc_storeStrong(&v22->_targetModeValueSet, a5);
    v23 = [v13 copy];
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

- (HFTargetModeControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 possibleValueSet:(id)a5 displayResults:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithValueSource_targetModeCharacteristicType_targetModeValueSet_primaryPowerStateControlItem_displayResults_);
  [v8 handleFailureInMethod:a2 object:self file:@"HFTargetModeControlItem.m" lineNumber:66 description:{@"%s is unavailable; use %@ instead", "-[HFTargetModeControlItem initWithValueSource:characteristicType:possibleValueSet:displayResults:]", v9}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = a4;
  v6 = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  v7 = [v6 copyWithValueSource:v5];

  v8 = objc_alloc(objc_opt_class());
  v9 = [(HFTargetModeControlItem *)self targetModeCharacteristicType];
  v10 = [(HFTargetModeControlItem *)self targetModeValueSet];
  v11 = [v10 copy];
  v12 = [(HFControlItem *)self displayResults];
  v13 = [v8 initWithValueSource:v5 targetModeCharacteristicType:v9 targetModeValueSet:v11 primaryPowerStateControlItem:v7 displayResults:v12];

  [v13 copyLatestResultsFromItem:self];
  return v13;
}

- (id)updateWithOptions:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  v6 = [v5 updateWithOptions:v4];

  v7 = MEMORY[0x277D2C900];
  v14.receiver = self;
  v14.super_class = HFTargetModeControlItem;
  v8 = [(HFItem *)&v14 updateWithOptions:v4];

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

- (id)valueForCharacteristicValues:(id)a3
{
  v4 = a3;
  v5 = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  v6 = [v5 valueForCharacteristicValues:v4];
  v7 = [v6 integerValue];

  if (v7 == 2)
  {
    v10.receiver = self;
    v10.super_class = HFTargetModeControlItem;
    v8 = [(HFMultiStateControlItem *)&v10 valueForCharacteristicValues:v4];
  }

  else
  {
    v8 = &unk_2825249C0;
  }

  return v8;
}

- (id)characteristicValuesForValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
    if ([v4 isEqual:&unk_2825249C0])
    {
      v6 = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
      v7 = [v6 characteristicValuesForValue:&unk_2825249D8];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = HFTargetModeControlItem;
      v9 = [(HFMultiStateControlItem *)&v12 characteristicValuesForValue:v4];

      v10 = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
      v7 = [v10 characteristicValuesForValue:&unk_2825249F0];

      v5 = v9;
    }

    v8 = [v7 mutableCopy];
    [v8 addEntriesFromDictionary:v5];
  }

  else
  {
    NSLog(&cfstr_UnexpectedDisp.isa, v4);
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)toggleValue
{
  v2 = [(HFTargetModeControlItem *)self primaryPowerStateControlItem];
  v3 = [v2 toggleValue];

  return v3;
}

@end