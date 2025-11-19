@interface NUCGAffineTransform
- (NUCGAffineTransform)initWithCGAffineTransform:(CGAffineTransform *)a3;
@end

@implementation NUCGAffineTransform

- (NUCGAffineTransform)initWithCGAffineTransform:(CGAffineTransform *)a3
{
  v7.receiver = self;
  v7.super_class = NUCGAffineTransform;
  result = [(NUCGAffineTransform *)&v7 init];
  if (result)
  {
    v5 = *&a3->a;
    v6 = *&a3->c;
    *&result->_value.tx = *&a3->tx;
    *&result->_value.c = v6;
    *&result->_value.a = v5;
  }

  return result;
}

@end