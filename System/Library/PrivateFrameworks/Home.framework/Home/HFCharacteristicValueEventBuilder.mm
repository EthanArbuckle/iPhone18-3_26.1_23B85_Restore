@interface HFCharacteristicValueEventBuilder
- (BOOL)isEqual:(id)equal;
- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value;
- (HFCharacteristicValueEventBuilder)initWithCharacteristic:(id)characteristic triggerValue:(id)value;
- (HFCharacteristicValueEventBuilder)initWithEvent:(id)event;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)options;
- (id)triggeringValues;
- (unint64_t)hash;
- (void)copyValuesFromCharacteristicEventBuilder:(id)builder;
@end

@implementation HFCharacteristicValueEventBuilder

- (HFCharacteristicValueEventBuilder)initWithEvent:(id)event
{
  eventCopy = event;
  if (eventCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicEventBuilder.m" lineNumber:153 description:{@"Event must be characteristic event: %@", eventCopy}];

    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HFCharacteristicValueEventBuilder;
    v6 = [(HFCharacteristicEventBuilder *)&v12 _initWithEvent:eventCopy];
    if (v6)
    {
      triggerValue = [eventCopy triggerValue];
      v8 = v6[3];
      v6[3] = triggerValue;
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

- (HFCharacteristicValueEventBuilder)initWithCharacteristic:(id)characteristic triggerValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = HFCharacteristicValueEventBuilder;
  v8 = [(HFCharacteristicEventBuilder *)&v11 _initWithCharacteristic:characteristic];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, value);
  }

  return v9;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HFCharacteristicValueEventBuilder;
  comparisonKey = [(HFEventBuilder *)&v10 comparisonKey];
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  uniqueIdentifier = [characteristic uniqueIdentifier];
  triggerValue = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v8 = [v3 stringWithFormat:@"%@-%@:%@", comparisonKey, uniqueIdentifier, triggerValue];

  return v8;
}

- (id)triggeringValues
{
  v2 = MEMORY[0x277CBEB98];
  triggerValue = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v4 = [v2 na_setWithSafeObject:triggerValue];

  return v4;
}

- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value
{
  valueCopy = value;
  triggerValue = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v7 = [valueCopy isEqual:triggerValue];

  return v7;
}

- (void)copyValuesFromCharacteristicEventBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = HFCharacteristicValueEventBuilder;
  [(HFCharacteristicEventBuilder *)&v9 copyValuesFromCharacteristicEventBuilder:builderCopy];
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
    triggerValue = [v7 triggerValue];
    [(HFCharacteristicValueEventBuilder *)self setTriggerValue:triggerValue];
  }
}

- (id)buildNewEventsFromCurrentState
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_alloc(MEMORY[0x277CD1980]);
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  triggerValue = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v7 = [v4 initWithCharacteristic:characteristic triggerValue:triggerValue];
  v8 = [v3 setWithObject:v7];

  return v8;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  v4 = MEMORY[0x277CD19F8];
  v5 = MEMORY[0x277CBEB98];
  optionsCopy = options;
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  v8 = [v5 setWithObject:characteristic];
  triggerValue = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v10 = [v4 hf_naturalLanguageNameWithOptions:optionsCopy characteristics:v8 triggerValue:triggerValue];

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
    v12.receiver = self;
    v12.super_class = HFCharacteristicValueEventBuilder;
    v8 = 0;
    if ([(HFCharacteristicEventBuilder *)&v12 isEqual:v5]&& v7)
    {
      triggerValue = [(HFCharacteristicValueEventBuilder *)self triggerValue];
      triggerValue2 = [(HFCharacteristicValueEventBuilder *)v7 triggerValue];
      v8 = [triggerValue isEqual:triggerValue2];
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HFCharacteristicValueEventBuilder;
  v3 = [(HFCharacteristicEventBuilder *)&v7 hash];
  triggerValue = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v5 = [triggerValue hash];

  return v5 ^ v3;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = HFCharacteristicValueEventBuilder;
  v5 = [(HFEventBuilder *)&v12 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HFCharacteristicValueEventBuilder_Comparison__compareToObject___block_invoke;
    v10[3] = &unk_277DF6EF8;
    v10[4] = self;
    v6 = objectCopy;
    v11 = v6;

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HFCharacteristicValueEventBuilder_Comparison__compareToObject___block_invoke_2;
    v8[3] = &unk_277DF6EF8;
    v8[4] = self;
    v9 = v6;
  }

  return v5;
}

uint64_t __65__HFCharacteristicValueEventBuilder_Comparison__compareToObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) characteristic];
  v3 = [*(a1 + 40) characteristic];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

uint64_t __65__HFCharacteristicValueEventBuilder_Comparison__compareToObject___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) triggerValue];
  v3 = [*(a1 + 40) triggerValue];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

@end