@interface HKQuantityFixedAxisScalingRule
+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4;
+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4 minimumValue:(id)a5 maximumValue:(id)a6;
+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4 minimumValue:(id)a5 maximumValue:(id)a6 noDataAxisBounds:(id)a7;
+ (id)ruleWithDefaultAxisBounds:(id)a3 noDataAxisBounds:(id)a4;
- (BOOL)isCompatibleWithQuantityType:(id)a3;
- (id)_numberRangeFromQuantityRangeForUnit:(id)a3 quantityRange:(id)a4;
- (id)description;
- (id)noDataStartingRange;
- (void)_convertQuantityRanges;
- (void)setUnit:(id)a3;
@end

@implementation HKQuantityFixedAxisScalingRule

+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() ruleWithDefaultAxisBounds:v6 axisBoundsOverrides:v5 minimumValue:0 maximumValue:0 noDataAxisBounds:0];

  return v7;
}

+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4 minimumValue:(id)a5 maximumValue:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() ruleWithDefaultAxisBounds:v12 axisBoundsOverrides:v11 minimumValue:v10 maximumValue:v9 noDataAxisBounds:0];

  return v13;
}

+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4 minimumValue:(id)a5 maximumValue:(id)a6 noDataAxisBounds:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(objc_opt_class());
  v17 = v16[6];
  v16[6] = v11;
  v18 = v11;

  v19 = v16[7];
  v16[7] = v12;
  v20 = v12;

  v21 = v16[8];
  v16[8] = v13;
  v22 = v13;

  v23 = v16[9];
  v16[9] = v14;

  [v16 setNoDataAxisBounds:v15];

  return v16;
}

+ (id)ruleWithDefaultAxisBounds:(id)a3 noDataAxisBounds:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[6];
  v7[6] = v5;

  [v7 setNoDataAxisBounds:v6];

  return v7;
}

- (void)setUnit:(id)a3
{
  objc_storeStrong(&self->_unit, a3);

  [(HKQuantityFixedAxisScalingRule *)self _convertQuantityRanges];
}

- (BOOL)isCompatibleWithQuantityType:(id)a3
{
  v4 = a3;
  v5 = [(HKValueRange *)self->_defaultQuantityBounds minValue];
  v6 = [v5 _unit];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(HKValueRange *)self->_defaultQuantityBounds maxValue];
    v8 = [v9 _unit];
  }

  if ([v4 isCompatibleWithUnit:v8])
  {
    v10 = 1;
  }

  else
  {
    v11 = [v4 _unitForChangeInCanonicalUnit];
    v10 = [v11 _isCompatibleWithUnit:v8];
  }

  return v10;
}

- (void)_convertQuantityRanges
{
  v3 = [(HKQuantityFixedAxisScalingRule *)self _numberRangeFromQuantityRangeForUnit:self->_unit quantityRange:self->_defaultQuantityBounds];
  defaultAxisBounds = self->super._defaultAxisBounds;
  self->super._defaultAxisBounds = v3;

  minimumQuantity = self->_minimumQuantity;
  if (minimumQuantity)
  {
    v6 = MEMORY[0x1E696AD98];
    [(HKQuantity *)minimumQuantity doubleValueForUnit:self->_unit];
    v7 = [v6 numberWithDouble:?];
    minimumValue = self->super._minimumValue;
    self->super._minimumValue = v7;
  }

  maximumQuantity = self->_maximumQuantity;
  if (maximumQuantity)
  {
    v10 = MEMORY[0x1E696AD98];
    [(HKQuantity *)maximumQuantity doubleValueForUnit:self->_unit];
    v11 = [v10 numberWithDouble:?];
    maximumValue = self->super._maximumValue;
    self->super._maximumValue = v11;
  }

  if (self->_quantityBoundsOverrides)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    quantityBoundsOverrides = self->_quantityBoundsOverrides;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__HKQuantityFixedAxisScalingRule__convertQuantityRanges__block_invoke;
    v19[3] = &unk_1E81BAA98;
    v19[4] = self;
    v15 = v13;
    v20 = v15;
    [(NSDictionary *)quantityBoundsOverrides enumerateKeysAndObjectsUsingBlock:v19];
    axisBoundsOverrides = self->super._axisBoundsOverrides;
    self->super._axisBoundsOverrides = v15;
    v17 = v15;
  }

  else
  {
    v18 = self->super._axisBoundsOverrides;
    self->super._axisBoundsOverrides = 0;
  }
}

void __56__HKQuantityFixedAxisScalingRule__convertQuantityRanges__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = v5[11];
  v7 = a2;
  v8 = [v5 _numberRangeFromQuantityRangeForUnit:v6 quantityRange:a3];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

- (id)_numberRangeFromQuantityRangeForUnit:(id)a3 quantityRange:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = [v5 minValue];
    v8 = [v5 maxValue];

    v9 = MEMORY[0x1E696AD98];
    [v7 doubleValueForUnit:v6];
    v10 = [v9 numberWithDouble:?];
    v11 = MEMORY[0x1E696AD98];
    [v8 doubleValueForUnit:v6];
    v13 = v12;

    v14 = [v11 numberWithDouble:v13];
    v15 = [HKValueRange valueRangeWithMinValue:v10 maxValue:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)noDataStartingRange
{
  noDataAxisBounds = self->_noDataAxisBounds;
  if (noDataAxisBounds)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(HKValueRange *)noDataAxisBounds minValue];
    [v5 doubleValueForUnit:self->_unit];
    v6 = [v4 numberWithDouble:?];

    v7 = MEMORY[0x1E696AD98];
    v8 = [(HKValueRange *)self->_noDataAxisBounds maxValue];
    [v8 doubleValueForUnit:self->_unit];
    v9 = [v7 numberWithDouble:?];

    v10 = [HKValueRange valueRangeWithMinValue:v6 maxValue:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %@ (%@ -> %@) Overrides: %@, No Data: %@>", v5, self->_defaultQuantityBounds, self->_minimumQuantity, self->_maximumQuantity, self->_quantityBoundsOverrides, self->_noDataAxisBounds];

  return v6;
}

@end