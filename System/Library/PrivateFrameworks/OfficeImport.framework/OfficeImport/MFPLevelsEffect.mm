@interface MFPLevelsEffect
- (MFPLevelsEffect)initWithHighlight:(int)highlight midtone:(int)midtone shadow:(int)shadow;
@end

@implementation MFPLevelsEffect

- (MFPLevelsEffect)initWithHighlight:(int)highlight midtone:(int)midtone shadow:(int)shadow
{
  v9.receiver = self;
  v9.super_class = MFPLevelsEffect;
  result = [(MFPLevelsEffect *)&v9 init];
  if (result)
  {
    result->mHighlight = highlight;
    result->mMidtone = midtone;
    result->mShadow = shadow;
  }

  return result;
}

@end