@interface MFPSharpenEffect
- (MFPSharpenEffect)initWithAmount:(float)a3 radius:(float)a4;
@end

@implementation MFPSharpenEffect

- (MFPSharpenEffect)initWithAmount:(float)a3 radius:(float)a4
{
  v7.receiver = self;
  v7.super_class = MFPSharpenEffect;
  result = [(MFPSharpenEffect *)&v7 init];
  if (result)
  {
    result->mAmount = a3;
    result->mRadius = a4;
  }

  return result;
}

@end