@interface CAMTimerIndicatorView
- (CAMTimerIndicatorView)initWithCoder:(id)a3;
- (CAMTimerIndicatorView)initWithFrame:(CGRect)a3;
- (CGRect)_landscapeSwapBoundsCoordinates:(CGRect)a3;
- (id)_decrementAnimationForTick:(int64_t)a3;
- (id)_dimmingAnimationForTick:(int64_t)a3;
- (id)_finalDimmingAnimation;
- (id)_fontForStyle:(int64_t)a3;
- (void)_addDecrementAnimationForTick:(int64_t)a3;
- (void)_addDimmingAnimationForTick:(int64_t)a3;
- (void)_commonCAMTimerIndicatorViewInitialization;
- (void)_handleOrientationChange:(int64_t)a3;
- (void)_layoutCountdownLabelForLargeStyle;
- (void)_layoutCountdownLabelForSmallStyle;
- (void)_layoutCountdownLabelForStyle:(int64_t)a3;
- (void)_transitionDimmingViewFromStyle:(int64_t)a3;
- (void)_updateCountdownLabelWithTicksRemaining:(BOOL)a3;
- (void)_updateFromChangeToStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)decrement;
- (void)layoutSubviews;
- (void)resetWithNumberOfTicks:(int64_t)a3 showBeforeAnimationStarts:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)startCountdownWithAnimationDelegate:(id)a3;
@end

@implementation CAMTimerIndicatorView

- (void)_commonCAMTimerIndicatorViewInitialization
{
  [(CAMTimerIndicatorView *)self setUserInteractionEnabled:0];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  self->_style = 2 * ([v3 cam_initialLayoutStyle] == 1);

  [(CAMTimerIndicatorView *)self setAutoresizingMask:18];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  dimmingView = self->__dimmingView;
  self->__dimmingView = v9;

  [(UIView *)self->__dimmingView setAutoresizingMask:18];
  v11 = self->__dimmingView;
  v12 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)v11 setBackgroundColor:v12];

  [(UIView *)self->__dimmingView setAlpha:0.0];
  [(CAMTimerIndicatorView *)self addSubview:self->__dimmingView];
  self->__remainingTicks = 0;
  v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  countdownLabel = self->__countdownLabel;
  self->__countdownLabel = v13;

  v15 = self->__countdownLabel;
  v16 = [(CAMTimerIndicatorView *)self _fontForStyle:self->_style];
  [(UILabel *)v15 setFont:v16];

  v17 = self->__countdownLabel;
  v18 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v17 setTextColor:v18];

  [(UILabel *)self->__countdownLabel setTextAlignment:1];
  v19 = self->__countdownLabel;
  v20 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v19 setBackgroundColor:v20];

  v21 = [(UILabel *)self->__countdownLabel layer];
  v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.63];
  [v21 setShadowColor:{objc_msgSend(v22, "CGColor")}];

  v23 = [(UILabel *)self->__countdownLabel layer];
  [v23 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

  v24 = [(UILabel *)self->__countdownLabel layer];
  LODWORD(v25) = 1.0;
  [v24 setShadowOpacity:v25];

  v26 = [(UILabel *)self->__countdownLabel layer];
  [v26 setShadowRadius:2.0];

  [(CAMTimerIndicatorView *)self addSubview:self->__countdownLabel];

  [(CAMTimerIndicatorView *)self _updateCountdownLabelWithTicksRemaining:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMTimerIndicatorView;
  [(CAMTimerIndicatorView *)&v3 layoutSubviews];
  [(CAMTimerIndicatorView *)self bounds];
  [(UIView *)self->__dimmingView setFrame:?];
  [(CAMTimerIndicatorView *)self _layoutCountdownLabelForStyle:self->_style];
}

- (void)_layoutCountdownLabelForSmallStyle
{
  [(UILabel *)self->__countdownLabel intrinsicContentSize];
  v5 = v3;
  v6 = v4;
  if ((self->__labelOrientation - 3) <= 1)
  {
    [(CAMTimerIndicatorView *)self _landscapeSwapBoundsCoordinates:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v3, v4];
  }

  countdownLabel = self->__countdownLabel;

  [(UILabel *)countdownLabel setFrame:9.0, 9.0, v5, v6];
}

- (CAMTimerIndicatorView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMTimerIndicatorView;
  v3 = [(CAMTimerIndicatorView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMTimerIndicatorView *)v3 _commonCAMTimerIndicatorViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMTimerIndicatorView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CAMTimerIndicatorView;
  v3 = [(CAMTimerIndicatorView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CAMTimerIndicatorView *)v3 _commonCAMTimerIndicatorViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (CGRect)_landscapeSwapBoundsCoordinates:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  v6 = x;
  height = a3.size.height;
  v8 = width;
  result.size.height = v8;
  result.size.width = height;
  result.origin.y = v6;
  result.origin.x = y;
  return result;
}

- (void)_layoutCountdownLabelForLargeStyle
{
  [(CAMTimerIndicatorView *)self bounds];
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(UILabel *)self->__countdownLabel sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  if ((self->__labelOrientation - 3) <= 1)
  {
    [(CAMTimerIndicatorView *)self _landscapeSwapBoundsCoordinates:v3, v4, v5, v6];
  }

  UIRectCenteredIntegralRectScale();
  countdownLabel = self->__countdownLabel;

  [(UILabel *)countdownLabel setFrame:?];
}

- (void)_layoutCountdownLabelForStyle:(int64_t)a3
{
  if (![(CAMTimerIndicatorView *)self _isPerformingStyleAnimation])
  {
    if (a3 >= 2)
    {
      if (a3 == 2)
      {

        [(CAMTimerIndicatorView *)self _layoutCountdownLabelForLargeStyle];
      }
    }

    else
    {

      [(CAMTimerIndicatorView *)self _layoutCountdownLabelForSmallStyle];
    }
  }
}

- (void)setStyle:(int64_t)a3 animated:(BOOL)a4
{
  style = self->_style;
  if (style != a3)
  {
    self->_style = a3;
    [(CAMTimerIndicatorView *)self _updateFromChangeToStyle:style animated:a4];
  }
}

- (id)_fontForStyle:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [CAMFont cameraMonospacedFontOfSize:dbl_1A3A687B8[a3], v3];
  }

  return v5;
}

- (void)_updateFromChangeToStyle:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CAMTimerIndicatorView *)self _fontForStyle:?];
  v8 = [(CAMTimerIndicatorView *)self _fontForStyle:self->_style];
  [v8 pointSize];
  v10 = v9;
  [v7 pointSize];
  if (v10 <= v11)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x4010000000;
  v58[3] = "";
  v14 = *(MEMORY[0x1E695F050] + 16);
  v59 = *MEMORY[0x1E695F050];
  v60 = v14;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3010000000;
  v56[3] = "";
  v57 = *MEMORY[0x1E695EFF8];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x5010000000;
  v52[3] = "";
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  v53 = *MEMORY[0x1E695EFD0];
  v54 = v15;
  v55 = *(MEMORY[0x1E695EFD0] + 32);
  [(UILabel *)self->__countdownLabel intrinsicContentSize];
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->__countdownLabel setFont:v8];
  [(UILabel *)self->__countdownLabel intrinsicContentSize];
  v21 = v20;
  v23 = v22;
  [(CAMTimerIndicatorView *)self setNeedsLayout];
  if (v4)
  {
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    countdownLabel = self->__countdownLabel;
    if (countdownLabel)
    {
      [(UILabel *)countdownLabel transform];
    }

    v25 = MEMORY[0x1E69DD250];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v41 = v49;
    v36[2] = __59__CAMTimerIndicatorView__updateFromChangeToStyle_animated___block_invoke;
    v36[3] = &unk_1E76FA5E8;
    v36[4] = self;
    v38 = v56;
    v39 = v58;
    v40 = v52;
    v42 = v50;
    v43 = v51;
    v44 = v17;
    v45 = v19;
    v46 = v21;
    v47 = v23;
    v48 = v13 != v8;
    v37 = v13;
    [v25 performWithoutAnimation:v36];
    [(CAMTimerIndicatorView *)self _setPerformingStyleAnimation:1];
    [(CAMTimerIndicatorView *)self _transitionDimmingViewFromStyle:a3];
    v26 = MEMORY[0x1E69DD250];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __59__CAMTimerIndicatorView__updateFromChangeToStyle_animated___block_invoke_2;
    v35[3] = &unk_1E76FA610;
    v35[4] = self;
    v35[5] = v52;
    v35[6] = v56;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __59__CAMTimerIndicatorView__updateFromChangeToStyle_animated___block_invoke_3;
    v28[3] = &unk_1E76FA638;
    v34 = v13 != v8;
    v28[4] = self;
    v27 = v8;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v29 = v27;
    v30 = v58;
    [v26 animateWithDuration:v35 animations:v28 completion:0.3];
  }

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
}

CGAffineTransform *__59__CAMTimerIndicatorView__updateFromChangeToStyle_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) center];
  v3 = v2;
  v5 = v4;
  [*(*(a1 + 32) + 432) bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 32) + 432) center];
  v15 = v14;
  v17 = v16;
  [*(*(a1 + 32) + 432) bounds];
  v18 = *(*(a1 + 48) + 8);
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v19 = *(*(a1 + 56) + 8);
  v19[4] = v20;
  v19[5] = v21;
  v19[6] = v22;
  v19[7] = v23;
  v24 = *(*(a1 + 64) + 8);
  v25 = *(a1 + 72);
  v26 = *(a1 + 104);
  v24[3] = *(a1 + 88);
  v24[4] = v26;
  v24[2] = v25;
  if (*(a1 + 152) == 1)
  {
    [*(*(a1 + 32) + 432) setFont:*(a1 + 40)];
    [*(*(a1 + 32) + 432) setCenter:{v3, v5}];
    [*(*(a1 + 32) + 432) setBounds:{v7, v9, v11, v13}];
    v27 = *(a1 + 144);
    v28 = *(a1 + 128);
    v29 = *(a1 + 136) / *(a1 + 120);
    v30 = *(a1 + 88);
    *&v40.a = *(a1 + 72);
    *&v40.c = v30;
    *&v40.tx = *(a1 + 104);
    memset(&v41, 0, sizeof(v41));
    result = CGAffineTransformScale(&v41, &v40, v29, v27 / v28);
    v32 = *(*(a1 + 64) + 8);
    v34 = *&v41.c;
    v33 = *&v41.tx;
    v32[2] = *&v41.a;
    v32[3] = v34;
    v32[4] = v33;
  }

  else
  {
    v35 = *(a1 + 120);
    v36 = *(a1 + 136);
    v37 = *(a1 + 128) / *(a1 + 144);
    v38 = *(a1 + 88);
    *&v40.a = *(a1 + 72);
    *&v40.c = v38;
    *&v40.tx = *(a1 + 104);
    memset(&v41, 0, sizeof(v41));
    CGAffineTransformScale(&v41, &v40, v35 / v36, v37);
    v39 = *(*(a1 + 32) + 432);
    v40 = v41;
    [v39 setTransform:&v40];
    return [*(*(a1 + 32) + 432) setCenter:{v3, v5}];
  }

  return result;
}

uint64_t __59__CAMTimerIndicatorView__updateFromChangeToStyle_animated___block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 432);
  v4 = *(v2 + 8);
  v5 = v4[3];
  v7[0] = v4[2];
  v7[1] = v5;
  v7[2] = v4[4];
  [v3 setTransform:v7];
  return [*(a1[4] + 432) setCenter:{*(*(a1[6] + 8) + 32), *(*(a1[6] + 8) + 40)}];
}

uint64_t __59__CAMTimerIndicatorView__updateFromChangeToStyle_animated___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    [*(*(a1 + 32) + 432) setFont:*(a1 + 40)];
    v2 = *(*(a1 + 32) + 432);
    v3 = *(a1 + 72);
    v5[0] = *(a1 + 56);
    v5[1] = v3;
    v5[2] = *(a1 + 88);
    [v2 setTransform:v5];
    if (!CGRectIsNull(*(*(*(a1 + 48) + 8) + 32)))
    {
      [*(*(a1 + 32) + 432) setBounds:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
    }
  }

  [*(a1 + 32) _setPerformingStyleAnimation:0];
  [*(a1 + 32) _handleOrientationChange:{objc_msgSend(*(a1 + 32), "_deferredLabelOrientation")}];
  [*(a1 + 32) _setDeferredOrientation:0];
  return [*(a1 + 32) setNeedsLayout];
}

- (void)startCountdownWithAnimationDelegate:(id)a3
{
  objc_storeStrong(&self->__animationDelegate, a3);
  [(CAMTimerIndicatorView *)self _addDecrementAnimationForTick:self->__remainingTicks];
  remainingTicks = self->__remainingTicks;

  [(CAMTimerIndicatorView *)self _addDimmingAnimationForTick:remainingTicks];
}

- (void)decrement
{
  --self->__remainingTicks;
  [(CAMTimerIndicatorView *)self _updateCountdownLabelWithTicksRemaining:0];
  [(CAMTimerIndicatorView *)self _addDecrementAnimationForTick:self->__remainingTicks];
  remainingTicks = self->__remainingTicks;

  [(CAMTimerIndicatorView *)self _addDimmingAnimationForTick:remainingTicks];
}

- (void)resetWithNumberOfTicks:(int64_t)a3 showBeforeAnimationStarts:(BOOL)a4
{
  v4 = a4;
  animationDelegate = self->__animationDelegate;
  self->__animationDelegate = 0;

  [(CAMTimerIndicatorView *)self _removeAllAnimations:1];
  self->__startingTicks = a3;
  self->__remainingTicks = a3;
  [(CAMTimerIndicatorView *)self _updateCountdownLabelWithTicksRemaining:v4];

  [(CAMTimerIndicatorView *)self setNeedsLayout];
}

- (void)_updateCountdownLabelWithTicksRemaining:(BOOL)a3
{
  countdownLabel = self->__countdownLabel;
  v5 = 0.0;
  if (a3)
  {
    v5 = 1.0;
  }

  [(UILabel *)countdownLabel setAlpha:v5];
  v8 = CAMTimerCountdownFormatter();
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->__remainingTicks];
  v7 = [v8 stringFromNumber:v6];

  [(UILabel *)self->__countdownLabel setText:v7];
}

- (id)_decrementAnimationForTick:(int64_t)a3
{
  v5 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  v6 = v5;
  if (self->__remainingTicks == 1)
  {
    [v5 setValues:&unk_1F16C9620];
    [v6 setKeyTimes:&unk_1F16C9638];
    [v6 setFillMode:*MEMORY[0x1E69797E8]];
  }

  else
  {
    [v5 setValues:&unk_1F16C95F0];
    [v6 setKeyTimes:&unk_1F16C9608];
  }

  [v6 setRemovedOnCompletion:0];
  [v6 setDuration:1.0];
  [v6 setBeginTime:CACurrentMediaTime() + (self->__remainingTicks - a3)];

  return v6;
}

- (void)_addDecrementAnimationForTick:(int64_t)a3
{
  v5 = [(CAMTimerIndicatorView *)self _decrementAnimationForTick:a3];
  [v5 setDelegate:self->__animationDelegate];
  v4 = [(UILabel *)self->__countdownLabel layer];
  [v4 addAnimation:v5 forKey:@"decrement"];
}

- (id)_finalDimmingAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v2 setFromValue:&unk_1F16C8AB8];
  [v2 setToValue:&unk_1F16C8A88];
  [v2 setDuration:0.35];
  [v2 setBeginTime:CACurrentMediaTime() + 0.65];

  return v2;
}

- (void)_transitionDimmingViewFromStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    if (!self->_style)
    {
      v6[5] = v3;
      v6[6] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__CAMTimerIndicatorView__transitionDimmingViewFromStyle___block_invoke;
      v6[3] = &unk_1E76F77B0;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];
    }
  }

  else if (!a3 && self->_style == 2)
  {
    remainingTicks = self->__remainingTicks;

    [(CAMTimerIndicatorView *)self _addDimmingAnimationForTick:remainingTicks];
  }
}

- (id)_dimmingAnimationForTick:(int64_t)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = 0.6 / self->__startingTicks;
  v5 = [(UIView *)self->__dimmingView layer];
  v6 = [v5 presentationLayer];
  [v6 opacity];
  v8 = v7;

  startingTicks = self->__startingTicks;
  remainingTicks = self->__remainingTicks;
  v11 = v4 * ((startingTicks - remainingTicks) & ~((startingTicks - remainingTicks) >> 63));
  if (remainingTicks <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = self->__remainingTicks;
  }

  if (remainingTicks == 1)
  {
    v13 = 0.65;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v4 * (startingTicks - v12 + 1);
  if ((v8 - v11) == 0.00000011921 || startingTicks == remainingTicks)
  {
    v8 = v11;
  }

  v16 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  *&v17 = v8;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v23[0] = v18;
  *&v19 = v14;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v23[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v16 setValues:v21];

  [v16 setKeyTimes:&unk_1F16C9650];
  [v16 setDuration:v13];
  [v16 setBeginTime:CACurrentMediaTime()];
  if (remainingTicks != 1)
  {
    [v16 setFillMode:*MEMORY[0x1E69797E8]];
    [v16 setRemovedOnCompletion:0];
  }

  return v16;
}

- (void)_addDimmingAnimationForTick:(int64_t)a3
{
  if (self->_style)
  {
    v7 = [(CAMTimerIndicatorView *)self _dimmingAnimationForTick:a3];
    v4 = [(UIView *)self->__dimmingView layer];
    [v4 addAnimation:v7 forKey:@"dimming"];

    if (self->__remainingTicks == 1)
    {
      v5 = [(CAMTimerIndicatorView *)self _finalDimmingAnimation];
      v6 = [(UIView *)self->__dimmingView layer];
      [v6 addAnimation:v5 forKey:@"finalDimming"];
    }
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if ([(CAMTimerIndicatorView *)self _isPerformingStyleAnimation:a3])
  {

    [(CAMTimerIndicatorView *)self _setDeferredOrientation:a3];
  }

  else
  {

    [(CAMTimerIndicatorView *)self _handleOrientationChange:a3];
  }
}

- (void)_handleOrientationChange:(int64_t)a3
{
  if (a3)
  {
    [(CAMTimerIndicatorView *)self _setLabelOrientation:?];
    [CAMView rotateView:self->__countdownLabel toInterfaceOrientation:a3 animated:1];

    [(CAMTimerIndicatorView *)self setNeedsLayout];
  }
}

@end