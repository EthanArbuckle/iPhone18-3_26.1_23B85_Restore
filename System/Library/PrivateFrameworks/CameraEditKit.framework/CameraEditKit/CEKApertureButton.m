@interface CEKApertureButton
- (CEKApertureButton)initWithFrame:(CGRect)a3;
- (CEKApertureButtonDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)_expansionInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)tappableEdgeInsets;
- (id)_circleImageWithColor:(id)a3;
- (void)_rotateView:(id)a3 withInterfaceOrientation:(int64_t)a4 animated:(BOOL)a5;
- (void)_setCenterAndBoundsForView:(id)a3 frame:(CGRect)a4;
- (void)_setLayer:(id)a3 highlighted:(BOOL)a4 animated:(BOOL)a5;
- (void)_updateBackgroundView;
- (void)_updateColorsAnimated:(BOOL)a3;
- (void)_updateSymbolLabelOrientationAnimated:(BOOL)a3;
- (void)_updateValueLabel;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3 animated:(BOOL)a4;
- (void)setApertureValue:(double)a3;
- (void)setExpansionDirection:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setShouldShowApertureValue:(BOOL)a3 animated:(BOOL)a4;
- (void)setTappableEdgeInsets:(UIEdgeInsets)a3;
- (void)setWantsBackground:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation CEKApertureButton

- (CEKApertureButton)initWithFrame:(CGRect)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CEKApertureButton;
  v3 = [(CEKApertureButton *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKApertureButton *)v3 setTintColor:v4];

    v3->_orientation = 1;
    v3->_expansionDirection = 0;
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    v6 = [(CEKApertureButton *)v3 _circleImageWithColor:v5];

    [v6 size];
    v9 = [v6 resizableImageWithCapInsets:1 resizingMode:{v7 * 0.5, v8 * 0.5, v7 * 0.5, v8 * 0.5}];

    v10 = [v9 imageWithRenderingMode:2];

    v38 = v10;
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    objc_storeStrong(&v3->__circleOutlineView, v11);
    v12 = CEKFontOfSizeWeightStyle(1, 14.0, *MEMORY[0x1E69DB978]);
    v13 = CEKLocalizedFrameworkString(@"PORTRAIT_APERTURE_BUTTON_NO_VALUE", 0);
    v14 = CEKLocalizedFrameworkString(@"PORTRAIT_APERTURE_BUTTON_VALUE_FORMAT", 0);
    v15 = [v14 hasPrefix:@"%@"];
    v37 = v14;
    if (v15)
    {
      LOBYTE(v15) = [v14 hasSuffix:{v13, v14}];
    }

    v3->__rightToLeftFormatting = v15;
    v16 = objc_alloc(MEMORY[0x1E69DCC10]);
    v17 = *MEMORY[0x1E695F058];
    v18 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v20 = *(MEMORY[0x1E695F058] + 24);
    v21 = [v16 initWithFrame:{*MEMORY[0x1E695F058], v18, v19, v20}];
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [v21 setBackgroundColor:v22];

    [v21 setFont:v12];
    [v21 setTextAlignment:4];
    [v21 setText:v13];
    objc_storeStrong(&v3->__symbolLabel, v21);
    v23 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle(0, 14.0);
    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v17, v18, v19, v20}];
    v25 = [MEMORY[0x1E69DC888] clearColor];
    [v24 setBackgroundColor:v25];

    [v24 setFont:v23];
    [v24 setTextAlignment:4];
    objc_storeStrong(&v3->__valueLabel, v24);
    v26 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    decimalFormatter = v3->__decimalFormatter;
    v3->__decimalFormatter = v26;

    [(NSNumberFormatter *)v3->__decimalFormatter setPositiveFormat:@"0.0"];
    v28 = [(NSNumberFormatter *)v3->__decimalFormatter stringFromNumber:&unk_1F2FDFB08];
    v29 = [v28 isEqualToString:{@"4, 5"}];

    if (v29)
    {
      [(NSNumberFormatter *)v3->__decimalFormatter setDecimalSeparator:@"."];
    }

    v30 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    wholeNumberFormatter = v3->__wholeNumberFormatter;
    v3->__wholeNumberFormatter = v30;

    [(NSNumberFormatter *)v3->__wholeNumberFormatter setPositiveFormat:@"0"];
    [(CEKApertureButton *)v3 addSubview:v11];
    [v11 addSubview:v21];
    [v11 addSubview:v24];
    [(CEKApertureButton *)v3 _updateColorsAnimated:0];
    [v24 setAlpha:0.0];
    v40 = *MEMORY[0x1E69DB648];
    v41[0] = v12;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [@" " sizeWithAttributes:v32];

    UIRoundToViewScale();
    v3->__cachedSpaceWidth = v33;
    [v21 intrinsicContentSize];
    UICeilToViewScale();
    v3->__cachedSymbolLabelWidth = v34;
    v3->_wantsBackground = 0;
    [(CEKApertureButton *)v3 _updateBackgroundView];
    v35 = v3;
  }

  return v3;
}

- (void)setApertureValue:(double)a3
{
  if (self->_apertureValue != a3)
  {
    self->_apertureValue = a3;
    if ([(CEKApertureButton *)self shouldShowApertureValue])
    {

      [(CEKApertureButton *)self _updateValueLabel];
    }
  }
}

- (void)setShouldShowApertureValue:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_shouldShowApertureValue != a3)
  {
    v14 = v4;
    v15 = v5;
    v6 = a4;
    self->_shouldShowApertureValue = a3;
    if (a3)
    {
      [(CEKApertureButton *)self _updateValueLabel];
    }

    [(CEKApertureButton *)self setNeedsLayout];
    v9 = [(CEKApertureButton *)self delegate];
    [v9 apertureButtonNeedsLayout:self animated:v6];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__CEKApertureButton_setShouldShowApertureValue_animated___block_invoke;
    v12[3] = &unk_1E7CC6AC0;
    v13 = a3;
    v12[4] = self;
    v10 = _Block_copy(v12);
    v11 = v10;
    if (v6)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v10 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      (*(v10 + 2))(v10);
    }

    [(CEKApertureButton *)self _updateSymbolLabelOrientationAnimated:v6];
  }
}

void __57__CEKApertureButton_setShouldShowApertureValue_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) _valueLabel];
  [v2 setAlpha:v1];
}

- (void)_updateValueLabel
{
  [(CEKApertureButton *)self apertureValue];
  v4 = v3;
  if (v3 >= 10.0)
  {
    [(CEKApertureButton *)self _wholeNumberFormatter];
  }

  else
  {
    [(CEKApertureButton *)self _decimalFormatter];
  }
  v13 = ;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v6 = [v13 stringFromNumber:v5];
  v7 = [(CEKApertureButton *)self _valueLabel];
  [v7 setText:v6];

  v8 = [(CEKApertureButton *)self _valueLabel];
  [v8 intrinsicContentSize];

  [(CEKApertureButton *)self _cachedValueLabelWidth];
  v10 = v9;
  UICeilToViewScale();
  [(CEKApertureButton *)self _setCachedValueLabelWidth:?];
  [(CEKApertureButton *)self _cachedValueLabelWidth];
  if (v10 != v11)
  {
    [(CEKApertureButton *)self setNeedsLayout];
    v12 = [(CEKApertureButton *)self delegate];
    [v12 apertureButtonNeedsLayout:self animated:0];
  }
}

- (void)setExpansionDirection:(int64_t)a3
{
  if (self->_expansionDirection != a3)
  {
    self->_expansionDirection = a3;
    [(CEKApertureButton *)self setNeedsLayout];
    v5 = [(CEKApertureButton *)self delegate];
    [v5 apertureButtonNeedsLayout:self animated:0];
  }
}

- (void)setWantsBackground:(BOOL)a3
{
  if (self->_wantsBackground != a3)
  {
    self->_wantsBackground = a3;
    [(CEKApertureButton *)self _updateBackgroundView];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKApertureButton;
  [(CEKApertureButton *)&v3 tintColorDidChange];
  if ([(CEKApertureButton *)self isActive])
  {
    [(CEKApertureButton *)self _updateColorsAnimated:0];
  }
}

- (void)_updateColorsAnimated:(BOOL)a3
{
  if ([(CEKApertureButton *)self isActive])
  {
    v10 = [(CEKApertureButton *)self tintColor];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
    v10 = [v4 colorWithAlphaComponent:0.6];
  }

  if ([(CEKApertureButton *)self isActive])
  {
    v5 = [(CEKApertureButton *)self tintColor];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] labelColor];
    v5 = [v6 colorWithAlphaComponent:1.0];
  }

  v7 = [(CEKApertureButton *)self _circleOutlineView];
  [v7 setTintColor:v10];

  v8 = [(CEKApertureButton *)self _symbolLabel];
  [v8 setTextColor:v5];

  v9 = [(CEKApertureButton *)self _valueLabel];
  [v9 setTextColor:v5];
}

- (void)_updateBackgroundView
{
  v11 = [(CEKApertureButton *)self _circleBackgroundView];
  v3 = [(CEKApertureButton *)self wantsBackground];
  if (!v11 && v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = CEKFrameworkBundle();
    v6 = [v4 imageNamed:@"CEKButtonBackgroundPad" inBundle:v5];

    [v6 size];
    v9 = [v6 resizableImageWithCapInsets:1 resizingMode:{v7 * 0.5, v8 * 0.5, v7 * 0.5, v8 * 0.5}];
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [(CEKApertureButton *)self set_circleBackgroundView:?];
  }

  v10 = [v11 superview];

  if (v3)
  {
    if (v10 != self)
    {
      [(CEKApertureButton *)self insertSubview:v11 atIndex:0];
    }
  }

  else if (v10 == self)
  {
    [v11 removeFromSuperview];
  }
}

- (UIEdgeInsets)_expansionInsets
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([(CEKApertureButton *)self shouldShowApertureValue])
  {
    [(CEKApertureButton *)self _cachedSymbolLabelWidth];
    v8 = v7;
    [(CEKApertureButton *)self _cachedSpaceWidth];
    v10 = v8 + v9;
    [(CEKApertureButton *)self _cachedValueLabelWidth];
    v12 = v10 + v11 + -2.0 + -2.0;
    v13 = [(CEKApertureButton *)self expansionDirection];
    switch(v13)
    {
      case 2:
        UIRoundToViewScale();
        v4 = v4 + v14;
        v6 = v6 + v12 - v14;
        break;
      case 1:
        v6 = v6 + v12;
        break;
      case 0:
        v4 = v4 + v12;
        break;
    }
  }

  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = 22.0;
  v4 = 22.0;
  if ([(CEKApertureButton *)self wantsBackground])
  {
    v5 = [(CEKApertureButton *)self _circleBackgroundView];
    v6 = [v5 image];
    [v6 size];
    v4 = v7;
    v3 = v8;
  }

  v9 = v4;
  v10 = v3;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(CEKApertureButton *)self tappableEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CEKApertureButton *)self _expansionInsets];
  v11.n128_u64[0] = v15.n128_u64[0];
  v12.n128_u64[0] = v16.n128_u64[0];
  v13.n128_u64[0] = v17.n128_u64[0];
  v14.n128_u64[0] = v18.n128_u64[0];
  v15.n128_u64[0] = v4;
  v16.n128_u64[0] = v6;
  v17.n128_u64[0] = v8;
  v18.n128_u64[0] = v10;

  MEMORY[0x1EEE4DCA0](15, v15, v16, v17, v18, v11, v12, v13, v14);
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = CEKApertureButton;
  [(CEKApertureButton *)&v44 layoutSubviews];
  v3 = [(CEKApertureButton *)self _circleOutlineView];
  v4 = [(CEKApertureButton *)self _circleBackgroundView];
  v5 = [(CEKApertureButton *)self _symbolLabel];
  v6 = [(CEKApertureButton *)self _valueLabel];
  [(CEKApertureButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v39 = v11;
  v40 = v12;
  [(CEKApertureButton *)self alignmentRectForFrame:?];
  [(CEKApertureButton *)self _cachedSymbolLabelWidth];
  v41 = v13;
  [(CEKApertureButton *)self _cachedValueLabelWidth];
  v43 = v14;
  v15 = [(CEKApertureButton *)self shouldShowApertureValue];
  UIRectGetCenter();
  UIRectCenteredAboutPointScale();
  [(CEKApertureButton *)self _expansionInsets];
  UIRectInset();
  [(CEKApertureButton *)self _setCenterAndBoundsForView:v3 frame:?];
  [(CEKApertureButton *)self tappableEdgeInsets];
  [v4 setFrame:{v8 + v19, v10 + v16, v39 - (v19 + v17), v40 - (v16 + v18)}];
  [v3 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (v15)
  {
    UIRoundToViewScale();
    v29 = v28;
    v45.origin.x = v21;
    v45.origin.y = v23;
    v45.size.width = v25;
    v45.size.height = v27;
    CGRectGetMaxX(v45);
    UIRoundToViewScale();
    v31 = v41;
  }

  else
  {
    v31 = v41;
    UIRoundToViewScale();
    v29 = v32;
    v46.origin.x = v21;
    v46.origin.y = v23;
    v46.size.width = v25;
    v46.size.height = v27;
    MaxX = CGRectGetMaxX(v46);
  }

  v33 = MaxX - v43;
  if ([(CEKApertureButton *)self _isRightToLeftFormatting])
  {
    v47.origin.x = v21;
    v47.origin.y = v23;
    v47.size.width = v25;
    v47.size.height = v27;
    v34 = CGRectGetMaxX(v47);
    v35 = v29;
    v36 = v31;
    v37 = v34;
    v48.origin.y = 0.0;
    v48.origin.x = v35;
    v48.size.width = v36;
    v48.size.height = v27;
    v42 = v37 - CGRectGetMaxX(v48);
    v49.origin.x = v21;
    v49.origin.y = v23;
    v49.size.width = v25;
    v49.size.height = v27;
    v38 = CGRectGetMaxX(v49);
    v50.origin.y = 0.0;
    v50.origin.x = v33;
    v50.size.width = v43;
    v50.size.height = v27;
    v33 = v38 - CGRectGetMaxX(v50);
    v31 = v36;
    v29 = v42;
  }

  [(CEKApertureButton *)self _setCenterAndBoundsForView:v5 frame:v29, 0.0, v31, v27];
  [(CEKApertureButton *)self _setCenterAndBoundsForView:v6 frame:v33, 0.0, v43, v27];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKApertureButton *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = CEKApertureButton;
  [(CEKApertureButton *)&v8 setHighlighted:v3];
  if (v5 != v3)
  {
    v6 = [(CEKApertureButton *)self _circleOutlineView];
    v7 = [v6 layer];
    [(CEKApertureButton *)self _setLayer:v7 highlighted:v3 animated:1];
  }
}

- (void)setActive:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CEKApertureButton *)self isActive];
  [(CEKApertureButton *)self setSelected:v5];
  if (v7 != v5)
  {

    [(CEKApertureButton *)self _updateColorsAnimated:v4];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = a3;
    [(CEKApertureButton *)self setNeedsLayout];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(CEKApertureButton *)self _updateSymbolLabelOrientationAnimated:a4];
  }
}

- (void)_updateSymbolLabelOrientationAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CEKApertureButton *)self shouldShowApertureValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CEKApertureButton *)self orientation];
  }

  v6 = [(CEKApertureButton *)self _symbolLabel];
  [(CEKApertureButton *)self _rotateView:v6 withInterfaceOrientation:v5 animated:v3];
}

- (id)_circleImageWithColor:(id)a3
{
  v4 = a3;
  v5 = [(CEKApertureButton *)self traitCollection];
  [v5 displayScale];
  v7 = v6;

  v16.origin.x = *MEMORY[0x1E695F058];
  v16.origin.y = *(MEMORY[0x1E695F058] + 8);
  v16.size.width = 22.0;
  v16.size.height = 22.0;
  v17 = CGRectInset(v16, 1.0 / v7 * 3.0 * 0.5, 1.0 / v7 * 3.0 * 0.5);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v17.origin.x = 22.0;
  v17.origin.y = 22.0;
  UIGraphicsBeginImageContextWithOptions(v17.origin, 0, v7);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v4 setStroke];

  CGContextSetLineWidth(CurrentContext, 1.0 / v7 * 3.0);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGContextStrokeEllipseInRect(CurrentContext, v18);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (void)_setCenterAndBoundsForView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v8 = a3;
  UIRectGetCenter();
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  [v8 setCenter:?];
  [v8 setBounds:{v6, v7, width, height}];
}

- (void)_rotateView:(id)a3 withInterfaceOrientation:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  memset(&v20, 0, sizeof(v20));
  if (a4 > 2)
  {
    if (a4 == 4)
    {
      v11 = -1.57079633;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_12;
      }

      v11 = 1.57079633;
    }

LABEL_10:
    CGAffineTransformMakeRotation(&v20, v11);
    v16 = v20;
    UIIntegralTransform();
    *&v20.a = v17;
    *&v20.c = v18;
    v10 = v19;
    goto LABEL_11;
  }

  if (a4 >= 2)
  {
    if (a4 != 2)
    {
      goto LABEL_12;
    }

    v11 = 3.14159265;
    goto LABEL_10;
  }

  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v20.a = *MEMORY[0x1E695EFD0];
  *&v20.c = v9;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
LABEL_11:
  *&v20.tx = v10;
LABEL_12:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  v15 = v20;
  aBlock[2] = __67__CEKApertureButton__rotateView_withInterfaceOrientation_animated___block_invoke;
  aBlock[3] = &unk_1E7CC6B10;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v5)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v12 options:0 animations:0.3 completion:0.0];
  }

  else
  {
    (*(v12 + 2))(v12);
  }
}

uint64_t __67__CEKApertureButton__rotateView_withInterfaceOrientation_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (void)_setLayer:(id)a3 highlighted:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [v8 presentationLayer];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = [v12 valueForKeyPath:@"transform.scale.xy"];
  [v13 doubleValue];
  v15 = v14;

  memset(&v35, 0, sizeof(v35));
  v16 = [v12 valueForKeyPath:@"transform"];
  v17 = v16;
  if (v16)
  {
    [v16 CATransform3DValue];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  memset(&v34, 0, sizeof(v34));
  CATransform3DMakeScale(&v34, v15, v15, 1.0);
  memset(&v33, 0, sizeof(v33));
  a = v34;
  CATransform3DInvert(&b, &a);
  a = v35;
  CATransform3DConcat(&v33, &a, &b);
  if (v6)
  {
    v18 = CEKIsPadLayoutForView(self);
    v19 = 0.9;
    if (v18)
    {
      v19 = 0.94;
    }

    memset(&b, 0, sizeof(b));
    CATransform3DMakeScale(&b, v19, v19, 1.0);
    v30 = v33;
    v29 = b;
    CATransform3DConcat(&a, &v30, &v29);
    v33 = a;
  }

  if (v5)
  {
    UIAnimationDragCoefficient();
    v21 = v20;
    v22 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
    [v22 setMass:0.8];
    [v22 setVelocity:0.0];
    [v22 setDamping:12.0 / v21];
    [v22 setStiffness:300.0 / (v21 * v21)];
    [v22 durationForEpsilon:0.01];
    [v22 setDuration:?];
    LODWORD(v23) = 1041865114;
    LODWORD(v24) = 0.5;
    LODWORD(v25) = 1.0;
    v26 = [MEMORY[0x1E69793D0] functionWithControlPoints:v23 :0.0 :v24 :v25];
    [v22 setTimingFunction:v26];

    b = v35;
    v27 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
    [v22 setFromValue:v27];

    b = v33;
    v28 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
    [v22 setToValue:v28];

    [v8 addAnimation:v22 forKey:@"highlightScaleAnimation"];
  }

  b = v33;
  [v8 setTransform:&b];
}

- (CEKApertureButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end