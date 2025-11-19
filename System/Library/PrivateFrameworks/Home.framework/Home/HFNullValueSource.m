@interface HFNullValueSource
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (id)readValuesForCharacteristicTypes:(id)a3 inServices:(id)a4;
- (id)readValuesForCharacteristics:(id)a3;
- (unint64_t)hash;
@end

@implementation HFNullValueSource

- (id)readValuesForCharacteristics:(id)a3
{
  v3 = [a3 na_map:&__block_literal_global_109];
  v4 = [[HFCharacteristicBatchReadResponse alloc] initWithReadResponses:v3 contextProvider:0];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

HFCharacteristicReadResponse *__50__HFNullValueSource_readValuesForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HFCharacteristicReadResponse alloc];
  v4 = [MEMORY[0x277CBEB98] setWithObject:@"ExplicitlyDisallowed"];
  v5 = [(HFCharacteristicReadResponse *)v3 initWithCharacteristic:v2 readTraits:v4 value:0 error:0];

  return v5;
}

- (id)readValuesForCharacteristicTypes:(id)a3 inServices:(id)a4
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HFNullValueSource_readValuesForCharacteristicTypes_inServices___block_invoke;
  v12[3] = &unk_277DF7AF8;
  v13 = v5;
  v6 = v5;
  v7 = [a4 na_map:v12];
  v8 = [v7 na_setByFlattening];

  v9 = [[HFCharacteristicBatchReadResponse alloc] initWithReadResponses:v8 contextProvider:0];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

id __65__HFNullValueSource_readValuesForCharacteristicTypes_inServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 characteristics];
  v5 = [v3 setWithArray:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HFNullValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_2;
  v9[3] = &unk_277DF6218;
  v10 = *(a1 + 32);
  v6 = [v5 na_filter:v9];
  v7 = [v6 na_map:&__block_literal_global_6_4];

  return v7;
}

uint64_t __65__HFNullValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

HFCharacteristicReadResponse *__65__HFNullValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HFCharacteristicReadResponse alloc];
  v4 = [MEMORY[0x277CBEB98] setWithObject:@"ExplicitlyDisallowed"];
  v5 = [(HFCharacteristicReadResponse *)v3 initWithCharacteristic:v2 readTraits:v4 value:0 error:0];

  return v5;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_260 != -1)
  {
    dispatch_once(&_MergedGlobals_260, &__block_literal_global_13_4);
  }

  v3 = qword_280E03048;

  return v3;
}

void __32__HFNullValueSource_na_identity__block_invoke_2()
{
  v2 = [MEMORY[0x277D2C908] builder];
  v0 = [v2 build];
  v1 = qword_280E03048;
  qword_280E03048 = v0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end