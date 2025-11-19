@interface HFNumberRange
+ (HFNumberRange)rangeWithFloatRange:(id)a3;
+ (HFNumberRange)rangeWithMaxValue:(id)a3 minValue:(id)a4;
+ (NAIdentity)na_identity;
+ (id)valueWithValue:(id)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)floatRangeValue;
- (BOOL)isEqual:(id)a3;
- (HFNumberRange)init;
- (HFNumberRange)initWithType:(unint64_t)a3;
- (NSNumber)maxValue;
- (NSNumber)midValue;
- (NSNumber)minValue;
- (NSNumber)spanValue;
- (NSString)description;
- (id)intersectRange:(id)a3;
- (id)mapValue:(id)a3 fromRange:(id)a4;
- (id)percentageValueForValue:(id)a3;
- (id)unionRange:(id)a3;
- (unint64_t)hash;
@end

@implementation HFNumberRange

+ (HFNumberRange)rangeWithMaxValue:(id)a3 minValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HFNumberRange alloc] initWithType:1];
  [(HFNumberRange *)v7 setMaxValue:v6];

  [(HFNumberRange *)v7 setMinValue:v5];

  return v7;
}

+ (id)valueWithValue:(id)a3
{
  v3 = a3;
  v4 = [[HFNumberRange alloc] initWithType:0];
  [(HFNumberRange *)v4 setMidValue:v3];

  return v4;
}

+ (HFNumberRange)rangeWithFloatRange:(id)a3
{
  var0 = a3.var0;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3.var1];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:var0];
  v6 = [HFNumberRange rangeWithMaxValue:v4 minValue:v5];

  return v6;
}

- (HFNumberRange)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithType_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFNumberRange.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HFNumberRange init]", v5}];

  return 0;
}

- (HFNumberRange)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HFNumberRange;
  result = [(HFNumberRange *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (NSNumber)maxValue
{
  if ([(HFNumberRange *)self type]== 1)
  {
    v3 = self->_maxValue;
  }

  else
  {
    v3 = [(HFNumberRange *)self midValue];
  }

  return v3;
}

- (NSNumber)midValue
{
  if ([(HFNumberRange *)self type]== 1)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [(HFNumberRange *)self maxValue];
    [v4 doubleValue];
    v6 = v5;
    v7 = [(HFNumberRange *)self minValue];
    [v7 doubleValue];
    v9 = [v3 numberWithDouble:(v6 + v8) * 0.5];
  }

  else
  {
    v9 = self->_midValue;
  }

  return v9;
}

- (NSNumber)minValue
{
  if ([(HFNumberRange *)self type]== 1)
  {
    v3 = self->_minValue;
  }

  else
  {
    v3 = [(HFNumberRange *)self midValue];
  }

  return v3;
}

- (NSNumber)spanValue
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(HFNumberRange *)self maxValue];
  [v4 doubleValue];
  v6 = v5;
  v7 = [(HFNumberRange *)self minValue];
  [v7 doubleValue];
  v9 = [v3 numberWithDouble:v6 - v8];

  return v9;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)floatRangeValue
{
  v3 = [(HFNumberRange *)self minValue];
  [v3 doubleValue];
  v5 = v4;
  v6 = [(HFNumberRange *)self maxValue];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)percentageValueForValue:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(HFNumberRange *)self minValue];
    [v6 doubleValue];
    v8 = v7;

    v9 = [(HFNumberRange *)self maxValue];
    [v9 doubleValue];
    v11 = v10;

    v12 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v14 = v13;

    v15 = [v12 numberWithDouble:(v14 - v8) / (v11 - v8)];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)mapValue:(id)a3 fromRange:(id)a4
{
  if (a3)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(HFNumberRange *)self minValue];
    [v9 doubleValue];
    v11 = v10;

    v12 = [(HFNumberRange *)self maxValue];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v7 percentageValueForValue:v8];

    [v15 doubleValue];
    v17 = v16;

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v11 + v17 * (v14 - v11)];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)unionRange:(id)a3
{
  v4 = a3;
  v5 = [(HFNumberRange *)self maxValue];
  v6 = [v4 maxValue];
  v7 = [v5 na_largerNumber:v6];
  v8 = [(HFNumberRange *)self minValue];
  v9 = [v4 minValue];

  v10 = [v8 na_smallerNumber:v9];
  v11 = [HFNumberRange rangeWithMaxValue:v7 minValue:v10];

  return v11;
}

- (id)intersectRange:(id)a3
{
  v4 = a3;
  v5 = [(HFNumberRange *)self maxValue];
  v6 = [v4 maxValue];
  v7 = [v5 na_smallerNumber:v6];
  v8 = [(HFNumberRange *)self minValue];
  v9 = [v4 minValue];

  v10 = [v8 na_largerNumber:v9];
  v11 = [HFNumberRange rangeWithMaxValue:v7 minValue:v10];

  return v11;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_246 != -1)
  {
    dispatch_once(&_MergedGlobals_246, &__block_literal_global_11_2);
  }

  v3 = qword_280E02EE8;

  return v3;
}

void __28__HFNumberRange_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_18_1];
  v2 = [v0 appendCharacteristic:&__block_literal_global_20_4];
  v3 = [v0 appendCharacteristic:&__block_literal_global_22_2];
  v4 = [v0 appendCharacteristic:&__block_literal_global_24_1];
  v5 = [v0 build];

  v6 = qword_280E02EE8;
  qword_280E02EE8 = v5;
}

uint64_t __28__HFNumberRange_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
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
  v3 = [(HFNumberRange *)self type];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (v3 == 1)
  {
    v6 = [(HFNumberRange *)self minValue];
    v7 = [(HFNumberRange *)self maxValue];
    v8 = [v4 stringWithFormat:@"<%@:%p (%@-%@)>", v5, self, v6, v7];
  }

  else
  {
    v6 = [(HFNumberRange *)self midValue];
    v8 = [v4 stringWithFormat:@"<%@:%p (%@)>", v5, self, v6];
  }

  return v8;
}

@end