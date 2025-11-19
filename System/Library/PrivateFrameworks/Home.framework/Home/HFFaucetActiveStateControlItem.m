@interface HFFaucetActiveStateControlItem
+ (id)na_identity;
- (HFFaucetActiveStateControlItem)initWithValueSource:(id)a3 auxiliaryTargetValueTuples:(id)a4 additionalCharacteristicOptions:(id)a5 displayResults:(id)a6;
- (HFFaucetActiveStateControlItem)initWithValueSource:(id)a3 valveControlMode:(unint64_t)a4 displayResults:(id)a5;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)resultsForBatchReadResponse:(id)a3;
- (id)servicePredicateForCharacteristicType:(id)a3 withUsage:(unint64_t)a4;
@end

@implementation HFFaucetActiveStateControlItem

- (HFFaucetActiveStateControlItem)initWithValueSource:(id)a3 valveControlMode:(unint64_t)a4 displayResults:(id)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [v9 primaryServiceDescriptor];
  v11 = [HFServiceState stateClassForServiceDescriptor:v10];

  v12 = [(objc_class *)v11 requiredCharacteristicTypes];
  v13 = [(objc_class *)v11 optionalCharacteristicTypes];
  v14 = [HFControlItemCharacteristicOptions alloc];
  v22[0] = &unk_282524810;
  v22[1] = &unk_282524828;
  v23[0] = v12;
  v23[1] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v16 = [(HFControlItemCharacteristicOptions *)v14 initWithCharacteristicTypesByUsage:v15];

  v17 = [MEMORY[0x277CBEB98] set];
  v21.receiver = self;
  v21.super_class = HFFaucetActiveStateControlItem;
  v18 = [(HFPowerStateControlItem *)&v21 initWithValueSource:v9 auxiliaryTargetValueTuples:v17 additionalCharacteristicOptions:v16 displayResults:v8];

  if (v18)
  {
    v18->_valveControlMode = a4;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HFFaucetActiveStateControlItem)initWithValueSource:(id)a3 auxiliaryTargetValueTuples:(id)a4 additionalCharacteristicOptions:(id)a5 displayResults:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithValueSource_valveControlMode_displayResults_);
  [v8 handleFailureInMethod:a2 object:self file:@"HFFaucetActiveStateControlItem.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HFFaucetActiveStateControlItem initWithValueSource:auxiliaryTargetValueTuples:additionalCharacteristicOptions:displayResults:]", v9}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(objc_opt_class());
  v7 = [(HFFaucetActiveStateControlItem *)self valveControlMode];
  v8 = [(HFControlItem *)self displayResults];
  v9 = [v6 initWithValueSource:v5 valveControlMode:v7 displayResults:v8];

  [v9 copyLatestResultsFromItem:self];
  return v9;
}

- (id)servicePredicateForCharacteristicType:(id)a3 withUsage:(unint64_t)a4
{
  v6 = a3;
  if ([v6 isEqualToString:*MEMORY[0x277CCF748]])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__HFFaucetActiveStateControlItem_servicePredicateForCharacteristicType_withUsage___block_invoke;
    v13[3] = &unk_277DFDF80;
    v13[4] = self;
    v7 = __82__HFFaucetActiveStateControlItem_servicePredicateForCharacteristicType_withUsage___block_invoke(v13);
    v8 = [HFServiceTreeCompoundPredicate alloc];
    v9 = [HFServiceTreeTypePredicate predicateWithServiceType:*MEMORY[0x277CD0E48]];
    v10 = [(HFServiceTreeCompoundPredicate *)v8 initWithRootServicePredicate:v9 childServicePredicates:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HFFaucetActiveStateControlItem;
    v10 = [(HFControlItem *)&v12 servicePredicateForCharacteristicType:v6 withUsage:a4];
  }

  return v10;
}

id __82__HFFaucetActiveStateControlItem_servicePredicateForCharacteristicType_withUsage___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [HFServiceTreeTypePredicate predicateWithServiceType:*MEMORY[0x277CD0E60]];
  if ([*(a1 + 32) valveControlMode] == 1)
  {
    v8[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v4 = [HFServiceTreeTypePredicate predicateWithServiceType:*MEMORY[0x277CD0F38]];
    v7[0] = v2;
    v7[1] = v4;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)resultsForBatchReadResponse:(id)a3
{
  v13.receiver = self;
  v13.super_class = HFFaucetActiveStateControlItem;
  v4 = a3;
  v5 = [(HFControlItem *)&v13 resultsForBatchReadResponse:v4];
  v6 = [v5 mutableCopy];

  v7 = [(HFControlItem *)self valueSource];
  v8 = [v7 primaryServiceDescriptor];
  v9 = [HFServiceState stateForServiceDescriptor:v8 withBatchReadResponse:v4];

  if (v9)
  {
    v10 = objc_alloc_init(HFServiceStateDescriptionFormatter);
    [(HFServiceStateDescriptionFormatter *)v10 setDescriptionContext:1];
    v11 = [(HFServiceStateDescriptionFormatter *)v10 stringForObjectValue:v9];
    [v6 setObject:v11 forKeyedSubscript:@"description"];
  }

  return v6;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HFFaucetActiveStateControlItem_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __45__HFFaucetActiveStateControlItem_na_identity__block_invoke(v4);

  return v2;
}

id __45__HFFaucetActiveStateControlItem_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HFFaucetActiveStateControlItem_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_MergedGlobals_288 != -1)
  {
    dispatch_once(&_MergedGlobals_288, block);
  }

  v1 = qword_280E03800;

  return v1;
}

void __45__HFFaucetActiveStateControlItem_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__HFFaucetActiveStateControlItem_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __45__HFFaucetActiveStateControlItem_na_identity__block_invoke_3(v3);
  v2 = qword_280E03800;
  qword_280E03800 = v1;
}

id __45__HFFaucetActiveStateControlItem_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D2C908];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___HFFaucetActiveStateControlItem;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_159];
  v5 = [v3 build];

  return v5;
}

uint64_t __45__HFFaucetActiveStateControlItem_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 valveControlMode];

  return [v2 numberWithUnsignedInteger:v3];
}

@end