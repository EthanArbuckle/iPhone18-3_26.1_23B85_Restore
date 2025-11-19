@interface NTKAltitudeColorCurve
- (double)rgbfColorForAltitude:(float)a3;
- (id)colorForAltitude:(id)a3;
@end

@implementation NTKAltitudeColorCurve

- (id)colorForAltitude:(id)a3
{
  var1 = a3.var1;
  [(NTKCubicColorCurve *)self colorForFraction:*&a3.var0];
  objc_claimAutoreleasedReturnValue();
  *&v5 = var1;
  [(NTKCubicColorCurve *)self colorForFraction:v5];
  objc_claimAutoreleasedReturnValue();
  CLKUIInterpolateBetweenColors();
}

- (double)rgbfColorForAltitude:(float)a3
{
  [a1 rgbfColorForFraction:a2];
  v9 = v6;
  [a1 rgbfColorForFraction:a3];
  *&result = vmlaq_n_f32(v9, vsubq_f32(v7, v9), a4).u64[0];
  return result;
}

@end