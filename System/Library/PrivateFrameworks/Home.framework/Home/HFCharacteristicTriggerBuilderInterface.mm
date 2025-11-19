@interface HFCharacteristicTriggerBuilderInterface
- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4;
- (NSSet)characteristics;
- (id)thresholdValueForCharacteristic:(id)a3 thresholdValueRange:(id)a4;
- (id)triggerValueForCharacteristic:(id)a3;
- (void)removeAllCharacteristics;
- (void)removeCharacteristic:(id)a3;
- (void)setCharacteristic:(id)a3 triggerValue:(id)a4;
- (void)setCharacteristic:(id)a3 triggerValueRange:(id)a4;
@end

@implementation HFCharacteristicTriggerBuilderInterface

- (NSSet)characteristics
{
  v2 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v3 = [v2 characteristics];

  return v3;
}

- (void)setCharacteristic:(id)a3 triggerValue:(id)a4
{
  v17 = a3;
  v7 = a4;
  v8 = v17;
  v9 = v7;
  if (!v17)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFEventTriggerBuilder+LegacyInterfaces.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"characteristic"}];

    v8 = 0;
  }

  [(HFCharacteristicTriggerBuilderInterface *)self removeCharacteristic:v8];
  if (v9)
  {
    v10 = [MEMORY[0x277CD19F8] hf_allTriggerValuesForCharacteristic:v17 similarToValue:v9];
    v11 = [v10 count];
    v12 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    if (v11 == 1)
    {
      v13 = [HFCharacteristicValueEventBuilder alloc];
      v14 = [v10 anyObject];
      v15 = [(HFCharacteristicValueEventBuilder *)v13 initWithCharacteristic:v17 triggerValue:v14];
      [(HFCharacteristicValueEventBuilder *)v12 addEventBuilder:v15];
    }

    else
    {
      v14 = [[HFCharacteristicMultiValueEventBuilder alloc] initWithCharacteristic:v17 values:v10];
      [(HFCharacteristicValueEventBuilder *)v12 addEventBuilder:v14];
    }
  }

  else
  {
    v10 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    v12 = [[HFCharacteristicValueEventBuilder alloc] initWithCharacteristic:v17 triggerValue:0];
    [v10 addEventBuilder:v12];
  }
}

- (void)setCharacteristic:(id)a3 triggerValueRange:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFEventTriggerBuilder+LegacyInterfaces.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"characteristic"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"HFEventTriggerBuilder+LegacyInterfaces.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"triggerValueRange"}];

LABEL_3:
  [(HFCharacteristicTriggerBuilderInterface *)self removeCharacteristic:v12];
  v8 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v9 = [[HFCharacteristicThresholdRangeEventBuilder alloc] initWithCharacteristic:v12 thresholdRange:v7];
  [v8 addEventBuilder:v9];
}

- (void)removeCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v7 = [v6 eventBuilders];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HFCharacteristicTriggerBuilderInterface_removeCharacteristic___block_invoke;
  v11[3] = &unk_277DF9A08;
  v12 = v4;
  v13 = v5;
  v8 = v5;
  v9 = v4;
  [v7 na_each:v11];

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
  v3 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v4 = [v3 eventBuilders];
  v5 = [v4 na_filter:&__block_literal_global_209];
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

- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v9 = [v8 eventBuilders];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HFCharacteristicTriggerBuilderInterface_wouldFireForCharacteristic_value___block_invoke;
  v14[3] = &unk_277E00CF0;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 na_any:v14];

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

- (id)thresholdValueForCharacteristic:(id)a3 thresholdValueRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v9 = [v8 eventBuilders];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __95__HFCharacteristicTriggerBuilderInterface_thresholdValueForCharacteristic_thresholdValueRange___block_invoke;
  v22 = &unk_277E00CF0;
  v10 = v7;
  v23 = v10;
  v11 = v6;
  v24 = v11;
  v12 = [v9 na_firstObjectPassingTest:&v19];

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
    v16 = [v15 thresholdRange];
    v17 = [v11 hf_thresholdValueForRange:v16];
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

- (id)triggerValueForCharacteristic:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v5 = [v4 eventBuilders];
  v6 = [v3 setWithArray:v5];
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