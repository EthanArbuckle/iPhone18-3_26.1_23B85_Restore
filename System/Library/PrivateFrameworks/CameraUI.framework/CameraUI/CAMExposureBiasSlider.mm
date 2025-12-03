@interface CAMExposureBiasSlider
- (CAMExposureBiasSlider)initWithFrame:(CGRect)frame;
- (CGPoint)_sunCenterForNormalizedValue:(float)value;
- (CGSize)sizeThatFits:(CGSize)fits;
- (float)_normalizedExposureValue;
- (void)_animateTrackAlpha:(double)alpha withDuration:(double)duration;
- (void)_cancelDelayedDim;
- (void)_dimTrackForInactivity;
- (void)_scheduleDelayedDim;
- (void)_updateForChangedNormalizedExposureValue;
- (void)forceTrackDimmed;
- (void)layoutSubviews;
- (void)setExposureBiasMax:(float)max;
- (void)setExposureBiasMin:(float)min;
- (void)setExposureBiasValue:(float)value;
- (void)setSuspendTrackFadeOut:(BOOL)out;
- (void)tintColorDidChange;
- (void)updateLastInteractionTime;
@end

@implementation CAMExposureBiasSlider

- (CAMExposureBiasSlider)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = CAMExposureBiasSlider;
  v3 = [(CAMExposureBiasSlider *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMExposureBiasSlider *)v3 setExposureBiasMin:0.0];
    LODWORD(v5) = 1.0;
    [(CAMExposureBiasSlider *)v4 setExposureBiasMax:v5];
    [(CAMExposureBiasSlider *)v4 setExposureBiasValue:0.0];
    tintColor = [(CAMExposureBiasSlider *)v4 tintColor];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    minTrackView = v4->__minTrackView;
    v4->__minTrackView = v12;

    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    maxTrackView = v4->__maxTrackView;
    v4->__maxTrackView = v14;

    [(UIView *)v4->__minTrackView setBackgroundColor:tintColor];
    [(UIView *)v4->__maxTrackView setBackgroundColor:tintColor];
    [(CAMExposureBiasSlider *)v4 addSubview:v4->__minTrackView];
    [(CAMExposureBiasSlider *)v4 addSubview:v4->__maxTrackView];
    v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    minTrackMaskView = v4->__minTrackMaskView;
    v4->__minTrackMaskView = v16;

    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    maxTrackMaskView = v4->__maxTrackMaskView;
    v4->__maxTrackMaskView = v18;

    v20 = v4->__minTrackMaskView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v20 setBackgroundColor:whiteColor];

    v22 = v4->__maxTrackMaskView;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v22 setBackgroundColor:whiteColor2];

    layer = [(UIView *)v4->__minTrackView layer];
    layer2 = [(UIView *)v4->__minTrackMaskView layer];
    [layer setMask:layer2];

    layer3 = [(UIView *)v4->__maxTrackView layer];
    layer4 = [(UIView *)v4->__maxTrackMaskView layer];
    [layer3 setMask:layer4];

    v28 = [[CAMExposureBiasSliderThumb alloc] initWithFrame:v8, v9, v10, v11];
    thumbView = v4->__thumbView;
    v4->__thumbView = v28;

    [(CAMExposureBiasSlider *)v4 addSubview:v4->__thumbView];
  }

  return v4;
}

- (void)tintColorDidChange
{
  tintColor = [(CAMExposureBiasSlider *)self tintColor];
  [(UIView *)self->__minTrackView setBackgroundColor:tintColor];
  [(UIView *)self->__maxTrackView setBackgroundColor:tintColor];
}

- (void)setExposureBiasMin:(float)min
{
  if (self->_exposureBiasMin != min)
  {
    self->_exposureBiasMin = min;
    [(CAMExposureBiasSlider *)self _updateForChangedNormalizedExposureValue];
  }
}

- (void)setExposureBiasMax:(float)max
{
  if (self->_exposureBiasMax != max)
  {
    self->_exposureBiasMax = max;
    [(CAMExposureBiasSlider *)self _updateForChangedNormalizedExposureValue];
  }
}

- (void)setExposureBiasValue:(float)value
{
  if (self->_exposureBiasValue != value)
  {
    self->_exposureBiasValue = value;
    [(CAMExposureBiasSlider *)self _updateForChangedNormalizedExposureValue];
  }

  [(CAMExposureBiasSlider *)self updateLastInteractionTime];
}

- (void)_updateForChangedNormalizedExposureValue
{
  [(CAMExposureBiasSlider *)self _normalizedExposureValue];
  [(CAMExposureBiasSliderThumb *)self->__thumbView setNormalizedExposureValue:?];

  [(CAMExposureBiasSlider *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 143.0;
  v4 = 1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = CAMExposureBiasSlider;
  [(CAMExposureBiasSlider *)&v25 layoutSubviews];
  [(CAMExposureBiasSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  [(CAMExposureBiasSlider *)self _normalizedExposureValue];
  [(CAMExposureBiasSlider *)self _sunCenterForNormalizedValue:?];
  [(CAMExposureBiasSliderThumb *)self->__thumbView sizeThatFits:v4, v6];
  v8 = v7;
  v10 = v9;
  UIRoundToViewScale();
  v12 = v11;
  UIRoundToViewScale();
  v14 = v13;
  [(CAMExposureBiasSliderThumb *)self->__thumbView setFrame:v12, v13, v8, v10];
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  [(UIView *)self->__minTrackView setFrame:*MEMORY[0x1E695F058], v16, 1.0, 143.0];
  [(UIView *)self->__maxTrackView setFrame:v15, v16, 1.0, 143.0];
  [(CAMExposureBiasSlider *)self convertRect:self->__minTrackView toView:v12, v14, v8, v10];
  width = v26.size.width;
  v26.origin.x = v21 + 0.0;
  x = v26.origin.x;
  v26.origin.y = v22 + -3.0;
  y = v26.origin.y;
  v26.size.height = v23 + 6.0;
  height = v26.size.height;
  [(UIView *)self->__minTrackMaskView setFrame:0.0, 0.0, 1.0, CGRectGetMinY(v26)];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  v28.size.width = 1.0;
  v28.origin.x = v15;
  v28.origin.y = v16;
  v28.size.height = 143.0;
  [(UIView *)self->__maxTrackMaskView setFrame:0.0, MaxY, 1.0, CGRectGetMaxY(v28) - MaxY];
}

- (CGPoint)_sunCenterForNormalizedValue:(float)value
{
  [(CAMExposureBiasSlider *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = 3.0 - CAMPixelWidthForView(self);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v14 = CGRectGetMinY(v20) + v13;
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  MaxY = CGRectGetMaxY(v21);
  v16 = MaxY - v13 + value * (v14 - (MaxY - v13));
  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  MidX = CGRectGetMidX(v22);
  v18 = v16;
  result.y = v18;
  result.x = MidX;
  return result;
}

- (float)_normalizedExposureValue
{
  [(CAMExposureBiasSlider *)self exposureBiasMin];
  v4 = v3;
  [(CAMExposureBiasSlider *)self exposureBiasMax];
  v6 = v5;
  result = 0.0;
  if (v6 > v4)
  {
    [(CAMExposureBiasSlider *)self exposureBiasValue];
    if (v8 < v4)
    {
      v8 = v4;
    }

    if (v8 > v6)
    {
      v8 = v6;
    }

    return (v8 - v4) / (v6 - v4);
  }

  return result;
}

- (void)setSuspendTrackFadeOut:(BOOL)out
{
  if (self->_suspendTrackFadeOut != out)
  {
    self->_suspendTrackFadeOut = out;
    if (out)
    {
      [(CAMExposureBiasSlider *)self _cancelDelayedDim];

      [(CAMExposureBiasSlider *)self updateLastInteractionTime];
    }

    else
    {

      [(CAMExposureBiasSlider *)self _scheduleDelayedDim];
    }
  }
}

- (void)forceTrackDimmed
{
  [(CAMExposureBiasSlider *)self _cancelDelayedDim];

  [(CAMExposureBiasSlider *)self _animateTrackAlpha:0.0 withDuration:0.0];
}

- (void)updateLastInteractionTime
{
  [(CAMExposureBiasSlider *)self _cancelDelayedDim];
  self->__lastInteractionTime = CFAbsoluteTimeGetCurrent();
  [(CAMExposureBiasSlider *)self _trackAlpha];
  if (fabs(v3) <= 0.00000011920929)
  {
    [(CAMExposureBiasSlider *)self _animateTrackAlpha:1.0 withDuration:0.0];
  }

  [(CAMExposureBiasSlider *)self _scheduleDelayedDim];
}

- (void)_scheduleDelayedDim
{
  if (![(CAMExposureBiasSlider *)self suspendTrackFadeOut])
  {

    [(CAMExposureBiasSlider *)self performSelector:sel__dimTrackForInactivity withObject:0 afterDelay:1.2];
  }
}

- (void)_cancelDelayedDim
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__dimTrackForInactivity object:0];
}

- (void)_dimTrackForInactivity
{
  if (![(CAMExposureBiasSlider *)self suspendTrackFadeOut])
  {
    [(CAMExposureBiasSlider *)self _trackAlpha];
    if (v3 == 1.0)
    {

      [(CAMExposureBiasSlider *)self _animateTrackAlpha:0.0 withDuration:0.36];
    }
  }
}

- (void)_animateTrackAlpha:(double)alpha withDuration:(double)duration
{
  if (duration <= 0.0)
  {
    [(UIView *)self->__minTrackView setAlpha:alpha];
    maxTrackView = self->__maxTrackView;

    [(UIView *)maxTrackView setAlpha:alpha];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__CAMExposureBiasSlider__animateTrackAlpha_withDuration___block_invoke;
    v7[3] = &unk_1E76F7A38;
    v7[4] = self;
    *&v7[5] = alpha;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v7 options:0 animations:duration completion:0.0];
  }
}

uint64_t __57__CAMExposureBiasSlider__animateTrackAlpha_withDuration___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 440);
  v3 = *(a1 + 40);

  return [v2 setAlpha:v3];
}

@end