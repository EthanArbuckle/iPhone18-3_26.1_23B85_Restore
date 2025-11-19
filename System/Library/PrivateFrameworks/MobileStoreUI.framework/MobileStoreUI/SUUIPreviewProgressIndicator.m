@interface SUUIPreviewProgressIndicator
- (SUUIPreviewProgressIndicator)initWithFrame:(CGRect)a3;
- (id)_newShapeViewWithBounds:(CGRect)a3 lineWidth:(double)a4;
- (void)_beginIndeterminateAnimation;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
- (void)reloadWithPlayerStatus:(id)a3 animated:(BOOL)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setProgress:(float)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation SUUIPreviewProgressIndicator

- (SUUIPreviewProgressIndicator)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = SUUIPreviewProgressIndicator;
  v3 = [(SUUIPreviewProgressIndicator *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v18 = [MEMORY[0x277D75348] clearColor];
    [(SUUIShapeView *)v17 setBackgroundColor:v18];

    [(SUUIShapeView *)v4->_foregroundView setUserInteractionEnabled:0];
    v19 = [(SUUIShapeView *)v4->_foregroundView layer];
    v20 = [MEMORY[0x277D75348] clearColor];
    [v19 setFillColor:{objc_msgSend(v20, "CGColor")}];

    [v19 setStrokeEnd:0.0];
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
  v4 = [(SUUIShapeView *)self->_backgroundView layer];
  v5 = v4;
  if (isIndeterminate)
  {
    v6 = [v4 animationKeys];
    v7 = [v6 count];

    if (v7)
    {
      return;
    }
  }

  else
  {
    [v4 setStrokeStart:0.119999997];
    self->_isIndeterminate = 1;
  }

  v8 = [(SUUIPreviewProgressIndicator *)self window];

  if (v8)
  {

    [(SUUIPreviewProgressIndicator *)self _beginIndeterminateAnimation];
  }
}

- (void)endIndeterminateAnimation
{
  if (self->_isIndeterminate)
  {
    v3 = [(SUUIShapeView *)self->_backgroundView layer];
    [v3 setStrokeStart:0.0];
    [v3 removeAllAnimations];
    backgroundView = self->_backgroundView;
    CGAffineTransformMakeRotation(&v5, -1.57079633);
    [(SUUIShapeView *)backgroundView setTransform:&v5];
    self->_isIndeterminate = 0;
  }
}

- (void)reloadWithPlayerStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if ([v10 playerState] == 1)
  {
    [(SUUIPreviewProgressIndicator *)self beginIndeterminateAnimation];
  }

  else
  {
    [v10 duration];
    v7 = v6;
    if (v6 >= 2.22044605e-16)
    {
      [v10 currentTime];
      v8 = v9 / v7;
      *&v8 = v8;
    }

    else
    {
      v8 = 0.0;
    }

    [(SUUIPreviewProgressIndicator *)self setProgress:v4 animated:v8];
  }
}

- (void)setProgress:(float)a3 animated:(BOOL)a4
{
  if (self->_progress != a3)
  {
    if (a3 > 0.00000011921)
    {
      [(SUUIPreviewProgressIndicator *)self endIndeterminateAnimation];
    }

    v7 = fmax(fmin(a3, 1.0), 0.0);
    self->_progress = v7;
    v11 = [(SUUIShapeView *)self->_foregroundView layer];
    if (a4)
    {
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v8 setDuration:0.2];
      [v8 setFillMode:*MEMORY[0x277CDA238]];
      [v8 setRemovedOnCompletion:0];
      *&v9 = self->_progress;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
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

- (void)setBackgroundColor:(id)a3
{
  backgroundView = self->_backgroundView;
  v5 = a3;
  [(SUUIShapeView *)backgroundView setBackgroundColor:v5];
  v6 = [(SUUIShapeView *)self->_backgroundView layer];
  [v6 setFillColor:{objc_msgSend(v5, "CGColor")}];

  v7.receiver = self;
  v7.super_class = SUUIPreviewProgressIndicator;
  [(SUUIPreviewProgressIndicator *)&v7 setBackgroundColor:v5];
}

- (void)tintColorDidChange
{
  v3 = [(SUUIPreviewProgressIndicator *)self tintColor];
  v4 = [v3 CGColor];

  v5 = [(SUUIShapeView *)self->_backgroundView layer];
  [v5 setStrokeColor:v4];

  v6 = [(SUUIShapeView *)self->_foregroundView layer];
  [v6 setStrokeColor:v4];

  v7.receiver = self;
  v7.super_class = SUUIPreviewProgressIndicator;
  [(SUUIPreviewProgressIndicator *)&v7 tintColorDidChange];
}

- (void)_beginIndeterminateAnimation
{
  v3 = [(SUUIShapeView *)self->_backgroundView layer];
  [v3 removeAllAnimations];

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

- (id)_newShapeViewWithBounds:(CGRect)a3 lineWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [SUUIShapeView alloc];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, a4 * 0.5, a4 * 0.5);
  v11 = [(SUUIShapeView *)v10 initWithFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
  CGAffineTransformMakeRotation(&v16, -1.57079633);
  [(SUUIShapeView *)v11 setTransform:&v16];
  v12 = [(SUUIShapeView *)v11 layer];
  [v12 setLineWidth:a4];
  v13 = [(SUUIPreviewProgressIndicator *)self tintColor];
  [v12 setStrokeColor:{objc_msgSend(v13, "CGColor")}];

  [(SUUIShapeView *)v11 bounds];
  v14 = CGPathCreateWithEllipseInRect(v19, 0);
  [v12 setPath:v14];
  CGPathRelease(v14);

  return v11;
}

@end