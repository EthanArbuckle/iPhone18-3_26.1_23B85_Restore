@interface HFRangeControlItem
+ (BOOL)_hasWritableCharacteristicsOfType:(id)type valueSource:(id)source;
+ (id)readOnlyCharacteristicTypes;
- (HFNumberValueConstraints)maximumValueConstraints;
- (HFNumberValueConstraints)minimumValueConstraints;
- (HFNumberValueConstraints)targetValueConstraints;
- (HFRangeControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFRangeControlItem)initWithValueSource:(id)source targetCharacteristicTypes:(id)types minimumCharacteristicType:(id)type maximumCharacteristicType:(id)characteristicType displayResults:(id)results;
- (NSNumber)maximumValue;
- (NSNumber)minimumValue;
- (NSNumber)stepValue;
- (id)_maximumCharacteristicTypeMetadata;
- (id)_minimumCharacteristicTypeMetadata;
- (id)_targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:(id)type;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)maximumCharacteristicTypeStepValue;
- (id)minimumCharacteristicTypeStepValue;
- (id)resultsForBatchReadResponse:(id)response;
- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)type;
- (id)valueForCharacteristicValues:(id)values;
- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)type;
@end

@implementation HFRangeControlItem

- (HFRangeControlItem)initWithValueSource:(id)source targetCharacteristicTypes:(id)types minimumCharacteristicType:(id)type maximumCharacteristicType:(id)characteristicType displayResults:(id)results
{
  v33[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  typesCopy = types;
  typeCopy = type;
  characteristicTypeCopy = characteristicType;
  resultsCopy = results;
  if (typesCopy && [typesCopy count])
  {
    obj = characteristicType;
    v17 = [MEMORY[0x277CBEB58] set];
    v30 = typeCopy;
    [v17 na_safeAddObject:typeCopy];
    v29 = characteristicTypeCopy;
    [v17 na_safeAddObject:characteristicTypeCopy];
    [v17 unionSet:typesCopy];
    v18 = [HFControlItemCharacteristicOptions alloc];
    v32[0] = &unk_282523DF0;
    v32[1] = &unk_282523E08;
    v33[0] = v17;
    readOnlyCharacteristicTypes = [objc_opt_class() readOnlyCharacteristicTypes];
    v33[1] = readOnlyCharacteristicTypes;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v21 = v20 = sourceCopy;
    v22 = [(HFControlItemCharacteristicOptions *)v18 initWithCharacteristicTypesByUsage:v21];

    sourceCopy = v20;
    v31.receiver = self;
    v31.super_class = HFRangeControlItem;
    v23 = [(HFControlItem *)&v31 initWithValueSource:v20 characteristicOptions:v22 displayResults:resultsCopy];
    p_isa = &v23->super.super.super.isa;
    if (v23)
    {
      objc_storeStrong(&v23->_targetCharacteristicTypes, types);
      objc_storeStrong(p_isa + 11, type);
      objc_storeStrong(p_isa + 12, obj);
    }

    self = p_isa;

    selfCopy = self;
    characteristicTypeCopy = v29;
    typeCopy = v30;
  }

  else
  {
    selfCopy = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HFRangeControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_targetCharacteristicTypes_minimumCharacteristicType_maximumCharacteristicType_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFRangeControlItem.m" lineNumber:79 description:{@"%s is unavailable; use %@ instead", "-[HFRangeControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = objc_alloc(objc_opt_class());
    targetCharacteristicTypes = [(HFRangeControlItem *)self targetCharacteristicTypes];
    minimumCharacteristicType = [(HFRangeControlItem *)self minimumCharacteristicType];
    maximumCharacteristicType = [(HFRangeControlItem *)self maximumCharacteristicType];
    displayResults = [(HFControlItem *)self displayResults];
    v12 = [v7 initWithValueSource:sourceCopy targetCharacteristicTypes:targetCharacteristicTypes minimumCharacteristicType:minimumCharacteristicType maximumCharacteristicType:maximumCharacteristicType displayResults:displayResults];

    [v12 copyLatestResultsFromItem:self];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  latestResults = [(HFItem *)self latestResults];
  v6 = [latestResults objectForKeyedSubscript:@"characteristicValuesByType"];
  v7 = v6;
  if (!v6)
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v8 = [v6 mutableCopy];

  [v8 addEntriesFromDictionary:valuesCopy];
  v9 = objc_alloc_init(HFRangeControlItemValue);
  v10 = [(HFRangeControlItem *)self targetCharacteristicTypeWithCharacteristicValuesKeyedByType:v8];
  if (v10)
  {
    targetCharacteristicTypes = [(HFRangeControlItem *)self targetCharacteristicTypes];
    v12 = [targetCharacteristicTypes containsObject:v10];

    if ((v12 & 1) == 0)
    {
      targetCharacteristicTypes2 = [(HFRangeControlItem *)self targetCharacteristicTypes];
      NSLog(&cfstr_Hfrangecontrol_1.isa, v10, targetCharacteristicTypes2, self);
    }

    v14 = [valuesCopy objectForKeyedSubscript:v10];
    [(HFRangeControlItemValue *)v9 setTargetValue:v14];
  }

  minimumCharacteristicType = [(HFRangeControlItem *)self minimumCharacteristicType];

  if (minimumCharacteristicType)
  {
    minimumCharacteristicType2 = [(HFRangeControlItem *)self minimumCharacteristicType];
    v17 = [valuesCopy objectForKeyedSubscript:minimumCharacteristicType2];
    [(HFRangeControlItemValue *)v9 setMinimumValue:v17];
  }

  maximumCharacteristicType = [(HFRangeControlItem *)self maximumCharacteristicType];

  if (maximumCharacteristicType)
  {
    maximumCharacteristicType2 = [(HFRangeControlItem *)self maximumCharacteristicType];
    v20 = [valuesCopy objectForKeyedSubscript:maximumCharacteristicType2];
    [(HFRangeControlItemValue *)v9 setMaximumValue:v20];
  }

  [(HFRangeControlItemValue *)v9 setMode:[(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v8]];

  return v9;
}

- (id)characteristicValuesForValue:(id)value
{
  valueCopy = value;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  latestResults = [(HFItem *)self latestResults];
  v7 = [latestResults objectForKeyedSubscript:@"characteristicValuesByType"];
  v8 = [(HFRangeControlItem *)self targetCharacteristicTypeWithCharacteristicValuesKeyedByType:v7];

  targetValue = [valueCopy targetValue];

  if (targetValue && v8)
  {
    targetValue2 = [valueCopy targetValue];
    [v5 setObject:targetValue2 forKey:v8];
  }

  minimumValue = [valueCopy minimumValue];
  if (minimumValue)
  {
    v12 = minimumValue;
    minimumCharacteristicType = [(HFRangeControlItem *)self minimumCharacteristicType];

    if (minimumCharacteristicType)
    {
      minimumValue2 = [valueCopy minimumValue];
      minimumCharacteristicType2 = [(HFRangeControlItem *)self minimumCharacteristicType];
      [v5 setObject:minimumValue2 forKey:minimumCharacteristicType2];
    }
  }

  maximumValue = [valueCopy maximumValue];
  if (maximumValue)
  {
    v17 = maximumValue;
    maximumCharacteristicType = [(HFRangeControlItem *)self maximumCharacteristicType];

    if (maximumCharacteristicType)
    {
      maximumValue2 = [valueCopy maximumValue];
      maximumCharacteristicType2 = [(HFRangeControlItem *)self maximumCharacteristicType];
      [v5 setObject:maximumValue2 forKey:maximumCharacteristicType2];
    }
  }

  v21 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v5];

  return v21;
}

- (id)resultsForBatchReadResponse:(id)response
{
  responseCopy = response;
  v20.receiver = self;
  v20.super_class = HFRangeControlItem;
  v5 = [(HFControlItem *)&v20 resultsForBatchReadResponse:responseCopy];
  v6 = [v5 mutableCopy];

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"preferLiveWritesDuringInteraction"];
  [v6 setObject:&unk_282523E08 forKeyedSubscript:@"preferredInteractionFidelity"];
  numberValueFormatter = [(HFRangeControlItem *)self numberValueFormatter];
  if (numberValueFormatter)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__HFRangeControlItem_resultsForBatchReadResponse___block_invoke;
    v17 = &unk_277DF78D8;
    v18 = responseCopy;
    selfCopy = self;
    v8 = __50__HFRangeControlItem_resultsForBatchReadResponse___block_invoke(&v14);
    if (v8)
    {
      v9 = [HFNumberRangeFormatter alloc];
      v10 = [(HFNumberRangeFormatter *)v9 initWithNumberFormatter:numberValueFormatter, v14, v15, v16, v17];
      numberRange = [v8 numberRange];
      v12 = [(HFNumberRangeFormatter *)v10 stringForObjectValue:numberRange];
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
  _minimumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
  hf_numericValueConstraints = [_minimumCharacteristicTypeMetadata hf_numericValueConstraints];

  return hf_numericValueConstraints;
}

- (HFNumberValueConstraints)maximumValueConstraints
{
  _maximumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
  hf_numericValueConstraints = [_maximumCharacteristicTypeMetadata hf_numericValueConstraints];

  return hf_numericValueConstraints;
}

- (HFNumberValueConstraints)targetValueConstraints
{
  latestResults = [(HFItem *)self latestResults];
  v4 = [latestResults objectForKeyedSubscript:@"characteristicValuesByType"];

  v5 = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
  hf_numericValueConstraints = [v5 hf_numericValueConstraints];

  return hf_numericValueConstraints;
}

- (NSNumber)minimumValue
{
  latestResults = [(HFItem *)self latestResults];
  v4 = [latestResults objectForKeyedSubscript:@"characteristicValuesByType"];

  if ([(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v4]== 2)
  {
    _minimumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
    minimumValue = [_minimumCharacteristicTypeMetadata minimumValue];

    _maximumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
    minimumValue2 = [_maximumCharacteristicTypeMetadata minimumValue];

    if ([minimumValue compare:minimumValue2] == -1)
    {
      v9 = minimumValue2;
    }

    else
    {
      v9 = minimumValue;
    }

    v6MinimumValue = v9;
  }

  else
  {
    minimumValue = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
    v6MinimumValue = [minimumValue minimumValue];
  }

  return v6MinimumValue;
}

- (NSNumber)maximumValue
{
  latestResults = [(HFItem *)self latestResults];
  v4 = [latestResults objectForKeyedSubscript:@"characteristicValuesByType"];

  if ([(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v4]== 2)
  {
    _minimumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
    maximumValue = [_minimumCharacteristicTypeMetadata maximumValue];

    _maximumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
    maximumValue2 = [_maximumCharacteristicTypeMetadata maximumValue];

    if ([maximumValue compare:maximumValue2] == 1)
    {
      v9 = maximumValue2;
    }

    else
    {
      v9 = maximumValue;
    }

    v6MaximumValue = v9;
  }

  else
  {
    maximumValue = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
    v6MaximumValue = [maximumValue maximumValue];
  }

  return v6MaximumValue;
}

- (NSNumber)stepValue
{
  latestResults = [(HFItem *)self latestResults];
  v4 = [latestResults objectForKeyedSubscript:@"characteristicValuesByType"];

  if ([(HFRangeControlItem *)self rangeModeWithCharacteristicValuesKeyedByType:v4]== 2)
  {
    minimumCharacteristicTypeStepValue = [(HFRangeControlItem *)self minimumCharacteristicTypeStepValue];
    maximumCharacteristicTypeStepValue = [(HFRangeControlItem *)self maximumCharacteristicTypeStepValue];
    if ([minimumCharacteristicTypeStepValue compare:maximumCharacteristicTypeStepValue] == 1)
    {
      v7 = maximumCharacteristicTypeStepValue;
    }

    else
    {
      v7 = minimumCharacteristicTypeStepValue;
    }

    stepValue = v7;
  }

  else
  {
    minimumCharacteristicTypeStepValue = [(HFRangeControlItem *)self _targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:v4];
    stepValue = [minimumCharacteristicTypeStepValue stepValue];
  }

  return stepValue;
}

- (id)maximumCharacteristicTypeStepValue
{
  _maximumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _maximumCharacteristicTypeMetadata];
  stepValue = [_maximumCharacteristicTypeMetadata stepValue];

  return stepValue;
}

- (id)minimumCharacteristicTypeStepValue
{
  _minimumCharacteristicTypeMetadata = [(HFRangeControlItem *)self _minimumCharacteristicTypeMetadata];
  stepValue = [_minimumCharacteristicTypeMetadata stepValue];

  return stepValue;
}

+ (id)readOnlyCharacteristicTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFRangeControlItem.m" lineNumber:276 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFRangeControlItem readOnlyCharacteristicTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)type
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFRangeControlItem.m" lineNumber:287 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFRangeControlItem rangeModeWithCharacteristicValuesKeyedByType:]", objc_opt_class()}];

  return 0;
}

- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)type
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFRangeControlItem.m" lineNumber:293 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFRangeControlItem targetCharacteristicTypeWithCharacteristicValuesKeyedByType:]", objc_opt_class()}];

  return 0;
}

+ (BOOL)_hasWritableCharacteristicsOfType:(id)type valueSource:(id)source
{
  v4 = [source allCharacteristicsForCharacteristicType:type];
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
  valueSource = [(HFControlItem *)self valueSource];
  minimumCharacteristicType = [(HFRangeControlItem *)self minimumCharacteristicType];
  v5 = [valueSource metadataForCharacteristicType:minimumCharacteristicType];

  return v5;
}

- (id)_maximumCharacteristicTypeMetadata
{
  valueSource = [(HFControlItem *)self valueSource];
  maximumCharacteristicType = [(HFRangeControlItem *)self maximumCharacteristicType];
  v5 = [valueSource metadataForCharacteristicType:maximumCharacteristicType];

  return v5;
}

- (id)_targetCharacteristicTypeMetadataWithCharacteristicValuesKeyedByType:(id)type
{
  v4 = [(HFRangeControlItem *)self targetCharacteristicTypeWithCharacteristicValuesKeyedByType:type];
  if (v4)
  {
    valueSource = [(HFControlItem *)self valueSource];
    v6 = [valueSource metadataForCharacteristicType:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end