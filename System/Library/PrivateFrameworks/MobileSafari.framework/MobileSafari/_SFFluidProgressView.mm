@interface _SFFluidProgressView
+ (double)progressBarHeightWithPreferredStyle:(unint64_t)style;
- (CGRect)_progressBarBoundsForValue:(double)value;
- (_SFFluidProgressView)initWithFrame:(CGRect)frame;
- (_SFFluidProgressView)initWithFrame:(CGRect)frame style:(unint64_t)style;
- (_SFFluidProgressViewDelegate)delegate;
- (void)_animateUsingDefaultTiming:(BOOL)timing stepAnimationTime:(double)time options:(unint64_t)options animations:(id)animations completion:(id)completion;
- (void)_finishProgressBarWithDuration:(double)duration;
- (void)fluidProgressController:(id)controller setProgressToCurrentPosition:(id)position;
- (void)fluidProgressController:(id)controller startFluidProgressBar:(id)bar animateFillFade:(BOOL)fade;
- (void)fluidProgressController:(id)controller updateFluidProgressBar:(id)bar completion:(id)completion;
- (void)fluidProgressControllerFinishProgressBar:(id)bar animateFillFade:(BOOL)fade;
- (void)layoutSubviews;
- (void)setAlignToTop:(BOOL)top;
- (void)setCornerRadius:(double)radius;
- (void)setProgressAnimationSuppressed:(BOOL)suppressed duringFluidProgressState:(id)state animated:(BOOL)animated;
- (void)setProgressBarFillColor:(id)color;
- (void)setProgressToCurrentPositionForState:(id)state;
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

+ (double)progressBarHeightWithPreferredStyle:(unint64_t)style
{
  v3 = 2.5;
  if (style == 2)
  {
    v3 = 1.5;
  }

  if (style == 1)
  {
    v3 = 5.0;
  }

  return _SFCeilingFloatToPixels(v3);
}

- (_SFFluidProgressView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = _SFFluidProgressView;
  v3 = [(_SFFluidProgressView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFFluidProgressView *)v3 setClipsToBounds:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_SFFluidProgressView *)v4 setBackgroundColor:clearColor];

    [(_SFFluidProgressView *)v4 setUserInteractionEnabled:0];
    _sf_usesLeftToRightLayout = [(UIView *)v4 _sf_usesLeftToRightLayout];
    sf_safariAccentColor = [MEMORY[0x1E69DC888] sf_safariAccentColor];
    progressBarFillColor = v4->_progressBarFillColor;
    v4->_progressBarFillColor = sf_safariAccentColor;

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    progressBar = v4->_progressBar;
    v4->_progressBar = v9;

    if (_sf_usesLeftToRightLayout)
    {
      v11 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v11 = 1.0;
    }

    if (_sf_usesLeftToRightLayout)
    {
      v12 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v12 = 0.0;
    }

    layer = [(UIView *)v4->_progressBar layer];
    [layer setAnchorPoint:{v11, v12}];

    [(UIView *)v4->_progressBar setBackgroundColor:v4->_progressBarFillColor];
    [(UIView *)v4->_progressBar setAccessibilityIdentifier:@"FluidProgressView"];
    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    clippingView = v4->_clippingView;
    v4->_clippingView = v14;

    [(UIView *)v4->_clippingView setClipsToBounds:1];
    layer2 = [(UIView *)v4->_clippingView layer];
    [layer2 setAnchorPoint:{v11, v12}];

    [(UIView *)v4->_clippingView addSubview:v4->_progressBar];
    [(_SFFluidProgressView *)v4 addSubview:v4->_clippingView];
    v17 = v4;
  }

  return v4;
}

- (_SFFluidProgressView)initWithFrame:(CGRect)frame style:(unint64_t)style
{
  v5 = [(_SFFluidProgressView *)self initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    v7 = v5;
  }

  return v6;
}

- (void)setProgressBarFillColor:(id)color
{
  colorCopy = color;
  if (self->_progressBarFillColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_progressBarFillColor, color);
    [(UIView *)self->_progressBar setBackgroundColor:self->_progressBarFillColor];
    colorCopy = v6;
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(_SFFluidProgressView *)self _setContinuousCornerRadius:?];
  }
}

- (void)setAlignToTop:(BOOL)top
{
  if (self->_alignsToTop != top)
  {
    self->_alignsToTop = top;
    [(_SFFluidProgressView *)self setNeedsLayout];
  }
}

- (void)setProgressAnimationSuppressed:(BOOL)suppressed duringFluidProgressState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  suppressedCopy = suppressed;
  stateCopy = state;
  v9 = stateCopy;
  if (self->_progressAnimationSuppressed != suppressedCopy)
  {
    self->_progressAnimationSuppressed = suppressedCopy;
    if (stateCopy)
    {
      if ([stateCopy fluidProgressAnimationPhase] != 5)
      {
        if (animatedCopy)
        {
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __89___SFFluidProgressView_setProgressAnimationSuppressed_duringFluidProgressState_animated___block_invoke;
          v10[3] = &unk_1E721BFA8;
          v10[4] = self;
          v11 = suppressedCopy;
          [MEMORY[0x1E69DD250] animateWithDuration:50331652 delay:v10 options:0 animations:0.4 completion:0.0];
        }

        else
        {
          [(UIView *)self->_clippingView setAlpha:!suppressedCopy];
        }
      }
    }
  }
}

- (CGRect)_progressBarBoundsForValue:(double)value
{
  [(UIView *)self->_clippingView bounds];
  v6 = v5;
  v8 = v7;
  _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
  v10 = -value;
  if (_sf_usesLeftToRightLayout)
  {
    v10 = 0.0;
  }

  v11 = v6;
  valueCopy = value;
  v13 = v8;
  result.size.height = v13;
  result.size.width = valueCopy;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_finishProgressBarWithDuration:(double)duration
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
  [MEMORY[0x1E69DD250] animateWithDuration:50331652 delay:v4 options:v3 animations:duration completion:0.0];
}

- (void)setProgressToCurrentPositionForState:(id)state
{
  stateCopy = state;
  objc_storeWeak(&self->_state, stateCopy);
  [stateCopy fluidProgressValue];
  [(_SFFluidProgressView *)self _progressBarBoundsForValue:?];
  [(UIView *)self->_clippingView setBounds:?];
  fluidProgressAnimationPhase = [stateCopy fluidProgressAnimationPhase];

  if (fluidProgressAnimationPhase != 5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fluidProgressViewWillShowProgress:self];
  }
}

- (void)fluidProgressController:(id)controller startFluidProgressBar:(id)bar animateFillFade:(BOOL)fade
{
  fadeCopy = fade;
  objc_storeWeak(&self->_state, bar);
  [(UIView *)self->_clippingView setHidden:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidProgressViewWillShowProgress:self];

  clippingView = self->_clippingView;
  [(_SFFluidProgressView *)self _progressBarBoundsForValue:0.0];
  [(UIView *)clippingView setBounds:?];
  v9 = 0.25;
  if (!fadeCopy)
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

- (void)_animateUsingDefaultTiming:(BOOL)timing stepAnimationTime:(double)time options:(unint64_t)options animations:(id)animations completion:(id)completion
{
  if (timing)
  {
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:50331648 animations:animations completion:{completion, time}];
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:options | 0x3000000 delay:animations options:completion animations:time completion:0.0];
  }
}

- (void)fluidProgressController:(id)controller updateFluidProgressBar:(id)bar completion:(id)completion
{
  barCopy = bar;
  completionCopy = completion;
  fluidProgressAnimationPhase = [barCopy fluidProgressAnimationPhase];
  if (self->_progressAnimationSuppressed)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v10 = fluidProgressAnimationPhase == 4;
    nextFluidProgressAnimation = [barCopy nextFluidProgressAnimation];
    if ([barCopy isFluidProgressStalled])
    {
      v12 = 0;
    }

    else
    {
      v12 = 196608;
    }

    window = [(_SFFluidProgressView *)self window];

    v14 = 0.0;
    if (!window)
    {
      v14 = 0.25;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke;
    v19[3] = &unk_1E721B600;
    v19[4] = self;
    v20 = nextFluidProgressAnimation;
    v21 = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke_2;
    v16[3] = &unk_1E721ED70;
    v18 = v14;
    v17 = completionCopy;
    v15 = nextFluidProgressAnimation;
    [(_SFFluidProgressView *)self _animateUsingDefaultTiming:v10 stepAnimationTime:v12 options:v19 animations:v16 completion:0.25];
  }
}

- (void)fluidProgressControllerFinishProgressBar:(id)bar animateFillFade:(BOOL)fade
{
  fadeCopy = fade;
  objc_storeWeak(&self->_state, 0);
  v6 = 0.4;
  if (!fadeCopy)
  {
    v6 = 0.0;
  }

  [(_SFFluidProgressView *)self _finishProgressBarWithDuration:v6];
}

- (void)fluidProgressController:(id)controller setProgressToCurrentPosition:(id)position
{
  clippingView = self->_clippingView;
  [position fluidProgressValue];
  [(_SFFluidProgressView *)self _progressBarBoundsForValue:?];

  [(UIView *)clippingView setBounds:?];
}

- (_SFFluidProgressViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end