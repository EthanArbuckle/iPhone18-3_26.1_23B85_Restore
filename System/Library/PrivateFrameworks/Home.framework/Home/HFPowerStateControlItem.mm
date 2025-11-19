@interface HFPowerStateControlItem
+ (id)_powerStateTargetValues;
+ (id)na_identity;
- (BOOL)supportsItemRepresentingServices:(id)a3;
- (HFPowerStateControlItem)initWithValueSource:(id)a3 auxiliaryTargetValueTuples:(id)a4 additionalCharacteristicOptions:(id)a5 displayResults:(id)a6;
- (HFPowerStateControlItem)initWithValueSource:(id)a3 auxiliaryTargetValueTuples:(id)a4 displayResults:(id)a5;
- (HFPowerStateControlItem)initWithValueSource:(id)a3 characteristicTypes:(id)a4 displayResults:(id)a5;
- (HFPowerStateControlItem)initWithValueSource:(id)a3 displayResults:(id)a4;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)readValueAndPopulateStandardResults;
- (id)toggleValue;
- (id)valueForCharacteristicValues:(id)a3;
- (id)writePrimaryState:(int64_t)a3;
@end

@implementation HFPowerStateControlItem

- (HFPowerStateControlItem)initWithValueSource:(id)a3 displayResults:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [(HFPowerStateControlItem *)self initWithValueSource:v8 auxiliaryTargetValueTuples:v9 displayResults:v7];

  return v10;
}

- (HFPowerStateControlItem)initWithValueSource:(id)a3 auxiliaryTargetValueTuples:(id)a4 displayResults:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v12 = [(HFPowerStateControlItem *)self initWithValueSource:v10 auxiliaryTargetValueTuples:v9 additionalCharacteristicOptions:v11 displayResults:v8];

  return v12;
}

- (HFPowerStateControlItem)initWithValueSource:(id)a3 auxiliaryTargetValueTuples:(id)a4 additionalCharacteristicOptions:(id)a5 displayResults:(id)a6
{
  v31[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [objc_opt_class() _powerStateTargetValues];
  v15 = [v14 setByAddingObjectsFromSet:v11];
  allTargetValues = self->_allTargetValues;
  self->_allTargetValues = v15;

  v17 = [(NSSet *)self->_allTargetValues na_map:&__block_literal_global_100_0];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __121__HFPowerStateControlItem_initWithValueSource_auxiliaryTargetValueTuples_additionalCharacteristicOptions_displayResults___block_invoke_2;
  v28[3] = &unk_277DF3130;
  v18 = v10;
  v29 = v18;
  v19 = [v17 na_filter:v28];

  v20 = [HFControlItemCharacteristicOptions alloc];
  v30 = &unk_2825234C0;
  v31[0] = v19;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v22 = [(HFControlItemCharacteristicOptions *)v20 initWithCharacteristicTypesByUsage:v21];

  v23 = [(HFControlItemCharacteristicOptions *)v22 optionsByAddingCharacteristicOptions:v13];

  v27.receiver = self;
  v27.super_class = HFPowerStateControlItem;
  v24 = [(HFPrimaryStateControlItem *)&v27 initWithValueSource:v18 characteristicOptions:v23 displayResults:v12];

  if (v24)
  {
    objc_storeStrong(&v24->_auxiliaryTargetValueTuples, a4);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL __121__HFPowerStateControlItem_initWithValueSource_auxiliaryTargetValueTuples_additionalCharacteristicOptions_displayResults___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) allCharacteristicsForCharacteristicType:a2];
  v3 = [v2 count] != 0;

  return v3;
}

- (HFPowerStateControlItem)initWithValueSource:(id)a3 characteristicTypes:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFPowerStateControlItem.m" lineNumber:123 description:{@"%s is unavailable; use %@ instead", "-[HFPowerStateControlItem initWithValueSource:characteristicTypes:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(objc_opt_class());
  v7 = [(HFPowerStateControlItem *)self auxiliaryTargetValueTuples];
  v8 = [(HFControlItem *)self displayResults];
  v9 = [v6 initWithValueSource:v5 auxiliaryTargetValueTuples:v7 displayResults:v8];

  [v9 copyLatestResultsFromItem:self];
  return v9;
}

- (id)writePrimaryState:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(HFPrimaryStateControlItem *)self writeValue:v4];

  return v5;
}

- (id)readValueAndPopulateStandardResults
{
  v5.receiver = self;
  v5.super_class = HFPowerStateControlItem;
  v2 = [(HFControlItem *)&v5 readValueAndPopulateStandardResults];
  v3 = [v2 flatMap:&__block_literal_global_115];

  return v3;
}

id __62__HFPowerStateControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"suspendedState"];
  v4 = [v3 unsignedIntegerValue];

  v5 = [v2 objectForKeyedSubscript:@"value"];
  if (v5)
  {
  }

  else if ([MEMORY[0x277CD1650] hf_isSuspendedStateSupported:v4])
  {
    v6 = [v2 mutableCopy];
    [v6 setObject:&unk_2825234A8 forKeyedSubscript:@"value"];
    v7 = [MEMORY[0x277D2C900] futureWithResult:v6];

    goto LABEL_6;
  }

  v7 = [MEMORY[0x277D2C900] futureWithResult:v2];
LABEL_6:

  return v7;
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
  [v9 beginTransactionWithReason:@"HFPowerStateControlItem-Toggle" readPolicy:v8 logger:0];

  v10 = [(HFPowerStateControlItem *)self readValueAndPopulateStandardResults];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__HFPowerStateControlItem_toggleValue__block_invoke;
  v14[3] = &unk_277DF3FD0;
  v14[4] = self;
  v11 = [v10 flatMap:v14];

  v12 = [(HFControlItem *)self valueSource];
  [v12 commitTransactionWithReason:@"HFPowerStateControlItem-Toggle"];

  return v11;
}

id __38__HFPowerStateControlItem_toggleValue__block_invoke(uint64_t a1, void *a2)
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
  v3 = a3;
  v4 = [objc_opt_class() _powerStateTargetValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HFPowerStateControlItem_valueForCharacteristicValues___block_invoke;
  v9[3] = &unk_277DF3FF8;
  v10 = v3;
  v5 = v3;
  if ([v4 na_any:v9])
  {
    v6 = &unk_2825234D8;
  }

  else
  {
    v6 = &unk_2825234A8;
  }

  v7 = v6;

  return v6;
}

BOOL __56__HFPowerStateControlItem_valueForCharacteristicValues___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = *(a1 + 32);
  v5 = [v3 characteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 primaryStateForTargetValue:v8];
  return v9 == 2;
}

- (id)characteristicValuesForValue:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 integerValue];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [(HFPowerStateControlItem *)self allTargetValues];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 targetValueForPrimaryState:v9];
        if (v16)
        {
          v17 = [v15 characteristicType];
          [v5 setObject:v16 forKeyedSubscript:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v5];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)supportsItemRepresentingServices:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HFPowerStateControlItem_supportsItemRepresentingServices___block_invoke;
  v4[3] = &unk_277DF4020;
  v4[4] = self;
  return [a3 na_any:v4];
}

uint64_t __60__HFPowerStateControlItem_supportsItemRepresentingServices___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _powerStateTargetValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) characteristicType];
        v10 = [v3 hf_characteristicOfType:v9];

        if (v10)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)_powerStateTargetValues
{
  if (qword_27C84C440 != -1)
  {
    dispatch_once(&qword_27C84C440, &__block_literal_global_133);
  }

  v3 = qword_27C84C448;

  return v3;
}

void __50__HFPowerStateControlItem__powerStateTargetValues__block_invoke_2()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = [HFPowerStateTargetValueTuple alloc];
  v6 = [(HFPowerStateTargetValueTuple *)v1 initWithCharacteristicType:*MEMORY[0x277CCF9F0] onTargetValue:&unk_2825234F0 offTargetValue:&unk_282523508];
  v2 = [HFPowerStateTargetValueTuple alloc];
  v3 = [(HFPowerStateTargetValueTuple *)v2 initWithCharacteristicType:*MEMORY[0x277CCF748] onTargetValue:&unk_2825234F0 offTargetValue:&unk_282523508];
  v4 = [v0 setWithObjects:{v6, v3, 0}];
  v5 = qword_27C84C448;
  qword_27C84C448 = v4;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__HFPowerStateControlItem_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __38__HFPowerStateControlItem_na_identity__block_invoke(v4);

  return v2;
}

id __38__HFPowerStateControlItem_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HFPowerStateControlItem_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_27C84C450 != -1)
  {
    dispatch_once(&qword_27C84C450, block);
  }

  v1 = qword_27C84C458;

  return v1;
}

void __38__HFPowerStateControlItem_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__HFPowerStateControlItem_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __38__HFPowerStateControlItem_na_identity__block_invoke_3(v3);
  v2 = qword_27C84C458;
  qword_27C84C458 = v1;
}

id __38__HFPowerStateControlItem_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D2C908];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___HFPowerStateControlItem;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_144 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_147];
  v5 = [v3 build];

  return v5;
}

uint64_t __38__HFPowerStateControlItem_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  v9 = [v6 computeHashFromContents];
  return v9;
}

@end