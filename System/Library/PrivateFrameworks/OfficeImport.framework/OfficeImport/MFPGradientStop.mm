@interface MFPGradientStop
- (MFPGradientStop)initWithColor:(id)a3 position:(float)a4;
@end

@implementation MFPGradientStop

- (MFPGradientStop)initWithColor:(id)a3 position:(float)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MFPGradientStop;
  v8 = [(MFPGradientStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mColor, a3);
    v9->mPosition = a4;
  }

  return v9;
}

@end