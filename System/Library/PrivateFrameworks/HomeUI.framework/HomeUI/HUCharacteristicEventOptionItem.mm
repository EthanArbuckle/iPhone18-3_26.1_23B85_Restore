@interface HUCharacteristicEventOptionItem
- (BOOL)isValidThresholdValue:(id)value;
- (HMCharacteristic)mainCharacteristic;
- (HMNumberRange)triggerValueRangeByApplyingThreshold;
- (HUCharacteristicEventOptionItem)init;
- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)characteristics thresholdValueRange:(id)range;
- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)characteristics triggerValue:(id)value;
- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)characteristics triggerValueRange:(id)range;
- (NSArray)validTriggerValues;
- (NSArray)visibleTriggerValues;
- (id)_subclass_updateWithOptions:(id)options;
- (id)localizedDescriptionForThresholdValue:(id)value;
- (id)localizedListDescriptionForThresholdValue:(id)value;
- (id)representativeTriggerValue;
- (void)setThresholdValue:(id)value;
@end

@implementation HUCharacteristicEventOptionItem

- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)characteristics triggerValue:(id)value
{
  characteristicsCopy = characteristics;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = HUCharacteristicEventOptionItem;
  v9 = [(HUCharacteristicEventOptionItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristics, characteristics);
    v11 = [valueCopy copyWithZone:0];
    triggerValue = v10->_triggerValue;
    v10->_triggerValue = v11;
  }

  return v10;
}

- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)characteristics triggerValueRange:(id)range
{
  characteristicsCopy = characteristics;
  rangeCopy = range;
  v12.receiver = self;
  v12.super_class = HUCharacteristicEventOptionItem;
  v9 = [(HUCharacteristicEventOptionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristics, characteristics);
    objc_storeStrong(&v10->_triggerValueRange, range);
  }

  return v10;
}

- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)characteristics thresholdValueRange:(id)range
{
  characteristicsCopy = characteristics;
  rangeCopy = range;
  v12.receiver = self;
  v12.super_class = HUCharacteristicEventOptionItem;
  v9 = [(HUCharacteristicEventOptionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristics, characteristics);
    objc_storeStrong(&v10->_thresholdValueRange, range);
  }

  return v10;
}

- (HUCharacteristicEventOptionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCharacteristicEventOptionItem.m" lineNumber:56 description:@"Use -initWithCharacteristics:triggerValue:"];

  return 0;
}

- (void)setThresholdValue:(id)value
{
  valueCopy = value;
  objc_storeStrong(&self->_thresholdValue, value);
  childItem = [(HUCharacteristicEventOptionItem *)self childItem];

  if (childItem)
  {
    childItem2 = [(HUCharacteristicEventOptionItem *)self childItem];
    [childItem2 setThresholdValue:valueCopy];
  }
}

- (HMCharacteristic)mainCharacteristic
{
  characteristics = [(HUCharacteristicEventOptionItem *)self characteristics];
  anyObject = [characteristics anyObject];

  characteristicType = [(HMCharacteristic *)anyObject characteristicType];
  characteristics2 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HUCharacteristicEventOptionItem_mainCharacteristic__block_invoke;
  v12[3] = &unk_277DB9538;
  v13 = characteristicType;
  v7 = characteristicType;
  v8 = [characteristics2 na_any:v12];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = anyObject;
  }

  v10 = v9;

  return v9;
}

uint64_t __53__HUCharacteristicEventOptionItem_mainCharacteristic__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (NSArray)validTriggerValues
{
  mainCharacteristic = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  if (mainCharacteristic)
  {
    mainCharacteristic2 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
    hf_triggerValues = [mainCharacteristic2 hf_triggerValues];
  }

  else
  {
    hf_triggerValues = 0;
  }

  return hf_triggerValues;
}

- (NSArray)visibleTriggerValues
{
  mainCharacteristic = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  hf_visibleTriggerValues = [mainCharacteristic hf_visibleTriggerValues];

  v5 = MEMORY[0x277CD19F8];
  characteristics = [(HUCharacteristicEventOptionItem *)self characteristics];
  v7 = [v5 hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:characteristics];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__HUCharacteristicEventOptionItem_visibleTriggerValues__block_invoke;
    v12[3] = &unk_277DBD4B8;
    v13 = v7;
    v14 = v8;
    v9 = v8;
    v10 = [hf_visibleTriggerValues na_filter:v12];

    hf_visibleTriggerValues = v10;
  }

  return hf_visibleTriggerValues;
}

uint64_t __55__HUCharacteristicEventOptionItem_visibleTriggerValues__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringForObjectValue:a2];
  v4 = [*(a1 + 40) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }

  return v4 ^ 1u;
}

- (HMNumberRange)triggerValueRangeByApplyingThreshold
{
  mainCharacteristic = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  if (!mainCharacteristic)
  {
    goto LABEL_8;
  }

  v4 = mainCharacteristic;
  thresholdValue = [(HUCharacteristicEventOptionItem *)self thresholdValue];
  if (!thresholdValue)
  {

    goto LABEL_8;
  }

  v6 = thresholdValue;
  thresholdValueRange = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  minValue = [thresholdValueRange minValue];
  thresholdValueRange2 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  maxValue = [thresholdValueRange2 maxValue];

  if (minValue == maxValue)
  {
    goto LABEL_8;
  }

  thresholdValueRange3 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  maxValue2 = [thresholdValueRange3 maxValue];

  if (!maxValue2)
  {
    mainCharacteristic2 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
    thresholdValue2 = [(HUCharacteristicEventOptionItem *)self thresholdValue];
    v17 = [mainCharacteristic2 hf_valueBeforeTriggerValue:thresholdValue2];

    v28 = MEMORY[0x277CD1CB0];
    mainCharacteristic3 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
    hf_minimumTriggerValue = [mainCharacteristic3 hf_minimumTriggerValue];
    v21 = v28;
    v22 = hf_minimumTriggerValue;
    v23 = v17;
    goto LABEL_13;
  }

  thresholdValueRange4 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  minValue2 = [thresholdValueRange4 minValue];

  if (minValue2)
  {
LABEL_8:
    thresholdValueRange5 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
    goto LABEL_9;
  }

  mainCharacteristic4 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  thresholdValue3 = [(HUCharacteristicEventOptionItem *)self thresholdValue];
  v17 = [mainCharacteristic4 hf_valueAfterTriggerValue:thresholdValue3];

  v18 = MEMORY[0x277CD1CB0];
  mainCharacteristic3 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  hf_minimumTriggerValue = [mainCharacteristic3 hf_maximumTriggerValue];
  v21 = v18;
  v22 = v17;
  v23 = hf_minimumTriggerValue;
LABEL_13:
  thresholdValueRange5 = [v21 numberRangeWithMinValue:v22 maxValue:v23];

LABEL_9:

  return thresholdValueRange5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  characteristics = [(HUCharacteristicEventOptionItem *)self characteristics];
  v5 = [characteristics count];

  if (!v5)
  {
    NSLog(&cfstr_MustHaveCharac.isa);
  }

  characteristics2 = [(HUCharacteristicEventOptionItem *)self characteristics];

  if (characteristics2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    thresholdValueRange = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];

    if (!thresholdValueRange)
    {
      v17 = MEMORY[0x277CD19F8];
      characteristics3 = [(HUCharacteristicEventOptionItem *)self characteristics];
      representativeTriggerValue = [(HUCharacteristicEventOptionItem *)self representativeTriggerValue];
      v20 = [v17 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:characteristics3 triggerValue:representativeTriggerValue];
      v21 = 0;
LABEL_21:

      if (v20)
      {
        [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277D13F60]];
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", v20];
        [dictionary setObject:v37 forKeyedSubscript:*MEMORY[0x277D13DC8]];
      }

      else
      {
        [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
      }

      childItem = [(HUCharacteristicEventOptionItem *)self childItem];
      if (childItem)
      {
        v39 = MEMORY[0x277CBEB98];
        childItem2 = [(HUCharacteristicEventOptionItem *)self childItem];
        v41 = [v39 setWithObject:childItem2];
        [dictionary setObject:v41 forKeyedSubscript:*MEMORY[0x277D13D80]];
      }

      else
      {
        [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x277D13D80]];
      }

      visibleTriggerValues = [(HUCharacteristicEventOptionItem *)self visibleTriggerValues];
      [dictionary setObject:visibleTriggerValues forKeyedSubscript:*MEMORY[0x277D14140]];

      [dictionary na_safeSetObject:v21 forKey:*MEMORY[0x277D13E30]];
      v43 = MEMORY[0x277D2C900];
      v44 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
      v16 = [v43 futureWithResult:v44];

      goto LABEL_28;
    }

    thresholdValueRange2 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
    minValue = [thresholdValueRange2 minValue];

    if (minValue)
    {
      v11 = MEMORY[0x277CD1CB0];
      thresholdValueRange3 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      minValue2 = [thresholdValueRange3 minValue];
      v14 = [v11 numberRangeWithMinValue:minValue2];
    }

    else
    {
      thresholdValueRange4 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      maxValue = [thresholdValueRange4 maxValue];

      if (!maxValue)
      {
        characteristics3 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
        goto LABEL_12;
      }

      v24 = MEMORY[0x277CD1CB0];
      thresholdValueRange3 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      minValue2 = [thresholdValueRange3 maxValue];
      v14 = [v24 numberRangeWithMaxValue:minValue2];
    }

    characteristics3 = v14;

LABEL_12:
    v25 = MEMORY[0x277CD19F8];
    characteristics4 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v20 = [v25 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:characteristics4 triggerValueRange:characteristics3 thresholdValue:0];

    v27 = MEMORY[0x277CD19F8];
    characteristics5 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v29 = [v27 hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:characteristics5];

    thresholdValue = [(HUCharacteristicEventOptionItem *)self thresholdValue];
    v21 = [v29 stringForObjectValue:thresholdValue];

    representativeTriggerValue = v29;
    if ([representativeTriggerValue conformsToProtocol:&unk_2825BD8A0])
    {
      v31 = representativeTriggerValue;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    if (v32 && ([v32 unitDescription], v33 = objc_claimAutoreleasedReturnValue(), v33, v33))
    {
      unitDescription = [v32 unitDescription];
      [dictionary setObject:unitDescription forKeyedSubscript:*MEMORY[0x277D13F78]];
    }

    else
    {
      mainCharacteristic = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
      unitDescription = [mainCharacteristic characteristicType];

      if ([unitDescription isEqualToString:*MEMORY[0x277CCF830]])
      {
        v36 = HFLocalizedString();
        [dictionary setObject:v36 forKeyedSubscript:*MEMORY[0x277D13F78]];
      }
    }

    goto LABEL_21;
  }

  v15 = MEMORY[0x277D2C900];
  dictionary = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  v16 = [v15 futureWithError:dictionary];
LABEL_28:

  return v16;
}

- (BOOL)isValidThresholdValue:(id)value
{
  valueCopy = value;
  thresholdValueRange = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  minValue = [thresholdValueRange minValue];

  thresholdValueRange2 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  maxValue = [thresholdValueRange2 maxValue];

  if (minValue && [valueCopy compare:minValue] == -1)
  {
    v9 = 0;
  }

  else if (maxValue)
  {
    v9 = [valueCopy compare:maxValue] != 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)localizedDescriptionForThresholdValue:(id)value
{
  v4 = MEMORY[0x277CD19F8];
  valueCopy = value;
  characteristics = [(HUCharacteristicEventOptionItem *)self characteristics];
  v7 = [v4 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:characteristics triggerValue:valueCopy];

  return v7;
}

- (id)localizedListDescriptionForThresholdValue:(id)value
{
  valueCopy = value;
  latestResults = [(HUCharacteristicEventOptionItem *)self latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14140]];
  v7 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = MEMORY[0x277CD19F8];
  characteristics = [(HUCharacteristicEventOptionItem *)self characteristics];
  if (v9)
  {
    [v10 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:characteristics triggerValue:valueCopy visibleTriggerValues:v9];
  }

  else
  {
    [v10 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:characteristics triggerValue:valueCopy];
  }
  v12 = ;

  latestResults2 = [(HUCharacteristicEventOptionItem *)self latestResults];
  v14 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F78]];

  if (v14)
  {
    v15 = MEMORY[0x277CD19F8];
    characteristics2 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v17 = [v15 hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:characteristics2];

    v18 = v17;
    if ([v18 conformsToProtocol:&unk_2825BD8A0])
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      v21 = [v20 stringForObjectValue:valueCopy withUnit:0];

      v12 = v21;
    }
  }

  return v12;
}

- (id)representativeTriggerValue
{
  thresholdValueRange = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];

  if (thresholdValueRange)
  {
    thresholdValueRange2 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
    maxValue = [thresholdValueRange2 maxValue];
    v6 = maxValue;
    if (maxValue)
    {
      minValue = maxValue;
    }

    else
    {
      thresholdValueRange3 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      minValue = [thresholdValueRange3 minValue];
    }
  }

  else
  {
    triggerValue = [(HUCharacteristicEventOptionItem *)self triggerValue];
    if (triggerValue)
    {
      thresholdValueRange2 = triggerValue;
      minValue = thresholdValueRange2;
    }

    else
    {
      triggerValueRange = [(HUCharacteristicEventOptionItem *)self triggerValueRange];
      minValue = [triggerValueRange hf_representativeValue];

      thresholdValueRange2 = 0;
    }
  }

  return minValue;
}

@end