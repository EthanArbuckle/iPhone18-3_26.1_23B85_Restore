@interface HFCharacteristicReadResponse
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFCharacteristicReadResponse)initWithCharacteristic:(id)characteristic readTraits:(id)traits value:(id)value error:(id)error;
- (HFCharacteristicReadResponse)initWithHomeKitResponse:(id)response value:(id)value readTraits:(id)traits;
- (NSString)description;
- (id)valueWithExpectedClass:(Class)class;
- (unint64_t)hash;
@end

@implementation HFCharacteristicReadResponse

- (HFCharacteristicReadResponse)initWithCharacteristic:(id)characteristic readTraits:(id)traits value:(id)value error:(id)error
{
  characteristicCopy = characteristic;
  traitsCopy = traits;
  valueCopy = value;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = HFCharacteristicReadResponse;
  v15 = [(HFCharacteristicReadResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_characteristic, characteristic);
    objc_storeStrong(&v16->_readTraits, traits);
    objc_storeStrong(&v16->_value, value);
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

- (HFCharacteristicReadResponse)initWithHomeKitResponse:(id)response value:(id)value readTraits:(id)traits
{
  traitsCopy = traits;
  valueCopy = value;
  responseCopy = response;
  request = [responseCopy request];
  characteristic = [request characteristic];
  error = [responseCopy error];

  v14 = [(HFCharacteristicReadResponse *)self initWithCharacteristic:characteristic readTraits:traitsCopy value:valueCopy error:error];
  return v14;
}

- (id)valueWithExpectedClass:(Class)class
{
  value = [(HFCharacteristicReadResponse *)self value];
  if (value)
  {
    v6 = value;
    value2 = [(HFCharacteristicReadResponse *)self value];
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      value3 = [(HFCharacteristicReadResponse *)self value];
      value4 = [(HFCharacteristicReadResponse *)self value];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromClass(class);
      NSLog(&cfstr_ReadValueIsOfC.isa, value3, v12, v13);
    }
  }

  value5 = [(HFCharacteristicReadResponse *)self value];
  if (objc_opt_isKindOfClass())
  {
    value6 = [(HFCharacteristicReadResponse *)self value];
  }

  else
  {
    value6 = 0;
  }

  return value6;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  characteristic = [(HFCharacteristicReadResponse *)self characteristic];
  hf_prettyDescription = [characteristic hf_prettyDescription];
  v6 = [v3 appendObject:hf_prettyDescription withName:@"characteristic"];

  readTraits = [(HFCharacteristicReadResponse *)self readTraits];
  if ([readTraits count])
  {
    readTraits2 = [(HFCharacteristicReadResponse *)self readTraits];
    allObjects = [readTraits2 allObjects];
    v10 = [allObjects sortedArrayUsingSelector:sel_compare_];
    v11 = [v10 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = @"(none)";
  }

  v12 = [v3 appendObject:v11 withName:@"readTraits"];
  value = [(HFCharacteristicReadResponse *)self value];
  v14 = [v3 appendObject:value withName:@"value" skipIfNil:1];

  error = [(HFCharacteristicReadResponse *)self error];
  v16 = [v3 appendObject:error withName:@"error" skipIfNil:1];

  build = [v3 build];

  return build;
}

@end