@interface HUTimerIntervalPickerView
- (HUTimerIntervalPickerView)initWithFrame:(CGRect)frame;
- (HUTimerIntervalPickerViewDelegate)delegate;
- (double)selectedDuration;
- (id)_hoursStringForHour:(int64_t)hour;
- (id)_labelForComponent:(int64_t)component createIfNecessary:(BOOL)necessary;
- (id)_makeNewComponentLabel;
- (id)_minutesStringForMinutes:(int64_t)minutes;
- (id)_secondsStringForSeconds:(int64_t)seconds;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_fadeLabelForComponent:(int64_t)component toText:(id)text animated:(BOOL)animated;
- (void)_positionLabel:(id)label forComponent:(int64_t)component;
- (void)_setLabel:(id)label forComponent:(int64_t)component;
- (void)_updateLabels:(BOOL)labels;
- (void)layoutSubviews;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setDuration:(double)duration;
- (void)updateConstraints;
@end

@implementation HUTimerIntervalPickerView

- (HUTimerIntervalPickerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HUTimerIntervalPickerView;
  v3 = [(HUTimerIntervalPickerView *)&v7 initWithFrame:0.0, 0.0, 180.0, 216.0];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75840]) initWithFrame:{0.0, 0.0, 180.0, 216.0}];
    timePicker = v3->_timePicker;
    v3->_timePicker = v4;

    [(UIPickerView *)v3->_timePicker setDataSource:v3];
    [(UIPickerView *)v3->_timePicker setDelegate:v3];
    [(HUTimerIntervalPickerView *)v3 addSubview:v3->_timePicker];
  }

  return v3;
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = HUTimerIntervalPickerView;
  [(HUTimerIntervalPickerView *)&v6 updateConstraints];
  v3 = MEMORY[0x277CCAAD0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__HUTimerIntervalPickerView_updateConstraints__block_invoke;
  v5[3] = &unk_277DB82A0;
  v5[4] = self;
  v4 = __46__HUTimerIntervalPickerView_updateConstraints__block_invoke(v5);
  [v3 activateConstraints:v4];
}

id __46__HUTimerIntervalPickerView_updateConstraints__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timePicker];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = objc_opt_new();
  v4 = [*(a1 + 32) timePicker];
  v5 = [v4 leadingAnchor];
  v6 = [*(a1 + 32) leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [*(a1 + 32) timePicker];
  v9 = [v8 trailingAnchor];
  v10 = [*(a1 + 32) trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v3 addObject:v11];

  v12 = [*(a1 + 32) timePicker];
  v13 = [v12 bottomAnchor];
  v14 = [*(a1 + 32) bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [*(a1 + 32) timePicker];
  v17 = [v16 topAnchor];
  v18 = [*(a1 + 32) topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v3 addObject:v19];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUTimerIntervalPickerView;
  [(HUTimerIntervalPickerView *)&v3 layoutSubviews];
  [(HUTimerIntervalPickerView *)self _updateLabels:1];
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = 60;
  if (component >= 3)
  {
    v4 = 0;
  }

  if (component)
  {
    return v4;
  }

  else
  {
    return 24;
  }
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  v29[1] = *MEMORY[0x277D85DE8];
  reusingViewCopy = reusingView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = reusingViewCopy;
  }

  else
  {
    v10 = objc_alloc_init(HUTimerIntervalPickerCell);
  }

  v11 = v10;
  v12 = 2 * ([(HUTimerIntervalPickerView *)self effectiveUserInterfaceLayoutDirection]== 0);
  textLabel = [(HUTimerIntervalPickerCell *)v11 textLabel];
  [textLabel setTextAlignment:v12];

  v14 = [MEMORY[0x277D74300] systemFontOfSize:22.0];
  textLabel2 = [(HUTimerIntervalPickerCell *)v11 textLabel];
  [textLabel2 setFont:v14];

  [(HUTimerIntervalPickerView *)self pickerView:self->_timePicker widthForComponent:component];
  v17 = v16;
  [(HUTimerIntervalPickerView *)self pickerView:self->_timePicker rowHeightForComponent:component];
  [(HUTimerIntervalPickerCell *)v11 setFrame:0.0, 0.0, v17, v18];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v20 = MEMORY[0x277CCABB8];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:row];
  v22 = [v20 localizedStringFromNumber:v21 numberStyle:0];

  v23 = objc_alloc(MEMORY[0x277CCA898]);
  v28 = *MEMORY[0x277D740C0];
  v29[0] = labelColor;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v25 = [v23 initWithString:v22 attributes:v24];

  textLabel3 = [(HUTimerIntervalPickerCell *)v11 textLabel];
  [textLabel3 setAttributedText:v25];

  return v11;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  [(HUTimerIntervalPickerView *)self _updateLabels:1, row, component];
  delegate = [(HUTimerIntervalPickerView *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(HUTimerIntervalPickerView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(HUTimerIntervalPickerView *)self delegate];
      [(HUTimerIntervalPickerView *)self selectedDuration];
      [delegate3 pickerView:self didChangeSelectedDuration:?];
    }
  }
}

- (void)_updateLabels:(BOOL)labels
{
  labelsCopy = labels;
  v5 = [(UIPickerView *)self->_timePicker selectedRowInComponent:0];
  v6 = [(UIPickerView *)self->_timePicker selectedRowInComponent:1];
  v7 = [(UIPickerView *)self->_timePicker selectedRowInComponent:2];
  v8 = [(HUTimerIntervalPickerView *)self _hoursStringForHour:v5];
  [(HUTimerIntervalPickerView *)self _fadeLabelForComponent:0 toText:v8 animated:labelsCopy];

  v9 = [(HUTimerIntervalPickerView *)self _minutesStringForMinutes:v6];
  [(HUTimerIntervalPickerView *)self _fadeLabelForComponent:1 toText:v9 animated:labelsCopy];

  v10 = [(HUTimerIntervalPickerView *)self _secondsStringForSeconds:v7];
  [(HUTimerIntervalPickerView *)self _fadeLabelForComponent:2 toText:v10 animated:labelsCopy];
}

- (id)_makeNewComponentLabel
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v3 setFont:v4];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v3 setTextColor:labelColor];

  [v3 setTextAlignment:4];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (id)_labelForComponent:(int64_t)component createIfNecessary:(BOOL)necessary
{
  switch(component)
  {
    case 2:
      p_secondsLabel = &self->_secondsLabel;
      secondsLabel = self->_secondsLabel;
      if (secondsLabel)
      {
        v12 = 1;
      }

      else
      {
        v12 = !necessary;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      necessary = [(HUTimerIntervalPickerView *)self _secondsStringForSeconds:0, necessary];
      selfCopy3 = self;
      v10 = 2;
      goto LABEL_19;
    case 1:
      p_secondsLabel = &self->_minutesLabel;
      secondsLabel = self->_minutesLabel;
      if (secondsLabel)
      {
        v11 = 1;
      }

      else
      {
        v11 = !necessary;
      }

      if (v11)
      {
        goto LABEL_20;
      }

      necessary = [(HUTimerIntervalPickerView *)self _minutesStringForMinutes:0, necessary];
      selfCopy3 = self;
      v10 = 1;
      goto LABEL_19;
    case 0:
      p_secondsLabel = &self->_hoursLabel;
      secondsLabel = self->_hoursLabel;
      if (secondsLabel)
      {
        v7 = 1;
      }

      else
      {
        v7 = !necessary;
      }

      if (v7)
      {
        goto LABEL_20;
      }

      necessary = [(HUTimerIntervalPickerView *)self _hoursStringForHour:0, necessary];
      selfCopy3 = self;
      v10 = 0;
LABEL_19:
      [(HUTimerIntervalPickerView *)selfCopy3 _fadeLabelForComponent:v10 toText:necessary animated:0];

      secondsLabel = *p_secondsLabel;
LABEL_20:
      v13 = secondsLabel;
      goto LABEL_22;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (void)_setLabel:(id)label forComponent:(int64_t)component
{
  labelCopy = label;
  if (component <= 2)
  {
    v8 = labelCopy;
    objc_storeStrong((&self->super.super.super.super.isa + *off_277DB97C8[component]), label);
    labelCopy = v8;
  }
}

- (void)_positionLabel:(id)label forComponent:(int64_t)component
{
  v24[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  effectiveUserInterfaceLayoutDirection = [(HUTimerIntervalPickerView *)self effectiveUserInterfaceLayoutDirection];
  [(UIPickerView *)self->_timePicker _contentSizeForRow:0 inComponent:component];
  if (component == 2)
  {
    v13 = v8 * 2.0 + 18.0;
    v14 = v8 * 2.0 + 23.0;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v14 = v13;
    }

    v8 = v14 + 26.0;
    v12 = 9.0;
    goto LABEL_11;
  }

  if (component == 1)
  {
    v10 = 7.0;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v10 = 4.0;
    }

    v11 = v10 + v8;
    v12 = 9.0;
    v8 = v11 + 9.0 + 26.0;
LABEL_11:
    v9 = v8 + v12;
    goto LABEL_12;
  }

  v9 = 9.0;
  if (!component)
  {
    v9 = dbl_20D5CA680[effectiveUserInterfaceLayoutDirection == 1];
  }

LABEL_12:
  LODWORD(v8) = 1148846080;
  [labelCopy setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v15) = 1148846080;
  [labelCopy setContentCompressionResistancePriority:0 forAxis:v15];
  v16 = MEMORY[0x277CCAAD0];
  leadingAnchor = [labelCopy leadingAnchor];
  leadingAnchor2 = [(UIPickerView *)self->_timePicker leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9 + 4.0];
  v24[0] = v19;
  centerYAnchor = [labelCopy centerYAnchor];

  centerYAnchor2 = [(UIPickerView *)self->_timePicker centerYAnchor];
  v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:1.0];
  v24[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v16 activateConstraints:v23];
}

- (void)_fadeLabelForComponent:(int64_t)component toText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  v9 = [(HUTimerIntervalPickerView *)self _labelForComponent:component createIfNecessary:0];
  text = [v9 text];
  v11 = [text isEqualToString:textCopy];

  _makeNewComponentLabel2 = v9;
  if ((v11 & 1) == 0)
  {
    if (animatedCopy)
    {
      _makeNewComponentLabel = [(HUTimerIntervalPickerView *)self _makeNewComponentLabel];

      [_makeNewComponentLabel setText:textCopy];
      [(HUTimerIntervalPickerView *)self addSubview:_makeNewComponentLabel];
      [(HUTimerIntervalPickerView *)self _positionLabel:_makeNewComponentLabel forComponent:component];
      [_makeNewComponentLabel setAlpha:0.0];
      v14 = MEMORY[0x277D75D18];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __68__HUTimerIntervalPickerView__fadeLabelForComponent_toText_animated___block_invoke;
      v20[3] = &unk_277DB8488;
      v21 = v9;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __68__HUTimerIntervalPickerView__fadeLabelForComponent_toText_animated___block_invoke_2;
      v18[3] = &unk_277DB8C28;
      v19 = v21;
      [v14 animateWithDuration:0x10000 delay:v20 options:v18 animations:0.2 completion:0.0];
      v15 = MEMORY[0x277D75D18];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__HUTimerIntervalPickerView__fadeLabelForComponent_toText_animated___block_invoke_3;
      v16[3] = &unk_277DB8488;
      _makeNewComponentLabel2 = _makeNewComponentLabel;
      v17 = _makeNewComponentLabel2;
      [v15 animateWithDuration:0x20000 delay:v16 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      _makeNewComponentLabel2 = v9;
      if (!v9)
      {
        _makeNewComponentLabel2 = [(HUTimerIntervalPickerView *)self _makeNewComponentLabel];
        [(HUTimerIntervalPickerView *)self addSubview:_makeNewComponentLabel2];
      }

      [_makeNewComponentLabel2 setText:textCopy];
      [(HUTimerIntervalPickerView *)self _positionLabel:_makeNewComponentLabel2 forComponent:component];
    }
  }

  [(HUTimerIntervalPickerView *)self _setLabel:_makeNewComponentLabel2 forComponent:component];
}

uint64_t __68__HUTimerIntervalPickerView__fadeLabelForComponent_toText_animated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

- (void)setDuration:(double)duration
{
  [(UIPickerView *)self->_timePicker selectRow:(duration / 3600.0) inComponent:0 animated:0];
  [(UIPickerView *)self->_timePicker selectRow:((((34953 * (duration % 3600)) >> 16) >> 5) + (((duration % 3600 + ((-30583 * (duration % 3600)) >> 16)) & 0x8000) >> 15)) inComponent:1 animated:0];
  [(UIPickerView *)self->_timePicker selectRow:duration % 60 inComponent:2 animated:0];

  [(HUTimerIntervalPickerView *)self _updateLabels:1];
}

- (double)selectedDuration
{
  v3 = (3600 * [(UIPickerView *)self->_timePicker selectedRowInComponent:0]);
  v4 = v3 + (60 * [(UIPickerView *)self->_timePicker selectedRowInComponent:1]);
  return v4 + [(UIPickerView *)self->_timePicker selectedRowInComponent:2];
}

- (id)_hoursStringForHour:(int64_t)hour
{
  v3 = @"HUHourPlural";
  if (hour == 1)
  {
    v3 = @"HUHourSingular";
  }

  if (hour)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"HUHourZero";
  }

  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);

  return v5;
}

- (id)_minutesStringForMinutes:(int64_t)minutes
{
  v3 = @"HUMinPlural";
  if (minutes == 1)
  {
    v3 = @"HUMinSingular";
  }

  if (minutes)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"HUMinZero";
  }

  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);

  return v5;
}

- (id)_secondsStringForSeconds:(int64_t)seconds
{
  v3 = @"HUSecPlural";
  if (seconds == 1)
  {
    v3 = @"HUSecSingular";
  }

  if (seconds)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"HUSecZero";
  }

  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);

  return v5;
}

- (HUTimerIntervalPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end