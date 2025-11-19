@interface SUUIOnboardingProgressView
+ (CGSize)preferredImageSizeForViewSize:(CGSize)a3;
- (CGSize)preferredImageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIOnboardingProgressView)initWithFrame:(CGRect)a3;
- (UIColor)fillColor;
- (id)_borderColor;
- (void)layoutSubviews;
- (void)setFillColor:(id)a3;
- (void)setImage:(id)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation SUUIOnboardingProgressView

- (SUUIOnboardingProgressView)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = SUUIOnboardingProgressView;
  v3 = [(SUUIOnboardingProgressView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIOnboardingProgressView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [[SUUIShapeView alloc] initWithFrame:v5, v7, v9, v11];
    borderView = v4->_borderView;
    v4->_borderView = v13;

    [(SUUIOnboardingProgressView *)v4 addSubview:v4->_borderView];
    v15 = [(SUUIShapeView *)v4->_borderView layer];
    v16 = [MEMORY[0x277D75348] clearColor];
    [v15 setFillColor:{objc_msgSend(v16, "CGColor")}];

    [v15 setLineWidth:3.0];
    v17 = [(SUUIOnboardingProgressView *)v4 _borderColor];
    [v15 setStrokeColor:{objc_msgSend(v17, "CGColor")}];

    v18 = [[SUUIShapeView alloc] initWithFrame:v6, v8, v10, v12];
    progressView = v4->_progressView;
    v4->_progressView = v18;

    v20 = v4->_progressView;
    v21 = [MEMORY[0x277D75348] clearColor];
    [(SUUIShapeView *)v20 setBackgroundColor:v21];

    v22 = v4->_progressView;
    CGAffineTransformMakeRotation(&v27, -1.57079633);
    [(SUUIShapeView *)v22 setTransform:&v27];
    [(SUUIOnboardingProgressView *)v4 addSubview:v4->_progressView];
    v23 = [(SUUIShapeView *)v4->_progressView layer];
    v24 = [MEMORY[0x277D75348] clearColor];
    [v23 setFillColor:{objc_msgSend(v24, "CGColor")}];

    [v23 setLineWidth:6.0];
    v25 = [(SUUIOnboardingProgressView *)v4 tintColor];
    [v23 setStrokeColor:{objc_msgSend(v25, "CGColor")}];

    [v23 setStrokeEnd:0.0];
    [v23 setStrokeStart:0.0];
  }

  return v4;
}

+ (CGSize)preferredImageSizeForViewSize:(CGSize)a3
{
  v3 = a3.width + -12.0 + -8.0;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIColor)fillColor
{
  v2 = [(SUUIShapeView *)self->_borderView layer];
  v3 = [v2 fillColor];

  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithCGColor:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)preferredImageSize
{
  v3 = objc_opt_class();
  [(SUUIOnboardingProgressView *)self frame];

  [v3 preferredImageSizeForViewSize:{v4, v5}];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setFillColor:(id)a3
{
  borderView = self->_borderView;
  v4 = a3;
  v6 = [(SUUIShapeView *)borderView layer];
  v5 = [v4 CGColor];

  [v6 setFillColor:v5];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  imageView = self->_imageView;
  v11 = v4;
  if (v4)
  {
    if (!imageView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_imageView;
      self->_imageView = v6;

      v8 = self->_imageView;
      v9 = [MEMORY[0x277D75348] clearColor];
      [(UIImageView *)v8 setBackgroundColor:v9];

      [(SUUIOnboardingProgressView *)self addSubview:self->_imageView];
      v4 = v11;
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setImage:v4];
    [(SUUIOnboardingProgressView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)imageView removeFromSuperview];
    v10 = self->_imageView;
    self->_imageView = 0;
  }
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  progress = self->_progress;
  if (progress != a3)
  {
    if (a3 > 1.0)
    {
      a3 = 1.0;
    }

    v7 = fmax(a3, 0.0);
    self->_progress = v7;
    v11 = [(SUUIShapeView *)self->_progressView layer];
    if (a4)
    {
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v8 setDuration:{vabdd_f64(progress, v7) * 0.6}];
      [v8 setFillMode:*MEMORY[0x277CDA238]];
      [v8 setRemovedOnCompletion:0];
      v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
      [v8 setTimingFunction:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progress];
      [v8 setToValue:v10];

      [v11 addAnimation:v8 forKey:0];
    }

    else
    {
      [v11 removeAllAnimations];
      [v11 setStrokeEnd:self->_progress];
    }
  }
}

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [v15 length];
  titleLabel = self->_titleLabel;
  if (v4)
  {
    if (!titleLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_titleLabel;
      self->_titleLabel = v6;

      v8 = self->_titleLabel;
      v9 = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = self->_titleLabel;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      [(UILabel *)v10 setFont:v11];

      [(UILabel *)self->_titleLabel setNumberOfLines:2];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
      v12 = self->_titleLabel;
      v13 = [(SUUIOnboardingProgressView *)self tintColor];
      [(UILabel *)v12 setTextColor:v13];

      [(SUUIOnboardingProgressView *)self addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:v15];
    [(SUUIOnboardingProgressView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)titleLabel removeFromSuperview];
    v14 = self->_titleLabel;
    self->_titleLabel = 0;
  }
}

- (void)layoutSubviews
{
  [(SUUIOnboardingProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUIShapeView *)self->_borderView setFrame:?];
  [(SUUIShapeView *)self->_progressView setFrame:v4, v6, v8, v10];
  v29 = [(SUUIShapeView *)self->_borderView layer];
  [v29 lineWidth];
  v12 = v11 * 0.5;
  v13 = MEMORY[0x277D75208];
  [(SUUIShapeView *)self->_borderView bounds];
  v32 = CGRectInset(v31, v12, v12);
  v14 = [v13 bezierPathWithOvalInRect:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
  [v29 setPath:{objc_msgSend(v14, "CGPath")}];

  v15 = [(SUUIShapeView *)self->_progressView layer];
  [v15 lineWidth];
  v17 = v16 * 0.5;
  v18 = MEMORY[0x277D75208];
  [(SUUIShapeView *)self->_progressView bounds];
  v34 = CGRectInset(v33, v17, v17);
  v19 = [v18 bezierPathWithOvalInRect:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
  [v15 setPath:{objc_msgSend(v19, "CGPath")}];

  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)self->_imageView sizeThatFits:v8, v10];
    v22 = v21;
    v24 = v23;
    *&v21 = (v8 - v21) * 0.5;
    *&v23 = (v10 - v23) * 0.5;
    [(UIImageView *)self->_imageView setFrame:floorf(*&v21), floorf(*&v23), v22, v24];
    p_titleLabel = &self->_titleLabel;
  }

  else
  {
    p_titleLabel = &self->_titleLabel;
    if (!*p_titleLabel)
    {
      goto LABEL_6;
    }

    v26 = *MEMORY[0x277CBF3A0];
    [*p_titleLabel sizeThatFits:{v8, v10}];
    v28 = (v10 - v27) * 0.5;
    [*p_titleLabel setFrame:{v26, floorf(v28), v8, v27}];
  }

  [*p_titleLabel setHidden:imageView != 0];
LABEL_6:
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(SUUIOnboardingProgressView *)self traitCollection:a3.width];
  v4 = [v3 horizontalSizeClass];

  v5 = 78.0;
  if (v4 == 2)
  {
    v5 = 120.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)tintColorDidChange
{
  v3 = [(SUUIOnboardingProgressView *)self tintColor];
  v4 = [(SUUIShapeView *)self->_borderView layer];
  v5 = [(SUUIOnboardingProgressView *)self _borderColor];
  [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  v6 = [(SUUIShapeView *)self->_progressView layer];
  [v6 setStrokeColor:{objc_msgSend(v3, "CGColor")}];

  [(UILabel *)self->_titleLabel setTextColor:v3];
  v7.receiver = self;
  v7.super_class = SUUIOnboardingProgressView;
  [(SUUIOnboardingProgressView *)&v7 tintColorDidChange];
}

- (id)_borderColor
{
  v2 = [(SUUIOnboardingProgressView *)self tintColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  return v3;
}

@end