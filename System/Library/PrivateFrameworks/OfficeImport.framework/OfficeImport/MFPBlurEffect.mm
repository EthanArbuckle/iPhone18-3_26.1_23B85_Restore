@interface MFPBlurEffect
- (MFPBlurEffect)initWithRadius:(float)radius expandEdge:(BOOL)edge;
@end

@implementation MFPBlurEffect

- (MFPBlurEffect)initWithRadius:(float)radius expandEdge:(BOOL)edge
{
  v7.receiver = self;
  v7.super_class = MFPBlurEffect;
  result = [(MFPBlurEffect *)&v7 init];
  if (result)
  {
    result->mRadius = radius;
    result->mExpandEdge = edge;
  }

  return result;
}

@end