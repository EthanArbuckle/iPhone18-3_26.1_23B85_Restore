@interface MUVerifiedLogoImageView
- (MUVerifiedLogoImageView)initWithFrame:(CGRect)a3;
- (UIColor)innerRingColor;
- (void)_setupCustomBorder;
- (void)_updateInnerRingFrame;
- (void)_updateRingColors;
- (void)layoutSubviews;
- (void)setCardExpansionProgress:(double)a3;
@end

@implementation MUVerifiedLogoImageView

- (UIColor)innerRingColor
{
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.200000003];

  return v3;
}

- (void)_updateRingColors
{
  v4 = [(MUVerifiedLogoImageView *)self innerRingColor];
  v3 = v4;
  -[CAShapeLayer setStrokeColor:](self->_innerRingLayer, "setStrokeColor:", [v4 CGColor]);
}

- (void)_updateInnerRingFrame
{
  [(MUVerifiedLogoImageView *)self bounds];
  v11 = CGRectInset(v10, 0.25, 0.25);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  [(MUVerifiedLogoImageView *)self bounds];
  [(CAShapeLayer *)self->_innerRingLayer setFrame:?];
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 16.0}];
  v7 = v8;
  -[CAShapeLayer setPath:](self->_innerRingLayer, "setPath:", [v8 CGPath]);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUVerifiedLogoImageView;
  [(MUVerifiedLogoImageView *)&v3 layoutSubviews];
  [(MUVerifiedLogoImageView *)self _updateInnerRingFrame];
}

- (void)setCardExpansionProgress:(double)a3
{
  CGAffineTransformMakeScale(&v5, a3, a3);
  v4 = v5;
  [(MUVerifiedLogoImageView *)self setTransform:&v4];
}

- (void)_setupCustomBorder
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(MUVerifiedLogoImageView *)self layer];
  [v3 setMasksToBounds:0];

  v4 = [(MUVerifiedLogoImageView *)self layer];
  [v4 setShadowPathIsBounds:1];

  [(MUImageView *)self->_imageView _setContinuousCornerRadius:16.0];
  v5 = [(MUImageView *)self->_imageView layer];
  [v5 setMasksToBounds:1];

  v6 = [(MUVerifiedLogoImageView *)self layer];
  [v6 setShadowOffset:{0.0, 12.0}];

  v7 = [(MUVerifiedLogoImageView *)self layer];
  LODWORD(v8) = 1049582633;
  [v7 setShadowOpacity:v8];

  v9 = [(MUVerifiedLogoImageView *)self layer];
  [v9 setShadowRadius:24.0];

  v10 = [MEMORY[0x1E69794A0] layer];
  innerRingLayer = self->_innerRingLayer;
  self->_innerRingLayer = v10;

  v12 = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setFillColor:](self->_innerRingLayer, "setFillColor:", [v12 CGColor]);

  [(CAShapeLayer *)self->_innerRingLayer setLineWidth:0.5];
  v13 = [(MUImageView *)self->_imageView layer];
  [v13 addSublayer:self->_innerRingLayer];

  [(MUImageView *)self->_imageView setAccessibilityIdentifier:@"PlaceHeaderLogoImage"];
  [(MUVerifiedLogoImageView *)self _updateInnerRingFrame];
  [(MUVerifiedLogoImageView *)self _updateRingColors];
  v17[0] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(MUVerifiedLogoImageView *)self registerForTraitChanges:v14 withAction:sel__updateRingColors];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUVerifiedLogoImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MUVerifiedLogoImageView;
  v7 = [(MUVerifiedLogoImageView *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v7)
  {
    v8 = [[MUImageView alloc] initWithFrame:x, y, width, height];
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(MUImageView *)v7->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUVerifiedLogoImageView *)v7 addSubview:v7->_imageView];
    v21 = MEMORY[0x1E696ACD8];
    v25 = [(MUImageView *)v7->_imageView leadingAnchor];
    v24 = [(MUVerifiedLogoImageView *)v7 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v27[0] = v23;
    v22 = [(MUImageView *)v7->_imageView trailingAnchor];
    v10 = [(MUVerifiedLogoImageView *)v7 trailingAnchor];
    v11 = [v22 constraintEqualToAnchor:v10];
    v27[1] = v11;
    v12 = [(MUImageView *)v7->_imageView topAnchor];
    v13 = [(MUVerifiedLogoImageView *)v7 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v27[2] = v14;
    v15 = [(MUImageView *)v7->_imageView bottomAnchor];
    v16 = [(MUVerifiedLogoImageView *)v7 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v27[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v21 activateConstraints:v18];

    [(MUVerifiedLogoImageView *)v7 _setupCustomBorder];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

@end