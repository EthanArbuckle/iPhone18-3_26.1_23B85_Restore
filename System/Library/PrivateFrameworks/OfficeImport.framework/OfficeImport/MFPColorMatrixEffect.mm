@interface MFPColorMatrixEffect
- (MFPColorMatrixEffect)initWithColorMatrix:(float)a3[5][5];
@end

@implementation MFPColorMatrixEffect

- (MFPColorMatrixEffect)initWithColorMatrix:(float)a3[5][5]
{
  v8.receiver = self;
  v8.super_class = MFPColorMatrixEffect;
  result = [(MFPColorMatrixEffect *)&v8 init];
  if (result)
  {
    v5 = 0;
    mColorMatrix = result->mColorMatrix;
    do
    {
      for (i = 0; i != 5; ++i)
      {
        (*mColorMatrix)[i] = (*a3)[i];
      }

      ++v5;
      ++a3;
      ++mColorMatrix;
    }

    while (v5 != 5);
  }

  return result;
}

@end