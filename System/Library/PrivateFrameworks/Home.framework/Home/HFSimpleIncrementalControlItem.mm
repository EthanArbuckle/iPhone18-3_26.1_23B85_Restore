@interface HFSimpleIncrementalControlItem
- (HFSimpleIncrementalControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFSimpleIncrementalControlItem)initWithValueSource:(id)source characteristicType:(id)type displayResults:(id)results;
- (NSNumber)maxValue;
- (NSNumber)minValue;
- (NSNumber)stepValue;
- (id)_metadata;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)valueForCharacteristicValues:(id)values;
- (id)writeValue:(id)value;
@end

@implementation HFSimpleIncrementalControlItem

- (HFSimpleIncrementalControlItem)initWithValueSource:(id)source characteristicType:(id)type displayResults:(id)results
{
  typeCopy = type;
  v9 = MEMORY[0x277CBEB98];
  resultsCopy = results;
  sourceCopy = source;
  v12 = [v9 setWithObject:typeCopy];
  v13 = [HFControlItemCharacteristicOptions optionsWithReadWriteCharacteristicTypes:v12];
  v18.receiver = self;
  v18.super_class = HFSimpleIncrementalControlItem;
  v14 = [(HFControlItem *)&v18 initWithValueSource:sourceCopy characteristicOptions:v13 displayResults:resultsCopy];

  if (v14)
  {
    v15 = [typeCopy copy];
    incrementalCharacteristicType = v14->_incrementalCharacteristicType;
    v14->_incrementalCharacteristicType = v15;
  }

  return v14;
}

- (HFSimpleIncrementalControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicOptions_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSimpleIncrementalControlItem.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFSimpleIncrementalControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = objc_alloc(objc_opt_class());
    incrementalCharacteristicType = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
    displayResults = [(HFControlItem *)self displayResults];
    v10 = [v7 initWithValueSource:sourceCopy characteristicType:incrementalCharacteristicType displayResults:displayResults];

    [v10 copyLatestResultsFromItem:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)writeValue:(id)value
{
  v5.receiver = self;
  v5.super_class = HFSimpleIncrementalControlItem;
  v3 = [(HFControlItem *)&v5 writeValue:value];

  return v3;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  incrementalCharacteristicType = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
  v6 = [valuesCopy objectForKeyedSubscript:incrementalCharacteristicType];

  return v6;
}

- (id)characteristicValuesForValue:(id)value
{
  v11[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  incrementalCharacteristicType = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
  v10 = incrementalCharacteristicType;
  v11[0] = valueCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_metadata
{
  valueSource = [(HFControlItem *)self valueSource];
  incrementalCharacteristicType = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
  v5 = [valueSource metadataForCharacteristicType:incrementalCharacteristicType];

  return v5;
}

- (NSNumber)minValue
{
  _metadata = [(HFSimpleIncrementalControlItem *)self _metadata];
  minimumValue = [_metadata minimumValue];

  return minimumValue;
}

- (NSNumber)maxValue
{
  _metadata = [(HFSimpleIncrementalControlItem *)self _metadata];
  maximumValue = [_metadata maximumValue];

  return maximumValue;
}

- (NSNumber)stepValue
{
  _metadata = [(HFSimpleIncrementalControlItem *)self _metadata];
  stepValue = [_metadata stepValue];

  return stepValue;
}

@end