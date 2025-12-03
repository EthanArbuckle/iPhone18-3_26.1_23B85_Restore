@interface HKReferenceRangeView
- (BOOL)_hasReferenceRange;
- (CGRect)_assureLabelFrameWithinBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HKReferenceRangeView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (UIFont)dynamicTypeAnchorFont;
- (id)_configuredPreferredFontForTextStyle:(id)style symbolicTraits:(unsigned int)traits;
- (id)_generateAttributedValueStringWithOverrideColor:(id)color;
- (id)_generateMultilineAttributedValueStringForOriginalString:(id)string;
- (id)unitLabelFont;
- (id)valueLabelFont;
- (void)_applyNormalizedValuesToView;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_layoutCurrentValueOnly;
- (void)_layoutFullReferenceRange;
- (void)_normalizeValuesIfNeeded;
- (void)_setupSubviews;
- (void)_updateContainerBorderColors;
- (void)layoutSubviews;
- (void)setMultiValueSeparator:(id)separator;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithData:(id)data;
@end

@implementation HKReferenceRangeView

- (HKReferenceRangeView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HKReferenceRangeView;
  height = [(HKReferenceRangeView *)&v15 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_configuration, configuration);
    [(HKReferenceRangeView *)v12 _setupSubviews];
    multiValueSeparator = v12->_multiValueSeparator;
    v12->_multiValueSeparator = @" ";
  }

  return v12;
}

- (CGSize)intrinsicContentSize
{
  _hasReferenceRange = [(HKReferenceRangeView *)self _hasReferenceRange];
  v4 = 160.0;
  if (!_hasReferenceRange)
  {
    v4 = 1.79769313e308;
  }

  [(HKReferenceRangeView *)self sizeThatFits:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([(HKReferenceRangeView *)self _hasReferenceRange])
  {
    intrinsicHeight = self->_intrinsicHeight;
    if (intrinsicHeight == 0.0)
    {
      [(HKReferenceRangeView *)self layoutIfNeeded];
      intrinsicHeight = self->_intrinsicHeight;
    }

    *&v7 = 160.0;
  }

  else
  {
    currentValueLabel = [(HKReferenceRangeView *)self currentValueLabel];
    attributedText = [currentValueLabel attributedText];

    [attributedText boundingRectWithSize:1 options:0 context:{width, height}];
    v11 = v10;
    valueLabelFont = [(HKReferenceRangeView *)self valueLabelFont];
    [valueLabelFont lineHeight];
    v14 = v13 * 1.25;

    if (v14 < v11)
    {
      v15 = [(HKReferenceRangeView *)self _generateMultilineAttributedValueStringForOriginalString:attributedText];

      currentValueLabel2 = [(HKReferenceRangeView *)self currentValueLabel];
      [currentValueLabel2 setAttributedText:v15];

      [v15 boundingRectWithSize:1 options:0 context:{width, height}];
      attributedText = v15;
    }

    UICeilToViewScale();
    v7 = v17;
    UICeilToViewScale();
    intrinsicHeight = v18;
  }

  v19 = *&v7;
  v20 = intrinsicHeight;
  result.height = v20;
  result.width = v19;
  return result;
}

- (UIFont)dynamicTypeAnchorFont
{
  if (!self->_dynamicTypeAnchorFont)
  {
    dynamicTypeAnchorFont = [(HKReferenceRangeViewConfiguration *)self->_configuration dynamicTypeAnchorFont];

    if (dynamicTypeAnchorFont)
    {
      [(HKReferenceRangeViewConfiguration *)self->_configuration dynamicTypeAnchorFont];
    }

    else
    {
      [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:0];
    }
    v4 = ;
    dynamicTypeAnchorFont = self->_dynamicTypeAnchorFont;
    self->_dynamicTypeAnchorFont = v4;
  }

  v6 = self->_dynamicTypeAnchorFont;

  return v6;
}

- (id)valueLabelFont
{
  if (!self->_valueFont)
  {
    currentValueValueFontWithRange = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithRange];
    if (currentValueValueFontWithRange && (v4 = currentValueValueFontWithRange, v5 = [(HKReferenceRangeView *)self _hasReferenceRange], v4, v5))
    {
      currentValueValueFontWithRange2 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithRange];
    }

    else
    {
      currentValueValueFontWithoutRange = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithoutRange];
      if (currentValueValueFontWithoutRange && (v8 = currentValueValueFontWithoutRange, v9 = [(HKReferenceRangeView *)self _hasReferenceRange], v8, !v9))
      {
        currentValueValueFontWithRange2 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithoutRange];
      }

      else
      {
        currentValueValueFontWithRange2 = [MEMORY[0x1E69DB878] hk_chrValueCellPrimaryFont];
      }
    }

    valueFont = self->_valueFont;
    self->_valueFont = currentValueValueFontWithRange2;
  }

  v11 = self->_valueFont;

  return v11;
}

- (id)unitLabelFont
{
  if (!self->_unitFont)
  {
    currentValueUnitFont = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueUnitFont];

    if (currentValueUnitFont)
    {
      [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueUnitFont];
    }

    else
    {
      [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
    }
    v4 = ;
    unitFont = self->_unitFont;
    self->_unitFont = v4;
  }

  v6 = self->_unitFont;

  return v6;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = HKReferenceRangeView;
  [(HKReferenceRangeView *)&v9 layoutSubviews];
  if ([(HKReferenceRangeView *)self _hasReferenceRange])
  {
    [(HKReferenceRangeView *)self _layoutFullReferenceRange];
    if ([(HKReferenceRangeViewConfiguration *)self->_configuration hideReferenceRangeValues])
    {
      referenceRangeContainerView = [(HKReferenceRangeView *)self referenceRangeContainerView];
      [referenceRangeContainerView frame];
      self->_intrinsicHeight = CGRectGetMaxY(v10);
    }

    else
    {
      lowValueLabel = [(HKReferenceRangeView *)self lowValueLabel];
      [lowValueLabel frame];
      MaxY = CGRectGetMaxY(v11);

      highValueLabel = [(HKReferenceRangeView *)self highValueLabel];
      [highValueLabel frame];
      v7 = CGRectGetMaxY(v12);

      if (MaxY >= v7)
      {
        v8 = MaxY;
      }

      else
      {
        v8 = v7;
      }

      self->_intrinsicHeight = v8;
    }
  }

  else
  {
    [(HKReferenceRangeView *)self _layoutCurrentValueOnly];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HKReferenceRangeView;
  changeCopy = change;
  [(HKReferenceRangeView *)&v8 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(HKReferenceRangeView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(HKReferenceRangeView *)self _applyNormalizedValuesToView];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = HKReferenceRangeView;
  [(HKReferenceRangeView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(HKReferenceRangeView *)self _updateContainerBorderColors];
  [(HKReferenceRangeView *)self _applyNormalizedValuesToView];
}

- (void)_layoutFullReferenceRange
{
  if (self->_lowValueLabel)
  {
    v3 = self->_highValueLabel != 0;
  }

  else
  {
    v3 = 0;
  }

  [(HKReferenceRangeView *)self bounds];
  v5 = v4;
  lowValueLabel = [(HKReferenceRangeView *)self lowValueLabel];
  [lowValueLabel sizeToFit];

  highValueLabel = [(HKReferenceRangeView *)self highValueLabel];
  [highValueLabel sizeToFit];

  currentValueLabel = [(HKReferenceRangeView *)self currentValueLabel];
  [currentValueLabel sizeToFit];

  outOfRangeLabel = [(HKReferenceRangeView *)self outOfRangeLabel];
  [outOfRangeLabel sizeToFit];

  referenceRangeViewBorderColor = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];

  dynamicTypeAnchorFont = [(HKReferenceRangeView *)self dynamicTypeAnchorFont];
  [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewHeight];
  [dynamicTypeAnchorFont _scaledValueForValue:?];
  UIRoundToViewScale();

  UIRoundToViewScale();
  v12 = 2.0;
  if (!referenceRangeViewBorderColor)
  {
    v12 = 1.5;
  }

  v128 = v12;
  currentValueLabel2 = [(HKReferenceRangeView *)self currentValueLabel];
  [currentValueLabel2 frame];
  CGRectGetHeight(v133);
  [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueToReferenceValuePadding];

  referenceRangeContainerView = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [referenceRangeContainerView frame];

  [(HKReferenceRangeViewConfiguration *)self->_configuration horizontalPadding];
  v127 = v5;
  v15 = hk_rectRoundToViewScale(self);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  referenceRangeContainerView2 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [referenceRangeContainerView2 setFrame:{v15, v17, v19, v21}];

  referenceRangeContainerView3 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  layer = [referenceRangeContainerView3 layer];
  [layer setCornerRadius:v21 * 0.5];

  referenceRangeContainerView4 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [referenceRangeContainerView4 setHidden:0];

  showOutOfRangeIndicator = self->_showOutOfRangeIndicator;
  outOfRangeLabel2 = [(HKReferenceRangeView *)self outOfRangeLabel];
  v28 = outOfRangeLabel2;
  v130 = v15;
  if (showOutOfRangeIndicator)
  {
    [outOfRangeLabel2 frame];
    v30 = v29;
    v31 = v15;
    v33 = v32;

    if (self->_valueDirection)
    {
      v34 = v31 + v19 + -7.5 - v30;
    }

    else
    {
      v34 = v31 + 7.5;
    }

    outOfRangeLabel3 = [(HKReferenceRangeView *)self outOfRangeLabel];
    [outOfRangeLabel3 setFrame:{v34, v17 + (v21 - v33) * 0.5, v30, v33}];

    outOfRangeLabel2 = [(HKReferenceRangeView *)self outOfRangeLabel];
    v28 = outOfRangeLabel2;
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  [outOfRangeLabel2 setHidden:v36];

  currentValueView = [(HKReferenceRangeView *)self currentValueView];
  [currentValueView setHidden:showOutOfRangeIndicator];

  referenceRangeView = [(HKReferenceRangeView *)self referenceRangeView];
  [referenceRangeView frame];

  v39 = self->_showOutOfRangeIndicator;
  if (v39)
  {
    if (self->_valueDirection)
    {
      LOBYTE(v39) = 1;
    }

    else
    {
      referenceRangeContainerView = self->_referenceRangeContainerView;
      [(UILabel *)self->_outOfRangeLabel frame];
      [(UIView *)referenceRangeContainerView convertRect:self fromView:?];
      CGRectGetMaxX(v134);
      LOBYTE(v39) = self->_showOutOfRangeIndicator;
    }
  }

  v129 = v17;
  if (v39 && self->_valueDirection == 2)
  {
    v41 = self->_referenceRangeContainerView;
    [(UILabel *)self->_outOfRangeLabel frame];
    [(UIView *)v41 convertRect:self fromView:?];
    CGRectGetMinX(v135);
  }

  v42 = hk_rectRoundToViewScale(self);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  referenceRangeView2 = [(HKReferenceRangeView *)self referenceRangeView];
  [referenceRangeView2 setFrame:{v42, v44, v46, v48}];

  referenceRangeView3 = [(HKReferenceRangeView *)self referenceRangeView];
  layer2 = [referenceRangeView3 layer];
  [layer2 setCornerRadius:v48 * 0.5];

  v136.origin.x = v42;
  v136.origin.y = v44;
  rect = v46;
  v136.size.width = v46;
  v136.size.height = v48;
  CGRectInset(v136, v128, v128);
  UIRoundToViewScale();
  v52 = hk_rectRoundToViewScale(self);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  currentValueView2 = [(HKReferenceRangeView *)self currentValueView];
  [currentValueView2 setFrame:{v52, v54, v56, v58}];

  currentValueView3 = [(HKReferenceRangeView *)self currentValueView];
  layer3 = [currentValueView3 layer];
  [layer3 setCornerRadius:v58 * 0.5];

  if (v3)
  {
    lowValueLabel2 = [(HKReferenceRangeView *)self lowValueLabel];
    [lowValueLabel2 frame];
    v64 = v63;
    v66 = v65;

    referenceRangeContainerView5 = [(HKReferenceRangeView *)self referenceRangeContainerView];
    [referenceRangeContainerView5 frame];
    MaxY = CGRectGetMaxY(v137);
    dynamicTypeAnchorFont2 = [(HKReferenceRangeView *)self dynamicTypeAnchorFont];
    [(HKReferenceRangeViewConfiguration *)self->_configuration referenceValueYOffset];
    [dynamicTypeAnchorFont2 _scaledValueForValue:?];
    v71 = MaxY + v70;

    [(HKReferenceRangeView *)self _assureLabelFrameWithinBounds:v130 + v42, v71, v64, v66];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    lowValueLabel3 = [(HKReferenceRangeView *)self lowValueLabel];
    [lowValueLabel3 setFrame:{v73, v75, v77, v79}];

    lowValueLabel4 = [(HKReferenceRangeView *)self lowValueLabel];
    [lowValueLabel4 setHidden:0];

    highValueLabel2 = [(HKReferenceRangeView *)self highValueLabel];
    [highValueLabel2 frame];
    v84 = v83;
    v86 = v85;

    v138.origin.x = v42;
    v138.origin.y = v44;
    v138.size.width = rect;
    v138.size.height = v48;
    v87 = v130 + CGRectGetMaxX(v138) - v84;
    lowValueLabel5 = [(HKReferenceRangeView *)self lowValueLabel];
    [lowValueLabel5 frame];
    v90 = v89;

    [(HKReferenceRangeView *)self _assureLabelFrameWithinBounds:v87, v90, v84, v86];
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    highValueLabel3 = [(HKReferenceRangeView *)self highValueLabel];
    [highValueLabel3 setFrame:{v92, v94, v96, v98}];

    highValueLabel4 = [(HKReferenceRangeView *)self highValueLabel];
    [highValueLabel4 setHidden:0];
  }

  currentValueLabel3 = [(HKReferenceRangeView *)self currentValueLabel];
  [currentValueLabel3 frame];
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;

  v139.origin.x = v103;
  v139.origin.y = v105;
  v139.size.width = v107;
  v139.size.height = v109;
  v110 = v129 - CGRectGetHeight(v139);
  [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueToReferenceValuePadding];
  v112 = v110 - v111;
  valueDirection = self->_valueDirection;
  [(HKReferenceRangeViewConfiguration *)self->_configuration horizontalPadding];
  v115 = v114;
  if (valueDirection == 1)
  {
    v140.origin.x = v103;
    v140.origin.y = v112;
    v140.size.width = v107;
    v140.size.height = v109;
    CGRectGetWidth(v140);
    UIRoundToViewScale();
    if (v115 >= v116)
    {
      v116 = v115;
    }
  }

  else
  {
    v116 = v114 + 7.5;
    v107 = v127 + (v115 + 7.5) * -2.0;
  }

  [(HKReferenceRangeView *)self _assureLabelFrameWithinBounds:v116, v112, v107, v109];
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;
  currentValueLabel4 = [(HKReferenceRangeView *)self currentValueLabel];
  [currentValueLabel4 setFrame:{v118, v120, v122, v124}];

  currentValueLabel5 = [(HKReferenceRangeView *)self currentValueLabel];
  [currentValueLabel5 setHidden:0];
}

- (CGRect)_assureLabelFrameWithinBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  v7 = fmax(bounds.origin.x, 0.0);
  [(HKReferenceRangeView *)self bounds];
  CGRectGetWidth(v13);
  v14.origin.x = v7;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetWidth(v14);
  [(HKReferenceRangeView *)self bounds];
  CGRectGetWidth(v15);

  v8 = hk_rectRoundToViewScale(self);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_layoutCurrentValueOnly
{
  currentValueView = [(HKReferenceRangeView *)self currentValueView];
  [currentValueView setHidden:1];

  referenceRangeContainerView = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [referenceRangeContainerView setHidden:1];

  lowValueLabel = [(HKReferenceRangeView *)self lowValueLabel];
  [lowValueLabel setHidden:1];

  highValueLabel = [(HKReferenceRangeView *)self highValueLabel];
  [highValueLabel setHidden:1];

  outOfRangeLabel = [(HKReferenceRangeView *)self outOfRangeLabel];
  [outOfRangeLabel setHidden:1];

  [(HKReferenceRangeView *)self bounds];
  v9 = v8;
  [(HKReferenceRangeView *)self bounds];
  v11 = v10;
  currentValueLabel = [(HKReferenceRangeView *)self currentValueLabel];
  [currentValueLabel setFrame:{0.0, 0.0, v9, v11}];
}

- (void)updateWithData:(id)data
{
  [(HKReferenceRangeView *)self setData:data];
  [(HKReferenceRangeView *)self setValueFont:0];
  [(HKReferenceRangeView *)self setOverriddenValueFont:0];

  [(HKReferenceRangeView *)self _applyNormalizedValuesToView];
}

- (BOOL)_hasReferenceRange
{
  rangeLow = [(HKReferenceRangeViewData *)self->_data rangeLow];
  if (rangeLow)
  {
    v4 = 1;
  }

  else
  {
    rangeHigh = [(HKReferenceRangeViewData *)self->_data rangeHigh];
    v4 = rangeHigh != 0;
  }

  return v4;
}

- (void)setMultiValueSeparator:(id)separator
{
  if (self->_multiValueSeparator != separator)
  {
    v4 = [separator copy];
    multiValueSeparator = self->_multiValueSeparator;
    self->_multiValueSeparator = v4;

    [(HKReferenceRangeView *)self _applyNormalizedValuesToView];
  }
}

- (void)_updateContainerBorderColors
{
  referenceRangeViewBorderColor = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];

  if (referenceRangeViewBorderColor)
  {
    referenceRangeViewBorderColor2 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];
    v4 = referenceRangeViewBorderColor2;
    cGColor = [referenceRangeViewBorderColor2 CGColor];
    referenceRangeContainerView = [(HKReferenceRangeView *)self referenceRangeContainerView];
    layer = [referenceRangeContainerView layer];
    [layer setBorderColor:cGColor];
  }
}

- (void)_setupSubviews
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  [(HKReferenceRangeView *)self setReferenceRangeContainerView:v8];

  referenceRangeViewColor = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewColor];
  referenceRangeContainerView = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [referenceRangeContainerView setBackgroundColor:referenceRangeViewColor];

  referenceRangeViewBorderColor = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];
  if (referenceRangeViewBorderColor)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  referenceRangeContainerView2 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  layer = [referenceRangeContainerView2 layer];
  [layer setBorderWidth:v12];

  [(HKReferenceRangeView *)self _updateContainerBorderColors];
  v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [(HKReferenceRangeView *)self setReferenceRangeView:v15];

  opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  referenceRangeView = [(HKReferenceRangeView *)self referenceRangeView];
  [referenceRangeView setBackgroundColor:opaqueSeparatorColor];

  v18 = [[HKReferenceRangeDotView alloc] initWithFrame:v4, v5, v6, v7];
  [(HKReferenceRangeView *)self setCurrentValueView:v18];

  if (![(HKReferenceRangeViewConfiguration *)self->_configuration hideReferenceRangeValues])
  {
    v19 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
    [(HKReferenceRangeView *)self setLowValueLabel:v19];

    v20 = MEMORY[0x1E69DB878];
    referenceRangeTextStyle = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeTextStyle];
    v22 = [v20 hk_preferredFontForTextStyle:referenceRangeTextStyle symbolicTraits:2];
    lowValueLabel = [(HKReferenceRangeView *)self lowValueLabel];
    [lowValueLabel setFont:v22];

    referenceValueTextColor = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceValueTextColor];
    lowValueLabel2 = [(HKReferenceRangeView *)self lowValueLabel];
    [lowValueLabel2 setTextColor:referenceValueTextColor];

    v26 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
    [(HKReferenceRangeView *)self setHighValueLabel:v26];

    v27 = MEMORY[0x1E69DB878];
    referenceRangeTextStyle2 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeTextStyle];
    v29 = [v27 hk_preferredFontForTextStyle:referenceRangeTextStyle2 symbolicTraits:2];
    highValueLabel = [(HKReferenceRangeView *)self highValueLabel];
    [highValueLabel setFont:v29];

    referenceValueTextColor2 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceValueTextColor];
    highValueLabel2 = [(HKReferenceRangeView *)self highValueLabel];
    [highValueLabel2 setTextColor:referenceValueTextColor2];
  }

  v33 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
  [(HKReferenceRangeView *)self setCurrentValueLabel:v33];

  currentValueTextColor = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
  currentValueLabel = [(HKReferenceRangeView *)self currentValueLabel];
  [currentValueLabel setTextColor:currentValueTextColor];

  v36 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
  [(HKReferenceRangeView *)self setOutOfRangeLabel:v36];

  v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v38 = [v37 localizedStringForKey:@"RECORDS_OUT_OF_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  localizedUppercaseString = [v38 localizedUppercaseString];
  outOfRangeLabel = [(HKReferenceRangeView *)self outOfRangeLabel];
  [outOfRangeLabel setText:localizedUppercaseString];

  v41 = [MEMORY[0x1E69DB878] hk_preferredFontIgnoringAccessibilitySizeForTextStyle:*MEMORY[0x1E69DDD08] symbolicTraits:2];
  outOfRangeLabel2 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [outOfRangeLabel2 setFont:v41];

  _outOfRangeColor = [(HKReferenceRangeView *)self _outOfRangeColor];
  outOfRangeLabel3 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [outOfRangeLabel3 setTextColor:_outOfRangeColor];

  outOfRangeLabel4 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [outOfRangeLabel4 setHidden:1];

  referenceRangeContainerView3 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [(HKReferenceRangeView *)self addSubview:referenceRangeContainerView3];

  referenceRangeContainerView4 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  referenceRangeView2 = [(HKReferenceRangeView *)self referenceRangeView];
  [referenceRangeContainerView4 addSubview:referenceRangeView2];

  referenceRangeContainerView5 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  currentValueView = [(HKReferenceRangeView *)self currentValueView];
  [referenceRangeContainerView5 addSubview:currentValueView];

  if (self->_lowValueLabel && self->_highValueLabel)
  {
    lowValueLabel3 = [(HKReferenceRangeView *)self lowValueLabel];
    [(HKReferenceRangeView *)self addSubview:lowValueLabel3];

    highValueLabel3 = [(HKReferenceRangeView *)self highValueLabel];
    [(HKReferenceRangeView *)self addSubview:highValueLabel3];
  }

  currentValueLabel2 = [(HKReferenceRangeView *)self currentValueLabel];
  [(HKReferenceRangeView *)self addSubview:currentValueLabel2];

  outOfRangeLabel5 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [(HKReferenceRangeView *)self addSubview:outOfRangeLabel5];
}

- (void)_normalizeValuesIfNeeded
{
  if ([(HKReferenceRangeView *)self _hasReferenceRange])
  {
    rangeLow = [(HKReferenceRangeViewData *)self->_data rangeLow];

    rangeHigh = [(HKReferenceRangeViewData *)self->_data rangeHigh];

    value = [(HKReferenceRangeViewData *)self->_data value];
    [value doubleValue];
    v7 = v6;
    v8 = v6;

    v9 = v8;
    if (rangeLow)
    {
      rangeLow2 = [(HKReferenceRangeViewData *)self->_data rangeLow];
      [rangeLow2 doubleValue];
      v9 = v11;
    }

    if (rangeHigh)
    {
      rangeHigh2 = [(HKReferenceRangeViewData *)self->_data rangeHigh];
      [rangeHigh2 doubleValue];
      v8 = v13;
    }

    self->_lowValueXPosition = 0.25;
    self->_highValueXPosition = 0.75;
    if (!rangeLow)
    {
      self->_lowValueXPosition = 0.0;
      v14 = vabdd_f64(v8, v7);
      v9 = v14 <= 2.22044605e-16 ? v8 + -1.0 : v8 + v14 * -2.0;
      if (v8 - v7 >= 2.22044605e-16)
      {
        v19 = self->_highValueXPosition * 0.5;
        goto LABEL_33;
      }
    }

    if (!rangeHigh)
    {
      self->_highValueXPosition = 1.0;
      v15 = vabdd_f64(v9, v7);
      v8 = v15 <= 2.22044605e-16 ? v9 + 1.0 : v9 + v15 * 2.0;
      if (v7 - v9 >= 2.22044605e-16)
      {
        v19 = self->_lowValueXPosition + (1.0 - self->_lowValueXPosition) * 0.5;
        goto LABEL_33;
      }
    }

    if (v8 >= v7)
    {
      v16 = v8;
    }

    else
    {
      v16 = v7;
    }

    if (v9 >= v7)
    {
      v17 = v7;
    }

    else
    {
      v17 = v9;
    }

    v18 = v8 - v9;
    if (HKUIEqualDoubles(v16 - v17, v18))
    {
      v19 = self->_lowValueXPosition + (v7 - v9) / v18 * 0.5;
LABEL_33:
      self->_currentValueXPosition = v19;
      self->_valueDirection = 1;
      self->_showOutOfRangeIndicator = 0;
      return;
    }

    if (v7 >= v9)
    {
      self->_valueDirection = 2;
      self->_showOutOfRangeIndicator = 1;
      v21 = 0.5;
      if (rangeLow)
      {
        if ([(HKReferenceRangeViewConfiguration *)self->_configuration hideReferenceRangeValues])
        {
          self->_lowValueXPosition = 0.0;
        }

        else
        {
          v22 = self->_lowValueXPosition + -0.1;
          self->_lowValueXPosition = 0.1;
          v21 = self->_highValueXPosition - v22;
        }
      }

      self->_highValueXPosition = v21;
      self->_currentValueXPosition = 0.0;
    }

    else
    {
      self->_valueDirection = 0;
      self->_showOutOfRangeIndicator = 1;
      if (rangeHigh)
      {
        if ([(HKReferenceRangeViewConfiguration *)self->_configuration hideReferenceRangeValues])
        {
          self->_lowValueXPosition = 0.5;
          v20 = 1.0;
        }

        else
        {
          self->_lowValueXPosition = self->_lowValueXPosition + self->_lowValueXPosition + -0.1;
          v20 = 0.9;
        }

        self->_highValueXPosition = v20;
      }

      else
      {
        self->_lowValueXPosition = 0.5;
      }

      self->_currentValueXPosition = 1.0;
    }
  }
}

- (void)_applyNormalizedValuesToView
{
  if ([(HKReferenceRangeView *)self _hasReferenceRange])
  {
    [(HKReferenceRangeView *)self _normalizeValuesIfNeeded];
    rangeLowString = [(HKReferenceRangeViewData *)self->_data rangeLowString];
    lowValueLabel = [(HKReferenceRangeView *)self lowValueLabel];
    [lowValueLabel setText:rangeLowString];

    rangeHighString = [(HKReferenceRangeViewData *)self->_data rangeHighString];
    highValueLabel = [(HKReferenceRangeView *)self highValueLabel];
    [highValueLabel setText:rangeHighString];

    if (self->_valueDirection == 1)
    {
      currentValueLabel = [(HKReferenceRangeView *)self currentValueLabel];
      [currentValueLabel setTextAlignment:4];
      _outOfRangeColor = 0;
    }

    else
    {
      _outOfRangeColor = [(HKReferenceRangeView *)self _outOfRangeColor];
      valueDirection = self->_valueDirection;
      currentValueLabel2 = [(HKReferenceRangeView *)self currentValueLabel];
      currentValueLabel = currentValueLabel2;
      if (valueDirection)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      [currentValueLabel2 setTextAlignment:v10];
    }

    currentValueTextColor = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
    currentValueView = [(HKReferenceRangeView *)self currentValueView];
    [currentValueView setDotColor:currentValueTextColor];

    currentValueLabel3 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel3 setNumberOfLines:1];

    currentValueLabel4 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel4 setLineBreakMode:4];

    v21 = [(HKReferenceRangeView *)self _generateAttributedValueStringWithOverrideColor:_outOfRangeColor];
    currentValueLabel5 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel5 setAttributedText:v21];

    currentValueLabel6 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel6 sizeToFit];
  }

  else
  {
    if ([(HKReferenceRangeViewData *)self->_data useOutOfRangeValueColor])
    {
      _outOfRangeColor = [(HKReferenceRangeView *)self _outOfRangeColor];
    }

    else
    {
      _outOfRangeColor = 0;
    }

    currentValueNumLinesIfNoRange = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueNumLinesIfNoRange];
    currentValueLabel7 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel7 setNumberOfLines:currentValueNumLinesIfNoRange];

    currentValueLabel8 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel8 setTextAlignment:4];

    currentValueLabel9 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel9 setLineBreakMode:0];

    currentValueLabel6 = [(HKReferenceRangeView *)self _generateAttributedValueStringWithOverrideColor:_outOfRangeColor];
    currentValueLabel10 = [(HKReferenceRangeView *)self currentValueLabel];
    [currentValueLabel10 setAttributedText:currentValueLabel6];
  }

  [(HKReferenceRangeView *)self invalidateIntrinsicContentSize];
  [(HKReferenceRangeView *)self setNeedsLayout];
}

- (id)_generateAttributedValueStringWithOverrideColor:(id)color
{
  v36[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  valueString = [(HKReferenceRangeViewData *)self->_data valueString];
  v7 = [valueString length];
  v8 = MEMORY[0x1E69DB648];
  v9 = MEMORY[0x1E69DB650];
  if (v7)
  {
    if (colorCopy)
    {
      currentValueTextColor = colorCopy;
    }

    else
    {
      currentValueTextColor = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
    }

    v11 = currentValueTextColor;
    v35[0] = *v8;
    valueLabelFont = [(HKReferenceRangeView *)self valueLabelFont];
    v35[1] = *v9;
    v36[0] = valueLabelFont;
    v36[1] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:valueString attributes:v13];
    [v5 addObject:v14];
  }

  unitString = [(HKReferenceRangeViewData *)self->_data unitString];
  if ([unitString length])
  {
    if (colorCopy)
    {
      v16 = colorCopy;
    }

    else
    {
      currentValueUnitTextColor = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueUnitTextColor];
      v18 = currentValueUnitTextColor;
      if (currentValueUnitTextColor)
      {
        currentValueTextColor2 = currentValueUnitTextColor;
      }

      else
      {
        currentValueTextColor2 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
      }

      v16 = currentValueTextColor2;
    }

    v33[0] = *v8;
    v20 = v33[0];
    unitLabelFont = [(HKReferenceRangeView *)self unitLabelFont];
    v22 = *v9;
    v34[0] = unitLabelFont;
    v34[1] = v16;
    v23 = *MEMORY[0x1E69DB660];
    v33[1] = v22;
    v33[2] = v23;
    v34[2] = &unk_1F43848F0;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v24];
    [v5 addObject:v25];
    v31[0] = v20;
    unitLabelFont2 = [(HKReferenceRangeView *)self unitLabelFont];
    v31[1] = v22;
    v32[0] = unitLabelFont2;
    v32[1] = v16;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

    v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:unitString attributes:v27];
    [v5 addObject:v28];
  }

  if ([v5 count])
  {
    v29 = HKUIJoinAttributedStringsForLocale(v5);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)_generateMultilineAttributedValueStringForOriginalString:(id)string
{
  v11[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = stringCopy;
  if (self->_overriddenValueFont)
  {
    v6 = stringCopy;
  }

  else
  {
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(HKReferenceRangeView *)self setOverriddenValueFont:v7];
    v6 = [v5 mutableCopy];
    v10 = *MEMORY[0x1E69DB648];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v6 setAttributes:v8 range:{0, objc_msgSend(v5, "length")}];
  }

  return v6;
}

- (id)_configuredPreferredFontForTextStyle:(id)style symbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:style];
  fontDescriptor = [v5 fontDescriptor];
  v7 = [fontDescriptor fontDescriptorWithSymbolicTraits:v4];

  v8 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v9 = [v8 fontWithDescriptor:v7 size:?];

  return v9;
}

@end