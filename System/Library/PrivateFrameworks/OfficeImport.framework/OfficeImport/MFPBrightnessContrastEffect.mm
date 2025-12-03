@interface MFPBrightnessContrastEffect
- (MFPBrightnessContrastEffect)initWithBrightness:(int)brightness contrast:(int)contrast;
@end

@implementation MFPBrightnessContrastEffect

- (MFPBrightnessContrastEffect)initWithBrightness:(int)brightness contrast:(int)contrast
{
  v7.receiver = self;
  v7.super_class = MFPBrightnessContrastEffect;
  result = [(MFPBrightnessContrastEffect *)&v7 init];
  if (result)
  {
    result->mBrightness = brightness;
    result->mContrast = contrast;
  }

  return result;
}

@end