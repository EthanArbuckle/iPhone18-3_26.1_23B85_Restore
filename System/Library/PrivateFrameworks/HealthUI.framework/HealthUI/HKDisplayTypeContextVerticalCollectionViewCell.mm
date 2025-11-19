@interface HKDisplayTypeContextVerticalCollectionViewCell
- (HKDisplayTypeContextVerticalCollectionViewCell)initWithFrame:(CGRect)a3;
- (HKDisplayTypeContextVerticalCollectionViewCellDelegate)delegate;
- (id)_attributedTitleWithAccessoryForContextItem:(id)a3 selected:(BOOL)a4;
- (id)_attributedValueAndUnitForContextItem:(id)a3 selected:(BOOL)a4;
- (id)_backgroundViewWithColor:(id)a3 userInteractive:(BOOL)a4;
- (id)_generateInfoButton;
- (id)_labelWithFont:(id)a3 allowsMultiline:(BOOL)a4 supportsDyanmicType:(BOOL)a5 layoutPriority:(float)a6;
- (id)_stackViewWithArrangedSubviews:(id)a3;
- (id)_titleAttributes;
- (id)_unitStringForContextItem:(id)a3 isUnitStringIncludedInValueString:(BOOL)a4;
- (id)_updateAttributedString:(id)a3 withTraitCollection:(id)a4;
- (int64_t)_widthDesignationFromTraitCollection:(id)a3;
- (void)_configureForContextItem:(id)a3;
- (void)_setLabel:(id)a3 allowsMultiline:(BOOL)a4 textAlignment:(int64_t)a5 layoutPriority:(float)a6;
- (void)_updateLabelsMultilineAndAlignmentForContentSizeCategoryAndUIDirection;
- (void)_updateUI:(BOOL)a3;
- (void)configureForTraitCollection;
- (void)infoButtonTapped:(id)a3;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
- (void)updateWithContextItem:(id)a3 mode:(int64_t)a4;
@end

@implementation HKDisplayTypeContextVerticalCollectionViewCell

- (HKDisplayTypeContextVerticalCollectionViewCell)initWithFrame:(CGRect)a3
{
  v51[3] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = HKDisplayTypeContextVerticalCollectionViewCell;
  v3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)&v49 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemTitleFont];
    LODWORD(v5) = 1132068864;
    v6 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _labelWithFont:v4 allowsMultiline:1 supportsDyanmicType:1 layoutPriority:v5];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    v8 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
    LODWORD(v9) = 1148813312;
    v10 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _labelWithFont:v8 allowsMultiline:1 supportsDyanmicType:1 layoutPriority:v9];
    valueAndUnitLabel = v3->_valueAndUnitLabel;
    v3->_valueAndUnitLabel = v10;

    v12 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _generateInfoButton];
    infoButton = v3->_infoButton;
    v3->_infoButton = v12;

    v51[0] = v3->_titleLabel;
    v51[1] = v3->_valueAndUnitLabel;
    v51[2] = v3->_infoButton;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    v15 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _stackViewWithArrangedSubviews:v14];
    contentStackView = v3->_contentStackView;
    v3->_contentStackView = v15;

    [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 configureForTraitCollection];
    v17 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    [v17 addSubview:v3->_contentStackView];

    v18 = [(UILabel *)v3->_titleLabel widthAnchor];
    v19 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    v20 = [v19 widthAnchor];
    v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20 multiplier:0.25];
    minTitleWidthConstraint = v3->_minTitleWidthConstraint;
    v3->_minTitleWidthConstraint = v21;

    LODWORD(v23) = 1148829696;
    [(NSLayoutConstraint *)v3->_minTitleWidthConstraint setPriority:v23];
    [(NSLayoutConstraint *)v3->_minTitleWidthConstraint setActive:1];
    v40 = MEMORY[0x1E696ACD8];
    v47 = [(UIStackView *)v3->_contentStackView topAnchor];
    v48 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    v46 = [v48 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v50[0] = v45;
    v43 = [(UIStackView *)v3->_contentStackView leadingAnchor];
    v44 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    v42 = [v44 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v50[1] = v41;
    v38 = [(UIStackView *)v3->_contentStackView bottomAnchor];
    v39 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    v24 = [v39 bottomAnchor];
    v25 = [v38 constraintEqualToAnchor:v24];
    v50[2] = v25;
    v26 = [(UIStackView *)v3->_contentStackView trailingAnchor];
    v27 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v50[3] = v29;
    v30 = [(UIStackView *)v3->_contentStackView heightAnchor];
    v31 = [v30 constraintGreaterThanOrEqualToConstant:52.0];
    v50[4] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
    [v40 activateConstraints:v32];

    v33 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    v34 = [v33 layer];
    [v34 setCornerRadius:26.0];

    v35 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    v36 = [v35 layer];
    [v36 setMasksToBounds:1];
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = HKDisplayTypeContextVerticalCollectionViewCell;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)&v5 setSelected:?];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateUI:v3];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = HKDisplayTypeContextVerticalCollectionViewCell;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)&v6 prepareForReuse];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setSelected:0];
  v3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
  [v3 setText:0];

  v4 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [v4 setText:0];

  v5 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [v5 setAttributedText:0];

  [(HKDisplayTypeContextVerticalCollectionViewCell *)self configureForTraitCollection];
}

- (void)updateWithContextItem:(id)a3 mode:(int64_t)a4
{
  v6 = a3;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setContextItem:v6];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setMode:a4];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _configureForContextItem:v6];
}

- (int64_t)_widthDesignationFromTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (void)configureForTraitCollection
{
  v3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (!IsAccessibilityCategory)
  {
    v8 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    v9 = v8;
    goto LABEL_6;
  }

  v6 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
  v7 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _widthDesignationFromTraitCollection:v6];

  if ((v7 - 1) >= 4)
  {
    if ((v7 - 5) >= 2)
    {
      return;
    }

    v11 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
    v12 = [v11 preferredContentSizeCategory];
    v13 = *MEMORY[0x1E69DDC28];

    v8 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    v9 = v8;
    if (v12 >= v13)
    {
      v10 = 1;
      goto LABEL_4;
    }

LABEL_6:
    [v8 setAxis:0];
    v10 = 3;
    goto LABEL_7;
  }

  v8 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  v9 = v8;
  v10 = 1;
LABEL_4:
  [v8 setAxis:1];
LABEL_7:

  v14 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  [v14 setAlignment:v10];
}

- (void)_configureForContextItem:(id)a3
{
  v28 = a3;
  if ([v28 hasTitleAccessory])
  {
    v4 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedTitleWithAccessoryForContextItem:v28 selected:0];
    v5 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
    [v5 setAttributedText:v4];
  }

  else
  {
    v4 = [v28 title];
    v5 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
    [v5 setText:v4];
  }

  v6 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedValueAndUnitForContextItem:v28 selected:1];
  v7 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [v7 setAttributedText:v6];

  v8 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  v9 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
  [v8 setCustomSpacing:v9 afterView:14.0];

  v10 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  v11 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [v10 setCustomSpacing:v11 afterView:5.0];

  v12 = [v28 accessibilityIdentifier];
  if (v12)
  {
    v13 = [v28 accessibilityIdentifier];
    [(HKDisplayTypeContextVerticalCollectionViewCell *)self setAccessibilityIdentifier:v13];
  }

  else
  {
    [(HKDisplayTypeContextVerticalCollectionViewCell *)self setAccessibilityIdentifier:@"UnknownOverlayContext"];
  }

  v14 = [v28 metricColors];
  v15 = [v14 keyColor];
  v16 = -[HKDisplayTypeContextVerticalCollectionViewCell _backgroundViewWithColor:userInteractive:](self, "_backgroundViewWithColor:userInteractive:", v15, [v28 userInteractive]);
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setBackgroundView:v16];

  v17 = [v28 selectedMetricColors];
  v18 = [v17 keyColor];
  v19 = -[HKDisplayTypeContextVerticalCollectionViewCell _backgroundViewWithColor:userInteractive:](self, "_backgroundViewWithColor:userInteractive:", v18, [v28 userInteractive]);
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setSelectedBackgroundView:v19];

  v20 = [v28 infoHidden];
  v21 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self infoButton];
  [v21 setHidden:v20];

  if (([v28 infoHidden] & 1) == 0)
  {
    v22 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    [v22 layoutMargins];
    v24 = v23;
    v26 = v25;

    v27 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    [v27 setLayoutMargins:{11.0, v24, 11.0, v26}];
  }

  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateUI:[(HKDisplayTypeContextVerticalCollectionViewCell *)self isSelected]];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateLabelsMultilineAndAlignmentForContentSizeCategoryAndUIDirection];
}

- (void)_updateLabelsMultilineAndAlignmentForContentSizeCategoryAndUIDirection
{
  v3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
  LODWORD(v7) = 1132068864;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _setLabel:v6 allowsMultiline:1 textAlignment:4 layoutPriority:v7];

  if ([(UIView *)self hk_isLeftToRight]&& !IsAccessibilityCategory)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v10 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  LODWORD(v9) = 1148813312;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _setLabel:v10 allowsMultiline:1 textAlignment:v8 layoutPriority:v9];
}

- (id)_attributedTitleWithAccessoryForContextItem:(id)a3 selected:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 selectedTitleAccessory];
    v9 = [v8 systemImageName];

    [v7 selectedTitleAccessory];
  }

  else
  {
    v10 = [v6 titleAccessory];
    v9 = [v10 systemImageName];

    [v7 titleAccessory];
  }
  v11 = ;
  v12 = [v11 color];

  v13 = MEMORY[0x1E69DCAD8];
  v14 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemTitleFont];
  v15 = [v13 configurationWithFont:v14 scale:1];

  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v15];
  v17 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v18 = [v16 imageWithRenderingMode:2];
  [v17 setImage:v18];

  v19 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v20 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
  [v19 appendAttributedString:v20];

  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v19 appendAttributedString:v21];

  [v19 addAttribute:*MEMORY[0x1E69DB650] value:v12 range:{0, objc_msgSend(v19, "length")}];
  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  v23 = [v7 title];
  v24 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _titleAttributes];
  v25 = [v22 initWithString:v23 attributes:v24];
  [v19 appendAttributedString:v25];

  v26 = [v19 copy];

  return v26;
}

- (id)_attributedValueAndUnitForContextItem:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 attributedLabelTextOverride];

  if (v7)
  {
    v8 = [v6 attributedLabelTextOverride];
    v9 = [v8 attributedLabelTextWithSelectionState:v4];

    v10 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
    v11 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateAttributedString:v9 withTraitCollection:v10];

    goto LABEL_25;
  }

  v12 = [v6 value];
  v13 = [v6 unit];
  if (v13)
  {
    v14 = v13;
    v15 = [v6 isUnitIncludedInValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _unitStringForContextItem:v6 isUnitStringIncludedInValueString:v15];
  v39 = v15;
  if (v16)
  {
    v17 = [v6 useTightSpacingBetweenValueAndUnit];
    v18 = @" ";
    if (v17)
    {
      v18 = @" ";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v12, v18, v16];
  }

  else
  {
    v19 = v12;
  }

  v20 = v19;
  v40 = *MEMORY[0x1E69DB648];
  v21 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v41[0] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:v22];
  v23 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
  v24 = [v23 contextViewPrimaryTextColor];

  if (!v4)
  {
    v26 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
    v25 = [v26 contextViewSecondaryTextColor];

    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (v24)
    {
      v27 = *MEMORY[0x1E69DB650];
      v28 = [v20 rangeOfString:v12];
      [v11 addAttribute:v27 value:v24 range:{v28, v29}];
    }

    goto LABEL_17;
  }

  v25 = v24;
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (v16 && v25)
  {
    v30 = *MEMORY[0x1E69DB650];
    v31 = [v20 rangeOfString:v16];
    [v11 addAttribute:v30 value:v25 range:{v31, v32}];
  }

  v33 = v39;
  if (!v25)
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    v34 = *MEMORY[0x1E69DB650];
    v35 = [v6 unit];
    v36 = [v20 rangeOfString:v35];
    [v11 addAttribute:v34 value:v25 range:{v36, v37}];
  }

LABEL_25:

  return v11;
}

- (id)_updateAttributedString:(id)a3 withTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [v5 mutableCopy];
    v8 = [v7 length];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __94__HKDisplayTypeContextVerticalCollectionViewCell__updateAttributedString_withTraitCollection___block_invoke;
    v15 = &unk_1E81B79A0;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    [v9 enumerateAttributesInRange:0 options:v8 usingBlock:{0, &v12}];
    v10 = [v9 copy];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

void __94__HKDisplayTypeContextVerticalCollectionViewCell__updateAttributedString_withTraitCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69DB648];
  v8 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v8)
  {
    v10 = v8;
    v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:*(a1 + 32)];
    [*(a1 + 40) removeAttribute:v7 range:{a3, a4}];
    [*(a1 + 40) addAttribute:v7 value:v9 range:{a3, a4}];

    v8 = v10;
  }
}

- (id)_unitStringForContextItem:(id)a3 isUnitStringIncludedInValueString:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 unit];
  }

  v8 = [v6 valueContext];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v6 valueContext];
    v11 = v10;
    if (v7)
    {
      [v9 stringWithFormat:@"%@ (%@)", v7, v10];
    }

    else
    {
      [v9 stringWithFormat:@"(%@)", v10, v14];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (id)_titleAttributes
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69DB648];
  v3 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemTitleFont];
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E69DB650];
  v4 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
  v5 = [v4 contextViewPrimaryTextColor];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E69DC888] labelColor];
  }

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!v5)
  {
  }

  return v7;
}

- (void)_updateUI:(BOOL)a3
{
  v3 = a3;
  contextItem = self->_contextItem;
  if (a3)
  {
    [(HKDisplayTypeContextItem *)contextItem selectedMetricColors];
  }

  else
  {
    [(HKDisplayTypeContextItem *)contextItem metricColors];
  }
  v6 = ;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setCurrentMetricColors:v6];

  if ([(HKDisplayTypeContextItem *)self->_contextItem hasTitleAccessory])
  {
    v7 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedTitleWithAccessoryForContextItem:self->_contextItem selected:v3];
    [(UILabel *)self->_titleLabel setAttributedText:v7];
  }

  else
  {
    v7 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
    v8 = [v7 contextViewPrimaryTextColor];
    [(UILabel *)self->_titleLabel setTextColor:v8];
  }

  v9 = self->_contextItem;
  if (v9)
  {
    v10 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedValueAndUnitForContextItem:v9 selected:v3];
    [(UILabel *)self->_valueAndUnitLabel setAttributedText:v10];

    if (v3)
    {
LABEL_9:
      v11 = [(UILabel *)self->_valueAndUnitLabel textColor];
      goto LABEL_12;
    }
  }

  else
  {
    [(UILabel *)self->_valueAndUnitLabel setAttributedText:?];
    if (v3)
    {
      goto LABEL_9;
    }
  }

  v11 = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_12:
  v12 = v11;
  [(UIButton *)self->_infoButton setTintColor:v11];
}

- (id)_backgroundViewWithColor:(id)a3 userInteractive:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x1E69DC888];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __91__HKDisplayTypeContextVerticalCollectionViewCell__backgroundViewWithColor_userInteractive___block_invoke;
    v25 = &unk_1E81B79C8;
    v27 = a4;
    v26 = v6;
    v10 = [v9 colorWithDynamicProvider:&v22];
    [v8 setBackgroundColor:{v10, v22, v23, v24, v25}];
  }

  else
  {
    [v7 setBackgroundColor:0];
  }

  v11 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentView];
  v12 = [v11 layer];
  [v12 cornerRadius];
  v14 = v13;
  v15 = [v8 layer];
  [v15 setCornerRadius:v14];

  v16 = *MEMORY[0x1E69796E8];
  v17 = [v8 layer];
  [v17 setCornerCurve:v16];

  [v8 setClipsToBounds:1];
  if (!a4)
  {
    v18 = [v6 CGColor];
    v19 = [v8 layer];
    [v19 setBorderColor:v18];

    v20 = [v8 layer];
    [v20 setBorderWidth:1.0];
  }

  return v8;
}

id __91__HKDisplayTypeContextVerticalCollectionViewCell__backgroundViewWithColor_userInteractive___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = [MEMORY[0x1E69DC888] clearColor];
  }

  return v1;
}

- (id)_stackViewWithArrangedSubviews:(id)a3
{
  v3 = MEMORY[0x1E69DCF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithArrangedSubviews:v4];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setSpacing:4.0];
  [v5 setAlignment:1];
  [v5 setDistribution:0];
  [v5 setLayoutMarginsRelativeArrangement:1];
  [v5 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

  return v5;
}

- (id)_generateInfoButton
{
  v3 = [MEMORY[0x1E69DC738] hk_standardInfoButton];
  [v3 addTarget:self action:sel_infoButtonTapped_ forControlEvents:64];
  LODWORD(v4) = 1148813312;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148813312;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];

  return v3;
}

- (void)infoButtonTapped:(id)a3
{
  v4 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self delegate];

  if (v4)
  {
    v5 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self delegate];
    [v5 didTapOnInfoButtonForCollectionViewCell:self];
  }
}

- (id)_labelWithFont:(id)a3 allowsMultiline:(BOOL)a4 supportsDyanmicType:(BOOL)a5 layoutPriority:(float)a6
{
  v7 = a5;
  v8 = a4;
  v10 = MEMORY[0x1E69DCC10];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setFont:v11];

  [v13 setAdjustsFontForContentSizeCategory:v7];
  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [v13 setTextColor:v14];

  v15 = [MEMORY[0x1E69DC888] clearColor];
  [v13 setBackgroundColor:v15];

  [v13 setClipsToBounds:0];
  *&v16 = a6;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _setLabel:v13 allowsMultiline:v8 textAlignment:4 layoutPriority:v16];

  return v13;
}

- (void)_setLabel:(id)a3 allowsMultiline:(BOOL)a4 textAlignment:(int64_t)a5 layoutPriority:(float)a6
{
  v8 = a4;
  v13 = a3;
  v9 = !v8;
  [v13 setNumberOfLines:v9];
  [v13 setTextAlignment:a5];
  v10 = 0.0;
  if (!v9)
  {
    [v13 setLineBreakMode:{0, 0.0}];
    LODWORD(v10) = 1.0;
  }

  [v13 _setHyphenationFactor:v10];
  *&v11 = a6;
  [v13 setContentCompressionResistancePriority:0 forAxis:v11];
  *&v12 = a6;
  [v13 setContentHuggingPriority:0 forAxis:v12];
}

- (HKDisplayTypeContextVerticalCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end