@interface HKNumericFixedAxisScalingRule
+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4;
+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4 noDataAxisBounds:(id)a5;
- (id)description;
@end

@implementation HKNumericFixedAxisScalingRule

+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() ruleWithDefaultAxisBounds:v6 axisBoundsOverrides:v5 noDataAxisBounds:0];

  return v7;
}

+ (id)ruleWithDefaultAxisBounds:(id)a3 axisBoundsOverrides:(id)a4 noDataAxisBounds:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = v10[1];
  v10[1] = v7;
  v12 = v7;

  v13 = v10[2];
  v10[2] = v8;

  [v10 setNoDataAxisBounds:v9];

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