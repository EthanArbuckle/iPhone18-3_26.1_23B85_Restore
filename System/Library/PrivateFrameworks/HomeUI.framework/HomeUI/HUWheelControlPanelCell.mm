@interface HUWheelControlPanelCell
- (BOOL)isDisabled;
- (HUWheelControlPanelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)detailText;
- (NSString)titleText;
- (id)_defaultValueFormatter;
- (id)allControlViews;
- (void)_generateWheelValuesWithMinValue:(double)value maxValue:(double)maxValue stepValue:(double)stepValue;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDetailText:(id)text;
- (void)setMaxValue:(id)value;
- (void)setMinValue:(id)value;
- (void)setStepValue:(id)value;
- (void)setTitleText:(id)text;
- (void)setValueFormatter:(id)formatter;
- (void)setWheelView:(id)view;
- (void)setWheelViewVisible:(BOOL)visible;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
- (void)wheelControlView:(id)view didUpdateValue:(id)value;
@end

@implementation HUWheelControlPanelCell

- (HUWheelControlPanelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = HUWheelControlPanelCell;
  v4 = [(HUWheelControlPanelCell *)&v21 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *MEMORY[0x277D76918];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_titleLabel setFont:v8];

    contentView = [(HUWheelControlPanelCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      v10 = [HUWheelControlPopUpButton buttonWithType:124];
      p_wheelButton = &v4->_wheelButton;
      wheelButton = v4->_wheelButton;
      v4->_wheelButton = v10;

      [(HUWheelControlPopUpButton *)v4->_wheelButton setContextMenuEnabled:1];
      [(HUWheelControlPopUpButton *)v4->_wheelButton setContextMenuIsPrimary:1];
      [(HUWheelControlPopUpButton *)v4->_wheelButton setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277D756B8]);
      p_wheelButton = &v4->_detailLabel;
      detailLabel = v4->_detailLabel;
      v4->_detailLabel = v13;

      [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v7];
      [(UILabel *)v4->_detailLabel setFont:v15];
    }

    contentView2 = [(HUWheelControlPanelCell *)v4 contentView];
    [contentView2 addSubview:*p_wheelButton];

    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v17;

    [(UIView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(HUWheelControlPanelCell *)v4 contentView];
    [contentView3 addSubview:v4->_separatorView];
  }

  return v4;
}

- (id)allControlViews
{
  useMacIdiom = [MEMORY[0x277D14CE8] useMacIdiom];
  v4 = MEMORY[0x277CBEB98];
  if (useMacIdiom)
  {
    [(HUWheelControlPanelCell *)self wheelButton];
  }

  else
  {
    [(HUWheelControlPanelCell *)self wheelView];
  }
  v5 = ;
  v6 = [v4 na_setWithSafeObject:v5];

  return v6;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HUWheelControlPanelCell *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (NSString)titleText
{
  titleLabel = [(HUWheelControlPanelCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  detailLabel = [(HUWheelControlPanelCell *)self detailLabel];
  [detailLabel setText:textCopy];
}

- (NSString)detailText
{
  detailLabel = [(HUWheelControlPanelCell *)self detailLabel];
  text = [detailLabel text];

  return text;
}

- (void)setWheelView:(id)view
{
  viewCopy = view;
  wheelView = self->_wheelView;
  if (wheelView != viewCopy)
  {
    v8 = viewCopy;
    [(HUWheelControlView *)wheelView removeFromSuperview];
    objc_storeStrong(&self->_wheelView, view);
    [(HUWheelControlView *)self->_wheelView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUWheelControlPanelCell *)self contentView];
    [contentView addSubview:self->_wheelView];

    [(HUWheelControlView *)self->_wheelView setWheelDelegate:self];
    self->_wheelViewVisible = 0;
    [(HUWheelControlView *)self->_wheelView setHidden:1];
    [(UIView *)self->_separatorView setHidden:1];
    [(HUWheelControlPanelCell *)self setNeedsUpdateConstraints];
    viewCopy = v8;
  }
}

- (void)setWheelViewVisible:(BOOL)visible
{
  if (self->_wheelViewVisible != visible)
  {
    visibleCopy = visible;
    self->_wheelViewVisible = visible;
    wheelView = [(HUWheelControlPanelCell *)self wheelView];
    [wheelView setHidden:!visibleCopy];

    LOBYTE(wheelView) = self->_wheelViewVisible;
    separatorView = [(HUWheelControlPanelCell *)self separatorView];
    [separatorView setHidden:(wheelView & 1) == 0];

    [(HUWheelControlPanelCell *)self setNeedsUpdateConstraints];
  }
}

- (BOOL)isDisabled
{
  wheelView = [(HUWheelControlPanelCell *)self wheelView];
  isDisabled = [wheelView isDisabled];

  return isDisabled;
}

- (void)updateConstraints
{
  contentView = [(HUWheelControlPanelCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  staticConstraints = [(HUWheelControlPanelCell *)self staticConstraints];

  if (!staticConstraints)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    traitCollection = [(HUWheelControlPanelCell *)self traitCollection];
    [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
    v10 = v9;

    titleLabel = [(HUWheelControlPanelCell *)self titleLabel];
    topAnchor = [titleLabel topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v6 addObject:v14];

    titleLabel2 = [(HUWheelControlPanelCell *)self titleLabel];
    leadingAnchor = [titleLabel2 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v6 addObject:v18];

    titleLabel3 = [(HUWheelControlPanelCell *)self titleLabel];
    centerYAnchor = [titleLabel3 centerYAnchor];
    topAnchor3 = [(HUWheelControlPanelCell *)self topAnchor];
    v22 = v10 * 0.5;
    v23 = [centerYAnchor constraintEqualToAnchor:topAnchor3 constant:v22];
    [v6 addObject:v23];

    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      wheelButton = [(HUWheelControlPanelCell *)self wheelButton];
      topAnchor4 = [wheelButton topAnchor];
      topAnchor5 = [layoutMarginsGuide topAnchor];
      v27 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      [v6 addObject:v27];

      wheelButton2 = [(HUWheelControlPanelCell *)self wheelButton];
      trailingAnchor = [wheelButton2 trailingAnchor];
      trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
      v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v6 addObject:v31];

      [(HUWheelControlPanelCell *)self wheelButton];
    }

    else
    {
      titleLabel4 = [(HUWheelControlPanelCell *)self titleLabel];
      trailingAnchor3 = [titleLabel4 trailingAnchor];
      detailLabel = [(HUWheelControlPanelCell *)self detailLabel];
      leadingAnchor3 = [detailLabel leadingAnchor];
      v36 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3];
      [v6 addObject:v36];

      detailLabel2 = [(HUWheelControlPanelCell *)self detailLabel];
      LODWORD(v38) = 1144766464;
      [detailLabel2 setContentCompressionResistancePriority:0 forAxis:v38];

      detailLabel3 = [(HUWheelControlPanelCell *)self detailLabel];
      LODWORD(v40) = 1132134400;
      [detailLabel3 setContentHuggingPriority:0 forAxis:v40];

      detailLabel4 = [(HUWheelControlPanelCell *)self detailLabel];
      topAnchor6 = [detailLabel4 topAnchor];
      topAnchor7 = [layoutMarginsGuide topAnchor];
      v44 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
      [v6 addObject:v44];

      detailLabel5 = [(HUWheelControlPanelCell *)self detailLabel];
      trailingAnchor4 = [detailLabel5 trailingAnchor];
      trailingAnchor5 = [layoutMarginsGuide trailingAnchor];
      v48 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      [v6 addObject:v48];

      [(HUWheelControlPanelCell *)self detailLabel];
    }
    v49 = ;
    centerYAnchor2 = [v49 centerYAnchor];
    topAnchor8 = [(HUWheelControlPanelCell *)self topAnchor];
    v52 = [centerYAnchor2 constraintEqualToAnchor:topAnchor8 constant:v22];
    [v6 addObject:v52];

    [MEMORY[0x277CCAAD0] activateConstraints:v6];
    [(HUWheelControlPanelCell *)self setStaticConstraints:v6];
  }

  v53 = MEMORY[0x277CCAAD0];
  dynamicConstraints = [(HUWheelControlPanelCell *)self dynamicConstraints];
  [v53 deactivateConstraints:dynamicConstraints];

  LODWORD(dynamicConstraints) = [(HUWheelControlPanelCell *)self wheelViewVisible];
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (dynamicConstraints)
  {
    separatorView = [(HUWheelControlPanelCell *)self separatorView];
    topAnchor9 = [separatorView topAnchor];
    titleLabel5 = [(HUWheelControlPanelCell *)self titleLabel];
    bottomAnchor = [titleLabel5 bottomAnchor];
    [(HUWheelControlPanelCell *)self layoutMargins];
    v61 = [topAnchor9 constraintEqualToAnchor:bottomAnchor constant:v60];
    [v55 addObject:v61];

    separatorView2 = [(HUWheelControlPanelCell *)self separatorView];
    leadingAnchor4 = [separatorView2 leadingAnchor];
    leadingAnchor5 = [layoutMarginsGuide leadingAnchor];
    v65 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v55 addObject:v65];

    separatorView3 = [(HUWheelControlPanelCell *)self separatorView];
    trailingAnchor6 = [separatorView3 trailingAnchor];
    contentView2 = [(HUWheelControlPanelCell *)self contentView];
    trailingAnchor7 = [contentView2 trailingAnchor];
    v70 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [v55 addObject:v70];

    separatorView4 = [(HUWheelControlPanelCell *)self separatorView];
    heightAnchor = [separatorView4 heightAnchor];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v75 = [heightAnchor constraintEqualToConstant:1.0 / v74];
    [v55 addObject:v75];

    wheelView = [(HUWheelControlPanelCell *)self wheelView];
    topAnchor10 = [wheelView topAnchor];
    separatorView5 = [(HUWheelControlPanelCell *)self separatorView];
    bottomAnchor2 = [separatorView5 bottomAnchor];
    v80 = [topAnchor10 constraintEqualToAnchor:bottomAnchor2];
    [v55 addObject:v80];

    wheelView2 = [(HUWheelControlPanelCell *)self wheelView];
    leadingAnchor6 = [wheelView2 leadingAnchor];
    leadingAnchor7 = [layoutMarginsGuide leadingAnchor];
    v84 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v55 addObject:v84];

    wheelView3 = [(HUWheelControlPanelCell *)self wheelView];
    trailingAnchor8 = [wheelView3 trailingAnchor];
    trailingAnchor9 = [layoutMarginsGuide trailingAnchor];
    v88 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    [v55 addObject:v88];

    wheelView4 = [(HUWheelControlPanelCell *)self wheelView];
    bottomAnchor3 = [wheelView4 bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v92 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  }

  else
  {
    titleLabel6 = [(HUWheelControlPanelCell *)self titleLabel];
    bottomAnchor5 = [titleLabel6 bottomAnchor];
    bottomAnchor6 = [layoutMarginsGuide bottomAnchor];
    v96 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-5.0];
    [v55 addObject:v96];

    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      [(HUWheelControlPanelCell *)self wheelButton];
    }

    else
    {
      [(HUWheelControlPanelCell *)self detailLabel];
    }
    wheelView4 = ;
    bottomAnchor3 = [wheelView4 bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v92 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-5.0];
  }

  v97 = v92;
  [v55 addObject:v92];

  [(HUWheelControlPanelCell *)self setDynamicConstraints:v55];
  v98 = MEMORY[0x277CCAAD0];
  dynamicConstraints2 = [(HUWheelControlPanelCell *)self dynamicConstraints];
  [v98 activateConstraints:dynamicConstraints2];

  v100.receiver = self;
  v100.super_class = HUWheelControlPanelCell;
  [(HUControlPanelCell *)&v100 updateConstraints];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUWheelControlPanelCell;
  [(HUWheelControlPanelCell *)&v5 layoutSubviews];
  separatorColor = [(HUWheelControlPanelCell *)self separatorColor];
  separatorView = [(HUWheelControlPanelCell *)self separatorView];
  [separatorView setBackgroundColor:separatorColor];
}

- (void)prepareForReuse
{
  [(HUWheelControlPanelCell *)self setWheelView:0];
  v3.receiver = self;
  v3.super_class = HUWheelControlPanelCell;
  [(HUWheelControlPanelCell *)&v3 prepareForReuse];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v4 = objc_opt_class();
  item = [(HUControlPanelCell *)self item];
  if (!item)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = item;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = item;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  v39 = v8;

  v11 = objc_opt_class();
  controlItems = [v39 controlItems];
  anyObject = [controlItems anyObject];
  if (!anyObject)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = anyObject;
  }

  else
  {
    v14 = 0;
  }

  v15 = anyObject;
  if (!v14)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler2 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

    goto LABEL_14;
  }

LABEL_15:

  v18 = MEMORY[0x277CCAA28];
  incrementalCharacteristicType = [v15 incrementalCharacteristicType];
  valueSource = [v15 valueSource];
  incrementalCharacteristicType2 = [v15 incrementalCharacteristicType];
  v22 = [valueSource metadataForCharacteristicType:incrementalCharacteristicType2];
  v23 = [v18 hf_valueFormatterForCharacteristicType:incrementalCharacteristicType withMetadata:v22 options:0];

  minValue = [v15 minValue];
  [minValue doubleValue];
  v26 = v25;

  maxValue = [v15 maxValue];
  [maxValue doubleValue];
  v29 = v28;

  stepValue = [v15 stepValue];
  [stepValue doubleValue];

  [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v26 maxValue:v29 stepValue:1.0];
  LODWORD(valueSource) = [MEMORY[0x277D14CE8] useMacIdiom];
  v31 = [v39 identifierForControlItem:v15];
  if (valueSource)
  {
    wheelButton = [(HUWheelControlPanelCell *)self wheelButton];
    [wheelButton setIdentifier:v31];

    wheelButton2 = [(HUWheelControlPanelCell *)self wheelButton];
    [wheelButton2 setValueFormatter:v23];
  }

  else
  {
    wheelView = [(HUWheelControlPanelCell *)self wheelView];
    [wheelView setIdentifier:v31];

    wheelView2 = [(HUWheelControlPanelCell *)self wheelView];
    [wheelView2 setValueFormatter:v23];

    wheelButton2 = [(HUWheelControlPanelCell *)self wheelView];
    [wheelButton2 setCanBeHighlighted:1];
  }

  item2 = [(HUControlPanelCell *)self item];
  latestResults = [item2 latestResults];
  v38 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUWheelControlPanelCell *)self setTitleText:v38];
}

- (void)wheelControlView:(id)view didUpdateValue:(id)value
{
  valueCopy = value;
  valueFormatter = [view valueFormatter];
  v7 = [valueFormatter stringForObjectValue:valueCopy];

  [(HUWheelControlPanelCell *)self setDetailText:v7];
}

- (void)setMaxValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_maxValue isEqualToNumber:?])
  {
    objc_storeStrong(&self->_maxValue, value);
    maxValue = self->_maxValue;
    if (!maxValue || [(NSNumber *)maxValue isEqualToNumber:&unk_2824927F8])
    {
      _defaultMaxValue = [(HUWheelControlPanelCell *)self _defaultMaxValue];
      v7 = self->_maxValue;
      self->_maxValue = _defaultMaxValue;
    }

    minValue = [(HUWheelControlPanelCell *)self minValue];
    [minValue doubleValue];
    v10 = v9;
    [valueCopy doubleValue];
    v12 = v11;
    stepValue = [(HUWheelControlPanelCell *)self stepValue];
    [stepValue doubleValue];
    [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v10 maxValue:v12 stepValue:v14];
  }
}

- (void)setMinValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_minValue isEqualToNumber:?])
  {
    objc_storeStrong(&self->_minValue, value);
    minValue = self->_minValue;
    if (!minValue || [(NSNumber *)minValue isEqualToNumber:&unk_2824927F8])
    {
      _defaultMinValue = [(HUWheelControlPanelCell *)self _defaultMinValue];
      v7 = self->_minValue;
      self->_minValue = _defaultMinValue;
    }

    [valueCopy doubleValue];
    v9 = v8;
    maxValue = [(HUWheelControlPanelCell *)self maxValue];
    [maxValue doubleValue];
    v12 = v11;
    stepValue = [(HUWheelControlPanelCell *)self stepValue];
    [stepValue doubleValue];
    [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v9 maxValue:v12 stepValue:v14];
  }
}

- (void)setStepValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_stepValue isEqualToNumber:?])
  {
    objc_storeStrong(&self->_stepValue, value);
    stepValue = self->_stepValue;
    if (!stepValue || [(NSNumber *)stepValue compare:&unk_282492810]== NSOrderedAscending)
    {
      _defaultStepValue = [(HUWheelControlPanelCell *)self _defaultStepValue];
      v7 = self->_stepValue;
      self->_stepValue = _defaultStepValue;
    }

    minValue = [(HUWheelControlPanelCell *)self minValue];
    [minValue doubleValue];
    v10 = v9;
    maxValue = [(HUWheelControlPanelCell *)self maxValue];
    [maxValue doubleValue];
    v13 = v12;
    [valueCopy doubleValue];
    [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v10 maxValue:v13 stepValue:v14];
  }
}

- (void)setValueFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (!formatterCopy)
  {
    formatterCopy = [(HUWheelControlPanelCell *)self _defaultValueFormatter];
  }

  v6 = formatterCopy;
  objc_storeStrong(&self->_valueFormatter, formatterCopy);
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUWheelControlPanelCell *)self wheelButton];
  }

  else
  {
    [(HUWheelControlPanelCell *)self wheelView];
  }
  v5 = ;
  [v5 setValueFormatter:v6];
}

- (void)_generateWheelValuesWithMinValue:(double)value maxValue:(double)maxValue stepValue:(double)stepValue
{
  v8 = llround(maxValue - value);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v8 < 1)
  {
    if (maxValue == value)
    {
      [v13 addObject:&unk_2824927F8];
    }
  }

  else
  {
    v9 = 0;
    v10 = v8 + 1;
    do
    {
      value = [MEMORY[0x277CCABB0] numberWithDouble:v9 + value];
      [v13 addObject:value];

      ++v9;
    }

    while (v10 != v9);
  }

  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    [(HUWheelControlPanelCell *)self wheelButton];
  }

  else
  {
    [(HUWheelControlPanelCell *)self wheelView];
  }
  v12 = ;
  [v12 setValues:v13];
}

- (id)_defaultValueFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setMaximumFractionDigits:0];

  return v2;
}

@end