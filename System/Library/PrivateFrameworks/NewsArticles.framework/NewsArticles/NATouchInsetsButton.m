@interface NATouchInsetsButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIEdgeInsets)touchInsets;
@end

@implementation NATouchInsetsButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(NATouchInsetsButton *)self bounds];
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchInsets.right);
  v16 = v15 - (top + self->_touchInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end