@interface NTKAltitudeColorCurve
- (double)rgbfColorForAltitude:(float)altitude;
- (id)colorForAltitude:(id)altitude;
@end

@implementation NTKAltitudeColorCurve

- (id)colorForAltitude:(id)altitude
{
  var1 = altitude.var1;
  [(NTKCubicColorCurve *)self colorForFraction:*&altitude.var0];
  objc_claimAutoreleasedReturnValue();
  *&v5 = var1;
  [(NTKCubicColorCurve *)self colorForFraction:v5];
  objc_claimAutoreleasedReturnValue();
  CLKUIInterpolateBetweenColors();
}

- (double)rgbfColorForAltitude:(float)altitude
{
  [self rgbfColorForFraction:a2];
  v9 = v6;
  [self rgbfColorForFraction:altitude];
  *&result = vmlaq_n_f32(v9, vsubq_f32(v7, v9), a4).u64[0];
  return result;
}

@end