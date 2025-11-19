@interface MFPBlurEffect
- (MFPBlurEffect)initWithRadius:(float)a3 expandEdge:(BOOL)a4;
@end

@implementation MFPBlurEffect

- (MFPBlurEffect)initWithRadius:(float)a3 expandEdge:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = MFPBlurEffect;
  result = [(MFPBlurEffect *)&v7 init];
  if (result)
  {
    result->mRadius = a3;
    result->mExpandEdge = a4;
  }

  return result;
}

@end