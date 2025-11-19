@interface HFRangeControlItem
+ (BOOL)_hasWritableCharacteristicsOfType:(id)a3 valueSource:(id)a4;
+ (id)readOnlyCharacteristicTypes;
- (HFNumberValueConstraints)maximumValueConstraints;
- (HFNumberValueConstraints)minimumValueConstraints;
- (HFNumberValueConstraints)targetValueConstraints;
- (HFRangeControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFRangeControlItem)initWithValueSource:(id)a3 targetCharacteristicTypes:(id)a4 minimumCharacteristicType:(id)a5 maximumCharacteristicType:(id)a6 displayResults:(id)a7;
- (NSNumber)maximumValue;
- (NSNumber)minimumValue;
- (NSNumber)stepValue;
- (id)_maximumCharacteristicTypeMetadata;
- (id)_minimumCharacteristicTypeMetadata;
- (id)_targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:(id)a3;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)maximumCharacteristicTypeStepValue;
- (id)minimumCharacteristicTypeStepValue;
- (id)resultsForBatchReadResponse:(id)a3;
- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)a3;
- (id)valueForCharacteristicValues:(id)a3;
- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)a3;
@end

@implementation HFRangeControlItem

- (HFRangeControlItem)initWithValueSource:(id)a3 targetCharacteristicTypes:(id)a4 minimumCharacteristicType:(id)a5 maximumCharacteristicType:(id)a6 displayResults:(id)a7
{
  v33[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13 && [v13 count])
  {
    obj = a6;
    v17 = [MEMORY[0x277CBEB58] set];
    v30 = v14;
    [v17 na_safeAddObject:v14];
    v29 = v15;
    [v17 na_safeAddObject:v15];
    [v17 unionSet:v13];
    v18 = [HFControlItemCharacteristicOptions alloc];
    v32[0] = &unk_282523DF0;
    v32[1] = &unk_282523E08;
    v33[0] = v17;
    v19 = [objc_opt_class() readOnlyCharacteristicTypes];
    v33[1] = v19;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v21 = v20 = v12;
    v22 = [(HFControlItemCharacteristicOptions *)v18 initWithCharacteristicTypesByUsage:v21];

    v12 = v20;
    v31.receiver = self;
    v31.super_class = HFRangeControlItem;
    v23 = [(HFControlItem *)&v31 initWithValueSource:v20 characteristicOptions:v22 displayResults:v16];
    p_isa = &v23->super.super.super.isa;
    if (v23)
    {
      objc_storeStrong(&v23->_targetCharacteristicTypes, a4);
      objc_storeStrong(p_isa + 11, a5);
      objc_storeStrong(p_isa + 12, obj);
    }

    self = p_isa;

    v25 = self;
    v15 = v29;
    v14 = v30;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (HFRangeControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_targetCharacteristicTypes_minimumCharacteristicType_maximumCharacteristicType_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFRangeControlItem.m" lineNumber:79 description:{@"%s is unavailable; use %@ instead", "-[HFRangeControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  if ([(HFControlItem *)self canCopyWithCharacteristicOptions:a3])
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [(HFRangeControlItem *)self targetCharacteristicTypes];
    v9 = [(HFRangeControlItem *)self minimumCharacteristicType];
    v10 = [(HFRangeControlItem *)self maximumCharacteristicType];
    v11 = [(HFControlItem *)self displayResults];
    v12 = [v7 initWithValueSource:v6 targetCharacteristicTypes:v8 minimumCharacteristicType:v9 maximumCharacteristicType:v10 displayResults:v11];

    [v12 copyLatestResultsFromItem:self];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)valueForCharacteristicValues:(id)a3
{
  v4 = a3;
  v5 = [(HFItem *)self latestResults];
  v6 = [v5 objectForKeyedSubscript:@"characteristicValuesByType"];
  v7 = v6;
  if (!v6)
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v8 = [v6 mutableCopy];

  [v8 addEntriesFromDictionary:v4];
  v9 = objc_alloc_init(HFRangeControlItemValue);
  v10 = [(HFRangeControlItem *)self targetCharacteristicTypeWithCharacteristicValuesKeyedByType:v8];
  if (v10)
  {
    v11 = [(HFRangeControlItem *)self targetCharacteristicTypes];
    v12 = [v11 containsObject:v10];

    if ((v12 & 1) == 0)
    {
      v13 = [(HFRangeControlItem *)self targetCharacteristicTypes];
      NSLog(&cfstr_Hfrangecontrol_1.isa, v10, v13, self);
    }

    v14 = [v4 objectForKeyedSubscript:v10];
    [(HFRangeControlItemValue *)v9 setTargetValue:v14];
  }

  v15 = [(HFRangeControlItem *)self minimumCharacteristicType];

  if (v15)
  {
    v16 = [(HFRangeControlItem *)self minimumCharacteristicType];
    v17 = [v4 objectForKeyedSubscript:v16];
    [(HFRangeControlItemValue *)v9 setMinimumValue:v17];
  }

  v18 = [(HFRangeControlItem *)self maximumCharacteristicType];

  if (v18)
  {
    v19 = [(HFRangeControlItem *)self maximumCharacteristicType];
    v20 = [v4 objectForKeyedSubscript:v19];
    [(HFRangeControlItemValue *)v9 setMaximumValue:v20];
  }

  [(HFRangeControlItemValue *)v9 setMode:[(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v8]];

  return v9;
}

- (id)characteristicValuesForValue:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v6 = [(HFItem *)self latestResults];
  v7 = [v6 objectForKeyedSubscript:@"characteristicValuesByType"];
  v8 = [(HFRangeControlItem *)self targetCharacteristicTypeWithCharacteristicValuesKeyedByType:v7];

  v9 = [v4 targetValue];

  if (v9 && v8)
  {
    v10 = [v4 targetValue];
    [v5 setObject:v10 forKey:v8];
  }

  v11 = [v4 minimumValue];
  if (v11)
  {
    v12 = v11;
    v13 = [(HFRangeControlItem *)self minimumCharacteristicType];

    if (v13)
    {
      v14 = [v4 minimumValue];
      v15 = [(HFRangeControlItem *)self minimumCharacteristicType];
      [v5 setObject:v14 forKey:v15];
    }
  }

  v16 = [v4 maximumValue];
  if (v16)
  {
    v17 = v16;
    v18 = [(HFRangeControlItem *)self maximumCharacteristicType];

    if (v18)
    {
      v19 = [v4 maximumValue];
      v20 = [(HFRangeControlItem *)self maximumCharacteristicType];
      [v5 setObject:v19 forKey:v20];
    }
  }

  v21 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v5];

  return v21;
}

- (id)resultsForBatchReadResponse:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HFRangeControlItem;
  v5 = [(HFControlItem *)&v20 resultsForBatchReadResponse:v4];
  v6 = [v5 mutableCopy];

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"preferLiveWritesDuringInteraction"];
  [v6 setObject:&unk_282523E08 forKeyedSubscript:@"preferredInteractionFidelity"];
  v7 = [(HFRangeControlItem *)self numberValueFormatter];
  if (v7)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__HFRangeControlItem_resultsForBatchReadResponse___block_invoke;
    v17 = &unk_277DF78D8;
    v18 = v4;
    v19 = self;
    v8 = __50__HFRangeControlItem_resultsForBatchReadResponse___block_invoke(&v14);
    if (v8)
    {
      v9 = [HFNumberRangeFormatter alloc];
      v10 = [(HFNumberRangeFormatter *)v9 initWithNumberFormatter:v7, v14, v15, v16, v17];
      v11 = [v8 numberRange];
      v12 = [(HFNumberRangeFormatter *)v10 stringForObjectValue:v11];
      [v6 setObject:v12 forKeyedSubscript:@"description"];
    }
  }

  return v6;
}

id __50__HFRangeControlItem_resultsForBatchReadResponse___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) allCharacteristicTypes];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [*(a1 + 32) responseForCharacteristicType:v8];
        v10 = [v9 value];
        [v2 setObject:v10 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 40) valueForCharacteristicValues:v2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HFNumberValueConstraints)minimumValueConstraints
{
  v2 = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
  v3 = [v2 hf_numericValueConstraints];

  return v3;
}

- (HFNumberValueConstraints)maximumValueConstraints
{
  v2 = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
  v3 = [v2 hf_numericValueConstraints];

  return v3;
}

- (HFNumberValueConstraints)targetValueConstraints
{
  v3 = [(HFItem *)self latestResults];
  v4 = [v3 objectForKeyedSubscript:@"characteristicValuesByType"];

  v5 = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
  v6 = [v5 hf_numericValueConstraints];

  return v6;
}

- (NSNumber)minimumValue
{
  v3 = [(HFItem *)self latestResults];
  v4 = [v3 objectForKeyedSubscript:@"characteristicValuesByType"];

  if ([(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v4]== 2)
  {
    v5 = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
    v6 = [v5 minimumValue];

    v7 = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
    v8 = [v7 minimumValue];

    if ([v6 compare:v8] == -1)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v6 = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
    v10 = [v6 minimumValue];
  }

  return v10;
}

- (NSNumber)maximumValue
{
  v3 = [(HFItem *)self latestResults];
  v4 = [v3 objectForKeyedSubscript:@"characteristicValuesByType"];

  if ([(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v4]== 2)
  {
    v5 = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
    v6 = [v5 maximumValue];

    v7 = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
    v8 = [v7 maximumValue];

    if ([v6 compare:v8] == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v6 = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
    v10 = [v6 maximumValue];
  }

  return v10;
}

- (NSNumber)stepValue
{
  v3 = [(HFItem *)self latestResults];
  v4 = [v3 objectForKeyedSubscript:@"characteristicValuesByType"];

  if ([(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v4]== 2)
  {
    v5 = [(HFRangeControlItem *)self minimumCharacteristicTypeStepValue];
    v6 = [(HFRangeControlItem *)self maximumCharacteristicTypeStepValue];
    if ([v5 compare:v6] == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v5 = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
    v8 = [v5 stepValue];
  }

  return v8;
}

- (id)maximumCharacteristicTypeStepValue
{
  v2 = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
  v3 = [v2 stepValue];

  return v3;
}

- (id)minimumCharacteristicTypeStepValue
{
  v2 = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
  v3 = [v2 stepValue];

  return v3;
}

+ (id)readOnlyCharacteristicTypes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HFRangeControlItem.m" lineNumber:276 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFRangeControlItem readOnlyCharacteristicTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFRangeControlItem.m" lineNumber:287 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFRangeControlItem rangeModeWithCharacteristicValuesKeyedByType:]", objc_opt_class()}];

  return 0;
}

- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFRangeControlItem.m" lineNumber:293 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFRangeControlItem targetCharacteristicTypeWithCharacteristicValuesKeyedByType:]", objc_opt_class()}];

  return 0;
}

+ (BOOL)_hasWritableCharacteristicsOfType:(id)a3 valueSource:(id)a4
{
  v4 = [a4 allCharacteristicsForCharacteristicType:a3];
  if ([v4 count])
  {
    v5 = [v4 na_all:&__block_literal_global_75];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __68__HFRangeControlItem__hasWritableCharacteristicsOfType_valueSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isReadable])
  {
    v3 = [v2 hf_isWritable];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_minimumCharacteristicTypeMetadata
{
  v3 = [(HFControlItem *)self valueSource];
  v4 = [(HFRangeControlItem *)self minimumCharacteristicType];
  v5 = [v3 metadataForCharacteristicType:v4];

  return v5;
}

- (id)_maximumCharacteristicTypeMetadata
{
  v3 = [(HFControlItem *)self valueSource];
  v4 = [(HFRangeControlItem *)self maximumCharacteristicType];
  v5 = [v3 metadataForCharacteristicType:v4];

  return v5;
}

- (id)_targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:(id)a3
{
  v4 = [(HFRangeControlItem *)self targetCharacteristicTypeWithCharacteristicValuesKeyedByType:a3];
  if (v4)
  {
    v5 = [(HFControlItem *)self valueSource];
    v6 = [v5 metadataForCharacteristicType:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end