@interface HFTemperatureUnitControlItem
- (HFTemperatureUnitControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFTemperatureUnitControlItem)initWithValueSource:(id)source characteristicType:(id)type displayResults:(id)results;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)valueForCharacteristicValues:(id)values;
@end

@implementation HFTemperatureUnitControlItem

- (HFTemperatureUnitControlItem)initWithValueSource:(id)source characteristicType:(id)type displayResults:(id)results
{
  typeCopy = type;
  v9 = MEMORY[0x277CBEB98];
  resultsCopy = results;
  sourceCopy = source;
  v12 = [v9 setWithObject:typeCopy];
  v13 = [HFControlItemCharacteristicOptions optionsWithReadWriteCharacteristicTypes:v12];

  v18.receiver = self;
  v18.super_class = HFTemperatureUnitControlItem;
  v14 = [(HFControlItem *)&v18 initWithValueSource:sourceCopy characteristicOptions:v13 displayResults:resultsCopy];

  if (v14)
  {
    v15 = [typeCopy copy];
    temperatureUnitCharacteristicType = v14->_temperatureUnitCharacteristicType;
    v14->_temperatureUnitCharacteristicType = v15;
  }

  return v14;
}

- (HFTemperatureUnitControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicType_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTemperatureUnitControlItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFTemperatureUnitControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = objc_alloc(objc_opt_class());
    temperatureUnitCharacteristicType = [(HFTemperatureUnitControlItem *)self temperatureUnitCharacteristicType];
    displayResults = [(HFControlItem *)self displayResults];
    v10 = [v7 initWithValueSource:sourceCopy characteristicType:temperatureUnitCharacteristicType displayResults:displayResults];

    [v10 copyLatestResultsFromItem:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  temperatureUnitCharacteristicType = [(HFTemperatureUnitControlItem *)self temperatureUnitCharacteristicType];
  v6 = [valuesCopy objectForKeyedSubscript:temperatureUnitCharacteristicType];

  return v6;
}

- (id)characteristicValuesForValue:(id)value
{
  v10[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  temperatureUnitCharacteristicType = [(HFTemperatureUnitControlItem *)self temperatureUnitCharacteristicType];
  v9 = temperatureUnitCharacteristicType;
  v10[0] = valueCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end