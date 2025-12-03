@interface _CLKUIColorManager
- (void)_updateFilterColor;
- (void)setColor:(id)color;
@end

@implementation _CLKUIColorManager

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(_CLKUIColorManager *)self _updateFilterColor];
  }
}

- (void)_updateFilterColor
{
  layer = self->_layer;
  cGColor = [(UIColor *)self->_color CGColor];

  [(CALayer *)layer setContentsMultiplyColor:cGColor];
}

@end