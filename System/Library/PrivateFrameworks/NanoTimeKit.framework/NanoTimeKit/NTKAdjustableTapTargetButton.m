@interface NTKAdjustableTapTargetButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NTKAdjustableTapTargetButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)touchEdgeInsets;
@end

@implementation NTKAdjustableTapTargetButton

- (NTKAdjustableTapTargetButton)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = NTKAdjustableTapTargetButton;
  result = [(NTKAdjustableTapTargetButton *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    v4 = *(MEMORY[0x277D768C8] + 16);
    *&result->_touchEdgeInsets.top = *MEMORY[0x277D768C8];
    *&result->_touchEdgeInsets.bottom = v4;
  }

  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(NTKAdjustableTapTargetButton *)self bounds];
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchEdgeInsets.right);
  v16 = v15 - (top + self->_touchEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (UIEdgeInsets)touchEdgeInsets
{
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  bottom = self->_touchEdgeInsets.bottom;
  right = self->_touchEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end