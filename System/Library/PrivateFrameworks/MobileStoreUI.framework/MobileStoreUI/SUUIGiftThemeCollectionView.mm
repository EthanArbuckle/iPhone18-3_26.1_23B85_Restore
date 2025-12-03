@interface SUUIGiftThemeCollectionView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_visibleBounds;
- (UIEdgeInsets)visibleBoundsInsets;
@end

@implementation SUUIGiftThemeCollectionView

- (CGRect)_visibleBounds
{
  v13.receiver = self;
  v13.super_class = SUUIGiftThemeCollectionView;
  [(SUUIGiftThemeCollectionView *)&v13 _visibleBounds];
  top = self->_visibleBoundsInsets.top;
  left = self->_visibleBoundsInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_visibleBoundsInsets.right);
  v12 = v11 - (top + self->_visibleBoundsInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  superview = [(SUUIGiftThemeCollectionView *)self superview];
  [(SUUIGiftThemeCollectionView *)self convertPoint:superview toView:x, y];
  v9 = v8;
  v11 = v10;

  superview2 = [(SUUIGiftThemeCollectionView *)self superview];
  [superview2 bounds];
  v14.x = v9;
  v14.y = v11;
  LOBYTE(superview) = CGRectContainsPoint(v15, v14);

  return superview;
}

- (UIEdgeInsets)visibleBoundsInsets
{
  top = self->_visibleBoundsInsets.top;
  left = self->_visibleBoundsInsets.left;
  bottom = self->_visibleBoundsInsets.bottom;
  right = self->_visibleBoundsInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end