@interface _MPUFallAnimatorDynamicItem
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation _MPUFallAnimatorDynamicItem

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_transform.tx = *&a3->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

@end