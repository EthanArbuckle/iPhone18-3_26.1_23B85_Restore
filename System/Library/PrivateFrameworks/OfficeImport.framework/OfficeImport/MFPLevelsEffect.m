@interface MFPLevelsEffect
- (MFPLevelsEffect)initWithHighlight:(int)a3 midtone:(int)a4 shadow:(int)a5;
@end

@implementation MFPLevelsEffect

- (MFPLevelsEffect)initWithHighlight:(int)a3 midtone:(int)a4 shadow:(int)a5
{
  v9.receiver = self;
  v9.super_class = MFPLevelsEffect;
  result = [(MFPLevelsEffect *)&v9 init];
  if (result)
  {
    result->mHighlight = a3;
    result->mMidtone = a4;
    result->mShadow = a5;
  }

  return result;
}

@end