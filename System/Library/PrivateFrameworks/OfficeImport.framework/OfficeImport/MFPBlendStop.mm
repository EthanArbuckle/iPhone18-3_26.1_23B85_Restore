@interface MFPBlendStop
- (MFPBlendStop)initWithFactor:(float)a3 position:(float)a4;
@end

@implementation MFPBlendStop

- (MFPBlendStop)initWithFactor:(float)a3 position:(float)a4
{
  v7.receiver = self;
  v7.super_class = MFPBlendStop;
  result = [(MFPBlendStop *)&v7 init];
  if (result)
  {
    result->mFactor = a3;
    result->mPosition = a4;
  }

  return result;
}

@end