@interface HUCharacteristicEventOptionItem
- (BOOL)isValidThresholdValue:(id)a3;
- (HMCharacteristic)mainCharacteristic;
- (HMNumberRange)triggerValueRangeByApplyingThreshold;
- (HUCharacteristicEventOptionItem)init;
- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)a3 thresholdValueRange:(id)a4;
- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)a3 triggerValue:(id)a4;
- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)a3 triggerValueRange:(id)a4;
- (NSArray)validTriggerValues;
- (NSArray)visibleTriggerValues;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)localizedDescriptionForThresholdValue:(id)a3;
- (id)localizedListDescriptionForThresholdValue:(id)a3;
- (id)representativeTriggerValue;
- (void)setThresholdValue:(id)a3;
@end

@implementation HUCharacteristicEventOptionItem

- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)a3 triggerValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HUCharacteristicEventOptionItem;
  v9 = [(HUCharacteristicEventOptionItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristics, a3);
    v11 = [v8 copyWithZone:0];
    triggerValue = v10->_triggerValue;
    v10->_triggerValue = v11;
  }

  return v10;
}

- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)a3 triggerValueRange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUCharacteristicEventOptionItem;
  v9 = [(HUCharacteristicEventOptionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristics, a3);
    objc_storeStrong(&v10->_triggerValueRange, a4);
  }

  return v10;
}

- (HUCharacteristicEventOptionItem)initWithCharacteristics:(id)a3 thresholdValueRange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUCharacteristicEventOptionItem;
  v9 = [(HUCharacteristicEventOptionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristics, a3);
    objc_storeStrong(&v10->_thresholdValueRange, a4);
  }

  return v10;
}

- (HUCharacteristicEventOptionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUCharacteristicEventOptionItem.m" lineNumber:56 description:@"Use -initWithCharacteristics:triggerValue:"];

  return 0;
}

- (void)setThresholdValue:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_thresholdValue, a3);
  v5 = [(HUCharacteristicEventOptionItem *)self childItem];

  if (v5)
  {
    v6 = [(HUCharacteristicEventOptionItem *)self childItem];
    [v6 setThresholdValue:v7];
  }
}

- (HMCharacteristic)mainCharacteristic
{
  v3 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v4 = [v3 anyObject];

  v5 = [(HMCharacteristic *)v4 characteristicType];
  v6 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HUCharacteristicEventOptionItem_mainCharacteristic__block_invoke;
  v12[3] = &unk_277DB9538;
  v13 = v5;
  v7 = v5;
  v8 = [v6 na_any:v12];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
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
  v3 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  if (v3)
  {
    v4 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
    v5 = [v4 hf_triggerValues];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)visibleTriggerValues
{
  v3 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  v4 = [v3 hf_visibleTriggerValues];

  v5 = MEMORY[0x277CD19F8];
  v6 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v7 = [v5 hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:v6];

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
    v10 = [v4 na_filter:v12];

    v4 = v10;
  }

  return v4;
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
  v3 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [(HUCharacteristicEventOptionItem *)self thresholdValue];
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  v8 = [v7 minValue];
  v9 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  v10 = [v9 maxValue];

  if (v8 == v10)
  {
    goto LABEL_8;
  }

  v11 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  v12 = [v11 maxValue];

  if (!v12)
  {
    v26 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
    v27 = [(HUCharacteristicEventOptionItem *)self thresholdValue];
    v17 = [v26 hf_valueBeforeTriggerValue:v27];

    v28 = MEMORY[0x277CD1CB0];
    v19 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
    v20 = [v19 hf_minimumTriggerValue];
    v21 = v28;
    v22 = v20;
    v23 = v17;
    goto LABEL_13;
  }

  v13 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  v14 = [v13 minValue];

  if (v14)
  {
LABEL_8:
    v24 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
    goto LABEL_9;
  }

  v15 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  v16 = [(HUCharacteristicEventOptionItem *)self thresholdValue];
  v17 = [v15 hf_valueAfterTriggerValue:v16];

  v18 = MEMORY[0x277CD1CB0];
  v19 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
  v20 = [v19 hf_maximumTriggerValue];
  v21 = v18;
  v22 = v17;
  v23 = v20;
LABEL_13:
  v24 = [v21 numberRangeWithMinValue:v22 maxValue:v23];

LABEL_9:

  return v24;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v5 = [v4 count];

  if (!v5)
  {
    NSLog(&cfstr_MustHaveCharac.isa);
  }

  v6 = [(HUCharacteristicEventOptionItem *)self characteristics];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];

    if (!v8)
    {
      v17 = MEMORY[0x277CD19F8];
      v18 = [(HUCharacteristicEventOptionItem *)self characteristics];
      v19 = [(HUCharacteristicEventOptionItem *)self representativeTriggerValue];
      v20 = [v17 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v18 triggerValue:v19];
      v21 = 0;
LABEL_21:

      if (v20)
      {
        [v7 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13F60]];
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", v20];
        [v7 setObject:v37 forKeyedSubscript:*MEMORY[0x277D13DC8]];
      }

      else
      {
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
      }

      v38 = [(HUCharacteristicEventOptionItem *)self childItem];
      if (v38)
      {
        v39 = MEMORY[0x277CBEB98];
        v40 = [(HUCharacteristicEventOptionItem *)self childItem];
        v41 = [v39 setWithObject:v40];
        [v7 setObject:v41 forKeyedSubscript:*MEMORY[0x277D13D80]];
      }

      else
      {
        [v7 setObject:0 forKeyedSubscript:*MEMORY[0x277D13D80]];
      }

      v42 = [(HUCharacteristicEventOptionItem *)self visibleTriggerValues];
      [v7 setObject:v42 forKeyedSubscript:*MEMORY[0x277D14140]];

      [v7 na_safeSetObject:v21 forKey:*MEMORY[0x277D13E30]];
      v43 = MEMORY[0x277D2C900];
      v44 = [MEMORY[0x277D14780] outcomeWithResults:v7];
      v16 = [v43 futureWithResult:v44];

      goto LABEL_28;
    }

    v9 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
    v10 = [v9 minValue];

    if (v10)
    {
      v11 = MEMORY[0x277CD1CB0];
      v12 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      v13 = [v12 minValue];
      v14 = [v11 numberRangeWithMinValue:v13];
    }

    else
    {
      v22 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      v23 = [v22 maxValue];

      if (!v23)
      {
        v18 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
        goto LABEL_12;
      }

      v24 = MEMORY[0x277CD1CB0];
      v12 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      v13 = [v12 maxValue];
      v14 = [v24 numberRangeWithMaxValue:v13];
    }

    v18 = v14;

LABEL_12:
    v25 = MEMORY[0x277CD19F8];
    v26 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v20 = [v25 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v26 triggerValueRange:v18 thresholdValue:0];

    v27 = MEMORY[0x277CD19F8];
    v28 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v29 = [v27 hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:v28];

    v30 = [(HUCharacteristicEventOptionItem *)self thresholdValue];
    v21 = [v29 stringForObjectValue:v30];

    v19 = v29;
    if ([v19 conformsToProtocol:&unk_2825BD8A0])
    {
      v31 = v19;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    if (v32 && ([v32 unitDescription], v33 = objc_claimAutoreleasedReturnValue(), v33, v33))
    {
      v34 = [v32 unitDescription];
      [v7 setObject:v34 forKeyedSubscript:*MEMORY[0x277D13F78]];
    }

    else
    {
      v35 = [(HUCharacteristicEventOptionItem *)self mainCharacteristic];
      v34 = [v35 characteristicType];

      if ([v34 isEqualToString:*MEMORY[0x277CCF830]])
      {
        v36 = HFLocalizedString();
        [v7 setObject:v36 forKeyedSubscript:*MEMORY[0x277D13F78]];
      }
    }

    goto LABEL_21;
  }

  v15 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  v16 = [v15 futureWithError:v7];
LABEL_28:

  return v16;
}

- (BOOL)isValidThresholdValue:(id)a3
{
  v4 = a3;
  v5 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  v6 = [v5 minValue];

  v7 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
  v8 = [v7 maxValue];

  if (v6 && [v4 compare:v6] == -1)
  {
    v9 = 0;
  }

  else if (v8)
  {
    v9 = [v4 compare:v8] != 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)localizedDescriptionForThresholdValue:(id)a3
{
  v4 = MEMORY[0x277CD19F8];
  v5 = a3;
  v6 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v7 = [v4 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v6 triggerValue:v5];

  return v7;
}

- (id)localizedListDescriptionForThresholdValue:(id)a3
{
  v4 = a3;
  v5 = [(HUCharacteristicEventOptionItem *)self latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D14140]];
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
  v11 = [(HUCharacteristicEventOptionItem *)self characteristics];
  if (v9)
  {
    [v10 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v11 triggerValue:v4 visibleTriggerValues:v9];
  }

  else
  {
    [v10 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v11 triggerValue:v4];
  }
  v12 = ;

  v13 = [(HUCharacteristicEventOptionItem *)self latestResults];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F78]];

  if (v14)
  {
    v15 = MEMORY[0x277CD19F8];
    v16 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v17 = [v15 hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:v16];

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
      v21 = [v20 stringForObjectValue:v4 withUnit:0];

      v12 = v21;
    }
  }

  return v12;
}

- (id)representativeTriggerValue
{
  v3 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];

  if (v3)
  {
    v4 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
    v5 = [v4 maxValue];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v9 = [(HUCharacteristicEventOptionItem *)self thresholdValueRange];
      v7 = [v9 minValue];
    }
  }

  else
  {
    v8 = [(HUCharacteristicEventOptionItem *)self triggerValue];
    if (v8)
    {
      v4 = v8;
      v7 = v4;
    }

    else
    {
      v11 = [(HUCharacteristicEventOptionItem *)self triggerValueRange];
      v7 = [v11 hf_representativeValue];

      v4 = 0;
    }
  }

  return v7;
}

@end