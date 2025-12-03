@interface VibrantSeparatorView
- (void)setNonVibrantColor:(id)color;
- (void)setUsesVibrantEffect:(BOOL)effect;
@end

@implementation VibrantSeparatorView

- (void)setNonVibrantColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_nonVibrantColor, color);
  if (!self->_usesVibrantEffect)
  {
    [(VibrantSeparatorView *)self setBackgroundColor:colorCopy];
  }
}

- (void)setUsesVibrantEffect:(BOOL)effect
{
  v3 = !effect;
  if (self->_usesVibrantEffect == v3)
  {
    self->_usesVibrantEffect = effect;
    layer = [(VibrantSeparatorView *)self layer];
    [layer setAllowsGroupOpacity:v3];

    layer2 = [(VibrantSeparatorView *)self layer];
    [layer2 setAllowsGroupBlending:v3];

    if (effect)
    {
      [(VibrantSeparatorView *)self setBackgroundColor:0];
      v8 = objc_alloc_init(MEMORY[0x277D75D18]);
      colorBurn = self->_colorBurn;
      self->_colorBurn = v8;

      [(UIView *)self->_colorBurn setAutoresizingMask:18];
      v10 = self->_colorBurn;
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
      [(UIView *)v10 setBackgroundColor:v11];

      layer3 = [(UIView *)self->_colorBurn layer];
      v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA298]];
      [layer3 setCompositingFilter:v13];

      [(VibrantSeparatorView *)self addSubview:self->_colorBurn];
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      plusD = self->_plusD;
      self->_plusD = v14;

      [(UIView *)self->_plusD setAutoresizingMask:18];
      v16 = self->_plusD;
      v17 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.31 alpha:0.25];
      [(UIView *)v16 setBackgroundColor:v17];

      layer4 = [(UIView *)self->_plusD layer];
      v19 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
      [layer4 setCompositingFilter:v19];

      v20 = self->_plusD;

      [(VibrantSeparatorView *)self addSubview:v20];
    }

    else
    {
      [(VibrantSeparatorView *)self setBackgroundColor:self->_nonVibrantColor];
      [(UIView *)self->_colorBurn removeFromSuperview];
      v21 = self->_colorBurn;
      self->_colorBurn = 0;

      [(UIView *)self->_plusD removeFromSuperview];
      v22 = self->_plusD;
      self->_plusD = 0;
    }
  }
}

@end