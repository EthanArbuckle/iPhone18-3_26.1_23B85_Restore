@interface HFSimpleIncrementalControlItem
- (HFSimpleIncrementalControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFSimpleIncrementalControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 displayResults:(id)a5;
- (NSNumber)maxValue;
- (NSNumber)minValue;
- (NSNumber)stepValue;
- (id)_metadata;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)valueForCharacteristicValues:(id)a3;
- (id)writeValue:(id)a3;
@end

@implementation HFSimpleIncrementalControlItem

- (HFSimpleIncrementalControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 displayResults:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x277CBEB98];
  v10 = a5;
  v11 = a3;
  v12 = [v9 setWithObject:v8];
  v13 = [HFControlItemCharacteristicOptions optionsWithReadWriteCharacteristicTypes:v12];
  v18.receiver = self;
  v18.super_class = HFSimpleIncrementalControlItem;
  v14 = [(HFControlItem *)&v18 initWithValueSource:v11 characteristicOptions:v13 displayResults:v10];

  if (v14)
  {
    v15 = [v8 copy];
    incrementalCharacteristicType = v14->_incrementalCharacteristicType;
    v14->_incrementalCharacteristicType = v15;
  }

  return v14;
}

- (HFSimpleIncrementalControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicOptions_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFSimpleIncrementalControlItem.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFSimpleIncrementalControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  if ([(HFControlItem *)self canCopyWithCharacteristicOptions:a3])
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
    v9 = [(HFControlItem *)self displayResults];
    v10 = [v7 initWithValueSource:v6 characteristicType:v8 displayResults:v9];

    [v10 copyLatestResultsFromItem:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)writeValue:(id)a3
{
  v5.receiver = self;
  v5.super_class = HFSimpleIncrementalControlItem;
  v3 = [(HFControlItem *)&v5 writeValue:a3];

  return v3;
}

- (id)valueForCharacteristicValues:(id)a3
{
  v4 = a3;
  v5 = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)characteristicValuesForValue:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
  v10 = v5;
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_metadata
{
  v3 = [(HFControlItem *)self valueSource];
  v4 = [(HFSimpleIncrementalControlItem *)self incrementalCharacteristicType];
  v5 = [v3 metadataForCharacteristicType:v4];

  return v5;
}

- (NSNumber)minValue
{
  v2 = [(HFSimpleIncrementalControlItem *)self _metadata];
  v3 = [v2 minimumValue];

  return v3;
}

- (NSNumber)maxValue
{
  v2 = [(HFSimpleIncrementalControlItem *)self _metadata];
  v3 = [v2 maximumValue];

  return v3;
}

- (NSNumber)stepValue
{
  v2 = [(HFSimpleIncrementalControlItem *)self _metadata];
  v3 = [v2 stepValue];

  return v3;
}

@end