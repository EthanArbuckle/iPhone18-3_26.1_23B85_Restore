@interface HFNumberValueConstraints
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFNumberRange)validRange;
- (HFNumberValueConstraints)init;
- (HFNumberValueConstraints)initWithMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5;
- (HFNumberValueConstraints)initWithValidRange:(id)a3 stepValue:(id)a4;
- (NSString)description;
- (id)_normalizeRangeValue:(id)a3 withinRange:(id)a4;
- (id)_normalizeStepValue:(id)a3 withinRange:(id)a4;
- (id)boundedValueForValue:(id)a3;
- (id)normalizedRangeForRange:(id)a3;
- (id)normalizedValueForValue:(id)a3;
- (id)percentageConstraints;
- (id)percentageConstraintsWithinRange:(id)a3;
- (id)roundedValueForValue:(id)a3;
- (unint64_t)hash;
@end

@implementation HFNumberValueConstraints

- (HFNumberValueConstraints)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMinValue_maxValue_stepValue_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFNumberValueConstraints.m" lineNumber:17 description:{@"%s is unavailable; use %@ instead", "-[HFNumberValueConstraints init]", v5}];

  return 0;
}

- (HFNumberValueConstraints)initWithValidRange:(id)a3 stepValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 minValue];
  v9 = [v7 maxValue];

  v10 = [(HFNumberValueConstraints *)self initWithMinValue:v8 maxValue:v9 stepValue:v6];
  return v10;
}

- (HFNumberValueConstraints)initWithMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = HFNumberValueConstraints;
  v11 = [(HFNumberValueConstraints *)&v25 init];
  if (v11)
  {
    objc_opt_class();
    v12 = v8;
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
    v16 = v9;
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
    v20 = v10;
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
  v3 = [(HFNumberValueConstraints *)self minValue];
  if (v3 && (v4 = v3, [(HFNumberValueConstraints *)self maxValue], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(HFNumberValueConstraints *)self maxValue];
    v7 = [(HFNumberValueConstraints *)self minValue];
    v8 = [HFNumberRange rangeWithMaxValue:v6 minValue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)boundedValueForValue:(id)a3
{
  v4 = a3;
  v5 = [(HFNumberValueConstraints *)self minValue];

  v6 = v4;
  if (v5)
  {
    v7 = [(HFNumberValueConstraints *)self minValue];
    v6 = [v4 na_largerNumber:v7];
  }

  v8 = [(HFNumberValueConstraints *)self maxValue];

  if (v8)
  {
    v9 = [(HFNumberValueConstraints *)self maxValue];
    v10 = [v6 na_smallerNumber:v9];

    v6 = v10;
  }

  return v6;
}

- (id)roundedValueForValue:(id)a3
{
  v4 = a3;
  v5 = [(HFNumberValueConstraints *)self stepValue];

  if (v5)
  {
    v6 = [(HFNumberValueConstraints *)self stepValue];
    v7 = [(HFNumberValueConstraints *)self minValue];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &unk_282524FA8;
    }

    v10 = [v4 na_valueRoundedToNearestStepValue:v6 relativeToBaseValue:v9];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (id)normalizedValueForValue:(id)a3
{
  v4 = [(HFNumberValueConstraints *)self roundedValueForValue:a3];
  v5 = [(HFNumberValueConstraints *)self boundedValueForValue:v4];

  return v5;
}

- (id)normalizedRangeForRange:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_6;
    }

    v7 = [v5 maxValue];
    v8 = [(HFNumberValueConstraints *)self normalizedValueForValue:v7];
    v9 = [v5 minValue];
    v10 = [(HFNumberValueConstraints *)self normalizedValueForValue:v9];
    v3 = [HFNumberRange rangeWithMaxValue:v8 minValue:v10];
  }

  else
  {
    v7 = [v5 midValue];
    v8 = [(HFNumberValueConstraints *)self normalizedValueForValue:v7];
    v3 = [HFNumberRange valueWithValue:v8];
  }

LABEL_6:

  return v3;
}

- (id)percentageConstraints
{
  v3 = [(HFNumberValueConstraints *)self validRange];

  if (v3)
  {
    v4 = [(HFNumberValueConstraints *)self validRange];
    v5 = [(HFNumberValueConstraints *)self percentageConstraintsWithinRange:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)percentageConstraintsWithinRange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [HFNumberValueConstraints alloc];
    v6 = [(HFNumberValueConstraints *)self minValue];
    v7 = [(HFNumberValueConstraints *)self _normalizeRangeValue:v6 withinRange:v4];
    v8 = [(HFNumberValueConstraints *)self maxValue];
    v9 = [(HFNumberValueConstraints *)self _normalizeRangeValue:v8 withinRange:v4];
    v10 = [(HFNumberValueConstraints *)self stepValue];
    v11 = [(HFNumberValueConstraints *)self _normalizeStepValue:v10 withinRange:v4];
    v12 = [(HFNumberValueConstraints *)v5 initWithMinValue:v7 maxValue:v9 stepValue:v11];
  }

  else
  {
    NSLog(&cfstr_CannotCreatePe.isa);
    v12 = 0;
  }

  return v12;
}

- (id)_normalizeStepValue:(id)a3 withinRange:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && a4)
  {
    v7 = [a4 spanValue];
    v8 = [HFNumberRange rangeWithMaxValue:v7 minValue:&unk_282524FA8];

    v9 = [v8 percentageValueForValue:v6];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (id)_normalizeRangeValue:(id)a3 withinRange:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && a4)
  {
    v7 = [a4 percentageValueForValue:v5];
  }

  else
  {
    v7 = v5;
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
  v4 = [(HFNumberValueConstraints *)self minValue];
  v5 = [v3 appendObject:v4 withName:@"min" skipIfNil:1];

  v6 = [(HFNumberValueConstraints *)self maxValue];
  v7 = [v3 appendObject:v6 withName:@"max" skipIfNil:1];

  v8 = [(HFNumberValueConstraints *)self stepValue];
  v9 = [v3 appendObject:v8 withName:@"step" skipIfNil:1];

  v10 = [v3 build];

  return v10;
}

@end