@interface CAMExposureBiasStatusIndicator
- (CAMExposureBiasStatusIndicator)init;
- (CGRect)_clippingTickFrameForClipping:(double)a3 leftAligned:(BOOL)a4;
- (CGSize)intrinsicContentSize;
- (double)_horizontalExposureLabelOffset;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (void)_layoutHighlightClippingTick;
- (void)_layoutShadowClippingTick;
- (void)_updateExposureLabel;
- (void)_updateHighlightClippingTickAlpha;
- (void)_updateShadowClippingTickAlpha;
- (void)_updateTicks;
- (void)layoutSubviews;
- (void)setExposureBiasValue:(double)a3;
- (void)setExposureValueVisible:(BOOL)a3;
- (void)setHighlightClipping:(double)a3;
- (void)setShadowClipping:(double)a3;
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
  v3 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [v3 intrinsicContentSize];
  v5 = v4;

  v6 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [v6 intrinsicContentSize];
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
  v5 = [(CAMExposureBiasStatusIndicator *)self isExposureValueVisible];
  result = 0.0;
  if (v5)
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
  v3 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [v3 intrinsicContentSize];

  v4 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [v4 intrinsicContentSize];
  v6 = v5;
  v8 = v7;

  v9 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  v10 = [v9 font];
  [v10 ascender];

  v11 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  v12 = [v11 font];
  [v12 capHeight];

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
  v25 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [v25 setFrame:{v22, v24, v6, v8}];

  UIRectIntegralWithScale();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [v34 setFrame:{v27, v29, v31, v33}];

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
  v11 = [(CAMExposureBiasStatusIndicator *)self _shadowClippingTick];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)_layoutHighlightClippingTick
{
  [(CAMExposureBiasStatusIndicator *)self highlightClipping];
  [(CAMExposureBiasStatusIndicator *)self _clippingTickFrameForClipping:0 leftAligned:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMExposureBiasStatusIndicator *)self _highlightClippingTick];
  [v11 setFrame:{v4, v6, v8, v10}];
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

  v7 = [(CAMExposureBiasStatusIndicator *)self _exposureLabel];
  [v7 setText:v8];

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
  v7 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [v7 setSelectedRange:{v5, v6 + 1}];
}

- (CGRect)_clippingTickFrameForClipping:(double)a3 leftAligned:(BOOL)a4
{
  CEKProgressClamped();
  CEKInterpolate();
  v6 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [v6 frame];
  if (a4)
  {
    CGRectGetMinX(*&v7);
  }

  else
  {
    CGRectGetMaxX(*&v7);
  }

  v11 = [(CAMExposureBiasStatusIndicator *)self _ticksView];
  [v11 frame];
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
  v5 = [(CAMExposureBiasStatusIndicator *)self _shadowClippingTick];
  [v5 setAlpha:v4];
}

- (void)_updateHighlightClippingTickAlpha
{
  [(CAMExposureBiasStatusIndicator *)self highlightClipping];
  [(CAMExposureBiasStatusIndicator *)self _clippingTickAlphaForClipping:?];
  v4 = v3;
  v5 = [(CAMExposureBiasStatusIndicator *)self _highlightClippingTick];
  [v5 setAlpha:v4];
}

- (void)setExposureBiasValue:(double)a3
{
  if (self->_exposureBiasValue != a3)
  {
    self->_exposureBiasValue = a3;
    [(CAMExposureBiasStatusIndicator *)self _updateTicks];

    [(CAMExposureBiasStatusIndicator *)self _updateExposureLabel];
  }
}

- (void)setExposureValueVisible:(BOOL)a3
{
  if (self->_exposureValueVisible != a3)
  {
    self->_exposureValueVisible = a3;
    [(CAMExposureBiasStatusIndicator *)self _updateExposureLabel];
  }
}

- (void)setShadowClipping:(double)a3
{
  CEKClamp();
  if (v4 != self->_shadowClipping)
  {
    self->_shadowClipping = sqrt(v4);
    v5 = [(CAMExposureBiasStatusIndicator *)self _shadowClippingTick];

    if (!v5)
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

- (void)setHighlightClipping:(double)a3
{
  CEKClamp();
  if (v4 != self->_highlightClipping)
  {
    self->_highlightClipping = sqrt(v4);
    v5 = [(CAMExposureBiasStatusIndicator *)self _highlightClippingTick];

    if (!v5)
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

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v10.receiver = self;
  v10.super_class = CAMExposureBiasStatusIndicator;
  v4 = [(CAMControlStatusIndicator *)&v10 hudItemForAccessibilityHUDManager:a3];
  v5 = +[CAMExposureSlider decimalFormatter];
  v6 = MEMORY[0x1E696AD98];
  [(CAMExposureBiasStatusIndicator *)self exposureBiasValue];
  v7 = [v6 numberWithDouble:?];
  v8 = [v5 stringFromNumber:v7];
  [v4 setTitle:v8];

  return v4;
}

@end