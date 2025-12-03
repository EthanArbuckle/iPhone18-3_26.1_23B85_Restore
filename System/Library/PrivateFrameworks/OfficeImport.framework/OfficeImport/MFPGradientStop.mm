@interface MFPGradientStop
- (MFPGradientStop)initWithColor:(id)color position:(float)position;
@end

@implementation MFPGradientStop

- (MFPGradientStop)initWithColor:(id)color position:(float)position
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = MFPGradientStop;
  v8 = [(MFPGradientStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mColor, color);
    v9->mPosition = position;
  }

  return v9;
}

@end