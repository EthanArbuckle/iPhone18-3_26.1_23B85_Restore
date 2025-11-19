@interface HUAlarmTableViewCell
+ (id)timeFormatter;
- (HUAlarmTableViewCell)initWithMobileTimerObject:(id)a3 roomName:(id)a4;
- (HUAlarmTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUAlarmTableViewCellDelegate)delegate;
- (id)_alarmBackgroundColor;
- (void)_alarmActiveChanged:(id)a3;
- (void)_createSubviews;
- (void)_setTimeLabelToHour:(int64_t)a3 minute:(int64_t)a4;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)refreshUI:(id)a3 roomName:(id)a4 animated:(BOOL)a5;
- (void)setDisabled:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation HUAlarmTableViewCell

- (HUAlarmTableViewCell)initWithMobileTimerObject:(id)a3 roomName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 alarm];

  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HUAlarmTableViewCell.m" lineNumber:70 description:@"HUMobileTimerObject must wrap an alarm"];
  }

  v10 = [(HUAlarmTableViewCell *)self init];
  if (v10)
  {
    v11 = [v7 alarm];
    alarm = v10->_alarm;
    v10->_alarm = v11;

    v13 = [v7 alarm];
    [(HUAlarmTableViewCell *)v10 refreshUI:v13 roomName:v8 animated:1];
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

- (HUAlarmTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = HUAlarmTableViewCell;
  v4 = [(HUAlarmTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v5 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [(HUAlarmTableViewCell *)v4 setBackgroundView:v5];

      v6 = [(HUAlarmTableViewCell *)v4 backgroundView];
      v7 = [v6 layer];
      [v7 setCornerRadius:8.0];
    }

    [(HUAlarmTableViewCell *)v4 setAccessoryType:1];
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
    v10 = [v8 initWithImage:v9];
    [(HUAlarmTableViewCell *)v4 setEditingAccessoryView:v10];

    v11 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v4->_calendar;
    v4->_calendar = v11;

    v13 = [MEMORY[0x277CBEBB0] localTimeZone];
    [(NSCalendar *)v4->_calendar setTimeZone:v13];

    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
    baseDate = v4->_baseDate;
    v4->_baseDate = v14;

    [(HUAlarmTableViewCell *)v4 _createSubviews];
    v16 = v4;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(HUAlarmTableViewCell *)self _alarmBackgroundColor];
  [(HUAlarmTableViewCell *)self setBackgroundColor:v4];
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

  v4 = [MEMORY[0x277D75348] systemGreenColor];
  v5 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [v5 setOnTintColor:v4];

  v6 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [v6 addTarget:self action:sel__alarmActiveChanged_ forControlEvents:4096];

  v7 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [v7 sizeToFit];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUAlarmTableViewCell *)self setNameAndDescriptionLabel:v8];

  v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] variant:1024];
  v10 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [v10 setFont:v9];

  v11 = [MEMORY[0x277D75348] secondaryLabelColor];
  v12 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [v12 setTextColor:v11];

  v13 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [v13 setNumberOfLines:0];

  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUAlarmTableViewCell *)self setTimeLabel:v14];

  v15 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] variant:1024];
  v16 = MEMORY[0x277D180C8];
  v17 = [v15 fontDescriptor];
  v18 = [v16 fontDescriptorWithMonospacedDigitsForFontDescriptor:v17];

  v19 = [MEMORY[0x277D74300] fontWithDescriptor:v18 size:0.0];
  v20 = [(HUAlarmTableViewCell *)self timeLabel];
  [v20 setFont:v19];

  v21 = [MEMORY[0x277D75348] labelColor];
  v22 = [(HUAlarmTableViewCell *)self timeLabel];
  [v22 setTextColor:v21];

  v23 = objc_alloc(MEMORY[0x277D75A68]);
  v24 = [(HUAlarmTableViewCell *)self timeLabel];
  v38[0] = v24;
  v25 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  v38[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v27 = [v23 initWithArrangedSubviews:v26];
  [(HUAlarmTableViewCell *)self setLabelsStackView:v27];

  v28 = [(HUAlarmTableViewCell *)self labelsStackView];
  [v28 setAxis:1];

  v29 = [(HUAlarmTableViewCell *)self labelsStackView];
  [v29 setAlignment:1];

  v30 = [(HUAlarmTableViewCell *)self labelsStackView];
  [v30 setDistribution:4];

  v31 = [(HUAlarmTableViewCell *)self labelsStackView];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [(HUAlarmTableViewCell *)self contentView];
  v33 = [(HUAlarmTableViewCell *)self labelsStackView];
  [v32 addSubview:v33];

  v34 = [(HUAlarmTableViewCell *)self _alarmBackgroundColor];
  [(HUAlarmTableViewCell *)self setBackgroundColor:v34];

  v35 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [(HUAlarmTableViewCell *)self contentView];
  v37 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [v36 addSubview:v37];

  [(HUAlarmTableViewCell *)self _setupConstraints];
}

- (void)refreshUI:(id)a3 roomName:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  self->_enabled = [v9 isEnabled];
  [v9 repeatSchedule];
  v10 = DetailDateMaskToString();
  -[HUAlarmTableViewCell _setTimeLabelToHour:minute:](self, "_setTimeLabelToHour:minute:", [v9 hour], objc_msgSend(v9, "minute"));
  v11 = [v9 displayTitle];

  if ([v8 length])
  {
    v18 = HULocalizedStringWithFormat(@"HUAlarmTextLabelAdditionalInfoFormat", @"%@", v12, v13, v14, v15, v16, v17, v8);
    v19 = [v11 stringByAppendingString:v18];

    v11 = v19;
  }

  if ([v10 length])
  {
    v26 = HULocalizedStringWithFormat(@"HUAlarmTextLabelAdditionalInfoFormat", @"%@", v20, v21, v22, v23, v24, v25, v10);
    v27 = [v11 stringByAppendingString:v26];

    v11 = v27;
  }

  v28 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [v28 setText:v11];

  v29 = [(HUAlarmTableViewCell *)self nameAndDescriptionLabel];
  [v29 sizeToFit];

  v30 = [(HUAlarmTableViewCell *)self timeLabel];
  [v30 sizeToFit];

  v31 = [(HUAlarmTableViewCell *)self enabledSwitch];
  [v31 setOn:self->_enabled animated:0];

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
  if (v5)
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
  v3 = [(HUAlarmTableViewCell *)self labelsStackView];
  v4 = [v3 topAnchor];
  v5 = [(HUAlarmTableViewCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:20.0];
  [v33 addObject:v7];

  v8 = [(HUAlarmTableViewCell *)self labelsStackView];
  v9 = [v8 bottomAnchor];
  v10 = [(HUAlarmTableViewCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:-10.0];
  [v33 addObject:v12];

  v13 = [(HUAlarmTableViewCell *)self labelsStackView];
  v14 = [v13 leadingAnchor];
  v15 = [(HUAlarmTableViewCell *)self contentView];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:20.0];
  [v33 addObject:v17];

  v18 = [(HUAlarmTableViewCell *)self labelsStackView];
  v19 = [v18 trailingAnchor];
  v20 = [(HUAlarmTableViewCell *)self enabledSwitch];
  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:-20.0];
  [v33 addObject:v22];

  v23 = [(HUAlarmTableViewCell *)self enabledSwitch];
  v24 = [v23 trailingAnchor];
  v25 = [(HUAlarmTableViewCell *)self contentView];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-12.0];
  [v33 addObject:v27];

  v28 = [(HUAlarmTableViewCell *)self enabledSwitch];
  v29 = [v28 centerYAnchor];
  v30 = [(HUAlarmTableViewCell *)self contentView];
  v31 = [v30 centerYAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v33 addObject:v32];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    v4 = a3;
    v6 = [(HUAlarmTableViewCell *)self enabledSwitch];
    [v6 setEnabled:!v4];

    v7 = [(HUAlarmTableViewCell *)self timeLabel];
    [v7 setEnabled:!v4];
  }
}

- (void)_alarmActiveChanged:(id)a3
{
  v4 = a3;
  v5 = [(HUAlarmTableViewCell *)self window];
  [v5 setUserInteractionEnabled:0];

  [MEMORY[0x277CD9FF0] animationDuration];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HUAlarmTableViewCell__alarmActiveChanged___block_invoke;
  v9[3] = &unk_277DB7558;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
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

- (void)willTransitionToState:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v4 willTransitionToState:a3];
  [(HUAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v5 setSelected:a3 animated:a4];
  [(HUAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v5 setHighlighted:a3 animated:a4];
  [(HUAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = 0.2;
  v9[1] = 3221225472;
  v9[0] = MEMORY[0x277D85DD0];
  v9[2] = __44__HUAlarmTableViewCell_setEditing_animated___block_invoke;
  v9[3] = &unk_277DB7EE0;
  if (!a4)
  {
    v7 = 0.0;
  }

  v9[4] = self;
  v10 = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v7];
  v8.receiver = self;
  v8.super_class = HUAlarmTableViewCell;
  [(HUAlarmTableViewCell *)&v8 setEditing:v5 animated:v4];
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
  v3 = [(HUAlarmTableViewCell *)self _alarmBackgroundColor];
  [(HUAlarmTableViewCell *)self setBackgroundColor:v3];

  v4 = [(HUAlarmTableViewCell *)self layer];
  [v4 setCornerRadius:8.0];

  v5 = [(HUAlarmTableViewCell *)self layer];
  [v5 setMasksToBounds:1];
}

- (void)_setTimeLabelToHour:(int64_t)a3 minute:(int64_t)a4
{
  v13 = [objc_opt_class() timeFormatter];
  v7 = [(HUAlarmTableViewCell *)self calendar];
  v8 = [v7 components:1644 fromDate:self->_baseDate];

  [v8 setHour:a3];
  [v8 setMinute:a4];
  v9 = [(HUAlarmTableViewCell *)self calendar];
  v10 = [v9 dateFromComponents:v8];

  v11 = [v13 stringFromDate:v10];
  v12 = [(HUAlarmTableViewCell *)self timeLabel];
  [v12 setText:v11];
}

- (HUAlarmTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end