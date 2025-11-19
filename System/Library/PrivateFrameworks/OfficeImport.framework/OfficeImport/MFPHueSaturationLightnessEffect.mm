@interface MFPHueSaturationLightnessEffect
- (MFPHueSaturationLightnessEffect)initWithHueChange:(int)a3 saturationChange:(int)a4 lightnessChange:(int)a5;
@end

@implementation MFPHueSaturationLightnessEffect

- (MFPHueSaturationLightnessEffect)initWithHueChange:(int)a3 saturationChange:(int)a4 lightnessChange:(int)a5
{
  v9.receiver = self;
  v9.super_class = MFPHueSaturationLightnessEffect;
  result = [(MFPHueSaturationLightnessEffect *)&v9 init];
  if (result)
  {
    result->mHueChange = a3;
    result->mSaturationChange = a4;
    result->mLightnessChange = a5;
  }

  return result;
}

@end