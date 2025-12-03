@interface HUFadeInButton
+ (id)button;
- (void)layoutSubviews;
- (void)setShouldFadeRightToLeft:(BOOL)left;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUFadeInButton

+ (id)button
{
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___HUFadeInButton;
  v2 = objc_msgSendSuper2(&v14, sel_buttonWithType_, 1);
  v3 = v2;
  if (v2)
  {
    traitCollection = [v2 traitCollection];
    v5 = _backgroundColorWithTraitCollection(traitCollection);

    [v3 setBackgroundColor:v5];
    v6 = MEMORY[0x277CD9EB0];
    v7 = v5;
    v8 = objc_alloc_init(v6);
    v9 = _fadeInGradientWithColor(v7);

    [v8 setColors:v9];
    [v8 setLocations:&unk_282492B58];
    [v8 setStartPoint:{0.0, 0.5}];
    [v8 setEndPoint:{1.0, 0.5}];
    [v3 setFadeLayer:v8];

    layer = [v3 layer];
    fadeLayer = [v3 fadeLayer];
    [layer addSublayer:fadeLayer];

    layer2 = [v3 layer];
    [layer2 setMasksToBounds:0];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HUFadeInButton;
  [(HUFadeInButton *)&v8 traitCollectionDidChange:change];
  traitCollection = [(HUFadeInButton *)self traitCollection];
  v5 = _backgroundColorWithTraitCollection(traitCollection);

  [(HUFadeInButton *)self setBackgroundColor:v5];
  v6 = _fadeInGradientWithColor(v5);
  fadeLayer = [(HUFadeInButton *)self fadeLayer];
  [fadeLayer setColors:v6];
}

- (void)setShouldFadeRightToLeft:(BOOL)left
{
  if (self->_shouldFadeRightToLeft != left)
  {
    self->_shouldFadeRightToLeft = left;
    fadeLayer = [(HUFadeInButton *)self fadeLayer];
    [fadeLayer startPoint];
    v7 = v6;
    v9 = v8;

    fadeLayer2 = [(HUFadeInButton *)self fadeLayer];
    [fadeLayer2 endPoint];
    v12 = v11;
    v14 = v13;
    fadeLayer3 = [(HUFadeInButton *)self fadeLayer];
    [fadeLayer3 setStartPoint:{v12, v14}];

    fadeLayer4 = [(HUFadeInButton *)self fadeLayer];
    [fadeLayer4 setEndPoint:{v7, v9}];

    [(HUFadeInButton *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = HUFadeInButton;
  [(HUFadeInButton *)&v20 layoutSubviews];
  titleLabel = [(HUFadeInButton *)self titleLabel];
  font = [titleLabel font];
  [font lineHeight];
  v6 = v5;

  width = fmin(v6 + v6, 100.0);
  titleLabel2 = [(HUFadeInButton *)self titleLabel];
  [titleLabel2 frame];
  x = CGRectGetMinX(v21) - width;
  titleLabel3 = [(HUFadeInButton *)self titleLabel];
  [titleLabel3 frame];
  MinY = CGRectGetMinY(v22);
  titleLabel4 = [(HUFadeInButton *)self titleLabel];
  [titleLabel4 frame];
  Height = CGRectGetHeight(v23);

  if ([(HUFadeInButton *)self shouldFadeRightToLeft])
  {
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, -1.0, 1.0);
    [(HUFadeInButton *)self bounds];
    MinX = CGRectGetMinX(v24);
    [(HUFadeInButton *)self bounds];
    MaxX = CGRectGetMaxX(v25);
    v17 = v19;
    CGAffineTransformTranslate(&v18, &v17, -(MinX + MaxX), 0.0);
    v19 = v18;
    v26.origin.x = x;
    v26.origin.y = MinY;
    v26.size.width = width;
    v26.size.height = Height;
    v27 = CGRectApplyAffineTransform(v26, &v18);
    x = v27.origin.x;
    MinY = v27.origin.y;
    width = v27.size.width;
    Height = v27.size.height;
  }

  fadeLayer = [(HUFadeInButton *)self fadeLayer];
  [fadeLayer setFrame:{x, MinY, width, Height}];
}

@end