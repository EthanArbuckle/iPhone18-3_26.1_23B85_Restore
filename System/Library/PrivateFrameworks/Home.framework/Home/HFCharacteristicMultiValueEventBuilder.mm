@interface HFCharacteristicMultiValueEventBuilder
- (BOOL)isEqual:(id)equal;
- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value;
- (HFCharacteristicMultiValueEventBuilder)initWithCharacteristic:(id)characteristic values:(id)values;
- (id)buildNewEventsFromCurrentState;
- (id)comparisonKey;
- (id)hf_representativeTriggerValue;
- (id)naturalLanguageNameWithOptions:(id)options;
- (unint64_t)hash;
- (void)copyValuesFromCharacteristicEventBuilder:(id)builder;
@end

@implementation HFCharacteristicMultiValueEventBuilder

- (HFCharacteristicMultiValueEventBuilder)initWithCharacteristic:(id)characteristic values:(id)values
{
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = HFCharacteristicMultiValueEventBuilder;
  v7 = [(HFCharacteristicEventBuilder *)&v12 _initWithCharacteristic:characteristic];
  if (v7)
  {
    v8 = [valuesCopy copy];
    triggerValues = v7->_triggerValues;
    v7->_triggerValues = v8;

    representativeTargetValue = v7->_representativeTargetValue;
    v7->_representativeTargetValue = 0;
  }

  return v7;
}

- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value
{
  valueCopy = value;
  triggerValues = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  v7 = [triggerValues containsObject:valueCopy];

  return v7;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = HFCharacteristicMultiValueEventBuilder;
  comparisonKey = [(HFEventBuilder *)&v12 comparisonKey];
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  uniqueIdentifier = [characteristic uniqueIdentifier];
  triggerValues = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  allObjects = [triggerValues allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"%@-%@:(%@)", comparisonKey, uniqueIdentifier, v9];

  return v10;
}

- (void)copyValuesFromCharacteristicEventBuilder:(id)builder
{
  builderCopy = builder;
  v10.receiver = self;
  v10.super_class = HFCharacteristicMultiValueEventBuilder;
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
    triggerValues = [v7 triggerValues];
    triggerValues = self->_triggerValues;
    self->_triggerValues = triggerValues;
  }
}

- (id)buildNewEventsFromCurrentState
{
  triggerValues = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HFCharacteristicMultiValueEventBuilder_buildNewEventsFromCurrentState__block_invoke;
  v6[3] = &unk_277DF3798;
  v6[4] = self;
  v4 = [triggerValues na_map:v6];

  return v4;
}

id __72__HFCharacteristicMultiValueEventBuilder_buildNewEventsFromCurrentState__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1980];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) characteristic];
  v7 = [v5 initWithCharacteristic:v6 triggerValue:v4];

  return v7;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  v4 = MEMORY[0x277CD19F8];
  v5 = MEMORY[0x277CBEB98];
  optionsCopy = options;
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  v8 = [v5 setWithObject:characteristic];
  hf_representativeTriggerValue = [(HFCharacteristicMultiValueEventBuilder *)self hf_representativeTriggerValue];
  v10 = [v4 hf_naturalLanguageNameWithOptions:optionsCopy characteristics:v8 triggerValue:hf_representativeTriggerValue];

  return v10;
}

- (id)hf_representativeTriggerValue
{
  representativeTargetValue = [(HFCharacteristicMultiValueEventBuilder *)self representativeTargetValue];

  if (representativeTargetValue)
  {
    representativeTargetValue2 = [(HFCharacteristicMultiValueEventBuilder *)self representativeTargetValue];
  }

  else
  {
    triggerValues = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
    representativeTargetValue2 = [triggerValues anyObject];
  }

  return representativeTargetValue2;
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
    v12.super_class = HFCharacteristicMultiValueEventBuilder;
    v8 = 0;
    if ([(HFCharacteristicEventBuilder *)&v12 isEqual:v5]&& v7)
    {
      triggerValues = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
      triggerValues2 = [(HFCharacteristicMultiValueEventBuilder *)v7 triggerValues];
      v8 = [triggerValues isEqualToSet:triggerValues2];
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HFCharacteristicMultiValueEventBuilder;
  v3 = [(HFCharacteristicEventBuilder *)&v7 hash];
  triggerValues = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  v5 = [triggerValues hash];

  return v5 ^ v3;
}

@end