@interface HKAdjustableTapTargetButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIEdgeInsets)hitTargetInsets;
@end

@implementation HKAdjustableTapTargetButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(HKAdjustableTapTargetButton *)self bounds];
  if (self->_insetSet)
  {
    top = self->_hitTargetInsets.top;
    left = self->_hitTargetInsets.left;
    v7 = v7 + left;
    v8 = v8 + top;
    v9 = v9 - (left + self->_hitTargetInsets.right);
    v10 = v10 - (top + self->_hitTargetInsets.bottom);
  }

  v13 = x;
  v14 = y;

  return CGRectContainsPoint(*&v7, *&v13);
}

- (UIEdgeInsets)hitTargetInsets
{
  top = self->_hitTargetInsets.top;
  left = self->_hitTargetInsets.left;
  bottom = self->_hitTargetInsets.bottom;
  right = self->_hitTargetInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end