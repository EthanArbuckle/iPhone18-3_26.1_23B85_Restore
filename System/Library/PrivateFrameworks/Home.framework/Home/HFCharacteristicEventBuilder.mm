@interface HFCharacteristicEventBuilder
+ (id)characteristicEventBuildersForEvents:(id)events inHome:(id)home;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCharacteristic:(id)characteristic;
- (id)_initWithEvent:(id)event;
- (id)triggeringValues;
- (unint64_t)hash;
- (void)copyValuesFromCharacteristicEventBuilder:(id)builder;
@end

@implementation HFCharacteristicEventBuilder

- (id)_initWithEvent:(id)event
{
  eventCopy = event;
  v6 = eventCopy;
  if (eventCopy && ([eventCopy conformsToProtocol:&unk_2825320C8] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicEventBuilder.m" lineNumber:29 description:{@"Event must be characteristic event: %@", v6}];

    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HFCharacteristicEventBuilder;
    v7 = [(HFEventBuilder *)&v13 initWithEvent:v6];
    if (v7)
    {
      characteristic = [v6 characteristic];
      characteristic = v7->_characteristic;
      v7->_characteristic = characteristic;
    }

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_initWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v9.receiver = self;
  v9.super_class = HFCharacteristicEventBuilder;
  v6 = [(HFEventBuilder *)&v9 initWithEvent:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, characteristic);
  }

  return v7;
}

- (void)copyValuesFromCharacteristicEventBuilder:(id)builder
{
  characteristic = [builder characteristic];
  characteristic = self->_characteristic;
  self->_characteristic = characteristic;
}

- (id)triggeringValues
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicEventBuilder.m" lineNumber:55 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFCharacteristicEventBuilder triggeringValues]", objc_opt_class()}];

  return 0;
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
    v12.super_class = HFCharacteristicEventBuilder;
    v8 = 0;
    if ([(HFCharacteristicEventBuilder *)&v12 isEqual:v5]&& v7)
    {
      characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
      characteristic2 = [(HFCharacteristicEventBuilder *)v7 characteristic];
      v8 = [characteristic isEqual:characteristic2];
    }
  }

  return v8;
}

- (unint64_t)hash
{
  characteristic = [(HFCharacteristicEventBuilder *)self characteristic];
  uniqueIdentifier = [characteristic uniqueIdentifier];
  v4 = [uniqueIdentifier hash];

  return v4;
}

+ (id)characteristicEventBuildersForEvents:(id)events inHome:(id)home
{
  v4 = MEMORY[0x277CBEB18];
  eventsCopy = events;
  array = [v4 array];
  v7 = [eventsCopy na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_9];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HFCharacteristicEventBuilder_characteristicEventBuildersForEvents_inHome___block_invoke_2;
  v10[3] = &unk_277DF3748;
  v8 = array;
  v11 = v8;
  [v7 na_each:v10];

  return v8;
}

id __76__HFCharacteristicEventBuilder_characteristicEventBuildersForEvents_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

void __76__HFCharacteristicEventBuilder_characteristicEventBuildersForEvents_inHome___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HFCharacteristicEventBuilder_characteristicEventBuildersForEvents_inHome___block_invoke_3;
  v8[3] = &unk_277DF36D8;
  v9 = *(a1 + 32);
  v5 = [a3 na_dictionaryByBucketingObjectsUsingKeyGenerator:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HFCharacteristicEventBuilder_characteristicEventBuildersForEvents_inHome___block_invoke_4;
  v6[3] = &unk_277DF3720;
  v7 = *(a1 + 32);
  [v5 na_each:v6];
}

id __76__HFCharacteristicEventBuilder_characteristicEventBuildersForEvents_inHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v6)
  {
    v10 = MEMORY[0x277CD19F8];
    v11 = [v7 characteristic];
    v12 = [v6 triggerValue];
    v13 = [v10 hf_representativeTriggerValueForCharacteristic:v11 similarToValue:v12];
LABEL_11:

    goto LABEL_12;
  }

  if (v9)
  {
    v14 = *(a1 + 32);
    v15 = [HFCharacteristicThresholdRangeEventBuilder alloc];
    v11 = [v7 characteristic];
    v12 = [v9 thresholdRange];
    v16 = [(HFCharacteristicThresholdRangeEventBuilder *)v15 initWithCharacteristic:v11 thresholdRange:v12];
    [v14 addObject:v16];

    v13 = 0;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

void __76__HFCharacteristicEventBuilder_characteristicEventBuildersForEvents_inHome___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v5 count] == 1)
  {
    v6 = *(a1 + 32);
    v7 = [HFCharacteristicValueEventBuilder alloc];
    v8 = [v5 firstObject];

    v9 = [(HFCharacteristicValueEventBuilder *)v7 initWithEvent:v8];
    [v6 addObject:v9];
  }

  else
  {
    v10 = [v5 firstObject];
    v8 = [v10 characteristic];

    v11 = [MEMORY[0x277CBEB98] setWithArray:v5];

    v9 = [v11 na_map:&__block_literal_global_70_0];

    v12 = [[HFCharacteristicMultiValueEventBuilder alloc] initWithCharacteristic:v8 values:v9];
    [(HFCharacteristicMultiValueEventBuilder *)v12 setRepresentativeTargetValue:v13];
    [*(a1 + 32) addObject:v12];
  }
}

@end