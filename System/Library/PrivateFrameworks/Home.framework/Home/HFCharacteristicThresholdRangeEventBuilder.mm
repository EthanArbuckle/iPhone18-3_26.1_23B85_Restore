@interface HFCharacteristicThresholdRangeEventBuilder
+ (BOOL)_wouldFireForValue:(id)value thresholdRange:(id)range characteristic:(id)characteristic;
- (BOOL)hf_wouldFireForValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value;
- (HFCharacteristicThresholdRangeEventBuilder)initWithCharacteristic:(id)characteristic thresholdRange:(id)range;
- (HFCharacteristicThresholdRangeEventBuilder)initWithEvent:(id)event;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)options;
- (id)triggeringValues;
- (unint64_t)hash;
- (void)copyValuesFromCharacteristicEventBuilder:(id)builder;
@end

@implementation HFCharacteristicThresholdRangeEventBuilder

- (HFCharacteristicThresholdRangeEventBuilder)initWithEvent:(id)event
{
  eventCopy = event;
  if (eventCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicEventBuilder.m" lineNumber:241 description:{@"Event must be characteristic threshold range event: %@", eventCopy}];

    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HFCharacteristicThresholdRangeEventBuilder;
    v6 = [(HFCharacteristicEventBuilder *)&v12 _initWithEvent:eventCopy];
    if (v6)
    {
      thresholdRange = [eventCopy thresholdRange];
      v8 = v6[3];
      v6[3] = thresholdRange;
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

- (HFCharacteristicThresholdRangeEventBuilder)initWithCharacteristic:(id)characteristic thresholdRange:(id)range
{
  rangeCopy = range;
  v11.receiver = self;
  v11.super_class = HFCharacteristicThresholdRangeEventBuilder;
  v8 = [(HFCharacteristicEventBuilder *)&v11 _initWithCharacteristic:characteristic];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, range);
  }

  return v9;
}

- (BOOL)hf_wouldFireForValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  thresholdRange = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  LOBYTE(v5) = [v5 _wouldFireForValue:valueCopy thresholdRange:thresholdRange characteristic:characteristic];

  return v5;
}

- (id)triggeringValues
{
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  metadata = [characteristic metadata];

  v5 = MEMORY[0x277CBEB98];
  validValues = [metadata validValues];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HFCharacteristicThresholdRangeEventBuilder_triggeringValues__block_invoke;
  v10[3] = &unk_277DF3770;
  v10[4] = self;
  v7 = [validValues na_filter:v10];
  v8 = [v5 setWithArray:v7];

  return v8;
}

uint64_t __62__HFCharacteristicThresholdRangeEventBuilder_triggeringValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) thresholdRange];
  v5 = [v4 minValue];
  if (v5)
  {
    [v3 doubleValue];
    v7 = v6;
    v8 = [*(a1 + 32) thresholdRange];
    v9 = [v8 minValue];
    [v9 doubleValue];
    v11 = v7 > v10;
  }

  else
  {
    v11 = 1;
  }

  v12 = [*(a1 + 32) thresholdRange];
  v13 = [v12 maxValue];
  if (v13)
  {
    [v3 doubleValue];
    v15 = v14;
    v16 = [*(a1 + 32) thresholdRange];
    v17 = [v16 maxValue];
    [v17 doubleValue];
    v19 = v15 < v18;
  }

  else
  {
    v19 = 1;
  }

  return v11 & v19;
}

- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value
{
  valueCopy = value;
  characteristicCopy = characteristic;
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  v9 = [characteristicCopy isEqual:characteristic];

  if (v9)
  {
    v10 = [(HFCharacteristicThresholdRangeEventBuilder *)self hf_wouldFireForValue:valueCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HFCharacteristicThresholdRangeEventBuilder;
  comparisonKey = [(HFEventBuilder *)&v10 comparisonKey];
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  uniqueIdentifier = [characteristic uniqueIdentifier];
  thresholdRange = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v8 = [v3 stringWithFormat:@"%@-%@:%@", comparisonKey, uniqueIdentifier, thresholdRange];

  return v8;
}

- (void)copyValuesFromCharacteristicEventBuilder:(id)builder
{
  builderCopy = builder;
  v10.receiver = self;
  v10.super_class = HFCharacteristicThresholdRangeEventBuilder;
  [(HFCharacteristicEventBuilder *)&v10 copyValuesFromCharacteristicEventBuilder:builderCopy];
  objc_opt_class();
  v5 = builderCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    thresholdRange = [v7 thresholdRange];
    thresholdRange = self->_thresholdRange;
    self->_thresholdRange = thresholdRange;
  }
}

- (id)buildNewEventsFromCurrentState
{
  v3 = objc_alloc(MEMORY[0x277CD19A0]);
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  thresholdRange = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v6 = [v3 initWithCharacteristic:characteristic thresholdRange:thresholdRange];

  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  return v7;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  v4 = MEMORY[0x277CD19F8];
  v5 = MEMORY[0x277CBEB98];
  optionsCopy = options;
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  v8 = [v5 setWithObject:characteristic];
  thresholdRange = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v10 = [v4 hf_naturalLanguageNameWithOptions:optionsCopy characteristics:v8 triggerValue:thresholdRange];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v5 == self)
  {
    v8 = 1;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HFCharacteristicThresholdRangeEventBuilder;
    v8 = 0;
    if ([(HFCharacteristicEventBuilder *)&v25 isEqual:v5]&& v7)
    {
      thresholdRange = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
      minValue = [thresholdRange minValue];
      thresholdRange2 = [(HFCharacteristicThresholdRangeEventBuilder *)v7 thresholdRange];
      minValue2 = [thresholdRange2 minValue];
      v13 = minValue;
      v14 = minValue2;
      v15 = v14;
      if (v13 == v14)
      {
        v8 = 1;
        v17 = v14;
        thresholdRange3 = v13;
      }

      else
      {
        if (v13)
        {
          v16 = [v13 isEqual:v14];

          if (v16)
          {
            v8 = 1;
LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
        }

        v24 = thresholdRange;
        thresholdRange3 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
        maxValue = [thresholdRange3 maxValue];
        thresholdRange4 = [(HFCharacteristicThresholdRangeEventBuilder *)v7 thresholdRange];
        maxValue2 = [thresholdRange4 maxValue];
        v17 = maxValue;
        v22 = maxValue2;
        if (v17 == v22)
        {
          v8 = 1;
        }

        else if (v17)
        {
          v8 = [v17 isEqual:v22];
        }

        else
        {
          v8 = 0;
        }

        thresholdRange = v24;
      }

      goto LABEL_21;
    }
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HFCharacteristicThresholdRangeEventBuilder;
  v3 = [(HFCharacteristicEventBuilder *)&v7 hash];
  thresholdRange = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v5 = [thresholdRange hash];

  return v5 ^ v3;
}

+ (BOOL)_wouldFireForValue:(id)value thresholdRange:(id)range characteristic:(id)characteristic
{
  rangeCopy = range;
  if (value)
  {
    valueCopy = value;
    metadata = [characteristic metadata];
    v10 = [metadata hf_valueRoundedToNearestStepValue:valueCopy];

    minValue = [rangeCopy minValue];

    if (minValue)
    {
      minValue2 = [rangeCopy minValue];
      v13 = [metadata hf_valueRoundedToNearestStepValue:minValue2];

      [v10 doubleValue];
      v15 = v14;
      [v13 doubleValue];
      v17 = v16 + -0.00000011920929;

      if (v15 < v17)
      {
        goto LABEL_8;
      }
    }

    maxValue = [rangeCopy maxValue];

    if (!maxValue)
    {
      goto LABEL_6;
    }

    maxValue2 = [rangeCopy maxValue];
    v20 = [metadata hf_valueRoundedToNearestStepValue:maxValue2];

    [v10 doubleValue];
    v22 = v21;
    [v20 doubleValue];
    v24 = v23 + 0.00000011920929;

    if (v22 > v24)
    {
LABEL_8:
      v25 = 0;
    }

    else
    {
LABEL_6:
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = HFCharacteristicThresholdRangeEventBuilder;
  v5 = [(HFEventBuilder *)&v12 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HFCharacteristicThresholdRangeEventBuilder_Comparison__compareToObject___block_invoke;
    v10[3] = &unk_277DF6EF8;
    v10[4] = self;
    v6 = objectCopy;
    v11 = v6;

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HFCharacteristicThresholdRangeEventBuilder_Comparison__compareToObject___block_invoke_2;
    v8[3] = &unk_277DF6EF8;
    v8[4] = self;
    v9 = v6;
  }

  return v5;
}

uint64_t __74__HFCharacteristicThresholdRangeEventBuilder_Comparison__compareToObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) characteristic];
  v3 = [*(a1 + 40) characteristic];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

uint64_t __74__HFCharacteristicThresholdRangeEventBuilder_Comparison__compareToObject___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) thresholdRange];
  v3 = [v2 maxValue];
  v4 = [*(a1 + 40) thresholdRange];
  v5 = [v4 maxValue];
  v6 = v3;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_6;
  }

  if (!v6)
  {
    v10 = 1;
    v11 = v7;
LABEL_13:

    goto LABEL_14;
  }

  v9 = [v6 isEqual:v7];

  if (v9)
  {
LABEL_6:
    v11 = [*(a1 + 32) thresholdRange];
    v12 = [v11 minValue];
    v13 = [*(a1 + 40) thresholdRange];
    v14 = [v13 minValue];
    v15 = v12;
    v16 = v14;
    if (v15 == v16)
    {
      v10 = 0;
    }

    else if (v15)
    {
      v10 = [v15 isEqual:v16] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_13;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

@end