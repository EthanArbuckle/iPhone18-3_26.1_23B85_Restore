@interface HFCharacteristicValueEventBuilder
- (BOOL)isEqual:(id)a3;
- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4;
- (HFCharacteristicValueEventBuilder)initWithCharacteristic:(id)a3 triggerValue:(id)a4;
- (HFCharacteristicValueEventBuilder)initWithEvent:(id)a3;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)a3;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (id)triggeringValues;
- (unint64_t)hash;
- (void)copyValuesFromCharacteristicEventBuilder:(id)a3;
@end

@implementation HFCharacteristicValueEventBuilder

- (HFCharacteristicValueEventBuilder)initWithEvent:(id)a3
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFCharacteristicEventBuilder.m" lineNumber:153 description:{@"Event must be characteristic event: %@", v5}];

    v9 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HFCharacteristicValueEventBuilder;
    v6 = [(HFCharacteristicEventBuilder *)&v12 _initWithEvent:v5];
    if (v6)
    {
      v7 = [v5 triggerValue];
      v8 = v6[3];
      v6[3] = v7;
    }

    self = v6;
    v9 = self;
  }

  return v9;
}

- (HFCharacteristicValueEventBuilder)initWithCharacteristic:(id)a3 triggerValue:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HFCharacteristicValueEventBuilder;
  v8 = [(HFCharacteristicEventBuilder *)&v11 _initWithCharacteristic:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, a4);
  }

  return v9;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HFCharacteristicValueEventBuilder;
  v4 = [(HFEventBuilder *)&v10 comparisonKey];
  v5 = [(HFCharacteristicEventBuilder *)self characteristic];
  v6 = [v5 uniqueIdentifier];
  v7 = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v8 = [v3 stringWithFormat:@"%@-%@:%@", v4, v6, v7];

  return v8;
}

- (id)triggeringValues
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (void)copyValuesFromCharacteristicEventBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFCharacteristicValueEventBuilder;
  [(HFCharacteristicEventBuilder *)&v9 copyValuesFromCharacteristicEventBuilder:v4];
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
    v8 = [v7 triggerValue];
    [(HFCharacteristicValueEventBuilder *)self setTriggerValue:v8];
  }
}

- (id)buildNewEventsFromCurrentState
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_alloc(MEMORY[0x277CD1980]);
  v5 = [(HFCharacteristicEventBuilder *)self characteristic];
  v6 = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v7 = [v4 initWithCharacteristic:v5 triggerValue:v6];
  v8 = [v3 setWithObject:v7];

  return v8;
}

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = MEMORY[0x277CD19F8];
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = [(HFCharacteristicEventBuilder *)self characteristic];
  v8 = [v5 setWithObject:v7];
  v9 = [(HFCharacteristicValueEventBuilder *)self triggerValue];
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
    v12.receiver = self;
    v12.super_class = HFCharacteristicValueEventBuilder;
    v8 = 0;
    if ([(HFCharacteristicEventBuilder *)&v12 isEqual:v5]&& v7)
    {
      v9 = [(HFCharacteristicValueEventBuilder *)self triggerValue];
      v10 = [(HFCharacteristicValueEventBuilder *)v7 triggerValue];
      v8 = [v9 isEqual:v10];
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HFCharacteristicValueEventBuilder;
  v3 = [(HFCharacteristicEventBuilder *)&v7 hash];
  v4 = [(HFCharacteristicValueEventBuilder *)self triggerValue];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HFCharacteristicValueEventBuilder;
  v5 = [(HFEventBuilder *)&v12 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HFCharacteristicValueEventBuilder_Comparison__compareToObject___block_invoke;
    v10[3] = &unk_277DF6EF8;
    v10[4] = self;
    v6 = v4;
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