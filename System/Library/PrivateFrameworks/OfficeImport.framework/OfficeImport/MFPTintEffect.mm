@interface MFPTintEffect
- (MFPTintEffect)initWithHue:(int)hue amount:(int)amount;
@end

@implementation MFPTintEffect

- (MFPTintEffect)initWithHue:(int)hue amount:(int)amount
{
  v7.receiver = self;
  v7.super_class = MFPTintEffect;
  result = [(MFPTintEffect *)&v7 init];
  if (result)
  {
    result->mHue = hue;
    result->mAmount = amount;
  }

  return result;
}

@end