@interface HFPrimaryStateControlItem
- (BOOL)canCopyWithCharacteristicOptions:(id)a3;
- (HFPrimaryStateControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFPrimaryStateControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 valueTransformer:(id)a5 displayResults:(id)a6;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)toggleValue;
- (id)valueForCharacteristicValues:(id)a3;
- (id)writePrimaryState:(int64_t)a3;
- (id)writeValue:(id)a3;
@end

@implementation HFPrimaryStateControlItem

- (HFPrimaryStateControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 valueTransformer:(id)a5 displayResults:(id)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [HFControlItemCharacteristicOptions alloc];
  v24 = &unk_282524E40;
  v15 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v25[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v17 = [(HFControlItemCharacteristicOptions *)v14 initWithCharacteristicTypesByUsage:v16];

  v23.receiver = self;
  v23.super_class = HFPrimaryStateControlItem;
  v18 = [(HFControlItem *)&v23 initWithValueSource:v13 characteristicOptions:v17 displayResults:v12];

  if (v18)
  {
    objc_storeStrong(&v18->_valueTransformer, a5);
    v19 = [v10 copy];
    primaryStateCharacteristicType = v18->_primaryStateCharacteristicType;
    v18->_primaryStateCharacteristicType = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HFPrimaryStateControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v6.receiver = self;
  v6.super_class = HFPrimaryStateControlItem;
  return [(HFControlItem *)&v6 initWithValueSource:a3 characteristicOptions:a4 displayResults:a5];
}

- (BOOL)canCopyWithCharacteristicOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFControlItem *)self characteristicOptions];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  if ([(HFPrimaryStateControlItem *)self canCopyWithCharacteristicOptions:a3])
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [(HFPrimaryStateControlItem *)self primaryStateCharacteristicType];
    v9 = [(HFPrimaryStateControlItem *)self valueTransformer];
    v10 = [(HFControlItem *)self displayResults];
    v11 = [v7 initWithValueSource:v6 characteristicType:v8 valueTransformer:v9 displayResults:v10];

    [v11 copyLatestResultsFromItem:self];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)writeValue:(id)a3
{
  v5.receiver = self;
  v5.super_class = HFPrimaryStateControlItem;
  v3 = [(HFControlItem *)&v5 writeValue:a3];

  return v3;
}

- (id)writePrimaryState:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(HFPrimaryStateControlItem *)self writeValue:v4];

  return v5;
}

- (id)toggleValue
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  v5 = [v4 hasOptedToHH2];
  v6 = off_277DF0150;
  if (!v5)
  {
    v6 = off_277DF0158;
  }

  v7 = *v6;
  v8 = objc_opt_new();

  v9 = [(HFControlItem *)self valueSource];
  [v9 beginTransactionWithReason:@"HFPrimaryStateControlItem-Toggle" readPolicy:v8 logger:0];

  v10 = [(HFControlItem *)self readValueAndPopulateStandardResults];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__HFPrimaryStateControlItem_toggleValue__block_invoke;
  v14[3] = &unk_277DF3FD0;
  v14[4] = self;
  v11 = [v10 flatMap:v14];

  v12 = [(HFControlItem *)self valueSource];
  [v12 commitTransactionWithReason:@"HFPrimaryStateControlItem-Toggle"];

  return v11;
}

id __40__HFPrimaryStateControlItem_toggleValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"value"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (v5 == 1);
    }

    v7 = [*(a1 + 32) writePrimaryState:v6];
  }

  else
  {
    v8 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v7 = [v8 futureWithError:v9];
  }

  return v7;
}

- (id)valueForCharacteristicValues:(id)a3
{
  v4 = a3;
  v5 = [(HFPrimaryStateControlItem *)self primaryStateCharacteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [(HFPrimaryStateControlItem *)self valueTransformer];
  v8 = [v7 transformedValueForValue:v6];

  return v8;
}

- (id)characteristicValuesForValue:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPrimaryStateControlItem *)self valueTransformer];
  v6 = [v5 valueForTransformedValue:v4];

  v7 = [(HFPrimaryStateControlItem *)self primaryStateCharacteristicType];
  v12 = v7;
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end