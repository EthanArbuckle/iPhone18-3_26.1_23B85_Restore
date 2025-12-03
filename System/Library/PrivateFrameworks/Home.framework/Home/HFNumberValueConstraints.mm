@interface HFNumberValueConstraints
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFNumberRange)validRange;
- (HFNumberValueConstraints)init;
- (HFNumberValueConstraints)initWithMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue;
- (HFNumberValueConstraints)initWithValidRange:(id)range stepValue:(id)value;
- (NSString)description;
- (id)_normalizeRangeValue:(id)value withinRange:(id)range;
- (id)_normalizeStepValue:(id)value withinRange:(id)range;
- (id)boundedValueForValue:(id)value;
- (id)normalizedRangeForRange:(id)range;
- (id)normalizedValueForValue:(id)value;
- (id)percentageConstraints;
- (id)percentageConstraintsWithinRange:(id)range;
- (id)roundedValueForValue:(id)value;
- (unint64_t)hash;
@end

@implementation HFNumberValueConstraints

- (HFNumberValueConstraints)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMinValue_maxValue_stepValue_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFNumberValueConstraints.m" lineNumber:17 description:{@"%s is unavailable; use %@ instead", "-[HFNumberValueConstraints init]", v5}];

  return 0;
}

- (HFNumberValueConstraints)initWithValidRange:(id)range stepValue:(id)value
{
  valueCopy = value;
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  maxValue = [rangeCopy maxValue];

  v10 = [(HFNumberValueConstraints *)self initWithMinValue:minValue maxValue:maxValue stepValue:valueCopy];
  return v10;
}

- (HFNumberValueConstraints)initWithMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue
{
  valueCopy = value;
  maxValueCopy = maxValue;
  stepValueCopy = stepValue;
  v25.receiver = self;
  v25.super_class = HFNumberValueConstraints;
  v11 = [(HFNumberValueConstraints *)&v25 init];
  if (v11)
  {
    objc_opt_class();
    v12 = valueCopy;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    minValue = v11->_minValue;
    v11->_minValue = v14;

    objc_opt_class();
    v16 = maxValueCopy;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    maxValue = v11->_maxValue;
    v11->_maxValue = v18;

    objc_opt_class();
    v20 = stepValueCopy;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    stepValue = v11->_stepValue;
    v11->_stepValue = v22;
  }

  return v11;
}

- (HFNumberRange)validRange
{
  minValue = [(HFNumberValueConstraints *)self minValue];
  if (minValue && (v4 = minValue, [(HFNumberValueConstraints *)self maxValue], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    maxValue = [(HFNumberValueConstraints *)self maxValue];
    minValue2 = [(HFNumberValueConstraints *)self minValue];
    v8 = [HFNumberRange rangeWithMaxValue:maxValue minValue:minValue2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)boundedValueForValue:(id)value
{
  valueCopy = value;
  minValue = [(HFNumberValueConstraints *)self minValue];

  v6 = valueCopy;
  if (minValue)
  {
    minValue2 = [(HFNumberValueConstraints *)self minValue];
    v6 = [valueCopy na_largerNumber:minValue2];
  }

  maxValue = [(HFNumberValueConstraints *)self maxValue];

  if (maxValue)
  {
    maxValue2 = [(HFNumberValueConstraints *)self maxValue];
    v10 = [v6 na_smallerNumber:maxValue2];

    v6 = v10;
  }

  return v6;
}

- (id)roundedValueForValue:(id)value
{
  valueCopy = value;
  stepValue = [(HFNumberValueConstraints *)self stepValue];

  if (stepValue)
  {
    stepValue2 = [(HFNumberValueConstraints *)self stepValue];
    minValue = [(HFNumberValueConstraints *)self minValue];
    v8 = minValue;
    if (minValue)
    {
      v9 = minValue;
    }

    else
    {
      v9 = &unk_282524FA8;
    }

    v10 = [valueCopy na_valueRoundedToNearestStepValue:stepValue2 relativeToBaseValue:v9];
  }

  else
  {
    v10 = valueCopy;
  }

  return v10;
}

- (id)normalizedValueForValue:(id)value
{
  v4 = [(HFNumberValueConstraints *)self roundedValueForValue:value];
  v5 = [(HFNumberValueConstraints *)self boundedValueForValue:v4];

  return v5;
}

- (id)normalizedRangeForRange:(id)range
{
  rangeCopy = range;
  type = [rangeCopy type];
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    maxValue = [rangeCopy maxValue];
    v8 = [(HFNumberValueConstraints *)self normalizedValueForValue:maxValue];
    minValue = [rangeCopy minValue];
    v10 = [(HFNumberValueConstraints *)self normalizedValueForValue:minValue];
    v3 = [HFNumberRange rangeWithMaxValue:v8 minValue:v10];
  }

  else
  {
    maxValue = [rangeCopy midValue];
    v8 = [(HFNumberValueConstraints *)self normalizedValueForValue:maxValue];
    v3 = [HFNumberRange valueWithValue:v8];
  }

LABEL_6:

  return v3;
}

- (id)percentageConstraints
{
  validRange = [(HFNumberValueConstraints *)self validRange];

  if (validRange)
  {
    validRange2 = [(HFNumberValueConstraints *)self validRange];
    v5 = [(HFNumberValueConstraints *)self percentageConstraintsWithinRange:validRange2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)percentageConstraintsWithinRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy)
  {
    v5 = [HFNumberValueConstraints alloc];
    minValue = [(HFNumberValueConstraints *)self minValue];
    v7 = [(HFNumberValueConstraints *)self _normalizeRangeValue:minValue withinRange:rangeCopy];
    maxValue = [(HFNumberValueConstraints *)self maxValue];
    v9 = [(HFNumberValueConstraints *)self _normalizeRangeValue:maxValue withinRange:rangeCopy];
    stepValue = [(HFNumberValueConstraints *)self stepValue];
    v11 = [(HFNumberValueConstraints *)self _normalizeStepValue:stepValue withinRange:rangeCopy];
    v12 = [(HFNumberValueConstraints *)v5 initWithMinValue:v7 maxValue:v9 stepValue:v11];
  }

  else
  {
    NSLog(&cfstr_CannotCreatePe.isa);
    v12 = 0;
  }

  return v12;
}

- (id)_normalizeStepValue:(id)value withinRange:(id)range
{
  valueCopy = value;
  v6 = valueCopy;
  if (valueCopy && range)
  {
    spanValue = [range spanValue];
    v8 = [HFNumberRange rangeWithMaxValue:spanValue minValue:&unk_282524FA8];

    v9 = [v8 percentageValueForValue:v6];
  }

  else
  {
    v9 = valueCopy;
  }

  return v9;
}

- (id)_normalizeRangeValue:(id)value withinRange:(id)range
{
  valueCopy = value;
  v6 = valueCopy;
  if (valueCopy && range)
  {
    v7 = [range percentageValueForValue:valueCopy];
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v8;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_312 != -1)
  {
    dispatch_once(&_MergedGlobals_312, &__block_literal_global_16_7);
  }

  v3 = qword_280E03C18;

  return v3;
}

void __39__HFNumberValueConstraints_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_23_5];
  v2 = [v0 appendCharacteristic:&__block_literal_global_25_15];
  v3 = [v0 appendCharacteristic:&__block_literal_global_27_12];
  v4 = [v0 build];

  v5 = qword_280E03C18;
  qword_280E03C18 = v4;
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
  minValue = [(HFNumberValueConstraints *)self minValue];
  v5 = [v3 appendObject:minValue withName:@"min" skipIfNil:1];

  maxValue = [(HFNumberValueConstraints *)self maxValue];
  v7 = [v3 appendObject:maxValue withName:@"max" skipIfNil:1];

  stepValue = [(HFNumberValueConstraints *)self stepValue];
  v9 = [v3 appendObject:stepValue withName:@"step" skipIfNil:1];

  build = [v3 build];

  return build;
}

@end