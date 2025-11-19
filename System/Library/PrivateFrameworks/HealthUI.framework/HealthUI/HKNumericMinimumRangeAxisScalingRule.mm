@interface HKNumericMinimumRangeAxisScalingRule
+ (id)ruleWithDefaultYAxisRange:(double)a3 axisRangeOverrides:(id)a4;
+ (id)ruleWithDefaultYAxisRange:(double)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6;
+ (id)ruleWithDefaultYAxisRange:(double)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6 noDataAxisBounds:(id)a7;
- (id)description;
@end

@implementation HKNumericMinimumRangeAxisScalingRule

+ (id)ruleWithDefaultYAxisRange:(double)a3 axisRangeOverrides:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() ruleWithDefaultYAxisRange:0 minimumValue:0 maximumValue:v5 axisRangeOverrides:0 noDataAxisBounds:a3];

  return v6;
}

+ (id)ruleWithDefaultYAxisRange:(double)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [objc_opt_class() ruleWithDefaultYAxisRange:v11 minimumValue:v10 maximumValue:v9 axisRangeOverrides:0 noDataAxisBounds:a3];

  return v12;
}

+ (id)ruleWithDefaultYAxisRange:(double)a3 minimumValue:(id)a4 maximumValue:(id)a5 axisRangeOverrides:(id)a6 noDataAxisBounds:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(objc_opt_class());
  v15[1] = a3;
  v16 = *(v15 + 2);
  *(v15 + 2) = v13;
  v17 = v13;

  v18 = *(v15 + 5);
  *(v15 + 5) = v11;
  v19 = v11;

  v20 = *(v15 + 6);
  *(v15 + 6) = v12;
  v21 = v12;

  [v15 setNoDataAxisBounds:v14];
  v22 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v21];

  [v15 setAxisBounds:v22];

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %lf (%@ -> %@) Overrides: %@, No Data: %@>", v5, *&self->super._defaultYAxisRange, self->_minimumValue, self->_maximumValue, self->super._axisRangeOverrides, self->_noDataAxisBounds];

  return v6;
}

@end