@interface HFRelativePercentValue
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFRelativePercentValue)initWithCharacteristicReadResponse:(id)a3;
- (HFRelativePercentValue)initWithValue:(id)a3 forCharacteristic:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HFRelativePercentValue

- (HFRelativePercentValue)initWithCharacteristicReadResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 valueWithExpectedClass:objc_opt_class()];
  v6 = [v4 characteristic];

  v7 = [(HFRelativePercentValue *)self initWithValue:v5 forCharacteristic:v6];
  return v7;
}

- (HFRelativePercentValue)initWithValue:(id)a3 forCharacteristic:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v25.receiver = self;
    v25.super_class = HFRelativePercentValue;
    v9 = [(HFRelativePercentValue *)&v25 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_value, a3);
      v11 = [v8 metadata];
      v12 = [v11 minimumValue];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &unk_282525570;
      }

      objc_storeStrong(p_isa + 2, v14);

      v15 = [v8 metadata];
      v16 = [v15 maximumValue];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = &unk_282525580;
      }

      objc_storeStrong(p_isa + 3, v18);

      v19 = [v8 metadata];
      v20 = [v19 stepValue];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = &unk_282525590;
      }

      objc_storeStrong(p_isa + 4, v22);
    }

    self = p_isa;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HFRelativePercentValue *)self value];
  [v4 setValue:v5];

  v6 = [(HFRelativePercentValue *)self minimumValue];
  [v4 setMinimumValue:v6];

  v7 = [(HFRelativePercentValue *)self maximumValue];
  [v4 setMaximumValue:v7];

  v8 = [(HFRelativePercentValue *)self stepValue];
  [v4 setStepValue:v8];

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
  v4 = [(HFRelativePercentValue *)self value];
  v5 = [v3 appendObject:v4 withName:@"value"];

  v6 = [(HFRelativePercentValue *)self minimumValue];
  v7 = [v3 appendObject:v6 withName:@"min" skipIfNil:1];

  v8 = [(HFRelativePercentValue *)self maximumValue];
  v9 = [v3 appendObject:v8 withName:@"max" skipIfNil:1];

  v10 = [(HFRelativePercentValue *)self stepValue];
  v11 = [v3 appendObject:v10 withName:@"step" skipIfNil:1];

  v12 = [v3 build];

  return v12;
}

@end