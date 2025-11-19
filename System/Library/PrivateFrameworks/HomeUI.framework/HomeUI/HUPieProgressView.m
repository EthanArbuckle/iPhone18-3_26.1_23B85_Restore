@interface HUPieProgressView
- (HUPieProgressView)initWithFrame:(CGRect)a3;
- (HUPieProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (HUPieProgressView)initWithStyle:(int64_t)a3;
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
- (void)setHidesWhenStopped:(BOOL)a3;
- (void)setIndeterminateMaxProgress:(double)a3;
- (void)setIsAnimating:(BOOL)a3;
- (void)setOutlineLineWidth:(double)a3;
- (void)setProgress:(double)a3;
- (void)startWithFuture:(id)a3;
- (void)tintColorDidChange;
@end

@implementation HUPieProgressView

- (void)startWithFuture:(id)a3
{
  v4 = a3;
  v5 = [(HUPieProgressView *)self progressLayer];
  [v5 removeAllAnimations];

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

  v14 = [(HUPieProgressView *)self progressLayer];
  [v14 addAnimation:v6 forKey:@"HUPieProgressViewStartingAnimation"];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__HUPieProgressView_startWithFuture___block_invoke;
  v18[3] = &unk_277DB8BD8;
  v18[4] = self;
  v15 = [v4 addSuccessBlock:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__HUPieProgressView_startWithFuture___block_invoke_3;
  v17[3] = &unk_277DB8C00;
  v17[4] = self;
  v16 = [v4 addFailureBlock:v17];
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

- (void)setIndeterminateMaxProgress:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    NSLog(&cfstr_Hupieprogressv_1.isa, a2);
  }

  v6 = 0.0;
  if (a3 >= 0.0)
  {
    v6 = a3;
  }

  self->_indeterminateMaxProgress = fmin(v6, 1.0);
}

- (double)outlineLineWidth
{
  v2 = [(HUPieProgressView *)self outlineLayer];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (void)setOutlineLineWidth:(double)a3
{
  v4 = [(HUPieProgressView *)self outlineLayer];
  [v4 setLineWidth:a3];
}

- (void)setHidesWhenStopped:(BOOL)a3
{
  v3 = a3;
  self->_hidesWhenStopped = a3;
  if (![(HUPieProgressView *)self isAnimating])
  {
    if (v3)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    [(HUPieProgressView *)self setHidden:v3];

    [(HUPieProgressView *)self setAlpha:v5];
  }
}

- (void)setIsAnimating:(BOOL)a3
{
  v3 = a3;
  self->_isAnimating = a3;
  v5 = [(HUPieProgressView *)self delegate];
  if (v3)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v8 = [(HUPieProgressView *)self delegate];
    [v8 pieProgressViewDidStartAnimating:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(HUPieProgressView *)self delegate];
    [v8 pieProgressViewDidFinishAnimating:self];
  }
}

- (double)progress
{
  v2 = [(HUPieProgressView *)self progressLayer];
  [v2 strokeEnd];
  v4 = v3;

  return v4;
}

- (void)setProgress:(double)a3
{
  v4 = [(HUPieProgressView *)self progressLayer];
  [v4 setStrokeEnd:a3];
}

- (HUPieProgressView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUPieProgressView;
  v3 = [(HUPieProgressView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUPieProgressView *)v3 _setupOutlineLayer];
    [(HUPieProgressView *)v4 setOutlineLayer:v5];

    v6 = [(HUPieProgressView *)v4 layer];
    v7 = [(HUPieProgressView *)v4 outlineLayer];
    [v6 addSublayer:v7];

    v8 = [(HUPieProgressView *)v4 _setupProgressLayer];
    [(HUPieProgressView *)v4 setProgressLayer:v8];

    v9 = [(HUPieProgressView *)v4 layer];
    v10 = [(HUPieProgressView *)v4 progressLayer];
    [v9 addSublayer:v10];

    [(HUPieProgressView *)v4 _setDefaults];
    [(HUPieProgressView *)v4 _updateLayerPaths];
  }

  return v4;
}

- (HUPieProgressView)initWithStyle:(int64_t)a3
{
  v4 = [(HUPieProgressView *)self init];
  v5 = v4;
  if (v4)
  {
    [(HUPieProgressView *)v4 setStyle:a3];
  }

  return v5;
}

- (HUPieProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v5 = [(HUPieProgressView *)self initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(HUPieProgressView *)v5 setStyle:a4];
  }

  return v6;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HUPieProgressView;
  [(HUPieProgressView *)&v14 layoutSubviews];
  v3 = [(HUPieProgressView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(HUPieProgressView *)self outlineLayer];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(HUPieProgressView *)self progressLayer];
  [v13 setFrame:{v5, v7, v9, v11}];

  [(HUPieProgressView *)self _updateLayerPaths];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = HUPieProgressView;
  [(HUPieProgressView *)&v6 tintColorDidChange];
  v3 = [(HUPieProgressView *)self tintColor];
  v4 = [v3 CGColor];
  v5 = [(HUPieProgressView *)self progressLayer];
  [v5 setStrokeColor:v4];
}

- (id)_setupOutlineLayer
{
  v2 = [MEMORY[0x277CD9F90] layer];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setFillColor:{objc_msgSend(v3, "CGColor")}];

  v4 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v2 setStrokeColor:{objc_msgSend(v4, "CGColor")}];

  return v2;
}

- (id)_setupProgressLayer
{
  v3 = [MEMORY[0x277CD9F90] layer];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setFillColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(HUPieProgressView *)self tintColor];
  [v3 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  return v3;
}

- (void)_setDefaults
{
  v3 = [MEMORY[0x277D75348] clearColor];
  [(HUPieProgressView *)self setBackgroundColor:v3];

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
  v3 = [(HUPieProgressView *)self style];
  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = [(HUPieProgressView *)self progressLayer];
      [v4 frame];
      Width = CGRectGetWidth(v15);
      v6 = [(HUPieProgressView *)self outlineLayer];
      [v6 lineWidth];
      v8 = (Width - v7) * 0.5;
      v9 = [(HUPieProgressView *)self progressLayer];
      [v9 setLineWidth:v8];

      goto LABEL_6;
    }

    NSLog(&cfstr_Hupieprogressv_2.isa);
  }

  [(HUPieProgressView *)self progressLineWidth];
  v11 = v10;
  v4 = [(HUPieProgressView *)self progressLayer];
  [v4 setLineWidth:v11];
LABEL_6:

  v13 = [(HUPieProgressView *)self progressLayer];
  [v13 lineWidth];
  [v13 setLineWidth:v12 + 0.1];
}

- (void)_updateLayerPaths
{
  v3 = [(HUPieProgressView *)self layer];
  [v3 bounds];
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
  v18 = [v17 CGPath];
  v19 = [(HUPieProgressView *)self outlineLayer];
  [v19 setPath:v18];

  [(HUPieProgressView *)self _updateProgressLayerLineWidth];
  v27 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v16 clockwise:{-1.57079633, 4.71238898}];
  v20 = v27;
  v21 = [v27 CGPath];
  v22 = [(HUPieProgressView *)self progressLayer];
  [v22 setPath:v21];

  v23 = *MEMORY[0x277CDA780];
  v24 = [(HUPieProgressView *)self progressLayer];
  [v24 setLineCap:v23];

  v25 = *MEMORY[0x277CDA7A0];
  v26 = [(HUPieProgressView *)self progressLayer];
  [v26 setLineJoin:v25];
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