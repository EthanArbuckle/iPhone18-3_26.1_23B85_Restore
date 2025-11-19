@interface HFCharacteristicStateItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFCharacteristicStateItem)init;
- (HFCharacteristicStateItem)initWithCharacteristicType:(id)a3 valueSource:(id)a4 resultsProvider:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
- (unint64_t)hash;
@end

@implementation HFCharacteristicStateItem

- (HFCharacteristicStateItem)initWithCharacteristicType:(id)a3 valueSource:(id)a4 resultsProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFCharacteristicStateItem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"resultsProvider"}];
  }

  v19.receiver = self;
  v19.super_class = HFCharacteristicStateItem;
  v12 = [(HFCharacteristicStateItem *)&v19 init];
  if (v12)
  {
    v13 = [v9 copy];
    characteristicType = v12->_characteristicType;
    v12->_characteristicType = v13;

    objc_storeStrong(&v12->_valueSource, a4);
    v15 = [v11 copy];
    resultsProvider = v12->_resultsProvider;
    v12->_resultsProvider = v15;
  }

  return v12;
}

- (HFCharacteristicStateItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCharacteristicType_valueSource_resultsProvider_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicStateItem.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HFCharacteristicStateItem init]", v5}];

  return 0;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_2_1 != -1)
  {
    dispatch_once(&_MergedGlobals_2_1, &__block_literal_global_18_7);
  }

  v3 = qword_280E025D8;

  return v3;
}

void __40__HFCharacteristicStateItem_na_identity__block_invoke_2()
{
  v4 = [MEMORY[0x277D2C908] builder];
  v0 = [v4 appendCharacteristic:&__block_literal_global_22_6];
  v1 = [v0 appendCharacteristic:&__block_literal_global_24_3];
  v2 = [v1 build];
  v3 = qword_280E025D8;
  qword_280E025D8 = v2;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HFCharacteristicStateItem *)self characteristicType];
  v6 = [v4 setWithObject:v5];

  v7 = [(HFCharacteristicStateItem *)self valueSource];
  v8 = [v7 readValuesForCharacteristicTypes:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HFCharacteristicStateItem__subclass_updateWithOptions___block_invoke;
  v11[3] = &unk_277DFC700;
  v11[4] = self;
  v9 = [v8 flatMap:v11];

  return v9;
}

id __57__HFCharacteristicStateItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allCharacteristicTypes];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [v3 allCharacteristicTypes];
    NSLog(&cfstr_UnexpectedNumb.isa, [v6 count], v3);
  }

  v7 = [*(a1 + 32) characteristicType];
  v8 = [v3 responseForCharacteristicType:v7];
  v9 = [v8 value];

  v10 = MEMORY[0x277CBEB38];
  v11 = [*(a1 + 32) resultsProvider];
  v12 = (v11)[2](v11, v9);
  v13 = [v10 dictionaryWithDictionary:v12];

  v14 = [*(a1 + 32) valueSource];
  v15 = [*(a1 + 32) characteristicType];
  v16 = [v14 allCharacteristicsForCharacteristicType:v15];
  [v13 setObject:v16 forKeyedSubscript:@"dependentHomeKitObjects"];

  v17 = MEMORY[0x277CBEB98];
  v18 = [*(a1 + 32) characteristicType];
  v19 = [v17 setWithObject:v18];
  [v13 setObject:v19 forKeyedSubscript:@"characteristicTypes"];

  v20 = MEMORY[0x277D2C900];
  v21 = [HFItemUpdateOutcome outcomeWithResults:v13];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

@end