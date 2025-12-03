@interface SUUIPreviewProgressIndicator
- (SUUIPreviewProgressIndicator)initWithFrame:(CGRect)frame;
- (id)_newShapeViewWithBounds:(CGRect)bounds lineWidth:(double)width;
- (void)_beginIndeterminateAnimation;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
- (void)reloadWithPlayerStatus:(id)status animated:(BOOL)animated;
- (void)setBackgroundColor:(id)color;
- (void)setProgress:(float)progress animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation SUUIPreviewProgressIndicator

- (SUUIPreviewProgressIndicator)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = SUUIPreviewProgressIndicator;
  v3 = [(SUUIPreviewProgressIndicator *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIPreviewProgressIndicator *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [SUUIPreviewProgressIndicator _newShapeViewWithBounds:v4 lineWidth:"_newShapeViewWithBounds:lineWidth:"];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v13;

    [(SUUIShapeView *)v4->_backgroundView setUserInteractionEnabled:0];
    [(SUUIPreviewProgressIndicator *)v4 addSubview:v4->_backgroundView];
    v15 = [(SUUIPreviewProgressIndicator *)v4 _newShapeViewWithBounds:v6 lineWidth:v8, v10, v12, 4.0];
    foregroundView = v4->_foregroundView;
    v4->_foregroundView = v15;

    v17 = v4->_foregroundView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIShapeView *)v17 setBackgroundColor:clearColor];

    [(SUUIShapeView *)v4->_foregroundView setUserInteractionEnabled:0];
    layer = [(SUUIShapeView *)v4->_foregroundView layer];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

    [layer setStrokeEnd:0.0];
    [(SUUIPreviewProgressIndicator *)v4 addSubview:v4->_foregroundView];
    v21 = MEMORY[0x277D755B8];
    v22 = SUUIBundle();
    v23 = [v21 imageNamed:@"DownloadProgressButtonConnecting" inBundle:v22];
    v24 = [v23 imageWithRenderingMode:2];

    v25 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v24];
    cancelImageView = v4->_cancelImageView;
    v4->_cancelImageView = v25;

    [(UIImageView *)v4->_cancelImageView setAutoresizingMask:18];
    [(UIImageView *)v4->_cancelImageView setContentMode:4];
    [(UIImageView *)v4->_cancelImageView setFrame:v6, v8, v10, v12];
    [(SUUIPreviewProgressIndicator *)v4 addSubview:v4->_cancelImageView];
  }

  return v4;
}

- (void)beginIndeterminateAnimation
{
  isIndeterminate = self->_isIndeterminate;
  layer = [(SUUIShapeView *)self->_backgroundView layer];
  v5 = layer;
  if (isIndeterminate)
  {
    animationKeys = [layer animationKeys];
    v7 = [animationKeys count];

    if (v7)
    {
      return;
    }
  }

  else
  {
    [layer setStrokeStart:0.119999997];
    self->_isIndeterminate = 1;
  }

  window = [(SUUIPreviewProgressIndicator *)self window];

  if (window)
  {

    [(SUUIPreviewProgressIndicator *)self _beginIndeterminateAnimation];
  }
}

- (void)endIndeterminateAnimation
{
  if (self->_isIndeterminate)
  {
    layer = [(SUUIShapeView *)self->_backgroundView layer];
    [layer setStrokeStart:0.0];
    [layer removeAllAnimations];
    backgroundView = self->_backgroundView;
    CGAffineTransformMakeRotation(&v5, -1.57079633);
    [(SUUIShapeView *)backgroundView setTransform:&v5];
    self->_isIndeterminate = 0;
  }
}

- (void)reloadWithPlayerStatus:(id)status animated:(BOOL)animated
{
  animatedCopy = animated;
  statusCopy = status;
  if ([statusCopy playerState] == 1)
  {
    [(SUUIPreviewProgressIndicator *)self beginIndeterminateAnimation];
  }

  else
  {
    [statusCopy duration];
    v7 = v6;
    if (v6 >= 2.22044605e-16)
    {
      [statusCopy currentTime];
      v8 = v9 / v7;
      *&v8 = v8;
    }

    else
    {
      v8 = 0.0;
    }

    [(SUUIPreviewProgressIndicator *)self setProgress:animatedCopy animated:v8];
  }
}

- (void)setProgress:(float)progress animated:(BOOL)animated
{
  if (self->_progress != progress)
  {
    if (progress > 0.00000011921)
    {
      [(SUUIPreviewProgressIndicator *)self endIndeterminateAnimation];
    }

    v7 = fmax(fmin(progress, 1.0), 0.0);
    self->_progress = v7;
    layer = [(SUUIShapeView *)self->_foregroundView layer];
    if (animated)
    {
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v8 setDuration:0.2];
      [v8 setFillMode:*MEMORY[0x277CDA238]];
      [v8 setRemovedOnCompletion:0];
      *&v9 = self->_progress;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
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

- (void)setBackgroundColor:(id)color
{
  backgroundView = self->_backgroundView;
  colorCopy = color;
  [(SUUIShapeView *)backgroundView setBackgroundColor:colorCopy];
  layer = [(SUUIShapeView *)self->_backgroundView layer];
  [layer setFillColor:{objc_msgSend(colorCopy, "CGColor")}];

  v7.receiver = self;
  v7.super_class = SUUIPreviewProgressIndicator;
  [(SUUIPreviewProgressIndicator *)&v7 setBackgroundColor:colorCopy];
}

- (void)tintColorDidChange
{
  tintColor = [(SUUIPreviewProgressIndicator *)self tintColor];
  cGColor = [tintColor CGColor];

  layer = [(SUUIShapeView *)self->_backgroundView layer];
  [layer setStrokeColor:cGColor];

  layer2 = [(SUUIShapeView *)self->_foregroundView layer];
  [layer2 setStrokeColor:cGColor];

  v7.receiver = self;
  v7.super_class = SUUIPreviewProgressIndicator;
  [(SUUIPreviewProgressIndicator *)&v7 tintColorDidChange];
}

- (void)_beginIndeterminateAnimation
{
  layer = [(SUUIShapeView *)self->_backgroundView layer];
  [layer removeAllAnimations];

  backgroundView = self->_backgroundView;
  CGAffineTransformMakeRotation(&v6, -1.57079633);
  [(SUUIShapeView *)backgroundView setTransform:&v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SUUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke;
  v5[3] = &unk_2798F5BE8;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:197228 delay:v5 options:0 animations:1.0 completion:0.0];
}

uint64_t __60__SUUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D85DD0];
  do
  {
    v5[0] = v3;
    v5[1] = 3221225472;
    v5[2] = __60__SUUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke_2;
    v5[3] = &unk_2798F6C18;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    result = [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v5 relativeDuration:vcvtd_n_f64_u64(v2++ animations:{2uLL), 0.25}];
  }

  while (v2 != 4);
  return result;
}

uint64_t __60__SUUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 456);
  CGAffineTransformMakeRotation(&v3, *(a1 + 40) * 1.57079633);
  return [v1 setTransform:&v3];
}

- (id)_newShapeViewWithBounds:(CGRect)bounds lineWidth:(double)width
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = [SUUIShapeView alloc];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, width * 0.5, width * 0.5);
  v11 = [(SUUIShapeView *)v10 initWithFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
  CGAffineTransformMakeRotation(&v16, -1.57079633);
  [(SUUIShapeView *)v11 setTransform:&v16];
  layer = [(SUUIShapeView *)v11 layer];
  [layer setLineWidth:width];
  tintColor = [(SUUIPreviewProgressIndicator *)self tintColor];
  [layer setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

  [(SUUIShapeView *)v11 bounds];
  v14 = CGPathCreateWithEllipseInRect(v19, 0);
  [layer setPath:v14];
  CGPathRelease(v14);

  return v11;
}

@end