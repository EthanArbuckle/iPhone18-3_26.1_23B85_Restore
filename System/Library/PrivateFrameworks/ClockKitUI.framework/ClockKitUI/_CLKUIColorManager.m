@interface _CLKUIColorManager
- (void)_updateFilterColor;
- (void)setColor:(id)a3;
@end

@implementation _CLKUIColorManager

- (void)setColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    [(_CLKUIColorManager *)self _updateFilterColor];
  }
}

- (void)_updateFilterColor
{
  layer = self->_layer;
  v3 = [(UIColor *)self->_color CGColor];

  [(CALayer *)layer setContentsMultiplyColor:v3];
}

@end