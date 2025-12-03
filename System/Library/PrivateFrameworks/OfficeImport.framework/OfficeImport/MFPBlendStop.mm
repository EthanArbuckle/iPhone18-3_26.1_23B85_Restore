@interface MFPBlendStop
- (MFPBlendStop)initWithFactor:(float)factor position:(float)position;
@end

@implementation MFPBlendStop

- (MFPBlendStop)initWithFactor:(float)factor position:(float)position
{
  v7.receiver = self;
  v7.super_class = MFPBlendStop;
  result = [(MFPBlendStop *)&v7 init];
  if (result)
  {
    result->mFactor = factor;
    result->mPosition = position;
  }

  return result;
}

@end