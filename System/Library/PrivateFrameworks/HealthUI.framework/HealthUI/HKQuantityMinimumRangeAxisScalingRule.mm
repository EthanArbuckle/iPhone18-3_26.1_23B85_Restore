@interface HKQuantityMinimumRangeAxisScalingRule
+ (id)ruleWithDefaultYAxisRange:(id)range anchorValue:(id)value;
+ (id)ruleWithDefaultYAxisRange:(id)range axisRangeOverrides:(id)overrides;
+ (id)ruleWithDefaultYAxisRange:(id)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides;
+ (id)ruleWithDefaultYAxisRange:(id)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides noDataAxisBounds:(id)bounds;
- (BOOL)isCompatibleWithQuantityType:(id)type;
- (id)description;
- (id)noDataStartingRange;
- (void)_convertQuantities;
- (void)setUnit:(id)unit;
@end

@implementation HKQuantityMinimumRangeAxisScalingRule

+ (id)ruleWithDefaultYAxisRange:(id)range axisRangeOverrides:(id)overrides
{
  overridesCopy = overrides;
  rangeCopy = range;
  v7 = [objc_opt_class() ruleWithDefaultYAxisRange:rangeCopy minimumValue:0 maximumValue:0 axisRangeOverrides:overridesCopy noDataAxisBounds:0];

  return v7;
}

+ (id)ruleWithDefaultYAxisRange:(id)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides
{
  overridesCopy = overrides;
  maximumValueCopy = maximumValue;
  valueCopy = value;
  rangeCopy = range;
  v13 = [objc_opt_class() ruleWithDefaultYAxisRange:rangeCopy minimumValue:valueCopy maximumValue:maximumValueCopy axisRangeOverrides:overridesCopy noDataAxisBounds:0];

  return v13;
}

+ (id)ruleWithDefaultYAxisRange:(id)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides noDataAxisBounds:(id)bounds
{
  rangeCopy = range;
  valueCopy = value;
  maximumValueCopy = maximumValue;
  overridesCopy = overrides;
  boundsCopy = bounds;
  v16 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v16 + 5, range);
  objc_storeStrong(v16 + 9, overrides);
  objc_storeStrong(v16 + 6, value);
  objc_storeStrong(v16 + 7, maximumValue);
  if (valueCopy)
  {
    v17 = MEMORY[0x1E696AD98];
    _unit = [valueCopy _unit];
    [valueCopy doubleValueForUnit:_unit];
    v19 = [v17 numberWithDouble:?];

    if (maximumValueCopy)
    {
LABEL_3:
      v20 = MEMORY[0x1E696AD98];
      _unit2 = [maximumValueCopy _unit];
      [maximumValueCopy doubleValueForUnit:_unit2];
      v22 = [v20 numberWithDouble:?];

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (maximumValueCopy)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
LABEL_6:
  v23 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v22];
  [v16 setAxisBounds:v23];

  [v16 setNoDataAxisBounds:boundsCopy];

  return v16;
}

+ (id)ruleWithDefaultYAxisRange:(id)range anchorValue:(id)value
{
  rangeCopy = range;
  valueCopy = value;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[5];
  v7[5] = rangeCopy;
  v9 = rangeCopy;

  v10 = v7[8];
  v7[8] = valueCopy;

  [v7 setAxisBounds:0];

  return v7;
}

- (void)setUnit:(id)unit
{
  objc_storeStrong(&self->_unit, unit);

  [(HKQuantityMinimumRangeAxisScalingRule *)self _convertQuantities];
}

- (BOOL)isCompatibleWithQuantityType:(id)type
{
  defaultYAxisRangeQuantity = self->_defaultYAxisRangeQuantity;
  typeCopy = type;
  _unit = [(HKQuantity *)defaultYAxisRangeQuantity _unit];
  v6 = [typeCopy isCompatibleWithUnit:_unit];

  return v6;
}

- (void)_convertQuantities
{
  [(HKQuantity *)self->_defaultYAxisRangeQuantity doubleValueForUnit:self->_unit];
  v4 = v3;
  v5 = MEMORY[0x1E696C348];
  _unit = [(HKQuantity *)self->_defaultYAxisRangeQuantity _unit];
  v7 = [v5 quantityWithUnit:_unit doubleValue:0.0];
  [v7 doubleValueForUnit:self->_unit];
  v9 = v8;

  self->super._defaultYAxisRange = v4 - v9;
  if (self->_axisRangeQuantityOverrides)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    axisRangeQuantityOverrides = self->_axisRangeQuantityOverrides;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __59__HKQuantityMinimumRangeAxisScalingRule__convertQuantities__block_invoke;
    v30 = &unk_1E81BAAC0;
    v12 = v10;
    v31 = v12;
    selfCopy = self;
    [(NSDictionary *)axisRangeQuantityOverrides enumerateKeysAndObjectsUsingBlock:&v27];
    axisRangeOverrides = self->super._axisRangeOverrides;
    self->super._axisRangeOverrides = v12;
    v14 = v12;
  }

  else
  {
    v15 = self->super._axisRangeOverrides;
    self->super._axisRangeOverrides = 0;
  }

  minimumQuantity = self->_minimumQuantity;
  if (minimumQuantity)
  {
    v17 = MEMORY[0x1E696AD98];
    [(HKQuantity *)minimumQuantity doubleValueForUnit:self->_unit];
    v18 = [v17 numberWithDouble:?];
  }

  else
  {
    v18 = 0;
  }

  maximumQuantity = self->_maximumQuantity;
  if (maximumQuantity)
  {
    v20 = MEMORY[0x1E696AD98];
    [(HKQuantity *)maximumQuantity doubleValueForUnit:self->_unit];
    v21 = [v20 numberWithDouble:?];
  }

  else
  {
    v21 = 0;
  }

  v22 = [HKValueRange valueRangeWithMinValue:v18 maxValue:v21, v27, v28, v29, v30];
  [(HKAbstractMinimumRangeScalingRule *)self setAxisBounds:v22];

  anchorQuantity = self->_anchorQuantity;
  if (anchorQuantity)
  {
    v24 = MEMORY[0x1E696AD98];
    [(HKQuantity *)anchorQuantity doubleValueForUnit:self->_unit];
    v25 = [v24 numberWithDouble:?];
    anchorValue = self->super._anchorValue;
    self->super._anchorValue = v25;
  }
}

void __59__HKQuantityMinimumRangeAxisScalingRule__convertQuantities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(*(a1 + 40) + 88);
  v7 = a2;
  [a3 doubleValueForUnit:v6];
  v8 = [v5 numberWithDouble:?];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
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
  v6 = [v3 stringWithFormat:@"<%@ %@ (%@ -> %@) Overrides: %@, No Data: %@>", v5, self->_defaultYAxisRangeQuantity, self->_minimumQuantity, self->_maximumQuantity, self->_axisRangeQuantityOverrides, self->_noDataAxisBounds];

  return v6;
}

@end