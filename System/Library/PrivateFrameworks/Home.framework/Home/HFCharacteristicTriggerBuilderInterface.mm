@interface HFCharacteristicTriggerBuilderInterface
- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value;
- (NSSet)characteristics;
- (id)thresholdValueForCharacteristic:(id)characteristic thresholdValueRange:(id)range;
- (id)triggerValueForCharacteristic:(id)characteristic;
- (void)removeAllCharacteristics;
- (void)removeCharacteristic:(id)characteristic;
- (void)setCharacteristic:(id)characteristic triggerValue:(id)value;
- (void)setCharacteristic:(id)characteristic triggerValueRange:(id)range;
@end

@implementation HFCharacteristicTriggerBuilderInterface

- (NSSet)characteristics
{
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  characteristics = [triggerBuilder characteristics];

  return characteristics;
}

- (void)setCharacteristic:(id)characteristic triggerValue:(id)value
{
  characteristicCopy = characteristic;
  valueCopy = value;
  v8 = characteristicCopy;
  v9 = valueCopy;
  if (!characteristicCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFEventTriggerBuilder+LegacyInterfaces.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"characteristic"}];

    v8 = 0;
  }

  [(HFCharacteristicTriggerBuilderInterface *)self removeCharacteristic:v8];
  if (v9)
  {
    triggerBuilder2 = [MEMORY[0x277CD19F8] hf_allTriggerValuesForCharacteristic:characteristicCopy similarToValue:v9];
    v11 = [triggerBuilder2 count];
    triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    if (v11 == 1)
    {
      v13 = [HFCharacteristicValueEventBuilder alloc];
      anyObject = [triggerBuilder2 anyObject];
      v15 = [(HFCharacteristicValueEventBuilder *)v13 initWithCharacteristic:characteristicCopy triggerValue:anyObject];
      [(HFCharacteristicValueEventBuilder *)triggerBuilder addEventBuilder:v15];
    }

    else
    {
      anyObject = [[HFCharacteristicMultiValueEventBuilder alloc] initWithCharacteristic:characteristicCopy values:triggerBuilder2];
      [(HFCharacteristicValueEventBuilder *)triggerBuilder addEventBuilder:anyObject];
    }
  }

  else
  {
    triggerBuilder2 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    triggerBuilder = [[HFCharacteristicValueEventBuilder alloc] initWithCharacteristic:characteristicCopy triggerValue:0];
    [triggerBuilder2 addEventBuilder:triggerBuilder];
  }
}

- (void)setCharacteristic:(id)characteristic triggerValueRange:(id)range
{
  characteristicCopy = characteristic;
  rangeCopy = range;
  if (characteristicCopy)
  {
    if (rangeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFEventTriggerBuilder+LegacyInterfaces.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"characteristic"}];

    if (rangeCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFEventTriggerBuilder+LegacyInterfaces.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"triggerValueRange"}];

LABEL_3:
  [(HFCharacteristicTriggerBuilderInterface *)self removeCharacteristic:characteristicCopy];
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v9 = [[HFCharacteristicThresholdRangeEventBuilder alloc] initWithCharacteristic:characteristicCopy thresholdRange:rangeCopy];
  [triggerBuilder addEventBuilder:v9];
}

- (void)removeCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = [MEMORY[0x277CBEB58] set];
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  eventBuilders = [triggerBuilder eventBuilders];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HFCharacteristicTriggerBuilderInterface_removeCharacteristic___block_invoke;
  v11[3] = &unk_277DF9A08;
  v12 = characteristicCopy;
  v13 = v5;
  v8 = v5;
  v9 = characteristicCopy;
  [eventBuilders na_each:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HFCharacteristicTriggerBuilderInterface_removeCharacteristic___block_invoke_2;
  v10[3] = &unk_277DF4D70;
  v10[4] = self;
  [v8 na_each:v10];
}

void __64__HFCharacteristicTriggerBuilderInterface_removeCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = v8;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v5 characteristic];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (v7)
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

void __64__HFCharacteristicTriggerBuilderInterface_removeCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

- (void)removeAllCharacteristics
{
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  eventBuilders = [triggerBuilder eventBuilders];
  v5 = [eventBuilders na_filter:&__block_literal_global_209];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HFCharacteristicTriggerBuilderInterface_removeAllCharacteristics__block_invoke_2;
  v6[3] = &unk_277DF4D70;
  v6[4] = self;
  [v5 na_each:v6];
}

void __67__HFCharacteristicTriggerBuilderInterface_removeAllCharacteristics__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

- (BOOL)wouldFireForCharacteristic:(id)characteristic value:(id)value
{
  characteristicCopy = characteristic;
  valueCopy = value;
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  eventBuilders = [triggerBuilder eventBuilders];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HFCharacteristicTriggerBuilderInterface_wouldFireForCharacteristic_value___block_invoke;
  v14[3] = &unk_277E00CF0;
  v15 = characteristicCopy;
  v16 = valueCopy;
  v10 = valueCopy;
  v11 = characteristicCopy;
  v12 = [eventBuilders na_any:v14];

  return v12;
}

uint64_t __76__HFCharacteristicTriggerBuilderInterface_wouldFireForCharacteristic_value___block_invoke(uint64_t a1, void *a2)
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

  if (!v6)
  {
    goto LABEL_10;
  }

  v10 = [v6 characteristic];
  if (([v10 isEqual:*(a1 + 32)] & 1) == 0)
  {

    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v11 = [v6 triggerValue];
  v12 = [v11 isEqual:*(a1 + 40)];

  if ((v12 & 1) == 0)
  {
LABEL_10:
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_13:
    if ([v9 hf_wouldFireForValue:*(a1 + 40)])
    {
      goto LABEL_14;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v13 = 1;
LABEL_16:

  return v13;
}

- (id)thresholdValueForCharacteristic:(id)characteristic thresholdValueRange:(id)range
{
  characteristicCopy = characteristic;
  rangeCopy = range;
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  eventBuilders = [triggerBuilder eventBuilders];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __95__HFCharacteristicTriggerBuilderInterface_thresholdValueForCharacteristic_thresholdValueRange___block_invoke;
  v22 = &unk_277E00CF0;
  v10 = rangeCopy;
  v23 = v10;
  v11 = characteristicCopy;
  v24 = v11;
  v12 = [eventBuilders na_firstObjectPassingTest:&v19];

  objc_opt_class();
  v13 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    thresholdRange = [v15 thresholdRange];
    v17 = [v11 hf_thresholdValueForRange:thresholdRange];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

BOOL __95__HFCharacteristicTriggerBuilderInterface_thresholdValueForCharacteristic_thresholdValueRange___block_invoke(uint64_t a1, void *a2)
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

  v7 = [*(a1 + 32) minValue];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [*(a1 + 32) minValue];
  v10 = [*(a1 + 40) hf_minimumTriggerValue];
  v11 = [v9 compare:v10];

  if (!v11)
  {
LABEL_10:
    if (v6)
    {
      v18 = [v6 thresholdRange];
      v19 = [v18 maxValue];
      if (v19)
      {
        v20 = [v6 thresholdRange];
        v21 = [v20 maxValue];
        v22 = [*(a1 + 40) hf_maximumTriggerValue];
LABEL_16:
        v23 = v22;
        v17 = [v21 compare:v22] == 0;

LABEL_19:
        goto LABEL_20;
      }

LABEL_18:
      v17 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v12 = [*(a1 + 32) maxValue];
  if (!v12)
  {
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_17:
    v17 = 0;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [*(a1 + 32) maxValue];
  v15 = [*(a1 + 40) hf_maximumTriggerValue];
  v16 = [v14 compare:v15];

  v17 = 0;
  if (!v16 && v6)
  {
LABEL_14:
    v18 = [v6 thresholdRange];
    v19 = [v18 minValue];
    if (v19)
    {
      v20 = [v6 thresholdRange];
      v21 = [v20 minValue];
      v22 = [*(a1 + 40) hf_minimumTriggerValue];
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_20:

  return v17;
}

- (id)triggerValueForCharacteristic:(id)characteristic
{
  v3 = MEMORY[0x277CBEB98];
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  eventBuilders = [triggerBuilder eventBuilders];
  v6 = [v3 setWithArray:eventBuilders];
  v7 = [v6 na_map:&__block_literal_global_104];

  return v7;
}

id __73__HFCharacteristicTriggerBuilderInterface_triggerValueForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v5)
  {
    v9 = [v5 triggerValue];
LABEL_11:
    v10 = v9;
    goto LABEL_12;
  }

  if (v8)
  {
    v9 = [v8 thresholdRange];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end