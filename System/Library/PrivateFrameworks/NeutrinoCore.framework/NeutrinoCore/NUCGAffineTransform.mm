@interface NUCGAffineTransform
- (NUCGAffineTransform)initWithCGAffineTransform:(CGAffineTransform *)transform;
@end

@implementation NUCGAffineTransform

- (NUCGAffineTransform)initWithCGAffineTransform:(CGAffineTransform *)transform
{
  v7.receiver = self;
  v7.super_class = NUCGAffineTransform;
  result = [(NUCGAffineTransform *)&v7 init];
  if (result)
  {
    v5 = *&transform->a;
    v6 = *&transform->c;
    *&result->_value.tx = *&transform->tx;
    *&result->_value.c = v6;
    *&result->_value.a = v5;
  }

  return result;
}

@end