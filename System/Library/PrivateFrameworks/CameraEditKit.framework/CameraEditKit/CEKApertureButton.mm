@interface CEKApertureButton
- (CEKApertureButton)initWithFrame:(CGRect)frame;
- (CEKApertureButtonDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)_expansionInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)tappableEdgeInsets;
- (id)_circleImageWithColor:(id)color;
- (void)_rotateView:(id)view withInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)_setCenterAndBoundsForView:(id)view frame:(CGRect)frame;
- (void)_setLayer:(id)layer highlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)_updateBackgroundView;
- (void)_updateColorsAnimated:(BOOL)animated;
- (void)_updateSymbolLabelOrientationAnimated:(BOOL)animated;
- (void)_updateValueLabel;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setApertureValue:(double)value;
- (void)setExpansionDirection:(int64_t)direction;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setShouldShowApertureValue:(BOOL)value animated:(BOOL)animated;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
- (void)setWantsBackground:(BOOL)background;
- (void)tintColorDidChange;
@end

@implementation CEKApertureButton

- (CEKApertureButton)initWithFrame:(CGRect)frame
{
  v41[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CEKApertureButton;
  v3 = [(CEKApertureButton *)&v39 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKApertureButton *)v3 setTintColor:systemYellowColor];

    v3->_orientation = 1;
    v3->_expansionDirection = 0;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v6 = [(CEKApertureButton *)v3 _circleImageWithColor:whiteColor];

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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v21 setBackgroundColor:clearColor];

    [v21 setFont:v12];
    [v21 setTextAlignment:4];
    [v21 setText:v13];
    objc_storeStrong(&v3->__symbolLabel, v21);
    v23 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle(0, 14.0);
    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v17, v18, v19, v20}];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v24 setBackgroundColor:clearColor2];

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

- (void)setApertureValue:(double)value
{
  if (self->_apertureValue != value)
  {
    self->_apertureValue = value;
    if ([(CEKApertureButton *)self shouldShowApertureValue])
    {

      [(CEKApertureButton *)self _updateValueLabel];
    }
  }
}

- (void)setShouldShowApertureValue:(BOOL)value animated:(BOOL)animated
{
  if (self->_shouldShowApertureValue != value)
  {
    v14 = v4;
    v15 = v5;
    animatedCopy = animated;
    self->_shouldShowApertureValue = value;
    if (value)
    {
      [(CEKApertureButton *)self _updateValueLabel];
    }

    [(CEKApertureButton *)self setNeedsLayout];
    delegate = [(CEKApertureButton *)self delegate];
    [delegate apertureButtonNeedsLayout:self animated:animatedCopy];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__CEKApertureButton_setShouldShowApertureValue_animated___block_invoke;
    v12[3] = &unk_1E7CC6AC0;
    valueCopy = value;
    v12[4] = self;
    v10 = _Block_copy(v12);
    v11 = v10;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v10 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      (*(v10 + 2))(v10);
    }

    [(CEKApertureButton *)self _updateSymbolLabelOrientationAnimated:animatedCopy];
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
  _valueLabel = [(CEKApertureButton *)self _valueLabel];
  [_valueLabel setText:v6];

  _valueLabel2 = [(CEKApertureButton *)self _valueLabel];
  [_valueLabel2 intrinsicContentSize];

  [(CEKApertureButton *)self _cachedValueLabelWidth];
  v10 = v9;
  UICeilToViewScale();
  [(CEKApertureButton *)self _setCachedValueLabelWidth:?];
  [(CEKApertureButton *)self _cachedValueLabelWidth];
  if (v10 != v11)
  {
    [(CEKApertureButton *)self setNeedsLayout];
    delegate = [(CEKApertureButton *)self delegate];
    [delegate apertureButtonNeedsLayout:self animated:0];
  }
}

- (void)setExpansionDirection:(int64_t)direction
{
  if (self->_expansionDirection != direction)
  {
    self->_expansionDirection = direction;
    [(CEKApertureButton *)self setNeedsLayout];
    delegate = [(CEKApertureButton *)self delegate];
    [delegate apertureButtonNeedsLayout:self animated:0];
  }
}

- (void)setWantsBackground:(BOOL)background
{
  if (self->_wantsBackground != background)
  {
    self->_wantsBackground = background;
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

- (void)_updateColorsAnimated:(BOOL)animated
{
  if ([(CEKApertureButton *)self isActive])
  {
    tintColor = [(CEKApertureButton *)self tintColor];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    tintColor = [labelColor colorWithAlphaComponent:0.6];
  }

  if ([(CEKApertureButton *)self isActive])
  {
    tintColor2 = [(CEKApertureButton *)self tintColor];
  }

  else
  {
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    tintColor2 = [labelColor2 colorWithAlphaComponent:1.0];
  }

  _circleOutlineView = [(CEKApertureButton *)self _circleOutlineView];
  [_circleOutlineView setTintColor:tintColor];

  _symbolLabel = [(CEKApertureButton *)self _symbolLabel];
  [_symbolLabel setTextColor:tintColor2];

  _valueLabel = [(CEKApertureButton *)self _valueLabel];
  [_valueLabel setTextColor:tintColor2];
}

- (void)_updateBackgroundView
{
  _circleBackgroundView = [(CEKApertureButton *)self _circleBackgroundView];
  wantsBackground = [(CEKApertureButton *)self wantsBackground];
  if (!_circleBackgroundView && wantsBackground)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = CEKFrameworkBundle();
    v6 = [v4 imageNamed:@"CEKButtonBackgroundPad" inBundle:v5];

    [v6 size];
    v9 = [v6 resizableImageWithCapInsets:1 resizingMode:{v7 * 0.5, v8 * 0.5, v7 * 0.5, v8 * 0.5}];
    _circleBackgroundView = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [(CEKApertureButton *)self set_circleBackgroundView:?];
  }

  superview = [_circleBackgroundView superview];

  if (wantsBackground)
  {
    if (superview != self)
    {
      [(CEKApertureButton *)self insertSubview:_circleBackgroundView atIndex:0];
    }
  }

  else if (superview == self)
  {
    [_circleBackgroundView removeFromSuperview];
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
    expansionDirection = [(CEKApertureButton *)self expansionDirection];
    switch(expansionDirection)
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
    _circleBackgroundView = [(CEKApertureButton *)self _circleBackgroundView];
    image = [_circleBackgroundView image];
    [image size];
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
  _circleOutlineView = [(CEKApertureButton *)self _circleOutlineView];
  _circleBackgroundView = [(CEKApertureButton *)self _circleBackgroundView];
  _symbolLabel = [(CEKApertureButton *)self _symbolLabel];
  _valueLabel = [(CEKApertureButton *)self _valueLabel];
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
  shouldShowApertureValue = [(CEKApertureButton *)self shouldShowApertureValue];
  UIRectGetCenter();
  UIRectCenteredAboutPointScale();
  [(CEKApertureButton *)self _expansionInsets];
  UIRectInset();
  [(CEKApertureButton *)self _setCenterAndBoundsForView:_circleOutlineView frame:?];
  [(CEKApertureButton *)self tappableEdgeInsets];
  [_circleBackgroundView setFrame:{v8 + v19, v10 + v16, v39 - (v19 + v17), v40 - (v16 + v18)}];
  [_circleOutlineView bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (shouldShowApertureValue)
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

  [(CEKApertureButton *)self _setCenterAndBoundsForView:_symbolLabel frame:v29, 0.0, v31, v27];
  [(CEKApertureButton *)self _setCenterAndBoundsForView:_valueLabel frame:v33, 0.0, v43, v27];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CEKApertureButton *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = CEKApertureButton;
  [(CEKApertureButton *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    _circleOutlineView = [(CEKApertureButton *)self _circleOutlineView];
    layer = [_circleOutlineView layer];
    [(CEKApertureButton *)self _setLayer:layer highlighted:highlightedCopy animated:1];
  }
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  animatedCopy = animated;
  activeCopy = active;
  isActive = [(CEKApertureButton *)self isActive];
  [(CEKApertureButton *)self setSelected:activeCopy];
  if (isActive != activeCopy)
  {

    [(CEKApertureButton *)self _updateColorsAnimated:animatedCopy];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = insets;
    [(CEKApertureButton *)self setNeedsLayout];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(CEKApertureButton *)self _updateSymbolLabelOrientationAnimated:animated];
  }
}

- (void)_updateSymbolLabelOrientationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CEKApertureButton *)self shouldShowApertureValue])
  {
    orientation = 1;
  }

  else
  {
    orientation = [(CEKApertureButton *)self orientation];
  }

  _symbolLabel = [(CEKApertureButton *)self _symbolLabel];
  [(CEKApertureButton *)self _rotateView:_symbolLabel withInterfaceOrientation:orientation animated:animatedCopy];
}

- (id)_circleImageWithColor:(id)color
{
  colorCopy = color;
  traitCollection = [(CEKApertureButton *)self traitCollection];
  [traitCollection displayScale];
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
  [colorCopy setStroke];

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

- (void)_setCenterAndBoundsForView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  viewCopy = view;
  UIRectGetCenter();
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  [viewCopy setCenter:?];
  [viewCopy setBounds:{v6, v7, width, height}];
}

- (void)_rotateView:(id)view withInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  memset(&v20, 0, sizeof(v20));
  if (orientation > 2)
  {
    if (orientation == 4)
    {
      v11 = -1.57079633;
    }

    else
    {
      if (orientation != 3)
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

  if (orientation >= 2)
  {
    if (orientation != 2)
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
  if (animatedCopy)
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

- (void)_setLayer:(id)layer highlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  layerCopy = layer;
  presentationLayer = [layerCopy presentationLayer];
  v10 = presentationLayer;
  if (presentationLayer)
  {
    v11 = presentationLayer;
  }

  else
  {
    v11 = layerCopy;
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
  if (highlightedCopy)
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

  if (animatedCopy)
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

    [layerCopy addAnimation:v22 forKey:@"highlightScaleAnimation"];
  }

  b = v33;
  [layerCopy setTransform:&b];
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