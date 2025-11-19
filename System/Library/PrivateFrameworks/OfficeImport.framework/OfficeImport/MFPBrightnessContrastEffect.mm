@interface MFPBrightnessContrastEffect
- (MFPBrightnessContrastEffect)initWithBrightness:(int)a3 contrast:(int)a4;
@end

@implementation MFPBrightnessContrastEffect

- (MFPBrightnessContrastEffect)initWithBrightness:(int)a3 contrast:(int)a4
{
  v7.receiver = self;
  v7.super_class = MFPBrightnessContrastEffect;
  result = [(MFPBrightnessContrastEffect *)&v7 init];
  if (result)
  {
    result->mBrightness = a3;
    result->mContrast = a4;
  }

  return result;
}

@end