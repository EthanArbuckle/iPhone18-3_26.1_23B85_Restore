@interface CSToggleButtonDivider
- (CSToggleButtonDivider)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CSToggleButtonDivider

- (CSToggleButtonDivider)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = CSToggleButtonDivider;
  v3 = [(CSToggleButtonDivider *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9EB8]);
    gradientLayer = v3->_gradientLayer;
    v3->_gradientLayer = v4;

    v6 = [MEMORY[0x277D75340] colorWithWhite:0.160784314 alpha:1.0];
    cGColor = [v6 CGColor];

    v8 = [MEMORY[0x277D75340] colorWithWhite:0.196078431 alpha:1.0];
    cGColor2 = [v8 CGColor];

    v10 = v3->_gradientLayer;
    v14[0] = cGColor;
    v14[1] = cGColor2;
    v14[2] = cGColor2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    [(CAGradientLayer *)v10 setColors:v11];

    layer = [(CSToggleButtonDivider *)v3 layer];
    [layer insertSublayer:v3->_gradientLayer atIndex:0];

    [(CSToggleButtonDivider *)v3 setClipsToBounds:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CSToggleButtonDivider;
  [(CSToggleButtonDivider *)&v7 layoutSubviews];
  gradientLayer = self->_gradientLayer;
  [(CSToggleButtonDivider *)self bounds];
  [(CAGradientLayer *)gradientLayer setFrame:?];
  layer = [(CSToggleButtonDivider *)self layer];
  [(CSToggleButtonDivider *)self bounds];
  [layer setCornerRadius:v5 * 0.5];

  layer2 = [(CSToggleButtonDivider *)self layer];
  [layer2 setCornerCurve:*MEMORY[0x277CDA128]];
}

@end