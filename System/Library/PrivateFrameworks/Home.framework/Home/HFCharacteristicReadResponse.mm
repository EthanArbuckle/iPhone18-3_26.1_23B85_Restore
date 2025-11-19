@interface HFCharacteristicReadResponse
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFCharacteristicReadResponse)initWithCharacteristic:(id)a3 readTraits:(id)a4 value:(id)a5 error:(id)a6;
- (HFCharacteristicReadResponse)initWithHomeKitResponse:(id)a3 value:(id)a4 readTraits:(id)a5;
- (NSString)description;
- (id)valueWithExpectedClass:(Class)a3;
- (unint64_t)hash;
@end

@implementation HFCharacteristicReadResponse

- (HFCharacteristicReadResponse)initWithCharacteristic:(id)a3 readTraits:(id)a4 value:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HFCharacteristicReadResponse;
  v15 = [(HFCharacteristicReadResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_characteristic, a3);
    objc_storeStrong(&v16->_readTraits, a4);
    objc_storeStrong(&v16->_value, a5);
    objc_storeStrong(&v16->_error, a6);
  }

  return v16;
}

- (HFCharacteristicReadResponse)initWithHomeKitResponse:(id)a3 value:(id)a4 readTraits:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 request];
  v12 = [v11 characteristic];
  v13 = [v10 error];

  v14 = [(HFCharacteristicReadResponse *)self initWithCharacteristic:v12 readTraits:v8 value:v9 error:v13];
  return v14;
}

- (id)valueWithExpectedClass:(Class)a3
{
  v5 = [(HFCharacteristicReadResponse *)self value];
  if (v5)
  {
    v6 = v5;
    v7 = [(HFCharacteristicReadResponse *)self value];
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v9 = [(HFCharacteristicReadResponse *)self value];
      v10 = [(HFCharacteristicReadResponse *)self value];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromClass(a3);
      NSLog(&cfstr_ReadValueIsOfC.isa, v9, v12, v13);
    }
  }

  v14 = [(HFCharacteristicReadResponse *)self value];
  if (objc_opt_isKindOfClass())
  {
    v15 = [(HFCharacteristicReadResponse *)self value];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_293 != -1)
  {
    dispatch_once(&_MergedGlobals_293, &__block_literal_global_4_12);
  }

  v3 = qword_280E038A0;

  return v3;
}

void __43__HFCharacteristicReadResponse_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_10_9];
  v2 = [v0 appendCharacteristic:&__block_literal_global_12_6];
  v3 = [v0 appendCharacteristic:&__block_literal_global_14_9];
  v4 = [v0 appendCharacteristic:&__block_literal_global_16_6];
  v5 = [v0 build];

  v6 = qword_280E038A0;
  qword_280E038A0 = v5;
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

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCharacteristicReadResponse *)self characteristic];
  v5 = [v4 hf_prettyDescription];
  v6 = [v3 appendObject:v5 withName:@"characteristic"];

  v7 = [(HFCharacteristicReadResponse *)self readTraits];
  if ([v7 count])
  {
    v8 = [(HFCharacteristicReadResponse *)self readTraits];
    v9 = [v8 allObjects];
    v10 = [v9 sortedArrayUsingSelector:sel_compare_];
    v11 = [v10 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = @"(none)";
  }

  v12 = [v3 appendObject:v11 withName:@"readTraits"];
  v13 = [(HFCharacteristicReadResponse *)self value];
  v14 = [v3 appendObject:v13 withName:@"value" skipIfNil:1];

  v15 = [(HFCharacteristicReadResponse *)self error];
  v16 = [v3 appendObject:v15 withName:@"error" skipIfNil:1];

  v17 = [v3 build];

  return v17;
}

@end