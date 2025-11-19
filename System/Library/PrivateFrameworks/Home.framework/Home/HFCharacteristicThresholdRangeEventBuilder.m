@interface HFCharacteristicThresholdRangeEventBuilder
+ (BOOL)_wouldFireForValue:(id)a3 thresholdRange:(id)a4 characteristic:(id)a5;
- (BOOL)hf_wouldFireForValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4;
- (HFCharacteristicThresholdRangeEventBuilder)initWithCharacteristic:(id)a3 thresholdRange:(id)a4;
- (HFCharacteristicThresholdRangeEventBuilder)initWithEvent:(id)a3;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)a3;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (id)triggeringValues;
- (unint64_t)hash;
- (void)copyValuesFromCharacteristicEventBuilder:(id)a3;
@end

@implementation HFCharacteristicThresholdRangeEventBuilder

- (HFCharacteristicThresholdRangeEventBuilder)initWithEvent:(id)a3
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFCharacteristicEventBuilder.m" lineNumber:241 description:{@"Event must be characteristic threshold range event: %@", v5}];

    v9 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HFCharacteristicThresholdRangeEventBuilder;
    v6 = [(HFCharacteristicEventBuilder *)&v12 _initWithEvent:v5];
    if (v6)
    {
      v7 = [v5 thresholdRange];
      v8 = v6[3];
      v6[3] = v7;
    }

    self = v6;
    v9 = self;
  }

  return v9;
}

- (HFCharacteristicThresholdRangeEventBuilder)initWithCharacteristic:(id)a3 thresholdRange:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HFCharacteristicThresholdRangeEventBuilder;
  v8 = [(HFCharacteristicEventBuilder *)&v11 _initWithCharacteristic:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, a4);
  }

  return v9;
}

- (BOOL)hf_wouldFireForValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v7 = [(HFCharacteristicEventBuilder *)self characteristic];
  LOBYTE(v5) = [v5 _wouldFireForValue:v4 thresholdRange:v6 characteristic:v7];

  return v5;
}

- (id)triggeringValues
{
  v3 = [(HFCharacteristicEventBuilder *)self characteristic];
  v4 = [v3 metadata];

  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 validValues];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HFCharacteristicThresholdRangeEventBuilder_triggeringValues__block_invoke;
  v10[3] = &unk_277DF3770;
  v10[4] = self;
  v7 = [v6 na_filter:v10];
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

- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFCharacteristicEventBuilder *)self characteristic];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(HFCharacteristicThresholdRangeEventBuilder *)self hf_wouldFireForValue:v6];
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
  v4 = [(HFEventBuilder *)&v10 comparisonKey];
  v5 = [(HFCharacteristicEventBuilder *)self characteristic];
  v6 = [v5 uniqueIdentifier];
  v7 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v8 = [v3 stringWithFormat:@"%@-%@:%@", v4, v6, v7];

  return v8;
}

- (void)copyValuesFromCharacteristicEventBuilder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HFCharacteristicThresholdRangeEventBuilder;
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
    v8 = [v7 thresholdRange];
    thresholdRange = self->_thresholdRange;
    self->_thresholdRange = v8;
  }
}

- (id)buildNewEventsFromCurrentState
{
  v3 = objc_alloc(MEMORY[0x277CD19A0]);
  v4 = [(HFCharacteristicEventBuilder *)self characteristic];
  v5 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v6 = [v3 initWithCharacteristic:v4 thresholdRange:v5];

  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  return v7;
}

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = MEMORY[0x277CD19F8];
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = [(HFCharacteristicEventBuilder *)self characteristic];
  v8 = [v5 setWithObject:v7];
  v9 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v10 = [v4 hf_naturalLanguageNameWithOptions:v6 characteristics:v8 triggerValue:v9];

  return v10;
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
    v25.receiver = self;
    v25.super_class = HFCharacteristicThresholdRangeEventBuilder;
    v8 = 0;
    if ([(HFCharacteristicEventBuilder *)&v25 isEqual:v5]&& v7)
    {
      v9 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
      v10 = [v9 minValue];
      v11 = [(HFCharacteristicThresholdRangeEventBuilder *)v7 thresholdRange];
      v12 = [v11 minValue];
      v13 = v10;
      v14 = v12;
      v15 = v14;
      if (v13 == v14)
      {
        v8 = 1;
        v17 = v14;
        v18 = v13;
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

        v24 = v9;
        v18 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
        v19 = [v18 maxValue];
        v20 = [(HFCharacteristicThresholdRangeEventBuilder *)v7 thresholdRange];
        v21 = [v20 maxValue];
        v17 = v19;
        v22 = v21;
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

        v9 = v24;
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
  v4 = [(HFCharacteristicThresholdRangeEventBuilder *)self thresholdRange];
  v5 = [v4 hash];

  return v5 ^ v3;
}

+ (BOOL)_wouldFireForValue:(id)a3 thresholdRange:(id)a4 characteristic:(id)a5
{
  v7 = a4;
  if (a3)
  {
    v8 = a3;
    v9 = [a5 metadata];
    v10 = [v9 hf_valueRoundedToNearestStepValue:v8];

    v11 = [v7 minValue];

    if (v11)
    {
      v12 = [v7 minValue];
      v13 = [v9 hf_valueRoundedToNearestStepValue:v12];

      [v10 doubleValue];
      v15 = v14;
      [v13 doubleValue];
      v17 = v16 + -0.00000011920929;

      if (v15 < v17)
      {
        goto LABEL_8;
      }
    }

    v18 = [v7 maxValue];

    if (!v18)
    {
      goto LABEL_6;
    }

    v19 = [v7 maxValue];
    v20 = [v9 hf_valueRoundedToNearestStepValue:v19];

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

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HFCharacteristicThresholdRangeEventBuilder;
  v5 = [(HFEventBuilder *)&v12 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HFCharacteristicThresholdRangeEventBuilder_Comparison__compareToObject___block_invoke;
    v10[3] = &unk_277DF6EF8;
    v10[4] = self;
    v6 = v4;
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