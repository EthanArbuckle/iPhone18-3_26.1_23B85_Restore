@interface HKQuantityFixedAxisScalingRule
+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides;
+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides minimumValue:(id)value maximumValue:(id)maximumValue;
+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides minimumValue:(id)value maximumValue:(id)maximumValue noDataAxisBounds:(id)axisBounds;
+ (id)ruleWithDefaultAxisBounds:(id)bounds noDataAxisBounds:(id)axisBounds;
- (BOOL)isCompatibleWithQuantityType:(id)type;
- (id)_numberRangeFromQuantityRangeForUnit:(id)unit quantityRange:(id)range;
- (id)description;
- (id)noDataStartingRange;
- (void)_convertQuantityRanges;
- (void)setUnit:(id)unit;
@end

@implementation HKQuantityFixedAxisScalingRule

+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides
{
  overridesCopy = overrides;
  boundsCopy = bounds;
  v7 = [objc_opt_class() ruleWithDefaultAxisBounds:boundsCopy axisBoundsOverrides:overridesCopy minimumValue:0 maximumValue:0 noDataAxisBounds:0];

  return v7;
}

+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides minimumValue:(id)value maximumValue:(id)maximumValue
{
  maximumValueCopy = maximumValue;
  valueCopy = value;
  overridesCopy = overrides;
  boundsCopy = bounds;
  v13 = [objc_opt_class() ruleWithDefaultAxisBounds:boundsCopy axisBoundsOverrides:overridesCopy minimumValue:valueCopy maximumValue:maximumValueCopy noDataAxisBounds:0];

  return v13;
}

+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides minimumValue:(id)value maximumValue:(id)maximumValue noDataAxisBounds:(id)axisBounds
{
  boundsCopy = bounds;
  overridesCopy = overrides;
  valueCopy = value;
  maximumValueCopy = maximumValue;
  axisBoundsCopy = axisBounds;
  v16 = objc_alloc_init(objc_opt_class());
  v17 = v16[6];
  v16[6] = boundsCopy;
  v18 = boundsCopy;

  v19 = v16[7];
  v16[7] = overridesCopy;
  v20 = overridesCopy;

  v21 = v16[8];
  v16[8] = valueCopy;
  v22 = valueCopy;

  v23 = v16[9];
  v16[9] = maximumValueCopy;

  [v16 setNoDataAxisBounds:axisBoundsCopy];

  return v16;
}

+ (id)ruleWithDefaultAxisBounds:(id)bounds noDataAxisBounds:(id)axisBounds
{
  boundsCopy = bounds;
  axisBoundsCopy = axisBounds;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[6];
  v7[6] = boundsCopy;

  [v7 setNoDataAxisBounds:axisBoundsCopy];

  return v7;
}

- (void)setUnit:(id)unit
{
  objc_storeStrong(&self->_unit, unit);

  [(HKQuantityFixedAxisScalingRule *)self _convertQuantityRanges];
}

- (BOOL)isCompatibleWithQuantityType:(id)type
{
  typeCopy = type;
  minValue = [(HKValueRange *)self->_defaultQuantityBounds minValue];
  _unit = [minValue _unit];
  v7 = _unit;
  if (_unit)
  {
    _unit2 = _unit;
  }

  else
  {
    maxValue = [(HKValueRange *)self->_defaultQuantityBounds maxValue];
    _unit2 = [maxValue _unit];
  }

  if ([typeCopy isCompatibleWithUnit:_unit2])
  {
    v10 = 1;
  }

  else
  {
    _unitForChangeInCanonicalUnit = [typeCopy _unitForChangeInCanonicalUnit];
    v10 = [_unitForChangeInCanonicalUnit _isCompatibleWithUnit:_unit2];
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

- (id)_numberRangeFromQuantityRangeForUnit:(id)unit quantityRange:(id)range
{
  if (range)
  {
    rangeCopy = range;
    unitCopy = unit;
    minValue = [rangeCopy minValue];
    maxValue = [rangeCopy maxValue];

    v9 = MEMORY[0x1E696AD98];
    [minValue doubleValueForUnit:unitCopy];
    v10 = [v9 numberWithDouble:?];
    v11 = MEMORY[0x1E696AD98];
    [maxValue doubleValueForUnit:unitCopy];
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
    minValue = [(HKValueRange *)noDataAxisBounds minValue];
    [minValue doubleValueForUnit:self->_unit];
    v6 = [v4 numberWithDouble:?];

    v7 = MEMORY[0x1E696AD98];
    maxValue = [(HKValueRange *)self->_noDataAxisBounds maxValue];
    [maxValue doubleValueForUnit:self->_unit];
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