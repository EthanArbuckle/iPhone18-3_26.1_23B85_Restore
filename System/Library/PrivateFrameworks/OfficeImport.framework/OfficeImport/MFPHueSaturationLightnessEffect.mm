@interface MFPHueSaturationLightnessEffect
- (MFPHueSaturationLightnessEffect)initWithHueChange:(int)change saturationChange:(int)saturationChange lightnessChange:(int)lightnessChange;
@end

@implementation MFPHueSaturationLightnessEffect

- (MFPHueSaturationLightnessEffect)initWithHueChange:(int)change saturationChange:(int)saturationChange lightnessChange:(int)lightnessChange
{
  v9.receiver = self;
  v9.super_class = MFPHueSaturationLightnessEffect;
  result = [(MFPHueSaturationLightnessEffect *)&v9 init];
  if (result)
  {
    result->mHueChange = change;
    result->mSaturationChange = saturationChange;
    result->mLightnessChange = lightnessChange;
  }

  return result;
}

@end