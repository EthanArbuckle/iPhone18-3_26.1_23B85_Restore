@interface CSProminentButtonBackingShadowView
+ (CAColorMatrix)_legibilityColorMatrix;
- (CSProminentButtonBackingShadowView)init;
- (id)_vibrantColorFilter;
- (void)_configureShadowMaskWithFrame:(CGRect)a3;
@end

@implementation CSProminentButtonBackingShadowView

- (CSProminentButtonBackingShadowView)init
{
  v9.receiver = self;
  v9.super_class = CSProminentButtonBackingShadowView;
  v2 = [(CSProminentButtonBackingShadowView *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(CSProminentButtonBackingShadowView *)v2 setClipsToBounds:0];
    v4 = [MEMORY[0x1E69794A0] layer];
    shadowMaskLayer = v3->_shadowMaskLayer;
    v3->_shadowMaskLayer = v4;

    v6 = [(CSProminentButtonBackingShadowView *)v3 _vibrantColorFilter];
    vibrantFilter = v3->_vibrantFilter;
    v3->_vibrantFilter = v6;
  }

  return v3;
}

- (id)_vibrantColorFilter
{
  v2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v3 = objc_opt_class();
  if (v3)
  {
    [v3 _legibilityColorMatrix];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v6[2] = v9;
  v6[3] = v10;
  v6[4] = v11;
  v6[0] = v7;
  v6[1] = v8;
  v4 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v6];
  [v2 setValue:v4 forKey:*MEMORY[0x1E6979AC0]];
  [v2 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69799C0]];

  return v2;
}

- (void)_configureShadowMaskWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19[1] = *MEMORY[0x1E69E9840];
  [(CAShapeLayer *)self->_shadowMaskLayer frame];
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectEqualToRect(v20, v21))
  {
    v12 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, width * 0.5}];
    -[CAShapeLayer setShadowPath:](self->_shadowMaskLayer, "setShadowPath:", [v12 CGPath]);
    [(CAShapeLayer *)self->_shadowMaskLayer setMasksToBounds:0];
    [(CAShapeLayer *)self->_shadowMaskLayer setShadowRadius:30.0];
    shadowMaskLayer = self->_shadowMaskLayer;
    v14 = [MEMORY[0x1E69DC888] blackColor];
    -[CAShapeLayer setShadowColor:](shadowMaskLayer, "setShadowColor:", [v14 CGColor]);

    [(CAShapeLayer *)self->_shadowMaskLayer setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    LODWORD(v15) = 1.0;
    [(CAShapeLayer *)self->_shadowMaskLayer setShadowOpacity:v15];
    [(CAShapeLayer *)self->_shadowMaskLayer setFrame:x, y, width, height];
    v16 = self->_shadowMaskLayer;
    v19[0] = self->_vibrantFilter;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [(CAShapeLayer *)v16 setFilters:v17];

    v18 = [(CSProminentButtonBackingShadowView *)self layer];
    [v18 addSublayer:self->_shadowMaskLayer];
  }
}

+ (CAColorMatrix)_legibilityColorMatrix
{
  *&retstr->var0 = xmmword_1A2DA3620;
  *&retstr->var4 = xmmword_1A2DA3630;
  *&retstr->var8 = xmmword_1A2DA3640;
  retstr->var12 = 0.546;
  *&retstr->var15 = 0;
  *&retstr->var13 = 0;
  retstr->var17 = 0.0;
  *&retstr->var18 = 1065353216;
  return result;
}

@end