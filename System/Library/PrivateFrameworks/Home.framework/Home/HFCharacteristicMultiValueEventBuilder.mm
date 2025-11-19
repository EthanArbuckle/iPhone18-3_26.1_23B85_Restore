@interface HFCharacteristicMultiValueEventBuilder
- (BOOL)isEqual:(id)a3;
- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4;
- (HFCharacteristicMultiValueEventBuilder)initWithCharacteristic:(id)a3 values:(id)a4;
- (id)buildNewEventsFromCurrentState;
- (id)comparisonKey;
- (id)hf_representativeTriggerValue;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (unint64_t)hash;
- (void)copyValuesFromCharacteristicEventBuilder:(id)a3;
@end

@implementation HFCharacteristicMultiValueEventBuilder

- (HFCharacteristicMultiValueEventBuilder)initWithCharacteristic:(id)a3 values:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HFCharacteristicMultiValueEventBuilder;
  v7 = [(HFCharacteristicEventBuilder *)&v12 _initWithCharacteristic:a3];
  if (v7)
  {
    v8 = [v6 copy];
    triggerValues = v7->_triggerValues;
    v7->_triggerValues = v8;

    representativeTargetValue = v7->_representativeTargetValue;
    v7->_representativeTargetValue = 0;
  }

  return v7;
}

- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  v7 = [v6 containsObject:v5];

  return v7;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = HFCharacteristicMultiValueEventBuilder;
  v4 = [(HFEventBuilder *)&v12 comparisonKey];
  v5 = [(HFCharacteristicEventBuilder *)self characteristic];
  v6 = [v5 uniqueIdentifier];
  v7 = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  v8 = [v7 allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"%@-%@:(%@)", v4, v6, v9];

  return v10;
}

- (void)copyValuesFromCharacteristicEventBuilder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HFCharacteristicMultiValueEventBuilder;
  [(HFCharacteristicEventBuilder *)&v10 copyValuesFromCharacteristicEventBuilder:v4];
  objc_opt_class();
  v5 = v4;
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
    v8 = [v7 triggerValues];
    triggerValues = self->_triggerValues;
    self->_triggerValues = v8;
  }
}

- (id)buildNewEventsFromCurrentState
{
  v3 = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HFCharacteristicMultiValueEventBuilder_buildNewEventsFromCurrentState__block_invoke;
  v6[3] = &unk_277DF3798;
  v6[4] = self;
  v4 = [v3 na_map:v6];

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

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = MEMORY[0x277CD19F8];
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = [(HFCharacteristicEventBuilder *)self characteristic];
  v8 = [v5 setWithObject:v7];
  v9 = [(HFCharacteristicMultiValueEventBuilder *)self hf_representativeTriggerValue];
  v10 = [v4 hf_naturalLanguageNameWithOptions:v6 characteristics:v8 triggerValue:v9];

  return v10;
}

- (id)hf_representativeTriggerValue
{
  v3 = [(HFCharacteristicMultiValueEventBuilder *)self representativeTargetValue];

  if (v3)
  {
    v4 = [(HFCharacteristicMultiValueEventBuilder *)self representativeTargetValue];
  }

  else
  {
    v5 = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
    v4 = [v5 anyObject];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
      v9 = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
      v10 = [(HFCharacteristicMultiValueEventBuilder *)v7 triggerValues];
      v8 = [v9 isEqualToSet:v10];
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HFCharacteristicMultiValueEventBuilder;
  v3 = [(HFCharacteristicEventBuilder *)&v7 hash];
  v4 = [(HFCharacteristicMultiValueEventBuilder *)self triggerValues];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end