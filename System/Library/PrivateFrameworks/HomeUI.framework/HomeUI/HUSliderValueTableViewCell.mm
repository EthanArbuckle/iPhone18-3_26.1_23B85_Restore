@interface HUSliderValueTableViewCell
- (BOOL)_isShowingMinMaxLabels;
- (BOOL)isContinuous;
- (BOOL)isDisabled;
- (HUSliderValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUSliderValueTableViewCellDelegate)delegate;
- (UIImage)maximumValueImage;
- (UIImage)minimumValueImage;
- (double)maximumValue;
- (double)minimumValue;
- (double)value;
- (id)_createValueLabel;
- (void)_setupAutoLayoutConstraints;
- (void)_sliderChanged:(id)changed;
- (void)_updateMinMaxValueLabels;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
- (void)setContinuous:(BOOL)continuous;
- (void)setDisabled:(BOOL)disabled;
- (void)setMaximumValue:(double)value;
- (void)setMaximumValueImage:(id)image;
- (void)setMaximumValueText:(id)text;
- (void)setMinimumValue:(double)value;
- (void)setMinimumValueImage:(id)image;
- (void)setMinimumValueText:(id)text;
- (void)setShowValue:(BOOL)value;
- (void)setTitle:(id)title;
- (void)setUseLargeCell:(BOOL)cell;
- (void)setValue:(double)value;
@end

@implementation HUSliderValueTableViewCell

- (HUSliderValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = HUSliderValueTableViewCell;
  v4 = [(HUSliderValueTableViewCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75A30]);
    [(HUSliderValueTableViewCell *)v4 setSlider:v5];

    slider = [(HUSliderValueTableViewCell *)v4 slider];
    [slider setMinimumValue:0.0];

    slider2 = [(HUSliderValueTableViewCell *)v4 slider];
    LODWORD(v8) = 1120403456;
    [slider2 setMaximumValue:v8];

    slider3 = [(HUSliderValueTableViewCell *)v4 slider];
    [slider3 setTranslatesAutoresizingMaskIntoConstraints:0];

    slider4 = [(HUSliderValueTableViewCell *)v4 slider];
    [slider4 addTarget:v4 action:sel__sliderChanged_ forControlEvents:4096];

    contentView = [(HUSliderValueTableViewCell *)v4 contentView];
    slider5 = [(HUSliderValueTableViewCell *)v4 slider];
    [contentView addSubview:slider5];

    _createValueLabel = [(HUSliderValueTableViewCell *)v4 _createValueLabel];
    [(HUSliderValueTableViewCell *)v4 setValueLabel:_createValueLabel];

    [(HUSliderValueTableViewCell *)v4 setValue:0.0];
    contentView2 = [(HUSliderValueTableViewCell *)v4 contentView];
    valueLabel = [(HUSliderValueTableViewCell *)v4 valueLabel];
    [contentView2 addSubview:valueLabel];

    textLabel = [(HUSliderValueTableViewCell *)v4 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    textLabel2 = [(HUSliderValueTableViewCell *)v4 textLabel];
    [textLabel2 setHidden:1];

    [(HUSliderValueTableViewCell *)v4 setShowValue:1];
  }

  return v4;
}

- (id)_createValueLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v3 setTextColor:labelColor];

  textLabel = [(HUSliderValueTableViewCell *)self textLabel];
  font = [textLabel font];
  [v3 setFont:font];

  return v3;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = HUSliderValueTableViewCell;
  [(HUSliderValueTableViewCell *)&v3 didMoveToSuperview];
  [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
}

- (void)setContinuous:(BOOL)continuous
{
  continuousCopy = continuous;
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider setContinuous:continuousCopy];
}

- (BOOL)isContinuous
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  isContinuous = [slider isContinuous];

  return isContinuous;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUSliderValueTableViewCell;
  [(HUSliderValueTableViewCell *)&v4 prepareForReuse];
  [(HUSliderValueTableViewCell *)self setShowValue:1];
  textLabel = [(HUSliderValueTableViewCell *)self textLabel];
  [textLabel setHidden:1];

  [(HUSliderValueTableViewCell *)self setUseLargeCell:0];
}

- (double)minimumValue
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinimumValue:(double)value
{
  valueCopy = value;
  slider = [(HUSliderValueTableViewCell *)self slider];
  *&v4 = valueCopy;
  [slider setMinimumValue:v4];
}

- (double)maximumValue
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaximumValue:(double)value
{
  valueCopy = value;
  slider = [(HUSliderValueTableViewCell *)self slider];
  *&v4 = valueCopy;
  [slider setMaximumValue:v4];
}

- (double)value
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)value
{
  valueCopy = value;
  slider = [(HUSliderValueTableViewCell *)self slider];
  *&v7 = valueCopy;
  [slider setValue:v7];

  delegate = [(HUSliderValueTableViewCell *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HUSliderValueTableViewCell *)self delegate];
    item = [(HUSliderValueTableViewCell *)self item];
    v15 = [delegate2 valueDescriptionForItem:item value:value];

    v12 = v15;
  }

  else
  {
    v12 = 0;
  }

  v16 = v12;
  if (![v12 length])
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.1f", *&value];

    v16 = v13;
  }

  valueLabel = [(HUSliderValueTableViewCell *)self valueLabel];
  [valueLabel setText:v16];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  textLabel = [(HUSliderValueTableViewCell *)self textLabel];
  [textLabel setText:titleCopy];

  textLabel2 = [(HUSliderValueTableViewCell *)self textLabel];
  [textLabel2 setHidden:0];
}

- (void)_sliderChanged:(id)changed
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider value];
  [(HUSliderValueTableViewCell *)self setValue:v5];

  delegate = [(HUSliderValueTableViewCell *)self delegate];
  [(HUSliderValueTableViewCell *)self value];
  [delegate sliderValueTableViewCell:self didChangeValue:?];
}

- (void)setShowValue:(BOOL)value
{
  if (self->_showValue != value)
  {
    self->_showValue = value;
    showValue = [(HUSliderValueTableViewCell *)self showValue];
    valueLabel = [(HUSliderValueTableViewCell *)self valueLabel];
    [valueLabel setHidden:!showValue];

    [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
  }
}

- (UIImage)minimumValueImage
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  minimumValueImage = [slider minimumValueImage];

  return minimumValueImage;
}

- (void)setMinimumValueImage:(id)image
{
  imageCopy = image;
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider setMinimumValueImage:imageCopy];

  [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
}

- (UIImage)maximumValueImage
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  maximumValueImage = [slider maximumValueImage];

  return maximumValueImage;
}

- (void)setMaximumValueImage:(id)image
{
  imageCopy = image;
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider setMaximumValueImage:imageCopy];

  [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
}

- (void)setUseLargeCell:(BOOL)cell
{
  if (self->_useLargeCell != cell)
  {
    self->_useLargeCell = cell;
    [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
  }
}

- (void)setMinimumValueText:(id)text
{
  textCopy = text;
  if (self->_minimumValueText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_minimumValueText, text);
    [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
    textCopy = v6;
  }
}

- (void)setMaximumValueText:(id)text
{
  textCopy = text;
  if (self->_maximumValueText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_maximumValueText, text);
    [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
    textCopy = v6;
  }
}

- (BOOL)isDisabled
{
  slider = [(HUSliderValueTableViewCell *)self slider];
  isEnabled = [slider isEnabled];

  return isEnabled;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  slider = [(HUSliderValueTableViewCell *)self slider];
  [slider setEnabled:!disabledCopy];

  [(HUSliderValueTableViewCell *)self setUserInteractionEnabled:!disabledCopy];
  if (disabledCopy)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v8 = ;
  textLabel = [(HUSliderValueTableViewCell *)self textLabel];
  [textLabel setTextColor:v8];

  valueLabel = [(HUSliderValueTableViewCell *)self valueLabel];
  [valueLabel setTextColor:v8];

  [(HUSliderValueTableViewCell *)self setTextColor:v8];
}

- (void)_setupAutoLayoutConstraints
{
  constraints = [(HUSliderValueTableViewCell *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUSliderValueTableViewCell *)self constraints];
    [v4 deactivateConstraints:constraints2];
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([(HUSliderValueTableViewCell *)self useLargeCell])
  {
    textLabel = [(HUSliderValueTableViewCell *)self textLabel];
    topAnchor = [textLabel topAnchor];
    contentView = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide = [contentView readableContentGuide];
    topAnchor2 = [readableContentGuide topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v11];

    textLabel2 = [(HUSliderValueTableViewCell *)self textLabel];
    leadingAnchor = [textLabel2 leadingAnchor];
    contentView2 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide2 = [contentView2 readableContentGuide];
    leadingAnchor2 = [readableContentGuide2 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v17];

    valueLabel = [(HUSliderValueTableViewCell *)self valueLabel];
    centerYAnchor = [valueLabel centerYAnchor];
    textLabel3 = [(HUSliderValueTableViewCell *)self textLabel];
    centerYAnchor2 = [textLabel3 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v22];

    valueLabel2 = [(HUSliderValueTableViewCell *)self valueLabel];
    trailingAnchor = [valueLabel2 trailingAnchor];
    contentView3 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide3 = [contentView3 readableContentGuide];
    trailingAnchor2 = [readableContentGuide3 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v28];

    slider = [(HUSliderValueTableViewCell *)self slider];
    topAnchor3 = [slider topAnchor];
    textLabel4 = [(HUSliderValueTableViewCell *)self textLabel];
    bottomAnchor = [textLabel4 bottomAnchor];
    v33 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
    [array addObject:v33];

    slider2 = [(HUSliderValueTableViewCell *)self slider];
    leadingAnchor3 = [slider2 leadingAnchor];
    contentView4 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide4 = [contentView4 readableContentGuide];
    leadingAnchor4 = [readableContentGuide4 leadingAnchor];
    v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v39];

    slider3 = [(HUSliderValueTableViewCell *)self slider];
    trailingAnchor3 = [slider3 trailingAnchor];
    contentView5 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide5 = [contentView5 readableContentGuide];
    trailingAnchor4 = [readableContentGuide5 trailingAnchor];
    v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v45];

    slider4 = [(HUSliderValueTableViewCell *)self slider];
    bottomAnchor2 = [slider4 bottomAnchor];
    contentView6 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide6 = [contentView6 readableContentGuide];
    bottomAnchor3 = [readableContentGuide6 bottomAnchor];
  }

  else
  {
    slider5 = [(HUSliderValueTableViewCell *)self slider];
    bottomAnchor4 = [slider5 bottomAnchor];
    contentView7 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide7 = [contentView7 readableContentGuide];
    bottomAnchor5 = [readableContentGuide7 bottomAnchor];
    v56 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [array addObject:v56];

    valueLabel3 = [(HUSliderValueTableViewCell *)self valueLabel];
    trailingAnchor5 = [valueLabel3 trailingAnchor];
    contentView8 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide8 = [contentView8 readableContentGuide];
    trailingAnchor6 = [readableContentGuide8 trailingAnchor];
    v62 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [array addObject:v62];

    if ([(HUSliderValueTableViewCell *)self showValue])
    {
      valueLabel4 = [(HUSliderValueTableViewCell *)self valueLabel];
      leadingAnchor5 = [valueLabel4 leadingAnchor];
      contentView9 = [(HUSliderValueTableViewCell *)self contentView];
      readableContentGuide9 = [contentView9 readableContentGuide];
      leadingAnchor6 = [readableContentGuide9 leadingAnchor];
      v68 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [array addObject:v68];

      valueLabel5 = [(HUSliderValueTableViewCell *)self valueLabel];
      topAnchor4 = [valueLabel5 topAnchor];
      contentView10 = [(HUSliderValueTableViewCell *)self contentView];
      readableContentGuide10 = [contentView10 readableContentGuide];
      topAnchor5 = [readableContentGuide10 topAnchor];
      v74 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      [array addObject:v74];

      slider6 = [(HUSliderValueTableViewCell *)self slider];
      topAnchor6 = [slider6 topAnchor];
      valueLabel6 = [(HUSliderValueTableViewCell *)self valueLabel];
      [valueLabel6 bottomAnchor];
    }

    else
    {
      slider7 = [(HUSliderValueTableViewCell *)self slider];
      topAnchor7 = [slider7 topAnchor];
      contentView11 = [(HUSliderValueTableViewCell *)self contentView];
      readableContentGuide11 = [contentView11 readableContentGuide];
      topAnchor8 = [readableContentGuide11 topAnchor];
      v83 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      [array addObject:v83];

      valueLabel7 = [(HUSliderValueTableViewCell *)self valueLabel];
      leadingAnchor7 = [valueLabel7 leadingAnchor];
      slider8 = [(HUSliderValueTableViewCell *)self slider];
      trailingAnchor7 = [slider8 trailingAnchor];
      v88 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor7 constant:12.0];
      [array addObject:v88];

      slider6 = [(HUSliderValueTableViewCell *)self valueLabel];
      topAnchor6 = [slider6 centerYAnchor];
      valueLabel6 = [(HUSliderValueTableViewCell *)self slider];
      [valueLabel6 centerYAnchor];
    }
    v89 = ;
    v90 = [topAnchor6 constraintEqualToAnchor:v89];
    [array addObject:v90];

    if ([(HUSliderValueTableViewCell *)self _isShowingMinMaxLabels])
    {
      minValueLabel = [(HUSliderValueTableViewCell *)self minValueLabel];
      leadingAnchor8 = [minValueLabel leadingAnchor];
      contentView12 = [(HUSliderValueTableViewCell *)self contentView];
      readableContentGuide12 = [contentView12 readableContentGuide];
      leadingAnchor9 = [readableContentGuide12 leadingAnchor];
      v96 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
      [array addObject:v96];

      slider9 = [(HUSliderValueTableViewCell *)self slider];
      leadingAnchor10 = [slider9 leadingAnchor];
      minValueLabel2 = [(HUSliderValueTableViewCell *)self minValueLabel];
      trailingAnchor8 = [minValueLabel2 trailingAnchor];
      v101 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8 constant:4.0];
      [array addObject:v101];

      maxValueLabel = [(HUSliderValueTableViewCell *)self maxValueLabel];
      trailingAnchor9 = [maxValueLabel trailingAnchor];
      contentView13 = [(HUSliderValueTableViewCell *)self contentView];
      readableContentGuide13 = [contentView13 readableContentGuide];
      trailingAnchor10 = [readableContentGuide13 trailingAnchor];
      v107 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
      [array addObject:v107];

      slider10 = [(HUSliderValueTableViewCell *)self slider];
      trailingAnchor11 = [slider10 trailingAnchor];
      maxValueLabel2 = [(HUSliderValueTableViewCell *)self maxValueLabel];
      leadingAnchor11 = [maxValueLabel2 leadingAnchor];
      v112 = [trailingAnchor11 constraintEqualToAnchor:leadingAnchor11 constant:-4.0];
      [array addObject:v112];

      minValueLabel3 = [(HUSliderValueTableViewCell *)self minValueLabel];
      centerYAnchor3 = [minValueLabel3 centerYAnchor];
      slider11 = [(HUSliderValueTableViewCell *)self slider];
      centerYAnchor4 = [slider11 centerYAnchor];
      v117 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      [array addObject:v117];

      slider4 = [(HUSliderValueTableViewCell *)self maxValueLabel];
      bottomAnchor2 = [slider4 centerYAnchor];
      contentView6 = [(HUSliderValueTableViewCell *)self slider];
      readableContentGuide6 = [contentView6 centerYAnchor];
      v118 = [bottomAnchor2 constraintEqualToAnchor:readableContentGuide6];
      [array addObject:v118];
      goto LABEL_12;
    }

    slider12 = [(HUSliderValueTableViewCell *)self slider];
    leadingAnchor12 = [slider12 leadingAnchor];
    contentView14 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide14 = [contentView14 readableContentGuide];
    leadingAnchor13 = [readableContentGuide14 leadingAnchor];
    v124 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
    [array addObject:v124];

    slider4 = [(HUSliderValueTableViewCell *)self slider];
    bottomAnchor2 = [slider4 trailingAnchor];
    contentView6 = [(HUSliderValueTableViewCell *)self contentView];
    readableContentGuide6 = [contentView6 readableContentGuide];
    bottomAnchor3 = [readableContentGuide6 trailingAnchor];
  }

  v118 = bottomAnchor3;
  v125 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [array addObject:v125];

LABEL_12:
  [(HUSliderValueTableViewCell *)self setConstraints:array];
  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)_updateMinMaxValueLabels
{
  if ((self->_minimumValueText || self->_maximumValueText) && (([(HUSliderValueTableViewCell *)self minimumValueImage], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, [(HUSliderValueTableViewCell *)self maximumValueImage], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5)))
  {
    if (!self->_minValueLabel)
    {
      _createValueLabel = [(HUSliderValueTableViewCell *)self _createValueLabel];
      [(HUSliderValueTableViewCell *)self setMinValueLabel:_createValueLabel];

      contentView = [(HUSliderValueTableViewCell *)self contentView];
      [contentView addSubview:self->_minValueLabel];
    }

    if (!self->_maxValueLabel)
    {
      _createValueLabel2 = [(HUSliderValueTableViewCell *)self _createValueLabel];
      [(HUSliderValueTableViewCell *)self setMaxValueLabel:_createValueLabel2];

      contentView2 = [(HUSliderValueTableViewCell *)self contentView];
      [contentView2 addSubview:self->_maxValueLabel];
    }

    [(UILabel *)self->_minValueLabel setText:self->_minimumValueText];
    [(UILabel *)self->_maxValueLabel setText:self->_maximumValueText];

    [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
  }

  else
  {
    [(UILabel *)self->_minValueLabel removeFromSuperview];
    [(UILabel *)self->_maxValueLabel removeFromSuperview];
    [(HUSliderValueTableViewCell *)self setMinValueLabel:0];

    [(HUSliderValueTableViewCell *)self setMaxValueLabel:0];
  }
}

- (BOOL)_isShowingMinMaxLabels
{
  contentView = [(HUSliderValueTableViewCell *)self contentView];
  if ([contentView containsView:self->_minValueLabel])
  {
    contentView2 = [(HUSliderValueTableViewCell *)self contentView];
    v5 = [contentView2 containsView:self->_maxValueLabel];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HUSliderValueTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end