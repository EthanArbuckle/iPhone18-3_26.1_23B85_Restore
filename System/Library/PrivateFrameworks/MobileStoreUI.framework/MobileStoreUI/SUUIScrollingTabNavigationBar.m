@interface SUUIScrollingTabNavigationBar
- (UIOffset)positionOffset;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPositionOffset:(UIOffset)a3;
@end

@implementation SUUIScrollingTabNavigationBar

- (void)setCenter:(CGPoint)a3
{
  v3 = a3.x + self->_positionOffset.horizontal;
  v4 = a3.y + self->_positionOffset.vertical;
  v5.receiver = self;
  v5.super_class = SUUIScrollingTabNavigationBar;
  [(SUUIScrollingTabNavigationBar *)&v5 setCenter:v3, v4];
}

- (void)setFrame:(CGRect)a3
{
  v3 = a3.origin.x + self->_positionOffset.horizontal;
  v4 = a3.origin.y + self->_positionOffset.vertical;
  v5.receiver = self;
  v5.super_class = SUUIScrollingTabNavigationBar;
  [(SUUIScrollingTabNavigationBar *)&v5 setFrame:v3, v4, a3.size.width, a3.size.height];
}

- (UIOffset)positionOffset
{
  horizontal = self->_positionOffset.horizontal;
  vertical = self->_positionOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)setPositionOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  p_positionOffset = &self->_positionOffset;
  if (self->_positionOffset.horizontal != a3.horizontal || self->_positionOffset.vertical != a3.vertical)
  {
    [(SUUIScrollingTabNavigationBar *)self center];
    v8 = p_positionOffset->vertical;
    v10 = v9 - p_positionOffset->horizontal;
    p_positionOffset->horizontal = horizontal;
    p_positionOffset->vertical = vertical;
    v12.receiver = self;
    v12.super_class = SUUIScrollingTabNavigationBar;
    [(SUUIScrollingTabNavigationBar *)&v12 setCenter:horizontal + v10, vertical + v11 - v8];
  }
}

@end