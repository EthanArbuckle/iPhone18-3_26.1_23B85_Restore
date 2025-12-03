@interface HFRelativePercentValue
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFRelativePercentValue)initWithCharacteristicReadResponse:(id)response;
- (HFRelativePercentValue)initWithValue:(id)value forCharacteristic:(id)characteristic;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HFRelativePercentValue

- (HFRelativePercentValue)initWithCharacteristicReadResponse:(id)response
{
  responseCopy = response;
  v5 = [responseCopy valueWithExpectedClass:objc_opt_class()];
  characteristic = [responseCopy characteristic];

  v7 = [(HFRelativePercentValue *)self initWithValue:v5 forCharacteristic:characteristic];
  return v7;
}

- (HFRelativePercentValue)initWithValue:(id)value forCharacteristic:(id)characteristic
{
  valueCopy = value;
  characteristicCopy = characteristic;
  if (valueCopy)
  {
    v25.receiver = self;
    v25.super_class = HFRelativePercentValue;
    v9 = [(HFRelativePercentValue *)&v25 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_value, value);
      metadata = [characteristicCopy metadata];
      minimumValue = [metadata minimumValue];
      v13 = minimumValue;
      if (minimumValue)
      {
        v14 = minimumValue;
      }

      else
      {
        v14 = &unk_282525570;
      }

      objc_storeStrong(p_isa + 2, v14);

      metadata2 = [characteristicCopy metadata];
      maximumValue = [metadata2 maximumValue];
      v17 = maximumValue;
      if (maximumValue)
      {
        v18 = maximumValue;
      }

      else
      {
        v18 = &unk_282525580;
      }

      objc_storeStrong(p_isa + 3, v18);

      metadata3 = [characteristicCopy metadata];
      stepValue = [metadata3 stepValue];
      v21 = stepValue;
      if (stepValue)
      {
        v22 = stepValue;
      }

      else
      {
        v22 = &unk_282525590;
      }

      objc_storeStrong(p_isa + 4, v22);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  value = [(HFRelativePercentValue *)self value];
  [v4 setValue:value];

  minimumValue = [(HFRelativePercentValue *)self minimumValue];
  [v4 setMinimumValue:minimumValue];

  maximumValue = [(HFRelativePercentValue *)self maximumValue];
  [v4 setMaximumValue:maximumValue];

  stepValue = [(HFRelativePercentValue *)self stepValue];
  [v4 setStepValue:stepValue];

  return v4;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_241 != -1)
  {
    dispatch_once(&_MergedGlobals_241, &__block_literal_global_7_2);
  }

  v3 = qword_280E02E88;

  return v3;
}

void __37__HFRelativePercentValue_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_14_2];
  v2 = [v0 appendCharacteristic:&__block_literal_global_16_1];
  v3 = [v0 appendCharacteristic:&__block_literal_global_18_0];
  v4 = [v0 appendCharacteristic:&__block_literal_global_20_3];
  v5 = [v0 build];

  v6 = qword_280E02E88;
  qword_280E02E88 = v5;
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
  value = [(HFRelativePercentValue *)self value];
  v5 = [v3 appendObject:value withName:@"value"];

  minimumValue = [(HFRelativePercentValue *)self minimumValue];
  v7 = [v3 appendObject:minimumValue withName:@"min" skipIfNil:1];

  maximumValue = [(HFRelativePercentValue *)self maximumValue];
  v9 = [v3 appendObject:maximumValue withName:@"max" skipIfNil:1];

  stepValue = [(HFRelativePercentValue *)self stepValue];
  v11 = [v3 appendObject:stepValue withName:@"step" skipIfNil:1];

  build = [v3 build];

  return build;
}

@end