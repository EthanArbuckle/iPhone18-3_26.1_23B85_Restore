@interface HFNumberRange
+ (HFNumberRange)rangeWithFloatRange:(id)range;
+ (HFNumberRange)rangeWithMaxValue:(id)value minValue:(id)minValue;
+ (NAIdentity)na_identity;
+ (id)valueWithValue:(id)value;
- ($F24F406B2B787EFB06265DBA3D28CBD5)floatRangeValue;
- (BOOL)isEqual:(id)equal;
- (HFNumberRange)init;
- (HFNumberRange)initWithType:(unint64_t)type;
- (NSNumber)maxValue;
- (NSNumber)midValue;
- (NSNumber)minValue;
- (NSNumber)spanValue;
- (NSString)description;
- (id)intersectRange:(id)range;
- (id)mapValue:(id)value fromRange:(id)range;
- (id)percentageValueForValue:(id)value;
- (id)unionRange:(id)range;
- (unint64_t)hash;
@end

@implementation HFNumberRange

+ (HFNumberRange)rangeWithMaxValue:(id)value minValue:(id)minValue
{
  minValueCopy = minValue;
  valueCopy = value;
  v7 = [[HFNumberRange alloc] initWithType:1];
  [(HFNumberRange *)v7 setMaxValue:valueCopy];

  [(HFNumberRange *)v7 setMinValue:minValueCopy];

  return v7;
}

+ (id)valueWithValue:(id)value
{
  valueCopy = value;
  v4 = [[HFNumberRange alloc] initWithType:0];
  [(HFNumberRange *)v4 setMidValue:valueCopy];

  return v4;
}

+ (HFNumberRange)rangeWithFloatRange:(id)range
{
  var0 = range.var0;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:range.var1];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:var0];
  v6 = [HFNumberRange rangeWithMaxValue:v4 minValue:v5];

  return v6;
}

- (HFNumberRange)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithType_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFNumberRange.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HFNumberRange init]", v5}];

  return 0;
}

- (HFNumberRange)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = HFNumberRange;
  result = [(HFNumberRange *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (NSNumber)maxValue
{
  if ([(HFNumberRange *)self type]== 1)
  {
    midValue = self->_maxValue;
  }

  else
  {
    midValue = [(HFNumberRange *)self midValue];
  }

  return midValue;
}

- (NSNumber)midValue
{
  if ([(HFNumberRange *)self type]== 1)
  {
    v3 = MEMORY[0x277CCABB0];
    maxValue = [(HFNumberRange *)self maxValue];
    [maxValue doubleValue];
    v6 = v5;
    minValue = [(HFNumberRange *)self minValue];
    [minValue doubleValue];
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
    midValue = self->_minValue;
  }

  else
  {
    midValue = [(HFNumberRange *)self midValue];
  }

  return midValue;
}

- (NSNumber)spanValue
{
  v3 = MEMORY[0x277CCABB0];
  maxValue = [(HFNumberRange *)self maxValue];
  [maxValue doubleValue];
  v6 = v5;
  minValue = [(HFNumberRange *)self minValue];
  [minValue doubleValue];
  v9 = [v3 numberWithDouble:v6 - v8];

  return v9;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)floatRangeValue
{
  minValue = [(HFNumberRange *)self minValue];
  [minValue doubleValue];
  v5 = v4;
  maxValue = [(HFNumberRange *)self maxValue];
  [maxValue doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)percentageValueForValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    minValue = [(HFNumberRange *)self minValue];
    [minValue doubleValue];
    v8 = v7;

    maxValue = [(HFNumberRange *)self maxValue];
    [maxValue doubleValue];
    v11 = v10;

    v12 = MEMORY[0x277CCABB0];
    [valueCopy doubleValue];
    v14 = v13;

    v15 = [v12 numberWithDouble:(v14 - v8) / (v11 - v8)];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)mapValue:(id)value fromRange:(id)range
{
  if (value)
  {
    rangeCopy = range;
    valueCopy = value;
    minValue = [(HFNumberRange *)self minValue];
    [minValue doubleValue];
    v11 = v10;

    maxValue = [(HFNumberRange *)self maxValue];
    [maxValue doubleValue];
    v14 = v13;

    v15 = [rangeCopy percentageValueForValue:valueCopy];

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

- (id)unionRange:(id)range
{
  rangeCopy = range;
  maxValue = [(HFNumberRange *)self maxValue];
  maxValue2 = [rangeCopy maxValue];
  v7 = [maxValue na_largerNumber:maxValue2];
  minValue = [(HFNumberRange *)self minValue];
  minValue2 = [rangeCopy minValue];

  v10 = [minValue na_smallerNumber:minValue2];
  v11 = [HFNumberRange rangeWithMaxValue:v7 minValue:v10];

  return v11;
}

- (id)intersectRange:(id)range
{
  rangeCopy = range;
  maxValue = [(HFNumberRange *)self maxValue];
  maxValue2 = [rangeCopy maxValue];
  v7 = [maxValue na_smallerNumber:maxValue2];
  minValue = [(HFNumberRange *)self minValue];
  minValue2 = [rangeCopy minValue];

  v10 = [minValue na_largerNumber:minValue2];
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
  type = [(HFNumberRange *)self type];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (type == 1)
  {
    minValue = [(HFNumberRange *)self minValue];
    maxValue = [(HFNumberRange *)self maxValue];
    v8 = [v4 stringWithFormat:@"<%@:%p (%@-%@)>", v5, self, minValue, maxValue];
  }

  else
  {
    minValue = [(HFNumberRange *)self midValue];
    v8 = [v4 stringWithFormat:@"<%@:%p (%@)>", v5, self, minValue];
  }

  return v8;
}

@end