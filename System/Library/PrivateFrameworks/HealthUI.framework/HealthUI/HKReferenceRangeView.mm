@interface HKReferenceRangeView
- (BOOL)_hasReferenceRange;
- (CGRect)_assureLabelFrameWithinBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HKReferenceRangeView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (UIFont)dynamicTypeAnchorFont;
- (id)_configuredPreferredFontForTextStyle:(id)a3 symbolicTraits:(unsigned int)a4;
- (id)_generateAttributedValueStringWithOverrideColor:(id)a3;
- (id)_generateMultilineAttributedValueStringForOriginalString:(id)a3;
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
- (void)setMultiValueSeparator:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithData:(id)a3;
@end

@implementation HKReferenceRangeView

- (HKReferenceRangeView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HKReferenceRangeView;
  v11 = [(HKReferenceRangeView *)&v15 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a4);
    [(HKReferenceRangeView *)v12 _setupSubviews];
    multiValueSeparator = v12->_multiValueSeparator;
    v12->_multiValueSeparator = @" ";
  }

  return v12;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(HKReferenceRangeView *)self _hasReferenceRange];
  v4 = 160.0;
  if (!v3)
  {
    v4 = 1.79769313e308;
  }

  [(HKReferenceRangeView *)self sizeThatFits:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
    v8 = [(HKReferenceRangeView *)self currentValueLabel];
    v9 = [v8 attributedText];

    [v9 boundingRectWithSize:1 options:0 context:{width, height}];
    v11 = v10;
    v12 = [(HKReferenceRangeView *)self valueLabelFont];
    [v12 lineHeight];
    v14 = v13 * 1.25;

    if (v14 < v11)
    {
      v15 = [(HKReferenceRangeView *)self _generateMultilineAttributedValueStringForOriginalString:v9];

      v16 = [(HKReferenceRangeView *)self currentValueLabel];
      [v16 setAttributedText:v15];

      [v15 boundingRectWithSize:1 options:0 context:{width, height}];
      v9 = v15;
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
    v3 = [(HKReferenceRangeViewConfiguration *)self->_configuration dynamicTypeAnchorFont];

    if (v3)
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
    v3 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithRange];
    if (v3 && (v4 = v3, v5 = [(HKReferenceRangeView *)self _hasReferenceRange], v4, v5))
    {
      v6 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithRange];
    }

    else
    {
      v7 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithoutRange];
      if (v7 && (v8 = v7, v9 = [(HKReferenceRangeView *)self _hasReferenceRange], v8, !v9))
      {
        v6 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueValueFontWithoutRange];
      }

      else
      {
        v6 = [MEMORY[0x1E69DB878] hk_chrValueCellPrimaryFont];
      }
    }

    valueFont = self->_valueFont;
    self->_valueFont = v6;
  }

  v11 = self->_valueFont;

  return v11;
}

- (id)unitLabelFont
{
  if (!self->_unitFont)
  {
    v3 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueUnitFont];

    if (v3)
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
      v3 = [(HKReferenceRangeView *)self referenceRangeContainerView];
      [v3 frame];
      self->_intrinsicHeight = CGRectGetMaxY(v10);
    }

    else
    {
      v4 = [(HKReferenceRangeView *)self lowValueLabel];
      [v4 frame];
      MaxY = CGRectGetMaxY(v11);

      v6 = [(HKReferenceRangeView *)self highValueLabel];
      [v6 frame];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HKReferenceRangeView;
  v4 = a3;
  [(HKReferenceRangeView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(HKReferenceRangeView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
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
  v6 = [(HKReferenceRangeView *)self lowValueLabel];
  [v6 sizeToFit];

  v7 = [(HKReferenceRangeView *)self highValueLabel];
  [v7 sizeToFit];

  v8 = [(HKReferenceRangeView *)self currentValueLabel];
  [v8 sizeToFit];

  v9 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [v9 sizeToFit];

  v10 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];

  v11 = [(HKReferenceRangeView *)self dynamicTypeAnchorFont];
  [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewHeight];
  [v11 _scaledValueForValue:?];
  UIRoundToViewScale();

  UIRoundToViewScale();
  v12 = 2.0;
  if (!v10)
  {
    v12 = 1.5;
  }

  v128 = v12;
  v13 = [(HKReferenceRangeView *)self currentValueLabel];
  [v13 frame];
  CGRectGetHeight(v133);
  [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueToReferenceValuePadding];

  v14 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [v14 frame];

  [(HKReferenceRangeViewConfiguration *)self->_configuration horizontalPadding];
  v127 = v5;
  v15 = hk_rectRoundToViewScale(self);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [v22 setFrame:{v15, v17, v19, v21}];

  v23 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  v24 = [v23 layer];
  [v24 setCornerRadius:v21 * 0.5];

  v25 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [v25 setHidden:0];

  showOutOfRangeIndicator = self->_showOutOfRangeIndicator;
  v27 = [(HKReferenceRangeView *)self outOfRangeLabel];
  v28 = v27;
  v130 = v15;
  if (showOutOfRangeIndicator)
  {
    [v27 frame];
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

    v35 = [(HKReferenceRangeView *)self outOfRangeLabel];
    [v35 setFrame:{v34, v17 + (v21 - v33) * 0.5, v30, v33}];

    v27 = [(HKReferenceRangeView *)self outOfRangeLabel];
    v28 = v27;
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  [v27 setHidden:v36];

  v37 = [(HKReferenceRangeView *)self currentValueView];
  [v37 setHidden:showOutOfRangeIndicator];

  v38 = [(HKReferenceRangeView *)self referenceRangeView];
  [v38 frame];

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
  v49 = [(HKReferenceRangeView *)self referenceRangeView];
  [v49 setFrame:{v42, v44, v46, v48}];

  v50 = [(HKReferenceRangeView *)self referenceRangeView];
  v51 = [v50 layer];
  [v51 setCornerRadius:v48 * 0.5];

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
  v59 = [(HKReferenceRangeView *)self currentValueView];
  [v59 setFrame:{v52, v54, v56, v58}];

  v60 = [(HKReferenceRangeView *)self currentValueView];
  v61 = [v60 layer];
  [v61 setCornerRadius:v58 * 0.5];

  if (v3)
  {
    v62 = [(HKReferenceRangeView *)self lowValueLabel];
    [v62 frame];
    v64 = v63;
    v66 = v65;

    v67 = [(HKReferenceRangeView *)self referenceRangeContainerView];
    [v67 frame];
    MaxY = CGRectGetMaxY(v137);
    v69 = [(HKReferenceRangeView *)self dynamicTypeAnchorFont];
    [(HKReferenceRangeViewConfiguration *)self->_configuration referenceValueYOffset];
    [v69 _scaledValueForValue:?];
    v71 = MaxY + v70;

    [(HKReferenceRangeView *)self _assureLabelFrameWithinBounds:v130 + v42, v71, v64, v66];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [(HKReferenceRangeView *)self lowValueLabel];
    [v80 setFrame:{v73, v75, v77, v79}];

    v81 = [(HKReferenceRangeView *)self lowValueLabel];
    [v81 setHidden:0];

    v82 = [(HKReferenceRangeView *)self highValueLabel];
    [v82 frame];
    v84 = v83;
    v86 = v85;

    v138.origin.x = v42;
    v138.origin.y = v44;
    v138.size.width = rect;
    v138.size.height = v48;
    v87 = v130 + CGRectGetMaxX(v138) - v84;
    v88 = [(HKReferenceRangeView *)self lowValueLabel];
    [v88 frame];
    v90 = v89;

    [(HKReferenceRangeView *)self _assureLabelFrameWithinBounds:v87, v90, v84, v86];
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = [(HKReferenceRangeView *)self highValueLabel];
    [v99 setFrame:{v92, v94, v96, v98}];

    v100 = [(HKReferenceRangeView *)self highValueLabel];
    [v100 setHidden:0];
  }

  v101 = [(HKReferenceRangeView *)self currentValueLabel];
  [v101 frame];
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
  v125 = [(HKReferenceRangeView *)self currentValueLabel];
  [v125 setFrame:{v118, v120, v122, v124}];

  v131 = [(HKReferenceRangeView *)self currentValueLabel];
  [v131 setHidden:0];
}

- (CGRect)_assureLabelFrameWithinBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  v7 = fmax(a3.origin.x, 0.0);
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
  v3 = [(HKReferenceRangeView *)self currentValueView];
  [v3 setHidden:1];

  v4 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [v4 setHidden:1];

  v5 = [(HKReferenceRangeView *)self lowValueLabel];
  [v5 setHidden:1];

  v6 = [(HKReferenceRangeView *)self highValueLabel];
  [v6 setHidden:1];

  v7 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [v7 setHidden:1];

  [(HKReferenceRangeView *)self bounds];
  v9 = v8;
  [(HKReferenceRangeView *)self bounds];
  v11 = v10;
  v12 = [(HKReferenceRangeView *)self currentValueLabel];
  [v12 setFrame:{0.0, 0.0, v9, v11}];
}

- (void)updateWithData:(id)a3
{
  [(HKReferenceRangeView *)self setData:a3];
  [(HKReferenceRangeView *)self setValueFont:0];
  [(HKReferenceRangeView *)self setOverriddenValueFont:0];

  [(HKReferenceRangeView *)self _applyNormalizedValuesToView];
}

- (BOOL)_hasReferenceRange
{
  v3 = [(HKReferenceRangeViewData *)self->_data rangeLow];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HKReferenceRangeViewData *)self->_data rangeHigh];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)setMultiValueSeparator:(id)a3
{
  if (self->_multiValueSeparator != a3)
  {
    v4 = [a3 copy];
    multiValueSeparator = self->_multiValueSeparator;
    self->_multiValueSeparator = v4;

    [(HKReferenceRangeView *)self _applyNormalizedValuesToView];
  }
}

- (void)_updateContainerBorderColors
{
  v3 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];

  if (v3)
  {
    v8 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];
    v4 = v8;
    v5 = [v8 CGColor];
    v6 = [(HKReferenceRangeView *)self referenceRangeContainerView];
    v7 = [v6 layer];
    [v7 setBorderColor:v5];
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

  v9 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewColor];
  v10 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [v10 setBackgroundColor:v9];

  v11 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeViewBorderColor];
  if (v11)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  v14 = [v13 layer];
  [v14 setBorderWidth:v12];

  [(HKReferenceRangeView *)self _updateContainerBorderColors];
  v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [(HKReferenceRangeView *)self setReferenceRangeView:v15];

  v16 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  v17 = [(HKReferenceRangeView *)self referenceRangeView];
  [v17 setBackgroundColor:v16];

  v18 = [[HKReferenceRangeDotView alloc] initWithFrame:v4, v5, v6, v7];
  [(HKReferenceRangeView *)self setCurrentValueView:v18];

  if (![(HKReferenceRangeViewConfiguration *)self->_configuration hideReferenceRangeValues])
  {
    v19 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
    [(HKReferenceRangeView *)self setLowValueLabel:v19];

    v20 = MEMORY[0x1E69DB878];
    v21 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeTextStyle];
    v22 = [v20 hk_preferredFontForTextStyle:v21 symbolicTraits:2];
    v23 = [(HKReferenceRangeView *)self lowValueLabel];
    [v23 setFont:v22];

    v24 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceValueTextColor];
    v25 = [(HKReferenceRangeView *)self lowValueLabel];
    [v25 setTextColor:v24];

    v26 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
    [(HKReferenceRangeView *)self setHighValueLabel:v26];

    v27 = MEMORY[0x1E69DB878];
    v28 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceRangeTextStyle];
    v29 = [v27 hk_preferredFontForTextStyle:v28 symbolicTraits:2];
    v30 = [(HKReferenceRangeView *)self highValueLabel];
    [v30 setFont:v29];

    v31 = [(HKReferenceRangeViewConfiguration *)self->_configuration referenceValueTextColor];
    v32 = [(HKReferenceRangeView *)self highValueLabel];
    [v32 setTextColor:v31];
  }

  v33 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
  [(HKReferenceRangeView *)self setCurrentValueLabel:v33];

  v34 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
  v35 = [(HKReferenceRangeView *)self currentValueLabel];
  [v35 setTextColor:v34];

  v36 = [objc_alloc(-[HKReferenceRangeViewConfiguration labelClass](self->_configuration "labelClass"))];
  [(HKReferenceRangeView *)self setOutOfRangeLabel:v36];

  v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v38 = [v37 localizedStringForKey:@"RECORDS_OUT_OF_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v39 = [v38 localizedUppercaseString];
  v40 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [v40 setText:v39];

  v41 = [MEMORY[0x1E69DB878] hk_preferredFontIgnoringAccessibilitySizeForTextStyle:*MEMORY[0x1E69DDD08] symbolicTraits:2];
  v42 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [v42 setFont:v41];

  v43 = [(HKReferenceRangeView *)self _outOfRangeColor];
  v44 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [v44 setTextColor:v43];

  v45 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [v45 setHidden:1];

  v46 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  [(HKReferenceRangeView *)self addSubview:v46];

  v47 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  v48 = [(HKReferenceRangeView *)self referenceRangeView];
  [v47 addSubview:v48];

  v49 = [(HKReferenceRangeView *)self referenceRangeContainerView];
  v50 = [(HKReferenceRangeView *)self currentValueView];
  [v49 addSubview:v50];

  if (self->_lowValueLabel && self->_highValueLabel)
  {
    v51 = [(HKReferenceRangeView *)self lowValueLabel];
    [(HKReferenceRangeView *)self addSubview:v51];

    v52 = [(HKReferenceRangeView *)self highValueLabel];
    [(HKReferenceRangeView *)self addSubview:v52];
  }

  v53 = [(HKReferenceRangeView *)self currentValueLabel];
  [(HKReferenceRangeView *)self addSubview:v53];

  v54 = [(HKReferenceRangeView *)self outOfRangeLabel];
  [(HKReferenceRangeView *)self addSubview:v54];
}

- (void)_normalizeValuesIfNeeded
{
  if ([(HKReferenceRangeView *)self _hasReferenceRange])
  {
    v3 = [(HKReferenceRangeViewData *)self->_data rangeLow];

    v4 = [(HKReferenceRangeViewData *)self->_data rangeHigh];

    v5 = [(HKReferenceRangeViewData *)self->_data value];
    [v5 doubleValue];
    v7 = v6;
    v8 = v6;

    v9 = v8;
    if (v3)
    {
      v10 = [(HKReferenceRangeViewData *)self->_data rangeLow];
      [v10 doubleValue];
      v9 = v11;
    }

    if (v4)
    {
      v12 = [(HKReferenceRangeViewData *)self->_data rangeHigh];
      [v12 doubleValue];
      v8 = v13;
    }

    self->_lowValueXPosition = 0.25;
    self->_highValueXPosition = 0.75;
    if (!v3)
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

    if (!v4)
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
      if (v3)
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
      if (v4)
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
    v3 = [(HKReferenceRangeViewData *)self->_data rangeLowString];
    v4 = [(HKReferenceRangeView *)self lowValueLabel];
    [v4 setText:v3];

    v5 = [(HKReferenceRangeViewData *)self->_data rangeHighString];
    v6 = [(HKReferenceRangeView *)self highValueLabel];
    [v6 setText:v5];

    if (self->_valueDirection == 1)
    {
      v7 = [(HKReferenceRangeView *)self currentValueLabel];
      [v7 setTextAlignment:4];
      v23 = 0;
    }

    else
    {
      v23 = [(HKReferenceRangeView *)self _outOfRangeColor];
      valueDirection = self->_valueDirection;
      v9 = [(HKReferenceRangeView *)self currentValueLabel];
      v7 = v9;
      if (valueDirection)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      [v9 setTextAlignment:v10];
    }

    v17 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
    v18 = [(HKReferenceRangeView *)self currentValueView];
    [v18 setDotColor:v17];

    v19 = [(HKReferenceRangeView *)self currentValueLabel];
    [v19 setNumberOfLines:1];

    v20 = [(HKReferenceRangeView *)self currentValueLabel];
    [v20 setLineBreakMode:4];

    v21 = [(HKReferenceRangeView *)self _generateAttributedValueStringWithOverrideColor:v23];
    v22 = [(HKReferenceRangeView *)self currentValueLabel];
    [v22 setAttributedText:v21];

    v15 = [(HKReferenceRangeView *)self currentValueLabel];
    [v15 sizeToFit];
  }

  else
  {
    if ([(HKReferenceRangeViewData *)self->_data useOutOfRangeValueColor])
    {
      v23 = [(HKReferenceRangeView *)self _outOfRangeColor];
    }

    else
    {
      v23 = 0;
    }

    v11 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueNumLinesIfNoRange];
    v12 = [(HKReferenceRangeView *)self currentValueLabel];
    [v12 setNumberOfLines:v11];

    v13 = [(HKReferenceRangeView *)self currentValueLabel];
    [v13 setTextAlignment:4];

    v14 = [(HKReferenceRangeView *)self currentValueLabel];
    [v14 setLineBreakMode:0];

    v15 = [(HKReferenceRangeView *)self _generateAttributedValueStringWithOverrideColor:v23];
    v16 = [(HKReferenceRangeView *)self currentValueLabel];
    [v16 setAttributedText:v15];
  }

  [(HKReferenceRangeView *)self invalidateIntrinsicContentSize];
  [(HKReferenceRangeView *)self setNeedsLayout];
}

- (id)_generateAttributedValueStringWithOverrideColor:(id)a3
{
  v36[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(HKReferenceRangeViewData *)self->_data valueString];
  v7 = [v6 length];
  v8 = MEMORY[0x1E69DB648];
  v9 = MEMORY[0x1E69DB650];
  if (v7)
  {
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
    }

    v11 = v10;
    v35[0] = *v8;
    v12 = [(HKReferenceRangeView *)self valueLabelFont];
    v35[1] = *v9;
    v36[0] = v12;
    v36[1] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v13];
    [v5 addObject:v14];
  }

  v15 = [(HKReferenceRangeViewData *)self->_data unitString];
  if ([v15 length])
  {
    if (v4)
    {
      v16 = v4;
    }

    else
    {
      v17 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueUnitTextColor];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [(HKReferenceRangeViewConfiguration *)self->_configuration currentValueTextColor];
      }

      v16 = v19;
    }

    v33[0] = *v8;
    v20 = v33[0];
    v21 = [(HKReferenceRangeView *)self unitLabelFont];
    v22 = *v9;
    v34[0] = v21;
    v34[1] = v16;
    v23 = *MEMORY[0x1E69DB660];
    v33[1] = v22;
    v33[2] = v23;
    v34[2] = &unk_1F43848F0;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v24];
    [v5 addObject:v25];
    v31[0] = v20;
    v26 = [(HKReferenceRangeView *)self unitLabelFont];
    v31[1] = v22;
    v32[0] = v26;
    v32[1] = v16;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

    v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15 attributes:v27];
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

- (id)_generateMultilineAttributedValueStringForOriginalString:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_overriddenValueFont)
  {
    v6 = v4;
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

- (id)_configuredPreferredFontForTextStyle:(id)a3 symbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:a3];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits:v4];

  v8 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v9 = [v8 fontWithDescriptor:v7 size:?];

  return v9;
}

@end