@interface SUUIScrollingTabNavigationBar
- (UIOffset)positionOffset;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setPositionOffset:(UIOffset)offset;
@end

@implementation SUUIScrollingTabNavigationBar

- (void)setCenter:(CGPoint)center
{
  v3 = center.x + self->_positionOffset.horizontal;
  v4 = center.y + self->_positionOffset.vertical;
  v5.receiver = self;
  v5.super_class = SUUIScrollingTabNavigationBar;
  [(SUUIScrollingTabNavigationBar *)&v5 setCenter:v3, v4];
}

- (void)setFrame:(CGRect)frame
{
  v3 = frame.origin.x + self->_positionOffset.horizontal;
  v4 = frame.origin.y + self->_positionOffset.vertical;
  v5.receiver = self;
  v5.super_class = SUUIScrollingTabNavigationBar;
  [(SUUIScrollingTabNavigationBar *)&v5 setFrame:v3, v4, frame.size.width, frame.size.height];
}

- (UIOffset)positionOffset
{
  horizontal = self->_positionOffset.horizontal;
  vertical = self->_positionOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)setPositionOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  p_positionOffset = &self->_positionOffset;
  if (self->_positionOffset.horizontal != offset.horizontal || self->_positionOffset.vertical != offset.vertical)
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