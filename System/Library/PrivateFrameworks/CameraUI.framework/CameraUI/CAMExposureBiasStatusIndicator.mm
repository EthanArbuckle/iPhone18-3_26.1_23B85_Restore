@interface CAMExposureBiasStatusIndicator
- (CAMExposureBiasStatusIndicator)init;
- (CGRect)_clippingTickFrameForClipping:(double)clipping leftAligned:(BOOL)aligned;
- (CGSize)intrinsicContentSize;
- (double)_horizontalExposureLabelOffset;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (void)_layoutHighlightClippingTick;
- (void)_layoutShadowClippingTick;
- (void)_updateExposureLabel;
- (void)_updateHighlightClippingTickAlpha;
- (void)_updateShadowClippingTickAlpha;
- (void)_updateTicks;
- (void)layoutSubviews;
- (void)setExposureBiasValue:(double)value;
- (void)setExposureValueVisible:(BOOL)visible;
- (void)setHighlightClipping:(double)clipping;
- (void)setShadowClipping:(double)clipping;
@end

@implementation CAMExposureBiasStatusIndicator

- (CAMExposureBiasStatusIndicator)init
{
  v15.receiver = self;
  v15.super_class = CAMExposureBiasStatusIndicator;
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v6 = [(CAMControlStatusIndicator *)&v15 initWithFrame:*MEMORY[0x1E695F058], v3, v4, v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v2, v3, v4, v5}];
    exposureLabel = v6->__exposureLabel;
    v6->__exposureLabel = v7;

    [(UILabel *)v6->__exposureLabel setNumberOfLines:1];
    v9 = CAMYellowColor();
    [(UILabel *)v6->__exposureLabel setTextColor:v9];

    [(UILabel *)v6->__exposureLabel setTextAlignment:1];
    v10 = +[CAMCaptureCapabilities capabilities];
    [v10 sfCameraFontSupported];

    v11 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle();
    [(UILabel *)v6->__exposureLabel setFont:v11];

    [(CAMExposureBiasStatusIndicator *)v6 addSubview:v6->__exposureLabel];
    v12 = objc_alloc_init(CAMExposureBiasStatusIndicatorTickMarksView);
    ticksView = v6->__ticksView;
    v6->__ticksView = v12;

    [(CAMExposureBiasStatusIndicator *)v6 addSubview:v6->__ticksView];
    [(CAMExposureBiasStatusIndicator *)v6 _updateExposureLabel];
    [(CAMExposureBiasStatusIndicator *)v6 _updateTicks];
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  _exposureLabel = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [_exposureLabel intrinsicContentSize];
  v5 = v4;

  _ticksView = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [_ticksView intrinsicContentSize];
  v8 = v7;
  v10 = v9;

  v11 = v5 + 4.0 + v10;
  v12 = v8;
  result.height = v11;
  result.width = v12;
  return result;
}

- (double)_horizontalExposureLabelOffset
{
  [(CAMExposureBiasStatusIndicator *)self exposureBiasValue];
  v4 = v3;
  isExposureValueVisible = [(CAMExposureBiasStatusIndicator *)self isExposureValueVisible];
  result = 0.0;
  if (isExposureValueVisible)
  {
    result = -4.0;
    if (v4 <= 0.0)
    {
      result = 0.0;
      if (v4 < 0.0)
      {
        return CAMPixelWidthForView(self) + -3.0;
      }
    }
  }

  return result;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = CAMExposureBiasStatusIndicator;
  [(CAMControlStatusIndicator *)&v35 layoutSubviews];
  [(CAMExposureBiasStatusIndicator *)self bounds];
  _exposureLabel = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [_exposureLabel intrinsicContentSize];

  _ticksView = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [_ticksView intrinsicContentSize];
  v6 = v5;
  v8 = v7;

  _exposureLabel2 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  font = [_exposureLabel2 font];
  [font ascender];

  _exposureLabel3 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  font2 = [_exposureLabel3 font];
  [font2 capHeight];

  UIRectCenteredRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(CAMExposureBiasStatusIndicator *)self _horizontalExposureLabelOffset];
  v36.origin.x = v14;
  v36.origin.y = v16;
  v36.size.width = v18;
  v36.size.height = v20;
  CGRectGetMaxY(v36);
  UIPointRoundToViewScale();
  v22 = v21;
  v24 = v23;
  _ticksView2 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [_ticksView2 setFrame:{v22, v24, v6, v8}];

  UIRectIntegralWithScale();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  _exposureLabel4 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [_exposureLabel4 setFrame:{v27, v29, v31, v33}];

  [(CAMExposureBiasStatusIndicator *)self _layoutShadowClippingTick];
  [(CAMExposureBiasStatusIndicator *)self _layoutHighlightClippingTick];
}

- (void)_layoutShadowClippingTick
{
  [(CAMExposureBiasStatusIndicator *)self shadowClipping];
  [(CAMExposureBiasStatusIndicator *)self _clippingTickFrameForClipping:1 leftAligned:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shadowClippingTick = [(CAMExposureBiasStatusIndicator *)self _shadowClippingTick];
  [_shadowClippingTick setFrame:{v4, v6, v8, v10}];
}

- (void)_layoutHighlightClippingTick
{
  [(CAMExposureBiasStatusIndicator *)self highlightClipping];
  [(CAMExposureBiasStatusIndicator *)self _clippingTickFrameForClipping:0 leftAligned:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _highlightClippingTick = [(CAMExposureBiasStatusIndicator *)self _highlightClippingTick];
  [_highlightClippingTick setFrame:{v4, v6, v8, v10}];
}

- (void)_updateExposureLabel
{
  [(CAMExposureBiasStatusIndicator *)self exposureBiasValue];
  v4 = v3;
  if ([(CAMExposureBiasStatusIndicator *)self isExposureValueVisible])
  {
    v5 = +[CAMExposureSlider decimalFormatter];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v8 = [v5 stringFromNumber:v6];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"."];
  }

  _exposureLabel = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [_exposureLabel setText:v8];

  [(CAMExposureBiasStatusIndicator *)self setNeedsLayout];
}

- (void)_updateTicks
{
  [(CAMExposureBiasStatusIndicator *)self exposureBiasValue];
  CEKProgressClamped();
  v4 = llround(v3 * 12.0);
  if (v4 >= 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  if (v4 <= 6)
  {
    v4 = 6;
  }

  v6 = v4 - v5;
  _ticksView = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [_ticksView setSelectedRange:{v5, v6 + 1}];
}

- (CGRect)_clippingTickFrameForClipping:(double)clipping leftAligned:(BOOL)aligned
{
  CEKProgressClamped();
  CEKInterpolate();
  _ticksView = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [_ticksView frame];
  if (aligned)
  {
    CGRectGetMinX(*&v7);
  }

  else
  {
    CGRectGetMaxX(*&v7);
  }

  _ticksView2 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [_ticksView2 frame];
  CGRectGetMaxY(v17);

  UIRectIntegralWithScale();
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_updateShadowClippingTickAlpha
{
  [(CAMExposureBiasStatusIndicator *)self shadowClipping];
  [(CAMExposureBiasStatusIndicator *)self _clippingTickAlphaForClipping:?];
  v4 = v3;
  _shadowClippingTick = [(CAMExposureBiasStatusIndicator *)self _shadowClippingTick];
  [_shadowClippingTick setAlpha:v4];
}

- (void)_updateHighlightClippingTickAlpha
{
  [(CAMExposureBiasStatusIndicator *)self highlightClipping];
  [(CAMExposureBiasStatusIndicator *)self _clippingTickAlphaForClipping:?];
  v4 = v3;
  _highlightClippingTick = [(CAMExposureBiasStatusIndicator *)self _highlightClippingTick];
  [_highlightClippingTick setAlpha:v4];
}

- (void)setExposureBiasValue:(double)value
{
  if (self->_exposureBiasValue != value)
  {
    self->_exposureBiasValue = value;
    [(CAMExposureBiasStatusIndicator *)self _updateTicks];

    [(CAMExposureBiasStatusIndicator *)self _updateExposureLabel];
  }
}

- (void)setExposureValueVisible:(BOOL)visible
{
  if (self->_exposureValueVisible != visible)
  {
    self->_exposureValueVisible = visible;
    [(CAMExposureBiasStatusIndicator *)self _updateExposureLabel];
  }
}

- (void)setShadowClipping:(double)clipping
{
  CEKClamp();
  if (v4 != self->_shadowClipping)
  {
    self->_shadowClipping = sqrt(v4);
    _shadowClippingTick = [(CAMExposureBiasStatusIndicator *)self _shadowClippingTick];

    if (!_shadowClippingTick)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
      shadowClippingTick = self->__shadowClippingTick;
      self->__shadowClippingTick = v6;

      v8 = CAMRedColor();
      [(UIView *)self->__shadowClippingTick setBackgroundColor:v8];

      [(CAMExposureBiasStatusIndicator *)self addSubview:self->__shadowClippingTick];
    }

    [(CAMExposureBiasStatusIndicator *)self _layoutShadowClippingTick];

    [(CAMExposureBiasStatusIndicator *)self _updateShadowClippingTickAlpha];
  }
}

- (void)setHighlightClipping:(double)clipping
{
  CEKClamp();
  if (v4 != self->_highlightClipping)
  {
    self->_highlightClipping = sqrt(v4);
    _highlightClippingTick = [(CAMExposureBiasStatusIndicator *)self _highlightClippingTick];

    if (!_highlightClippingTick)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
      highlightClippingTick = self->__highlightClippingTick;
      self->__highlightClippingTick = v6;

      v8 = CAMRedColor();
      [(UIView *)self->__highlightClippingTick setBackgroundColor:v8];

      [(CAMExposureBiasStatusIndicator *)self addSubview:self->__highlightClippingTick];
    }

    [(CAMExposureBiasStatusIndicator *)self _layoutHighlightClippingTick];

    [(CAMExposureBiasStatusIndicator *)self _updateHighlightClippingTickAlpha];
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  v10.receiver = self;
  v10.super_class = CAMExposureBiasStatusIndicator;
  v4 = [(CAMControlStatusIndicator *)&v10 hudItemForAccessibilityHUDManager:manager];
  v5 = +[CAMExposureSlider decimalFormatter];
  v6 = MEMORY[0x1E696AD98];
  [(CAMExposureBiasStatusIndicator *)self exposureBiasValue];
  v7 = [v6 numberWithDouble:?];
  v8 = [v5 stringFromNumber:v7];
  [v4 setTitle:v8];

  return v4;
}

@end