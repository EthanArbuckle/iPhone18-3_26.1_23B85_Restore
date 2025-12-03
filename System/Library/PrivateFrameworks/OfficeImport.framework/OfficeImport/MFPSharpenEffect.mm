@interface MFPSharpenEffect
- (MFPSharpenEffect)initWithAmount:(float)amount radius:(float)radius;
@end

@implementation MFPSharpenEffect

- (MFPSharpenEffect)initWithAmount:(float)amount radius:(float)radius
{
  v7.receiver = self;
  v7.super_class = MFPSharpenEffect;
  result = [(MFPSharpenEffect *)&v7 init];
  if (result)
  {
    result->mAmount = amount;
    result->mRadius = radius;
  }

  return result;
}

@end