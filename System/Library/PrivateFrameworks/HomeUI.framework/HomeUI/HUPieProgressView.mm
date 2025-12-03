@interface HUPieProgressView
- (HUPieProgressView)initWithFrame:(CGRect)frame;
- (HUPieProgressView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (HUPieProgressView)initWithStyle:(int64_t)style;
- (HUPieProgressViewDelegate)delegate;
- (double)outlineLineWidth;
- (double)progress;
- (id)_setupOutlineLayer;
- (id)_setupProgressLayer;
- (void)_fadeIn;
- (void)_fadeOut;
- (void)_setDefaults;
- (void)_updateLayerPaths;
- (void)_updateProgressLayerLineWidth;
- (void)layoutSubviews;
- (void)setHidesWhenStopped:(BOOL)stopped;
- (void)setIndeterminateMaxProgress:(double)progress;
- (void)setIsAnimating:(BOOL)animating;
- (void)setOutlineLineWidth:(double)width;
- (void)setProgress:(double)progress;
- (void)startWithFuture:(id)future;
- (void)tintColorDidChange;
@end

@implementation HUPieProgressView

- (void)startWithFuture:(id)future
{
  futureCopy = future;
  progressLayer = [(HUPieProgressView *)self progressLayer];
  [progressLayer removeAllAnimations];

  if ([(HUPieProgressView *)self hidesWhenStopped])
  {
    [(HUPieProgressView *)self _fadeIn];
  }

  [(HUPieProgressView *)self setIsAnimating:1];
  [(HUPieProgressView *)self indeterminateMaxProgress];
  [(HUPieProgressView *)self setProgress:?];
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [(HUPieProgressView *)self indeterminateExpectedDuration];
  [v6 setDuration:?];
  [v6 setFromValue:&unk_2824933B0];
  v7 = MEMORY[0x277CCABB0];
  [(HUPieProgressView *)self progress];
  v8 = [v7 numberWithDouble:?];
  [v6 setToValue:v8];

  LODWORD(v9) = 1036831949;
  LODWORD(v10) = 0.5;
  LODWORD(v11) = 0.25;
  LODWORD(v12) = 1.0;
  v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v9 :v10 :v11 :v12];
  [v6 setTimingFunction:v13];

  progressLayer2 = [(HUPieProgressView *)self progressLayer];
  [progressLayer2 addAnimation:v6 forKey:@"HUPieProgressViewStartingAnimation"];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__HUPieProgressView_startWithFuture___block_invoke;
  v18[3] = &unk_277DB8BD8;
  v18[4] = self;
  v15 = [futureCopy addSuccessBlock:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__HUPieProgressView_startWithFuture___block_invoke_3;
  v17[3] = &unk_277DB8C00;
  v17[4] = self;
  v16 = [futureCopy addFailureBlock:v17];
}

void __37__HUPieProgressView_startWithFuture___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressLayer];
  v3 = [v2 presentationLayer];
  [v3 strokeEnd];
  v5 = v4;

  v6 = [*(a1 + 32) progressLayer];
  [v6 removeAnimationForKey:@"HUPieProgressViewStartingAnimation"];

  [*(a1 + 32) setProgress:1.0];
  [MEMORY[0x277CD9FF0] begin];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__HUPieProgressView_startWithFuture___block_invoke_2;
  v14[3] = &unk_277DB8488;
  v14[4] = *(a1 + 32);
  [MEMORY[0x277CD9FF0] setCompletionBlock:v14];
  v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [*(a1 + 32) progress];
  v9 = (v8 - v5) * 0.5;
  if (v9 < 0.2)
  {
    v9 = 0.2;
  }

  [v7 setDuration:v9];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [v7 setFromValue:v10];

  v11 = MEMORY[0x277CCABB0];
  [*(a1 + 32) progress];
  v12 = [v11 numberWithDouble:?];
  [v7 setToValue:v12];

  v13 = [*(a1 + 32) progressLayer];
  [v13 addAnimation:v7 forKey:@"HUPieProgressViewFinishingAnimation"];

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __37__HUPieProgressView_startWithFuture___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsAnimating:0];
  result = [*(a1 + 32) hidesWhenStopped];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _fadeOut];
  }

  return result;
}

uint64_t __37__HUPieProgressView_startWithFuture___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) progressLayer];
  v3 = [v2 presentationLayer];
  [v3 strokeEnd];
  v5 = v4;
  v6 = [*(a1 + 32) progressLayer];
  [v6 setStrokeEnd:v5];

  v7 = [*(a1 + 32) progressLayer];
  [v7 removeAllAnimations];

  [*(a1 + 32) setIsAnimating:0];
  result = [*(a1 + 32) hidesWhenStopped];
  if (result)
  {
    v9 = *(a1 + 32);

    return [v9 _fadeOut];
  }

  return result;
}

- (void)setIndeterminateMaxProgress:(double)progress
{
  if (progress < 0.0 || progress > 1.0)
  {
    NSLog(&cfstr_Hupieprogressv_1.isa, a2);
  }

  progressCopy = 0.0;
  if (progress >= 0.0)
  {
    progressCopy = progress;
  }

  self->_indeterminateMaxProgress = fmin(progressCopy, 1.0);
}

- (double)outlineLineWidth
{
  outlineLayer = [(HUPieProgressView *)self outlineLayer];
  [outlineLayer lineWidth];
  v4 = v3;

  return v4;
}

- (void)setOutlineLineWidth:(double)width
{
  outlineLayer = [(HUPieProgressView *)self outlineLayer];
  [outlineLayer setLineWidth:width];
}

- (void)setHidesWhenStopped:(BOOL)stopped
{
  stoppedCopy = stopped;
  self->_hidesWhenStopped = stopped;
  if (![(HUPieProgressView *)self isAnimating])
  {
    if (stoppedCopy)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    [(HUPieProgressView *)self setHidden:stoppedCopy];

    [(HUPieProgressView *)self setAlpha:v5];
  }
}

- (void)setIsAnimating:(BOOL)animating
{
  animatingCopy = animating;
  self->_isAnimating = animating;
  delegate = [(HUPieProgressView *)self delegate];
  if (animatingCopy)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    delegate2 = [(HUPieProgressView *)self delegate];
    [delegate2 pieProgressViewDidStartAnimating:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    delegate2 = [(HUPieProgressView *)self delegate];
    [delegate2 pieProgressViewDidFinishAnimating:self];
  }
}

- (double)progress
{
  progressLayer = [(HUPieProgressView *)self progressLayer];
  [progressLayer strokeEnd];
  v4 = v3;

  return v4;
}

- (void)setProgress:(double)progress
{
  progressLayer = [(HUPieProgressView *)self progressLayer];
  [progressLayer setStrokeEnd:progress];
}

- (HUPieProgressView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HUPieProgressView;
  v3 = [(HUPieProgressView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _setupOutlineLayer = [(HUPieProgressView *)v3 _setupOutlineLayer];
    [(HUPieProgressView *)v4 setOutlineLayer:_setupOutlineLayer];

    layer = [(HUPieProgressView *)v4 layer];
    outlineLayer = [(HUPieProgressView *)v4 outlineLayer];
    [layer addSublayer:outlineLayer];

    _setupProgressLayer = [(HUPieProgressView *)v4 _setupProgressLayer];
    [(HUPieProgressView *)v4 setProgressLayer:_setupProgressLayer];

    layer2 = [(HUPieProgressView *)v4 layer];
    progressLayer = [(HUPieProgressView *)v4 progressLayer];
    [layer2 addSublayer:progressLayer];

    [(HUPieProgressView *)v4 _setDefaults];
    [(HUPieProgressView *)v4 _updateLayerPaths];
  }

  return v4;
}

- (HUPieProgressView)initWithStyle:(int64_t)style
{
  v4 = [(HUPieProgressView *)self init];
  v5 = v4;
  if (v4)
  {
    [(HUPieProgressView *)v4 setStyle:style];
  }

  return v5;
}

- (HUPieProgressView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v5 = [(HUPieProgressView *)self initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(HUPieProgressView *)v5 setStyle:style];
  }

  return v6;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HUPieProgressView;
  [(HUPieProgressView *)&v14 layoutSubviews];
  layer = [(HUPieProgressView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  outlineLayer = [(HUPieProgressView *)self outlineLayer];
  [outlineLayer setFrame:{v5, v7, v9, v11}];

  progressLayer = [(HUPieProgressView *)self progressLayer];
  [progressLayer setFrame:{v5, v7, v9, v11}];

  [(HUPieProgressView *)self _updateLayerPaths];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = HUPieProgressView;
  [(HUPieProgressView *)&v6 tintColorDidChange];
  tintColor = [(HUPieProgressView *)self tintColor];
  cGColor = [tintColor CGColor];
  progressLayer = [(HUPieProgressView *)self progressLayer];
  [progressLayer setStrokeColor:cGColor];
}

- (id)_setupOutlineLayer
{
  layer = [MEMORY[0x277CD9F90] layer];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [layer setStrokeColor:{objc_msgSend(secondaryLabelColor, "CGColor")}];

  return layer;
}

- (id)_setupProgressLayer
{
  layer = [MEMORY[0x277CD9F90] layer];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  tintColor = [(HUPieProgressView *)self tintColor];
  [layer setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

  return layer;
}

- (void)_setDefaults
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(HUPieProgressView *)self setBackgroundColor:clearColor];

  [(HUPieProgressView *)self setStyle:0];
  [(HUPieProgressView *)self setIndeterminateMaxProgress:0.8];
  [(HUPieProgressView *)self setIndeterminateExpectedDuration:2.0];
  [(HUPieProgressView *)self setOutlineLineWidth:2.0];
  [(HUPieProgressView *)self setProgressLineWidth:2.0];
  [(HUPieProgressView *)self setHidesWhenStopped:0];
  [(HUPieProgressView *)self setIsAnimating:0];

  [(HUPieProgressView *)self resetProgress];
}

- (void)_updateProgressLayerLineWidth
{
  style = [(HUPieProgressView *)self style];
  if (style != 1)
  {
    if (!style)
    {
      progressLayer = [(HUPieProgressView *)self progressLayer];
      [progressLayer frame];
      Width = CGRectGetWidth(v15);
      outlineLayer = [(HUPieProgressView *)self outlineLayer];
      [outlineLayer lineWidth];
      v8 = (Width - v7) * 0.5;
      progressLayer2 = [(HUPieProgressView *)self progressLayer];
      [progressLayer2 setLineWidth:v8];

      goto LABEL_6;
    }

    NSLog(&cfstr_Hupieprogressv_2.isa);
  }

  [(HUPieProgressView *)self progressLineWidth];
  v11 = v10;
  progressLayer = [(HUPieProgressView *)self progressLayer];
  [progressLayer setLineWidth:v11];
LABEL_6:

  progressLayer3 = [(HUPieProgressView *)self progressLayer];
  [progressLayer3 lineWidth];
  [progressLayer3 setLineWidth:v12 + 0.1];
}

- (void)_updateLayerPaths
{
  layer = [(HUPieProgressView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  MidY = CGRectGetMidY(v30);
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  Height = CGRectGetHeight(v32);
  if (Width < Height)
  {
    Height = Width;
  }

  v16 = Height * 0.5;
  v17 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v5, v7, v9, v11}];
  cGPath = [v17 CGPath];
  outlineLayer = [(HUPieProgressView *)self outlineLayer];
  [outlineLayer setPath:cGPath];

  [(HUPieProgressView *)self _updateProgressLayerLineWidth];
  v27 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v16 clockwise:{-1.57079633, 4.71238898}];
  v20 = v27;
  cGPath2 = [v27 CGPath];
  progressLayer = [(HUPieProgressView *)self progressLayer];
  [progressLayer setPath:cGPath2];

  v23 = *MEMORY[0x277CDA780];
  progressLayer2 = [(HUPieProgressView *)self progressLayer];
  [progressLayer2 setLineCap:v23];

  v25 = *MEMORY[0x277CDA7A0];
  progressLayer3 = [(HUPieProgressView *)self progressLayer];
  [progressLayer3 setLineJoin:v25];
}

- (void)_fadeIn
{
  [(HUPieProgressView *)self setHidden:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28__HUPieProgressView__fadeIn__block_invoke;
  v3[3] = &unk_277DB8488;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.3];
}

- (void)_fadeOut
{
  v2[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__HUPieProgressView__fadeOut__block_invoke;
  v3[3] = &unk_277DB8488;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __29__HUPieProgressView__fadeOut__block_invoke_2;
  v2[3] = &unk_277DB8C28;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.3];
}

uint64_t __29__HUPieProgressView__fadeOut__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = *(a1 + 32);

  return [v2 resetProgress];
}

- (HUPieProgressViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end