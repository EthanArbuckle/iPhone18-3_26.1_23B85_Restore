@interface MFPTintEffect
- (MFPTintEffect)initWithHue:(int)a3 amount:(int)a4;
@end

@implementation MFPTintEffect

- (MFPTintEffect)initWithHue:(int)a3 amount:(int)a4
{
  v7.receiver = self;
  v7.super_class = MFPTintEffect;
  result = [(MFPTintEffect *)&v7 init];
  if (result)
  {
    result->mHue = a3;
    result->mAmount = a4;
  }

  return result;
}

@end