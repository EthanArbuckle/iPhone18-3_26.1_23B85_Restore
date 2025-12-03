@interface UIColor(NTKFaceColorScheme)
- (id)ntk_colorByBoostingSaturation:()NTKFaceColorScheme lightness:;
- (id)ntk_colorWithMinLightness:()NTKFaceColorScheme;
- (id)ntk_colorWithSaturationDelta:()NTKFaceColorScheme brightnessDelta:;
@end

@implementation UIColor(NTKFaceColorScheme)

- (id)ntk_colorByBoostingSaturation:()NTKFaceColorScheme lightness:
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [self getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7];
  v3 = [MEMORY[0x277D75348] colorWithHue:v10 saturation:(a2 + 1.0) * v9 brightness:v8 alpha:v7];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5 = NTKInterpolateBetweenColors();

  return v5;
}

- (id)ntk_colorWithSaturationDelta:()NTKFaceColorScheme brightnessDelta:
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [self getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7];
  v5 = [MEMORY[0x277D75348] colorWithHue:v10 saturation:fmin(fmax(v9 + a2 brightness:0.0) alpha:{1.0), fmin(fmax(v8 + a3, 0.0), 1.0), v7}];

  return v5;
}

- (id)ntk_colorWithMinLightness:()NTKFaceColorScheme
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [self getHue:&v9 saturation:&v8 brightness:&v7 alpha:&v6];
  if (v7 >= a2)
  {
    v3 = v7;
  }

  else
  {
    v3 = a2;
  }

  v4 = [MEMORY[0x277D75348] colorWithHue:v9 saturation:v8 brightness:v3 alpha:v6];

  return v4;
}

@end