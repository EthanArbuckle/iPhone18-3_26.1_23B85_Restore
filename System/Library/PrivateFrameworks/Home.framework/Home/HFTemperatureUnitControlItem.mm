@interface HFTemperatureUnitControlItem
- (HFTemperatureUnitControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFTemperatureUnitControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 displayResults:(id)a5;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)valueForCharacteristicValues:(id)a3;
@end

@implementation HFTemperatureUnitControlItem

- (HFTemperatureUnitControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 displayResults:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x277CBEB98];
  v10 = a5;
  v11 = a3;
  v12 = [v9 setWithObject:v8];
  v13 = [HFControlItemCharacteristicOptions optionsWithReadWriteCharacteristicTypes:v12];

  v18.receiver = self;
  v18.super_class = HFTemperatureUnitControlItem;
  v14 = [(HFControlItem *)&v18 initWithValueSource:v11 characteristicOptions:v13 displayResults:v10];

  if (v14)
  {
    v15 = [v8 copy];
    temperatureUnitCharacteristicType = v14->_temperatureUnitCharacteristicType;
    v14->_temperatureUnitCharacteristicType = v15;
  }

  return v14;
}

- (HFTemperatureUnitControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicType_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFTemperatureUnitControlItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFTemperatureUnitControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  if ([(HFControlItem *)self canCopyWithCharacteristicOptions:a3])
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [(HFTemperatureUnitControlItem *)self temperatureUnitCharacteristicType];
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

- (id)valueForCharacteristicValues:(id)a3
{
  v4 = a3;
  v5 = [(HFTemperatureUnitControlItem *)self temperatureUnitCharacteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)characteristicValuesForValue:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFTemperatureUnitControlItem *)self temperatureUnitCharacteristicType];
  v9 = v5;
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end