@interface HUFadeInButton
+ (id)button;
- (void)layoutSubviews;
- (void)setShouldFadeRightToLeft:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HUFadeInButton

+ (id)button
{
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___HUFadeInButton;
  v2 = objc_msgSendSuper2(&v14, sel_buttonWithType_, 1);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 traitCollection];
    v5 = _backgroundColorWithTraitCollection(v4);

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

    v10 = [v3 layer];
    v11 = [v3 fadeLayer];
    [v10 addSublayer:v11];

    v12 = [v3 layer];
    [v12 setMasksToBounds:0];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUFadeInButton;
  [(HUFadeInButton *)&v8 traitCollectionDidChange:a3];
  v4 = [(HUFadeInButton *)self traitCollection];
  v5 = _backgroundColorWithTraitCollection(v4);

  [(HUFadeInButton *)self setBackgroundColor:v5];
  v6 = _fadeInGradientWithColor(v5);
  v7 = [(HUFadeInButton *)self fadeLayer];
  [v7 setColors:v6];
}

- (void)setShouldFadeRightToLeft:(BOOL)a3
{
  if (self->_shouldFadeRightToLeft != a3)
  {
    self->_shouldFadeRightToLeft = a3;
    v5 = [(HUFadeInButton *)self fadeLayer];
    [v5 startPoint];
    v7 = v6;
    v9 = v8;

    v10 = [(HUFadeInButton *)self fadeLayer];
    [v10 endPoint];
    v12 = v11;
    v14 = v13;
    v15 = [(HUFadeInButton *)self fadeLayer];
    [v15 setStartPoint:{v12, v14}];

    v16 = [(HUFadeInButton *)self fadeLayer];
    [v16 setEndPoint:{v7, v9}];

    [(HUFadeInButton *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = HUFadeInButton;
  [(HUFadeInButton *)&v20 layoutSubviews];
  v3 = [(HUFadeInButton *)self titleLabel];
  v4 = [v3 font];
  [v4 lineHeight];
  v6 = v5;

  width = fmin(v6 + v6, 100.0);
  v8 = [(HUFadeInButton *)self titleLabel];
  [v8 frame];
  x = CGRectGetMinX(v21) - width;
  v10 = [(HUFadeInButton *)self titleLabel];
  [v10 frame];
  MinY = CGRectGetMinY(v22);
  v12 = [(HUFadeInButton *)self titleLabel];
  [v12 frame];
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

  v16 = [(HUFadeInButton *)self fadeLayer];
  [v16 setFrame:{x, MinY, width, Height}];
}

@end