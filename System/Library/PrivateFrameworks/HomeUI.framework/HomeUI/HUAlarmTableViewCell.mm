@interface HUAlarmTableViewCell
+ (id)timeFormatter;
- (HUAlarmTableViewCell)initWithMobileTimerObject:(id)object roomName:(id)name;
- (HUAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUAlarmTableViewCellDelegate)delegate;
- (id)_alarmBackgroundColor;
- (void)_alarmActiveChanged:(id)changed;
- (void)_createSubviews;
- (void)_setTimeLabelToHour:(int64_t)hour minute:(int64_t)minute;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)refreshUI:(id)i roomName:(id)name animated:(BOOL)animated;
- (void)setDisabled:(BOOL)disabled;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation HUAlarmTableViewCell

- (HUAlarmTableViewCell)initWithMobileTimerObject:(id)object roomName:(id)name
{
  objectCopy = object;
  nameCopy = name;
  alarm = [objectCopy alarm];

  if (!alarm)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAlarmTableViewCell.m" lineNumber:70 description:@"HUMobileTimerObject must wrap an alarm"];
  }

  v10 = [(HUAlarmTableViewCell *)self init];
  if (v10)
  {
    alarm2 = [objectCopy alarm];
    alarm = v10->_alarm;
    v10->_alarm = alarm2;

    alarm3 = [objectCopy alarm];
    [(HUAlarmTableViewCell *)v10 refreshUI:alarm3 roomName:nameCopy animated:1];
  }

  return v10;
}

+ (id)timeFormatter
{
  if (qword_281120DB8 != -1)
  {
    dispatch_once(&qword_281120DB8, &__block_literal_global_197);
  }

  v3 = _MergedGlobals_1_5;

  return v3;
}

void __37__HUAlarmTableViewCell_timeFormatter__block_invoke()
{
  v2 = objc_alloc(MEMORY[0x277D146A0]);
  v0 = [v2 timeFormatter];
  v1 = _MergedGlobals_1_5;
  _MergedGlobals_1_5 = v0;
}

- (HUAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = HUAlarmTableViewCell;
  v4 = [(HUAlarmTableViewCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [(HUAlarmTableViewCell *)v4 setBackgroundView:controlCenterTertiaryMaterial];

      backgroundView = [(HUAlarmTableViewCell *)v4 backgroundView];
      layer = [backgroundView layer];
      [layer setCornerRadius:8.0];
    }

    [(HUAlarmTableViewCell *)v4 setAccessoryType:1];
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
    v10 = [v8 initWithImage:v9];
    [(HUAlarmTableViewCell *)v4 setEditingAccessoryView:v10];

    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v4->_calendar;
    v4->_calendar = autoupdatingCurrentCalendar;

    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    [(NSCalendar *)v4->_calendar setTimeZone:localTimeZone];

    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
    baseDate = v4->_baseDate;
    v4->_baseDate = v14;

    [(HUAlarmTableViewCell *)v4 _createSubviews];
    v16 = v4;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  _alarmBackgroundColor = [(HUAlarmTableViewCell *)self _alarmBackgroundColor];
  [(HUAlarmTableViewCell *)self setBackgroundColor:_alarmBackgroundColor];
}

- (id)_alarmBackgroundColor
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUAlarmTableViewCell *)self backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] hf_homePodControlCellBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (void)_createSubviews
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(HUAlarmTableViewCell *)self setEnabledSwitch:v3];

  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  enabledSwitch = [(HUAlarmTableViewCell *)self enabledSwitch];
  [enabledSwitch setOnTintColor:systemGreenColor];

  enabledSwitch2 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [enabledSwitch2 addTarget:self action:sel__alarmActiveChanged_ forControlEvents:4096];

  enabledSwitch3 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [enabledSwitch3 sizeToFit];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUAlarmTableViewCell *)self setNameAndDescriptionLabel:v8];

  v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] variant:1024];
  nameAndDescriptionLabel = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [nameAndDescriptionLabel setFont:v9];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  nameAndDescriptionLabel2 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [nameAndDescriptionLabel2 setTextColor:secondaryLabelColor];

  nameAndDescriptionLabel3 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [nameAndDescriptionLabel3 setNumberOfLines:0];

  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUAlarmTableViewCell *)self setTimeLabel:v14];

  v15 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] variant:1024];
  v16 = MEMORY[0x277D180C8];
  fontDescriptor = [v15 fontDescriptor];
  v18 = [v16 fontDescriptorWithMonospacedDigitsForFontDescriptor:fontDescriptor];

  v19 = [MEMORY[0x277D74300] fontWithDescriptor:v18 size:0.0];
  timeLabel = [(HUAlarmTableViewCell *)self timeLabel];
  [timeLabel setFont:v19];

  labelColor = [MEMORY[0x277D75348] labelColor];
  timeLabel2 = [(HUAlarmTableViewCell *)self timeLabel];
  [timeLabel2 setTextColor:labelColor];

  v23 = objc_alloc(MEMORY[0x277D75A68]);
  timeLabel3 = [(HUAlarmTableViewCell *)self timeLabel];
  v38[0] = timeLabel3;
  nameAndDescriptionLabel4 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  v38[1] = nameAndDescriptionLabel4;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v27 = [v23 initWithArrangedSubviews:v26];
  [(HUAlarmTableViewCell *)self setLabelsStackView:v27];

  labelsStackView = [(HUAlarmTableViewCell *)self labelsStackView];
  [labelsStackView setAxis:1];

  labelsStackView2 = [(HUAlarmTableViewCell *)self labelsStackView];
  [labelsStackView2 setAlignment:1];

  labelsStackView3 = [(HUAlarmTableViewCell *)self labelsStackView];
  [labelsStackView3 setDistribution:4];

  labelsStackView4 = [(HUAlarmTableViewCell *)self labelsStackView];
  [labelsStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HUAlarmTableViewCell *)self contentView];
  labelsStackView5 = [(HUAlarmTableViewCell *)self labelsStackView];
  [contentView addSubview:labelsStackView5];

  _alarmBackgroundColor = [(HUAlarmTableViewCell *)self _alarmBackgroundColor];
  [(HUAlarmTableViewCell *)self setBackgroundColor:_alarmBackgroundColor];

  enabledSwitch4 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [enabledSwitch4 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(HUAlarmTableViewCell *)self contentView];
  enabledSwitch5 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [contentView2 addSubview:enabledSwitch5];

  [(HUAlarmTableViewCell *)self _setupConstraints];
}

- (void)refreshUI:(id)i roomName:(id)name animated:(BOOL)animated
{
  animatedCopy = animated;
  nameCopy = name;
  iCopy = i;
  self->_enabled = [iCopy isEnabled];
  [iCopy repeatSchedule];
  v10 = DetailDateMaskToString();
  -[HUAlarmTableViewCell _setTimeLabelToHour:minute:](self, "_setTimeLabelToHour:minute:", [iCopy hour], objc_msgSend(iCopy, "minute"));
  displayTitle = [iCopy displayTitle];

  if ([nameCopy length])
  {
    v18 = HULocalizedStringWithFormat(@"HUAlarmTextLabelAdditionalInfoFormat", @"%@", v12, v13, v14, v15, v16, v17, nameCopy);
    v19 = [displayTitle stringByAppendingString:v18];

    displayTitle = v19;
  }

  if ([v10 length])
  {
    v26 = HULocalizedStringWithFormat(@"HUAlarmTextLabelAdditionalInfoFormat", @"%@", v20, v21, v22, v23, v24, v25, v10);
    v27 = [displayTitle stringByAppendingString:v26];

    displayTitle = v27;
  }

  nameAndDescriptionLabel = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [nameAndDescriptionLabel setText:displayTitle];

  nameAndDescriptionLabel2 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [nameAndDescriptionLabel2 sizeToFit];

  timeLabel = [(HUAlarmTableViewCell *)self timeLabel];
  [timeLabel sizeToFit];

  enabledSwitch = [(HUAlarmTableViewCell *)self enabledSwitch];
  [enabledSwitch setOn:self->_enabled animated:0];

  if (self->_enabled)
  {
    [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] hu_alarmsDisabledTextColor];
  }
  v32 = ;
  if (self->_enabled)
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] hu_alarmsDisabledTextColor];
  }
  v33 = ;
  v34 = MEMORY[0x277D75D18];
  v38[1] = 3221225472;
  v38[0] = MEMORY[0x277D85DD0];
  v38[2] = __52__HUAlarmTableViewCell_refreshUI_roomName_animated___block_invoke;
  v38[3] = &unk_277DB8810;
  if (animatedCopy)
  {
    v35 = 0.2;
  }

  else
  {
    v35 = 0.0;
  }

  v38[4] = self;
  v39 = v32;
  v40 = v33;
  v36 = v33;
  v37 = v32;
  [v34 animateWithDuration:v38 animations:v35];
}

void __52__HUAlarmTableViewCell_refreshUI_roomName_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) timeLabel];
  [v3 setTextColor:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) nameAndDescriptionLabel];
  [v5 setTextColor:v4];
}

- (void)_setupConstraints
{
  v33 = objc_opt_new();
  labelsStackView = [(HUAlarmTableViewCell *)self labelsStackView];
  topAnchor = [labelsStackView topAnchor];
  contentView = [(HUAlarmTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  [v33 addObject:v7];

  labelsStackView2 = [(HUAlarmTableViewCell *)self labelsStackView];
  bottomAnchor = [labelsStackView2 bottomAnchor];
  contentView2 = [(HUAlarmTableViewCell *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  [v33 addObject:v12];

  labelsStackView3 = [(HUAlarmTableViewCell *)self labelsStackView];
  leadingAnchor = [labelsStackView3 leadingAnchor];
  contentView3 = [(HUAlarmTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [v33 addObject:v17];

  labelsStackView4 = [(HUAlarmTableViewCell *)self labelsStackView];
  trailingAnchor = [labelsStackView4 trailingAnchor];
  enabledSwitch = [(HUAlarmTableViewCell *)self enabledSwitch];
  leadingAnchor3 = [enabledSwitch leadingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-20.0];
  [v33 addObject:v22];

  enabledSwitch2 = [(HUAlarmTableViewCell *)self enabledSwitch];
  trailingAnchor2 = [enabledSwitch2 trailingAnchor];
  contentView4 = [(HUAlarmTableViewCell *)self contentView];
  trailingAnchor3 = [contentView4 trailingAnchor];
  v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-12.0];
  [v33 addObject:v27];

  enabledSwitch3 = [(HUAlarmTableViewCell *)self enabledSwitch];
  centerYAnchor = [enabledSwitch3 centerYAnchor];
  contentView5 = [(HUAlarmTableViewCell *)self contentView];
  centerYAnchor2 = [contentView5 centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v33 addObject:v32];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    disabledCopy = disabled;
    enabledSwitch = [(HUAlarmTableViewCell *)self enabledSwitch];
    [enabledSwitch setEnabled:!disabledCopy];

    timeLabel = [(HUAlarmTableViewCell *)self timeLabel];
    [timeLabel setEnabled:!disabledCopy];
  }
}

- (void)_alarmActiveChanged:(id)changed
{
  changedCopy = changed;
  window = [(HUAlarmTableViewCell *)self window];
  [window setUserInteractionEnabled:0];

  [MEMORY[0x277CD9FF0] animationDuration];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HUAlarmTableViewCell__alarmActiveChanged___block_invoke;
  v9[3] = &unk_277DB7558;
  v9[4] = self;
  v10 = changedCopy;
  v8 = changedCopy;
  dispatch_after(v7, MEMORY[0x277D85CD0], v9);
}

void __44__HUAlarmTableViewCell__alarmActiveChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) isOn];
    v7 = 138412802;
    v8 = v3;
    v9 = 2080;
    v10 = "[HUAlarmTableViewCell _alarmActiveChanged:]_block_invoke";
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%s alarm toggled to %{BOOL}d", &v7, 0x1Cu);
  }

  v5 = [*(a1 + 32) window];
  [v5 setUserInteractionEnabled:1];

  v6 = [*(a1 + 32) delegate];
  [v6 setAlarmEnabled:objc_msgSend(*(a1 + 40) forCell:{"isOn"), *(a1 + 32)}];
}

- (void)willTransitionToState:(unint64_t)state
{
  v4.receiver = self;
  v4.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v4 willTransitionToState:state];
  [(HUAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v5 setSelected:selected animated:animated];
  [(HUAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v5 setHighlighted:highlighted animated:animated];
  [(HUAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7 = 0.2;
  v9[1] = 3221225472;
  v9[0] = MEMORY[0x277D85DD0];
  v9[2] = __44__HUAlarmTableViewCell_setEditing_animated___block_invoke;
  v9[3] = &unk_277DB7EE0;
  if (!animated)
  {
    v7 = 0.0;
  }

  v9[4] = self;
  editingCopy2 = editing;
  [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v7];
  v8.receiver = self;
  v8.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v8 setEditing:editingCopy animated:animatedCopy];
}

uint64_t __44__HUAlarmTableViewCell_setEditing_animated___block_invoke(uint64_t a1)
{
  v1 = 15.0;
  if (*(a1 + 40))
  {
    v1 = 45.0;
  }

  return [*(a1 + 32) setSeparatorInset:{0.0, v1, 0.0, 0.0}];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v6 layoutSubviews];
  _alarmBackgroundColor = [(HUAlarmTableViewCell *)self _alarmBackgroundColor];
  [(HUAlarmTableViewCell *)self setBackgroundColor:_alarmBackgroundColor];

  layer = [(HUAlarmTableViewCell *)self layer];
  [layer setCornerRadius:8.0];

  layer2 = [(HUAlarmTableViewCell *)self layer];
  [layer2 setMasksToBounds:1];
}

- (void)_setTimeLabelToHour:(int64_t)hour minute:(int64_t)minute
{
  timeFormatter = [objc_opt_class() timeFormatter];
  calendar = [(HUAlarmTableViewCell *)self calendar];
  v8 = [calendar components:1644 fromDate:self->_baseDate];

  [v8 setHour:hour];
  [v8 setMinute:minute];
  calendar2 = [(HUAlarmTableViewCell *)self calendar];
  v10 = [calendar2 dateFromComponents:v8];

  v11 = [timeFormatter stringFromDate:v10];
  timeLabel = [(HUAlarmTableViewCell *)self timeLabel];
  [timeLabel setText:v11];
}

- (HUAlarmTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end