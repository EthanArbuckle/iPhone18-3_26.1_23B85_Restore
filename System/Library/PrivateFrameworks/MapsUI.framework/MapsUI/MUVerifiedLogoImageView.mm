@interface MUVerifiedLogoImageView
- (MUVerifiedLogoImageView)initWithFrame:(CGRect)frame;
- (UIColor)innerRingColor;
- (void)_setupCustomBorder;
- (void)_updateInnerRingFrame;
- (void)_updateRingColors;
- (void)layoutSubviews;
- (void)setCardExpansionProgress:(double)progress;
@end

@implementation MUVerifiedLogoImageView

- (UIColor)innerRingColor
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [whiteColor colorWithAlphaComponent:0.200000003];

  return v3;
}

- (void)_updateRingColors
{
  innerRingColor = [(MUVerifiedLogoImageView *)self innerRingColor];
  v3 = innerRingColor;
  -[CAShapeLayer setStrokeColor:](self->_innerRingLayer, "setStrokeColor:", [innerRingColor CGColor]);
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

- (void)setCardExpansionProgress:(double)progress
{
  CGAffineTransformMakeScale(&v5, progress, progress);
  v4 = v5;
  [(MUVerifiedLogoImageView *)self setTransform:&v4];
}

- (void)_setupCustomBorder
{
  v17[1] = *MEMORY[0x1E69E9840];
  layer = [(MUVerifiedLogoImageView *)self layer];
  [layer setMasksToBounds:0];

  layer2 = [(MUVerifiedLogoImageView *)self layer];
  [layer2 setShadowPathIsBounds:1];

  [(MUImageView *)self->_imageView _setContinuousCornerRadius:16.0];
  layer3 = [(MUImageView *)self->_imageView layer];
  [layer3 setMasksToBounds:1];

  layer4 = [(MUVerifiedLogoImageView *)self layer];
  [layer4 setShadowOffset:{0.0, 12.0}];

  layer5 = [(MUVerifiedLogoImageView *)self layer];
  LODWORD(v8) = 1049582633;
  [layer5 setShadowOpacity:v8];

  layer6 = [(MUVerifiedLogoImageView *)self layer];
  [layer6 setShadowRadius:24.0];

  layer7 = [MEMORY[0x1E69794A0] layer];
  innerRingLayer = self->_innerRingLayer;
  self->_innerRingLayer = layer7;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setFillColor:](self->_innerRingLayer, "setFillColor:", [clearColor CGColor]);

  [(CAShapeLayer *)self->_innerRingLayer setLineWidth:0.5];
  layer8 = [(MUImageView *)self->_imageView layer];
  [layer8 addSublayer:self->_innerRingLayer];

  [(MUImageView *)self->_imageView setAccessibilityIdentifier:@"PlaceHeaderLogoImage"];
  [(MUVerifiedLogoImageView *)self _updateInnerRingFrame];
  [(MUVerifiedLogoImageView *)self _updateRingColors];
  v17[0] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(MUVerifiedLogoImageView *)self registerForTraitChanges:v14 withAction:sel__updateRingColors];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUVerifiedLogoImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MUVerifiedLogoImageView;
  v7 = [(MUVerifiedLogoImageView *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v7)
  {
    height = [[MUImageView alloc] initWithFrame:x, y, width, height];
    imageView = v7->_imageView;
    v7->_imageView = height;

    [(MUImageView *)v7->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUVerifiedLogoImageView *)v7 addSubview:v7->_imageView];
    v21 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(MUImageView *)v7->_imageView leadingAnchor];
    leadingAnchor2 = [(MUVerifiedLogoImageView *)v7 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v27[0] = v23;
    trailingAnchor = [(MUImageView *)v7->_imageView trailingAnchor];
    trailingAnchor2 = [(MUVerifiedLogoImageView *)v7 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[1] = v11;
    topAnchor = [(MUImageView *)v7->_imageView topAnchor];
    topAnchor2 = [(MUVerifiedLogoImageView *)v7 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[2] = v14;
    bottomAnchor = [(MUImageView *)v7->_imageView bottomAnchor];
    bottomAnchor2 = [(MUVerifiedLogoImageView *)v7 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v21 activateConstraints:v18];

    [(MUVerifiedLogoImageView *)v7 _setupCustomBorder];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

@end