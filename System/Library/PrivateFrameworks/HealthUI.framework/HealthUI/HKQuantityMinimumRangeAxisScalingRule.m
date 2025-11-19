@interface HKQuantityMinimumRangeAxisScalingRule
+ (id)ruleWithDefaultYAxisRange:(id)a3 anchorValue:(id)a4;
+ (id)ruleWithDefaultYAxisRange:(id)a3 axisRangeOverrides:(id)a4;
+ (id)ruleWithDefaultYAxisRange:(id)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6;
+ (id)ruleWithDefaultYAxisRange:(id)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6 noDataAxisBounds:(id)a7;
- (BOOL)isCompatibleWithQuantityType:(id)a3;
- (id)description;
- (id)noDataStartingRange;
- (void)_convertQuantities;
- (void)setUnit:(id)a3;
@end

@implementation HKQuantityMinimumRangeAxisScalingRule

+ (id)ruleWithDefaultYAxisRange:(id)a3 axisRangeOverrides:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() ruleWithDefaultYAxisRange:v6 minimumValue:0 maximumValue:0 axisRangeOverrides:v5 noDataAxisBounds:0];

  return v7;
}

+ (id)ruleWithDefaultYAxisRange:(id)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() ruleWithDefaultYAxisRange:v12 minimumValue:v11 maximumValue:v10 axisRangeOverrides:v9 noDataAxisBounds:0];

  return v13;
}

+ (id)ruleWithDefaultYAxisRange:(id)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6 noDataAxisBounds:(id)a7
{
  v25 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v16 + 5, a3);
  objc_storeStrong(v16 + 9, a6);
  objc_storeStrong(v16 + 6, a4);
  objc_storeStrong(v16 + 7, a5);
  if (v12)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [v12 _unit];
    [v12 doubleValueForUnit:v18];
    v19 = [v17 numberWithDouble:?];

    if (v13)
    {
LABEL_3:
      v20 = MEMORY[0x1E696AD98];
      v21 = [v13 _unit];
      [v13 doubleValueForUnit:v21];
      v22 = [v20 numberWithDouble:?];

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
LABEL_6:
  v23 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v22];
  [v16 setAxisBounds:v23];

  [v16 setNoDataAxisBounds:v15];

  return v16;
}

+ (id)ruleWithDefaultYAxisRange:(id)a3 anchorValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[5];
  v7[5] = v5;
  v9 = v5;

  v10 = v7[8];
  v7[8] = v6;

  [v7 setAxisBounds:0];

  return v7;
}

- (void)setUnit:(id)a3
{
  objc_storeStrong(&self->_unit, a3);

  [(HKQuantityMinimumRangeAxisScalingRule *)self _convertQuantities];
}

- (BOOL)isCompatibleWithQuantityType:(id)a3
{
  defaultYAxisRangeQuantity = self->_defaultYAxisRangeQuantity;
  v4 = a3;
  v5 = [(HKQuantity *)defaultYAxisRangeQuantity _unit];
  v6 = [v4 isCompatibleWithUnit:v5];

  return v6;
}

- (void)_convertQuantities
{
  [(HKQuantity *)self->_defaultYAxisRangeQuantity doubleValueForUnit:self->_unit];
  v4 = v3;
  v5 = MEMORY[0x1E696C348];
  v6 = [(HKQuantity *)self->_defaultYAxisRangeQuantity _unit];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
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
    v32 = self;
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
  v6 = [v3 stringWithFormat:@"<%@ %@ (%@ -> %@) Overrides: %@, No Data: %@>", v5, self->_defaultYAxisRangeQuantity, self->_minimumQuantity, self->_maximumQuantity, self->_axisRangeQuantityOverrides, self->_noDataAxisBounds];

  return v6;
}

@end