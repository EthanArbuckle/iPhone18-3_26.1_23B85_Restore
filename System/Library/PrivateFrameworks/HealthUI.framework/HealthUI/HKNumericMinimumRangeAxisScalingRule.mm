@interface HKNumericMinimumRangeAxisScalingRule
+ (id)ruleWithDefaultYAxisRange:(double)range axisRangeOverrides:(id)overrides;
+ (id)ruleWithDefaultYAxisRange:(double)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides;
+ (id)ruleWithDefaultYAxisRange:(double)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides noDataAxisBounds:(id)bounds;
- (id)description;
@end

@implementation HKNumericMinimumRangeAxisScalingRule

+ (id)ruleWithDefaultYAxisRange:(double)range axisRangeOverrides:(id)overrides
{
  overridesCopy = overrides;
  v6 = [objc_opt_class() ruleWithDefaultYAxisRange:0 minimumValue:0 maximumValue:overridesCopy axisRangeOverrides:0 noDataAxisBounds:range];

  return v6;
}

+ (id)ruleWithDefaultYAxisRange:(double)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides
{
  overridesCopy = overrides;
  maximumValueCopy = maximumValue;
  valueCopy = value;
  v12 = [objc_opt_class() ruleWithDefaultYAxisRange:valueCopy minimumValue:maximumValueCopy maximumValue:overridesCopy axisRangeOverrides:0 noDataAxisBounds:range];

  return v12;
}

+ (id)ruleWithDefaultYAxisRange:(double)range minimumValue:(id)value maximumValue:(id)maximumValue axisRangeOverrides:(id)overrides noDataAxisBounds:(id)bounds
{
  valueCopy = value;
  maximumValueCopy = maximumValue;
  overridesCopy = overrides;
  boundsCopy = bounds;
  v15 = objc_alloc_init(objc_opt_class());
  v15[1] = range;
  v16 = *(v15 + 2);
  *(v15 + 2) = overridesCopy;
  v17 = overridesCopy;

  v18 = *(v15 + 5);
  *(v15 + 5) = valueCopy;
  v19 = valueCopy;

  v20 = *(v15 + 6);
  *(v15 + 6) = maximumValueCopy;
  v21 = maximumValueCopy;

  [v15 setNoDataAxisBounds:boundsCopy];
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