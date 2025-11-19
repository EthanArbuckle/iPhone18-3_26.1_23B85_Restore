@interface _SFFluidProgressView
+ (double)progressBarHeightWithPreferredStyle:(unint64_t)a3;
- (CGRect)_progressBarBoundsForValue:(double)a3;
- (_SFFluidProgressView)initWithFrame:(CGRect)a3;
- (_SFFluidProgressView)initWithFrame:(CGRect)a3 style:(unint64_t)a4;
- (_SFFluidProgressViewDelegate)delegate;
- (void)_animateUsingDefaultTiming:(BOOL)a3 stepAnimationTime:(double)a4 options:(unint64_t)a5 animations:(id)a6 completion:(id)a7;
- (void)_finishProgressBarWithDuration:(double)a3;
- (void)fluidProgressController:(id)a3 setProgressToCurrentPosition:(id)a4;
- (void)fluidProgressController:(id)a3 startFluidProgressBar:(id)a4 animateFillFade:(BOOL)a5;
- (void)fluidProgressController:(id)a3 updateFluidProgressBar:(id)a4 completion:(id)a5;
- (void)fluidProgressControllerFinishProgressBar:(id)a3 animateFillFade:(BOOL)a4;
- (void)layoutSubviews;
- (void)setAlignToTop:(BOOL)a3;
- (void)setCornerRadius:(double)a3;
- (void)setProgressAnimationSuppressed:(BOOL)a3 duringFluidProgressState:(id)a4 animated:(BOOL)a5;
- (void)setProgressBarFillColor:(id)a3;
- (void)setProgressToCurrentPositionForState:(id)a3;
@end

@implementation _SFFluidProgressView

- (void)layoutSubviews
{
  [(_SFFluidProgressView *)self bounds];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___SFFluidProgressView_layoutSubviews__block_invoke;
  v7[3] = &unk_1E721C180;
  v7[4] = self;
  v7[5] = v3;
  v7[6] = v4;
  v7[7] = v5;
  v7[8] = v6;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
}

+ (double)progressBarHeightWithPreferredStyle:(unint64_t)a3
{
  v3 = 2.5;
  if (a3 == 2)
  {
    v3 = 1.5;
  }

  if (a3 == 1)
  {
    v3 = 5.0;
  }

  return _SFCeilingFloatToPixels(v3);
}

- (_SFFluidProgressView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = _SFFluidProgressView;
  v3 = [(_SFFluidProgressView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFFluidProgressView *)v3 setClipsToBounds:1];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(_SFFluidProgressView *)v4 setBackgroundColor:v5];

    [(_SFFluidProgressView *)v4 setUserInteractionEnabled:0];
    v6 = [(UIView *)v4 _sf_usesLeftToRightLayout];
    v7 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
    progressBarFillColor = v4->_progressBarFillColor;
    v4->_progressBarFillColor = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    progressBar = v4->_progressBar;
    v4->_progressBar = v9;

    if (v6)
    {
      v11 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v11 = 1.0;
    }

    if (v6)
    {
      v12 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v12 = 0.0;
    }

    v13 = [(UIView *)v4->_progressBar layer];
    [v13 setAnchorPoint:{v11, v12}];

    [(UIView *)v4->_progressBar setBackgroundColor:v4->_progressBarFillColor];
    [(UIView *)v4->_progressBar setAccessibilityIdentifier:@"FluidProgressView"];
    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    clippingView = v4->_clippingView;
    v4->_clippingView = v14;

    [(UIView *)v4->_clippingView setClipsToBounds:1];
    v16 = [(UIView *)v4->_clippingView layer];
    [v16 setAnchorPoint:{v11, v12}];

    [(UIView *)v4->_clippingView addSubview:v4->_progressBar];
    [(_SFFluidProgressView *)v4 addSubview:v4->_clippingView];
    v17 = v4;
  }

  return v4;
}

- (_SFFluidProgressView)initWithFrame:(CGRect)a3 style:(unint64_t)a4
{
  v5 = [(_SFFluidProgressView *)self initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    v7 = v5;
  }

  return v6;
}

- (void)setProgressBarFillColor:(id)a3
{
  v5 = a3;
  if (self->_progressBarFillColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_progressBarFillColor, a3);
    [(UIView *)self->_progressBar setBackgroundColor:self->_progressBarFillColor];
    v5 = v6;
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(_SFFluidProgressView *)self _setContinuousCornerRadius:?];
  }
}

- (void)setAlignToTop:(BOOL)a3
{
  if (self->_alignsToTop != a3)
  {
    self->_alignsToTop = a3;
    [(_SFFluidProgressView *)self setNeedsLayout];
  }
}

- (void)setProgressAnimationSuppressed:(BOOL)a3 duringFluidProgressState:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_progressAnimationSuppressed != v6)
  {
    self->_progressAnimationSuppressed = v6;
    if (v8)
    {
      if ([v8 fluidProgressAnimationPhase] != 5)
      {
        if (v5)
        {
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __89___SFFluidProgressView_setProgressAnimationSuppressed_duringFluidProgressState_animated___block_invoke;
          v10[3] = &unk_1E721BFA8;
          v10[4] = self;
          v11 = v6;
          [MEMORY[0x1E69DD250] animateWithDuration:50331652 delay:v10 options:0 animations:0.4 completion:0.0];
        }

        else
        {
          [(UIView *)self->_clippingView setAlpha:!v6];
        }
      }
    }
  }
}

- (CGRect)_progressBarBoundsForValue:(double)a3
{
  [(UIView *)self->_clippingView bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(UIView *)self _sf_usesLeftToRightLayout];
  v10 = -a3;
  if (v9)
  {
    v10 = 0.0;
  }

  v11 = v6;
  v12 = a3;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_finishProgressBarWithDuration:(double)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55___SFFluidProgressView__finishProgressBarWithDuration___block_invoke;
  v4[3] = &unk_1E721B360;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___SFFluidProgressView__finishProgressBarWithDuration___block_invoke_2;
  v3[3] = &unk_1E721B510;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:50331652 delay:v4 options:v3 animations:a3 completion:0.0];
}

- (void)setProgressToCurrentPositionForState:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_state, v4);
  [v4 fluidProgressValue];
  [(_SFFluidProgressView *)self _progressBarBoundsForValue:?];
  [(UIView *)self->_clippingView setBounds:?];
  v5 = [v4 fluidProgressAnimationPhase];

  if (v5 != 5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fluidProgressViewWillShowProgress:self];
  }
}

- (void)fluidProgressController:(id)a3 startFluidProgressBar:(id)a4 animateFillFade:(BOOL)a5
{
  v5 = a5;
  objc_storeWeak(&self->_state, a4);
  [(UIView *)self->_clippingView setHidden:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidProgressViewWillShowProgress:self];

  clippingView = self->_clippingView;
  [(_SFFluidProgressView *)self _progressBarBoundsForValue:0.0];
  [(UIView *)clippingView setBounds:?];
  v9 = 0.25;
  if (!v5)
  {
    v9 = 0.0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86___SFFluidProgressView_fluidProgressController_startFluidProgressBar_animateFillFade___block_invoke;
  v10[3] = &unk_1E721B360;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:50331652 delay:v10 options:0 animations:v9 completion:0.0];
}

- (void)_animateUsingDefaultTiming:(BOOL)a3 stepAnimationTime:(double)a4 options:(unint64_t)a5 animations:(id)a6 completion:(id)a7
{
  if (a3)
  {
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:50331648 animations:a6 completion:{a7, a4}];
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:a5 | 0x3000000 delay:a6 options:a7 animations:a4 completion:0.0];
  }
}

- (void)fluidProgressController:(id)a3 updateFluidProgressBar:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 fluidProgressAnimationPhase];
  if (self->_progressAnimationSuppressed)
  {
    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v10 = v9 == 4;
    v11 = [v7 nextFluidProgressAnimation];
    if ([v7 isFluidProgressStalled])
    {
      v12 = 0;
    }

    else
    {
      v12 = 196608;
    }

    v13 = [(_SFFluidProgressView *)self window];

    v14 = 0.0;
    if (!v13)
    {
      v14 = 0.25;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke;
    v19[3] = &unk_1E721B600;
    v19[4] = self;
    v20 = v11;
    v21 = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke_2;
    v16[3] = &unk_1E721ED70;
    v18 = v14;
    v17 = v8;
    v15 = v11;
    [(_SFFluidProgressView *)self _animateUsingDefaultTiming:v10 stepAnimationTime:v12 options:v19 animations:v16 completion:0.25];
  }
}

- (void)fluidProgressControllerFinishProgressBar:(id)a3 animateFillFade:(BOOL)a4
{
  v4 = a4;
  objc_storeWeak(&self->_state, 0);
  v6 = 0.4;
  if (!v4)
  {
    v6 = 0.0;
  }

  [(_SFFluidProgressView *)self _finishProgressBarWithDuration:v6];
}

- (void)fluidProgressController:(id)a3 setProgressToCurrentPosition:(id)a4
{
  clippingView = self->_clippingView;
  [a4 fluidProgressValue];
  [(_SFFluidProgressView *)self _progressBarBoundsForValue:?];

  [(UIView *)clippingView setBounds:?];
}

- (_SFFluidProgressViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end