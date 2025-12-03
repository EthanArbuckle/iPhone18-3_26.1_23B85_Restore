@interface HKDisplayTypeContextVerticalCollectionViewCell
- (HKDisplayTypeContextVerticalCollectionViewCell)initWithFrame:(CGRect)frame;
- (HKDisplayTypeContextVerticalCollectionViewCellDelegate)delegate;
- (id)_attributedTitleWithAccessoryForContextItem:(id)item selected:(BOOL)selected;
- (id)_attributedValueAndUnitForContextItem:(id)item selected:(BOOL)selected;
- (id)_backgroundViewWithColor:(id)color userInteractive:(BOOL)interactive;
- (id)_generateInfoButton;
- (id)_labelWithFont:(id)font allowsMultiline:(BOOL)multiline supportsDyanmicType:(BOOL)type layoutPriority:(float)priority;
- (id)_stackViewWithArrangedSubviews:(id)subviews;
- (id)_titleAttributes;
- (id)_unitStringForContextItem:(id)item isUnitStringIncludedInValueString:(BOOL)string;
- (id)_updateAttributedString:(id)string withTraitCollection:(id)collection;
- (int64_t)_widthDesignationFromTraitCollection:(id)collection;
- (void)_configureForContextItem:(id)item;
- (void)_setLabel:(id)label allowsMultiline:(BOOL)multiline textAlignment:(int64_t)alignment layoutPriority:(float)priority;
- (void)_updateLabelsMultilineAndAlignmentForContentSizeCategoryAndUIDirection;
- (void)_updateUI:(BOOL)i;
- (void)configureForTraitCollection;
- (void)infoButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
- (void)updateWithContextItem:(id)item mode:(int64_t)mode;
@end

@implementation HKDisplayTypeContextVerticalCollectionViewCell

- (HKDisplayTypeContextVerticalCollectionViewCell)initWithFrame:(CGRect)frame
{
  v51[3] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = HKDisplayTypeContextVerticalCollectionViewCell;
  v3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    hk_chartOverlaySectionItemTitleFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemTitleFont];
    LODWORD(v5) = 1132068864;
    v6 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _labelWithFont:hk_chartOverlaySectionItemTitleFont allowsMultiline:1 supportsDyanmicType:1 layoutPriority:v5];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    hk_chartOverlaySectionItemValueAndUnitFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
    LODWORD(v9) = 1148813312;
    v10 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _labelWithFont:hk_chartOverlaySectionItemValueAndUnitFont allowsMultiline:1 supportsDyanmicType:1 layoutPriority:v9];
    valueAndUnitLabel = v3->_valueAndUnitLabel;
    v3->_valueAndUnitLabel = v10;

    _generateInfoButton = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _generateInfoButton];
    infoButton = v3->_infoButton;
    v3->_infoButton = _generateInfoButton;

    v51[0] = v3->_titleLabel;
    v51[1] = v3->_valueAndUnitLabel;
    v51[2] = v3->_infoButton;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    v15 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 _stackViewWithArrangedSubviews:v14];
    contentStackView = v3->_contentStackView;
    v3->_contentStackView = v15;

    [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 configureForTraitCollection];
    contentView = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_contentStackView];

    widthAnchor = [(UILabel *)v3->_titleLabel widthAnchor];
    contentView2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    widthAnchor2 = [contentView2 widthAnchor];
    v21 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:0.25];
    minTitleWidthConstraint = v3->_minTitleWidthConstraint;
    v3->_minTitleWidthConstraint = v21;

    LODWORD(v23) = 1148829696;
    [(NSLayoutConstraint *)v3->_minTitleWidthConstraint setPriority:v23];
    [(NSLayoutConstraint *)v3->_minTitleWidthConstraint setActive:1];
    v40 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIStackView *)v3->_contentStackView topAnchor];
    contentView3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[0] = v45;
    leadingAnchor = [(UIStackView *)v3->_contentStackView leadingAnchor];
    contentView4 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[1] = v41;
    bottomAnchor = [(UIStackView *)v3->_contentStackView bottomAnchor];
    contentView5 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[2] = v25;
    trailingAnchor = [(UIStackView *)v3->_contentStackView trailingAnchor];
    contentView6 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[3] = v29;
    heightAnchor = [(UIStackView *)v3->_contentStackView heightAnchor];
    v31 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
    v50[4] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
    [v40 activateConstraints:v32];

    contentView7 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    layer = [contentView7 layer];
    [layer setCornerRadius:26.0];

    contentView8 = [(HKDisplayTypeContextVerticalCollectionViewCell *)v3 contentView];
    layer2 = [contentView8 layer];
    [layer2 setMasksToBounds:1];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = HKDisplayTypeContextVerticalCollectionViewCell;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)&v5 setSelected:?];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateUI:selectedCopy];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = HKDisplayTypeContextVerticalCollectionViewCell;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)&v6 prepareForReuse];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setSelected:0];
  titleLabel = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
  [titleLabel setText:0];

  valueAndUnitLabel = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [valueAndUnitLabel setText:0];

  valueAndUnitLabel2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [valueAndUnitLabel2 setAttributedText:0];

  [(HKDisplayTypeContextVerticalCollectionViewCell *)self configureForTraitCollection];
}

- (void)updateWithContextItem:(id)item mode:(int64_t)mode
{
  itemCopy = item;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setContextItem:itemCopy];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setMode:mode];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _configureForContextItem:itemCopy];
}

- (int64_t)_widthDesignationFromTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (void)configureForTraitCollection
{
  traitCollection = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    contentStackView = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    v9 = contentStackView;
    goto LABEL_6;
  }

  traitCollection2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
  v7 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _widthDesignationFromTraitCollection:traitCollection2];

  if ((v7 - 1) >= 4)
  {
    if ((v7 - 5) >= 2)
    {
      return;
    }

    traitCollection3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection3 preferredContentSizeCategory];
    v13 = *MEMORY[0x1E69DDC28];

    contentStackView = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    v9 = contentStackView;
    if (preferredContentSizeCategory2 >= v13)
    {
      v10 = 1;
      goto LABEL_4;
    }

LABEL_6:
    [contentStackView setAxis:0];
    v10 = 3;
    goto LABEL_7;
  }

  contentStackView = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  v9 = contentStackView;
  v10 = 1;
LABEL_4:
  [contentStackView setAxis:1];
LABEL_7:

  contentStackView2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  [contentStackView2 setAlignment:v10];
}

- (void)_configureForContextItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasTitleAccessory])
  {
    title = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedTitleWithAccessoryForContextItem:itemCopy selected:0];
    titleLabel = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
    [titleLabel setAttributedText:title];
  }

  else
  {
    title = [itemCopy title];
    titleLabel = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
    [titleLabel setText:title];
  }

  v6 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedValueAndUnitForContextItem:itemCopy selected:1];
  valueAndUnitLabel = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [valueAndUnitLabel setAttributedText:v6];

  contentStackView = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  titleLabel2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
  [contentStackView setCustomSpacing:titleLabel2 afterView:14.0];

  contentStackView2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
  valueAndUnitLabel2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  [contentStackView2 setCustomSpacing:valueAndUnitLabel2 afterView:5.0];

  accessibilityIdentifier = [itemCopy accessibilityIdentifier];
  if (accessibilityIdentifier)
  {
    accessibilityIdentifier2 = [itemCopy accessibilityIdentifier];
    [(HKDisplayTypeContextVerticalCollectionViewCell *)self setAccessibilityIdentifier:accessibilityIdentifier2];
  }

  else
  {
    [(HKDisplayTypeContextVerticalCollectionViewCell *)self setAccessibilityIdentifier:@"UnknownOverlayContext"];
  }

  metricColors = [itemCopy metricColors];
  keyColor = [metricColors keyColor];
  v16 = -[HKDisplayTypeContextVerticalCollectionViewCell _backgroundViewWithColor:userInteractive:](self, "_backgroundViewWithColor:userInteractive:", keyColor, [itemCopy userInteractive]);
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setBackgroundView:v16];

  selectedMetricColors = [itemCopy selectedMetricColors];
  keyColor2 = [selectedMetricColors keyColor];
  v19 = -[HKDisplayTypeContextVerticalCollectionViewCell _backgroundViewWithColor:userInteractive:](self, "_backgroundViewWithColor:userInteractive:", keyColor2, [itemCopy userInteractive]);
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self setSelectedBackgroundView:v19];

  infoHidden = [itemCopy infoHidden];
  infoButton = [(HKDisplayTypeContextVerticalCollectionViewCell *)self infoButton];
  [infoButton setHidden:infoHidden];

  if (([itemCopy infoHidden] & 1) == 0)
  {
    contentStackView3 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    [contentStackView3 layoutMargins];
    v24 = v23;
    v26 = v25;

    contentStackView4 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentStackView];
    [contentStackView4 setLayoutMargins:{11.0, v24, 11.0, v26}];
  }

  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateUI:[(HKDisplayTypeContextVerticalCollectionViewCell *)self isSelected]];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateLabelsMultilineAndAlignmentForContentSizeCategoryAndUIDirection];
}

- (void)_updateLabelsMultilineAndAlignmentForContentSizeCategoryAndUIDirection
{
  traitCollection = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  titleLabel = [(HKDisplayTypeContextVerticalCollectionViewCell *)self titleLabel];
  LODWORD(v7) = 1132068864;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _setLabel:titleLabel allowsMultiline:1 textAlignment:4 layoutPriority:v7];

  if ([(UIView *)self hk_isLeftToRight]&& !IsAccessibilityCategory)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  valueAndUnitLabel = [(HKDisplayTypeContextVerticalCollectionViewCell *)self valueAndUnitLabel];
  LODWORD(v9) = 1148813312;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _setLabel:valueAndUnitLabel allowsMultiline:1 textAlignment:v8 layoutPriority:v9];
}

- (id)_attributedTitleWithAccessoryForContextItem:(id)item selected:(BOOL)selected
{
  itemCopy = item;
  v7 = itemCopy;
  if (selected)
  {
    selectedTitleAccessory = [itemCopy selectedTitleAccessory];
    systemImageName = [selectedTitleAccessory systemImageName];

    [v7 selectedTitleAccessory];
  }

  else
  {
    titleAccessory = [itemCopy titleAccessory];
    systemImageName = [titleAccessory systemImageName];

    [v7 titleAccessory];
  }
  v11 = ;
  color = [v11 color];

  v13 = MEMORY[0x1E69DCAD8];
  hk_chartOverlaySectionItemTitleFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemTitleFont];
  v15 = [v13 configurationWithFont:hk_chartOverlaySectionItemTitleFont scale:1];

  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:systemImageName withConfiguration:v15];
  v17 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v18 = [v16 imageWithRenderingMode:2];
  [v17 setImage:v18];

  v19 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v20 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
  [v19 appendAttributedString:v20];

  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v19 appendAttributedString:v21];

  [v19 addAttribute:*MEMORY[0x1E69DB650] value:color range:{0, objc_msgSend(v19, "length")}];
  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  title = [v7 title];
  _titleAttributes = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _titleAttributes];
  v25 = [v22 initWithString:title attributes:_titleAttributes];
  [v19 appendAttributedString:v25];

  v26 = [v19 copy];

  return v26;
}

- (id)_attributedValueAndUnitForContextItem:(id)item selected:(BOOL)selected
{
  selectedCopy = selected;
  v41[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  attributedLabelTextOverride = [itemCopy attributedLabelTextOverride];

  if (attributedLabelTextOverride)
  {
    attributedLabelTextOverride2 = [itemCopy attributedLabelTextOverride];
    v9 = [attributedLabelTextOverride2 attributedLabelTextWithSelectionState:selectedCopy];

    traitCollection = [(HKDisplayTypeContextVerticalCollectionViewCell *)self traitCollection];
    v11 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _updateAttributedString:v9 withTraitCollection:traitCollection];

    goto LABEL_25;
  }

  value = [itemCopy value];
  unit = [itemCopy unit];
  if (unit)
  {
    v14 = unit;
    isUnitIncludedInValue = [itemCopy isUnitIncludedInValue];
  }

  else
  {
    isUnitIncludedInValue = 0;
  }

  v16 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _unitStringForContextItem:itemCopy isUnitStringIncludedInValueString:isUnitIncludedInValue];
  v39 = isUnitIncludedInValue;
  if (v16)
  {
    useTightSpacingBetweenValueAndUnit = [itemCopy useTightSpacingBetweenValueAndUnit];
    v18 = @" ";
    if (useTightSpacingBetweenValueAndUnit)
    {
      v18 = @" ";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", value, v18, v16];
  }

  else
  {
    v19 = value;
  }

  v20 = v19;
  v40 = *MEMORY[0x1E69DB648];
  hk_chartOverlaySectionItemValueAndUnitFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v41[0] = hk_chartOverlaySectionItemValueAndUnitFont;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:v22];
  currentMetricColors = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
  contextViewPrimaryTextColor = [currentMetricColors contextViewPrimaryTextColor];

  if (!selectedCopy)
  {
    currentMetricColors2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
    contextViewSecondaryTextColor = [currentMetricColors2 contextViewSecondaryTextColor];

    if (!value)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (contextViewPrimaryTextColor)
    {
      v27 = *MEMORY[0x1E69DB650];
      v28 = [v20 rangeOfString:value];
      [v11 addAttribute:v27 value:contextViewPrimaryTextColor range:{v28, v29}];
    }

    goto LABEL_17;
  }

  contextViewSecondaryTextColor = contextViewPrimaryTextColor;
  if (value)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (v16 && contextViewSecondaryTextColor)
  {
    v30 = *MEMORY[0x1E69DB650];
    v31 = [v20 rangeOfString:v16];
    [v11 addAttribute:v30 value:contextViewSecondaryTextColor range:{v31, v32}];
  }

  v33 = v39;
  if (!contextViewSecondaryTextColor)
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    v34 = *MEMORY[0x1E69DB650];
    unit2 = [itemCopy unit];
    v36 = [v20 rangeOfString:unit2];
    [v11 addAttribute:v34 value:contextViewSecondaryTextColor range:{v36, v37}];
  }

LABEL_25:

  return v11;
}

- (id)_updateAttributedString:(id)string withTraitCollection:(id)collection
{
  stringCopy = string;
  collectionCopy = collection;
  if ([stringCopy length])
  {
    v7 = [stringCopy mutableCopy];
    v8 = [v7 length];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __94__HKDisplayTypeContextVerticalCollectionViewCell__updateAttributedString_withTraitCollection___block_invoke;
    v15 = &unk_1E81B79A0;
    v16 = collectionCopy;
    v17 = v7;
    v9 = v7;
    [v9 enumerateAttributesInRange:0 options:v8 usingBlock:{0, &v12}];
    v10 = [v9 copy];
  }

  else
  {
    v10 = stringCopy;
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

- (id)_unitStringForContextItem:(id)item isUnitStringIncludedInValueString:(BOOL)string
{
  itemCopy = item;
  v6 = itemCopy;
  if (string)
  {
    unit = 0;
  }

  else
  {
    unit = [itemCopy unit];
  }

  valueContext = [v6 valueContext];

  if (valueContext)
  {
    v9 = MEMORY[0x1E696AEC0];
    valueContext2 = [v6 valueContext];
    v11 = valueContext2;
    if (unit)
    {
      [v9 stringWithFormat:@"%@ (%@)", unit, valueContext2];
    }

    else
    {
      [v9 stringWithFormat:@"(%@)", valueContext2, v14];
    }
    v12 = ;

    unit = v12;
  }

  return unit;
}

- (id)_titleAttributes
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69DB648];
  hk_chartOverlaySectionItemTitleFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemTitleFont];
  v10[0] = hk_chartOverlaySectionItemTitleFont;
  v9[1] = *MEMORY[0x1E69DB650];
  currentMetricColors = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
  contextViewPrimaryTextColor = [currentMetricColors contextViewPrimaryTextColor];
  labelColor = contextViewPrimaryTextColor;
  if (!contextViewPrimaryTextColor)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v10[1] = labelColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!contextViewPrimaryTextColor)
  {
  }

  return v7;
}

- (void)_updateUI:(BOOL)i
{
  iCopy = i;
  contextItem = self->_contextItem;
  if (i)
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
    currentMetricColors = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedTitleWithAccessoryForContextItem:self->_contextItem selected:iCopy];
    [(UILabel *)self->_titleLabel setAttributedText:currentMetricColors];
  }

  else
  {
    currentMetricColors = [(HKDisplayTypeContextVerticalCollectionViewCell *)self currentMetricColors];
    contextViewPrimaryTextColor = [currentMetricColors contextViewPrimaryTextColor];
    [(UILabel *)self->_titleLabel setTextColor:contextViewPrimaryTextColor];
  }

  v9 = self->_contextItem;
  if (v9)
  {
    v10 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self _attributedValueAndUnitForContextItem:v9 selected:iCopy];
    [(UILabel *)self->_valueAndUnitLabel setAttributedText:v10];

    if (iCopy)
    {
LABEL_9:
      textColor = [(UILabel *)self->_valueAndUnitLabel textColor];
      goto LABEL_12;
    }
  }

  else
  {
    [(UILabel *)self->_valueAndUnitLabel setAttributedText:?];
    if (iCopy)
    {
      goto LABEL_9;
    }
  }

  textColor = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_12:
  v12 = textColor;
  [(UIButton *)self->_infoButton setTintColor:textColor];
}

- (id)_backgroundViewWithColor:(id)color userInteractive:(BOOL)interactive
{
  colorCopy = color;
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v8 = v7;
  if (colorCopy)
  {
    v9 = MEMORY[0x1E69DC888];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __91__HKDisplayTypeContextVerticalCollectionViewCell__backgroundViewWithColor_userInteractive___block_invoke;
    v25 = &unk_1E81B79C8;
    interactiveCopy = interactive;
    v26 = colorCopy;
    v10 = [v9 colorWithDynamicProvider:&v22];
    [v8 setBackgroundColor:{v10, v22, v23, v24, v25}];
  }

  else
  {
    [v7 setBackgroundColor:0];
  }

  contentView = [(HKDisplayTypeContextVerticalCollectionViewCell *)self contentView];
  layer = [contentView layer];
  [layer cornerRadius];
  v14 = v13;
  layer2 = [v8 layer];
  [layer2 setCornerRadius:v14];

  v16 = *MEMORY[0x1E69796E8];
  layer3 = [v8 layer];
  [layer3 setCornerCurve:v16];

  [v8 setClipsToBounds:1];
  if (!interactive)
  {
    cGColor = [colorCopy CGColor];
    layer4 = [v8 layer];
    [layer4 setBorderColor:cGColor];

    layer5 = [v8 layer];
    [layer5 setBorderWidth:1.0];
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

- (id)_stackViewWithArrangedSubviews:(id)subviews
{
  v3 = MEMORY[0x1E69DCF90];
  subviewsCopy = subviews;
  v5 = [[v3 alloc] initWithArrangedSubviews:subviewsCopy];

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
  hk_standardInfoButton = [MEMORY[0x1E69DC738] hk_standardInfoButton];
  [hk_standardInfoButton addTarget:self action:sel_infoButtonTapped_ forControlEvents:64];
  LODWORD(v4) = 1148813312;
  [hk_standardInfoButton setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148813312;
  [hk_standardInfoButton setContentCompressionResistancePriority:0 forAxis:v5];

  return hk_standardInfoButton;
}

- (void)infoButtonTapped:(id)tapped
{
  delegate = [(HKDisplayTypeContextVerticalCollectionViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(HKDisplayTypeContextVerticalCollectionViewCell *)self delegate];
    [delegate2 didTapOnInfoButtonForCollectionViewCell:self];
  }
}

- (id)_labelWithFont:(id)font allowsMultiline:(BOOL)multiline supportsDyanmicType:(BOOL)type layoutPriority:(float)priority
{
  typeCopy = type;
  multilineCopy = multiline;
  v10 = MEMORY[0x1E69DCC10];
  fontCopy = font;
  v12 = [v10 alloc];
  v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setFont:fontCopy];

  [v13 setAdjustsFontForContentSizeCategory:typeCopy];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v13 setTextColor:whiteColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v13 setBackgroundColor:clearColor];

  [v13 setClipsToBounds:0];
  *&v16 = priority;
  [(HKDisplayTypeContextVerticalCollectionViewCell *)self _setLabel:v13 allowsMultiline:multilineCopy textAlignment:4 layoutPriority:v16];

  return v13;
}

- (void)_setLabel:(id)label allowsMultiline:(BOOL)multiline textAlignment:(int64_t)alignment layoutPriority:(float)priority
{
  multilineCopy = multiline;
  labelCopy = label;
  v9 = !multilineCopy;
  [labelCopy setNumberOfLines:v9];
  [labelCopy setTextAlignment:alignment];
  v10 = 0.0;
  if (!v9)
  {
    [labelCopy setLineBreakMode:{0, 0.0}];
    LODWORD(v10) = 1.0;
  }

  [labelCopy _setHyphenationFactor:v10];
  *&v11 = priority;
  [labelCopy setContentCompressionResistancePriority:0 forAxis:v11];
  *&v12 = priority;
  [labelCopy setContentHuggingPriority:0 forAxis:v12];
}

- (HKDisplayTypeContextVerticalCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end