@interface SUUIOnboardingProgressView
+ (CGSize)preferredImageSizeForViewSize:(CGSize)size;
- (CGSize)preferredImageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIOnboardingProgressView)initWithFrame:(CGRect)frame;
- (UIColor)fillColor;
- (id)_borderColor;
- (void)layoutSubviews;
- (void)setFillColor:(id)color;
- (void)setImage:(id)image;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)setTitle:(id)title;
- (void)tintColorDidChange;
@end

@implementation SUUIOnboardingProgressView

- (SUUIOnboardingProgressView)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = SUUIOnboardingProgressView;
  v3 = [(SUUIOnboardingProgressView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    layer = [(SUUIShapeView *)v4->_borderView layer];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [layer setLineWidth:3.0];
    _borderColor = [(SUUIOnboardingProgressView *)v4 _borderColor];
    [layer setStrokeColor:{objc_msgSend(_borderColor, "CGColor")}];

    v18 = [[SUUIShapeView alloc] initWithFrame:v6, v8, v10, v12];
    progressView = v4->_progressView;
    v4->_progressView = v18;

    v20 = v4->_progressView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(SUUIShapeView *)v20 setBackgroundColor:clearColor2];

    v22 = v4->_progressView;
    CGAffineTransformMakeRotation(&v27, -1.57079633);
    [(SUUIShapeView *)v22 setTransform:&v27];
    [(SUUIOnboardingProgressView *)v4 addSubview:v4->_progressView];
    layer2 = [(SUUIShapeView *)v4->_progressView layer];
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [layer2 setFillColor:{objc_msgSend(clearColor3, "CGColor")}];

    [layer2 setLineWidth:6.0];
    tintColor = [(SUUIOnboardingProgressView *)v4 tintColor];
    [layer2 setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

    [layer2 setStrokeEnd:0.0];
    [layer2 setStrokeStart:0.0];
  }

  return v4;
}

+ (CGSize)preferredImageSizeForViewSize:(CGSize)size
{
  v3 = size.width + -12.0 + -8.0;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIColor)fillColor
{
  layer = [(SUUIShapeView *)self->_borderView layer];
  fillColor = [layer fillColor];

  if (fillColor)
  {
    v4 = [MEMORY[0x277D75348] colorWithCGColor:fillColor];
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

- (void)setFillColor:(id)color
{
  borderView = self->_borderView;
  colorCopy = color;
  layer = [(SUUIShapeView *)borderView layer];
  cGColor = [colorCopy CGColor];

  [layer setFillColor:cGColor];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = self->_imageView;
  v11 = imageCopy;
  if (imageCopy)
  {
    if (!imageView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_imageView;
      self->_imageView = v6;

      v8 = self->_imageView;
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIImageView *)v8 setBackgroundColor:clearColor];

      [(SUUIOnboardingProgressView *)self addSubview:self->_imageView];
      imageCopy = v11;
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setImage:imageCopy];
    [(SUUIOnboardingProgressView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)imageView removeFromSuperview];
    v10 = self->_imageView;
    self->_imageView = 0;
  }
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  progress = self->_progress;
  if (progress != progress)
  {
    if (progress > 1.0)
    {
      progress = 1.0;
    }

    v7 = fmax(progress, 0.0);
    self->_progress = v7;
    layer = [(SUUIShapeView *)self->_progressView layer];
    if (animated)
    {
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v8 setDuration:{vabdd_f64(progress, v7) * 0.6}];
      [v8 setFillMode:*MEMORY[0x277CDA238]];
      [v8 setRemovedOnCompletion:0];
      v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
      [v8 setTimingFunction:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progress];
      [v8 setToValue:v10];

      [layer addAnimation:v8 forKey:0];
    }

    else
    {
      [layer removeAllAnimations];
      [layer setStrokeEnd:self->_progress];
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v4 = [titleCopy length];
  titleLabel = self->_titleLabel;
  if (v4)
  {
    if (!titleLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_titleLabel;
      self->_titleLabel = v6;

      v8 = self->_titleLabel;
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)v8 setBackgroundColor:clearColor];

      v10 = self->_titleLabel;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      [(UILabel *)v10 setFont:v11];

      [(UILabel *)self->_titleLabel setNumberOfLines:2];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
      v12 = self->_titleLabel;
      tintColor = [(SUUIOnboardingProgressView *)self tintColor];
      [(UILabel *)v12 setTextColor:tintColor];

      [(SUUIOnboardingProgressView *)self addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:titleCopy];
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
  layer = [(SUUIShapeView *)self->_borderView layer];
  [layer lineWidth];
  v12 = v11 * 0.5;
  v13 = MEMORY[0x277D75208];
  [(SUUIShapeView *)self->_borderView bounds];
  v32 = CGRectInset(v31, v12, v12);
  v14 = [v13 bezierPathWithOvalInRect:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
  [layer setPath:{objc_msgSend(v14, "CGPath")}];

  layer2 = [(SUUIShapeView *)self->_progressView layer];
  [layer2 lineWidth];
  v17 = v16 * 0.5;
  v18 = MEMORY[0x277D75208];
  [(SUUIShapeView *)self->_progressView bounds];
  v34 = CGRectInset(v33, v17, v17);
  v19 = [v18 bezierPathWithOvalInRect:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
  [layer2 setPath:{objc_msgSend(v19, "CGPath")}];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(SUUIOnboardingProgressView *)self traitCollection:fits.width];
  horizontalSizeClass = [v3 horizontalSizeClass];

  v5 = 78.0;
  if (horizontalSizeClass == 2)
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
  tintColor = [(SUUIOnboardingProgressView *)self tintColor];
  layer = [(SUUIShapeView *)self->_borderView layer];
  _borderColor = [(SUUIOnboardingProgressView *)self _borderColor];
  [layer setStrokeColor:{objc_msgSend(_borderColor, "CGColor")}];

  layer2 = [(SUUIShapeView *)self->_progressView layer];
  [layer2 setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

  [(UILabel *)self->_titleLabel setTextColor:tintColor];
  v7.receiver = self;
  v7.super_class = SUUIOnboardingProgressView;
  [(SUUIOnboardingProgressView *)&v7 tintColorDidChange];
}

- (id)_borderColor
{
  tintColor = [(SUUIOnboardingProgressView *)self tintColor];
  v3 = [tintColor colorWithAlphaComponent:0.5];

  return v3;
}

@end