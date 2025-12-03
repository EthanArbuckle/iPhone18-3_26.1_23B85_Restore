@interface HKNumericFixedAxisScalingRule
+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides;
+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides noDataAxisBounds:(id)axisBounds;
- (id)description;
@end

@implementation HKNumericFixedAxisScalingRule

+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides
{
  overridesCopy = overrides;
  boundsCopy = bounds;
  v7 = [objc_opt_class() ruleWithDefaultAxisBounds:boundsCopy axisBoundsOverrides:overridesCopy noDataAxisBounds:0];

  return v7;
}

+ (id)ruleWithDefaultAxisBounds:(id)bounds axisBoundsOverrides:(id)overrides noDataAxisBounds:(id)axisBounds
{
  boundsCopy = bounds;
  overridesCopy = overrides;
  axisBoundsCopy = axisBounds;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = v10[1];
  v10[1] = boundsCopy;
  v12 = boundsCopy;

  v13 = v10[2];
  v10[2] = overridesCopy;

  [v10 setNoDataAxisBounds:axisBoundsCopy];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %@ (%@ -> %@) Overrides: %@, No Data: %@>", v5, self->super._defaultAxisBounds, self->super._minimumValue, self->super._maximumValue, self->super._axisBoundsOverrides, self->_noDataAxisBounds];

  return v6;
}

@end